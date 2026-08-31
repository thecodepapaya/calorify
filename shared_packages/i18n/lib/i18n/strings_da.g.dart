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
class TranslationsDa extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.da,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <da>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsDa _root = this; // ignore: unused_field

	@override 
	TranslationsDa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDa(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Dansk';
	@override String get flag => '🇩🇰';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$da errors = _Translations$errors$da._(_root);
	@override late final _Translations$onboarding$da onboarding = _Translations$onboarding$da._(_root);
	@override late final _Translations$tabs$da tabs = _Translations$tabs$da._(_root);
	@override late final _Translations$home$da home = _Translations$home$da._(_root);
	@override late final _Translations$history$da history = _Translations$history$da._(_root);
	@override late final _Translations$meal$da meal = _Translations$meal$da._(_root);
	@override late final _Translations$favorites$da favorites = _Translations$favorites$da._(_root);
	@override late final _Translations$profile$da profile = _Translations$profile$da._(_root);
	@override late final _Translations$healthScore$da healthScore = _Translations$healthScore$da._(_root);
	@override late final _Translations$editProfile$da editProfile = _Translations$editProfile$da._(_root);
	@override late final _Translations$settings$da settings = _Translations$settings$da._(_root);
	@override late final _Translations$reminders$da reminders = _Translations$reminders$da._(_root);
	@override late final _Translations$notifications$da notifications = _Translations$notifications$da._(_root);
	@override late final _Translations$login$da login = _Translations$login$da._(_root);
	@override late final _Translations$disclaimer$da disclaimer = _Translations$disclaimer$da._(_root);
	@override late final _Translations$watch$da watch = _Translations$watch$da._(_root);
	@override late final _Translations$common$da common = _Translations$common$da._(_root);
	@override late final _Translations$feedbackRating$da feedbackRating = _Translations$feedbackRating$da._(_root);
	@override late final _Translations$health$da health = _Translations$health$da._(_root);
}

// Path: errors
class _Translations$errors$da extends Translations$errors$en {
	_Translations$errors$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Du har sendt for mange anmodninger. Vent et øjeblik før du prøver igen.';
	@override String get networkError => 'Netværksfejl. Tjek din internetforbindelse.';
	@override String get unknownError => 'Noget gik galt. Prøv igen senere.';
	@override String get loadingProfileData => 'Fejl ved indlæsning af profildata';
	@override String get somethingWentWrong => 'Noget gik galt.';
	@override String get retry => 'Prøv igen';
}

// Path: onboarding
class _Translations$onboarding$da extends Translations$onboarding$en {
	_Translations$onboarding$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Velkommen til ${appLabel}';
	@override String get subtitle => 'Din personlige ernæringsassistent drevet af AI';
	@override String get getStarted => 'Kom i gang';
	@override late final _Translations$onboarding$features$da features = _Translations$onboarding$features$da._(_root);
	@override late final _Translations$onboarding$gender$da gender = _Translations$onboarding$gender$da._(_root);
	@override late final _Translations$onboarding$height$da height = _Translations$onboarding$height$da._(_root);
	@override late final _Translations$onboarding$weight$da weight = _Translations$onboarding$weight$da._(_root);
	@override late final _Translations$onboarding$age$da age = _Translations$onboarding$age$da._(_root);
	@override late final _Translations$onboarding$bmiScale$da bmiScale = _Translations$onboarding$bmiScale$da._(_root);
	@override late final _Translations$onboarding$weightGoal$da weightGoal = _Translations$onboarding$weightGoal$da._(_root);
	@override late final _Translations$onboarding$activityLevel$da activityLevel = _Translations$onboarding$activityLevel$da._(_root);
	@override late final _Translations$onboarding$healthConnect$da healthConnect = _Translations$onboarding$healthConnect$da._(_root);
	@override late final _Translations$onboarding$reinforcement$da reinforcement = _Translations$onboarding$reinforcement$da._(_root);
}

// Path: tabs
class _Translations$tabs$da extends Translations$tabs$en {
	_Translations$tabs$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Oversigt';
	@override String get history => 'Historik';
}

// Path: home
class _Translations$home$da extends Translations$home$en {
	_Translations$home$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$da aiSummary = _Translations$home$aiSummary$da._(_root);
	@override late final _Translations$home$dailyGoal$da dailyGoal = _Translations$home$dailyGoal$da._(_root);
	@override late final _Translations$home$dailySummary$da dailySummary = _Translations$home$dailySummary$da._(_root);
	@override late final _Translations$home$intakeProgress$da intakeProgress = _Translations$home$intakeProgress$da._(_root);
	@override late final _Translations$home$intakeHistory$da intakeHistory = _Translations$home$intakeHistory$da._(_root);
	@override late final _Translations$home$mealLog$da mealLog = _Translations$home$mealLog$da._(_root);
	@override late final _Translations$home$mealDescription$da mealDescription = _Translations$home$mealDescription$da._(_root);
	@override late final _Translations$home$favoriteMeals$da favoriteMeals = _Translations$home$favoriteMeals$da._(_root);
	@override late final _Translations$home$mealSnap$da mealSnap = _Translations$home$mealSnap$da._(_root);
	@override late final _Translations$home$connectHealth$da connectHealth = _Translations$home$connectHealth$da._(_root);
}

// Path: history
class _Translations$history$da extends Translations$history$en {
	_Translations$history$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Ingen registrerede måltider';
	@override String get emptyMessage => 'Tag et billede af dit sidste måltid for at registrere det her.';
	@override String get today => 'I dag';
	@override String get yesterday => 'I går';
}

// Path: meal
class _Translations$meal$da extends Translations$meal$en {
	_Translations$meal$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Åh nej!';
	@override String get delete => 'Slet';
	@override String get editMeal => 'Rediger måltid';
	@override String get addMeal => 'Tilføj måltid';
	@override String get saveMeal => 'Gem måltid';
	@override String get save => 'Gem';
	@override String get mealName => 'Måltidets navn';
	@override String get mealNameHint => 'fx. Røræg med toast';
	@override String get nameRequired => 'Indtast et navn på måltidet, før du gemmer.';
	@override String get mealQuantity => 'Mængde';
	@override String get mealQuantityHint => 'fx. 1 skål, 2 skiver';
	@override String get timeOfMeal => 'Tidspunkt for måltid';
	@override String get timeOfMealHint => 'Vælg tidspunktet for dit måltid';
	@override String get mealType => 'Måltidstype';
	@override late final _Translations$meal$nutrition$da nutrition = _Translations$meal$nutrition$da._(_root);
	@override late final _Translations$meal$deleteConfirmation$da deleteConfirmation = _Translations$meal$deleteConfirmation$da._(_root);
	@override String get addedToLog => 'Måltid føjet til din log!';
	@override String couldNotAdd({required Object error}) => 'Kunne ikke tilføje måltid: ${error}';
	@override String get savedSuccessfully => 'Måltid tilføjet!';
	@override String get updatedSuccessfully => 'Måltid opdateret!';
	@override String errorSaving({required Object error}) => 'Fejl ved gemning af måltid: ${error}';
	@override String get removedFromFavorites => 'Fjernet fra favoritter!';
	@override String get savedAsFavorite => 'Måltid gemt som favorit!';
	@override String get unfavorite => 'Fjern favorit';
	@override String couldNotUpdateFavorite({required Object error}) => 'Kunne ikke opdatere favorit: ${error}';
	@override String get feedbackThanks => 'Tak for din feedback!';
	@override String get reanalysisUpdated => 'Opdaterede måltidsanalysen baseret på din feedback.';
	@override String failedToProcess({required Object error}) => 'Kunne ikke behandle: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Kunne ikke behandle billede: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Fejl ved komprimering af billede: ${error}';
	@override String get imageTooLarge => 'Dette billede er stadig over 1 MB efter komprimering. Vælg et andet billede.';
	@override String get failedToSave => 'Kunne ikke gemme data. Prøv igen.';
	@override String get skip => 'Spring over';
	@override late final _Translations$meal$questionFlow$da questionFlow = _Translations$meal$questionFlow$da._(_root);
	@override late final _Translations$meal$analysis$da analysis = _Translations$meal$analysis$da._(_root);
	@override late final _Translations$meal$feedback$da feedback = _Translations$meal$feedback$da._(_root);
}

// Path: favorites
class _Translations$favorites$da extends Translations$favorites$en {
	_Translations$favorites$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritter';
	@override String get empty => 'Ingen favoritmåltider endnu.';
	@override String get searchPlaceholder => 'Søg i favoritter';
	@override String get searchEmptyTitle => 'Ingen favoritter matcher din søgning';
	@override String get searchEmptySubtitle => 'Prøv et andet måltidsnavn, mængde eller måltidstype.';
	@override String get sortLabel => 'Sorter favoritter';
	@override String get undo => 'Fortryd';
	@override String removed({required Object name}) => 'Fjernede ${name} fra favoritter';
	@override late final _Translations$favorites$sortOptions$da sortOptions = _Translations$favorites$sortOptions$da._(_root);
}

// Path: profile
class _Translations$profile$da extends Translations$profile$en {
	_Translations$profile$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Ingen profildata fundet';
	@override String get yourProfile => 'Din profil';
	@override String get viewAndManage => 'Se og administrer dine sundhedsoplysninger';
	@override late final _Translations$profile$sections$da sections = _Translations$profile$sections$da._(_root);
	@override String get gender => 'Køn';
	@override String get height => 'Højde';
	@override String get weight => 'Vægt';
	@override String get age => 'Alder';
	@override String get weightGoal => 'Vægtmål';
	@override String get targetWeight => 'Målvægt';
	@override String get activityLevel => 'Aktivitetsniveau';
	@override String get healthMetrics => 'Sundhedsparametre';
	@override String get notSet => 'Ikke angivet';
	@override String get years => 'år';
	@override String get updatedSuccessfully => 'Profil opdateret!';
	@override late final _Translations$profile$calculatedValues$da calculatedValues = _Translations$profile$calculatedValues$da._(_root);
}

// Path: healthScore
class _Translations$healthScore$da extends Translations$healthScore$en {
	_Translations$healthScore$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sundhedsscore';
	@override String get whyThisScore => 'Hvorfor denne score?';
	@override String get note => 'Denne score er et AI-estimat baseret på identificerede ingredienser og ernæringstætheden. Konsulter altid en professionel for kostråd.';
	@override String get unhealthy => 'Usund';
	@override String get healthy => 'Sund';
	@override String get neutral => 'Neutralt';
}

// Path: editProfile
class _Translations$editProfile$da extends Translations$editProfile$en {
	_Translations$editProfile$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rediger profil';
	@override late final _Translations$editProfile$sections$da sections = _Translations$editProfile$sections$da._(_root);
	@override String get gender => 'Køn';
	@override String get dateOfBirth => 'Fødselsdato';
	@override String get height => 'Højde';
	@override String get weight => 'Vægt';
	@override String get weightGoal => 'Vægtmål';
	@override String get activityLevel => 'Aktivitetsniveau';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperialt';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'pund (lb)';
	@override String get metricCm => 'Metrisk (cm)';
	@override String get imperialFtIn => 'Imperialt (ft/in)';
	@override String get metricKg => 'Metrisk (kg)';
	@override String get imperialLbs => 'Imperialt (lbs)';
	@override late final _Translations$editProfile$genders$da genders = _Translations$editProfile$genders$da._(_root);
	@override late final _Translations$editProfile$weightGoals$da weightGoals = _Translations$editProfile$weightGoals$da._(_root);
	@override late final _Translations$editProfile$activityLevels$da activityLevels = _Translations$editProfile$activityLevels$da._(_root);
}

// Path: settings
class _Translations$settings$da extends Translations$settings$en {
	_Translations$settings$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Indstillinger';
	@override late final _Translations$settings$sections$da sections = _Translations$settings$sections$da._(_root);
	@override late final _Translations$settings$editProfile$da editProfile = _Translations$settings$editProfile$da._(_root);
	@override late final _Translations$settings$language$da language = _Translations$settings$language$da._(_root);
	@override late final _Translations$settings$heightUnit$da heightUnit = _Translations$settings$heightUnit$da._(_root);
	@override late final _Translations$settings$weightUnit$da weightUnit = _Translations$settings$weightUnit$da._(_root);
	@override late final _Translations$settings$mealReminders$da mealReminders = _Translations$settings$mealReminders$da._(_root);
	@override late final _Translations$settings$theme$da theme = _Translations$settings$theme$da._(_root);
	@override late final _Translations$settings$sendFeedback$da sendFeedback = _Translations$settings$sendFeedback$da._(_root);
	@override late final _Translations$settings$exportMealHistory$da exportMealHistory = _Translations$settings$exportMealHistory$da._(_root);
	@override late final _Translations$settings$clearAllData$da clearAllData = _Translations$settings$clearAllData$da._(_root);
	@override late final _Translations$settings$debugOptions$da debugOptions = _Translations$settings$debugOptions$da._(_root);
	@override String get developerModeEnabled => 'Udviklertilstand aktiveret!';
	@override late final _Translations$settings$healthConnect$da healthConnect = _Translations$settings$healthConnect$da._(_root);
	@override late final _Translations$settings$about$da about = _Translations$settings$about$da._(_root);
	@override late final _Translations$settings$appInfo$da appInfo = _Translations$settings$appInfo$da._(_root);
}

