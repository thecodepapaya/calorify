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
class TranslationsSv extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsSv({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.sv,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <sv>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsSv _root = this; // ignore: unused_field

	@override 
	TranslationsSv $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsSv(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Svenska';
	@override String get flag => '🇸🇪';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$sv errors = _Translations$errors$sv._(_root);
	@override late final _Translations$onboarding$sv onboarding = _Translations$onboarding$sv._(_root);
	@override late final _Translations$tabs$sv tabs = _Translations$tabs$sv._(_root);
	@override late final _Translations$home$sv home = _Translations$home$sv._(_root);
	@override late final _Translations$history$sv history = _Translations$history$sv._(_root);
	@override late final _Translations$meal$sv meal = _Translations$meal$sv._(_root);
	@override late final _Translations$favorites$sv favorites = _Translations$favorites$sv._(_root);
	@override late final _Translations$profile$sv profile = _Translations$profile$sv._(_root);
	@override late final _Translations$healthScore$sv healthScore = _Translations$healthScore$sv._(_root);
	@override late final _Translations$editProfile$sv editProfile = _Translations$editProfile$sv._(_root);
	@override late final _Translations$settings$sv settings = _Translations$settings$sv._(_root);
	@override late final _Translations$reminders$sv reminders = _Translations$reminders$sv._(_root);
	@override late final _Translations$notifications$sv notifications = _Translations$notifications$sv._(_root);
	@override late final _Translations$login$sv login = _Translations$login$sv._(_root);
	@override late final _Translations$disclaimer$sv disclaimer = _Translations$disclaimer$sv._(_root);
	@override late final _Translations$localNutritionPhase4$sv localNutritionPhase4 = _Translations$localNutritionPhase4$sv._(_root);
	@override late final _Translations$watch$sv watch = _Translations$watch$sv._(_root);
	@override late final _Translations$common$sv common = _Translations$common$sv._(_root);
	@override late final _Translations$feedbackRating$sv feedbackRating = _Translations$feedbackRating$sv._(_root);
	@override late final _Translations$health$sv health = _Translations$health$sv._(_root);
}

// Path: errors
class _Translations$errors$sv extends Translations$errors$en {
	_Translations$errors$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Du har gjort för många förfrågningar. Vänta en stund och försök igen.';
	@override String get networkError => 'Nätverksfel. Kontrollera din internetanslutning.';
	@override String get unknownError => 'Något gick fel. Försök igen senare.';
	@override String get loadingProfileData => 'Fel vid inläsning av profildata';
	@override String get somethingWentWrong => 'Något gick fel.';
	@override String get retry => 'Försök igen';
}

// Path: onboarding
class _Translations$onboarding$sv extends Translations$onboarding$en {
	_Translations$onboarding$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Välkommen till ${appLabel}';
	@override String get subtitle => 'Din personliga näringskompis med AI';
	@override String get getStarted => 'Kom igång';
	@override late final _Translations$onboarding$features$sv features = _Translations$onboarding$features$sv._(_root);
	@override late final _Translations$onboarding$gender$sv gender = _Translations$onboarding$gender$sv._(_root);
	@override late final _Translations$onboarding$height$sv height = _Translations$onboarding$height$sv._(_root);
	@override late final _Translations$onboarding$weight$sv weight = _Translations$onboarding$weight$sv._(_root);
	@override late final _Translations$onboarding$age$sv age = _Translations$onboarding$age$sv._(_root);
	@override late final _Translations$onboarding$bmiScale$sv bmiScale = _Translations$onboarding$bmiScale$sv._(_root);
	@override late final _Translations$onboarding$weightGoal$sv weightGoal = _Translations$onboarding$weightGoal$sv._(_root);
	@override late final _Translations$onboarding$activityLevel$sv activityLevel = _Translations$onboarding$activityLevel$sv._(_root);
	@override late final _Translations$onboarding$healthConnect$sv healthConnect = _Translations$onboarding$healthConnect$sv._(_root);
	@override late final _Translations$onboarding$reinforcement$sv reinforcement = _Translations$onboarding$reinforcement$sv._(_root);
}

// Path: tabs
class _Translations$tabs$sv extends Translations$tabs$en {
	_Translations$tabs$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Översikt';
	@override String get history => 'Historik';
}

// Path: home
class _Translations$home$sv extends Translations$home$en {
	_Translations$home$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$sv aiSummary = _Translations$home$aiSummary$sv._(_root);
	@override late final _Translations$home$dailyGoal$sv dailyGoal = _Translations$home$dailyGoal$sv._(_root);
	@override late final _Translations$home$dailySummary$sv dailySummary = _Translations$home$dailySummary$sv._(_root);
	@override late final _Translations$home$intakeProgress$sv intakeProgress = _Translations$home$intakeProgress$sv._(_root);
	@override late final _Translations$home$intakeHistory$sv intakeHistory = _Translations$home$intakeHistory$sv._(_root);
	@override late final _Translations$home$mealLog$sv mealLog = _Translations$home$mealLog$sv._(_root);
	@override late final _Translations$home$mealDescription$sv mealDescription = _Translations$home$mealDescription$sv._(_root);
	@override late final _Translations$home$favoriteMeals$sv favoriteMeals = _Translations$home$favoriteMeals$sv._(_root);
	@override late final _Translations$home$mealSnap$sv mealSnap = _Translations$home$mealSnap$sv._(_root);
	@override late final _Translations$home$connectHealth$sv connectHealth = _Translations$home$connectHealth$sv._(_root);
}

// Path: history
class _Translations$history$sv extends Translations$history$en {
	_Translations$history$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Inga måltider registrerade';
	@override String get emptyMessage => 'Ta ett foto av din senaste måltid för att registrera den här.';
	@override String get today => 'Idag';
	@override String get yesterday => 'Igår';
}

// Path: meal
class _Translations$meal$sv extends Translations$meal$en {
	_Translations$meal$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Åh nej!';
	@override String get delete => 'Ta bort';
	@override String get editMeal => 'Redigera måltid';
	@override String get addMeal => 'Lägg till måltid';
	@override String get saveMeal => 'Spara måltid';
	@override String get save => 'Spara';
	@override String get mealName => 'Måltidens namn';
	@override String get mealNameHint => 't.ex., Äggröra med rostat bröd';
	@override String get nameRequired => 'Ange ett namn för måltiden innan du sparar.';
	@override String get mealQuantity => 'Portionsstorlek';
	@override String get mealQuantityHint => 't.ex., 1 skål, 2 skivor';
	@override String get timeOfMeal => 'Tid för måltid';
	@override String get timeOfMealHint => 'Välj vilken tid du åt måltiden';
	@override String get mealType => 'Måltidstyp';
	@override late final _Translations$meal$nutrition$sv nutrition = _Translations$meal$nutrition$sv._(_root);
	@override late final _Translations$meal$deleteConfirmation$sv deleteConfirmation = _Translations$meal$deleteConfirmation$sv._(_root);
	@override String get addedToLog => 'Måltid tillagd i din logg!';
	@override String couldNotAdd({required Object error}) => 'Kunde inte lägga till måltid: ${error}';
	@override String get savedSuccessfully => 'Måltid tillagd!';
	@override String get updatedSuccessfully => 'Måltid uppdaterad!';
	@override String errorSaving({required Object error}) => 'Fel vid sparande av måltid: ${error}';
	@override String get removedFromFavorites => 'Borttagen från favoriter!';
	@override String get savedAsFavorite => 'Måltid sparad som favorit!';
	@override String get unfavorite => 'Ta bort från favoriter';
	@override String couldNotUpdateFavorite({required Object error}) => 'Kunde inte uppdatera favorit: ${error}';
	@override String get feedbackThanks => 'Tack för din feedback!';
	@override String get reanalysisUpdated => 'Uppdaterade måltidsanalysen baserat på din feedback.';
	@override String failedToProcess({required Object error}) => 'Misslyckades att bearbeta: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Kunde inte bearbeta bild: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Fel vid komprimering av bild: ${error}';
	@override String get failedToSave => 'Misslyckades med att spara data. Försök igen.';
	@override String get skip => 'Hoppa över';
	@override late final _Translations$meal$questionFlow$sv questionFlow = _Translations$meal$questionFlow$sv._(_root);
	@override late final _Translations$meal$analysis$sv analysis = _Translations$meal$analysis$sv._(_root);
	@override late final _Translations$meal$localInference$sv localInference = _Translations$meal$localInference$sv._(_root);
	@override late final _Translations$meal$feedback$sv feedback = _Translations$meal$feedback$sv._(_root);
}

// Path: favorites
class _Translations$favorites$sv extends Translations$favorites$en {
	_Translations$favorites$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriter';
	@override String get empty => 'Inga favoritmåltider ännu.';
	@override String get searchPlaceholder => 'Sök favoriträtter';
	@override String get searchEmptyTitle => 'Inga favoriter matchar din sökning';
	@override String get searchEmptySubtitle => 'Prova ett annat måltidsnamn, antal eller måltidstyp.';
	@override String get sortLabel => 'Sortera favoriter';
	@override String get undo => 'Ångra';
	@override String removed({required Object name}) => 'Tog bort ${name} från favoriter';
	@override late final _Translations$favorites$sortOptions$sv sortOptions = _Translations$favorites$sortOptions$sv._(_root);
}

// Path: profile
class _Translations$profile$sv extends Translations$profile$en {
	_Translations$profile$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Inga profildata hittades';
	@override String get yourProfile => 'Din profil';
	@override String get viewAndManage => 'Visa och hantera din hälsoinformation';
	@override late final _Translations$profile$sections$sv sections = _Translations$profile$sections$sv._(_root);
	@override String get gender => 'Kön';
	@override String get height => 'Längd';
	@override String get weight => 'Vikt';
	@override String get age => 'Ålder';
	@override String get weightGoal => 'Viktmål';
	@override String get targetWeight => 'Målvikt';
	@override String get activityLevel => 'Aktivitetsnivå';
	@override String get healthMetrics => 'Hälsovärden';
	@override String get notSet => 'Ej inställt';
	@override String get years => 'år';
	@override String get updatedSuccessfully => 'Profil uppdaterad!';
	@override late final _Translations$profile$calculatedValues$sv calculatedValues = _Translations$profile$calculatedValues$sv._(_root);
}

// Path: healthScore
class _Translations$healthScore$sv extends Translations$healthScore$en {
	_Translations$healthScore$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hälsopoäng';
	@override String get whyThisScore => 'Varför detta betyg?';
	@override String get note => 'Detta betyg är en AI‑uppskattning baserad på identifierade ingredienser och näringstäthet. Rådgör alltid med en professionell för kostråd.';
	@override String get unhealthy => 'Ohälsosam';
	@override String get healthy => 'Hälsosam';
	@override String get neutral => 'Neutralt';
}

// Path: editProfile
class _Translations$editProfile$sv extends Translations$editProfile$en {
	_Translations$editProfile$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Redigera profil';
	@override late final _Translations$editProfile$sections$sv sections = _Translations$editProfile$sections$sv._(_root);
	@override String get gender => 'Kön';
	@override String get dateOfBirth => 'Födelsedatum';
	@override String get height => 'Längd';
	@override String get weight => 'Vikt';
	@override String get weightGoal => 'Viktmål';
	@override String get activityLevel => 'Aktivitetsnivå';
	@override String get metric => 'Metriskt';
	@override String get imperial => 'Imperialt';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'pund (lb)';
	@override String get metricCm => 'Metriskt (cm)';
	@override String get imperialFtIn => 'Imperialt (ft/tum)';
	@override String get metricKg => 'Metriskt (kg)';
	@override String get imperialLbs => 'Imperialt (lb)';
	@override late final _Translations$editProfile$genders$sv genders = _Translations$editProfile$genders$sv._(_root);
	@override late final _Translations$editProfile$weightGoals$sv weightGoals = _Translations$editProfile$weightGoals$sv._(_root);
	@override late final _Translations$editProfile$activityLevels$sv activityLevels = _Translations$editProfile$activityLevels$sv._(_root);
}

// Path: settings
class _Translations$settings$sv extends Translations$settings$en {
	_Translations$settings$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inställningar';
	@override late final _Translations$settings$sections$sv sections = _Translations$settings$sections$sv._(_root);
	@override late final _Translations$settings$editProfile$sv editProfile = _Translations$settings$editProfile$sv._(_root);
	@override late final _Translations$settings$language$sv language = _Translations$settings$language$sv._(_root);
	@override late final _Translations$settings$heightUnit$sv heightUnit = _Translations$settings$heightUnit$sv._(_root);
	@override late final _Translations$settings$weightUnit$sv weightUnit = _Translations$settings$weightUnit$sv._(_root);
	@override late final _Translations$settings$mealReminders$sv mealReminders = _Translations$settings$mealReminders$sv._(_root);
	@override late final _Translations$settings$localInference$sv localInference = _Translations$settings$localInference$sv._(_root);
	@override late final _Translations$settings$theme$sv theme = _Translations$settings$theme$sv._(_root);
	@override late final _Translations$settings$sendFeedback$sv sendFeedback = _Translations$settings$sendFeedback$sv._(_root);
	@override late final _Translations$settings$exportMealHistory$sv exportMealHistory = _Translations$settings$exportMealHistory$sv._(_root);
	@override late final _Translations$settings$clearAllData$sv clearAllData = _Translations$settings$clearAllData$sv._(_root);
	@override late final _Translations$settings$debugOptions$sv debugOptions = _Translations$settings$debugOptions$sv._(_root);
	@override String get developerModeEnabled => 'Utvecklarläge aktiverat!';
	@override late final _Translations$settings$healthConnect$sv healthConnect = _Translations$settings$healthConnect$sv._(_root);
	@override late final _Translations$settings$about$sv about = _Translations$settings$about$sv._(_root);
	@override late final _Translations$settings$appInfo$sv appInfo = _Translations$settings$appInfo$sv._(_root);
}

// Path: reminders
class _Translations$reminders$sv extends Translations$reminders$en {
	_Translations$reminders$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Håll dig på rätt spår med påminnelser';
	@override String get description => 'Få mjuka påminnelser att registrera dina måltider och hålla konsekvens i dina näringsmål';
	@override String get notificationsEnabled => 'Meddelanden aktiverade';
	@override String get notificationsDisabled => 'Meddelanden avaktiverade';
	@override String get enabledSubtitle => 'Du kommer att få måltidspåminnelser';
	@override String get disabledSubtitle => 'Aktivera meddelanden för att få måltidspåminnelser';
	@override String get mealReminders => 'Måltidspåminnelser';
	@override String get breakfast => 'Frukost';
	@override String get lunch => 'Lunchmåltid';
	@override String get dinner => 'Middag';
	@override String get snack => 'Mellanmål';
	@override String get unknown => 'Okänd';
	@override String get change => 'Ändra';
	@override String get enableNotifications => 'Aktivera meddelanden';
	@override String get skipForNow => 'Hoppa över för nu';
	@override String get saveChanges => 'Spara ändringar';
	@override String get enabledSuccessfully => 'Meddelanden aktiverade!';
	@override String get permissionDenied => 'Behörighet för meddelanden nekad';
	@override String errorEnabling({required Object error}) => 'Fel vid aktivering av meddelanden: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Fel vid slutförande av inställning: ${error}';
}

// Path: notifications
class _Translations$notifications$sv extends Translations$notifications$en {
	_Translations$notifications$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$sv breakfast = _Translations$notifications$breakfast$sv._(_root);
	@override late final _Translations$notifications$lunch$sv lunch = _Translations$notifications$lunch$sv._(_root);
	@override late final _Translations$notifications$dinner$sv dinner = _Translations$notifications$dinner$sv._(_root);
	@override late final _Translations$notifications$snack$sv snack = _Translations$notifications$snack$sv._(_root);
	@override late final _Translations$notifications$test$sv test = _Translations$notifications$test$sv._(_root);
}

// Path: login
class _Translations$login$sv extends Translations$login$en {
	_Translations$login$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Logga in';
	@override String get signInWithGoogle => 'Logga in med Google';
	@override String get signInFailed => 'Inloggning via Google misslyckades eller avbröts.';
}

// Path: disclaimer
class _Translations$disclaimer$sv extends Translations$disclaimer$en {
	_Translations$disclaimer$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Observera';
	@override late final _Translations$disclaimer$snap$sv snap = _Translations$disclaimer$snap$sv._(_root);
	@override late final _Translations$disclaimer$weightEstimate$sv weightEstimate = _Translations$disclaimer$weightEstimate$sv._(_root);
	@override late final _Translations$disclaimer$healthMetrics$sv healthMetrics = _Translations$disclaimer$healthMetrics$sv._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$sv calorieExpenditure = _Translations$disclaimer$calorieExpenditure$sv._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$sv extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get portionSmaller => 'Mindre';
	@override String get portionEstimated => 'Uppskattad';
	@override String get portionLarger => 'Större';
	@override String portionQuestion({required Object ingredient}) => 'Vilken portion låg närmast för ${ingredient}?';
	@override String get mealTypeQuestion => 'Vilken måltid var det här?';
	@override String get localNutritionTip => 'Beräknat från verifierade lokala näringsdata.';
	@override String get offlineNutritionTitle => 'Ladda ned näringsdata';
	@override String get offlineNutritionSubtitle => 'Använd verifierade USDA-rader och deterministisk beräkning på den här enheten när alla ingredienser omfattas.';
	@override String get offlineNutritionUnavailable => 'Lokala näringsdata är inte tillgängliga för den här appversionen.';
	@override String get offlineNutritionNotDownloaded => 'Inget verifierat näringspaket har laddats ned.';
	@override String get offlineNutritionInstalling => 'Laddar ned och verifierar näringsdata…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Paket ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} cachade USDA-rader · ${size}';
	@override String get offlineNutritionUpdate => 'Sök efter uppdatering';
	@override String get offlineNutritionClear => 'Rensa lokala näringsdata';
	@override String get offlineNutritionClearTitle => 'Rensa lokala näringsdata?';
	@override String get offlineNutritionClearBody => 'Detta tar bort det nedladdade USDA-paketet och uppslagscachen. Loggade måltider behåller den exakta ögonblicksbild av näringsdata som användes när de sparades.';
	@override String get offlineNutritionClearConfirm => 'Rensa data';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Det gick inte att ladda ned och verifiera lokala näringsdata: ${error}';
	@override String get offlineNutritionCleared => 'Lokala näringsdata har rensats';
}

// Path: watch
class _Translations$watch$sv extends Translations$watch$en {
	_Translations$watch$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$sv common = _Translations$watch$common$sv._(_root);
	@override late final _Translations$watch$nutrition$sv nutrition = _Translations$watch$nutrition$sv._(_root);
	@override late final _Translations$watch$sync$sv sync = _Translations$watch$sync$sv._(_root);
	@override late final _Translations$watch$home$sv home = _Translations$watch$home$sv._(_root);
	@override late final _Translations$watch$history$sv history = _Translations$watch$history$sv._(_root);
	@override late final _Translations$watch$favorites$sv favorites = _Translations$watch$favorites$sv._(_root);
	@override late final _Translations$watch$meal$sv meal = _Translations$watch$meal$sv._(_root);
	@override late final _Translations$watch$voice$sv voice = _Translations$watch$voice$sv._(_root);
	@override late final _Translations$watch$result$sv result = _Translations$watch$result$sv._(_root);
}

// Path: common
class _Translations$common$sv extends Translations$common$en {
	_Translations$common$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Beta';
	@override String get close => 'Stäng';
	@override String get kContinue => 'Fortsätt';
}

// Path: feedbackRating
class _Translations$feedbackRating$sv extends Translations$feedbackRating$en {
	_Translations$feedbackRating$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Gillar du ${appLabel}?';
	@override String get yes => 'Ja, jag gillar den';
	@override String get no => 'Inte riktigt';
	@override String get rateStepHeading => 'Betygsätt på Play Store';
	@override String get emailStepHeading => 'Skicka feedback via e-post';
	@override String soloDevMessage({required Object appLabel}) => 'Ett snabbt betyg hjälper andra hitta ${appLabel} och håller utvecklingen igång. Vill du avsätta en stund för att lämna ett?';
	@override String get shareFeedbackViaEmail => 'Din feedback formar vad som kommer härnäst — vi läser varje meddelande. Vill du dela dina tankar via e-post?';
	@override String get rateCta => 'Betygsätt på Play Store';
	@override String get maybeLater => 'Kanske senare';
	@override String get sendFeedback => 'Skicka feedback';
	@override String get noThanks => 'Nej tack';
	@override String get aboutUsDescription => 'Gjord med omsorg av ett litet team. Vi fokuserar på integritet, enkelhet och att hjälpa dig bygga bättre matvanor.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Nyfiken på vem som ligger bakom ${appLabel}? Se ';
	@override String get aboutUsLinkLabel => 'Om oss';
	@override String get thankYouMessage => 'Tack! Vi frågar igen vid ett senare tillfälle.';
}

// Path: health
class _Translations$health$sv extends Translations$health$en {
	_Translations$health$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Kunde inte synka till Health Connect';
	@override String get mealSynced => 'Måltid synkad med Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$sv extends Translations$onboarding$features$en {
	_Translations$onboarding$features$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$sv foodRecognition = _Translations$onboarding$features$foodRecognition$sv._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$sv aiAnalysis = _Translations$onboarding$features$aiAnalysis$sv._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$sv healthIntegration = _Translations$onboarding$features$healthIntegration$sv._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$sv extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vilket kön har du?';
	@override String get description => 'Kön hjälper oss att noggrant beräkna din basalmetabolism (BMR).';
	@override String get next => 'Nästa';
}

// Path: onboarding.height
class _Translations$onboarding$height$sv extends Translations$onboarding$height$en {
	_Translations$onboarding$height$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hur lång är du?';
	@override String get description => 'Din längd hjälper oss att räkna ut din BMI och energibehov på ett korrekt sätt.';
	@override String get metric => 'Metriskt';
	@override String get imperial => 'Imperialt';
	@override String get next => 'Nästa';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$sv extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Vad är din nuvarande vikt?';
	@override String get currentDescription => 'Din nuvarande vikt är viktig för att anpassa dina dagliga mål.';
	@override String get targetTitle => 'Vad är din målvikt?';
	@override String get targetDescription => 'Att ange en målvikt hjälper oss att bestämma din långsiktiga plan.';
	@override String get metric => 'Metriskt';
	@override String get imperial => 'Imperialt';
	@override String get next => 'Nästa';
}

// Path: onboarding.age
class _Translations$onboarding$age$sv extends Translations$onboarding$age$en {
	_Translations$onboarding$age$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'När fyller du år?';
	@override String get description => 'Din ålder hjälper oss att beräkna ditt kaloribehov korrekt.';
	@override String get next => 'Nästa';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$sv extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Underviktig';
	@override String get healthy => 'Normal';
	@override String get overweight => 'Över';
	@override String get obese => 'Fetma';
	@override late final _Translations$onboarding$bmiScale$categories$sv categories = _Translations$onboarding$bmiScale$categories$sv._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$sv messages = _Translations$onboarding$bmiScale$messages$sv._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$sv extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vad är ditt mål?';
	@override String get description => 'Välj det mål som bäst beskriver vad du vill uppnå';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$sv extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hur aktiv är du?';
	@override String get description => 'Detta hjälper oss att räkna ut ditt dagliga kaloribehov mer exakt';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$sv extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anslut till Health Connect';
	@override String get description => 'Använd förbrända kalorier i ditt dagsmål och dela valfritt loggade måltider med Health Connect.';
	@override String get overviewDescription => 'Använd förbrända kalorier i ditt dagsmål och dela valfritt loggade måltider med Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$sv automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$sv._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$sv caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$sv._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$sv progressInsights = _Translations$onboarding$healthConnect$progressInsights$sv._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$sv shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$sv._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$sv seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$sv._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$sv userControl = _Translations$onboarding$healthConnect$userControl$sv._(_root);
	@override String get connected => 'Health Connect anslutet';
	@override String get notConnected => 'Health Connect inte anslutet';
	@override String get setup => 'Ställ in Health Connect';
	@override String get skipForNow => 'Hoppa över för nu';
	@override String get statusConnected => 'Health Connect är anslutet.';
	@override String get statusSuccess => 'Health Connect är nu anslutet!';
	@override String get statusNotConnected => 'Välj vilka Health Connect-funktioner du vill aktivera.';
	@override String get statusPartial => 'Health Connect är delvis anslutet. Aktivera den återstående behörigheten för att använda båda funktionerna.';
	@override String get statusProviderUpdateRequired => 'Installera eller uppdatera Health Connect för att fortsätta.';
	@override String get statusUnavailable => 'Health Connect stöds inte på den här enheten.';
	@override String get installOrUpdate => 'Installera eller uppdatera';
	@override String get manageAccess => 'Hantera åtkomst';
	@override String statusPermissionDenied({required Object appLabel}) => 'Behörighet nekad. Aktivera Health Connect-behörigheter i telefonens inställningar för ${appLabel}.';
	@override String statusError({required Object error}) => 'Fel vid inställning av Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$sv extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$sv trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$sv._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$sv healthProfile = _Translations$onboarding$reinforcement$healthProfile$sv._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$sv goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$sv._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$sv extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din AI-översikt';
	@override String get logMore => 'Registrera fler måltider de kommande dagarna för att få personliga AI‑insikter.';
	@override String get loading => 'Läser in din översikt...';
	@override String mealCount({required Object count}) => '${count} måltider registrerade';
	@override String macroBalanceScore({required Object score}) => 'Balanspoäng ${score}';
	@override String get topFoods => 'Vanligaste livsmedel';
	@override String get trendUp => 'Kalorier ökar';
	@override String get trendDown => 'Kalorier minskar';
	@override String get trendSteady => 'Kalorier stabila';
	@override String generatedAt({required Object time}) => 'Uppdaterad ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$sv extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sätt ditt dagliga mål';
	@override String get titleSet => 'Ditt dagliga mål';
	@override String get description => 'Redo att börja din hälsoresa? Ange ditt dagliga kalorimål nedan för att komma igång.';
	@override String get descriptionSet => 'Din kompass är inställd! Detta är ditt dagliga kalorimål som guidar dig.';
	@override String get yourGoal => 'Ditt mål';
	@override String get goal => 'Mål';
	@override String get dailyCalories => 'Dagliga kalorier (kcal)';
	@override String get setGoal => 'Ställ in mål';
	@override String get intake => 'Intag';
	@override String get burned => 'Förbränt';
	@override String get weightImpact => 'Viktpåverkan';
	@override String get estLoss => 'Beräknad minskning med';
	@override String get estGain => 'Beräknad ökning med';
	@override String get kcal => 'kilokalorier (kcal)';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$sv extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagsammanfattning';
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Kolhydrater';
	@override String get protein => 'Proteiner';
	@override String get fat => 'Fett';
	@override String get fiber => 'Fibrer';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Makronutrientdiagram';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$sv extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens makrofördelning';
	@override String get target => 'Mål';
	@override String get current => 'Aktuellt';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$sv extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => '7‑dagars makrohistorik';
	@override String get trendTitle => 'Dagens trend';
	@override String peakHour({required Object hour}) => 'Topp: ${hour}:00';
	@override String get noHistoryYet => 'Ingen historik än';
	@override String get startLogging => 'Börja registrera måltider för att se dina\n7‑dagars makrotrender här';
}

// Path: home.mealLog
class _Translations$home$mealLog$sv extends Translations$home$mealLog$en {
	_Translations$home$mealLog$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Registrerade måltider';
	@override String get emptyMessage => 'Ta ett foto av din senaste måltid för att registrera den här.';
	@override String get noMealsToday => 'Inga måltider registrerade idag';
	@override String get seeAllMeals => 'Se alla måltider';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$sv extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snabbtillägg med AI';
	@override String get description => 'Beskriv din måltid så sköter AI detaljerna.';
	@override String get hint => 't.ex. Till frukost åt jag en stor skål gröt med en skivad banan och en skopa vassle ...';
	@override String get analyzeMeal => 'Analysera måltid';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$sv extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritmåltider';
	@override String get description => 'Lägg snabbt till en av dina favoriträtter.';
	@override String get noFavorites => 'Inga favoritmåltider ännu.';
	@override String get addFavoriteHint => 'Klicka på stjärnan på en måltid för att markera som favorit.';
	@override String get seeAll => 'Visa alla';
	@override String get add => 'Lägg till';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$sv extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fotografera & registrera din måltid';
	@override String get description => 'Använd kameran för att ta en bild av din mat för AI‑analys.';
	@override String get openCamera => 'Öppna kamera';
	@override String get gallery => 'Galleri';
	@override String get compressingPhoto => 'Optimerar bild…';
	@override String get uploadingPhoto => 'Laddar upp bild…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$sv extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synka med Health Connect';
	@override String get description => 'Använd förbrända kalorier i ditt mål och dela loggade måltider';
	@override String get install => 'Installera eller uppdatera';
	@override String get dataUseDescription => 'Använd förbrända kalorier i ditt mål och dela loggade måltider';
	@override String get installOrUpdate => 'Installera eller uppdatera';
	@override String get connect => 'Anslut';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$sv extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Kolhydrater (g)';
	@override String get protein => 'Proteiner (g)';
	@override String get fat => 'Fett (g)';
	@override String get fiber => 'Fibrer (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$sv extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ta bort måltid';
	@override String get message => 'Är du säker på att du vill ta bort denna måltidsregistrering?';
	@override String get cancel => 'Avbryt';
	@override String get delete => 'Ta bort';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$sv extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Fråga ${current} av ${total}';
	@override String get noQuestionsAvailable => 'Inga frågor tillgängliga';
	@override String get next => 'Nästa';
	@override String get continueLabel => 'Fortsätt';
	@override String get countQuestion => 'Välj antal';
	@override String get itemSizeQuestion => 'Välj storlek';
	@override String get portionSizeQuestion => 'Välj portionsstorlek';
	@override String get option6plus => '6 eller fler';
	@override String get optionSmall => 'Liten';
	@override String get optionRegular => 'Normal';
	@override String get optionLarge => 'Stor';
	@override String get optionThin => 'Tunn';
	@override String get optionThick => 'Tjock';
	@override String get optionMini => 'Mini';
	@override String get optionStuffed => 'Fylld';
	@override String get optionHeavy => 'Tung';
	@override String get optionSmaller => 'Mindre';
	@override String get optionTypical => 'Typisk';
	@override String get optionLarger => 'Större';
}

// Path: meal.analysis
class _Translations$meal$analysis$sv extends Translations$meal$analysis$en {
	_Translations$meal$analysis$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyserar din måltid';
	@override String get stepStarted => 'Börjar…';
	@override String get stepDecomposition => 'Förstår din måltid…';
	@override String get stepIngredients => 'Matchar ingredienser med näringsdata…';
	@override String get stepUncertainty => 'Kontrollerar säkerhet…';
	@override String get stepMealTypeQuestion => 'Nästan klart…';
	@override String get stepResult => 'Slutför resultatet…';
	@override String get stepError => 'Något gick fel';
	@override String get noFoodTip => 'Ingen mat upptäcktes. Prova en annan bild eller beskrivning.';
	@override String get stepDefault => 'Analyserar din måltid…';
	@override String get progressUnderstand => 'Förstår din måltid';
	@override String get progressMatch => 'Söker upp näring för ingredienser';
	@override String get progressCheck => 'Kontrollerar portioner och säkerhet';
	@override String get progressMealType => 'Väljer måltidstyp';
	@override String get progressFinish => 'Beräknar kalorier och makron';
	@override String get detectedIngredientHeading => 'Ingredienser vi hittar';
	@override String ingredientsOverflow({required Object count}) => '${count} till';
	@override String ingredientsLine({required Object count}) => '${count} ingredienser upptäckta';
	@override String get ingredientsPending => 'Skannar ingredienser…';
	@override String mealPreviewDescription({required Object text}) => '”${text}”';
	@override String get offlineTip0 => 'Tips: Konsekvens slår perfektion — regelbunden registrering avslöjar de mönster som betyder något.';
	@override String get offlineTip1 => 'Tips: Naturligt ljus och en överblicksbild uppifrån hjälper portionsnoggrannheten.';
	@override String get offlineTip2 => 'Tips: Ange drycker, såser och matolja — de lägger ofta till kalorier som glöms bort.';
	@override String get offlineTip3 => 'Tips: En snabb portionsanteckning (1 skål, stor kaffe) gör uppskattningarna mycket skarpare.';
	@override String get offlineTip4 => 'Tips: Att registrera efter måltiden bygger fortfarande vana; perfektion är inte nödvändig.';
	@override String get offlineTip5 => 'Tips: Ange hur maten tillagats när det påverkar kalorierna mycket (stekt vs. ugnsbakad).';
}

// Path: meal.localInference
class _Translations$meal$localInference$sv extends Translations$meal$localInference$en {
	_Translations$meal$localInference$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Granska identifierade ingredienser';
	@override String get reviewSubtitle => 'Detta tolkades på din enhet. Korrigera namn eller portioner innan näringsvärdet beräknas.';
	@override String get mealName => 'Måltidsnamn';
	@override String get ingredient => 'Ingrediens';
	@override String get grams => 'Uppskattade gram';
	@override String get removeIngredient => 'Ta bort ingrediens';
	@override String get continueLabel => 'Fortsätt';
	@override String get invalidProposal => 'Lägg till minst en ingrediens och använd ett positivt antal gram.';
	@override String get localUnavailable => 'Analys på enheten är inte tillgänglig just nu.';
}

// Path: meal.feedback
class _Translations$meal$feedback$sv extends Translations$meal$feedback$en {
	_Translations$meal$feedback$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vad ser fel ut?';
	@override String get subtitle => 'Hjälp oss förbättra analysen genom att välja ett eller flera problem.';
	@override String get tellUsMore => 'Berätta mer';
	@override String get describeIncorrect => 'Beskriv vad som var fel';
	@override String get submit => 'Skicka';
	@override String get issueFoodIdentification => 'Identifiering av mat';
	@override String get issuePortionSize => 'Portionsstorlek';
	@override String get issueCalorieDistribution => 'Kalorifördelning';
	@override String get issueMacrosWrong => 'Makronäringsämnena är fel';
	@override String get issueMissingItems => 'Saknade artiklar';
	@override String get issueExtraItems => 'Extra artiklar';
	@override String get issueOther => 'Annat';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$sv extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Senaste';
	@override String get calories => 'Kalorier';
	@override String get alphabetical => 'A-Ö';
}

// Path: profile.sections
class _Translations$profile$sections$sv extends Translations$profile$sections$en {
	_Translations$profile$sections$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'BASINFORMATION';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
	@override String get calculatedValues => 'BERÄKNADE VÄRDEN';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$sv extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Dagsmål';
	@override String get calPerDay => 'cal/dag';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$sv extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSONUPPGIFTER';
	@override String get physicalMeasurements => 'FYSISKA MÅTT';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$sv extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get male => 'Man';
	@override String get female => 'Kvinna';
	@override String get other => 'Annat';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$sv extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$sv loseWeight = _Translations$editProfile$weightGoals$loseWeight$sv._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$sv maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$sv._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$sv gainWeight = _Translations$editProfile$weightGoals$gainWeight$sv._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$sv extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$sv sedentary = _Translations$editProfile$activityLevels$sedentary$sv._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$sv lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$sv._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$sv moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$sv._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$sv veryActive = _Translations$editProfile$activityLevels$veryActive$sv._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$sv extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$sv._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$sv extends Translations$settings$sections$en {
	_Translations$settings$sections$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'SPRÅK';
	@override String get notifications => 'NOTIFIKATIONER';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'ANALYS PÅ ENHETEN';
	@override String get supportAndLegal => 'SUPPORT & JURIDIK';
	@override String get about => 'OM';
	@override String get dangerZone => 'FARLIGT';
	@override String get developer => 'UTVECKLARE';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$sv extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Redigera profil';
	@override String get subtitle => 'Uppdatera dina personuppgifter';
}

// Path: settings.language
class _Translations$settings$language$sv extends Translations$settings$language$en {
	_Translations$settings$language$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Språk';
	@override String get subtitle => 'Välj ditt föredragna språk';
	@override String get searchHint => 'Sök språk...';
	@override String get noResults => 'Inga resultat';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$sv extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Enhet för längd';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$sv extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Enhet för vikt';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$sv extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidspåminnelser';
	@override String get subtitle => 'Håll kurs med tidsanpassade påminnelser';
}

// Path: settings.localInference
class _Translations$settings$localInference$sv extends Translations$settings$localInference$en {
	_Translations$settings$localInference$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidsanalys på enheten';
	@override String get subtitle => 'Tolka stödda måltider med Gemini Nano innan näringsvärdet beräknas';
	@override String get unavailable => 'Inte tillgängligt på denna enhet';
	@override String get rolloutUnavailable => 'Lämplig hårdvara hittades, men funktionen är inte aktiverad för denna appversion';
	@override String get modelSetup => 'Gemini Nano måste slutföra nedladdningen innan detta kan aktiveras';
	@override String get useLocalTitle => 'Använd analys på enheten';
	@override String get useLocalSubtitle => 'Resultaten kan vara mindre tillförlitliga för komplexa måltider.';
	@override String get disclosureTitle => 'Innan du aktiverar analys på enheten';
	@override String get disclosureBody => 'Gemini Nano kan identifiera ingredienser och uppskatta portioner på stödda Android-enheter. Ditt granskade ingrediensförslag skickas till Calorify för USDA-baserad näringsinformation och beräkning.';
	@override String get disclosureLimit1 => 'Komplexa rätter, dolda ingredienser och portionsstorlekar kan identifieras felaktigt.';
	@override String get disclosureLimit2 => 'Modellen kan vara otillgänglig under nedladdning, när den är upptagen, körs i bakgrunden eller begränsas av enheten.';
	@override String get disclosureLimit3 => 'Om den lokala tolkningen inte kan slutföras, skickar denna beta automatiskt din ursprungliga måltidsbeskrivning till Calorify för molnanalys.';
	@override String get acknowledgement => 'Jag förstår att jag bör granska identifierade ingredienser och portioner.';
	@override String get enable => 'Bekräfta och aktivera';
	@override String get cancel => 'Avbryt';
}

// Path: settings.theme
class _Translations$settings$theme$sv extends Translations$settings$theme$en {
	_Translations$settings$theme$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Ljust';
	@override String get dark => 'Mörkt';
	@override String get system => 'Systemstandard';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$sv extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skicka feedback';
	@override String subtitle({required Object appLabel}) => 'Hjälp oss förbättra ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} App-feedback';
	@override String get emailBodyPrefix => 'Vänligen lämna din feedback nedan:';
	@override String get appVersion => 'Appversion';
	@override String get device => 'Enhet';
	@override String get osVersion => 'OS-version';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$sv extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exportera måltidshistorik';
	@override String get subtitle => 'Dela en CSV med dina registrerade måltider';
	@override String get shareText => 'Din Calorify måltidshistorik export';
	@override String failed({required Object error}) => 'Kunde inte exportera måltidshistorik: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$sv extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Radera all data';
	@override String get subtitle => 'Radera Calorify-data som lagras på den här enheten';
	@override String get localOnlySubtitle => 'Radera Calorify-data som lagras på den här enheten';
	@override String get confirmationTitle => 'Radera all data?';
	@override String get confirmationMessage => 'Detta raderar loggade måltider, favoriter och profilinställningar permanent från den här enheten. Måltider som redan har delats med Health Connect och Health Connect-åtkomst hanteras separat under Inställningar > Health Connect.';
	@override String get localOnlyConfirmationMessage => 'Detta raderar loggade måltider, favoriter och profilinställningar permanent från den här enheten. Måltider som redan har delats med Health Connect och Health Connect-åtkomst hanteras separat under Inställningar > Health Connect.';
	@override String get cancel => 'Avbryt';
	@override String get clearEverything => 'Radera allt';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$sv extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Felsökningsalternativ';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$sv extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Visa och hantera behörigheter';
	@override late final _Translations$settings$healthConnect$unavailable$sv unavailable = _Translations$settings$healthConnect$unavailable$sv._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$sv updateRequired = _Translations$settings$healthConnect$updateRequired$sv._(_root);
	@override late final _Translations$settings$healthConnect$permissions$sv permissions = _Translations$settings$healthConnect$permissions$sv._(_root);
	@override String get managePermissions => 'Hantera behörigheter';
	@override String get openSettings => 'Öppna Health Connect‑inställningar';
	@override String get disconnect => 'Koppla från Health Connect';
	@override String get disconnectConfirmationTitle => 'Koppla från Health Connect?';
	@override String get disconnectConfirmationMessage => 'Calorify förlorar åtkomsten till Health Connect. Data som redan har skrivits där raderas inte.';
	@override String get disconnectConfirmationAction => 'Koppla från';
	@override String get deleteSyncedMeals => 'Radera Calorify-måltider från Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Radera synkroniserade måltider?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Vill du radera måltider som synkroniserats av den här versionen av Calorify från Health Connect? Din lokala måltidslogg ändras inte. Äldre Calorify-poster kan fortfarande behöva tas bort via Hantera data i Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Radera synkroniserade måltider';
	@override String get deleteSyncedMealsSuccess => 'Calorify-måltider raderades från Health Connect.';
	@override String get deleteSyncedMealsFailed => 'Synkroniserade måltider kunde inte raderas. Försök igen.';
	@override String get connectionPartial => 'Vissa Health Connect-funktioner är aktiverade.';
	@override String get connectionComplete => 'Båda Health Connect-funktionerna är aktiverade.';
	@override String get actionFailed => 'Health Connect kunde inte öppnas. Försök igen.';
	@override String get requestPermissions => 'Begär behörigheter';
	@override String get permissionRequestCancelledOrFailed => 'Behörighetsförfrågan avbröts eller misslyckades. Försök igen eller ge behörigheter manuellt i Health Connect‑inställningarna.';
	@override String get permissionRequestFailed => 'Kunde inte begära behörigheter. Försök igen eller ge behörigheter manuellt i Health Connect‑inställningarna.';
	@override String get requestingPermissions => 'Begär…';
}

// Path: settings.about
class _Translations$settings$about$sv extends Translations$settings$about$en {
	_Translations$settings$about$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om';
	@override String get tagline => 'Snabbt, gratis och integritetsfokuserad kalorimedvetenhet';
	@override late final _Translations$settings$about$ourStory$sv ourStory = _Translations$settings$about$ourStory$sv._(_root);
	@override late final _Translations$settings$about$privacy$sv privacy = _Translations$settings$about$privacy$sv._(_root);
	@override late final _Translations$settings$about$developer$sv developer = _Translations$settings$about$developer$sv._(_root);
	@override late final _Translations$settings$about$feedback$sv feedback = _Translations$settings$about$feedback$sv._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$sv extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify version ${version}';
	@override String build({required Object buildNumber}) => 'Bygg ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$sv extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Frukostdags! 🍳';
	@override String get body => 'Glöm inte att registrera din frukost';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$sv extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lunchdags! 🥗';
	@override String get body => 'Dags att registrera din lunch';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$sv extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Middagsdags! 🍽️';
	@override String get body => 'Glöm inte att registrera din middag';
}

// Path: notifications.snack
class _Translations$notifications$snack$sv extends Translations$notifications$snack$en {
	_Translations$notifications$snack$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mellanmålsdags! 🍎';
	@override String get body => 'Dags för ett hälsosamt mellanmål';
}

// Path: notifications.test
class _Translations$notifications$test$sv extends Translations$notifications$test$en {
	_Translations$notifications$test$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testmeddelande';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$sv extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} ger uppskattad näringsinformation. Noggrannheten beror på din inmatning och matvarianters variation. Använd som vägledning, inte som slutgiltig källa. Rådgör med en professionell för personliga kostråd.';
	@override late final _Translations$disclaimer$snap$portionSize$sv portionSize = _Translations$disclaimer$snap$portionSize$sv._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$sv preparationMethods = _Translations$disclaimer$snap$preparationMethods$sv._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$sv ingredients = _Translations$disclaimer$snap$ingredients$sv._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$sv databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$sv._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$sv extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om viktuppskattningen';
	@override String get description => 'Den beräknade viktförändringen är en teoretisk uppskattning baserad på den enkla kalorier-in- vs kalorier-ut‑modellen. Den är avsedd som motivationsvägledning, inte som en prognos för din faktiska vikt.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$sv calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$sv._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$sv biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$sv._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$sv waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$sv._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$sv professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$sv._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$sv extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get description => 'Dessa mått hjälper dig förstå kroppens energibehov och vägleda dina näringsmål.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$sv bmr = _Translations$disclaimer$healthMetrics$bmr$sv._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$sv tdee = _Translations$disclaimer$healthMetrics$tdee$sv._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$sv dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$sv._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$sv extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uppskattning av kaloriförbrukning';
	@override String get description => 'När Health Connect-data inte är tillgänglig uppskattar vi dagens förbrända kalorier med hjälp av din BMR och aktivitetsnivå (TDEE), skalat för den del av dagen som har gått.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$sv howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$sv._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$sv professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$sv._(_root);
}

// Path: watch.common
class _Translations$watch$common$sv extends Translations$watch$common$en {
	_Translations$watch$common$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get back => 'Tillbaka';
	@override String get cancel => 'Avbryt';
	@override String get delete => 'Ta bort';
	@override String get retry => 'Försök igen';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$sv extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Näringsämne';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} gram';
	@override String get protein => 'Protein';
	@override String get carbs => 'Kolhydrater';
	@override String get fat => 'Fett';
	@override String get fiber => 'Fibrer';
}

// Path: watch.sync
class _Translations$watch$sync$sv extends Translations$watch$sync$en {
	_Translations$watch$sync$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Synkronisera med telefon';
	@override String get syncing => 'Synkroniserar…';
	@override String get synced => 'Synkroniserad';
	@override String get syncedJustNow => 'Synkroniserad nyss';
	@override String syncedMinutesAgo({required Object minutes}) => 'Synkroniserad ${minutes}m sedan';
	@override String get failed => 'Synkronisering misslyckades';
	@override String get phoneDisconnected => 'Telefon frånkopplad';
	@override String get tapToSync => 'Tryck för att synkronisera';
	@override String get refreshFailed => 'Kunde inte uppdatera. Kontrollera din telefon.';
	@override String get openPhone => 'Öppna Calorify på din telefon och tryck sedan på uppdatera.';
}

// Path: watch.home
class _Translations$watch$home$sv extends Translations$watch$home$en {
	_Translations$watch$home$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get today => 'Idag';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} kcal intagna av ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} över målet';
	@override String remaining({required Object calories}) => '${calories} återstår';
	@override String left({required Object calories}) => '${calories} kvar';
	@override String goal({required Object calories}) => '${calories} kcal mål';
	@override String get logMeal => 'Logga en måltid';
	@override String get todayMeals => 'Dagens måltider';
	@override String todayMealsCount({required Object count}) => 'Dagens måltider, ${count}';
	@override String viewMore({required Object count}) => 'Visa ${count} till';
	@override String viewMoreSemantics({required Object count}) => '${count} ytterligare måltider, tryck för att se alla';
	@override String get noMeals => 'Inga måltider registrerade';
	@override String get noMealsSemantics => 'Inga måltider registrerade idag';
	@override String get tapLog => 'Tryck på Logga för att börja';
	@override String get removedFromQueue => 'Måltid borttagen från offline-kön.';
	@override String get removedOffline => 'Måltid borttagen offline. Den synkroniseras när din telefon kopplar upp igen.';
	@override String get deleteFailed => 'Kunde inte ta bort måltid';
}

// Path: watch.history
class _Translations$watch$history$sv extends Translations$watch$history$en {
	_Translations$watch$history$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens måltider';
	@override String get refresh => 'Uppdatera måltider';
	@override String get loadFailed => 'Kunde inte ladda måltider';
	@override String get syncFailed => 'Kunde inte synkronisera';
	@override String get emptyTitle => 'Inga måltider än';
	@override String get emptyMessage => 'Logga en måltid från Hem för att se den här.';
}

// Path: watch.favorites
class _Translations$watch$favorites$sv extends Translations$watch$favorites$en {
	_Translations$watch$favorites$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriter';
	@override String get refresh => 'Uppdatera favoriter';
	@override String get loadFailed => 'Kunde inte ladda favoriter';
	@override String get syncFailed => 'Kunde inte synkronisera';
	@override String get emptyTitle => 'Inga favoriter än';
	@override String get emptyMessage => 'Markera måltider med en stjärna i telefonappen för att logga dem här med ett tryck.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} kcal. Tryck för att logga.';
	@override String logged({required Object name}) => '${name} registrerad!';
	@override String savedOffline({required Object name}) => '${name} sparad offline. Den synkroniseras när din telefon kopplar upp igen.';
	@override String get saveFailed => 'Kunde inte spara måltiden. Försök igen.';
	@override String get log => 'Logga';
}

// Path: watch.meal
class _Translations$watch$meal$sv extends Translations$watch$meal$en {
	_Translations$watch$meal$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kcal, registrerad kl ${time}.';
	@override String get longPressDelete => 'Håll ned för att ta bort.';
	@override String get deleteTitle => 'Ta bort måltid?';
}

// Path: watch.voice
class _Translations$watch$voice$sv extends Translations$watch$voice$en {
	_Translations$watch$voice$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Röstinspelning för måltid';
	@override String get processing => 'Analyserar din måltid…';
	@override String get processingDescription => 'Beräknar portioner och näringsinnehåll';
	@override String get listening => 'Lyssnar';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Stoppa inspelning';
	@override String get start => 'Tryck för att starta inspelning';
	@override String get starting => 'Startar mikrofonen…';
	@override String get prompt => 'Tryck och beskriv sedan din måltid';
	@override String get tapToRetry => 'Tryck för att försöka igen';
	@override String get example => 'Försök med ”2 rotis med dal”';
	@override String get unavailable => 'Röstinmatning är inte tillgänglig. Kontrollera mikrofonens behörighet i klockans inställningar.';
	@override String get didNotStart => 'Mikrofonen startade inte. Tryck för att försöka igen.';
	@override String get startFailed => 'Kunde inte starta inspelningen. Kontrollera mikrofonbehörigheter.';
	@override String get allowMicrophone => 'Tillåt åtkomst till mikrofonen för att logga måltider med röst.';
	@override String get needsConnection => 'Röstigenkänning kräver en anslutning. Tryck för att försöka igen.';
	@override String get microphoneUnavailable => 'Mikrofonen är inte tillgänglig. Tryck för att försöka igen.';
	@override String get microphoneBusy => 'Mikrofonen är upptagen. Vänta en stund och försök igen.';
	@override String get languageUnsupported => 'Röstinmatning stöder inte klockans språk.';
	@override String get temporarilyBusy => 'Röstinmatning är tillfälligt upptagen. Vänta en stund och försök igen.';
	@override String get notRecognized => 'Jag uppfattade inte det. Tryck på mikrofonen och försök igen.';
	@override String get noSpeech => 'Ingen tal upptäckt. Tryck på mikrofonen för att försöka igen.';
	@override String get analysisFailed => 'Analys misslyckades. Försök igen.';
	@override String get mealNotIdentified => 'Kunde inte identifiera måltiden. Försök beskriva den på ett annat sätt.';
}

// Path: watch.result
class _Translations$watch$result$sv extends Translations$watch$result$en {
	_Translations$watch$result$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidsdetaljer';
	@override String get savedOffline => 'Sparad offline';
	@override String get logged => 'Registrerad!';
	@override String get mealFound => 'Måltid hittad';
	@override String get estimatedEnergy => 'Uppskattad energi';
	@override String get logMeal => 'Logga måltid';
	@override String get logging => 'Loggar…';
	@override String get logAnother => 'Logga en till';
	@override String get goingBack => 'Går tillbaka…';
	@override String get savedOfflineMessage => 'Måltid sparad offline. Den synkroniseras när din telefon kopplar upp igen.';
	@override String get saveFailed => 'Kunde inte spara måltiden. Försök igen.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$sv extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Smart matigenkänning';
	@override String get description => 'Ta ett foto och låt AI identifiera din måltid';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$sv extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-analys';
	@override String get description => 'Få omedelbara näringsfakta från dina beskrivningar';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$sv extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integration med Health Connect';
	@override String get description => 'Anslut till Health Connect för bättre insikter';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$sv extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervikt';
	@override String get healthyWeight => 'Normalvikt';
	@override String get overweight => 'Övervikt';
	@override String get obese => 'Fetma';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$sv extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Vi kan hjälpa dig bygga en hälsosam plan för att nå en balanserad vikt med näringstäta måltider.';
	@override String get healthy => 'Bra jobbat! Du ligger i ett hälsosamt spann. Vi hjälper dig behålla energi och vitalitet.';
	@override String overweight({required Object appLabel}) => '${appLabel} förenklar din resa med AI-driven spårning för att hjälpa dig nå ditt mål i en bekväm takt.';
	@override String get obese => 'Vi finns här för att stödja dig med personliga råd och hållbara strategier för dina hälsomål.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$sv extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Förbrända kalorier';
	@override String get description => 'Läs dagens totala kaloriförbränning från Health Connect';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$sv extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Förbrända kalorier';
	@override String get description => 'Läs dagens totala kaloriförbränning från Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$sv extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dela loggade måltider';
	@override String get description => 'Skriv måltider som du loggar i Calorify till Health Connect';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$sv extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dela loggade måltider';
	@override String get description => 'Skriv måltider som du loggar i Calorify till Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$sv extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du har kontrollen';
	@override String get description => 'Välj valfri behörighet och ändra åtkomsten när som helst';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$sv extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du har kontrollen';
	@override String get description => 'Välj valfri behörighet och ändra åtkomsten när som helst';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$sv extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du är inte ensam';
	@override String get genericMessage => 'Forskning visar att konsekvent registrering är den främsta faktorn för långsiktig framgång.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'För en ${age}-årig ${gender} som vill ${goal} är konsekvent registrering den främsta framgångsfaktorn.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} gör det tio gånger enklare än att göra det manuellt.';
	@override String get getStartedTitle => 'Redo att komma igång?';
	@override String get tipPhoto => 'Ta ett foto av dina måltider för omedelbar analys';
	@override String get tipConsistency => 'Registrera regelbundet för att se verklig framgång';
	@override String get tipProgress => 'Följ dina framsteg dagligen för att hålla motivationen uppe';
	@override String get button => 'Kör igång';
	@override String get defaultGender => 'person';
	@override String get defaultGoal => 'en hälsosammare du';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$sv extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din hälsoprofil';
	@override String bmiDescription({required Object bmi}) => 'Baserat på dina mått är ditt BMI ${bmi}.';
	@override String get finalizeDescription => 'Låt oss slutföra din profil för att anpassa upplevelsen.';
	@override String get goalGain => 'gå upp';
	@override String get goalLose => 'gå ner';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'För att nå ditt mål kommer du att ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Du har nått din målvikt! Vi hjälper dig att behålla den.';
	@override String get button => 'Kör igång';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$sv extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Utmärkt start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har tagit första steget mot ${goalText}. Eftersom du är ${activityText} kommer ${appLabel} att justera dina mål efter din livsstil.';
	@override String get personalizedTargets => 'Personliga kalorimål';
	@override String get aiMealDetection => 'AI‑driven måltidsigenkänning';
	@override String get macroBreakdowns => 'Detaljerad fördelning av makronutrienter';
	@override String get button => 'Kör igång';
	@override String get defaultGoal => 'dina mål';
	@override String get defaultActivity => 'aktiv';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$sv extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gå ner i vikt';
	@override String get description => 'Skapa kaloriunderskott för att gå ner i vikt';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$sv extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Behåll vikt';
	@override String get description => 'Behåll din nuvarande vikt';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$sv extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gå upp i vikt';
	@override String get description => 'Skapa ett kaloriöverskott för att gå upp i vikt';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$sv extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Inaktiv';
	@override String get description => 'Lite eller ingen träning';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$sv extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lätt aktiv';
	@override String get description => 'Lätt träning 1–3 dagar/vecka';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$sv extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Måttligt aktiv';
	@override String get description => 'Måttlig träning 3–5 dagar/vecka';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$sv extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mycket aktiv';
	@override String get description => 'Hård träning 6–7 dagar/vecka';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$sv extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extremt aktiv';
	@override String get description => 'Mycket hård träning eller fysiskt krävande arbete';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$sv extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect är otillgängligt';
	@override String get description => 'Health Connect stöds inte på den här enheten.';
	@override String get unsupportedDescription => 'Health Connect stöds inte på den här enheten.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$sv extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect behöver åtgärdas';
	@override String get description => 'Installera eller uppdatera Health Connect innan du hanterar åtkomst.';
	@override String get action => 'Installera eller uppdatera';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$sv extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Behörigheter';
	@override String get description => 'Följande behörigheter begärs för att möjliggöra integration med Health Connect:';
	@override String get granted => 'Beviljad';
	@override String get notGranted => 'Inte beviljad';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$sv caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$sv._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$sv nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$sv._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$sv nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$sv._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$sv extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vår berättelse';
	@override String content({required Object appLabel}) => '${appLabel} föddes ur en enkel frustration: de flesta kalorispårningsappar är antingen överdrivet komplicerade, kräver ständig manuell inmatning, tar höga abonnemangsavgifter eller kompromissar med integriteten.\n\nSom ensam utvecklare ville jag skapa något enklare och mer rättvist — en app som använder AI för att minska arbetet, är snabb och gratis att använda, och som behandlar din hälsodata med respekt.\n\n${appLabel} är appen jag önskat fanns: inga konton, ingen spårning, inga annonser — bara tydliga, praktiska insikter och dina hälsomål.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$sv extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din integritet är viktig';
	@override String get description => 'Integritet är inte en eftertanke — det är en designprincip. Detta innebär i praktiken:';
	@override String get noAccounts => 'Inga konton krävs\nAnvänd appen omedelbart. Ingen registrering, inga konton.';
	@override String noTracking({required Object appLabel}) => 'Begränsad analys och diagnostik\n${appLabel} använder grundläggande apphändelser och kraschdiagnostik för att förbättra tillförlitligheten. Värden i hälsoposter används inte för reklam och säljs inte.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Begränsad analys och diagnostik\n${appLabel} använder grundläggande apphändelser och kraschdiagnostik för att förbättra tillförlitligheten. Värden i hälsoposter används inte för reklam och säljs inte.';
	@override String noAds({required Object appLabel}) => 'Annonsfritt av design\n${appLabel} är byggt för att fungera utan annonser eller datadriven monetisering.';
	@override String get noDataSelling => 'Ingen försäljning av data\nDin hälsodata säljs eller delas aldrig med tredje part.';
	@override String get localStorage => 'Lagring lokalt i första hand\nDin data stannar på din enhet.';
	@override String get privacyPolicy => 'Integritetspolicy';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$sv extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Byggd av en ensam utvecklare';
	@override String description({required Object appLabel}) => '${appLabel} är byggd och underhållen av en ensam utvecklare med fokus på att skapa lugn, integritetsrespekterande hälso­mjukvara.\n\nFeedback läses personligen och hjälper forma appens riktning.';
	@override String get website => 'Webbplats';
	@override String get email => 'E-post';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$sv extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Gillar du ${appLabel}?';
	@override String description({required Object appLabel}) => 'Din feedback hjälper göra ${appLabel} bättre för alla.';
	@override String get rateApp => 'Betygsätt på Play Store';
	@override String get sendFeedback => 'Skicka feedback';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$sv extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Portionsstorlek';
	@override String get description => 'Uppskattningarnas noggrannhet beror i hög grad på din korrekta bedömning av portionsstorleken.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$sv extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tillagningsmetoder';
	@override String description({required Object appLabel}) => 'Tillagningsmetoder kan avsevärt ändra näringsinnehållet. ${appLabel}s uppskattningar tar inte alltid hänsyn till dessa variationer.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$sv extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredienser';
	@override String get description => 'Komplexa rätter med många dolda ingredienser kan leda till mindre precisa uppskattningar.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$sv extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Databasbegränsningar';
	@override String description({required Object appLabel}) => '${appLabel}s livsmedelsdatabas är omfattande men kanske inte innehåller varje enskild livsmedelsvara eller variant.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$sv extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorinoggrannhet';
	@override String get description => 'Denna uppskattning är bara så korrekt som din registrerade kalorimängd och förbrukning. Felaktig registrering ger en felaktig prognos.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$sv extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiska faktorer';
	@override String description({required Object appLabel}) => 'Verklig viktminskning/-ökning påverkas av ämnesomsättning, hormoner, sömn, stress, hydrering och andra individuella faktorer som ${appLabel} inte kan mäta.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$sv extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vätskevikt & fluktuationer';
	@override String get description => 'Normal daglig vikt kan variera betydligt på grund av vätskeretention, matsmältning och tidpunkt. Uppskattningen tar inte hänsyn till dessa dagliga förändringar.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$sv extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionell vägledning';
	@override String get description => 'Använd inte denna uppskattning för medicinska beslut. Rådgör alltid med en vårdprofessionell eller legitimerad dietist för personliga råd om viktkontroll.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$sv extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basalmetabolismen (BMR) är det antal kalorier din kropp förbrukar i vila för att upprätthålla grundläggande funktioner som andning och cirkulation. BMR beror på din ålder, kön, längd och vikt. Ett högre BMR innebär att kroppen naturligt förbränner fler kalorier i vila, ofta på grund av mer muskelmassa, yngre ålder eller manligt kön. Ett lägre BMR indikerar vanligtvis mindre muskelmassa, högre ålder eller kvinnligt kön.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$sv extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total daglig energiförbrukning (TDEE) är de totala kalorier du förbrukar per dag, inklusive BMR plus kalorier från fysisk aktivitet och vardagsrörelse. TDEE beror på ditt BMR och aktivitetsnivå. Ett högre TDEE innebär att du förbränner fler kalorier totalt, ofta genom att vara mer aktiv eller ha högre BMR. Ett lägre TDEE tyder på mindre daglig aktivitet eller lägre BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$sv extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagsmål';
	@override String get description => 'Dagsmål är ditt rekommenderade dagliga kaloriintag baserat på din TDEE och ditt viktmål. För viktminskning konsumerar du färre kalorier än din TDEE. För viktunderhåll matchar du din TDEE. För viktuppgång konsumerar du fler kalorier än din TDEE. Detta hjälper dig nå önskad viktförändring i en hälsosam takt.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$sv extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hur uppskattningen beräknas';
	@override String get description => 'Vi beräknar din TDEE (baserat på din profil) och multiplicerar den med den andel av dagen som förflutit (timmar + minuter) / 24 för att uppskatta hur många kalorier som förbrukats hittills.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$sv extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionell vägledning';
	@override String get description => 'Använd inte denna uppskattning för medicinska beslut. Rådgör alltid med en vårdprofessionell eller legitimerad dietist för personliga råd.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$sv extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Läs total förbrända kalorier';
	@override String get description => 'Tillåter appen att läsa dina totala förbrända kalorier från Health Connect.';
	@override String get usage => 'Denna behörighet används för att visa din dagliga kalori­förbränning i appen och hjälper dig förstå din totala energiförbrukning under dagen.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$sv extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Läs näringsdata';
	@override String get description => 'Tillåter appen att läsa näringsdata från Health Connect.';
	@override String get usage => 'Denna behörighet låter appen läsa näringsinformation som kan ha loggats av andra appar anslutna till Health Connect, vilket ger en helhetsbild av din nutrition.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$sv extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$sv._(TranslationsSv root) : this._root = root, super.internal(root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skriv näringsdata';
	@override String get description => 'Tillåter appen att skriva näringsdata till Health Connect.';
	@override String get usage => 'Denna behörighet låter appen synka dina registrerade måltider till Health Connect så att din näringsdata blir tillgänglig för andra hälso‑ och träningsappar du använder.';
}

