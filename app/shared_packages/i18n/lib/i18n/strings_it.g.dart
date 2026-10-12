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
class TranslationsIt extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsIt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsIt _root = this; // ignore: unused_field

	@override 
	TranslationsIt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsIt(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Italiano';
	@override String get flag => '🇮🇹';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$it errors = _Translations$errors$it._(_root);
	@override late final _Translations$onboarding$it onboarding = _Translations$onboarding$it._(_root);
	@override late final _Translations$tabs$it tabs = _Translations$tabs$it._(_root);
	@override late final _Translations$home$it home = _Translations$home$it._(_root);
	@override late final _Translations$history$it history = _Translations$history$it._(_root);
	@override late final _Translations$meal$it meal = _Translations$meal$it._(_root);
	@override late final _Translations$favorites$it favorites = _Translations$favorites$it._(_root);
	@override late final _Translations$profile$it profile = _Translations$profile$it._(_root);
	@override late final _Translations$healthScore$it healthScore = _Translations$healthScore$it._(_root);
	@override late final _Translations$editProfile$it editProfile = _Translations$editProfile$it._(_root);
	@override late final _Translations$settings$it settings = _Translations$settings$it._(_root);
	@override late final _Translations$reminders$it reminders = _Translations$reminders$it._(_root);
	@override late final _Translations$notifications$it notifications = _Translations$notifications$it._(_root);
	@override late final _Translations$login$it login = _Translations$login$it._(_root);
	@override late final _Translations$disclaimer$it disclaimer = _Translations$disclaimer$it._(_root);
	@override late final _Translations$watch$it watch = _Translations$watch$it._(_root);
	@override late final _Translations$common$it common = _Translations$common$it._(_root);
	@override late final _Translations$feedbackRating$it feedbackRating = _Translations$feedbackRating$it._(_root);
	@override late final _Translations$health$it health = _Translations$health$it._(_root);
}