// Path: reminders
class _Translations$reminders$da extends Translations$reminders$en {
	_Translations$reminders$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hold dig på sporet med påmindelser';
	@override String get description => 'Få blide påmindelser om at registrere dine måltider og holde fast i dine ernæringsmål';
	@override String get notificationsEnabled => 'Notifikationer aktiveret';
	@override String get notificationsDisabled => 'Notifikationer deaktiveret';
	@override String get enabledSubtitle => 'Du vil modtage måltidspåmindelser';
	@override String get disabledSubtitle => 'Aktivér notifikationer for at få måltidspåmindelser';
	@override String get mealReminders => 'Måltidspåmindelser';
	@override String get breakfast => 'Morgenmad';
	@override String get lunch => 'Frokost';
	@override String get dinner => 'Aftensmad';
	@override String get snack => 'Mellemmåltid';
	@override String get unknown => 'Ukendt';
	@override String get change => 'Skift';
	@override String get enableNotifications => 'Aktivér notifikationer';
	@override String get skipForNow => 'Spring over for nu';
	@override String get saveChanges => 'Gem ændringer';
	@override String get enabledSuccessfully => 'Notifikationer aktiveret!';
	@override String get permissionDenied => 'Tilladelse til notifikationer afvist';
	@override String errorEnabling({required Object error}) => 'Fejl ved aktivering af notifikationer: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Fejl ved fuldførelse af opsætning: ${error}';
}

// Path: notifications
class _Translations$notifications$da extends Translations$notifications$en {
	_Translations$notifications$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$da breakfast = _Translations$notifications$breakfast$da._(_root);
	@override late final _Translations$notifications$lunch$da lunch = _Translations$notifications$lunch$da._(_root);
	@override late final _Translations$notifications$dinner$da dinner = _Translations$notifications$dinner$da._(_root);
	@override late final _Translations$notifications$snack$da snack = _Translations$notifications$snack$da._(_root);
	@override late final _Translations$notifications$test$da test = _Translations$notifications$test$da._(_root);
}

// Path: login
class _Translations$login$da extends Translations$login$en {
	_Translations$login$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Log ind';
	@override String get signInWithGoogle => 'Log ind med Google';
	@override String get signInFailed => 'Google-login mislykkedes eller blev annulleret.';
}

// Path: disclaimer
class _Translations$disclaimer$da extends Translations$disclaimer$en {
	_Translations$disclaimer$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Bemærk venligst';
	@override late final _Translations$disclaimer$snap$da snap = _Translations$disclaimer$snap$da._(_root);
	@override late final _Translations$disclaimer$weightEstimate$da weightEstimate = _Translations$disclaimer$weightEstimate$da._(_root);
	@override late final _Translations$disclaimer$healthMetrics$da healthMetrics = _Translations$disclaimer$healthMetrics$da._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$da calorieExpenditure = _Translations$disclaimer$calorieExpenditure$da._(_root);
}

// Path: watch
class _Translations$watch$da extends Translations$watch$en {
	_Translations$watch$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$da common = _Translations$watch$common$da._(_root);
	@override late final _Translations$watch$nutrition$da nutrition = _Translations$watch$nutrition$da._(_root);
	@override late final _Translations$watch$sync$da sync = _Translations$watch$sync$da._(_root);
	@override late final _Translations$watch$home$da home = _Translations$watch$home$da._(_root);
	@override late final _Translations$watch$history$da history = _Translations$watch$history$da._(_root);
	@override late final _Translations$watch$favorites$da favorites = _Translations$watch$favorites$da._(_root);
	@override late final _Translations$watch$meal$da meal = _Translations$watch$meal$da._(_root);
	@override late final _Translations$watch$voice$da voice = _Translations$watch$voice$da._(_root);
	@override late final _Translations$watch$result$da result = _Translations$watch$result$da._(_root);
}

// Path: common
class _Translations$common$da extends Translations$common$en {
	_Translations$common$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Beta';
	@override String get close => 'Luk';
	@override String get kContinue => 'Fortsæt';
}

// Path: feedbackRating
class _Translations$feedbackRating$da extends Translations$feedbackRating$en {
	_Translations$feedbackRating$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Nyder du ${appLabel}?';
	@override String get yes => 'Ja, jeg er glad for den';
	@override String get no => 'Ikke rigtig';
	@override String get rateStepHeading => 'Giv bedømmelse på Play Store';
	@override String get emailStepHeading => 'Send feedback via e-mail';
	@override String soloDevMessage({required Object appLabel}) => 'En hurtig vurdering hjælper andre med at finde ${appLabel} og holder udviklingen i gang. Vil du give en vurdering?';
	@override String get shareFeedbackViaEmail => 'Din feedback former det, der kommer næste — vi læser alle beskeder. Vil du dele dine tanker via e-mail?';
	@override String get rateCta => 'Giv vurdering på Play Store';
	@override String get maybeLater => 'Måske senere';
	@override String get sendFeedback => 'Giv feedback';
	@override String get noThanks => 'Nej tak';
	@override String get aboutUsDescription => 'Lavede med omtanke af et lille team. Vi fokuserer på privatliv, enkelhed og at hjælpe dig med bedre spisevaner.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Nysgerrig efter hvem der står bag ${appLabel}? Se ';
	@override String get aboutUsLinkLabel => 'Om os';
	@override String get thankYouMessage => 'Tak! Vi spørger igen en anden gang.';
}

// Path: health
class _Translations$health$da extends Translations$health$en {
	_Translations$health$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Kunne ikke synkronisere til Health Connect';
	@override String get mealSynced => 'Måltid synkroniseret med Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$da extends Translations$onboarding$features$en {
	_Translations$onboarding$features$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$da foodRecognition = _Translations$onboarding$features$foodRecognition$da._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$da aiAnalysis = _Translations$onboarding$features$aiAnalysis$da._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$da healthIntegration = _Translations$onboarding$features$healthIntegration$da._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$da extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvad er dit køn?';
	@override String get description => 'Køn hjælper os med at beregne dit basale stofskifte (BMR) mere præcist.';
	@override String get next => 'Næste';
}

// Path: onboarding.height
class _Translations$onboarding$height$da extends Translations$onboarding$height$en {
	_Translations$onboarding$height$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvor høj er du?';
	@override String get description => 'Din højde hjælper os med at beregne din BMI og energibehov præcist.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperialt';
	@override String get next => 'Næste';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$da extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Hvad er din aktuelle vægt?';
	@override String get currentDescription => 'Din aktuelle vægt er vigtig for at tilpasse dine daglige mål.';
	@override String get targetTitle => 'Hvad er din målvægt?';
	@override String get targetDescription => 'At sætte en målvægt hjælper os med at bestemme din langsigtede plan.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperialt';
	@override String get next => 'Næste';
}

// Path: onboarding.age
class _Translations$onboarding$age$da extends Translations$onboarding$age$en {
	_Translations$onboarding$age$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvornår er din fødselsdag?';
	@override String get description => 'Din alder hjælper os med at beregne dit kaloriebehov præcist.';
	@override String get next => 'Næste';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$da extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervægt';
	@override String get healthy => 'Sund';
	@override String get overweight => 'Overvægt';
	@override String get obese => 'Fedme';
	@override late final _Translations$onboarding$bmiScale$categories$da categories = _Translations$onboarding$bmiScale$categories$da._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$da messages = _Translations$onboarding$bmiScale$messages$da._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$da extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvad er dit mål?';
	@override String get description => 'Vælg det mål, der bedst beskriver, hvad du vil opnå';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$da extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvor aktiv er du?';
	@override String get description => 'Det hjælper os med at beregne dit daglige kaloriebehov mere præcist';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$da extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Forbind med Health Connect';
	@override String get description => 'Synkroniser dine sundhedsdata for bedre indsigt og automatisk kaloritælling';
	@override String get overviewDescription => 'Brug forbrændte kalorier i dit dagsmål, og del eventuelt registrerede måltider med Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$da automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$da._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$da caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$da._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$da progressInsights = _Translations$onboarding$healthConnect$progressInsights$da._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$da shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$da._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$da seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$da._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$da userControl = _Translations$onboarding$healthConnect$userControl$da._(_root);
	@override String get connected => 'Health Connect forbundet';
	@override String get notConnected => 'Health Connect ikke forbundet';
	@override String get setup => 'Opsæt Health Connect';
	@override String get skipForNow => 'Spring over for nu';
	@override String get statusConnected => 'Health Connect er forbundet.';
	@override String get statusSuccess => 'Health Connect er blevet tilsluttet!';
	@override String get statusNotConnected => 'Vælg de Health Connect-funktioner, du vil aktivere.';
	@override String get statusPartial => 'Health Connect er delvist forbundet. Aktivér den resterende tilladelse for at bruge begge funktioner.';
	@override String get statusProviderUpdateRequired => 'Installer eller opdater Health Connect for at fortsætte.';
	@override String get statusUnavailable => 'Health Connect understøttes ikke på denne enhed.';
	@override String get installOrUpdate => 'Installer eller opdater';
	@override String get manageAccess => 'Administrer adgang';
	@override String statusPermissionDenied({required Object appLabel}) => 'Tilladelse afvist. Aktivér Health Connect-tilladelser i telefonens indstillinger for ${appLabel}.';
	@override String statusError({required Object error}) => 'Fejl ved opsætning af Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$da extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$da trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$da._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$da healthProfile = _Translations$onboarding$reinforcement$healthProfile$da._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$da goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$da._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$da extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din AI-opsummering';
	@override String get logMore => 'Registrer flere måltider de næste par dage for at få dine personlige AI-indsigter.';
	@override String get loading => 'Indlæser din opsummering...';
	@override String mealCount({required Object count}) => '${count} måltider registreret';
	@override String macroBalanceScore({required Object score}) => 'Balance-score ${score}';
	@override String get topFoods => 'Topfødevarer';
	@override String get trendUp => 'Kalorier stiger';
	@override String get trendDown => 'Kalorier falder';
	@override String get trendSteady => 'Kalorier stabiliserer sig';
	@override String generatedAt({required Object time}) => 'Opdateret ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$da extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sæt dit daglige mål';
	@override String get titleSet => 'Dit daglige mål';
	@override String get description => 'Klar til at starte din wellness-rejse? Sæt dit daglige kaloriemål nedenfor for at kickstarte din fremgang.';
	@override String get descriptionSet => 'Din kurs er sat! Dette er dit daglige kaloriemål som vejledning.';
	@override String get yourGoal => 'Dit mål';
	@override String get goal => 'Mål';
	@override String get dailyCalories => 'Daglige kalorier (kcal)';
	@override String get setGoal => 'Indstil mål';
	@override String get intake => 'Indtag';
	@override String get burned => 'Forbrændt';
	@override String get weightImpact => 'Vægtpåvirkning';
	@override String get estLoss => 'Ansl. tab på';
	@override String get estGain => 'Ansl. stigning på';
	@override String get kcal => 'kilokalorier (kcal)';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$da extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagsoversigt';
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Kulhydrater';
	@override String get protein => 'Proteiner';
	@override String get fat => 'Fedt';
	@override String get fiber => 'Fibre';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Makrofordelingsdiagram';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$da extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens makrofordeling';
	@override String get target => 'Mål';
	@override String get current => 'Nuværende';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$da extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => '7-dages makrohistorik';
	@override String get trendTitle => 'Dagens tendens';
	@override String peakHour({required Object hour}) => 'Top: ${hour}:00';
	@override String get noHistoryYet => 'Ingen historik endnu';
	@override String get startLogging => 'Begynd at registrere måltider for at se dine\n7-dages makrotendenser her';
}

// Path: home.mealLog
class _Translations$home$mealLog$da extends Translations$home$mealLog$en {
	_Translations$home$mealLog$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Registrerede måltider';
	@override String get emptyMessage => 'Tag et billede af dit sidste måltid for at registrere det her.';
	@override String get noMealsToday => 'Ingen måltider registreret i dag';
	@override String get seeAllMeals => 'Se alle måltider';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$da extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hurtigtilføj med AI';
	@override String get description => 'Beskriv dit måltid, og lad AI klare detaljerne.';
	@override String get hint => 'fx. Til morgenmad spiste jeg en stor skål havregryn med en skivet banan og en skefuld valle ...';
	@override String get analyzeMeal => 'Analyser måltid';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$da extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritmåltider';
	@override String get description => 'Tilføj hurtigt et af dine yndlingsmåltider.';
	@override String get noFavorites => 'Ingen favoritmåltider endnu.';
	@override String get addFavoriteHint => 'Klik på stjernen på et måltid for at markere det som favorit.';
	@override String get seeAll => 'Se alle';
	@override String get add => 'Tilføj';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$da extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tag billede og registrer dit måltid';
	@override String get description => 'Brug dit kamera til at tage et billede af din mad til AI-analyse.';
	@override String get openCamera => 'Åbn kamera';
	@override String get gallery => 'Galleri';
	@override String get compressingPhoto => 'Optimerer foto…';
	@override String get uploadingPhoto => 'Uploader foto…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$da extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synkroniser med Health Connect';
	@override String get description => 'Synkroniser dine ernæringsdata med Health Connect';
	@override String get install => 'Installer';
	@override String get dataUseDescription => 'Brug forbrændte kalorier i dit mål, og del registrerede måltider';
	@override String get installOrUpdate => 'Installer eller opdater';
	@override String get connect => 'Forbind';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$da extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Kulhydrater (g)';
	@override String get protein => 'Proteiner (g)';
	@override String get fat => 'Fedt (g)';
	@override String get fiber => 'Fibre (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$da extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slet måltid';
	@override String get message => 'Er du sikker på, at du vil slette denne måltidsregistrering?';
	@override String get cancel => 'Annuller';
	@override String get delete => 'Slet';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$da extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Spørgsmål ${current} af ${total}';
	@override String get noQuestionsAvailable => 'Ingen spørgsmål tilgængelige';
	@override String get next => 'Næste';
	@override String get continueLabel => 'Fortsæt';
	@override String get countQuestion => 'Vælg antal';
	@override String get itemSizeQuestion => 'Vælg elementstørrelse';
	@override String get portionSizeQuestion => 'Vælg portionsstørrelse';
	@override String get option6plus => '6 eller flere';
	@override String get optionSmall => 'Lille';
	@override String get optionRegular => 'Normal';
	@override String get optionLarge => 'Stor';
	@override String get optionThin => 'Tynd';
	@override String get optionThick => 'Tykk';
	@override String get optionMini => 'Mini';
	@override String get optionStuffed => 'Fyldt';
	@override String get optionHeavy => 'Tung';
	@override String get optionSmaller => 'Mindre';
	@override String get optionTypical => 'Typisk';
	@override String get optionLarger => 'Større';
	@override String get useEstimate => 'Brug estimat';
	@override String numberRange({required Object min, required Object max, required Object step}) => 'Fra ${min} til ${max}, med trin på ${step}';
	@override String get invalidNumber => 'Indtast en værdi inden for det tilladte område';
}