/// The flat map containing all translations for locale <sv>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsSv {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Svenska',
			'flag' => '🇸🇪',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Du har gjort för många förfrågningar. Vänta en stund och försök igen.',
			'errors.networkError' => 'Nätverksfel. Kontrollera din internetanslutning.',
			'errors.unknownError' => 'Något gick fel. Försök igen senare.',
			'errors.loadingProfileData' => 'Fel vid inläsning av profildata',
			'errors.somethingWentWrong' => 'Något gick fel.',
			'errors.retry' => 'Försök igen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Välkommen till ${appLabel}',
			'onboarding.subtitle' => 'Din personliga näringskompis med AI',
			'onboarding.getStarted' => 'Kom igång',
			'onboarding.features.foodRecognition.title' => 'Smart matigenkänning',
			'onboarding.features.foodRecognition.description' => 'Ta ett foto och låt AI identifiera din måltid',
			'onboarding.features.aiAnalysis.title' => 'AI-analys',
			'onboarding.features.aiAnalysis.description' => 'Få omedelbara näringsfakta från dina beskrivningar',
			'onboarding.features.healthIntegration.title' => 'Integration med Health Connect',
			'onboarding.features.healthIntegration.description' => 'Anslut till Health Connect för bättre insikter',
			'onboarding.gender.title' => 'Vilket kön har du?',
			'onboarding.gender.description' => 'Kön hjälper oss att noggrant beräkna din basalmetabolism (BMR).',
			'onboarding.gender.next' => 'Nästa',
			'onboarding.height.title' => 'Hur lång är du?',
			'onboarding.height.description' => 'Din längd hjälper oss att räkna ut din BMI och energibehov på ett korrekt sätt.',
			'onboarding.height.metric' => 'Metriskt',
			'onboarding.height.imperial' => 'Imperialt',
			'onboarding.height.next' => 'Nästa',
			'onboarding.weight.currentTitle' => 'Vad är din nuvarande vikt?',
			'onboarding.weight.currentDescription' => 'Din nuvarande vikt är viktig för att anpassa dina dagliga mål.',
			'onboarding.weight.targetTitle' => 'Vad är din målvikt?',
			'onboarding.weight.targetDescription' => 'Att ange en målvikt hjälper oss att bestämma din långsiktiga plan.',
			'onboarding.weight.metric' => 'Metriskt',
			'onboarding.weight.imperial' => 'Imperialt',
			'onboarding.weight.next' => 'Nästa',
			'onboarding.age.title' => 'När fyller du år?',
			'onboarding.age.description' => 'Din ålder hjälper oss att beräkna ditt kaloribehov korrekt.',
			'onboarding.age.next' => 'Nästa',
			'onboarding.bmiScale.underweight' => 'Underviktig',
			'onboarding.bmiScale.healthy' => 'Normal',
			'onboarding.bmiScale.overweight' => 'Över',
			'onboarding.bmiScale.obese' => 'Fetma',
			'onboarding.bmiScale.categories.underweight' => 'Undervikt',
			'onboarding.bmiScale.categories.healthyWeight' => 'Normalvikt',
			'onboarding.bmiScale.categories.overweight' => 'Övervikt',
			'onboarding.bmiScale.categories.obese' => 'Fetma',
			'onboarding.bmiScale.messages.underweight' => 'Vi kan hjälpa dig bygga en hälsosam plan för att nå en balanserad vikt med näringstäta måltider.',
			'onboarding.bmiScale.messages.healthy' => 'Bra jobbat! Du ligger i ett hälsosamt spann. Vi hjälper dig behålla energi och vitalitet.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} förenklar din resa med AI-driven spårning för att hjälpa dig nå ditt mål i en bekväm takt.',
			'onboarding.bmiScale.messages.obese' => 'Vi finns här för att stödja dig med personliga råd och hållbara strategier för dina hälsomål.',
			'onboarding.weightGoal.title' => 'Vad är ditt mål?',
			'onboarding.weightGoal.description' => 'Välj det mål som bäst beskriver vad du vill uppnå',
			'onboarding.activityLevel.title' => 'Hur aktiv är du?',
			'onboarding.activityLevel.description' => 'Detta hjälper oss att räkna ut ditt dagliga kaloribehov mer exakt',
			'onboarding.healthConnect.title' => 'Anslut till Health Connect',
			'onboarding.healthConnect.description' => 'Använd förbrända kalorier i ditt dagsmål och dela valfritt loggade måltider med Health Connect.',
			'onboarding.healthConnect.overviewDescription' => 'Använd förbrända kalorier i ditt dagsmål och dela valfritt loggade måltider med Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Förbrända kalorier',
			'onboarding.healthConnect.automaticTracking.description' => 'Läs dagens totala kaloriförbränning från Health Connect',
			'onboarding.healthConnect.caloriesBurned.title' => 'Förbrända kalorier',
			'onboarding.healthConnect.caloriesBurned.description' => 'Läs dagens totala kaloriförbränning från Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Dela loggade måltider',
			'onboarding.healthConnect.progressInsights.description' => 'Skriv måltider som du loggar i Calorify till Health Connect',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Dela loggade måltider',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Skriv måltider som du loggar i Calorify till Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Du har kontrollen',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Välj valfri behörighet och ändra åtkomsten när som helst',
			'onboarding.healthConnect.userControl.title' => 'Du har kontrollen',
			'onboarding.healthConnect.userControl.description' => 'Välj valfri behörighet och ändra åtkomsten när som helst',
			'onboarding.healthConnect.connected' => 'Health Connect anslutet',
			'onboarding.healthConnect.notConnected' => 'Health Connect inte anslutet',
			'onboarding.healthConnect.setup' => 'Ställ in Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Hoppa över för nu',
			'onboarding.healthConnect.statusConnected' => 'Health Connect är anslutet.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect är nu anslutet!',
			'onboarding.healthConnect.statusNotConnected' => 'Välj vilka Health Connect-funktioner du vill aktivera.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect är delvis anslutet. Aktivera den återstående behörigheten för att använda båda funktionerna.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Installera eller uppdatera Health Connect för att fortsätta.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect stöds inte på den här enheten.',
			'onboarding.healthConnect.installOrUpdate' => 'Installera eller uppdatera',
			'onboarding.healthConnect.manageAccess' => 'Hantera åtkomst',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Behörighet nekad. Aktivera Health Connect-behörigheter i telefonens inställningar för ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Fel vid inställning av Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Du är inte ensam',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Forskning visar att konsekvent registrering är den främsta faktorn för långsiktig framgång.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'För en ${age}-årig ${gender} som vill ${goal} är konsekvent registrering den främsta framgångsfaktorn.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} gör det tio gånger enklare än att göra det manuellt.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Redo att komma igång?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Ta ett foto av dina måltider för omedelbar analys',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Registrera regelbundet för att se verklig framgång',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Följ dina framsteg dagligen för att hålla motivationen uppe',
			'onboarding.reinforcement.trackingSuccess.button' => 'Kör igång',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'person',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'en hälsosammare du',
			'onboarding.reinforcement.healthProfile.title' => 'Din hälsoprofil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Baserat på dina mått är ditt BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Låt oss slutföra din profil för att anpassa upplevelsen.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'gå upp',
			'onboarding.reinforcement.healthProfile.goalLose' => 'gå ner',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'För att nå ditt mål kommer du att ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Du har nått din målvikt! Vi hjälper dig att behålla den.',
			'onboarding.reinforcement.healthProfile.button' => 'Kör igång',
			'onboarding.reinforcement.goalLifestyle.title' => 'Utmärkt start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har tagit första steget mot ${goalText}. Eftersom du är ${activityText} kommer ${appLabel} att justera dina mål efter din livsstil.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personliga kalorimål',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI‑driven måltidsigenkänning',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaljerad fördelning av makronutrienter',
			'onboarding.reinforcement.goalLifestyle.button' => 'Kör igång',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'dina mål',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiv',
			'tabs.dashboard' => 'Översikt',
			'tabs.history' => 'Historik',
			'home.aiSummary.title' => 'Din AI-översikt',
			'home.aiSummary.logMore' => 'Registrera fler måltider de kommande dagarna för att få personliga AI‑insikter.',
			'home.aiSummary.loading' => 'Läser in din översikt...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} måltider registrerade',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balanspoäng ${score}',
			'home.aiSummary.topFoods' => 'Vanligaste livsmedel',
			'home.aiSummary.trendUp' => 'Kalorier ökar',
			'home.aiSummary.trendDown' => 'Kalorier minskar',
			'home.aiSummary.trendSteady' => 'Kalorier stabila',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Uppdaterad ${time}',
			'home.dailyGoal.title' => 'Sätt ditt dagliga mål',
			'home.dailyGoal.titleSet' => 'Ditt dagliga mål',
			'home.dailyGoal.description' => 'Redo att börja din hälsoresa? Ange ditt dagliga kalorimål nedan för att komma igång.',
			'home.dailyGoal.descriptionSet' => 'Din kompass är inställd! Detta är ditt dagliga kalorimål som guidar dig.',
			'home.dailyGoal.yourGoal' => 'Ditt mål',
			'home.dailyGoal.goal' => 'Mål',
			'home.dailyGoal.dailyCalories' => 'Dagliga kalorier (kcal)',
			'home.dailyGoal.setGoal' => 'Ställ in mål',
			'home.dailyGoal.intake' => 'Intag',
			'home.dailyGoal.burned' => 'Förbränt',
			'home.dailyGoal.weightImpact' => 'Viktpåverkan',
			'home.dailyGoal.estLoss' => 'Beräknad minskning med',
			'home.dailyGoal.estGain' => 'Beräknad ökning med',
			'home.dailyGoal.kcal' => 'kilokalorier (kcal)',
			'home.dailySummary.title' => 'Dagsammanfattning',
			'home.dailySummary.calories' => 'Kalorier',
			'home.dailySummary.carbs' => 'Kolhydrater',
			'home.dailySummary.protein' => 'Proteiner',
			'home.dailySummary.fat' => 'Fett',
			'home.dailySummary.fiber' => 'Fibrer',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Makronutrientdiagram',
			'home.intakeProgress.title' => 'Dagens makrofördelning',
			'home.intakeProgress.target' => 'Mål',
			'home.intakeProgress.current' => 'Aktuellt',
			'home.intakeHistory.title' => '7‑dagars makrohistorik',
			'home.intakeHistory.trendTitle' => 'Dagens trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Topp: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Ingen historik än',
			'home.intakeHistory.startLogging' => 'Börja registrera måltider för att se dina\n7‑dagars makrotrender här',
			'home.mealLog.title' => 'Registrerade måltider',
			'home.mealLog.emptyMessage' => 'Ta ett foto av din senaste måltid för att registrera den här.',
			'home.mealLog.noMealsToday' => 'Inga måltider registrerade idag',
			'home.mealLog.seeAllMeals' => 'Se alla måltider',
			'home.mealDescription.title' => 'Snabbtillägg med AI',
			'home.mealDescription.description' => 'Beskriv din måltid så sköter AI detaljerna.',
			'home.mealDescription.hint' => 't.ex. Till frukost åt jag en stor skål gröt med en skivad banan och en skopa vassle ...',
			'home.mealDescription.analyzeMeal' => 'Analysera måltid',
			'home.favoriteMeals.title' => 'Favoritmåltider',
			'home.favoriteMeals.description' => 'Lägg snabbt till en av dina favoriträtter.',
			'home.favoriteMeals.noFavorites' => 'Inga favoritmåltider ännu.',
			'home.favoriteMeals.addFavoriteHint' => 'Klicka på stjärnan på en måltid för att markera som favorit.',
			'home.favoriteMeals.seeAll' => 'Visa alla',
			'home.favoriteMeals.add' => 'Lägg till',
			'home.mealSnap.title' => 'Fotografera & registrera din måltid',
			'home.mealSnap.description' => 'Använd kameran för att ta en bild av din mat för AI‑analys.',
			'home.mealSnap.openCamera' => 'Öppna kamera',
			'home.mealSnap.gallery' => 'Galleri',
			'home.mealSnap.compressingPhoto' => 'Optimerar bild…',
			'home.mealSnap.uploadingPhoto' => 'Laddar upp bild…',
			'home.connectHealth.title' => 'Synka med Health Connect',
			'home.connectHealth.description' => 'Använd förbrända kalorier i ditt mål och dela loggade måltider',
			'home.connectHealth.install' => 'Installera eller uppdatera',
			'home.connectHealth.dataUseDescription' => 'Använd förbrända kalorier i ditt mål och dela loggade måltider',
			'home.connectHealth.installOrUpdate' => 'Installera eller uppdatera',
			'home.connectHealth.connect' => 'Anslut',
			'history.noMeals' => 'Inga måltider registrerade',
			'history.emptyMessage' => 'Ta ett foto av din senaste måltid för att registrera den här.',
			'history.today' => 'Idag',
			'history.yesterday' => 'Igår',
			'meal.ohNo' => 'Åh nej!',
			'meal.delete' => 'Ta bort',
			'meal.editMeal' => 'Redigera måltid',
			'meal.addMeal' => 'Lägg till måltid',
			'meal.saveMeal' => 'Spara måltid',
			'meal.save' => 'Spara',
			'meal.mealName' => 'Måltidens namn',
			'meal.mealNameHint' => 't.ex., Äggröra med rostat bröd',
			'meal.nameRequired' => 'Ange ett namn för måltiden innan du sparar.',
			'meal.mealQuantity' => 'Portionsstorlek',
			'meal.mealQuantityHint' => 't.ex., 1 skål, 2 skivor',
			'meal.timeOfMeal' => 'Tid för måltid',
			'meal.timeOfMealHint' => 'Välj vilken tid du åt måltiden',
			'meal.mealType' => 'Måltidstyp',
			'meal.nutrition.calories' => 'Kalorier',
			'meal.nutrition.carbs' => 'Kolhydrater (g)',
			'meal.nutrition.protein' => 'Proteiner (g)',
			'meal.nutrition.fat' => 'Fett (g)',
			'meal.nutrition.fiber' => 'Fibrer (g)',
			'meal.deleteConfirmation.title' => 'Ta bort måltid',
			'meal.deleteConfirmation.message' => 'Är du säker på att du vill ta bort denna måltidsregistrering?',
			'meal.deleteConfirmation.cancel' => 'Avbryt',
			'meal.deleteConfirmation.delete' => 'Ta bort',
			'meal.addedToLog' => 'Måltid tillagd i din logg!',
			'meal.couldNotAdd' => ({required Object error}) => 'Kunde inte lägga till måltid: ${error}',
			'meal.savedSuccessfully' => 'Måltid tillagd!',
			'meal.updatedSuccessfully' => 'Måltid uppdaterad!',
			'meal.errorSaving' => ({required Object error}) => 'Fel vid sparande av måltid: ${error}',
			'meal.removedFromFavorites' => 'Borttagen från favoriter!',
			'meal.savedAsFavorite' => 'Måltid sparad som favorit!',
			'meal.unfavorite' => 'Ta bort från favoriter',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Kunde inte uppdatera favorit: ${error}',
			'meal.feedbackThanks' => 'Tack för din feedback!',
			'meal.reanalysisUpdated' => 'Uppdaterade måltidsanalysen baserat på din feedback.',
			'meal.failedToProcess' => ({required Object error}) => 'Misslyckades att bearbeta: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Kunde inte bearbeta bild: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Fel vid komprimering av bild: ${error}',
			'meal.failedToSave' => 'Misslyckades med att spara data. Försök igen.',
			'meal.skip' => 'Hoppa över',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Fråga ${current} av ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Inga frågor tillgängliga',
			'meal.questionFlow.next' => 'Nästa',
			'meal.questionFlow.continueLabel' => 'Fortsätt',
			'meal.questionFlow.countQuestion' => 'Välj antal',
			'meal.questionFlow.itemSizeQuestion' => 'Välj storlek',
			'meal.questionFlow.portionSizeQuestion' => 'Välj portionsstorlek',
			'meal.questionFlow.option6plus' => '6 eller fler',
			'meal.questionFlow.optionSmall' => 'Liten',
			'meal.questionFlow.optionRegular' => 'Normal',
			'meal.questionFlow.optionLarge' => 'Stor',
			'meal.questionFlow.optionThin' => 'Tunn',
			'meal.questionFlow.optionThick' => 'Tjock',
			'meal.questionFlow.optionMini' => 'Mini',
			'meal.questionFlow.optionStuffed' => 'Fylld',
			'meal.questionFlow.optionHeavy' => 'Tung',
			'meal.questionFlow.optionSmaller' => 'Mindre',
			'meal.questionFlow.optionTypical' => 'Typisk',
			'meal.questionFlow.optionLarger' => 'Större',
			'meal.analysis.title' => 'Analyserar din måltid',
			'meal.analysis.stepStarted' => 'Börjar…',
			'meal.analysis.stepDecomposition' => 'Förstår din måltid…',
			'meal.analysis.stepIngredients' => 'Matchar ingredienser med näringsdata…',
			'meal.analysis.stepUncertainty' => 'Kontrollerar säkerhet…',
			'meal.analysis.stepMealTypeQuestion' => 'Nästan klart…',
			'meal.analysis.stepResult' => 'Slutför resultatet…',
			'meal.analysis.stepError' => 'Något gick fel',
			'meal.analysis.noFoodTip' => 'Ingen mat upptäcktes. Prova en annan bild eller beskrivning.',
			'meal.analysis.stepDefault' => 'Analyserar din måltid…',
			'meal.analysis.progressUnderstand' => 'Förstår din måltid',
			'meal.analysis.progressMatch' => 'Söker upp näring för ingredienser',
			'meal.analysis.progressCheck' => 'Kontrollerar portioner och säkerhet',
			'meal.analysis.progressMealType' => 'Väljer måltidstyp',
			'meal.analysis.progressFinish' => 'Beräknar kalorier och makron',
			'meal.analysis.detectedIngredientHeading' => 'Ingredienser vi hittar',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} till',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredienser upptäckta',
			'meal.analysis.ingredientsPending' => 'Skannar ingredienser…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '”${text}”',
			'meal.analysis.offlineTip0' => 'Tips: Konsekvens slår perfektion — regelbunden registrering avslöjar de mönster som betyder något.',
			'meal.analysis.offlineTip1' => 'Tips: Naturligt ljus och en överblicksbild uppifrån hjälper portionsnoggrannheten.',
			'meal.analysis.offlineTip2' => 'Tips: Ange drycker, såser och matolja — de lägger ofta till kalorier som glöms bort.',
			'meal.analysis.offlineTip3' => 'Tips: En snabb portionsanteckning (1 skål, stor kaffe) gör uppskattningarna mycket skarpare.',
			'meal.analysis.offlineTip4' => 'Tips: Att registrera efter måltiden bygger fortfarande vana; perfektion är inte nödvändig.',
			'meal.analysis.offlineTip5' => 'Tips: Ange hur maten tillagats när det påverkar kalorierna mycket (stekt vs. ugnsbakad).',
			'meal.localInference.reviewTitle' => 'Granska identifierade ingredienser',
			'meal.localInference.reviewSubtitle' => 'Detta tolkades på din enhet. Korrigera namn eller portioner innan näringsvärdet beräknas.',
			'meal.localInference.mealName' => 'Måltidsnamn',
			'meal.localInference.ingredient' => 'Ingrediens',
			'meal.localInference.grams' => 'Uppskattade gram',
			'meal.localInference.removeIngredient' => 'Ta bort ingrediens',
			'meal.localInference.continueLabel' => 'Fortsätt',
			'meal.localInference.invalidProposal' => 'Lägg till minst en ingrediens och använd ett positivt antal gram.',
			'meal.localInference.localUnavailable' => 'Analys på enheten är inte tillgänglig just nu.',
			'meal.feedback.title' => 'Vad ser fel ut?',
			'meal.feedback.subtitle' => 'Hjälp oss förbättra analysen genom att välja ett eller flera problem.',
			'meal.feedback.tellUsMore' => 'Berätta mer',
			'meal.feedback.describeIncorrect' => 'Beskriv vad som var fel',
			'meal.feedback.submit' => 'Skicka',
			'meal.feedback.issueFoodIdentification' => 'Identifiering av mat',
			'meal.feedback.issuePortionSize' => 'Portionsstorlek',
			'meal.feedback.issueCalorieDistribution' => 'Kalorifördelning',
			'meal.feedback.issueMacrosWrong' => 'Makronäringsämnena är fel',
			'meal.feedback.issueMissingItems' => 'Saknade artiklar',
			'meal.feedback.issueExtraItems' => 'Extra artiklar',
			'meal.feedback.issueOther' => 'Annat',
			'favorites.title' => 'Favoriter',
			'favorites.empty' => 'Inga favoritmåltider ännu.',
			'favorites.searchPlaceholder' => 'Sök favoriträtter',
			'favorites.searchEmptyTitle' => 'Inga favoriter matchar din sökning',
			'favorites.searchEmptySubtitle' => 'Prova ett annat måltidsnamn, antal eller måltidstyp.',
			'favorites.sortLabel' => 'Sortera favoriter',
			'favorites.undo' => 'Ångra',
			'favorites.removed' => ({required Object name}) => 'Tog bort ${name} från favoriter',
			'favorites.sortOptions.recent' => 'Senaste',
			'favorites.sortOptions.calories' => 'Kalorier',
			'favorites.sortOptions.alphabetical' => 'A-Ö',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Inga profildata hittades',
			'profile.yourProfile' => 'Din profil',
			'profile.viewAndManage' => 'Visa och hantera din hälsoinformation',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'BASINFORMATION',
			'profile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'profile.sections.calculatedValues' => 'BERÄKNADE VÄRDEN',
			'profile.gender' => 'Kön',
			'profile.height' => 'Längd',
			'profile.weight' => 'Vikt',
			'profile.age' => 'Ålder',
			'profile.weightGoal' => 'Viktmål',
			'profile.targetWeight' => 'Målvikt',
			'profile.activityLevel' => 'Aktivitetsnivå',
			'profile.healthMetrics' => 'Hälsovärden',
			'profile.notSet' => 'Ej inställt',
			'profile.years' => 'år',
			'profile.updatedSuccessfully' => 'Profil uppdaterad!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Dagsmål',
			'profile.calculatedValues.calPerDay' => 'cal/dag',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Hälsopoäng',
			'healthScore.whyThisScore' => 'Varför detta betyg?',
			'healthScore.note' => 'Detta betyg är en AI‑uppskattning baserad på identifierade ingredienser och näringstäthet. Rådgör alltid med en professionell för kostråd.',
			'healthScore.unhealthy' => 'Ohälsosam',
			'healthScore.healthy' => 'Hälsosam',
			'healthScore.neutral' => 'Neutralt',
			'editProfile.title' => 'Redigera profil',
			'editProfile.sections.personalInformation' => 'PERSONUPPGIFTER',
			'editProfile.sections.physicalMeasurements' => 'FYSISKA MÅTT',
			'editProfile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'editProfile.gender' => 'Kön',
			'editProfile.dateOfBirth' => 'Födelsedatum',
			'editProfile.height' => 'Längd',
			'editProfile.weight' => 'Vikt',
			'editProfile.weightGoal' => 'Viktmål',
			'editProfile.activityLevel' => 'Aktivitetsnivå',
			'editProfile.metric' => 'Metriskt',
			'editProfile.imperial' => 'Imperialt',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'pund (lb)',
			'editProfile.metricCm' => 'Metriskt (cm)',
			'editProfile.imperialFtIn' => 'Imperialt (ft/tum)',
			'editProfile.metricKg' => 'Metriskt (kg)',
			'editProfile.imperialLbs' => 'Imperialt (lb)',
			'editProfile.genders.male' => 'Man',
			'editProfile.genders.female' => 'Kvinna',
			'editProfile.genders.other' => 'Annat',
			'editProfile.weightGoals.loseWeight.name' => 'Gå ner i vikt',
			'editProfile.weightGoals.loseWeight.description' => 'Skapa kaloriunderskott för att gå ner i vikt',
			'editProfile.weightGoals.maintainWeight.name' => 'Behåll vikt',
			'editProfile.weightGoals.maintainWeight.description' => 'Behåll din nuvarande vikt',
			'editProfile.weightGoals.gainWeight.name' => 'Gå upp i vikt',
			'editProfile.weightGoals.gainWeight.description' => 'Skapa ett kaloriöverskott för att gå upp i vikt',
			'editProfile.activityLevels.sedentary.name' => 'Inaktiv',
			'editProfile.activityLevels.sedentary.description' => 'Lite eller ingen träning',
			'editProfile.activityLevels.lightlyActive.name' => 'Lätt aktiv',
			'editProfile.activityLevels.lightlyActive.description' => 'Lätt träning 1–3 dagar/vecka',
			'editProfile.activityLevels.moderatelyActive.name' => 'Måttligt aktiv',
			'editProfile.activityLevels.moderatelyActive.description' => 'Måttlig träning 3–5 dagar/vecka',
			'editProfile.activityLevels.veryActive.name' => 'Mycket aktiv',
			'editProfile.activityLevels.veryActive.description' => 'Hård träning 6–7 dagar/vecka',
			'editProfile.activityLevels.extremelyActive.name' => 'Extremt aktiv',
			'editProfile.activityLevels.extremelyActive.description' => 'Mycket hård träning eller fysiskt krävande arbete',
			'settings.title' => 'Inställningar',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'SPRÅK',
			'settings.sections.notifications' => 'NOTIFIKATIONER',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.localInference' => 'ANALYS PÅ ENHETEN',
			'settings.sections.supportAndLegal' => 'SUPPORT & JURIDIK',
			'settings.sections.about' => 'OM',
			'settings.sections.dangerZone' => 'FARLIGT',
			'settings.sections.developer' => 'UTVECKLARE',
			'settings.editProfile.title' => 'Redigera profil',
			'settings.editProfile.subtitle' => 'Uppdatera dina personuppgifter',
			'settings.language.title' => 'Språk',
			'settings.language.subtitle' => 'Välj ditt föredragna språk',
			'settings.language.searchHint' => 'Sök språk...',
			'settings.language.noResults' => 'Inga resultat',
			'settings.heightUnit.title' => 'Enhet för längd',
			'settings.weightUnit.title' => 'Enhet för vikt',
			'settings.mealReminders.title' => 'Måltidspåminnelser',
			'settings.mealReminders.subtitle' => 'Håll kurs med tidsanpassade påminnelser',
			'settings.localInference.title' => 'Måltidsanalys på enheten',
			'settings.localInference.subtitle' => 'Tolka stödda måltider med Gemini Nano innan näringsvärdet beräknas',
			'settings.localInference.unavailable' => 'Inte tillgängligt på denna enhet',
			'settings.localInference.rolloutUnavailable' => 'Lämplig hårdvara hittades, men funktionen är inte aktiverad för denna appversion',
			'settings.localInference.modelSetup' => 'Gemini Nano måste slutföra nedladdningen innan detta kan aktiveras',
			'settings.localInference.useLocalTitle' => 'Använd analys på enheten',
			'settings.localInference.useLocalSubtitle' => 'Resultaten kan vara mindre tillförlitliga för komplexa måltider.',
			'settings.localInference.disclosureTitle' => 'Innan du aktiverar analys på enheten',
			'settings.localInference.disclosureBody' => 'Gemini Nano kan identifiera ingredienser och uppskatta portioner på stödda Android-enheter. Ditt granskade ingrediensförslag skickas till Calorify för USDA-baserad näringsinformation och beräkning.',
			'settings.localInference.disclosureLimit1' => 'Komplexa rätter, dolda ingredienser och portionsstorlekar kan identifieras felaktigt.',
			'settings.localInference.disclosureLimit2' => 'Modellen kan vara otillgänglig under nedladdning, när den är upptagen, körs i bakgrunden eller begränsas av enheten.',
			'settings.localInference.disclosureLimit3' => 'Om den lokala tolkningen inte kan slutföras, skickar denna beta automatiskt din ursprungliga måltidsbeskrivning till Calorify för molnanalys.',
			'settings.localInference.acknowledgement' => 'Jag förstår att jag bör granska identifierade ingredienser och portioner.',
			'settings.localInference.enable' => 'Bekräfta och aktivera',
			'settings.localInference.cancel' => 'Avbryt',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Ljust',
			'settings.theme.dark' => 'Mörkt',
			'settings.theme.system' => 'Systemstandard',
			'settings.sendFeedback.title' => 'Skicka feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Hjälp oss förbättra ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} App-feedback',
			'settings.sendFeedback.emailBodyPrefix' => 'Vänligen lämna din feedback nedan:',
			'settings.sendFeedback.appVersion' => 'Appversion',
			'settings.sendFeedback.device' => 'Enhet',
			'settings.sendFeedback.osVersion' => 'OS-version',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Exportera måltidshistorik',
			'settings.exportMealHistory.subtitle' => 'Dela en CSV med dina registrerade måltider',
			'settings.exportMealHistory.shareText' => 'Din Calorify måltidshistorik export',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Kunde inte exportera måltidshistorik: ${error}',
			'settings.clearAllData.title' => 'Radera all data',
			'settings.clearAllData.subtitle' => 'Radera Calorify-data som lagras på den här enheten',
			'settings.clearAllData.localOnlySubtitle' => 'Radera Calorify-data som lagras på den här enheten',
			'settings.clearAllData.confirmationTitle' => 'Radera all data?',
			'settings.clearAllData.confirmationMessage' => 'Detta raderar loggade måltider, favoriter och profilinställningar permanent från den här enheten. Måltider som redan har delats med Health Connect och Health Connect-åtkomst hanteras separat under Inställningar > Health Connect.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Detta raderar loggade måltider, favoriter och profilinställningar permanent från den här enheten. Måltider som redan har delats med Health Connect och Health Connect-åtkomst hanteras separat under Inställningar > Health Connect.',
			'settings.clearAllData.cancel' => 'Avbryt',
			'settings.clearAllData.clearEverything' => 'Radera allt',
			'settings.debugOptions.title' => 'Felsökningsalternativ',
			'settings.developerModeEnabled' => 'Utvecklarläge aktiverat!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Visa och hantera behörigheter',
			'settings.healthConnect.unavailable.title' => 'Health Connect är otillgängligt',
			'settings.healthConnect.unavailable.description' => 'Health Connect stöds inte på den här enheten.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect stöds inte på den här enheten.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect behöver åtgärdas',
			'settings.healthConnect.updateRequired.description' => 'Installera eller uppdatera Health Connect innan du hanterar åtkomst.',
			'settings.healthConnect.updateRequired.action' => 'Installera eller uppdatera',
			'settings.healthConnect.permissions.title' => 'Behörigheter',
			'settings.healthConnect.permissions.description' => 'Följande behörigheter begärs för att möjliggöra integration med Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Beviljad',
			'settings.healthConnect.permissions.notGranted' => 'Inte beviljad',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Läs total förbrända kalorier',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Tillåter appen att läsa dina totala förbrända kalorier från Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Denna behörighet används för att visa din dagliga kalori­förbränning i appen och hjälper dig förstå din totala energiförbrukning under dagen.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Läs näringsdata',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Tillåter appen att läsa näringsdata från Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Denna behörighet låter appen läsa näringsinformation som kan ha loggats av andra appar anslutna till Health Connect, vilket ger en helhetsbild av din nutrition.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Skriv näringsdata',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Tillåter appen att skriva näringsdata till Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Denna behörighet låter appen synka dina registrerade måltider till Health Connect så att din näringsdata blir tillgänglig för andra hälso‑ och träningsappar du använder.',
			'settings.healthConnect.managePermissions' => 'Hantera behörigheter',
			'settings.healthConnect.openSettings' => 'Öppna Health Connect‑inställningar',
			'settings.healthConnect.disconnect' => 'Koppla från Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Koppla från Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify förlorar åtkomsten till Health Connect. Data som redan har skrivits där raderas inte.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Koppla från',
			'settings.healthConnect.deleteSyncedMeals' => 'Radera Calorify-måltider från Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Radera synkroniserade måltider?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Vill du radera måltider som synkroniserats av den här versionen av Calorify från Health Connect? Din lokala måltidslogg ändras inte. Äldre Calorify-poster kan fortfarande behöva tas bort via Hantera data i Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Radera synkroniserade måltider',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Calorify-måltider raderades från Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Synkroniserade måltider kunde inte raderas. Försök igen.',
			'settings.healthConnect.connectionPartial' => 'Vissa Health Connect-funktioner är aktiverade.',
			'settings.healthConnect.connectionComplete' => 'Båda Health Connect-funktionerna är aktiverade.',
			'settings.healthConnect.actionFailed' => 'Health Connect kunde inte öppnas. Försök igen.',
			'settings.healthConnect.requestPermissions' => 'Begär behörigheter',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Behörighetsförfrågan avbröts eller misslyckades. Försök igen eller ge behörigheter manuellt i Health Connect‑inställningarna.',
			'settings.healthConnect.permissionRequestFailed' => 'Kunde inte begära behörigheter. Försök igen eller ge behörigheter manuellt i Health Connect‑inställningarna.',
			'settings.healthConnect.requestingPermissions' => 'Begär…',
			'settings.about.title' => 'Om',
			'settings.about.tagline' => 'Snabbt, gratis och integritetsfokuserad kalorimedvetenhet',
			'settings.about.ourStory.title' => 'Vår berättelse',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} föddes ur en enkel frustration: de flesta kalorispårningsappar är antingen överdrivet komplicerade, kräver ständig manuell inmatning, tar höga abonnemangsavgifter eller kompromissar med integriteten.\n\nSom ensam utvecklare ville jag skapa något enklare och mer rättvist — en app som använder AI för att minska arbetet, är snabb och gratis att använda, och som behandlar din hälsodata med respekt.\n\n${appLabel} är appen jag önskat fanns: inga konton, ingen spårning, inga annonser — bara tydliga, praktiska insikter och dina hälsomål.',
			'settings.about.privacy.title' => 'Din integritet är viktig',
			'settings.about.privacy.description' => 'Integritet är inte en eftertanke — det är en designprincip. Detta innebär i praktiken:',
			'settings.about.privacy.noAccounts' => 'Inga konton krävs\nAnvänd appen omedelbart. Ingen registrering, inga konton.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Begränsad analys och diagnostik\n${appLabel} använder grundläggande apphändelser och kraschdiagnostik för att förbättra tillförlitligheten. Värden i hälsoposter används inte för reklam och säljs inte.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Begränsad analys och diagnostik\n${appLabel} använder grundläggande apphändelser och kraschdiagnostik för att förbättra tillförlitligheten. Värden i hälsoposter används inte för reklam och säljs inte.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Annonsfritt av design\n${appLabel} är byggt för att fungera utan annonser eller datadriven monetisering.',
			'settings.about.privacy.noDataSelling' => 'Ingen försäljning av data\nDin hälsodata säljs eller delas aldrig med tredje part.',
			'settings.about.privacy.localStorage' => 'Lagring lokalt i första hand\nDin data stannar på din enhet.',
			'settings.about.privacy.privacyPolicy' => 'Integritetspolicy',
			'settings.about.developer.title' => 'Byggd av en ensam utvecklare',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} är byggd och underhållen av en ensam utvecklare med fokus på att skapa lugn, integritetsrespekterande hälso­mjukvara.\n\nFeedback läses personligen och hjälper forma appens riktning.',
			'settings.about.developer.website' => 'Webbplats',
			'settings.about.developer.email' => 'E-post',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Gillar du ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Din feedback hjälper göra ${appLabel} bättre för alla.',
			'settings.about.feedback.rateApp' => 'Betygsätt på Play Store',
			'settings.about.feedback.sendFeedback' => 'Skicka feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify version ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Bygg ${buildNumber}',
			'reminders.title' => 'Håll dig på rätt spår med påminnelser',
			'reminders.description' => 'Få mjuka påminnelser att registrera dina måltider och hålla konsekvens i dina näringsmål',
			'reminders.notificationsEnabled' => 'Meddelanden aktiverade',
			'reminders.notificationsDisabled' => 'Meddelanden avaktiverade',
			'reminders.enabledSubtitle' => 'Du kommer att få måltidspåminnelser',
			'reminders.disabledSubtitle' => 'Aktivera meddelanden för att få måltidspåminnelser',
			'reminders.mealReminders' => 'Måltidspåminnelser',
			'reminders.breakfast' => 'Frukost',
			'reminders.lunch' => 'Lunchmåltid',
			'reminders.dinner' => 'Middag',
			'reminders.snack' => 'Mellanmål',
			'reminders.unknown' => 'Okänd',
			'reminders.change' => 'Ändra',
			'reminders.enableNotifications' => 'Aktivera meddelanden',
			'reminders.skipForNow' => 'Hoppa över för nu',
			'reminders.saveChanges' => 'Spara ändringar',
			'reminders.enabledSuccessfully' => 'Meddelanden aktiverade!',
			'reminders.permissionDenied' => 'Behörighet för meddelanden nekad',
			'reminders.errorEnabling' => ({required Object error}) => 'Fel vid aktivering av meddelanden: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Fel vid slutförande av inställning: ${error}',
			'notifications.breakfast.title' => 'Frukostdags! 🍳',
			'notifications.breakfast.body' => 'Glöm inte att registrera din frukost',
			'notifications.lunch.title' => 'Lunchdags! 🥗',
			_ => null,
		} ?? switch (path) {
			'notifications.lunch.body' => 'Dags att registrera din lunch',
			'notifications.dinner.title' => 'Middagsdags! 🍽️',
			'notifications.dinner.body' => 'Glöm inte att registrera din middag',
			'notifications.snack.title' => 'Mellanmålsdags! 🍎',
			'notifications.snack.body' => 'Dags för ett hälsosamt mellanmål',
			'notifications.test.title' => 'Testmeddelande',
			'login.title' => 'Logga in',
			'login.signInWithGoogle' => 'Logga in med Google',
			'login.signInFailed' => 'Inloggning via Google misslyckades eller avbröts.',
			'disclaimer.pleaseNote' => 'Observera',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} ger uppskattad näringsinformation. Noggrannheten beror på din inmatning och matvarianters variation. Använd som vägledning, inte som slutgiltig källa. Rådgör med en professionell för personliga kostråd.',
			'disclaimer.snap.portionSize.title' => 'Portionsstorlek',
			'disclaimer.snap.portionSize.description' => 'Uppskattningarnas noggrannhet beror i hög grad på din korrekta bedömning av portionsstorleken.',
			'disclaimer.snap.preparationMethods.title' => 'Tillagningsmetoder',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Tillagningsmetoder kan avsevärt ändra näringsinnehållet. ${appLabel}s uppskattningar tar inte alltid hänsyn till dessa variationer.',
			'disclaimer.snap.ingredients.title' => 'Ingredienser',
			'disclaimer.snap.ingredients.description' => 'Komplexa rätter med många dolda ingredienser kan leda till mindre precisa uppskattningar.',
			'disclaimer.snap.databaseLimitations.title' => 'Databasbegränsningar',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}s livsmedelsdatabas är omfattande men kanske inte innehåller varje enskild livsmedelsvara eller variant.',
			'disclaimer.weightEstimate.title' => 'Om viktuppskattningen',
			'disclaimer.weightEstimate.description' => 'Den beräknade viktförändringen är en teoretisk uppskattning baserad på den enkla kalorier-in- vs kalorier-ut‑modellen. Den är avsedd som motivationsvägledning, inte som en prognos för din faktiska vikt.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalorinoggrannhet',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Denna uppskattning är bara så korrekt som din registrerade kalorimängd och förbrukning. Felaktig registrering ger en felaktig prognos.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiska faktorer',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Verklig viktminskning/-ökning påverkas av ämnesomsättning, hormoner, sömn, stress, hydrering och andra individuella faktorer som ${appLabel} inte kan mäta.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Vätskevikt & fluktuationer',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normal daglig vikt kan variera betydligt på grund av vätskeretention, matsmältning och tidpunkt. Uppskattningen tar inte hänsyn till dessa dagliga förändringar.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professionell vägledning',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Använd inte denna uppskattning för medicinska beslut. Rådgör alltid med en vårdprofessionell eller legitimerad dietist för personliga råd om viktkontroll.',
			'disclaimer.healthMetrics.description' => 'Dessa mått hjälper dig förstå kroppens energibehov och vägleda dina näringsmål.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basalmetabolismen (BMR) är det antal kalorier din kropp förbrukar i vila för att upprätthålla grundläggande funktioner som andning och cirkulation. BMR beror på din ålder, kön, längd och vikt. Ett högre BMR innebär att kroppen naturligt förbränner fler kalorier i vila, ofta på grund av mer muskelmassa, yngre ålder eller manligt kön. Ett lägre BMR indikerar vanligtvis mindre muskelmassa, högre ålder eller kvinnligt kön.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total daglig energiförbrukning (TDEE) är de totala kalorier du förbrukar per dag, inklusive BMR plus kalorier från fysisk aktivitet och vardagsrörelse. TDEE beror på ditt BMR och aktivitetsnivå. Ett högre TDEE innebär att du förbränner fler kalorier totalt, ofta genom att vara mer aktiv eller ha högre BMR. Ett lägre TDEE tyder på mindre daglig aktivitet eller lägre BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Dagsmål',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Dagsmål är ditt rekommenderade dagliga kaloriintag baserat på din TDEE och ditt viktmål. För viktminskning konsumerar du färre kalorier än din TDEE. För viktunderhåll matchar du din TDEE. För viktuppgång konsumerar du fler kalorier än din TDEE. Detta hjälper dig nå önskad viktförändring i en hälsosam takt.',
			'disclaimer.calorieExpenditure.title' => 'Uppskattning av kaloriförbrukning',
			'disclaimer.calorieExpenditure.description' => 'När Health Connect-data inte är tillgänglig uppskattar vi dagens förbrända kalorier med hjälp av din BMR och aktivitetsnivå (TDEE), skalat för den del av dagen som har gått.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Hur uppskattningen beräknas',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Vi beräknar din TDEE (baserat på din profil) och multiplicerar den med den andel av dagen som förflutit (timmar + minuter) / 24 för att uppskatta hur många kalorier som förbrukats hittills.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Professionell vägledning',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Använd inte denna uppskattning för medicinska beslut. Rådgör alltid med en vårdprofessionell eller legitimerad dietist för personliga råd.',
			'localNutritionPhase4.portionSmaller' => 'Mindre',
			'localNutritionPhase4.portionEstimated' => 'Uppskattad',
			'localNutritionPhase4.portionLarger' => 'Större',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Vilken portion låg närmast för ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Vilken måltid var det här?',
			'localNutritionPhase4.localNutritionTip' => 'Beräknat från verifierade lokala näringsdata.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Ladda ned näringsdata',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Använd verifierade USDA-rader och deterministisk beräkning på den här enheten när alla ingredienser omfattas.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Lokala näringsdata är inte tillgängliga för den här appversionen.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Inget verifierat näringspaket har laddats ned.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Laddar ned och verifierar näringsdata…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Paket ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} cachade USDA-rader · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Sök efter uppdatering',
			'localNutritionPhase4.offlineNutritionClear' => 'Rensa lokala näringsdata',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Rensa lokala näringsdata?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Detta tar bort det nedladdade USDA-paketet och uppslagscachen. Loggade måltider behåller den exakta ögonblicksbild av näringsdata som användes när de sparades.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Rensa data',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Det gick inte att ladda ned och verifiera lokala näringsdata: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Lokala näringsdata har rensats',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Tillbaka',
			'watch.common.cancel' => 'Avbryt',
			'watch.common.delete' => 'Ta bort',
			'watch.common.retry' => 'Försök igen',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Näringsämne',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} gram',
			'watch.nutrition.protein' => 'Protein',
			'watch.nutrition.carbs' => 'Kolhydrater',
			'watch.nutrition.fat' => 'Fett',
			'watch.nutrition.fiber' => 'Fibrer',
			'watch.sync.syncWithPhone' => 'Synkronisera med telefon',
			'watch.sync.syncing' => 'Synkroniserar…',
			'watch.sync.synced' => 'Synkroniserad',
			'watch.sync.syncedJustNow' => 'Synkroniserad nyss',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Synkroniserad ${minutes}m sedan',
			'watch.sync.failed' => 'Synkronisering misslyckades',
			'watch.sync.phoneDisconnected' => 'Telefon frånkopplad',
			'watch.sync.tapToSync' => 'Tryck för att synkronisera',
			'watch.sync.refreshFailed' => 'Kunde inte uppdatera. Kontrollera din telefon.',
			'watch.sync.openPhone' => 'Öppna Calorify på din telefon och tryck sedan på uppdatera.',
			'watch.home.today' => 'Idag',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} kcal intagna av ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} över målet',
			'watch.home.remaining' => ({required Object calories}) => '${calories} återstår',
			'watch.home.left' => ({required Object calories}) => '${calories} kvar',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal mål',
			'watch.home.logMeal' => 'Logga en måltid',
			'watch.home.todayMeals' => 'Dagens måltider',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Dagens måltider, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Visa ${count} till',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} ytterligare måltider, tryck för att se alla',
			'watch.home.noMeals' => 'Inga måltider registrerade',
			'watch.home.noMealsSemantics' => 'Inga måltider registrerade idag',
			'watch.home.tapLog' => 'Tryck på Logga för att börja',
			'watch.home.removedFromQueue' => 'Måltid borttagen från offline-kön.',
			'watch.home.removedOffline' => 'Måltid borttagen offline. Den synkroniseras när din telefon kopplar upp igen.',
			'watch.home.deleteFailed' => 'Kunde inte ta bort måltid',
			'watch.history.title' => 'Dagens måltider',
			'watch.history.refresh' => 'Uppdatera måltider',
			'watch.history.loadFailed' => 'Kunde inte ladda måltider',
			'watch.history.syncFailed' => 'Kunde inte synkronisera',
			'watch.history.emptyTitle' => 'Inga måltider än',
			'watch.history.emptyMessage' => 'Logga en måltid från Hem för att se den här.',
			'watch.favorites.title' => 'Favoriter',
			'watch.favorites.refresh' => 'Uppdatera favoriter',
			'watch.favorites.loadFailed' => 'Kunde inte ladda favoriter',
			'watch.favorites.syncFailed' => 'Kunde inte synkronisera',
			'watch.favorites.emptyTitle' => 'Inga favoriter än',
			'watch.favorites.emptyMessage' => 'Markera måltider med en stjärna i telefonappen för att logga dem här med ett tryck.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} kcal. Tryck för att logga.',
			'watch.favorites.logged' => ({required Object name}) => '${name} registrerad!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} sparad offline. Den synkroniseras när din telefon kopplar upp igen.',
			'watch.favorites.saveFailed' => 'Kunde inte spara måltiden. Försök igen.',
			'watch.favorites.log' => 'Logga',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kcal, registrerad kl ${time}.',
			'watch.meal.longPressDelete' => 'Håll ned för att ta bort.',
			'watch.meal.deleteTitle' => 'Ta bort måltid?',
			'watch.voice.title' => 'Röstinspelning för måltid',
			'watch.voice.processing' => 'Analyserar din måltid…',
			'watch.voice.processingDescription' => 'Beräknar portioner och näringsinnehåll',
			'watch.voice.listening' => 'Lyssnar',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Stoppa inspelning',
			'watch.voice.start' => 'Tryck för att starta inspelning',
			'watch.voice.starting' => 'Startar mikrofonen…',
			'watch.voice.prompt' => 'Tryck och beskriv sedan din måltid',
			'watch.voice.tapToRetry' => 'Tryck för att försöka igen',
			'watch.voice.example' => 'Försök med ”2 rotis med dal”',
			'watch.voice.unavailable' => 'Röstinmatning är inte tillgänglig. Kontrollera mikrofonens behörighet i klockans inställningar.',
			'watch.voice.didNotStart' => 'Mikrofonen startade inte. Tryck för att försöka igen.',
			'watch.voice.startFailed' => 'Kunde inte starta inspelningen. Kontrollera mikrofonbehörigheter.',
			'watch.voice.allowMicrophone' => 'Tillåt åtkomst till mikrofonen för att logga måltider med röst.',
			'watch.voice.needsConnection' => 'Röstigenkänning kräver en anslutning. Tryck för att försöka igen.',
			'watch.voice.microphoneUnavailable' => 'Mikrofonen är inte tillgänglig. Tryck för att försöka igen.',
			'watch.voice.microphoneBusy' => 'Mikrofonen är upptagen. Vänta en stund och försök igen.',
			'watch.voice.languageUnsupported' => 'Röstinmatning stöder inte klockans språk.',
			'watch.voice.temporarilyBusy' => 'Röstinmatning är tillfälligt upptagen. Vänta en stund och försök igen.',
			'watch.voice.notRecognized' => 'Jag uppfattade inte det. Tryck på mikrofonen och försök igen.',
			'watch.voice.noSpeech' => 'Ingen tal upptäckt. Tryck på mikrofonen för att försöka igen.',
			'watch.voice.analysisFailed' => 'Analys misslyckades. Försök igen.',
			'watch.voice.mealNotIdentified' => 'Kunde inte identifiera måltiden. Försök beskriva den på ett annat sätt.',
			'watch.result.title' => 'Måltidsdetaljer',
			'watch.result.savedOffline' => 'Sparad offline',
			'watch.result.logged' => 'Registrerad!',
			'watch.result.mealFound' => 'Måltid hittad',
			'watch.result.estimatedEnergy' => 'Uppskattad energi',
			'watch.result.logMeal' => 'Logga måltid',
			'watch.result.logging' => 'Loggar…',
			'watch.result.logAnother' => 'Logga en till',
			'watch.result.goingBack' => 'Går tillbaka…',
			'watch.result.savedOfflineMessage' => 'Måltid sparad offline. Den synkroniseras när din telefon kopplar upp igen.',
			'watch.result.saveFailed' => 'Kunde inte spara måltiden. Försök igen.',
			'common.betaTag' => 'Beta',
			'common.close' => 'Stäng',
			'common.kContinue' => 'Fortsätt',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Gillar du ${appLabel}?',
			'feedbackRating.yes' => 'Ja, jag gillar den',
			'feedbackRating.no' => 'Inte riktigt',
			'feedbackRating.rateStepHeading' => 'Betygsätt på Play Store',
			'feedbackRating.emailStepHeading' => 'Skicka feedback via e-post',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Ett snabbt betyg hjälper andra hitta ${appLabel} och håller utvecklingen igång. Vill du avsätta en stund för att lämna ett?',
			'feedbackRating.shareFeedbackViaEmail' => 'Din feedback formar vad som kommer härnäst — vi läser varje meddelande. Vill du dela dina tankar via e-post?',
			'feedbackRating.rateCta' => 'Betygsätt på Play Store',
			'feedbackRating.maybeLater' => 'Kanske senare',
			'feedbackRating.sendFeedback' => 'Skicka feedback',
			'feedbackRating.noThanks' => 'Nej tack',
			'feedbackRating.aboutUsDescription' => 'Gjord med omsorg av ett litet team. Vi fokuserar på integritet, enkelhet och att hjälpa dig bygga bättre matvanor.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Nyfiken på vem som ligger bakom ${appLabel}? Se ',
			'feedbackRating.aboutUsLinkLabel' => 'Om oss',
			'feedbackRating.thankYouMessage' => 'Tack! Vi frågar igen vid ett senare tillfälle.',
			'health.syncFailed' => 'Kunde inte synka till Health Connect',
			'health.mealSynced' => 'Måltid synkad med Health Connect',
			_ => null,
		};
	}
}