// Path: errors
class _Translations$errors$it extends Translations$errors$en {
	_Translations$errors$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$it extends Translations$onboarding$en {
	_Translations$onboarding$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Benvenuto in ${appLabel}';
	@override String get subtitle => 'Il tuo compagno personale per la nutrizione alimentato da AI';
	@override String get getStarted => 'Inizia';
	@override late final _Translations$onboarding$features$it features = _Translations$onboarding$features$it._(_root);
	@override late final _Translations$onboarding$gender$it gender = _Translations$onboarding$gender$it._(_root);
	@override late final _Translations$onboarding$height$it height = _Translations$onboarding$height$it._(_root);
	@override late final _Translations$onboarding$weight$it weight = _Translations$onboarding$weight$it._(_root);
	@override late final _Translations$onboarding$age$it age = _Translations$onboarding$age$it._(_root);
	@override late final _Translations$onboarding$bmiScale$it bmiScale = _Translations$onboarding$bmiScale$it._(_root);
	@override late final _Translations$onboarding$weightGoal$it weightGoal = _Translations$onboarding$weightGoal$it._(_root);
	@override late final _Translations$onboarding$activityLevel$it activityLevel = _Translations$onboarding$activityLevel$it._(_root);
	@override late final _Translations$onboarding$healthConnect$it healthConnect = _Translations$onboarding$healthConnect$it._(_root);
	@override late final _Translations$onboarding$reinforcement$it reinforcement = _Translations$onboarding$reinforcement$it._(_root);
}

// Path: tabs
class _Translations$tabs$it extends Translations$tabs$en {
	_Translations$tabs$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Panoramica';
	@override String get history => 'Storico';
}

// Path: home
class _Translations$home$it extends Translations$home$en {
	_Translations$home$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$it aiSummary = _Translations$home$aiSummary$it._(_root);
	@override late final _Translations$home$dailyGoal$it dailyGoal = _Translations$home$dailyGoal$it._(_root);
	@override late final _Translations$home$dailySummary$it dailySummary = _Translations$home$dailySummary$it._(_root);
	@override late final _Translations$home$intakeProgress$it intakeProgress = _Translations$home$intakeProgress$it._(_root);
	@override late final _Translations$home$intakeHistory$it intakeHistory = _Translations$home$intakeHistory$it._(_root);
	@override late final _Translations$home$mealLog$it mealLog = _Translations$home$mealLog$it._(_root);
	@override late final _Translations$home$mealDescription$it mealDescription = _Translations$home$mealDescription$it._(_root);
	@override late final _Translations$home$favoriteMeals$it favoriteMeals = _Translations$home$favoriteMeals$it._(_root);
	@override late final _Translations$home$mealSnap$it mealSnap = _Translations$home$mealSnap$it._(_root);
	@override late final _Translations$home$connectHealth$it connectHealth = _Translations$home$connectHealth$it._(_root);
}

// Path: history
class _Translations$history$it extends Translations$history$en {
	_Translations$history$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Nessun pasto registrato';
	@override String get emptyMessage => 'Scatta una foto del tuo ultimo pasto per registrarlo qui.';
	@override String get today => 'Oggi';
	@override String get yesterday => 'Ieri';
}

// Path: meal
class _Translations$meal$it extends Translations$meal$en {
	_Translations$meal$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
	@override late final _Translations$meal$nutrition$it nutrition = _Translations$meal$nutrition$it._(_root);
	@override late final _Translations$meal$deleteConfirmation$it deleteConfirmation = _Translations$meal$deleteConfirmation$it._(_root);
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
	@override String get imageTooLarge => 'La foto supera ancora 1 MB dopo la compressione. Per favore, scegli un\'altra foto.';
	@override String get failedToSave => 'Impossibile salvare i dati. Riprova.';
	@override String get skip => 'Salta';
	@override late final _Translations$meal$questionFlow$it questionFlow = _Translations$meal$questionFlow$it._(_root);
	@override late final _Translations$meal$analysis$it analysis = _Translations$meal$analysis$it._(_root);
	@override late final _Translations$meal$feedback$it feedback = _Translations$meal$feedback$it._(_root);
}

// Path: favorites
class _Translations$favorites$it extends Translations$favorites$en {
	_Translations$favorites$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
	@override late final _Translations$favorites$sortOptions$it sortOptions = _Translations$favorites$sortOptions$it._(_root);
}

// Path: profile
class _Translations$profile$it extends Translations$profile$en {
	_Translations$profile$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profilo';
	@override String get noProfileData => 'Nessun dato del profilo trovato';
	@override String get yourProfile => 'Il tuo profilo';
	@override String get viewAndManage => 'Visualizza e gestisci le tue informazioni sulla salute';
	@override late final _Translations$profile$sections$it sections = _Translations$profile$sections$it._(_root);
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
	@override late final _Translations$profile$calculatedValues$it calculatedValues = _Translations$profile$calculatedValues$it._(_root);
}

// Path: healthScore
class _Translations$healthScore$it extends Translations$healthScore$en {
	_Translations$healthScore$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$it extends Translations$editProfile$en {
	_Translations$editProfile$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifica profilo';
	@override late final _Translations$editProfile$sections$it sections = _Translations$editProfile$sections$it._(_root);
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
	@override String get unitLbs => 'lb';
	@override String get metricCm => 'Metrico (cm)';
	@override String get imperialFtIn => 'Imperiale (ft/in)';
	@override String get metricKg => 'Metrico (kg)';
	@override String get imperialLbs => 'Imperiale (lbs)';
	@override late final _Translations$editProfile$genders$it genders = _Translations$editProfile$genders$it._(_root);
	@override late final _Translations$editProfile$weightGoals$it weightGoals = _Translations$editProfile$weightGoals$it._(_root);
	@override late final _Translations$editProfile$activityLevels$it activityLevels = _Translations$editProfile$activityLevels$it._(_root);
}

// Path: settings
class _Translations$settings$it extends Translations$settings$en {
	_Translations$settings$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impostazioni';
	@override late final _Translations$settings$sections$it sections = _Translations$settings$sections$it._(_root);
	@override late final _Translations$settings$editProfile$it editProfile = _Translations$settings$editProfile$it._(_root);
	@override late final _Translations$settings$language$it language = _Translations$settings$language$it._(_root);
	@override late final _Translations$settings$heightUnit$it heightUnit = _Translations$settings$heightUnit$it._(_root);
	@override late final _Translations$settings$weightUnit$it weightUnit = _Translations$settings$weightUnit$it._(_root);
	@override late final _Translations$settings$mealReminders$it mealReminders = _Translations$settings$mealReminders$it._(_root);
	@override late final _Translations$settings$theme$it theme = _Translations$settings$theme$it._(_root);
	@override late final _Translations$settings$sendFeedback$it sendFeedback = _Translations$settings$sendFeedback$it._(_root);
	@override late final _Translations$settings$exportMealHistory$it exportMealHistory = _Translations$settings$exportMealHistory$it._(_root);
	@override late final _Translations$settings$clearAllData$it clearAllData = _Translations$settings$clearAllData$it._(_root);
	@override late final _Translations$settings$debugOptions$it debugOptions = _Translations$settings$debugOptions$it._(_root);
	@override String get developerModeEnabled => 'Modalità sviluppatore abilitata!';
	@override late final _Translations$settings$healthConnect$it healthConnect = _Translations$settings$healthConnect$it._(_root);
	@override late final _Translations$settings$about$it about = _Translations$settings$about$it._(_root);
	@override late final _Translations$settings$appInfo$it appInfo = _Translations$settings$appInfo$it._(_root);
}

// Path: reminders
class _Translations$reminders$it extends Translations$reminders$en {
	_Translations$reminders$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$notifications$it extends Translations$notifications$en {
	_Translations$notifications$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$it breakfast = _Translations$notifications$breakfast$it._(_root);
	@override late final _Translations$notifications$lunch$it lunch = _Translations$notifications$lunch$it._(_root);
	@override late final _Translations$notifications$dinner$it dinner = _Translations$notifications$dinner$it._(_root);
	@override late final _Translations$notifications$snack$it snack = _Translations$notifications$snack$it._(_root);
	@override late final _Translations$notifications$test$it test = _Translations$notifications$test$it._(_root);
}

// Path: login
class _Translations$login$it extends Translations$login$en {
	_Translations$login$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Accesso';
	@override String get signInWithGoogle => 'Accedi con Google';
	@override String get signInFailed => 'Accesso con Google non riuscito o annullato.';
}

// Path: disclaimer
class _Translations$disclaimer$it extends Translations$disclaimer$en {
	_Translations$disclaimer$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Nota bene';
	@override late final _Translations$disclaimer$snap$it snap = _Translations$disclaimer$snap$it._(_root);
	@override late final _Translations$disclaimer$weightEstimate$it weightEstimate = _Translations$disclaimer$weightEstimate$it._(_root);
	@override late final _Translations$disclaimer$healthMetrics$it healthMetrics = _Translations$disclaimer$healthMetrics$it._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$it calorieExpenditure = _Translations$disclaimer$calorieExpenditure$it._(_root);
}

// Path: watch
class _Translations$watch$it extends Translations$watch$en {
	_Translations$watch$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Orologio';
	@override late final _Translations$watch$common$it common = _Translations$watch$common$it._(_root);
	@override late final _Translations$watch$nutrition$it nutrition = _Translations$watch$nutrition$it._(_root);
	@override late final _Translations$watch$sync$it sync = _Translations$watch$sync$it._(_root);
	@override late final _Translations$watch$home$it home = _Translations$watch$home$it._(_root);
	@override late final _Translations$watch$history$it history = _Translations$watch$history$it._(_root);
	@override late final _Translations$watch$favorites$it favorites = _Translations$watch$favorites$it._(_root);
	@override late final _Translations$watch$meal$it meal = _Translations$watch$meal$it._(_root);
	@override late final _Translations$watch$voice$it voice = _Translations$watch$voice$it._(_root);
	@override late final _Translations$watch$result$it result = _Translations$watch$result$it._(_root);
}

// Path: common
class _Translations$common$it extends Translations$common$en {
	_Translations$common$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Beta';
	@override String get close => 'Chiudi';
	@override String get kContinue => 'Continua';
}

// Path: feedbackRating
class _Translations$feedbackRating$it extends Translations$feedbackRating$en {
	_Translations$feedbackRating$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$health$it extends Translations$health$en {
	_Translations$health$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Impossibile sincronizzare con Health Connect';
	@override String get mealSynced => 'Pasto sincronizzato con Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$it extends Translations$onboarding$features$en {
	_Translations$onboarding$features$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$it foodRecognition = _Translations$onboarding$features$foodRecognition$it._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$it aiAnalysis = _Translations$onboarding$features$aiAnalysis$it._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$it healthIntegration = _Translations$onboarding$features$healthIntegration$it._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$it extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual è il tuo genere?';
	@override String get description => 'Il genere ci aiuta a calcolare con precisione il tuo metabolismo basale (BMR).';
	@override String get next => 'Avanti';
}

// Path: onboarding.height
class _Translations$onboarding$height$it extends Translations$onboarding$height$en {
	_Translations$onboarding$height$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual è la tua altezza?';
	@override String get description => 'La tua altezza ci aiuta a calcolare con precisione il tuo BMI e il tuo fabbisogno energetico.';
	@override String get metric => 'Metrico';
	@override String get imperial => 'Imperiale';
	@override String get next => 'Avanti';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$it extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$age$it extends Translations$onboarding$age$en {
	_Translations$onboarding$age$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quando è il tuo compleanno?';
	@override String get description => 'La tua età ci aiuta a calcolare con precisione il tuo fabbisogno calorico.';
	@override String get next => 'Avanti';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$it extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Sottopeso';
	@override String get healthy => 'Sano';
	@override String get overweight => 'Sovrappeso';
	@override String get obese => 'Obeso';
	@override late final _Translations$onboarding$bmiScale$categories$it categories = _Translations$onboarding$bmiScale$categories$it._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$it messages = _Translations$onboarding$bmiScale$messages$it._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$it extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual è il tuo obiettivo?';
	@override String get description => 'Scegli l\'obiettivo che meglio descrive ciò che vuoi ottenere';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$it extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quanto sei attivo?';
	@override String get description => 'Questo ci aiuta a calcolare più precisamente il tuo fabbisogno calorico giornaliero';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$it extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Collega Health Connect';
	@override String get description => 'Sincronizza i tuoi dati di salute per approfondimenti migliori e tracciamento automatico delle calorie';
	@override String get overviewDescription => 'Usa le calorie bruciate nel tuo obiettivo giornaliero e, se vuoi, condividi i pasti registrati con Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$it automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$it._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$it caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$it._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$it progressInsights = _Translations$onboarding$healthConnect$progressInsights$it._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$it shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$it._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$it seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$it._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$it userControl = _Translations$onboarding$healthConnect$userControl$it._(_root);
	@override String get connected => 'Health Connect collegato';
	@override String get notConnected => 'Health Connect non collegato';
	@override String get setup => 'Configura Health Connect';
	@override String get skipForNow => 'Salta per ora';
	@override String get statusConnected => 'Health Connect è collegato.';
	@override String get statusSuccess => 'Health Connect è stato collegato con successo!';
	@override String get statusNotConnected => 'Scegli le funzioni di Health Connect che vuoi attivare.';
	@override String get statusPartial => 'Health Connect è collegato parzialmente. Concedi l\'autorizzazione rimanente per usare entrambe le funzioni.';
	@override String get statusProviderUpdateRequired => 'Installa o aggiorna Health Connect per continuare.';
	@override String get statusUnavailable => 'Health Connect non è supportato su questo dispositivo.';
	@override String get installOrUpdate => 'Installa o aggiorna';
	@override String get manageAccess => 'Gestisci l\'accesso';
	@override String statusPermissionDenied({required Object appLabel}) => 'Autorizzazione negata. Abilita i permessi di Health Connect dalle impostazioni del telefono per ${appLabel}.';
	@override String statusError({required Object error}) => 'Errore durante la configurazione di Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$it extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$it trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$it._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$it healthProfile = _Translations$onboarding$reinforcement$healthProfile$it._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$it goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$it._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$it extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$home$dailyGoal$it extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
	@override String get kcal => 'chilocalorie';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$it extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$home$intakeProgress$it extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ripartizione macro di oggi';
	@override String get target => 'Obiettivo';
	@override String get current => 'Corrente';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$it extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Storico macro a 7 giorni';
	@override String get trendTitle => 'Tendenza di oggi';
	@override String peakHour({required Object hour}) => 'Picco: ${hour}:00';
	@override String get noHistoryYet => 'Ancora nessuna cronologia';
	@override String get startLogging => 'Inizia a registrare i pasti per vedere qui\nle tendenze macro degli ultimi 7 giorni';
}

// Path: home.mealLog
class _Translations$home$mealLog$it extends Translations$home$mealLog$en {
	_Translations$home$mealLog$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pasti registrati';
	@override String get emptyMessage => 'Scatta una foto del tuo ultimo pasto per registrarlo qui.';
	@override String get noMealsToday => 'Nessun pasto registrato per oggi';
	@override String get seeAllMeals => 'Vedi tutti i pasti';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$it extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aggiunta rapida con AI';
	@override String get description => 'Descrivi il tuo pasto e lascia che l\'AI gestisca i dettagli.';
	@override String get hint => 'es.: Per colazione ho preso una grande ciotola di avena con una banana a fette e una porzione di whey ...';
	@override String get analyzeMeal => 'Analizza pasto';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$it extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$home$mealSnap$it extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$home$connectHealth$it extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizza con Health Connect';
	@override String get description => 'Sincronizza i tuoi dati nutrizionali con Health Connect';
	@override String get install => 'Installa';
	@override String get dataUseDescription => 'Usa le calorie bruciate nel tuo obiettivo e condividi i pasti registrati';
	@override String get installOrUpdate => 'Installa o aggiorna';
	@override String get connect => 'Connetti';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$it extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorie';
	@override String get carbs => 'Carboidrati (g)';
	@override String get protein => 'Proteine (g)';
	@override String get fat => 'Grassi (g)';
	@override String get fiber => 'Fibre (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$it extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Elimina pasto';
	@override String get message => 'Sei sicuro di voler eliminare questa voce di pasto?';
	@override String get cancel => 'Annulla';
	@override String get delete => 'Elimina';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$it extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Domanda ${current} di ${total}';
	@override String get noQuestionsAvailable => 'Nessuna domanda disponibile';
	@override String get next => 'Avanti';
	@override String get continueLabel => 'Continua';
	@override String get countQuestion => 'Scegli la quantità';
	@override String get itemSizeQuestion => 'Scegli la dimensione dell\'articolo';
	@override String get portionSizeQuestion => 'Scegli la dimensione della porzione';
	@override String get option6plus => '6 o più';
	@override String get optionSmall => 'Piccolo';
	@override String get optionRegular => 'Regolare';
	@override String get optionLarge => 'Grande';
	@override String get optionThin => 'Sottile';
	@override String get optionThick => 'Spesso';
	@override String get optionMini => 'Mini';
	@override String get optionStuffed => 'Ripieno';
	@override String get optionHeavy => 'Pesante';
	@override String get optionSmaller => 'Più piccolo';
	@override String get optionTypical => 'Tipico';
	@override String get optionLarger => 'Più grande';
	@override String get useEstimate => 'Usa la stima';
	@override String numberRange({required Object min, required Object max, required Object step}) => 'Da ${min} a ${max}, con incrementi di ${step}';
	@override String get invalidNumber => 'Inserisci un valore nell\'intervallo consentito';
}

// Path: meal.analysis
class _Translations$meal$analysis$it extends Translations$meal$analysis$en {
	_Translations$meal$analysis$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
	@override String get providerUnavailable => 'Il servizio di analisi dei pasti è temporaneamente non disponibile. Riprova.';
	@override String get invalidModelOutput => 'Impossibile interpretare la risposta sul pasto. Riprova.';
	@override String get nutritionServiceBusy => 'L\'abbinamento nutrizionale è momentaneamente occupato. Per favore riprova.';
	@override String get nutritionDataUnavailable => 'I dati nutrizionali sono temporaneamente non disponibili. Riprova.';
	@override String get analysisUnavailable => 'L\'analisi del pasto è temporaneamente non disponibile. Riprova.';
	@override String get unresolvedNutrition => 'Non siamo riusciti ad associare in modo affidabile i dati nutrizionali per questo pasto. Prova ad aggiungere più dettagli.';
	@override String get noFoodTip => 'Nessun cibo rilevato. Prova un\'altra foto o descrizione.';
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
	@override String mealPreviewDescription({required Object text}) => '«${text}»';
	@override String calorieRange({required Object min, required Object max}) => 'Intervallo stimato: ${min}–${max} kcal';
	@override String get offlineTip0 => 'Suggerimento: La costanza batte la perfezione—registrazioni regolari rivelano i modelli che contano.';
	@override String get offlineTip1 => 'Suggerimento: Per le foto, la luce naturale e una visuale dall\'alto aiutano a stimare meglio le porzioni.';
	@override String get offlineTip2 => 'Suggerimento: Segnala bevande, salse e olio da cucina—aggiungono calorie che spesso si dimenticano.';
	@override String get offlineTip3 => 'Suggerimento: Una rapida indicazione della porzione (1 ciotola, caffè grande) rende le stime molto più precise.';
	@override String get offlineTip4 => 'Suggerimento: Registrare dopo il pasto aiuta comunque a costruire l\'abitudine; la perfezione è opzionale.';
	@override String get offlineTip5 => 'Suggerimento: Indica come è stato cucinato il cibo quando influisce molto sulle calorie (fritto vs al forno).';
}

// Path: meal.feedback
class _Translations$meal$feedback$it extends Translations$meal$feedback$en {
	_Translations$meal$feedback$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$favorites$sortOptions$it extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Recenti';
	@override String get calories => 'Calorie';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$it extends Translations$profile$sections$en {
	_Translations$profile$sections$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFILO';
	@override String get basicInformation => 'INFORMAZIONI DI BASE';
	@override String get goalsAndActivity => 'OBIETTIVI & ATTIVITÀ';
	@override String get calculatedValues => 'VALORI CALCOLATI';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$it extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Obiettivo giornaliero';
	@override String get calPerDay => 'cal/giorno';
	@override String get notAvailable => 'N/D';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$it extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMAZIONI PERSONALI';
	@override String get physicalMeasurements => 'MISURE FISICHE';
	@override String get goalsAndActivity => 'OBIETTIVI & ATTIVITÀ';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$it extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get male => 'Maschile';
	@override String get female => 'Femminile';
	@override String get other => 'Altro';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$it extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$it loseWeight = _Translations$editProfile$weightGoals$loseWeight$it._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$it maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$it._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$it gainWeight = _Translations$editProfile$weightGoals$gainWeight$it._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$it extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$it sedentary = _Translations$editProfile$activityLevels$sedentary$it._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$it lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$it._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$it moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$it._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$it veryActive = _Translations$editProfile$activityLevels$veryActive$it._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$it extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$it._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$it extends Translations$settings$sections$en {
	_Translations$settings$sections$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFILO';
	@override String get localization => 'LOCALIZZAZIONE';
	@override String get notifications => 'NOTIFICHE';
	@override String get healthConnect => 'CONNESSIONE HEALTH CONNECT';
	@override String get supportAndLegal => 'SUPPORTO & LEGALE';
	@override String get about => 'INFORMAZIONI';
	@override String get dangerZone => 'PERICOLO';
	@override String get developer => 'SVILUPPATORE';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$it extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifica profilo';
	@override String get subtitle => 'Aggiorna le tue informazioni personali';
}

// Path: settings.language
class _Translations$settings$language$it extends Translations$settings$language$en {
	_Translations$settings$language$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lingua';
	@override String get subtitle => 'Scegli la tua lingua preferita';
	@override String get searchHint => 'Cerca lingue...';
	@override String get noResults => 'Nessun risultato trovato';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$it extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unità di altezza';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$it extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unità di peso';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$it extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Promemoria pasti';
	@override String get subtitle => 'Rimani in carreggiata con avvisi puntuali';
}

// Path: settings.theme
class _Translations$settings$theme$it extends Translations$settings$theme$en {
	_Translations$settings$theme$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Chiaro';
	@override String get dark => 'Scuro';
	@override String get system => 'Sistema';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$it extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$settings$exportMealHistory$it extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Esporta cronologia pasti';
	@override String get subtitle => 'Condividi un CSV dei tuoi pasti registrati';
	@override String get shareText => 'Esportazione cronologia pasti Calorify';
	@override String failed({required Object error}) => 'Impossibile esportare la cronologia pasti: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$it extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cancella tutti i dati';
	@override String get subtitle => 'Elimina in modo irreversibile tutte le tue informazioni';
	@override String get localOnlySubtitle => 'Elimina i dati di Calorify memorizzati su questo dispositivo';
	@override String get confirmationTitle => 'Cancellare tutti i dati?';
	@override String get confirmationMessage => 'Questa azione non può essere annullata. Tutti i tuoi pasti registrati, preferiti e impostazioni del profilo saranno eliminati definitivamente.';
	@override String get localOnlyConfirmationMessage => 'Questa operazione elimina definitivamente dal dispositivo i pasti registrati, i preferiti e le impostazioni del profilo. I pasti già condivisi con Health Connect e l\'accesso a Health Connect sono gestiti separatamente in Impostazioni > Health Connect.';
	@override String get cancel => 'Annulla';
	@override String get clearEverything => 'Cancella tutto';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$it extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opzioni di debug';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$it extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Visualizza e gestisci le autorizzazioni';
	@override late final _Translations$settings$healthConnect$unavailable$it unavailable = _Translations$settings$healthConnect$unavailable$it._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$it updateRequired = _Translations$settings$healthConnect$updateRequired$it._(_root);
	@override late final _Translations$settings$healthConnect$permissions$it permissions = _Translations$settings$healthConnect$permissions$it._(_root);
	@override String get managePermissions => 'Gestisci autorizzazioni';
	@override String get openSettings => 'Apri impostazioni Health Connect';
	@override String get disconnect => 'Disconnetti Health Connect';
	@override String get disconnectConfirmationTitle => 'Disconnettere Health Connect?';
	@override String get disconnectConfirmationMessage => 'Calorify perderà l\'accesso a Health Connect. I dati già scritti al suo interno non verranno eliminati.';
	@override String get disconnectConfirmationAction => 'Disconnetti';
	@override String get deleteSyncedMeals => 'Elimina i pasti di Calorify da Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Eliminare i pasti sincronizzati?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Eliminare da Health Connect i pasti sincronizzati da questa versione di Calorify? Il registro locale dei pasti non cambierà. Potrebbe essere ancora necessario rimuovere le voci Calorify meno recenti tramite Gestisci dati in Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Elimina i pasti sincronizzati';
	@override String get deleteSyncedMealsSuccess => 'I pasti di Calorify sono stati eliminati da Health Connect.';
	@override String get deleteSyncedMealsFailed => 'Impossibile eliminare i pasti sincronizzati. Riprova.';
	@override String get connectionPartial => 'Alcune funzioni di Health Connect sono attive.';
	@override String get connectionComplete => 'Entrambe le funzioni di Health Connect sono attive.';
	@override String get actionFailed => 'Impossibile aprire Health Connect. Riprova.';
	@override String get requestPermissions => 'Richiedi autorizzazioni';
	@override String get permissionRequestCancelledOrFailed => 'La richiesta di autorizzazioni è stata annullata o non riuscita. Riprova o concedi i permessi manualmente nelle impostazioni di Health Connect.';
	@override String get permissionRequestFailed => 'Impossibile richiedere le autorizzazioni. Riprova o concedi i permessi manualmente nelle impostazioni di Health Connect.';
	@override String get requestingPermissions => 'Richiesta in corso...';
}

// Path: settings.about
class _Translations$settings$about$it extends Translations$settings$about$en {
	_Translations$settings$about$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informazioni';
	@override String get tagline => 'Consapevolezza calorica veloce, gratuita e attenta alla privacy';
	@override late final _Translations$settings$about$ourStory$it ourStory = _Translations$settings$about$ourStory$it._(_root);
	@override late final _Translations$settings$about$privacy$it privacy = _Translations$settings$about$privacy$it._(_root);
	@override late final _Translations$settings$about$developer$it developer = _Translations$settings$about$developer$it._(_root);
	@override late final _Translations$settings$about$feedback$it feedback = _Translations$settings$about$feedback$it._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$it extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify versione ${version}';
	@override String build({required Object buildNumber}) => 'Revisione ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$it extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'È ora di colazione! 🍳';
	@override String get body => 'Non dimenticare di registrare la tua colazione';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$it extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'È ora di pranzo! 🥗';
	@override String get body => 'È il momento di registrare il pranzo';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$it extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'È ora di cena! 🍽️';
	@override String get body => 'Non dimenticare di registrare la tua cena';
}

// Path: notifications.snack
class _Translations$notifications$snack$it extends Translations$notifications$snack$en {
	_Translations$notifications$snack$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'È ora di uno spuntino! 🍎';
	@override String get body => 'È il momento di uno spuntino salutare';
}

// Path: notifications.test
class _Translations$notifications$test$it extends Translations$notifications$test$en {
	_Translations$notifications$test$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notifica di prova';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$it extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} fornisce informazioni nutrizionali stimate. L\'accuratezza dipende dai tuoi input e dalle variazioni degli alimenti. Usalo come guida, non come fonte definitiva. Consulta un professionista per consigli dietetici personalizzati.';
	@override late final _Translations$disclaimer$snap$portionSize$it portionSize = _Translations$disclaimer$snap$portionSize$it._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$it preparationMethods = _Translations$disclaimer$snap$preparationMethods$it._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$it ingredients = _Translations$disclaimer$snap$ingredients$it._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$it databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$it._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$it extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informazioni sulla stima del peso';
	@override String get description => 'La variazione di peso proiettata è una stima teorica basata sul semplice modello calorie in vs. calorie out. È intesa solo come guida motivazionale, non come predizione del tuo peso reale.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$it calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$it._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$it biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$it._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$it waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$it._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$it professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$it._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$it extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get description => 'Queste metriche ti aiutano a comprendere il fabbisogno energetico del tuo corpo e a guidare i tuoi obiettivi nutrizionali.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$it bmr = _Translations$disclaimer$healthMetrics$bmr$it._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$it tdee = _Translations$disclaimer$healthMetrics$tdee$it._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$it dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$it._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$it extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stima del dispendio calorico';
	@override String get description => 'Quando i dati di Health Connect non sono disponibili, stimiamo le calorie bruciate oggi usando il tuo metabolismo basale (BMR) e il livello di attività (TDEE), scalando per la porzione della giornata già trascorsa.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$it howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$it._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$it professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$it._(_root);
}

// Path: watch.common
class _Translations$watch$common$it extends Translations$watch$common$en {
	_Translations$watch$common$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get back => 'Indietro';
	@override String get cancel => 'Annulla';
	@override String get delete => 'Elimina';
	@override String get retry => 'Riprova';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$it extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Nutriente';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} grammi';
	@override String get protein => 'Proteine';
	@override String get carbs => 'Carboidrati';
	@override String get fat => 'Grassi';
	@override String get fiber => 'Fibre';
}

// Path: watch.sync
class _Translations$watch$sync$it extends Translations$watch$sync$en {
	_Translations$watch$sync$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Sincronizza con il telefono';
	@override String get syncing => 'Sincronizzazione…';
	@override String get synced => 'Sincronizzato';
	@override String get syncedJustNow => 'Sincronizzato proprio ora';
	@override String syncedMinutesAgo({required Object minutes}) => 'Sincronizzato ${minutes}m fa';
	@override String get failed => 'Sincronizzazione non riuscita';
	@override String get phoneDisconnected => 'Telefono disconnesso';
	@override String get tapToSync => 'Tocca per sincronizzare';
	@override String get refreshFailed => 'Impossibile aggiornare. Controlla il telefono.';
	@override String get openPhone => 'Apri Calorify sul telefono, poi tocca Aggiorna.';
}

// Path: watch.home
class _Translations$watch$home$it extends Translations$watch$home$en {
	_Translations$watch$home$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get today => 'Oggi';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} calorie consumate su ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} oltre l\'obiettivo';
	@override String remaining({required Object calories}) => '${calories} rimanenti';
	@override String left({required Object calories}) => '${calories} rimasti';
	@override String goal({required Object calories}) => 'Obiettivo ${calories} kcal';
	@override String get logMeal => 'Registra un pasto';
	@override String get todayMeals => 'Pasti di oggi';
	@override String todayMealsCount({required Object count}) => 'Pasti di oggi, ${count}';
	@override String viewMore({required Object count}) => 'Visualizza altri ${count}';
	@override String viewMoreSemantics({required Object count}) => '${count} pasti in più, tocca per vedere tutti';
	@override String get noMeals => 'Nessun pasto registrato';
	@override String get noMealsSemantics => 'Nessun pasto registrato oggi';
	@override String get tapLog => 'Tocca Registra per iniziare';
	@override String get removedFromQueue => 'Pasto rimosso dalla coda offline.';
	@override String get removedOffline => 'Pasto rimosso offline. Verrà sincronizzato quando il telefono si riconnetterà.';
	@override String get deleteFailed => 'Impossibile eliminare il pasto';
}

// Path: watch.history
class _Translations$watch$history$it extends Translations$watch$history$en {
	_Translations$watch$history$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pasti di oggi';
	@override String get refresh => 'Aggiorna pasti';
	@override String get loadFailed => 'Impossibile caricare i pasti';
	@override String get syncFailed => 'Impossibile sincronizzare';
	@override String get emptyTitle => 'Ancora nessun pasto';
	@override String get emptyMessage => 'Registra un pasto dalla schermata Home per vederlo qui.';
}

// Path: watch.favorites
class _Translations$watch$favorites$it extends Translations$watch$favorites$en {
	_Translations$watch$favorites$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preferiti';
	@override String get refresh => 'Aggiorna preferiti';
	@override String get loadFailed => 'Impossibile caricare i preferiti';
	@override String get syncFailed => 'Impossibile sincronizzare';
	@override String get emptyTitle => 'Ancora nessun preferito';
	@override String get emptyMessage => 'Contrassegna con la stella i pasti nell\'app del telefono per registrarli qui con un tocco.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} calorie. Tocca per registrare.';
	@override String logged({required Object name}) => '${name} registrato!';
	@override String savedOffline({required Object name}) => '${name} salvato offline. Verrà sincronizzato quando il telefono si riconnetterà.';
	@override String get saveFailed => 'Impossibile salvare il pasto. Riprova.';
	@override String get log => 'Registra';
}

// Path: watch.meal
class _Translations$watch$meal$it extends Translations$watch$meal$en {
	_Translations$watch$meal$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calorie, registrato alle ${time}.';
	@override String get longPressDelete => 'Premi a lungo per eliminare.';
	@override String get deleteTitle => 'Eliminare il pasto?';
}

// Path: watch.voice
class _Translations$watch$voice$it extends Translations$watch$voice$en {
	_Translations$watch$voice$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Registrazione vocale del pasto';
	@override String get processing => 'Analizzando il tuo pasto…';
	@override String get processingDescription => 'Stima delle porzioni e dei valori nutrizionali';
	@override String get listening => 'In ascolto';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Interrompi registrazione';
	@override String get start => 'Tocca per iniziare la registrazione';
	@override String get starting => 'Avvio del microfono…';
	@override String get prompt => 'Tocca, poi descrivi il tuo pasto';
	@override String get tapToRetry => 'Tocca per riprovare';
	@override String get example => 'Prova “2 rotis con dal”';
	@override String get unavailable => 'L\'input vocale non è disponibile. Controlla il permesso del microfono nelle impostazioni dell\'orologio.';
	@override String get didNotStart => 'Il microfono non si è avviato. Tocca per riprovare.';
	@override String get startFailed => 'Impossibile avviare la registrazione. Controlla i permessi del microfono.';
	@override String get allowMicrophone => 'Consenti l\'accesso al microfono per registrare i pasti con la voce.';
	@override String get needsConnection => 'Il riconoscimento vocale necessita di una connessione. Tocca per riprovare.';
	@override String get microphoneUnavailable => 'Il microfono non è disponibile. Tocca per riprovare.';
	@override String get microphoneBusy => 'Il microfono è occupato. Attendi un momento e riprova.';
	@override String get languageUnsupported => 'L\'input vocale non supporta la lingua dell\'orologio.';
	@override String get temporarilyBusy => 'L\'input vocale è temporaneamente occupato. Attendi un momento e riprova.';
	@override String get notRecognized => 'Non ho capito. Tocca il microfono e riprova.';
	@override String get noSpeech => 'Nessun audio rilevato. Tocca il microfono per riprovare.';
	@override String get analysisFailed => 'Analisi fallita. Per favore riprova.';
	@override String get mealNotIdentified => 'Impossibile identificare il pasto. Prova a descriverlo diversamente.';
}

// Path: watch.result
class _Translations$watch$result$it extends Translations$watch$result$en {
	_Translations$watch$result$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dettagli del pasto';
	@override String get savedOffline => 'Salvato offline';
	@override String get logged => 'Registrato!';
	@override String get mealFound => 'Pasto trovato';
	@override String get estimatedEnergy => 'Energia stimata';
	@override String get logMeal => 'Registra pasto';
	@override String get logging => 'Registrazione…';
	@override String get logAnother => 'Registra un altro';
	@override String get goingBack => 'Tornando indietro…';
	@override String get savedOfflineMessage => 'Pasto salvato offline. Verrà sincronizzato quando il telefono si riconnetterà.';
	@override String get saveFailed => 'Impossibile salvare il pasto. Per favore riprova.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$it extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Riconoscimento intelligente degli alimenti';
	@override String get description => 'Scatta una foto e lascia che l\'AI identifichi il tuo pasto';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$it extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisi AI';
	@override String get description => 'Ottieni informazioni nutrizionali istantanee dalle tue descrizioni';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$it extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrazione Health Connect';
	@override String get description => 'Collega Health Connect per approfondimenti più accurati';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$it extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Sottopeso';
	@override String get healthyWeight => 'Peso salutare';
	@override String get overweight => 'Sovrappeso';
	@override String get obese => 'Obeso';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$it extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Possiamo aiutarti a creare un piano sano per raggiungere un peso equilibrato con pasti nutrienti.';
	@override String get healthy => 'Ottimo lavoro! Sei in una fascia salutare. Ti aiuteremo a mantenere vitalità ed energia.';
	@override String overweight({required Object appLabel}) => '${appLabel} semplificherà il tuo percorso con il tracciamento assistito dall\'AI per aiutarti a raggiungere il tuo obiettivo con gradualità.';
	@override String get obese => 'Siamo qui per supportarti con indicazioni personalizzate e strategie sostenibili per i tuoi obiettivi di salute.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$it extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tracciamento automatico delle calorie';
	@override String get description => 'Registra le calorie bruciate dalle tue app fitness';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$it extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calorie bruciate';
	@override String get description => 'Leggi da Health Connect il totale delle calorie bruciate oggi';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$it extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Approfondimenti sul progresso';
	@override String get description => 'Ricevi approfondimenti dettagliati sulle tendenze della tua salute';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$it extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Condividi i pasti registrati';
	@override String get description => 'Scrivi su Health Connect i pasti che registri in Calorify';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$it extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrazione senza soluzione di continuità';
	@override String get description => 'Sincronizza i dati dalle tue app di salute preferite';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$it extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hai tu il controllo';
	@override String get description => 'Scegli una delle due autorizzazioni e modifica l\'accesso in qualsiasi momento';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$it extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$healthProfile$it extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$goalLifestyle$it extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$weightGoals$loseWeight$it extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perdere peso';
	@override String get description => 'Creare un deficit calorico per perdere peso';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$it extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mantenere il peso';
	@override String get description => 'Mantenere il peso attuale';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$it extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Aumentare peso';
	@override String get description => 'Creare un surplus calorico per aumentare di peso';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$it extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentario';
	@override String get description => 'Poco o nessun esercizio';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$it extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Leggermente attivo';
	@override String get description => 'Esercizio leggero 1-3 giorni/settimana';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$it extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderatamente attivo';
	@override String get description => 'Esercizio moderato 3-5 giorni/settimana';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$it extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Molto attivo';
	@override String get description => 'Esercizio intenso 6-7 giorni/settimana';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$it extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Estremamente attivo';
	@override String get description => 'Esercizio molto intenso o lavoro fisico';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$it extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect non disponibile';
	@override String get description => 'Health Connect non è disponibile su questo dispositivo. Installa Health Connect dal Play Store (Android 9+) o aggiorna a Android 14+.';
	@override String get unsupportedDescription => 'Health Connect non è supportato su questo dispositivo.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$it extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect richiede attenzione';
	@override String get description => 'Installa o aggiorna Health Connect prima di gestire l\'accesso.';
	@override String get action => 'Installa o aggiorna';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$it extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autorizzazioni';
	@override String get description => 'Le seguenti autorizzazioni vengono richieste per fornire l\'integrazione con Health Connect:';
	@override String get granted => 'Concesso';
	@override String get notGranted => 'Non concesso';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$it caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$it._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$it nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$it._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$it nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$it._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$it extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'La nostra storia';
	@override String content({required Object appLabel}) => '${appLabel} è nato da una semplice frustrazione: la maggior parte delle app per il conteggio delle calorie è o eccessivamente complicata, richiede inserimenti manuali continui, applica costi elevati in abbonamento, o compromette la privacy.\n\nCome sviluppatore singolo, volevo creare qualcosa di più semplice e giusto — un\'app che utilizzi l\'AI per ridurre lo sforzo, resti veloce e gratuita da usare, e tratti i tuoi dati di salute con rispetto.\n\n${appLabel} è l\'app che avrei voluto esistesse: senza account, senza tracciamento, senza pubblicità — solo informazioni chiare e pratiche e i tuoi obiettivi di salute.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$it extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'La tua privacy conta';
	@override String get description => 'La privacy non è un ripensamento — è un principio di design. Ecco cosa significa nella pratica:';
	@override String get noAccounts => 'Nessun account richiesto\nUsa l\'app immediatamente. Nessuna registrazione, nessuna identità.';
	@override String noTracking({required Object appLabel}) => 'Nessun tracciamento comportamentale\n${appLabel} non monitora la tua attività, non crea profili di utilizzo e non ti traccia attraverso app o siti web.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Analisi e diagnostica limitate\n${appLabel} usa eventi di base dell\'app e diagnostica degli arresti anomali per migliorare l\'affidabilità. I valori dei dati sanitari non vengono usati per la pubblicità né venduti.';
	@override String noAds({required Object appLabel}) => 'Senza pubblicità per progettazione\n${appLabel} è costruito per funzionare senza pubblicità o monetizzazione basata sui dati.';
	@override String get noDataSelling => 'Nessuna vendita di dati\nI tuoi dati sulla salute non vengono mai venduti o condivisi con terze parti.';
	@override String get localStorage => 'Archiviazione local-first\nI tuoi dati restano sul tuo dispositivo.';
	@override String get privacyPolicy => 'Informativa sulla privacy';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$it extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Realizzato da uno sviluppatore solista';
	@override String description({required Object appLabel}) => '${appLabel} è sviluppato e mantenuto da un unico sviluppatore solista concentrato nel creare software per la salute calmo e rispettoso della privacy.\n\nI feedback vengono letti personalmente e aiutano a indirizzare lo sviluppo dell\'app.';
	@override String get website => 'Sito web';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$it extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Ti piace ${appLabel}?';
	@override String description({required Object appLabel}) => 'Il tuo feedback aiuta a rendere ${appLabel} migliore per tutti.';
	@override String get rateApp => 'Valuta su Play Store';
	@override String get sendFeedback => 'Invia feedback';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$it extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dimensione della porzione';
	@override String get description => 'L\'accuratezza delle stime dipende fortemente dalla tua valutazione corretta della dimensione della porzione.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$it extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metodi di preparazione';
	@override String description({required Object appLabel}) => 'I metodi di cottura possono alterare significativamente il contenuto nutrizionale. Le stime di ${appLabel} potrebbero non tenerne sempre conto.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$it extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredienti';
	@override String get description => 'Piatti complessi con molti ingredienti nascosti possono portare a stime meno accurate.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$it extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitazioni del database';
	@override String description({required Object appLabel}) => 'Il database alimentare di ${appLabel} è ampio ma potrebbe non includere ogni singolo alimento o variazione.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$it extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Accuratezza delle calorie';
	@override String get description => 'Questa stima è accurata tanto quanto lo sono le calorie e le spese che registri. Una registrazione inaccurata produrrà una proiezione inaccurata.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$it extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fattori biologici';
	@override String description({required Object appLabel}) => 'La perdita/aumento di peso effettiva è influenzata dal metabolismo, ormoni, sonno, stress, idratazione e altri fattori individuali che ${appLabel} non può misurare.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$it extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ritenzione idrica e fluttuazioni';
	@override String get description => 'Il peso giornaliero normale può variare significativamente a causa della ritenzione idrica, digestione e tempistiche. La stima non tiene conto di questi cambiamenti giornalieri.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$it extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Indicazioni professionali';
	@override String get description => 'Non usare questa stima per decisioni mediche. Consulta sempre un professionista sanitario o un dietista registrato per consigli personalizzati sulla gestione del peso.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$it extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Il metabolismo basale (BMR) è il numero di calorie che il tuo corpo brucia a riposo per mantenere funzioni di base come respirazione e circolazione. Il BMR dipende da età, genere, altezza e peso. Un BMR più alto indica che il corpo brucia più calorie a riposo, spesso a causa di maggiore massa muscolare, età più giovane o essere di genere maschile. Un BMR più basso indica tipicamente meno massa muscolare, età più avanzata o essere di genere femminile.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$it extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Il fabbisogno energetico giornaliero totale (TDEE) è il totale delle calorie che bruci al giorno, includendo il BMR più le calorie derivanti dall\'attività fisica e dal movimento quotidiano. Il TDEE dipende dal tuo BMR e dal livello di attività. Un TDEE più alto significa che bruci più calorie complessivamente, di solito per essere più attivo o avere un BMR più alto. Un TDEE più basso suggerisce meno attività giornaliera o un BMR inferiore.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$it extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Obiettivo giornaliero';
	@override String get description => 'L\'obiettivo giornaliero è la tua assunzione calorica raccomandata in base al TDEE e all\'obiettivo di peso. Per perdere peso consumi meno calorie del TDEE. Per mantenere peso eguagli il TDEE. Per aumentare peso consumi più calorie del TDEE. Questo ti aiuta a raggiungere il cambiamento di peso desiderato a un ritmo sano.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$it extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Come viene calcolata la stima';
	@override String get description => 'Calcoliamo il tuo TDEE (basato sul profilo) e lo moltiplichiamo per la frazione della giornata trascorsa (ore + minuti) / 24 per stimare le calorie bruciate finora.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$it extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Indicazioni professionali';
	@override String get description => 'Non usare questa stima per decisioni mediche. Consulta sempre un professionista sanitario o un dietista registrato per consigli personalizzati sulla gestione del peso.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$it extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leggi le calorie totali bruciate';
	@override String get description => 'Permette all\'app di leggere le calorie totali bruciate da Health Connect.';
	@override String get usage => 'Questa autorizzazione viene usata per mostrare le calorie bruciate giornaliere nell\'app, aiutandoti a comprendere la tua spesa energetica totale durante la giornata.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$it extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$it._(TranslationsIt root) : this._root = root, super.internal(root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leggi i dati nutrizionali';
	@override String get description => 'Permette all\'app di leggere i dati nutrizionali da Health Connect.';
	@override String get usage => 'Questa autorizzazione consente all\'app di leggere le informazioni nutrizionali che potrebbero essere state registrate da altre app collegate a Health Connect, offrendo una vista completa della tua alimentazione.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$it extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$it._(TranslationsIt root) : this._root = root, super.internal(root);

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
			'onboarding.healthConnect.overviewDescription' => 'Usa le calorie bruciate nel tuo obiettivo giornaliero e, se vuoi, condividi i pasti registrati con Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Tracciamento automatico delle calorie',
			'onboarding.healthConnect.automaticTracking.description' => 'Registra le calorie bruciate dalle tue app fitness',
			'onboarding.healthConnect.caloriesBurned.title' => 'Calorie bruciate',
			'onboarding.healthConnect.caloriesBurned.description' => 'Leggi da Health Connect il totale delle calorie bruciate oggi',
			'onboarding.healthConnect.progressInsights.title' => 'Approfondimenti sul progresso',
			'onboarding.healthConnect.progressInsights.description' => 'Ricevi approfondimenti dettagliati sulle tendenze della tua salute',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Condividi i pasti registrati',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Scrivi su Health Connect i pasti che registri in Calorify',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integrazione senza soluzione di continuità',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sincronizza i dati dalle tue app di salute preferite',
			'onboarding.healthConnect.userControl.title' => 'Hai tu il controllo',
			'onboarding.healthConnect.userControl.description' => 'Scegli una delle due autorizzazioni e modifica l\'accesso in qualsiasi momento',
			'onboarding.healthConnect.connected' => 'Health Connect collegato',
			'onboarding.healthConnect.notConnected' => 'Health Connect non collegato',
			'onboarding.healthConnect.setup' => 'Configura Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Salta per ora',
			'onboarding.healthConnect.statusConnected' => 'Health Connect è collegato.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect è stato collegato con successo!',
			'onboarding.healthConnect.statusNotConnected' => 'Scegli le funzioni di Health Connect che vuoi attivare.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect è collegato parzialmente. Concedi l\'autorizzazione rimanente per usare entrambe le funzioni.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Installa o aggiorna Health Connect per continuare.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect non è supportato su questo dispositivo.',
			'onboarding.healthConnect.installOrUpdate' => 'Installa o aggiorna',
			'onboarding.healthConnect.manageAccess' => 'Gestisci l\'accesso',
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
			'home.dailyGoal.kcal' => 'chilocalorie',
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
			'home.connectHealth.dataUseDescription' => 'Usa le calorie bruciate nel tuo obiettivo e condividi i pasti registrati',
			'home.connectHealth.installOrUpdate' => 'Installa o aggiorna',
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
			'meal.imageTooLarge' => 'La foto supera ancora 1 MB dopo la compressione. Per favore, scegli un\'altra foto.',
			'meal.failedToSave' => 'Impossibile salvare i dati. Riprova.',
			'meal.skip' => 'Salta',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Domanda ${current} di ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Nessuna domanda disponibile',
			'meal.questionFlow.next' => 'Avanti',
			'meal.questionFlow.continueLabel' => 'Continua',
			'meal.questionFlow.countQuestion' => 'Scegli la quantità',
			'meal.questionFlow.itemSizeQuestion' => 'Scegli la dimensione dell\'articolo',
			'meal.questionFlow.portionSizeQuestion' => 'Scegli la dimensione della porzione',
			'meal.questionFlow.option6plus' => '6 o più',
			'meal.questionFlow.optionSmall' => 'Piccolo',
			'meal.questionFlow.optionRegular' => 'Regolare',
			'meal.questionFlow.optionLarge' => 'Grande',
			'meal.questionFlow.optionThin' => 'Sottile',
			'meal.questionFlow.optionThick' => 'Spesso',
			'meal.questionFlow.optionMini' => 'Mini',
			'meal.questionFlow.optionStuffed' => 'Ripieno',
			'meal.questionFlow.optionHeavy' => 'Pesante',
			'meal.questionFlow.optionSmaller' => 'Più piccolo',
			'meal.questionFlow.optionTypical' => 'Tipico',
			'meal.questionFlow.optionLarger' => 'Più grande',
			'meal.questionFlow.useEstimate' => 'Usa la stima',
			'meal.questionFlow.numberRange' => ({required Object min, required Object max, required Object step}) => 'Da ${min} a ${max}, con incrementi di ${step}',
			'meal.questionFlow.invalidNumber' => 'Inserisci un valore nell\'intervallo consentito',
			'meal.analysis.title' => 'Analisi del tuo pasto',
			'meal.analysis.stepStarted' => 'Inizio in corso…',
			'meal.analysis.stepDecomposition' => 'Comprensione del pasto…',
			'meal.analysis.stepIngredients' => 'Abbinamento ingredienti ai dati nutrizionali…',
			'meal.analysis.stepUncertainty' => 'Verifica della confidenza…',
			'meal.analysis.stepMealTypeQuestion' => 'Quasi pronto…',
			'meal.analysis.stepResult' => 'Finalizzazione del risultato…',
			'meal.analysis.stepError' => 'Si è verificato un problema',
			'meal.analysis.providerUnavailable' => 'Il servizio di analisi dei pasti è temporaneamente non disponibile. Riprova.',
			'meal.analysis.invalidModelOutput' => 'Impossibile interpretare la risposta sul pasto. Riprova.',
			'meal.analysis.nutritionServiceBusy' => 'L\'abbinamento nutrizionale è momentaneamente occupato. Per favore riprova.',
			'meal.analysis.nutritionDataUnavailable' => 'I dati nutrizionali sono temporaneamente non disponibili. Riprova.',
			'meal.analysis.analysisUnavailable' => 'L\'analisi del pasto è temporaneamente non disponibile. Riprova.',
			'meal.analysis.unresolvedNutrition' => 'Non siamo riusciti ad associare in modo affidabile i dati nutrizionali per questo pasto. Prova ad aggiungere più dettagli.',
			'meal.analysis.noFoodTip' => 'Nessun cibo rilevato. Prova un\'altra foto o descrizione.',
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
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '«${text}»',
			'meal.analysis.calorieRange' => ({required Object min, required Object max}) => 'Intervallo stimato: ${min}–${max} kcal',
			'meal.analysis.offlineTip0' => 'Suggerimento: La costanza batte la perfezione—registrazioni regolari rivelano i modelli che contano.',
			'meal.analysis.offlineTip1' => 'Suggerimento: Per le foto, la luce naturale e una visuale dall\'alto aiutano a stimare meglio le porzioni.',
			'meal.analysis.offlineTip2' => 'Suggerimento: Segnala bevande, salse e olio da cucina—aggiungono calorie che spesso si dimenticano.',
			'meal.analysis.offlineTip3' => 'Suggerimento: Una rapida indicazione della porzione (1 ciotola, caffè grande) rende le stime molto più precise.',
			'meal.analysis.offlineTip4' => 'Suggerimento: Registrare dopo il pasto aiuta comunque a costruire l\'abitudine; la perfezione è opzionale.',
			'meal.analysis.offlineTip5' => 'Suggerimento: Indica come è stato cucinato il cibo quando influisce molto sulle calorie (fritto vs al forno).',
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
			'editProfile.unitLbs' => 'lb',
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
			'settings.sections.healthConnect' => 'CONNESSIONE HEALTH CONNECT',
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
			'settings.clearAllData.localOnlySubtitle' => 'Elimina i dati di Calorify memorizzati su questo dispositivo',
			'settings.clearAllData.confirmationTitle' => 'Cancellare tutti i dati?',
			'settings.clearAllData.confirmationMessage' => 'Questa azione non può essere annullata. Tutti i tuoi pasti registrati, preferiti e impostazioni del profilo saranno eliminati definitivamente.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Questa operazione elimina definitivamente dal dispositivo i pasti registrati, i preferiti e le impostazioni del profilo. I pasti già condivisi con Health Connect e l\'accesso a Health Connect sono gestiti separatamente in Impostazioni > Health Connect.',
			'settings.clearAllData.cancel' => 'Annulla',
			'settings.clearAllData.clearEverything' => 'Cancella tutto',
			'settings.debugOptions.title' => 'Opzioni di debug',
			'settings.developerModeEnabled' => 'Modalità sviluppatore abilitata!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Visualizza e gestisci le autorizzazioni',
			'settings.healthConnect.unavailable.title' => 'Health Connect non disponibile',
			'settings.healthConnect.unavailable.description' => 'Health Connect non è disponibile su questo dispositivo. Installa Health Connect dal Play Store (Android 9+) o aggiorna a Android 14+.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect non è supportato su questo dispositivo.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect richiede attenzione',
			'settings.healthConnect.updateRequired.description' => 'Installa o aggiorna Health Connect prima di gestire l\'accesso.',
			'settings.healthConnect.updateRequired.action' => 'Installa o aggiorna',
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
			'settings.healthConnect.disconnect' => 'Disconnetti Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Disconnettere Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify perderà l\'accesso a Health Connect. I dati già scritti al suo interno non verranno eliminati.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Disconnetti',
			'settings.healthConnect.deleteSyncedMeals' => 'Elimina i pasti di Calorify da Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Eliminare i pasti sincronizzati?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Eliminare da Health Connect i pasti sincronizzati da questa versione di Calorify? Il registro locale dei pasti non cambierà. Potrebbe essere ancora necessario rimuovere le voci Calorify meno recenti tramite Gestisci dati in Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Elimina i pasti sincronizzati',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'I pasti di Calorify sono stati eliminati da Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Impossibile eliminare i pasti sincronizzati. Riprova.',
			'settings.healthConnect.connectionPartial' => 'Alcune funzioni di Health Connect sono attive.',
			'settings.healthConnect.connectionComplete' => 'Entrambe le funzioni di Health Connect sono attive.',
			'settings.healthConnect.actionFailed' => 'Impossibile aprire Health Connect. Riprova.',
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
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Analisi e diagnostica limitate\n${appLabel} usa eventi di base dell\'app e diagnostica degli arresti anomali per migliorare l\'affidabilità. I valori dei dati sanitari non vengono usati per la pubblicità né venduti.',
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
			'settings.appInfo.version' => ({required Object version}) => 'Calorify versione ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Revisione ${buildNumber}',
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
			_ => null,
		} ?? switch (path) {
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
			'watch.appTitle' => 'Calorify Orologio',
			'watch.common.back' => 'Indietro',
			'watch.common.cancel' => 'Annulla',
			'watch.common.delete' => 'Elimina',
			'watch.common.retry' => 'Riprova',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Nutriente',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} grammi',
			'watch.nutrition.protein' => 'Proteine',
			'watch.nutrition.carbs' => 'Carboidrati',
			'watch.nutrition.fat' => 'Grassi',
			'watch.nutrition.fiber' => 'Fibre',
			'watch.sync.syncWithPhone' => 'Sincronizza con il telefono',
			'watch.sync.syncing' => 'Sincronizzazione…',
			'watch.sync.synced' => 'Sincronizzato',
			'watch.sync.syncedJustNow' => 'Sincronizzato proprio ora',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Sincronizzato ${minutes}m fa',
			'watch.sync.failed' => 'Sincronizzazione non riuscita',
			'watch.sync.phoneDisconnected' => 'Telefono disconnesso',
			'watch.sync.tapToSync' => 'Tocca per sincronizzare',
			'watch.sync.refreshFailed' => 'Impossibile aggiornare. Controlla il telefono.',
			'watch.sync.openPhone' => 'Apri Calorify sul telefono, poi tocca Aggiorna.',
			'watch.home.today' => 'Oggi',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} calorie consumate su ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} oltre l\'obiettivo',
			'watch.home.remaining' => ({required Object calories}) => '${calories} rimanenti',
			'watch.home.left' => ({required Object calories}) => '${calories} rimasti',
			'watch.home.goal' => ({required Object calories}) => 'Obiettivo ${calories} kcal',
			'watch.home.logMeal' => 'Registra un pasto',
			'watch.home.todayMeals' => 'Pasti di oggi',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Pasti di oggi, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Visualizza altri ${count}',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} pasti in più, tocca per vedere tutti',
			'watch.home.noMeals' => 'Nessun pasto registrato',
			'watch.home.noMealsSemantics' => 'Nessun pasto registrato oggi',
			'watch.home.tapLog' => 'Tocca Registra per iniziare',
			'watch.home.removedFromQueue' => 'Pasto rimosso dalla coda offline.',
			'watch.home.removedOffline' => 'Pasto rimosso offline. Verrà sincronizzato quando il telefono si riconnetterà.',
			'watch.home.deleteFailed' => 'Impossibile eliminare il pasto',
			'watch.history.title' => 'Pasti di oggi',
			'watch.history.refresh' => 'Aggiorna pasti',
			'watch.history.loadFailed' => 'Impossibile caricare i pasti',
			'watch.history.syncFailed' => 'Impossibile sincronizzare',
			'watch.history.emptyTitle' => 'Ancora nessun pasto',
			'watch.history.emptyMessage' => 'Registra un pasto dalla schermata Home per vederlo qui.',
			'watch.favorites.title' => 'Preferiti',
			'watch.favorites.refresh' => 'Aggiorna preferiti',
			'watch.favorites.loadFailed' => 'Impossibile caricare i preferiti',
			'watch.favorites.syncFailed' => 'Impossibile sincronizzare',
			'watch.favorites.emptyTitle' => 'Ancora nessun preferito',
			'watch.favorites.emptyMessage' => 'Contrassegna con la stella i pasti nell\'app del telefono per registrarli qui con un tocco.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} calorie. Tocca per registrare.',
			'watch.favorites.logged' => ({required Object name}) => '${name} registrato!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} salvato offline. Verrà sincronizzato quando il telefono si riconnetterà.',
			'watch.favorites.saveFailed' => 'Impossibile salvare il pasto. Riprova.',
			'watch.favorites.log' => 'Registra',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calorie, registrato alle ${time}.',
			'watch.meal.longPressDelete' => 'Premi a lungo per eliminare.',
			'watch.meal.deleteTitle' => 'Eliminare il pasto?',
			'watch.voice.title' => 'Registrazione vocale del pasto',
			'watch.voice.processing' => 'Analizzando il tuo pasto…',
			'watch.voice.processingDescription' => 'Stima delle porzioni e dei valori nutrizionali',
			'watch.voice.listening' => 'In ascolto',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Interrompi registrazione',
			'watch.voice.start' => 'Tocca per iniziare la registrazione',
			'watch.voice.starting' => 'Avvio del microfono…',
			'watch.voice.prompt' => 'Tocca, poi descrivi il tuo pasto',
			'watch.voice.tapToRetry' => 'Tocca per riprovare',
			'watch.voice.example' => 'Prova “2 rotis con dal”',
			'watch.voice.unavailable' => 'L\'input vocale non è disponibile. Controlla il permesso del microfono nelle impostazioni dell\'orologio.',
			'watch.voice.didNotStart' => 'Il microfono non si è avviato. Tocca per riprovare.',
			'watch.voice.startFailed' => 'Impossibile avviare la registrazione. Controlla i permessi del microfono.',
			'watch.voice.allowMicrophone' => 'Consenti l\'accesso al microfono per registrare i pasti con la voce.',
			'watch.voice.needsConnection' => 'Il riconoscimento vocale necessita di una connessione. Tocca per riprovare.',
			'watch.voice.microphoneUnavailable' => 'Il microfono non è disponibile. Tocca per riprovare.',
			'watch.voice.microphoneBusy' => 'Il microfono è occupato. Attendi un momento e riprova.',
			'watch.voice.languageUnsupported' => 'L\'input vocale non supporta la lingua dell\'orologio.',
			'watch.voice.temporarilyBusy' => 'L\'input vocale è temporaneamente occupato. Attendi un momento e riprova.',
			'watch.voice.notRecognized' => 'Non ho capito. Tocca il microfono e riprova.',
			'watch.voice.noSpeech' => 'Nessun audio rilevato. Tocca il microfono per riprovare.',
			'watch.voice.analysisFailed' => 'Analisi fallita. Per favore riprova.',
			'watch.voice.mealNotIdentified' => 'Impossibile identificare il pasto. Prova a descriverlo diversamente.',
			'watch.result.title' => 'Dettagli del pasto',
			'watch.result.savedOffline' => 'Salvato offline',
			'watch.result.logged' => 'Registrato!',
			'watch.result.mealFound' => 'Pasto trovato',
			'watch.result.estimatedEnergy' => 'Energia stimata',
			'watch.result.logMeal' => 'Registra pasto',
			'watch.result.logging' => 'Registrazione…',
			'watch.result.logAnother' => 'Registra un altro',
			'watch.result.goingBack' => 'Tornando indietro…',
			'watch.result.savedOfflineMessage' => 'Pasto salvato offline. Verrà sincronizzato quando il telefono si riconnetterà.',
			'watch.result.saveFailed' => 'Impossibile salvare il pasto. Per favore riprova.',
			'common.betaTag' => 'Beta',
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