// Path: meal.analysis
class _Translations$meal$analysis$da extends Translations$meal$analysis$en {
	_Translations$meal$analysis$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyserer dit måltid';
	@override String get stepStarted => 'Starter…';
	@override String get stepDecomposition => 'Forstår dit måltid…';
	@override String get stepIngredients => 'Matcher ingredienser til ernæringsdata…';
	@override String get stepUncertainty => 'Tjekker sikkerhed…';
	@override String get stepMealTypeQuestion => 'Næsten færdig…';
	@override String get stepResult => 'Færdiggør resultatet…';
	@override String get stepError => 'Noget gik galt';
	@override String get providerUnavailable => 'Tjenesten til måltidsanalyse er midlertidigt utilgængelig. Prøv igen.';
	@override String get invalidModelOutput => 'Måltidsvaret kunne ikke forstås. Prøv igen.';
	@override String get nutritionDataUnavailable => 'Ernæringsdata er midlertidigt utilgængelige. Prøv igen.';
	@override String get analysisUnavailable => 'Måltidsanalysen er midlertidigt utilgængelig. Prøv igen.';
	@override String get unresolvedNutrition => 'Vi kunne ikke med sikkerhed matche ernæringsdata for dette måltid. Prøv at tilføje flere detaljer.';
	@override String get noFoodTip => 'Ingen mad blev registreret. Prøv et andet billede eller en anden beskrivelse.';
	@override String get stepDefault => 'Analysere dit måltid…';
	@override String get progressUnderstand => 'Forståelse af måltid';
	@override String get progressMatch => 'Slår ingrediensers næring op';
	@override String get progressCheck => 'Tjekker portioner og sikkerhed';
	@override String get progressMealType => 'Vælger måltidstype';
	@override String get progressFinish => 'Beregn kalorier og makroer';
	@override String get detectedIngredientHeading => 'Ingredienser vi genkender';
	@override String ingredientsOverflow({required Object count}) => '${count} mere';
	@override String ingredientsLine({required Object count}) => '${count} ingredienser registreret';
	@override String get ingredientsPending => 'Scanner ingredienser…';
	@override String mealPreviewDescription({required Object text}) => '»${text}«';
	@override String calorieRange({required Object min, required Object max}) => 'Anslået interval: ${min}–${max} kcal';
	@override String get offlineTip0 => 'Tip: Konsistens slår perfektion—regelmæssige registreringer afslører de vigtige mønstre.';
	@override String get offlineTip1 => 'Tip: Til fotos hjælper naturligt lys og et top-down-perspektiv med portionsnøjagtigheden.';
	@override String get offlineTip2 => 'Tip: Angiv drikkevarer, saucer og madolie—de tilføjer kalorier, som mange glemmer.';
	@override String get offlineTip3 => 'Tip: En hurtig portionsnote (1 skål, stor kaffe) gør estimaterne meget skarpere.';
	@override String get offlineTip4 => 'Tip: At registrere efter måltidet bygger stadig vanen; perfektion er valgfrit.';
	@override String get offlineTip5 => 'Tip: Angiv, hvordan maden er tilberedt, når det ændrer kalorier meget (stegt vs. bagt).';
}

// Path: meal.feedback
class _Translations$meal$feedback$da extends Translations$meal$feedback$en {
	_Translations$meal$feedback$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvad ser forkert ud?';
	@override String get subtitle => 'Hjælp os med at forbedre analysen ved at vælge ét eller flere problemer.';
	@override String get tellUsMore => 'Fortæl os mere';
	@override String get describeIncorrect => 'Beskriv hvad der var forkert';
	@override String get submit => 'Send';
	@override String get issueFoodIdentification => 'Madgenkendelse';
	@override String get issuePortionSize => 'Portionsstørrelse';
	@override String get issueCalorieDistribution => 'Kaloriefordeling';
	@override String get issueMacrosWrong => 'Makroer er forkerte';
	@override String get issueMissingItems => 'Mangler varer';
	@override String get issueExtraItems => 'Ekstra varer';
	@override String get issueOther => 'Andet';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$da extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Nyeste';
	@override String get calories => 'Kalorier';
	@override String get alphabetical => 'A-Å';
}

// Path: profile.sections
class _Translations$profile$sections$da extends Translations$profile$sections$en {
	_Translations$profile$sections$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'BASALE OPLYSNINGER';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
	@override String get calculatedValues => 'BEREGNEDE VÆRDIER';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$da extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Dagsmål';
	@override String get calPerDay => 'cal/dag';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$da extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSONLIGE OPLYSNINGER';
	@override String get physicalMeasurements => 'FYSISKE MÅL';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$da extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get male => 'Mand';
	@override String get female => 'Kvinde';
	@override String get other => 'Andet';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$da extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$da loseWeight = _Translations$editProfile$weightGoals$loseWeight$da._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$da maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$da._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$da gainWeight = _Translations$editProfile$weightGoals$gainWeight$da._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$da extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$da sedentary = _Translations$editProfile$activityLevels$sedentary$da._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$da lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$da._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$da moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$da._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$da veryActive = _Translations$editProfile$activityLevels$veryActive$da._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$da extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$da._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$da extends Translations$settings$sections$en {
	_Translations$settings$sections$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALISERING';
	@override String get notifications => 'NOTIFIKATIONER';
	@override String get healthConnect => 'Health Connect';
	@override String get supportAndLegal => 'SUPPORT & JURA';
	@override String get about => 'OM';
	@override String get dangerZone => 'FARLIG ZONE';
	@override String get developer => 'UDVIKLER';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$da extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rediger profil';
	@override String get subtitle => 'Opdater dine oplysninger';
}

// Path: settings.language
class _Translations$settings$language$da extends Translations$settings$language$en {
	_Translations$settings$language$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sprog';
	@override String get subtitle => 'Vælg dit foretrukne sprog';
	@override String get searchHint => 'Søg sprog...';
	@override String get noResults => 'Ingen resultater fundet';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$da extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Højdeenhed';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$da extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vægtenhed';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$da extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidspåmindelser';
	@override String get subtitle => 'Hold dig på sporet med rettidige påmindelser';
}

// Path: settings.theme
class _Translations$settings$theme$da extends Translations$settings$theme$en {
	_Translations$settings$theme$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Lyst';
	@override String get dark => 'Mørkt';
	@override String get system => 'Systemstandard';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$da extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Send feedback';
	@override String subtitle({required Object appLabel}) => 'Hjælp os med at forbedre ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} App-feedback';
	@override String get emailBodyPrefix => 'Angiv venligst din feedback nedenfor:';
	@override String get appVersion => 'App-version';
	@override String get device => 'Enhed';
	@override String get osVersion => 'OS-version';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$da extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eksporter måltidshistorik';
	@override String get subtitle => 'Del en CSV med dine registrerede måltider';
	@override String get shareText => 'Din Calorify-måltidshistorik';
	@override String failed({required Object error}) => 'Kunne ikke eksportere måltidshistorik: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$da extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slet alle data';
	@override String get subtitle => 'Slet permanent alle dine oplysninger';
	@override String get localOnlySubtitle => 'Slet Calorify-data, der er gemt på denne enhed';
	@override String get confirmationTitle => 'Slette alle data?';
	@override String get confirmationMessage => 'Denne handling kan ikke fortrydes. Alle dine registrerede måltider, favoritter og profilindstillinger vil blive permanent slettet.';
	@override String get localOnlyConfirmationMessage => 'Dette sletter permanent registrerede måltider, favoritter og profilindstillinger fra denne enhed. Måltider, der allerede er delt med Health Connect, og adgangen til Health Connect administreres separat under Indstillinger > Health Connect.';
	@override String get cancel => 'Annuller';
	@override String get clearEverything => 'Slet alt';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$da extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fejlfindingindstillinger';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$da extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Se og administrer tilladelser';
	@override late final _Translations$settings$healthConnect$unavailable$da unavailable = _Translations$settings$healthConnect$unavailable$da._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$da updateRequired = _Translations$settings$healthConnect$updateRequired$da._(_root);
	@override late final _Translations$settings$healthConnect$permissions$da permissions = _Translations$settings$healthConnect$permissions$da._(_root);
	@override String get managePermissions => 'Administrer tilladelser';
	@override String get openSettings => 'Åbn Health Connect-indstillinger';
	@override String get disconnect => 'Afbryd Health Connect';
	@override String get disconnectConfirmationTitle => 'Afbryd Health Connect?';
	@override String get disconnectConfirmationMessage => 'Calorify mister adgangen til Health Connect. Data, der allerede er skrevet dertil, slettes ikke.';
	@override String get disconnectConfirmationAction => 'Afbryd';
	@override String get deleteSyncedMeals => 'Slet Calorify-måltider fra Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Slet synkroniserede måltider?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Vil du slette måltider, som denne version af Calorify har synkroniseret med Health Connect? Din lokale måltidslog ændres ikke. Ældre Calorify-poster skal muligvis stadig fjernes via Administrer data i Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Slet synkroniserede måltider';
	@override String get deleteSyncedMealsSuccess => 'Calorify-måltider blev slettet fra Health Connect.';
	@override String get deleteSyncedMealsFailed => 'Synkroniserede måltider kunne ikke slettes. Prøv igen.';
	@override String get connectionPartial => 'Nogle Health Connect-funktioner er aktiveret.';
	@override String get connectionComplete => 'Begge Health Connect-funktioner er aktiveret.';
	@override String get actionFailed => 'Health Connect kunne ikke åbnes. Prøv igen.';
	@override String get requestPermissions => 'Anmod om tilladelser';
	@override String get permissionRequestCancelledOrFailed => 'Anmodning om tilladelser blev annulleret eller fejlede. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillingerne.';
	@override String get permissionRequestFailed => 'Kan ikke anmode om tilladelser. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillingerne.';
	@override String get requestingPermissions => 'Anmoder...';
}

// Path: settings.about
class _Translations$settings$about$da extends Translations$settings$about$en {
	_Translations$settings$about$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om';
	@override String get tagline => 'Hurtig, gratis og privatlivsfokusseret kalorieindsigt';
	@override late final _Translations$settings$about$ourStory$da ourStory = _Translations$settings$about$ourStory$da._(_root);
	@override late final _Translations$settings$about$privacy$da privacy = _Translations$settings$about$privacy$da._(_root);
	@override late final _Translations$settings$about$developer$da developer = _Translations$settings$about$developer$da._(_root);
	@override late final _Translations$settings$about$feedback$da feedback = _Translations$settings$about$feedback$da._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$da extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify version ${version}';
	@override String build({required Object buildNumber}) => 'Byggenummer ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$da extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Morgenmadstid! 🍳';
	@override String get body => 'Glem ikke at registrere din morgenmad';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$da extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Frokosttid! 🥗';
	@override String get body => 'Tid til at registrere din frokost';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$da extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aftensmadstid! 🍽️';
	@override String get body => 'Glem ikke at registrere din aftensmad';
}

// Path: notifications.snack
class _Translations$notifications$snack$da extends Translations$notifications$snack$en {
	_Translations$notifications$snack$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snacktid! 🍎';
	@override String get body => 'Tid til en sund snack';
}

// Path: notifications.test
class _Translations$notifications$test$da extends Translations$notifications$test$en {
	_Translations$notifications$test$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testnotifikation';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$da extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} giver estimerede ernæringsoplysninger. Nøjagtigheden afhænger af dine input og madvarianter. Brug som vejledning, ikke som endelig kilde. Kontakt en professionel for personlig kostrådgivning.';
	@override late final _Translations$disclaimer$snap$portionSize$da portionSize = _Translations$disclaimer$snap$portionSize$da._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$da preparationMethods = _Translations$disclaimer$snap$preparationMethods$da._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$da ingredients = _Translations$disclaimer$snap$ingredients$da._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$da databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$da._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$da extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om vægtestimatet';
	@override String get description => 'Den prognosticerede vægtændring er et teoretisk estimat baseret på en simpel kalorie-ind vs. kalorie-ud-model. Den er kun tænkt som motivationsvejledning, ikke som en forudsigelse af din faktiske vægt.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$da calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$da._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$da biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$da._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$da waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$da._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$da professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$da._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$da extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get description => 'Disse målinger hjælper dig med at forstå din krops energibehov og vejlede dine ernæringsmål.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$da bmr = _Translations$disclaimer$healthMetrics$bmr$da._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$da tdee = _Translations$disclaimer$healthMetrics$tdee$da._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$da dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$da._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$da extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimat af kalorieforbrug';
	@override String get description => 'Når Health Connect-data ikke er tilgængelige, estimerer vi dagens forbrændte kalorier ved hjælp af dit BMR og aktivitetsniveau (TDEE), skaleret efter den del af dagen, der er gået.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$da howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$da._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$da professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$da._(_root);
}

// Path: watch.common
class _Translations$watch$common$da extends Translations$watch$common$en {
	_Translations$watch$common$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get back => 'Tilbage';
	@override String get cancel => 'Annuller';
	@override String get delete => 'Slet';
	@override String get retry => 'Prøv igen';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$da extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Næringsstof';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} gram';
	@override String get protein => 'Protein';
	@override String get carbs => 'Kulhydrater';
	@override String get fat => 'Fedt';
	@override String get fiber => 'Fibre';
}

// Path: watch.sync
class _Translations$watch$sync$da extends Translations$watch$sync$en {
	_Translations$watch$sync$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Synkroniser med telefon';
	@override String get syncing => 'Synkroniserer…';
	@override String get synced => 'Synkroniseret';
	@override String get syncedJustNow => 'Synkroniseret lige nu';
	@override String syncedMinutesAgo({required Object minutes}) => 'Synkroniseret ${minutes}m siden';
	@override String get failed => 'Synkronisering mislykkedes';
	@override String get phoneDisconnected => 'Telefon frakoblet';
	@override String get tapToSync => 'Tryk for at synkronisere';
	@override String get refreshFailed => 'Kunne ikke opdatere. Tjek din telefon.';
	@override String get openPhone => 'Åbn Calorify på din telefon, og tryk derefter på opdater.';
}

// Path: watch.home
class _Translations$watch$home$da extends Translations$watch$home$en {
	_Translations$watch$home$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get today => 'I dag';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} kalorier indtaget ud af ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} over målet';
	@override String remaining({required Object calories}) => '${calories} tilbage';
	@override String left({required Object calories}) => '${calories} tilbage';
	@override String goal({required Object calories}) => '${calories} kcal mål';
	@override String get logMeal => 'Registrer et måltid';
	@override String get todayMeals => 'Dagens måltider';
	@override String todayMealsCount({required Object count}) => 'Dagens måltider, ${count}';
	@override String viewMore({required Object count}) => 'Se ${count} flere';
	@override String viewMoreSemantics({required Object count}) => '${count} flere måltider, tryk for at se alle';
	@override String get noMeals => 'Ingen måltider registreret';
	@override String get noMealsSemantics => 'Ingen måltider registreret i dag';
	@override String get tapLog => 'Tryk på Registrer for at starte';
	@override String get removedFromQueue => 'Måltid fjernet fra offlinekøen.';
	@override String get removedOffline => 'Måltid fjernet offline. Det synkroniseres, når din telefon genopretter forbindelse.';
	@override String get deleteFailed => 'Kunne ikke slette måltidet';
}

// Path: watch.history
class _Translations$watch$history$da extends Translations$watch$history$en {
	_Translations$watch$history$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens måltider';
	@override String get refresh => 'Opdater måltider';
	@override String get loadFailed => 'Kunne ikke indlæse måltider';
	@override String get syncFailed => 'Kunne ikke synkronisere';
	@override String get emptyTitle => 'Ingen måltider endnu';
	@override String get emptyMessage => 'Registrer et måltid fra Hjem for at se det her.';
}

// Path: watch.favorites
class _Translations$watch$favorites$da extends Translations$watch$favorites$en {
	_Translations$watch$favorites$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritter';
	@override String get refresh => 'Opdater favoritter';
	@override String get loadFailed => 'Kunne ikke indlæse favoritter';
	@override String get syncFailed => 'Kunne ikke synkronisere';
	@override String get emptyTitle => 'Ingen favoritter endnu';
	@override String get emptyMessage => 'Marker måltider med stjerne i telefonappen for at få ét-tryk-registrering her.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} kalorier. Tryk for at registrere.';
	@override String logged({required Object name}) => '${name} registreret!';
	@override String savedOffline({required Object name}) => '${name} gemt offline. Det synkroniseres, når din telefon genopretter forbindelsen.';
	@override String get saveFailed => 'Kunne ikke gemme måltidet. Prøv igen.';
	@override String get log => 'Registrer';
}

// Path: watch.meal
class _Translations$watch$meal$da extends Translations$watch$meal$en {
	_Translations$watch$meal$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kalorier, registreret kl. ${time}.';
	@override String get longPressDelete => 'Hold nede for at slette.';
	@override String get deleteTitle => 'Slet måltid?';
}

// Path: watch.voice
class _Translations$watch$voice$da extends Translations$watch$voice$en {
	_Translations$watch$voice$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stemmeregistrering';
	@override String get processing => 'Tjekker dit måltid…';
	@override String get processingDescription => 'Estimerer portioner og næringsindhold';
	@override String get listening => 'Lytter';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Stop optagelse';
	@override String get start => 'Tryk for at starte optagelse';
	@override String get starting => 'Starter mikrofon…';
	@override String get prompt => 'Tryk, og beskriv derefter dit måltid';
	@override String get tapToRetry => 'Tryk for at prøve igen';
	@override String get example => 'Prøv “2 rotis med dal”';
	@override String get unavailable => 'Stemmeinput er ikke tilgængeligt. Tjek mikrofontilladelse i urindstillingerne.';
	@override String get didNotStart => 'Mikrofonen startede ikke. Tryk for at prøve igen.';
	@override String get startFailed => 'Kunne ikke starte optagelse. Tjek mikrofontilladelser.';
	@override String get allowMicrophone => 'Giv adgang til mikrofonen for at registrere måltider med stemme.';
	@override String get needsConnection => 'Stemmegenkendelse kræver forbindelse. Tryk for at prøve igen.';
	@override String get microphoneUnavailable => 'Mikrofonen er ikke tilgængelig. Tryk for at prøve igen.';
	@override String get microphoneBusy => 'Mikrofonen er optaget. Vent et øjeblik og prøv igen.';
	@override String get languageUnsupported => 'Stemmeinput understøtter ikke ursproget.';
	@override String get temporarilyBusy => 'Stemmeinput er midlertidigt optaget. Vent et øjeblik og prøv igen.';
	@override String get notRecognized => 'Det fangede jeg ikke. Tryk på mikrofonen og prøv igen.';
	@override String get noSpeech => 'Ingen tale registreret. Tryk på mikrofonen for at prøve igen.';
	@override String get analysisFailed => 'Analysen mislykkedes. Prøv igen.';
	@override String get mealNotIdentified => 'Kunne ikke identificere måltidet. Prøv at beskrive det anderledes.';
}

// Path: watch.result
class _Translations$watch$result$da extends Translations$watch$result$en {
	_Translations$watch$result$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidsdetaljer';
	@override String get savedOffline => 'Gemt offline';
	@override String get logged => 'Registreret!';
	@override String get mealFound => 'Måltid fundet';
	@override String get estimatedEnergy => 'Anslået energi';
	@override String get logMeal => 'Registrer måltid';
	@override String get logging => 'Registrerer…';
	@override String get logAnother => 'Registrer et til';
	@override String get goingBack => 'Går tilbage…';
	@override String get savedOfflineMessage => 'Måltid gemt offline. Det synkroniseres, når din telefon genopretter forbindelsen.';
	@override String get saveFailed => 'Kunne ikke gemme måltidet. Prøv igen.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$da extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Smart madgenkendelse';
	@override String get description => 'Tag et foto, og lad AI identificere dit måltid';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$da extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-analyse';
	@override String get description => 'Få øjeblikkelige ernæringsoplysninger ud fra din beskrivelse';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$da extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sundhedsintegration';
	@override String get description => 'Forbind med Health Connect for bedre indsigt';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$da extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervægt';
	@override String get healthyWeight => 'Sund vægt';
	@override String get overweight => 'Overvægt';
	@override String get obese => 'Fedme';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$da extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Vi kan hjælpe dig med at skabe en sund plan for at nå en afbalanceret vægt med næringstætte måltider.';
	@override String get healthy => 'Godt gået! Du er i en sund zone. Vi hjælper dig med at bevare din energi og vitalitet.';
	@override String overweight({required Object appLabel}) => '${appLabel} vil forenkle din rejse med AI-drevet tracking, så du komfortabelt kan nå dit mål.';
	@override String get obese => 'Vi er her for at støtte dig med personlig vejledning og bæredygtige strategier til dine sundhedsmål.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$da extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatisk kaloritælling';
	@override String get description => 'Registrer forbrændte kalorier fra dine træningsapps';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$da extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Forbrændte kalorier';
	@override String get description => 'Læs dagens samlede antal forbrændte kalorier fra Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$da extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fremskridtsindsigt';
	@override String get description => 'Få detaljerede indsigter i dine sundhedstendenser';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$da extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Del registrerede måltider';
	@override String get description => 'Skriv måltider, du registrerer i Calorify, til Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$da extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sømløs integration';
	@override String get description => 'Synkroniser data fra dine foretrukne sundhedsapps';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$da extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du har kontrollen';
	@override String get description => 'Vælg en af tilladelserne, og ændr adgangen når som helst';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$da extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du er ikke alene';
	@override String get genericMessage => 'Forskning viser, at konsekvent tracking er den største indikator for langsigtet succes.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'For en ${age}-årig ${gender}, der ønsker at ${goal}, er konsekvent tracking den vigtigste faktor for succes.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} gør det 10x lettere end at gøre det manuelt.';
	@override String get getStartedTitle => 'Klar til at komme i gang?';
	@override String get tipPhoto => 'Tag et billede af dine måltider for øjeblikkelig analyse';
	@override String get tipConsistency => 'Log konsekvent for at se mærkbare fremskridt';
	@override String get tipProgress => 'Følg din udvikling dagligt for at holde motivationen';
	@override String get button => 'Lad os gå i gang';
	@override String get defaultGender => 'person';
	@override String get defaultGoal => 'et sundere dig';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$da extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din sundhedsprofil';
	@override String bmiDescription({required Object bmi}) => 'Baseret på dine målinger er din BMI ${bmi}.';
	@override String get finalizeDescription => 'Lad os færdiggøre din profil for at tilpasse din oplevelse.';
	@override String get goalGain => 'tage på';
	@override String get goalLose => 'tabe';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'For at nå dit mål vil du ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Du er på din målvægt! Vi hjælper dig med at bevare den.';
	@override String get button => 'Lad os gå i gang';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$da extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fremragende start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har taget det første skridt mod ${goalText}. Da du er ${activityText}, tilpasser ${appLabel} dine mål til din livsstil.';
	@override String get personalizedTargets => 'Personlige kaloriemål';
	@override String get aiMealDetection => 'AI-drevet måltidsdetektion';
	@override String get macroBreakdowns => 'Detaljeret fordeling af makronæringsstoffer';
	@override String get button => 'Lad os gå i gang';
	@override String get defaultGoal => 'dine mål';
	@override String get defaultActivity => 'aktiv';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$da extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tabe sig';
	@override String get description => 'Skab et kalorieunderskud for at tabe dig';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$da extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Vedligehold vægt';
	@override String get description => 'Vedligehold din nuværende vægt';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$da extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tage på';
	@override String get description => 'Skab et kalorieoverskud for at tage på';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$da extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Inaktiv';
	@override String get description => 'Lidt eller ingen motion';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$da extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Let aktiv';
	@override String get description => 'Let motion 1-3 dage/uge';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$da extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderat aktiv';
	@override String get description => 'Moderat motion 3-5 dage/uge';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$da extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Meget aktiv';
	@override String get description => 'Hård motion 6-7 dage/uge';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$da extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ekstremt aktiv';
	@override String get description => 'Meget hård motion eller fysisk arbejde';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$da extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ikke tilgængelig';
	@override String get description => 'Health Connect er ikke tilgængelig på denne enhed. Installer Health Connect fra Play Store (Android 9+) eller opdater til Android 14+.';
	@override String get unsupportedDescription => 'Health Connect understøttes ikke på denne enhed.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$da extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect kræver opmærksomhed';
	@override String get description => 'Installer eller opdater Health Connect, før du administrerer adgang.';
	@override String get action => 'Installer eller opdater';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$da extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tilladelser';
	@override String get description => 'Følgende tilladelser anmodes om for at give Health Connect-integration:';
	@override String get granted => 'Givet';
	@override String get notGranted => 'Ikke givet';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$da caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$da._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$da nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$da._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$da nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$da._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$da extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vores historie';
	@override String content({required Object appLabel}) => '${appLabel} blev født af en enkel frustration: de fleste kalorietræningsapps er enten for komplicerede, kræver konstant manuel indtastning, koster høje abonnementer eller går på kompromis med privatlivet.\n\nSom solo-udvikler ville jeg lave noget enklere og mere retfærdigt — en app, der bruger AI til at reducere indsatsen, forbliver hurtig og gratis at bruge, og behandler dine sundhedsdata med respekt.\n\n${appLabel} er den app, jeg ønskede fandtes: ingen konti, ingen tracking, ingen annoncer — bare klare, praktiske indsigter og dine sundhedsmål.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$da extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dit privatliv betyder noget';
	@override String get description => 'Privatliv er ikke en eftertanke — det er et designprincip. Det betyder i praksis:';
	@override String get noAccounts => 'Ingen konti nødvendige\nBrug appen med det samme. Ingen tilmeldinger, ingen identiteter.';
	@override String noTracking({required Object appLabel}) => 'Ingen adfærds­overvågning\n${appLabel} overvåger ikke din aktivitet, opbygger ikke brugermodeller og følger dig ikke på tværs af apps eller websites.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Begrænset analyse og diagnostik\n${appLabel} bruger grundlæggende apphændelser og nedbrudsdiagnostik til at forbedre pålideligheden. Værdier fra sundhedsdata bruges ikke til annoncering og sælges ikke.';
	@override String noAds({required Object appLabel}) => 'Reklamefrit design\n${appLabel} er bygget til at fungere uden annoncer eller datadrevet monetarisering.';
	@override String get noDataSelling => 'Ingen salg af data\nDine sundhedsdata sælges eller deles aldrig med tredjeparter.';
	@override String get localStorage => 'Lokal lagring i første række\nDine data bliver på din enhed.';
	@override String get privacyPolicy => 'Privatlivspolitik';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$da extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Udviklet af en solo-udvikler';
	@override String description({required Object appLabel}) => '${appLabel} er bygget og vedligeholdt af én solo-udvikler med fokus på roligt, privatlivsrespektende sundhedssoftware.\n\nFeedback læses personligt og hjælper med at forme appens retning.';
	@override String get website => 'Hjemmeside';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$da extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Nyder du ${appLabel}?';
	@override String description({required Object appLabel}) => 'Din feedback gør ${appLabel} bedre for alle.';
	@override String get rateApp => 'Giv vurdering på Play Store';
	@override String get sendFeedback => 'Send feedback';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$da extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Portionsstørrelse';
	@override String get description => 'Nøjagtigheden af estimaterne afhænger i høj grad af din korrekte vurdering af portionsstørrelsen.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$da extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tilberedningsmetoder';
	@override String description({required Object appLabel}) => 'Tilberedningsmetoder kan ændre madens næringsindhold betydeligt. ${appLabel}\'s estimater tager ikke altid højde for disse variationer.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$da extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredienser';
	@override String get description => 'Komplekse retter med mange skjulte ingredienser kan give mindre nøjagtige estimater.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$da extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Databasebegrænsninger';
	@override String description({required Object appLabel}) => '${appLabel}\'s fødevaredatabase er omfattende, men indeholder muligvis ikke alle fødevarer eller variationer.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$da extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorienøjagtighed';
	@override String get description => 'Dette estimat er kun så nøjagtigt som din registrerede kalorieindtagelse og -forbrug. Unøjagtig registrering giver et unøjagtigt skøn.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$da extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiske faktorer';
	@override String description({required Object appLabel}) => 'Faktisk vægttab/-stigning påvirkes af stofskifte, hormoner, søvn, stress, væskebalance og andre individuelle faktorer, som ${appLabel} ikke kan måle.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$da extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vandvægt og udsving';
	@override String get description => 'Normal daglig vægt kan svinge betydeligt pga. væskeretention, fordøjelse og timing. Estimatet tager ikke højde for disse daglige ændringer.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$da extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionel vejledning';
	@override String get description => 'Brug ikke dette estimat til medicinske beslutninger. Kontakt altid en sundhedsprofessionel eller registreret diætist for personlig vægtstyringsrådgivning.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$da extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) er det antal kalorier, din krop forbrænder i hvile for at opretholde basale funktioner som vejrtrækning og cirkulation. BMR afhænger af din alder, køn, højde og vægt. En højere BMR betyder, at din krop naturligt forbrænder flere kalorier i hvile, ofte på grund af mere muskelmasse, yngre alder eller at være mand. En lavere BMR indikerer typisk mindre muskelmasse, højere alder eller at være kvinde.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$da extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) er de samlede kalorier, du forbrænder pr. dag, inkl. din BMR plus kalorier fra fysisk aktivitet og daglig bevægelse. TDEE afhænger af din BMR og aktivitetsniveau. En højere TDEE betyder, at du forbrænder flere kalorier samlet, normalt pga. mere aktivitet eller højere BMR. En lavere TDEE antyder mindre daglig aktivitet eller lavere BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$da extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagsmål';
	@override String get description => 'Dagsmål er dit anbefalede daglige kalorieindtag baseret på din TDEE og dit vægtmål. For vægttab indtager du færre kalorier end din TDEE. For vedligehold matcher du din TDEE. For vægtøgning indtager du flere kalorier end din TDEE. Dette hjælper dig med at nå din ønskede vægtændring i et sundt tempo.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$da extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvordan estimatet beregnes';
	@override String get description => 'Vi beregner din TDEE (baseret på din profil) og ganger den med den passerede del af dagen (timer + minutter) / 24 for at estimere forbrændte kalorier indtil nu.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$da extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionel vejledning';
	@override String get description => 'Brug ikke dette estimat til medicinske beslutninger. Kontakt altid en sundhedsprofessionel eller registreret diætist for personlig vægtstyringsrådgivning.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$da extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Læs totale forbrændte kalorier';
	@override String get description => 'Giver appen mulighed for at læse dine totale forbrændte kalorier fra Health Connect.';
	@override String get usage => 'Denne tilladelse bruges til at vise din daglige kalorieförbrænding i appen og hjælper dig med at forstå dit samlede energiforbrug i løbet af dagen.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$da extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Læs ernæringsdata';
	@override String get description => 'Giver appen mulighed for at læse ernæringsdata fra Health Connect.';
	@override String get usage => 'Denne tilladelse gør det muligt for appen at læse ernæringsoplysninger, der kan være registreret af andre apps tilsluttet Health Connect, og giver et samlet overblik over din ernæring.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$da extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$da._(TranslationsDa root) : this._root = root, super.internal(root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skriv ernæringsdata';
	@override String get description => 'Giver appen mulighed for at skrive ernæringsdata til Health Connect.';
	@override String get usage => 'Denne tilladelse gør det muligt for appen at synkronisere dine registrerede måltider til Health Connect, så dine ernæringsdata bliver tilgængelige for andre sundheds- og træningsapps, du bruger.';
}

/// The flat map containing all translations for locale <da>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Dansk',
			'flag' => '🇩🇰',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Du har sendt for mange anmodninger. Vent et øjeblik før du prøver igen.',
			'errors.networkError' => 'Netværksfejl. Tjek din internetforbindelse.',
			'errors.unknownError' => 'Noget gik galt. Prøv igen senere.',
			'errors.loadingProfileData' => 'Fejl ved indlæsning af profildata',
			'errors.somethingWentWrong' => 'Noget gik galt.',
			'errors.retry' => 'Prøv igen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Velkommen til ${appLabel}',
			'onboarding.subtitle' => 'Din personlige ernæringsassistent drevet af AI',
			'onboarding.getStarted' => 'Kom i gang',
			'onboarding.features.foodRecognition.title' => 'Smart madgenkendelse',
			'onboarding.features.foodRecognition.description' => 'Tag et foto, og lad AI identificere dit måltid',
			'onboarding.features.aiAnalysis.title' => 'AI-analyse',
			'onboarding.features.aiAnalysis.description' => 'Få øjeblikkelige ernæringsoplysninger ud fra din beskrivelse',
			'onboarding.features.healthIntegration.title' => 'Sundhedsintegration',
			'onboarding.features.healthIntegration.description' => 'Forbind med Health Connect for bedre indsigt',
			'onboarding.gender.title' => 'Hvad er dit køn?',
			'onboarding.gender.description' => 'Køn hjælper os med at beregne dit basale stofskifte (BMR) mere præcist.',
			'onboarding.gender.next' => 'Næste',
			'onboarding.height.title' => 'Hvor høj er du?',
			'onboarding.height.description' => 'Din højde hjælper os med at beregne din BMI og energibehov præcist.',
			'onboarding.height.metric' => 'Metrisk',
			'onboarding.height.imperial' => 'Imperialt',
			'onboarding.height.next' => 'Næste',
			'onboarding.weight.currentTitle' => 'Hvad er din aktuelle vægt?',
			'onboarding.weight.currentDescription' => 'Din aktuelle vægt er vigtig for at tilpasse dine daglige mål.',
			'onboarding.weight.targetTitle' => 'Hvad er din målvægt?',
			'onboarding.weight.targetDescription' => 'At sætte en målvægt hjælper os med at bestemme din langsigtede plan.',
			'onboarding.weight.metric' => 'Metrisk',
			'onboarding.weight.imperial' => 'Imperialt',
			'onboarding.weight.next' => 'Næste',
			'onboarding.age.title' => 'Hvornår er din fødselsdag?',
			'onboarding.age.description' => 'Din alder hjælper os med at beregne dit kaloriebehov præcist.',
			'onboarding.age.next' => 'Næste',
			'onboarding.bmiScale.underweight' => 'Undervægt',
			'onboarding.bmiScale.healthy' => 'Sund',
			'onboarding.bmiScale.overweight' => 'Overvægt',
			'onboarding.bmiScale.obese' => 'Fedme',
			'onboarding.bmiScale.categories.underweight' => 'Undervægt',
			'onboarding.bmiScale.categories.healthyWeight' => 'Sund vægt',
			'onboarding.bmiScale.categories.overweight' => 'Overvægt',
			'onboarding.bmiScale.categories.obese' => 'Fedme',
			'onboarding.bmiScale.messages.underweight' => 'Vi kan hjælpe dig med at skabe en sund plan for at nå en afbalanceret vægt med næringstætte måltider.',
			'onboarding.bmiScale.messages.healthy' => 'Godt gået! Du er i en sund zone. Vi hjælper dig med at bevare din energi og vitalitet.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} vil forenkle din rejse med AI-drevet tracking, så du komfortabelt kan nå dit mål.',
			'onboarding.bmiScale.messages.obese' => 'Vi er her for at støtte dig med personlig vejledning og bæredygtige strategier til dine sundhedsmål.',
			'onboarding.weightGoal.title' => 'Hvad er dit mål?',
			'onboarding.weightGoal.description' => 'Vælg det mål, der bedst beskriver, hvad du vil opnå',
			'onboarding.activityLevel.title' => 'Hvor aktiv er du?',
			'onboarding.activityLevel.description' => 'Det hjælper os med at beregne dit daglige kaloriebehov mere præcist',
			'onboarding.healthConnect.title' => 'Forbind med Health Connect',
			'onboarding.healthConnect.description' => 'Synkroniser dine sundhedsdata for bedre indsigt og automatisk kaloritælling',
			'onboarding.healthConnect.overviewDescription' => 'Brug forbrændte kalorier i dit dagsmål, og del eventuelt registrerede måltider med Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatisk kaloritælling',
			'onboarding.healthConnect.automaticTracking.description' => 'Registrer forbrændte kalorier fra dine træningsapps',
			'onboarding.healthConnect.caloriesBurned.title' => 'Forbrændte kalorier',
			'onboarding.healthConnect.caloriesBurned.description' => 'Læs dagens samlede antal forbrændte kalorier fra Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Fremskridtsindsigt',
			'onboarding.healthConnect.progressInsights.description' => 'Få detaljerede indsigter i dine sundhedstendenser',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Del registrerede måltider',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Skriv måltider, du registrerer i Calorify, til Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Sømløs integration',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synkroniser data fra dine foretrukne sundhedsapps',
			'onboarding.healthConnect.userControl.title' => 'Du har kontrollen',
			'onboarding.healthConnect.userControl.description' => 'Vælg en af tilladelserne, og ændr adgangen når som helst',
			'onboarding.healthConnect.connected' => 'Health Connect forbundet',
			'onboarding.healthConnect.notConnected' => 'Health Connect ikke forbundet',
			'onboarding.healthConnect.setup' => 'Opsæt Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Spring over for nu',
			'onboarding.healthConnect.statusConnected' => 'Health Connect er forbundet.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect er blevet tilsluttet!',
			'onboarding.healthConnect.statusNotConnected' => 'Vælg de Health Connect-funktioner, du vil aktivere.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect er delvist forbundet. Aktivér den resterende tilladelse for at bruge begge funktioner.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Installer eller opdater Health Connect for at fortsætte.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect understøttes ikke på denne enhed.',
			'onboarding.healthConnect.installOrUpdate' => 'Installer eller opdater',
			'onboarding.healthConnect.manageAccess' => 'Administrer adgang',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Tilladelse afvist. Aktivér Health Connect-tilladelser i telefonens indstillinger for ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Fejl ved opsætning af Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Du er ikke alene',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Forskning viser, at konsekvent tracking er den største indikator for langsigtet succes.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'For en ${age}-årig ${gender}, der ønsker at ${goal}, er konsekvent tracking den vigtigste faktor for succes.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} gør det 10x lettere end at gøre det manuelt.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Klar til at komme i gang?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Tag et billede af dine måltider for øjeblikkelig analyse',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Log konsekvent for at se mærkbare fremskridt',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Følg din udvikling dagligt for at holde motivationen',
			'onboarding.reinforcement.trackingSuccess.button' => 'Lad os gå i gang',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'person',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'et sundere dig',
			'onboarding.reinforcement.healthProfile.title' => 'Din sundhedsprofil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Baseret på dine målinger er din BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Lad os færdiggøre din profil for at tilpasse din oplevelse.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'tage på',
			'onboarding.reinforcement.healthProfile.goalLose' => 'tabe',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'For at nå dit mål vil du ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Du er på din målvægt! Vi hjælper dig med at bevare den.',
			'onboarding.reinforcement.healthProfile.button' => 'Lad os gå i gang',
			'onboarding.reinforcement.goalLifestyle.title' => 'Fremragende start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har taget det første skridt mod ${goalText}. Da du er ${activityText}, tilpasser ${appLabel} dine mål til din livsstil.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personlige kaloriemål',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-drevet måltidsdetektion',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaljeret fordeling af makronæringsstoffer',
			'onboarding.reinforcement.goalLifestyle.button' => 'Lad os gå i gang',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'dine mål',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiv',
			'tabs.dashboard' => 'Oversigt',
			'tabs.history' => 'Historik',
			'home.aiSummary.title' => 'Din AI-opsummering',
			'home.aiSummary.logMore' => 'Registrer flere måltider de næste par dage for at få dine personlige AI-indsigter.',
			'home.aiSummary.loading' => 'Indlæser din opsummering...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} måltider registreret',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balance-score ${score}',
			'home.aiSummary.topFoods' => 'Topfødevarer',
			'home.aiSummary.trendUp' => 'Kalorier stiger',
			'home.aiSummary.trendDown' => 'Kalorier falder',
			'home.aiSummary.trendSteady' => 'Kalorier stabiliserer sig',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Opdateret ${time}',
			'home.dailyGoal.title' => 'Sæt dit daglige mål',
			'home.dailyGoal.titleSet' => 'Dit daglige mål',
			'home.dailyGoal.description' => 'Klar til at starte din wellness-rejse? Sæt dit daglige kaloriemål nedenfor for at kickstarte din fremgang.',
			'home.dailyGoal.descriptionSet' => 'Din kurs er sat! Dette er dit daglige kaloriemål som vejledning.',
			'home.dailyGoal.yourGoal' => 'Dit mål',
			'home.dailyGoal.goal' => 'Mål',
			'home.dailyGoal.dailyCalories' => 'Daglige kalorier (kcal)',
			'home.dailyGoal.setGoal' => 'Indstil mål',
			'home.dailyGoal.intake' => 'Indtag',
			'home.dailyGoal.burned' => 'Forbrændt',
			'home.dailyGoal.weightImpact' => 'Vægtpåvirkning',
			'home.dailyGoal.estLoss' => 'Ansl. tab på',
			'home.dailyGoal.estGain' => 'Ansl. stigning på',
			'home.dailyGoal.kcal' => 'kilokalorier (kcal)',
			'home.dailySummary.title' => 'Dagsoversigt',
			'home.dailySummary.calories' => 'Kalorier',
			'home.dailySummary.carbs' => 'Kulhydrater',
			'home.dailySummary.protein' => 'Proteiner',
			'home.dailySummary.fat' => 'Fedt',
			'home.dailySummary.fiber' => 'Fibre',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Makrofordelingsdiagram',
			'home.intakeProgress.title' => 'Dagens makrofordeling',
			'home.intakeProgress.target' => 'Mål',
			'home.intakeProgress.current' => 'Nuværende',
			'home.intakeHistory.title' => '7-dages makrohistorik',
			'home.intakeHistory.trendTitle' => 'Dagens tendens',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Top: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Ingen historik endnu',
			'home.intakeHistory.startLogging' => 'Begynd at registrere måltider for at se dine\n7-dages makrotendenser her',
			'home.mealLog.title' => 'Registrerede måltider',
			'home.mealLog.emptyMessage' => 'Tag et billede af dit sidste måltid for at registrere det her.',
			'home.mealLog.noMealsToday' => 'Ingen måltider registreret i dag',
			'home.mealLog.seeAllMeals' => 'Se alle måltider',
			'home.mealDescription.title' => 'Hurtigtilføj med AI',
			'home.mealDescription.description' => 'Beskriv dit måltid, og lad AI klare detaljerne.',
			'home.mealDescription.hint' => 'fx. Til morgenmad spiste jeg en stor skål havregryn med en skivet banan og en skefuld valle ...',
			'home.mealDescription.analyzeMeal' => 'Analyser måltid',
			'home.favoriteMeals.title' => 'Favoritmåltider',
			'home.favoriteMeals.description' => 'Tilføj hurtigt et af dine yndlingsmåltider.',
			'home.favoriteMeals.noFavorites' => 'Ingen favoritmåltider endnu.',
			'home.favoriteMeals.addFavoriteHint' => 'Klik på stjernen på et måltid for at markere det som favorit.',
			'home.favoriteMeals.seeAll' => 'Se alle',
			'home.favoriteMeals.add' => 'Tilføj',
			'home.mealSnap.title' => 'Tag billede og registrer dit måltid',
			'home.mealSnap.description' => 'Brug dit kamera til at tage et billede af din mad til AI-analyse.',
			'home.mealSnap.openCamera' => 'Åbn kamera',
			'home.mealSnap.gallery' => 'Galleri',
			'home.mealSnap.compressingPhoto' => 'Optimerer foto…',
			'home.mealSnap.uploadingPhoto' => 'Uploader foto…',
			'home.connectHealth.title' => 'Synkroniser med Health Connect',
			'home.connectHealth.description' => 'Synkroniser dine ernæringsdata med Health Connect',
			'home.connectHealth.install' => 'Installer',
			'home.connectHealth.dataUseDescription' => 'Brug forbrændte kalorier i dit mål, og del registrerede måltider',
			'home.connectHealth.installOrUpdate' => 'Installer eller opdater',
			'home.connectHealth.connect' => 'Forbind',
			'history.noMeals' => 'Ingen registrerede måltider',
			'history.emptyMessage' => 'Tag et billede af dit sidste måltid for at registrere det her.',
			'history.today' => 'I dag',
			'history.yesterday' => 'I går',
			'meal.ohNo' => 'Åh nej!',
			'meal.delete' => 'Slet',
			'meal.editMeal' => 'Rediger måltid',
			'meal.addMeal' => 'Tilføj måltid',
			'meal.saveMeal' => 'Gem måltid',
			'meal.save' => 'Gem',
			'meal.mealName' => 'Måltidets navn',
			'meal.mealNameHint' => 'fx. Røræg med toast',
			'meal.nameRequired' => 'Indtast et navn på måltidet, før du gemmer.',
			'meal.mealQuantity' => 'Mængde',
			'meal.mealQuantityHint' => 'fx. 1 skål, 2 skiver',
			'meal.timeOfMeal' => 'Tidspunkt for måltid',
			'meal.timeOfMealHint' => 'Vælg tidspunktet for dit måltid',
			'meal.mealType' => 'Måltidstype',
			'meal.nutrition.calories' => 'Kalorier',
			'meal.nutrition.carbs' => 'Kulhydrater (g)',
			'meal.nutrition.protein' => 'Proteiner (g)',
			'meal.nutrition.fat' => 'Fedt (g)',
			'meal.nutrition.fiber' => 'Fibre (g)',
			'meal.deleteConfirmation.title' => 'Slet måltid',
			'meal.deleteConfirmation.message' => 'Er du sikker på, at du vil slette denne måltidsregistrering?',
			'meal.deleteConfirmation.cancel' => 'Annuller',
			'meal.deleteConfirmation.delete' => 'Slet',
			'meal.addedToLog' => 'Måltid føjet til din log!',
			'meal.couldNotAdd' => ({required Object error}) => 'Kunne ikke tilføje måltid: ${error}',
			'meal.savedSuccessfully' => 'Måltid tilføjet!',
			'meal.updatedSuccessfully' => 'Måltid opdateret!',
			'meal.errorSaving' => ({required Object error}) => 'Fejl ved gemning af måltid: ${error}',
			'meal.removedFromFavorites' => 'Fjernet fra favoritter!',
			'meal.savedAsFavorite' => 'Måltid gemt som favorit!',
			'meal.unfavorite' => 'Fjern favorit',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Kunne ikke opdatere favorit: ${error}',
			'meal.feedbackThanks' => 'Tak for din feedback!',
			'meal.reanalysisUpdated' => 'Opdaterede måltidsanalysen baseret på din feedback.',
			'meal.failedToProcess' => ({required Object error}) => 'Kunne ikke behandle: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Kunne ikke behandle billede: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Fejl ved komprimering af billede: ${error}',
			'meal.imageTooLarge' => 'Dette billede er stadig over 1 MB efter komprimering. Vælg et andet billede.',
			'meal.failedToSave' => 'Kunne ikke gemme data. Prøv igen.',
			'meal.skip' => 'Spring over',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Spørgsmål ${current} af ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Ingen spørgsmål tilgængelige',
			'meal.questionFlow.next' => 'Næste',
			'meal.questionFlow.continueLabel' => 'Fortsæt',
			'meal.questionFlow.countQuestion' => 'Vælg antal',
			'meal.questionFlow.itemSizeQuestion' => 'Vælg elementstørrelse',
			'meal.questionFlow.portionSizeQuestion' => 'Vælg portionsstørrelse',
			'meal.questionFlow.option6plus' => '6 eller flere',
			'meal.questionFlow.optionSmall' => 'Lille',
			'meal.questionFlow.optionRegular' => 'Normal',
			'meal.questionFlow.optionLarge' => 'Stor',
			'meal.questionFlow.optionThin' => 'Tynd',
			'meal.questionFlow.optionThick' => 'Tykk',
			'meal.questionFlow.optionMini' => 'Mini',
			'meal.questionFlow.optionStuffed' => 'Fyldt',
			'meal.questionFlow.optionHeavy' => 'Tung',
			'meal.questionFlow.optionSmaller' => 'Mindre',
			'meal.questionFlow.optionTypical' => 'Typisk',
			'meal.questionFlow.optionLarger' => 'Større',
			'meal.questionFlow.useEstimate' => 'Brug estimat',
			'meal.questionFlow.numberRange' => ({required Object min, required Object max, required Object step}) => 'Fra ${min} til ${max}, med trin på ${step}',
			'meal.questionFlow.invalidNumber' => 'Indtast en værdi inden for det tilladte område',
			'meal.analysis.title' => 'Analyserer dit måltid',
			'meal.analysis.stepStarted' => 'Starter…',
			'meal.analysis.stepDecomposition' => 'Forstår dit måltid…',
			'meal.analysis.stepIngredients' => 'Matcher ingredienser til ernæringsdata…',
			'meal.analysis.stepUncertainty' => 'Tjekker sikkerhed…',
			'meal.analysis.stepMealTypeQuestion' => 'Næsten færdig…',
			'meal.analysis.stepResult' => 'Færdiggør resultatet…',
			'meal.analysis.stepError' => 'Noget gik galt',
			'meal.analysis.providerUnavailable' => 'Tjenesten til måltidsanalyse er midlertidigt utilgængelig. Prøv igen.',
			'meal.analysis.invalidModelOutput' => 'Måltidsvaret kunne ikke forstås. Prøv igen.',
			'meal.analysis.nutritionDataUnavailable' => 'Ernæringsdata er midlertidigt utilgængelige. Prøv igen.',
			'meal.analysis.analysisUnavailable' => 'Måltidsanalysen er midlertidigt utilgængelig. Prøv igen.',
			'meal.analysis.unresolvedNutrition' => 'Vi kunne ikke med sikkerhed matche ernæringsdata for dette måltid. Prøv at tilføje flere detaljer.',
			'meal.analysis.noFoodTip' => 'Ingen mad blev registreret. Prøv et andet billede eller en anden beskrivelse.',
			'meal.analysis.stepDefault' => 'Analysere dit måltid…',
			'meal.analysis.progressUnderstand' => 'Forståelse af måltid',
			'meal.analysis.progressMatch' => 'Slår ingrediensers næring op',
			'meal.analysis.progressCheck' => 'Tjekker portioner og sikkerhed',
			'meal.analysis.progressMealType' => 'Vælger måltidstype',
			'meal.analysis.progressFinish' => 'Beregn kalorier og makroer',
			'meal.analysis.detectedIngredientHeading' => 'Ingredienser vi genkender',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} mere',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredienser registreret',
			'meal.analysis.ingredientsPending' => 'Scanner ingredienser…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '»${text}«',
			'meal.analysis.calorieRange' => ({required Object min, required Object max}) => 'Anslået interval: ${min}–${max} kcal',
			'meal.analysis.offlineTip0' => 'Tip: Konsistens slår perfektion—regelmæssige registreringer afslører de vigtige mønstre.',
			'meal.analysis.offlineTip1' => 'Tip: Til fotos hjælper naturligt lys og et top-down-perspektiv med portionsnøjagtigheden.',
			'meal.analysis.offlineTip2' => 'Tip: Angiv drikkevarer, saucer og madolie—de tilføjer kalorier, som mange glemmer.',
			'meal.analysis.offlineTip3' => 'Tip: En hurtig portionsnote (1 skål, stor kaffe) gør estimaterne meget skarpere.',
			'meal.analysis.offlineTip4' => 'Tip: At registrere efter måltidet bygger stadig vanen; perfektion er valgfrit.',
			'meal.analysis.offlineTip5' => 'Tip: Angiv, hvordan maden er tilberedt, når det ændrer kalorier meget (stegt vs. bagt).',
			'meal.feedback.title' => 'Hvad ser forkert ud?',
			'meal.feedback.subtitle' => 'Hjælp os med at forbedre analysen ved at vælge ét eller flere problemer.',
			'meal.feedback.tellUsMore' => 'Fortæl os mere',
			'meal.feedback.describeIncorrect' => 'Beskriv hvad der var forkert',
			'meal.feedback.submit' => 'Send',
			'meal.feedback.issueFoodIdentification' => 'Madgenkendelse',
			'meal.feedback.issuePortionSize' => 'Portionsstørrelse',
			'meal.feedback.issueCalorieDistribution' => 'Kaloriefordeling',
			'meal.feedback.issueMacrosWrong' => 'Makroer er forkerte',
			'meal.feedback.issueMissingItems' => 'Mangler varer',
			'meal.feedback.issueExtraItems' => 'Ekstra varer',
			'meal.feedback.issueOther' => 'Andet',
			'favorites.title' => 'Favoritter',
			'favorites.empty' => 'Ingen favoritmåltider endnu.',
			'favorites.searchPlaceholder' => 'Søg i favoritter',
			'favorites.searchEmptyTitle' => 'Ingen favoritter matcher din søgning',
			'favorites.searchEmptySubtitle' => 'Prøv et andet måltidsnavn, mængde eller måltidstype.',
			'favorites.sortLabel' => 'Sorter favoritter',
			'favorites.undo' => 'Fortryd',
			'favorites.removed' => ({required Object name}) => 'Fjernede ${name} fra favoritter',
			'favorites.sortOptions.recent' => 'Nyeste',
			'favorites.sortOptions.calories' => 'Kalorier',
			'favorites.sortOptions.alphabetical' => 'A-Å',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Ingen profildata fundet',
			'profile.yourProfile' => 'Din profil',
			'profile.viewAndManage' => 'Se og administrer dine sundhedsoplysninger',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'BASALE OPLYSNINGER',
			'profile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'profile.sections.calculatedValues' => 'BEREGNEDE VÆRDIER',
			'profile.gender' => 'Køn',
			'profile.height' => 'Højde',
			'profile.weight' => 'Vægt',
			'profile.age' => 'Alder',
			'profile.weightGoal' => 'Vægtmål',
			'profile.targetWeight' => 'Målvægt',
			'profile.activityLevel' => 'Aktivitetsniveau',
			'profile.healthMetrics' => 'Sundhedsparametre',
			'profile.notSet' => 'Ikke angivet',
			'profile.years' => 'år',
			'profile.updatedSuccessfully' => 'Profil opdateret!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Dagsmål',
			'profile.calculatedValues.calPerDay' => 'cal/dag',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Sundhedsscore',
			'healthScore.whyThisScore' => 'Hvorfor denne score?',
			'healthScore.note' => 'Denne score er et AI-estimat baseret på identificerede ingredienser og ernæringstætheden. Konsulter altid en professionel for kostråd.',
			'healthScore.unhealthy' => 'Usund',
			'healthScore.healthy' => 'Sund',
			'healthScore.neutral' => 'Neutralt',
			'editProfile.title' => 'Rediger profil',
			'editProfile.sections.personalInformation' => 'PERSONLIGE OPLYSNINGER',
			'editProfile.sections.physicalMeasurements' => 'FYSISKE MÅL',
			'editProfile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'editProfile.gender' => 'Køn',
			'editProfile.dateOfBirth' => 'Fødselsdato',
			'editProfile.height' => 'Højde',
			'editProfile.weight' => 'Vægt',
			'editProfile.weightGoal' => 'Vægtmål',
			'editProfile.activityLevel' => 'Aktivitetsniveau',
			'editProfile.metric' => 'Metrisk',
			'editProfile.imperial' => 'Imperialt',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'pund (lb)',
			'editProfile.metricCm' => 'Metrisk (cm)',
			'editProfile.imperialFtIn' => 'Imperialt (ft/in)',
			'editProfile.metricKg' => 'Metrisk (kg)',
			'editProfile.imperialLbs' => 'Imperialt (lbs)',
			'editProfile.genders.male' => 'Mand',
			'editProfile.genders.female' => 'Kvinde',
			'editProfile.genders.other' => 'Andet',
			'editProfile.weightGoals.loseWeight.name' => 'Tabe sig',
			'editProfile.weightGoals.loseWeight.description' => 'Skab et kalorieunderskud for at tabe dig',
			'editProfile.weightGoals.maintainWeight.name' => 'Vedligehold vægt',
			'editProfile.weightGoals.maintainWeight.description' => 'Vedligehold din nuværende vægt',
			'editProfile.weightGoals.gainWeight.name' => 'Tage på',
			'editProfile.weightGoals.gainWeight.description' => 'Skab et kalorieoverskud for at tage på',
			'editProfile.activityLevels.sedentary.name' => 'Inaktiv',
			'editProfile.activityLevels.sedentary.description' => 'Lidt eller ingen motion',
			'editProfile.activityLevels.lightlyActive.name' => 'Let aktiv',
			'editProfile.activityLevels.lightlyActive.description' => 'Let motion 1-3 dage/uge',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderat aktiv',
			'editProfile.activityLevels.moderatelyActive.description' => 'Moderat motion 3-5 dage/uge',
			'editProfile.activityLevels.veryActive.name' => 'Meget aktiv',
			'editProfile.activityLevels.veryActive.description' => 'Hård motion 6-7 dage/uge',
			'editProfile.activityLevels.extremelyActive.name' => 'Ekstremt aktiv',
			'editProfile.activityLevels.extremelyActive.description' => 'Meget hård motion eller fysisk arbejde',
			'settings.title' => 'Indstillinger',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISERING',
			'settings.sections.notifications' => 'NOTIFIKATIONER',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.supportAndLegal' => 'SUPPORT & JURA',
			'settings.sections.about' => 'OM',
			'settings.sections.dangerZone' => 'FARLIG ZONE',
			'settings.sections.developer' => 'UDVIKLER',
			'settings.editProfile.title' => 'Rediger profil',
			'settings.editProfile.subtitle' => 'Opdater dine oplysninger',
			'settings.language.title' => 'Sprog',
			'settings.language.subtitle' => 'Vælg dit foretrukne sprog',
			'settings.language.searchHint' => 'Søg sprog...',
			'settings.language.noResults' => 'Ingen resultater fundet',
			'settings.heightUnit.title' => 'Højdeenhed',
			'settings.weightUnit.title' => 'Vægtenhed',
			'settings.mealReminders.title' => 'Måltidspåmindelser',
			'settings.mealReminders.subtitle' => 'Hold dig på sporet med rettidige påmindelser',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Lyst',
			'settings.theme.dark' => 'Mørkt',
			'settings.theme.system' => 'Systemstandard',
			'settings.sendFeedback.title' => 'Send feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Hjælp os med at forbedre ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} App-feedback',
			'settings.sendFeedback.emailBodyPrefix' => 'Angiv venligst din feedback nedenfor:',
			'settings.sendFeedback.appVersion' => 'App-version',
			'settings.sendFeedback.device' => 'Enhed',
			'settings.sendFeedback.osVersion' => 'OS-version',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Eksporter måltidshistorik',
			'settings.exportMealHistory.subtitle' => 'Del en CSV med dine registrerede måltider',
			'settings.exportMealHistory.shareText' => 'Din Calorify-måltidshistorik',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Kunne ikke eksportere måltidshistorik: ${error}',
			'settings.clearAllData.title' => 'Slet alle data',
			'settings.clearAllData.subtitle' => 'Slet permanent alle dine oplysninger',
			'settings.clearAllData.localOnlySubtitle' => 'Slet Calorify-data, der er gemt på denne enhed',
			'settings.clearAllData.confirmationTitle' => 'Slette alle data?',
			'settings.clearAllData.confirmationMessage' => 'Denne handling kan ikke fortrydes. Alle dine registrerede måltider, favoritter og profilindstillinger vil blive permanent slettet.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Dette sletter permanent registrerede måltider, favoritter og profilindstillinger fra denne enhed. Måltider, der allerede er delt med Health Connect, og adgangen til Health Connect administreres separat under Indstillinger > Health Connect.',
			'settings.clearAllData.cancel' => 'Annuller',
			'settings.clearAllData.clearEverything' => 'Slet alt',
			'settings.debugOptions.title' => 'Fejlfindingindstillinger',
			'settings.developerModeEnabled' => 'Udviklertilstand aktiveret!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Se og administrer tilladelser',
			'settings.healthConnect.unavailable.title' => 'Health Connect ikke tilgængelig',
			'settings.healthConnect.unavailable.description' => 'Health Connect er ikke tilgængelig på denne enhed. Installer Health Connect fra Play Store (Android 9+) eller opdater til Android 14+.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect understøttes ikke på denne enhed.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect kræver opmærksomhed',
			'settings.healthConnect.updateRequired.description' => 'Installer eller opdater Health Connect, før du administrerer adgang.',
			'settings.healthConnect.updateRequired.action' => 'Installer eller opdater',
			'settings.healthConnect.permissions.title' => 'Tilladelser',
			'settings.healthConnect.permissions.description' => 'Følgende tilladelser anmodes om for at give Health Connect-integration:',
			'settings.healthConnect.permissions.granted' => 'Givet',
			'settings.healthConnect.permissions.notGranted' => 'Ikke givet',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Læs totale forbrændte kalorier',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Giver appen mulighed for at læse dine totale forbrændte kalorier fra Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Denne tilladelse bruges til at vise din daglige kalorieförbrænding i appen og hjælper dig med at forstå dit samlede energiforbrug i løbet af dagen.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Læs ernæringsdata',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Giver appen mulighed for at læse ernæringsdata fra Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Denne tilladelse gør det muligt for appen at læse ernæringsoplysninger, der kan være registreret af andre apps tilsluttet Health Connect, og giver et samlet overblik over din ernæring.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Skriv ernæringsdata',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Giver appen mulighed for at skrive ernæringsdata til Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Denne tilladelse gør det muligt for appen at synkronisere dine registrerede måltider til Health Connect, så dine ernæringsdata bliver tilgængelige for andre sundheds- og træningsapps, du bruger.',
			'settings.healthConnect.managePermissions' => 'Administrer tilladelser',
			'settings.healthConnect.openSettings' => 'Åbn Health Connect-indstillinger',
			'settings.healthConnect.disconnect' => 'Afbryd Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Afbryd Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify mister adgangen til Health Connect. Data, der allerede er skrevet dertil, slettes ikke.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Afbryd',
			'settings.healthConnect.deleteSyncedMeals' => 'Slet Calorify-måltider fra Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Slet synkroniserede måltider?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Vil du slette måltider, som denne version af Calorify har synkroniseret med Health Connect? Din lokale måltidslog ændres ikke. Ældre Calorify-poster skal muligvis stadig fjernes via Administrer data i Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Slet synkroniserede måltider',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Calorify-måltider blev slettet fra Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Synkroniserede måltider kunne ikke slettes. Prøv igen.',
			'settings.healthConnect.connectionPartial' => 'Nogle Health Connect-funktioner er aktiveret.',
			'settings.healthConnect.connectionComplete' => 'Begge Health Connect-funktioner er aktiveret.',
			'settings.healthConnect.actionFailed' => 'Health Connect kunne ikke åbnes. Prøv igen.',
			'settings.healthConnect.requestPermissions' => 'Anmod om tilladelser',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Anmodning om tilladelser blev annulleret eller fejlede. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillingerne.',
			'settings.healthConnect.permissionRequestFailed' => 'Kan ikke anmode om tilladelser. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillingerne.',
			'settings.healthConnect.requestingPermissions' => 'Anmoder...',
			'settings.about.title' => 'Om',
			'settings.about.tagline' => 'Hurtig, gratis og privatlivsfokusseret kalorieindsigt',
			'settings.about.ourStory.title' => 'Vores historie',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} blev født af en enkel frustration: de fleste kalorietræningsapps er enten for komplicerede, kræver konstant manuel indtastning, koster høje abonnementer eller går på kompromis med privatlivet.\n\nSom solo-udvikler ville jeg lave noget enklere og mere retfærdigt — en app, der bruger AI til at reducere indsatsen, forbliver hurtig og gratis at bruge, og behandler dine sundhedsdata med respekt.\n\n${appLabel} er den app, jeg ønskede fandtes: ingen konti, ingen tracking, ingen annoncer — bare klare, praktiske indsigter og dine sundhedsmål.',
			'settings.about.privacy.title' => 'Dit privatliv betyder noget',
			'settings.about.privacy.description' => 'Privatliv er ikke en eftertanke — det er et designprincip. Det betyder i praksis:',
			'settings.about.privacy.noAccounts' => 'Ingen konti nødvendige\nBrug appen med det samme. Ingen tilmeldinger, ingen identiteter.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Ingen adfærds­overvågning\n${appLabel} overvåger ikke din aktivitet, opbygger ikke brugermodeller og følger dig ikke på tværs af apps eller websites.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Begrænset analyse og diagnostik\n${appLabel} bruger grundlæggende apphændelser og nedbrudsdiagnostik til at forbedre pålideligheden. Værdier fra sundhedsdata bruges ikke til annoncering og sælges ikke.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Reklamefrit design\n${appLabel} er bygget til at fungere uden annoncer eller datadrevet monetarisering.',
			'settings.about.privacy.noDataSelling' => 'Ingen salg af data\nDine sundhedsdata sælges eller deles aldrig med tredjeparter.',
			'settings.about.privacy.localStorage' => 'Lokal lagring i første række\nDine data bliver på din enhed.',
			'settings.about.privacy.privacyPolicy' => 'Privatlivspolitik',
			'settings.about.developer.title' => 'Udviklet af en solo-udvikler',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} er bygget og vedligeholdt af én solo-udvikler med fokus på roligt, privatlivsrespektende sundhedssoftware.\n\nFeedback læses personligt og hjælper med at forme appens retning.',
			'settings.about.developer.website' => 'Hjemmeside',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Nyder du ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Din feedback gør ${appLabel} bedre for alle.',
			'settings.about.feedback.rateApp' => 'Giv vurdering på Play Store',
			'settings.about.feedback.sendFeedback' => 'Send feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify version ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Byggenummer ${buildNumber}',
			'reminders.title' => 'Hold dig på sporet med påmindelser',
			'reminders.description' => 'Få blide påmindelser om at registrere dine måltider og holde fast i dine ernæringsmål',
			'reminders.notificationsEnabled' => 'Notifikationer aktiveret',
			'reminders.notificationsDisabled' => 'Notifikationer deaktiveret',
			'reminders.enabledSubtitle' => 'Du vil modtage måltidspåmindelser',
			'reminders.disabledSubtitle' => 'Aktivér notifikationer for at få måltidspåmindelser',
			'reminders.mealReminders' => 'Måltidspåmindelser',
			'reminders.breakfast' => 'Morgenmad',
			'reminders.lunch' => 'Frokost',
			'reminders.dinner' => 'Aftensmad',
			'reminders.snack' => 'Mellemmåltid',
			'reminders.unknown' => 'Ukendt',
			'reminders.change' => 'Skift',
			'reminders.enableNotifications' => 'Aktivér notifikationer',
			'reminders.skipForNow' => 'Spring over for nu',
			'reminders.saveChanges' => 'Gem ændringer',
			'reminders.enabledSuccessfully' => 'Notifikationer aktiveret!',
			'reminders.permissionDenied' => 'Tilladelse til notifikationer afvist',
			'reminders.errorEnabling' => ({required Object error}) => 'Fejl ved aktivering af notifikationer: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Fejl ved fuldførelse af opsætning: ${error}',
			'notifications.breakfast.title' => 'Morgenmadstid! 🍳',
			'notifications.breakfast.body' => 'Glem ikke at registrere din morgenmad',
			'notifications.lunch.title' => 'Frokosttid! 🥗',
			'notifications.lunch.body' => 'Tid til at registrere din frokost',
			'notifications.dinner.title' => 'Aftensmadstid! 🍽️',
			'notifications.dinner.body' => 'Glem ikke at registrere din aftensmad',
			'notifications.snack.title' => 'Snacktid! 🍎',
			'notifications.snack.body' => 'Tid til en sund snack',
			'notifications.test.title' => 'Testnotifikation',
			'login.title' => 'Log ind',
			'login.signInWithGoogle' => 'Log ind med Google',
			'login.signInFailed' => 'Google-login mislykkedes eller blev annulleret.',
			'disclaimer.pleaseNote' => 'Bemærk venligst',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} giver estimerede ernæringsoplysninger. Nøjagtigheden afhænger af dine input og madvarianter. Brug som vejledning, ikke som endelig kilde. Kontakt en professionel for personlig kostrådgivning.',
			'disclaimer.snap.portionSize.title' => 'Portionsstørrelse',
			'disclaimer.snap.portionSize.description' => 'Nøjagtigheden af estimaterne afhænger i høj grad af din korrekte vurdering af portionsstørrelsen.',
			'disclaimer.snap.preparationMethods.title' => 'Tilberedningsmetoder',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Tilberedningsmetoder kan ændre madens næringsindhold betydeligt. ${appLabel}\'s estimater tager ikke altid højde for disse variationer.',
			_ => null,
		} ?? switch (path) {
			'disclaimer.snap.ingredients.title' => 'Ingredienser',
			'disclaimer.snap.ingredients.description' => 'Komplekse retter med mange skjulte ingredienser kan give mindre nøjagtige estimater.',
			'disclaimer.snap.databaseLimitations.title' => 'Databasebegrænsninger',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}\'s fødevaredatabase er omfattende, men indeholder muligvis ikke alle fødevarer eller variationer.',
			'disclaimer.weightEstimate.title' => 'Om vægtestimatet',
			'disclaimer.weightEstimate.description' => 'Den prognosticerede vægtændring er et teoretisk estimat baseret på en simpel kalorie-ind vs. kalorie-ud-model. Den er kun tænkt som motivationsvejledning, ikke som en forudsigelse af din faktiske vægt.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalorienøjagtighed',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Dette estimat er kun så nøjagtigt som din registrerede kalorieindtagelse og -forbrug. Unøjagtig registrering giver et unøjagtigt skøn.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiske faktorer',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Faktisk vægttab/-stigning påvirkes af stofskifte, hormoner, søvn, stress, væskebalance og andre individuelle faktorer, som ${appLabel} ikke kan måle.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Vandvægt og udsving',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normal daglig vægt kan svinge betydeligt pga. væskeretention, fordøjelse og timing. Estimatet tager ikke højde for disse daglige ændringer.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professionel vejledning',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Brug ikke dette estimat til medicinske beslutninger. Kontakt altid en sundhedsprofessionel eller registreret diætist for personlig vægtstyringsrådgivning.',
			'disclaimer.healthMetrics.description' => 'Disse målinger hjælper dig med at forstå din krops energibehov og vejlede dine ernæringsmål.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) er det antal kalorier, din krop forbrænder i hvile for at opretholde basale funktioner som vejrtrækning og cirkulation. BMR afhænger af din alder, køn, højde og vægt. En højere BMR betyder, at din krop naturligt forbrænder flere kalorier i hvile, ofte på grund af mere muskelmasse, yngre alder eller at være mand. En lavere BMR indikerer typisk mindre muskelmasse, højere alder eller at være kvinde.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) er de samlede kalorier, du forbrænder pr. dag, inkl. din BMR plus kalorier fra fysisk aktivitet og daglig bevægelse. TDEE afhænger af din BMR og aktivitetsniveau. En højere TDEE betyder, at du forbrænder flere kalorier samlet, normalt pga. mere aktivitet eller højere BMR. En lavere TDEE antyder mindre daglig aktivitet eller lavere BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Dagsmål',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Dagsmål er dit anbefalede daglige kalorieindtag baseret på din TDEE og dit vægtmål. For vægttab indtager du færre kalorier end din TDEE. For vedligehold matcher du din TDEE. For vægtøgning indtager du flere kalorier end din TDEE. Dette hjælper dig med at nå din ønskede vægtændring i et sundt tempo.',
			'disclaimer.calorieExpenditure.title' => 'Estimat af kalorieforbrug',
			'disclaimer.calorieExpenditure.description' => 'Når Health Connect-data ikke er tilgængelige, estimerer vi dagens forbrændte kalorier ved hjælp af dit BMR og aktivitetsniveau (TDEE), skaleret efter den del af dagen, der er gået.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Hvordan estimatet beregnes',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Vi beregner din TDEE (baseret på din profil) og ganger den med den passerede del af dagen (timer + minutter) / 24 for at estimere forbrændte kalorier indtil nu.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Professionel vejledning',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Brug ikke dette estimat til medicinske beslutninger. Kontakt altid en sundhedsprofessionel eller registreret diætist for personlig vægtstyringsrådgivning.',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Tilbage',
			'watch.common.cancel' => 'Annuller',
			'watch.common.delete' => 'Slet',
			'watch.common.retry' => 'Prøv igen',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Næringsstof',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} gram',
			'watch.nutrition.protein' => 'Protein',
			'watch.nutrition.carbs' => 'Kulhydrater',
			'watch.nutrition.fat' => 'Fedt',
			'watch.nutrition.fiber' => 'Fibre',
			'watch.sync.syncWithPhone' => 'Synkroniser med telefon',
			'watch.sync.syncing' => 'Synkroniserer…',
			'watch.sync.synced' => 'Synkroniseret',
			'watch.sync.syncedJustNow' => 'Synkroniseret lige nu',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Synkroniseret ${minutes}m siden',
			'watch.sync.failed' => 'Synkronisering mislykkedes',
			'watch.sync.phoneDisconnected' => 'Telefon frakoblet',
			'watch.sync.tapToSync' => 'Tryk for at synkronisere',
			'watch.sync.refreshFailed' => 'Kunne ikke opdatere. Tjek din telefon.',
			'watch.sync.openPhone' => 'Åbn Calorify på din telefon, og tryk derefter på opdater.',
			'watch.home.today' => 'I dag',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} kalorier indtaget ud af ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} over målet',
			'watch.home.remaining' => ({required Object calories}) => '${calories} tilbage',
			'watch.home.left' => ({required Object calories}) => '${calories} tilbage',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal mål',
			'watch.home.logMeal' => 'Registrer et måltid',
			'watch.home.todayMeals' => 'Dagens måltider',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Dagens måltider, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Se ${count} flere',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} flere måltider, tryk for at se alle',
			'watch.home.noMeals' => 'Ingen måltider registreret',
			'watch.home.noMealsSemantics' => 'Ingen måltider registreret i dag',
			'watch.home.tapLog' => 'Tryk på Registrer for at starte',
			'watch.home.removedFromQueue' => 'Måltid fjernet fra offlinekøen.',
			'watch.home.removedOffline' => 'Måltid fjernet offline. Det synkroniseres, når din telefon genopretter forbindelse.',
			'watch.home.deleteFailed' => 'Kunne ikke slette måltidet',
			'watch.history.title' => 'Dagens måltider',
			'watch.history.refresh' => 'Opdater måltider',
			'watch.history.loadFailed' => 'Kunne ikke indlæse måltider',
			'watch.history.syncFailed' => 'Kunne ikke synkronisere',
			'watch.history.emptyTitle' => 'Ingen måltider endnu',
			'watch.history.emptyMessage' => 'Registrer et måltid fra Hjem for at se det her.',
			'watch.favorites.title' => 'Favoritter',
			'watch.favorites.refresh' => 'Opdater favoritter',
			'watch.favorites.loadFailed' => 'Kunne ikke indlæse favoritter',
			'watch.favorites.syncFailed' => 'Kunne ikke synkronisere',
			'watch.favorites.emptyTitle' => 'Ingen favoritter endnu',
			'watch.favorites.emptyMessage' => 'Marker måltider med stjerne i telefonappen for at få ét-tryk-registrering her.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} kalorier. Tryk for at registrere.',
			'watch.favorites.logged' => ({required Object name}) => '${name} registreret!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} gemt offline. Det synkroniseres, når din telefon genopretter forbindelsen.',
			'watch.favorites.saveFailed' => 'Kunne ikke gemme måltidet. Prøv igen.',
			'watch.favorites.log' => 'Registrer',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kalorier, registreret kl. ${time}.',
			'watch.meal.longPressDelete' => 'Hold nede for at slette.',
			'watch.meal.deleteTitle' => 'Slet måltid?',
			'watch.voice.title' => 'Stemmeregistrering',
			'watch.voice.processing' => 'Tjekker dit måltid…',
			'watch.voice.processingDescription' => 'Estimerer portioner og næringsindhold',
			'watch.voice.listening' => 'Lytter',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Stop optagelse',
			'watch.voice.start' => 'Tryk for at starte optagelse',
			'watch.voice.starting' => 'Starter mikrofon…',
			'watch.voice.prompt' => 'Tryk, og beskriv derefter dit måltid',
			'watch.voice.tapToRetry' => 'Tryk for at prøve igen',
			'watch.voice.example' => 'Prøv “2 rotis med dal”',
			'watch.voice.unavailable' => 'Stemmeinput er ikke tilgængeligt. Tjek mikrofontilladelse i urindstillingerne.',
			'watch.voice.didNotStart' => 'Mikrofonen startede ikke. Tryk for at prøve igen.',
			'watch.voice.startFailed' => 'Kunne ikke starte optagelse. Tjek mikrofontilladelser.',
			'watch.voice.allowMicrophone' => 'Giv adgang til mikrofonen for at registrere måltider med stemme.',
			'watch.voice.needsConnection' => 'Stemmegenkendelse kræver forbindelse. Tryk for at prøve igen.',
			'watch.voice.microphoneUnavailable' => 'Mikrofonen er ikke tilgængelig. Tryk for at prøve igen.',
			'watch.voice.microphoneBusy' => 'Mikrofonen er optaget. Vent et øjeblik og prøv igen.',
			'watch.voice.languageUnsupported' => 'Stemmeinput understøtter ikke ursproget.',
			'watch.voice.temporarilyBusy' => 'Stemmeinput er midlertidigt optaget. Vent et øjeblik og prøv igen.',
			'watch.voice.notRecognized' => 'Det fangede jeg ikke. Tryk på mikrofonen og prøv igen.',
			'watch.voice.noSpeech' => 'Ingen tale registreret. Tryk på mikrofonen for at prøve igen.',
			'watch.voice.analysisFailed' => 'Analysen mislykkedes. Prøv igen.',
			'watch.voice.mealNotIdentified' => 'Kunne ikke identificere måltidet. Prøv at beskrive det anderledes.',
			'watch.result.title' => 'Måltidsdetaljer',
			'watch.result.savedOffline' => 'Gemt offline',
			'watch.result.logged' => 'Registreret!',
			'watch.result.mealFound' => 'Måltid fundet',
			'watch.result.estimatedEnergy' => 'Anslået energi',
			'watch.result.logMeal' => 'Registrer måltid',
			'watch.result.logging' => 'Registrerer…',
			'watch.result.logAnother' => 'Registrer et til',
			'watch.result.goingBack' => 'Går tilbage…',
			'watch.result.savedOfflineMessage' => 'Måltid gemt offline. Det synkroniseres, når din telefon genopretter forbindelsen.',
			'watch.result.saveFailed' => 'Kunne ikke gemme måltidet. Prøv igen.',
			'common.betaTag' => 'Beta',
			'common.close' => 'Luk',
			'common.kContinue' => 'Fortsæt',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Nyder du ${appLabel}?',
			'feedbackRating.yes' => 'Ja, jeg er glad for den',
			'feedbackRating.no' => 'Ikke rigtig',
			'feedbackRating.rateStepHeading' => 'Giv bedømmelse på Play Store',
			'feedbackRating.emailStepHeading' => 'Send feedback via e-mail',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'En hurtig vurdering hjælper andre med at finde ${appLabel} og holder udviklingen i gang. Vil du give en vurdering?',
			'feedbackRating.shareFeedbackViaEmail' => 'Din feedback former det, der kommer næste — vi læser alle beskeder. Vil du dele dine tanker via e-mail?',
			'feedbackRating.rateCta' => 'Giv vurdering på Play Store',
			'feedbackRating.maybeLater' => 'Måske senere',
			'feedbackRating.sendFeedback' => 'Giv feedback',
			'feedbackRating.noThanks' => 'Nej tak',
			'feedbackRating.aboutUsDescription' => 'Lavede med omtanke af et lille team. Vi fokuserer på privatliv, enkelhed og at hjælpe dig med bedre spisevaner.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Nysgerrig efter hvem der står bag ${appLabel}? Se ',
			'feedbackRating.aboutUsLinkLabel' => 'Om os',
			'feedbackRating.thankYouMessage' => 'Tak! Vi spørger igen en anden gang.',
			'health.syncFailed' => 'Kunne ikke synkronisere til Health Connect',
			'health.mealSynced' => 'Måltid synkroniseret med Health Connect',
			_ => null,
		};
	}
}
