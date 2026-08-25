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
class TranslationsFi extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsFi _root = this; // ignore: unused_field

	@override 
	TranslationsFi $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFi(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Suomi';
	@override String get flag => '🇫🇮';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$fi errors = _Translations$errors$fi._(_root);
	@override late final _Translations$onboarding$fi onboarding = _Translations$onboarding$fi._(_root);
	@override late final _Translations$tabs$fi tabs = _Translations$tabs$fi._(_root);
	@override late final _Translations$home$fi home = _Translations$home$fi._(_root);
	@override late final _Translations$history$fi history = _Translations$history$fi._(_root);
	@override late final _Translations$meal$fi meal = _Translations$meal$fi._(_root);
	@override late final _Translations$favorites$fi favorites = _Translations$favorites$fi._(_root);
	@override late final _Translations$profile$fi profile = _Translations$profile$fi._(_root);
	@override late final _Translations$healthScore$fi healthScore = _Translations$healthScore$fi._(_root);
	@override late final _Translations$editProfile$fi editProfile = _Translations$editProfile$fi._(_root);
	@override late final _Translations$settings$fi settings = _Translations$settings$fi._(_root);
	@override late final _Translations$reminders$fi reminders = _Translations$reminders$fi._(_root);
	@override late final _Translations$notifications$fi notifications = _Translations$notifications$fi._(_root);
	@override late final _Translations$login$fi login = _Translations$login$fi._(_root);
	@override late final _Translations$disclaimer$fi disclaimer = _Translations$disclaimer$fi._(_root);
	@override late final _Translations$localNutritionPhase4$fi localNutritionPhase4 = _Translations$localNutritionPhase4$fi._(_root);
	@override late final _Translations$watch$fi watch = _Translations$watch$fi._(_root);
	@override late final _Translations$common$fi common = _Translations$common$fi._(_root);
	@override late final _Translations$feedbackRating$fi feedbackRating = _Translations$feedbackRating$fi._(_root);
	@override late final _Translations$health$fi health = _Translations$health$fi._(_root);
}

// Path: errors
class _Translations$errors$fi extends Translations$errors$en {
	_Translations$errors$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Olet tehnyt liian monta pyyntöä. Odota hetki ja yritä uudelleen.';
	@override String get networkError => 'Verkkovirhe. Tarkista internet-yhteytesi.';
	@override String get unknownError => 'Jotain meni pieleen. Yritä myöhemmin uudelleen.';
	@override String get loadingProfileData => 'Virhe profiilitietojen lataamisessa';
	@override String get somethingWentWrong => 'Jotain meni pieleen.';
	@override String get retry => 'Yritä uudelleen';
}

// Path: onboarding
class _Translations$onboarding$fi extends Translations$onboarding$en {
	_Translations$onboarding$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Tervetuloa ${appLabel}';
	@override String get subtitle => 'Henkilökohtainen ravitsemuskumppanisi, jota pyörittää AI';
	@override String get getStarted => 'Aloita';
	@override late final _Translations$onboarding$features$fi features = _Translations$onboarding$features$fi._(_root);
	@override late final _Translations$onboarding$gender$fi gender = _Translations$onboarding$gender$fi._(_root);
	@override late final _Translations$onboarding$height$fi height = _Translations$onboarding$height$fi._(_root);
	@override late final _Translations$onboarding$weight$fi weight = _Translations$onboarding$weight$fi._(_root);
	@override late final _Translations$onboarding$age$fi age = _Translations$onboarding$age$fi._(_root);
	@override late final _Translations$onboarding$bmiScale$fi bmiScale = _Translations$onboarding$bmiScale$fi._(_root);
	@override late final _Translations$onboarding$weightGoal$fi weightGoal = _Translations$onboarding$weightGoal$fi._(_root);
	@override late final _Translations$onboarding$activityLevel$fi activityLevel = _Translations$onboarding$activityLevel$fi._(_root);
	@override late final _Translations$onboarding$healthConnect$fi healthConnect = _Translations$onboarding$healthConnect$fi._(_root);
	@override late final _Translations$onboarding$reinforcement$fi reinforcement = _Translations$onboarding$reinforcement$fi._(_root);
}

// Path: tabs
class _Translations$tabs$fi extends Translations$tabs$en {
	_Translations$tabs$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Koonti';
	@override String get history => 'Historia';
}

// Path: home
class _Translations$home$fi extends Translations$home$en {
	_Translations$home$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$fi aiSummary = _Translations$home$aiSummary$fi._(_root);
	@override late final _Translations$home$dailyGoal$fi dailyGoal = _Translations$home$dailyGoal$fi._(_root);
	@override late final _Translations$home$dailySummary$fi dailySummary = _Translations$home$dailySummary$fi._(_root);
	@override late final _Translations$home$intakeProgress$fi intakeProgress = _Translations$home$intakeProgress$fi._(_root);
	@override late final _Translations$home$intakeHistory$fi intakeHistory = _Translations$home$intakeHistory$fi._(_root);
	@override late final _Translations$home$mealLog$fi mealLog = _Translations$home$mealLog$fi._(_root);
	@override late final _Translations$home$mealDescription$fi mealDescription = _Translations$home$mealDescription$fi._(_root);
	@override late final _Translations$home$favoriteMeals$fi favoriteMeals = _Translations$home$favoriteMeals$fi._(_root);
	@override late final _Translations$home$mealSnap$fi mealSnap = _Translations$home$mealSnap$fi._(_root);
	@override late final _Translations$home$connectHealth$fi connectHealth = _Translations$home$connectHealth$fi._(_root);
}

// Path: history
class _Translations$history$fi extends Translations$history$en {
	_Translations$history$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Ei kirjattuja aterioita';
	@override String get emptyMessage => 'Ota kuva viimeisestä ateriastasi kirjataksesi sen tänne.';
	@override String get today => 'Tänään';
	@override String get yesterday => 'Eilen';
}

// Path: meal
class _Translations$meal$fi extends Translations$meal$en {
	_Translations$meal$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Voi ei!';
	@override String get delete => 'Poista';
	@override String get editMeal => 'Muokkaa ateriaa';
	@override String get addMeal => 'Lisää ateria';
	@override String get saveMeal => 'Tallenna ateria';
	@override String get save => 'Tallenna';
	@override String get mealName => 'Aterian nimi';
	@override String get mealNameHint => 'esim. Munakokkeli ja paahtoleipä';
	@override String get nameRequired => 'Anna aterialle nimi ennen tallentamista.';
	@override String get mealQuantity => 'Aterian määrä';
	@override String get mealQuantityHint => 'esim. 1 kulho, 2 viipaletta';
	@override String get timeOfMeal => 'Ajanhetki';
	@override String get timeOfMealHint => 'Valitse milloin söit aterian';
	@override String get mealType => 'Ateriatyyppi';
	@override late final _Translations$meal$nutrition$fi nutrition = _Translations$meal$nutrition$fi._(_root);
	@override late final _Translations$meal$deleteConfirmation$fi deleteConfirmation = _Translations$meal$deleteConfirmation$fi._(_root);
	@override String get addedToLog => 'Ateria lisätty kirjanpitoosi!';
	@override String couldNotAdd({required Object error}) => 'Aterian lisääminen epäonnistui: ${error}';
	@override String get savedSuccessfully => 'Ateria lisätty onnistuneesti!';
	@override String get updatedSuccessfully => 'Ateria päivitetty onnistuneesti!';
	@override String errorSaving({required Object error}) => 'Virhe tallennettaessa ateriaa: ${error}';
	@override String get removedFromFavorites => 'Poistettu suosikeista!';
	@override String get savedAsFavorite => 'Ateria tallennettu suosikiksi!';
	@override String get unfavorite => 'Poista suosikista';
	@override String couldNotUpdateFavorite({required Object error}) => 'Suosikin päivittäminen epäonnistui: ${error}';
	@override String get feedbackThanks => 'Kiitos palautteesta!';
	@override String get reanalysisUpdated => 'Päivitettiin aterian analyysi palautteesi perusteella.';
	@override String failedToProcess({required Object error}) => 'Käsittely epäonnistui: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Kuvan käsittely epäonnistui: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Virhe kuvan pakkaamisessa: ${error}';
	@override String get imageTooLarge => 'Tämän kuvan koko on pakkaamisen jälkeenkin yli 1 Mt. Valitse toinen kuva.';
	@override String get failedToSave => 'Tietojen tallennus epäonnistui. Yritä uudelleen.';
	@override String get skip => 'Ohita';
	@override late final _Translations$meal$questionFlow$fi questionFlow = _Translations$meal$questionFlow$fi._(_root);
	@override late final _Translations$meal$analysis$fi analysis = _Translations$meal$analysis$fi._(_root);
	@override late final _Translations$meal$localInference$fi localInference = _Translations$meal$localInference$fi._(_root);
	@override late final _Translations$meal$feedback$fi feedback = _Translations$meal$feedback$fi._(_root);
}

// Path: favorites
class _Translations$favorites$fi extends Translations$favorites$en {
	_Translations$favorites$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suosikit';
	@override String get empty => 'Ei suosikkia vielä.';
	@override String get searchPlaceholder => 'Hae suosikkiaterioita';
	@override String get searchEmptyTitle => 'Hakusi ei vastaa yhtään suosikkia';
	@override String get searchEmptySubtitle => 'Kokeile toista aterian nimeä, määrää tai ateriatyyppiä.';
	@override String get sortLabel => 'Lajittele suosikit';
	@override String get undo => 'Kumoa';
	@override String removed({required Object name}) => 'Poistettiin ${name} suosikeista';
	@override late final _Translations$favorites$sortOptions$fi sortOptions = _Translations$favorites$sortOptions$fi._(_root);
}

// Path: profile
class _Translations$profile$fi extends Translations$profile$en {
	_Translations$profile$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profiili';
	@override String get noProfileData => 'Profiilitietoja ei löytynyt';
	@override String get yourProfile => 'Profiilisi';
	@override String get viewAndManage => 'Katso ja hallinnoi terveystietojasi';
	@override late final _Translations$profile$sections$fi sections = _Translations$profile$sections$fi._(_root);
	@override String get gender => 'Sukupuoli';
	@override String get height => 'Pituus';
	@override String get weight => 'Paino';
	@override String get age => 'Ikä';
	@override String get weightGoal => 'Painotavoite';
	@override String get targetWeight => 'Tavoitepaino';
	@override String get activityLevel => 'Aktiivisuustaso';
	@override String get healthMetrics => 'Terveysmittarit';
	@override String get notSet => 'Ei asetettu';
	@override String get years => 'vuotta';
	@override String get updatedSuccessfully => 'Profiili päivitetty onnistuneesti!';
	@override late final _Translations$profile$calculatedValues$fi calculatedValues = _Translations$profile$calculatedValues$fi._(_root);
}

// Path: healthScore
class _Translations$healthScore$fi extends Translations$healthScore$en {
	_Translations$healthScore$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terveysarvo';
	@override String get whyThisScore => 'Miksi tämä arvo?';
	@override String get note => 'Tämä arvio on AI-arvio tunnistettujen ainesosien ja ravintotiheyden perusteella. Kysy aina ammattilaiselta henkilökohtaista ravitsemusneuvontaa.';
	@override String get unhealthy => 'Epäterveellinen';
	@override String get healthy => 'Terveellinen';
	@override String get neutral => 'Neutraali';
}

// Path: editProfile
class _Translations$editProfile$fi extends Translations$editProfile$en {
	_Translations$editProfile$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Muokkaa profiilia';
	@override late final _Translations$editProfile$sections$fi sections = _Translations$editProfile$sections$fi._(_root);
	@override String get gender => 'Sukupuoli';
	@override String get dateOfBirth => 'Syntymäaika';
	@override String get height => 'Pituus';
	@override String get weight => 'Paino';
	@override String get weightGoal => 'Painotavoite';
	@override String get activityLevel => 'Aktiivisuustaso';
	@override String get metric => 'Metrinen';
	@override String get imperial => 'Imperiaalinen';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'paunaa (lb)';
	@override String get metricCm => 'Metrinen (cm)';
	@override String get imperialFtIn => 'Imperiaalinen (ft/in)';
	@override String get metricKg => 'Metrinen (kg)';
	@override String get imperialLbs => 'Imperiaalinen (lbs)';
	@override late final _Translations$editProfile$genders$fi genders = _Translations$editProfile$genders$fi._(_root);
	@override late final _Translations$editProfile$weightGoals$fi weightGoals = _Translations$editProfile$weightGoals$fi._(_root);
	@override late final _Translations$editProfile$activityLevels$fi activityLevels = _Translations$editProfile$activityLevels$fi._(_root);
}

// Path: settings
class _Translations$settings$fi extends Translations$settings$en {
	_Translations$settings$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Asetukset';
	@override late final _Translations$settings$sections$fi sections = _Translations$settings$sections$fi._(_root);
	@override late final _Translations$settings$editProfile$fi editProfile = _Translations$settings$editProfile$fi._(_root);
	@override late final _Translations$settings$language$fi language = _Translations$settings$language$fi._(_root);
	@override late final _Translations$settings$heightUnit$fi heightUnit = _Translations$settings$heightUnit$fi._(_root);
	@override late final _Translations$settings$weightUnit$fi weightUnit = _Translations$settings$weightUnit$fi._(_root);
	@override late final _Translations$settings$mealReminders$fi mealReminders = _Translations$settings$mealReminders$fi._(_root);
	@override late final _Translations$settings$localInference$fi localInference = _Translations$settings$localInference$fi._(_root);
	@override late final _Translations$settings$theme$fi theme = _Translations$settings$theme$fi._(_root);
	@override late final _Translations$settings$sendFeedback$fi sendFeedback = _Translations$settings$sendFeedback$fi._(_root);
	@override late final _Translations$settings$exportMealHistory$fi exportMealHistory = _Translations$settings$exportMealHistory$fi._(_root);
	@override late final _Translations$settings$clearAllData$fi clearAllData = _Translations$settings$clearAllData$fi._(_root);
	@override late final _Translations$settings$debugOptions$fi debugOptions = _Translations$settings$debugOptions$fi._(_root);
	@override String get developerModeEnabled => 'Kehittäjätila käytössä!';
	@override late final _Translations$settings$healthConnect$fi healthConnect = _Translations$settings$healthConnect$fi._(_root);
	@override late final _Translations$settings$about$fi about = _Translations$settings$about$fi._(_root);
	@override late final _Translations$settings$appInfo$fi appInfo = _Translations$settings$appInfo$fi._(_root);
}

// Path: reminders
class _Translations$reminders$fi extends Translations$reminders$en {
	_Translations$reminders$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pysy raiteilla muistutuksilla';
	@override String get description => 'Saat lempeitä muistutuksia kirjataksesi ateriasi ja pysyäksesi johdonmukaisena ravintotavoissasi';
	@override String get notificationsEnabled => 'Ilmoitukset käytössä';
	@override String get notificationsDisabled => 'Ilmoitukset pois käytöstä';
	@override String get enabledSubtitle => 'Saat ateriamuistutuksia';
	@override String get disabledSubtitle => 'Ota ilmoitukset käyttöön saadaksesi ateriamuistutuksia';
	@override String get mealReminders => 'Ateriamuistutukset';
	@override String get breakfast => 'Aamiainen';
	@override String get lunch => 'Lounas';
	@override String get dinner => 'Päivällinen';
	@override String get snack => 'Välipala';
	@override String get unknown => 'Tuntematon';
	@override String get change => 'Vaihda';
	@override String get enableNotifications => 'Ota ilmoitukset käyttöön';
	@override String get skipForNow => 'Ohita nyt';
	@override String get saveChanges => 'Tallenna muutokset';
	@override String get enabledSuccessfully => 'Ilmoitukset otettu käyttöön onnistuneesti!';
	@override String get permissionDenied => 'Ilmoitusoikeus evätty';
	@override String errorEnabling({required Object error}) => 'Virhe ilmoitusten ottamisessa käyttöön: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Virhe asetusten viimeistelyssä: ${error}';
}

// Path: notifications
class _Translations$notifications$fi extends Translations$notifications$en {
	_Translations$notifications$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$fi breakfast = _Translations$notifications$breakfast$fi._(_root);
	@override late final _Translations$notifications$lunch$fi lunch = _Translations$notifications$lunch$fi._(_root);
	@override late final _Translations$notifications$dinner$fi dinner = _Translations$notifications$dinner$fi._(_root);
	@override late final _Translations$notifications$snack$fi snack = _Translations$notifications$snack$fi._(_root);
	@override late final _Translations$notifications$test$fi test = _Translations$notifications$test$fi._(_root);
}

// Path: login
class _Translations$login$fi extends Translations$login$en {
	_Translations$login$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kirjaudu';
	@override String get signInWithGoogle => 'Kirjaudu Googlella';
	@override String get signInFailed => 'Google-kirjautuminen epäonnistui tai peruttiin.';
}

// Path: disclaimer
class _Translations$disclaimer$fi extends Translations$disclaimer$en {
	_Translations$disclaimer$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Huomioithan';
	@override late final _Translations$disclaimer$snap$fi snap = _Translations$disclaimer$snap$fi._(_root);
	@override late final _Translations$disclaimer$weightEstimate$fi weightEstimate = _Translations$disclaimer$weightEstimate$fi._(_root);
	@override late final _Translations$disclaimer$healthMetrics$fi healthMetrics = _Translations$disclaimer$healthMetrics$fi._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$fi calorieExpenditure = _Translations$disclaimer$calorieExpenditure$fi._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$fi extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get portionSmaller => 'Pienempi';
	@override String get portionEstimated => 'Arvioitu';
	@override String get portionLarger => 'Suurempi';
	@override String portionQuestion({required Object ingredient}) => 'Mikä annoskoko vastasi parhaiten ainesta ${ingredient}?';
	@override String get mealTypeQuestion => 'Mikä ateria tämä oli?';
	@override String get localNutritionTip => 'Laskettu varmennetuista paikallisista ravintoarvotiedoista.';
	@override String get offlineNutritionTitle => 'Lataa ravintoarvotiedot';
	@override String get offlineNutritionSubtitle => 'Käytä varmennettuja USDA-rivejä ja determinististä laskentaa tällä laitteella, kun kaikki ainesosat on katettu.';
	@override String get offlineNutritionUnavailable => 'Paikallisia ravintoarvotietoja ei ole saatavilla tähän sovellusversioon.';
	@override String get offlineNutritionNotDownloaded => 'Varmennettua ravintoarvopakettia ei ole ladattu.';
	@override String get offlineNutritionInstalling => 'Ravintoarvotietoja ladataan ja varmennetaan…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Paketti ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} USDA-riviä välimuistissa · ${size}';
	@override String get offlineNutritionUpdate => 'Tarkista päivitykset';
	@override String get offlineNutritionClear => 'Tyhjennä paikalliset ravintoarvotiedot';
	@override String get offlineNutritionClearTitle => 'Tyhjennetäänkö paikalliset ravintoarvotiedot?';
	@override String get offlineNutritionClearBody => 'Tämä poistaa ladatun USDA-paketin ja hakuvälimuistin. Kirjatut ateriat säilyttävät täsmällisen ravintoarvotilannekuvan, jota käytettiin tallennettaessa.';
	@override String get offlineNutritionClearConfirm => 'Tyhjennä tiedot';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Paikallisia ravintoarvotietoja ei voitu ladata ja varmentaa: ${error}';
	@override String get offlineNutritionCleared => 'Paikalliset ravintoarvotiedot tyhjennettiin';
}

// Path: watch
class _Translations$watch$fi extends Translations$watch$en {
	_Translations$watch$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify-kello';
	@override late final _Translations$watch$common$fi common = _Translations$watch$common$fi._(_root);
	@override late final _Translations$watch$nutrition$fi nutrition = _Translations$watch$nutrition$fi._(_root);
	@override late final _Translations$watch$sync$fi sync = _Translations$watch$sync$fi._(_root);
	@override late final _Translations$watch$home$fi home = _Translations$watch$home$fi._(_root);
	@override late final _Translations$watch$history$fi history = _Translations$watch$history$fi._(_root);
	@override late final _Translations$watch$favorites$fi favorites = _Translations$watch$favorites$fi._(_root);
	@override late final _Translations$watch$meal$fi meal = _Translations$watch$meal$fi._(_root);
	@override late final _Translations$watch$voice$fi voice = _Translations$watch$voice$fi._(_root);
	@override late final _Translations$watch$result$fi result = _Translations$watch$result$fi._(_root);
}

// Path: common
class _Translations$common$fi extends Translations$common$en {
	_Translations$common$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Beta';
	@override String get close => 'Sulje';
	@override String get kContinue => 'Jatka';
}

// Path: feedbackRating
class _Translations$feedbackRating$fi extends Translations$feedbackRating$en {
	_Translations$feedbackRating$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Pidätkö ${appLabel}:sta?';
	@override String get yes => 'Kyllä, pidän siitä';
	@override String get no => 'En oikeastaan';
	@override String get rateStepHeading => 'Arvostele Play Storessa';
	@override String get emailStepHeading => 'Lähetä palaute sähköpostilla';
	@override String soloDevMessage({required Object appLabel}) => 'Pikainen arvostelu auttaa muita löytämään ${appLabel}:n ja pitää kehitystyön käynnissä. Voisitko hetken jättää arvion?';
	@override String get shareFeedbackViaEmail => 'Palautteesi muokkaa tulevaa — luemme jokaisen viestin. Haluatko jakaa ajatuksesi sähköpostilla?';
	@override String get rateCta => 'Arvostele Play Storessa';
	@override String get maybeLater => 'Ehkä myöhemmin';
	@override String get sendFeedback => 'Lähetä palaute';
	@override String get noThanks => 'Ei kiitos';
	@override String get aboutUsDescription => 'Tehty huolella pienellä tiimillä. Keskitymme yksityisyyteen, yksinkertaisuuteen ja auttamaan sinua kehittämään parempia ruokailutottumuksia.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Kiinnostaa kuka ${appLabel}:n takana on? Katso ';
	@override String get aboutUsLinkLabel => 'Tietoa meistä';
	@override String get thankYouMessage => 'Kiitos! Kysymme taas myöhemmin.';
}

// Path: health
class _Translations$health$fi extends Translations$health$en {
	_Translations$health$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Synkronointi Health Connectiin epäonnistui';
	@override String get mealSynced => 'Ateria synkattu Health Connectiin';
}

// Path: onboarding.features
class _Translations$onboarding$features$fi extends Translations$onboarding$features$en {
	_Translations$onboarding$features$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$fi foodRecognition = _Translations$onboarding$features$foodRecognition$fi._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$fi aiAnalysis = _Translations$onboarding$features$aiAnalysis$fi._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$fi healthIntegration = _Translations$onboarding$features$healthIntegration$fi._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$fi extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mikä on sukupuolesi?';
	@override String get description => 'Sukupuoli auttaa meitä laskemaan perusaineenvaihduntasi (BMR) tarkasti.';
	@override String get next => 'Seuraava';
}

// Path: onboarding.height
class _Translations$onboarding$height$fi extends Translations$onboarding$height$en {
	_Translations$onboarding$height$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kuinka pitkä olet?';
	@override String get description => 'Pituutesi auttaa meitä laskemaan BMI:si ja energiantarpeesi tarkasti.';
	@override String get metric => 'Metrinen';
	@override String get imperial => 'Imperiaalinen';
	@override String get next => 'Seuraava';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$fi extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Mikä on nykyinen painosi?';
	@override String get currentDescription => 'Nykyinen painosi on tärkeä, jotta voimme räätälöidä päivittäiset tavoitteesi.';
	@override String get targetTitle => 'Mikä on tavoitepainosi?';
	@override String get targetDescription => 'Tavoitepainon asettaminen auttaa meitä määrittämään pitkän aikavälin suunnitelmasi.';
	@override String get metric => 'Metrinen';
	@override String get imperial => 'Imperiaalinen';
	@override String get next => 'Seuraava';
}

// Path: onboarding.age
class _Translations$onboarding$age$fi extends Translations$onboarding$age$en {
	_Translations$onboarding$age$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Milloin olet syntynyt?';
	@override String get description => 'Ikäsi auttaa meitä laskemaan kaloritarpeesi tarkasti.';
	@override String get next => 'Seuraava';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$fi extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Alipaino';
	@override String get healthy => 'Terve';
	@override String get overweight => 'Ylipaino';
	@override String get obese => 'Lihavuus';
	@override late final _Translations$onboarding$bmiScale$categories$fi categories = _Translations$onboarding$bmiScale$categories$fi._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$fi messages = _Translations$onboarding$bmiScale$messages$fi._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$fi extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mikä on tavoitteesi?';
	@override String get description => 'Valitse tavoite, joka parhaiten kuvaa mitä haluat saavuttaa';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$fi extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kuinka aktiivinen olet?';
	@override String get description => 'Tämä auttaa meitä laskemaan päivittäiset kaloritarpeesi tarkemmin';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$fi extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yhdistä Health Connectiin';
	@override String get description => 'Synkronoi terveystietosi parempia näkemyksiä ja automaattista kaloriseurantaa varten';
	@override String get overviewDescription => 'Käytä kulutettuja kaloreita päivätavoitteessasi ja halutessasi jaa kirjaamasi ateriat Health Connectiin.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$fi automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$fi._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$fi caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$fi._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$fi progressInsights = _Translations$onboarding$healthConnect$progressInsights$fi._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$fi shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$fi._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$fi seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$fi._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$fi userControl = _Translations$onboarding$healthConnect$userControl$fi._(_root);
	@override String get connected => 'Health Connect yhdistetty';
	@override String get notConnected => 'Health Connect ei yhdistetty';
	@override String get setup => 'Aseta Health Connect';
	@override String get skipForNow => 'Ohita nyt';
	@override String get statusConnected => 'Health Connect on yhdistetty.';
	@override String get statusSuccess => 'Health Connect on yhdistetty onnistuneesti!';
	@override String get statusNotConnected => 'Valitse Health Connect -ominaisuudet, jotka haluat ottaa käyttöön.';
	@override String get statusPartial => 'Health Connect on yhdistetty osittain. Ota jäljellä oleva käyttöoikeus käyttöön käyttääksesi molempia ominaisuuksia.';
	@override String get statusProviderUpdateRequired => 'Jatka asentamalla tai päivittämällä Health Connect.';
	@override String get statusUnavailable => 'Health Connectia ei tueta tällä laitteella.';
	@override String get installOrUpdate => 'Asenna tai päivitä';
	@override String get manageAccess => 'Hallitse pääsyä';
	@override String statusPermissionDenied({required Object appLabel}) => 'Lupa evätty. Ota käyttöön Health Connect -oikeudet puhelimesi asetuksista ${appLabel}:lle.';
	@override String statusError({required Object error}) => 'Virhe Health Connectin asennuksessa: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$fi extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$fi trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$fi._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$fi healthProfile = _Translations$onboarding$reinforcement$healthProfile$fi._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$fi goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$fi._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$fi extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-yhteenvetosi';
	@override String get logMore => 'Kirjaa lisää aterioita seuraavien päivien aikana saadaksesi henkilökohtaisia AI-näkemyksiä.';
	@override String get loading => 'Ladataan yhteenvetoa...';
	@override String mealCount({required Object count}) => '${count} ateriaa kirjattu';
	@override String macroBalanceScore({required Object score}) => 'Tasapainopisteet ${score}';
	@override String get topFoods => 'Suosituimmat ruoat';
	@override String get trendUp => 'Kalorit nousemassa';
	@override String get trendDown => 'Kalorit laskevana';
	@override String get trendSteady => 'Kalorit pysyvät tasaisina';
	@override String generatedAt({required Object time}) => 'Päivitetty ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$fi extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aseta päivittäinen tavoitteesi';
	@override String get titleSet => 'Päivittäinen tavoitteesi';
	@override String get description => 'Valmis aloittamaan hyvinvointimatkasi? Aseta päivittäinen kalorirajasi alle käynnistääksesi edistymisen.';
	@override String get descriptionSet => 'Kompassisi on asetettu! Tämä on päivittäinen kalorirajasi, joka ohjaa sinua.';
	@override String get yourGoal => 'Tavoitteesi';
	@override String get goal => 'Tavoite';
	@override String get dailyCalories => 'Päivittäiset kalorit (kcal)';
	@override String get setGoal => 'Aseta tavoite';
	@override String get intake => 'Saanti';
	@override String get burned => 'Poltettu';
	@override String get weightImpact => 'Vaikutus painoon';
	@override String get estLoss => 'Arvioitu pudotus';
	@override String get estGain => 'Arvioitu nousu';
	@override String get kcal => 'kilokaloria (kcal)';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$fi extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päiväkohtainen yhteenveto';
	@override String get calories => 'Kalorit';
	@override String get carbs => 'Hiilihydraatit';
	@override String get protein => 'Proteiini';
	@override String get fat => 'Rasva';
	@override String get fiber => 'Kuitu';
	@override String get grams => 'grammaa';
	@override String get chartAccessibilityLabel => 'Makroravinteiden kaavio';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$fi extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päivän makrojako';
	@override String get target => 'Tavoite';
	@override String get current => 'Nykyinen';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$fi extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => '7 päivän makrohistoria';
	@override String get trendTitle => 'Päivän trendi';
	@override String peakHour({required Object hour}) => 'Huippu: ${hour}:00';
	@override String get noHistoryYet => 'Ei historiaa vielä';
	@override String get startLogging => 'Aloita aterioiden kirjaaminen nähdäksesi\n7 päivän makrotrendit täällä';
}

// Path: home.mealLog
class _Translations$home$mealLog$fi extends Translations$home$mealLog$en {
	_Translations$home$mealLog$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kirjatut ateriat';
	@override String get emptyMessage => 'Ota kuva viimeisestä ateriastasi kirjataksesi sen tänne.';
	@override String get noMealsToday => 'Ei ateriakirjauksia tälle päivälle';
	@override String get seeAllMeals => 'Näytä kaikki ateriat';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$fi extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nopea lisäys AI:lla';
	@override String get description => 'Kuvaile ateriasi ja anna AI:n hoitaa yksityiskohdat.';
	@override String get hint => 'esim. Aamupalalla söin ison kulhollisen kaurapuuroa viipaloidun banaanin ja mitallisen heraproteiinia ...';
	@override String get analyzeMeal => 'Analysoi ateria';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$fi extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suosikkiateriat';
	@override String get description => 'Lisää nopeasti joku suosikeistasi.';
	@override String get noFavorites => 'Ei suosikkia vielä.';
	@override String get addFavoriteHint => 'Klikkaa tähteä aterian kohdalla merkitäksesi sen suosikiksi.';
	@override String get seeAll => 'Näytä kaikki';
	@override String get add => 'Lisää';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$fi extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kuvaa & seuraa ateriasi';
	@override String get description => 'Käytä kameraa ottaaksesi kuvan ruoastasi AI-analyysiä varten.';
	@override String get openCamera => 'Avaa kamera';
	@override String get gallery => 'Galleria';
	@override String get compressingPhoto => 'Optimoidaan kuva…';
	@override String get uploadingPhoto => 'Lähetetään kuvaa…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$fi extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synkronoi Health Connectiin';
	@override String get description => 'Synkronoi ravintotietosi Health Connectiin';
	@override String get install => 'Asenna';
	@override String get dataUseDescription => 'Käytä kulutettuja kaloreita tavoitteessasi ja jaa kirjatut ateriat';
	@override String get installOrUpdate => 'Asenna tai päivitä';
	@override String get connect => 'Yhdistä';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$fi extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorit';
	@override String get carbs => 'Hiilihydraatit (g)';
	@override String get protein => 'Proteiini (g)';
	@override String get fat => 'Rasva (g)';
	@override String get fiber => 'Kuitu (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$fi extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Poista ateria';
	@override String get message => 'Haluatko varmasti poistaa tämän ateriakirjauksen?';
	@override String get cancel => 'Peruuta';
	@override String get delete => 'Poista';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$fi extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Kysymys ${current} / ${total}';
	@override String get noQuestionsAvailable => 'Ei saatavilla olevia kysymyksiä';
	@override String get next => 'Seuraava';
	@override String get continueLabel => 'Jatka';
	@override String get countQuestion => 'Valitse määrä';
	@override String get itemSizeQuestion => 'Valitse tuotteen koko';
	@override String get portionSizeQuestion => 'Valitse annoksen koko';
	@override String get option6plus => '6 tai enemmän';
	@override String get optionSmall => 'Pieni';
	@override String get optionRegular => 'Normaali';
	@override String get optionLarge => 'Suuri';
	@override String get optionThin => 'Ohut';
	@override String get optionThick => 'Paksu';
	@override String get optionMini => 'Mini';
	@override String get optionStuffed => 'Täytetty';
	@override String get optionHeavy => 'Painava';
	@override String get optionSmaller => 'Pienempi';
	@override String get optionTypical => 'Tyypillinen';
	@override String get optionLarger => 'Suurempi';
}

// Path: meal.analysis
class _Translations$meal$analysis$fi extends Translations$meal$analysis$en {
	_Translations$meal$analysis$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analysoidaan ateriaasi';
	@override String get stepStarted => 'Aloitetaan…';
	@override String get stepDecomposition => 'Ymmärretään ateriaasi…';
	@override String get stepIngredients => 'Etsitään ainesosia ja ravintoarvoja…';
	@override String get stepUncertainty => 'Tarkistetaan varmuutta…';
	@override String get stepMealTypeQuestion => 'Melkein valmis…';
	@override String get stepResult => 'Viimeistellään tulosta…';
	@override String get stepError => 'Jotain meni pieleen';
	@override String get noFoodTip => 'Ruokaa ei tunnistettu. Kokeile toista kuvaa tai kuvausta.';
	@override String get stepDefault => 'Analysoidaan ateriaasi…';
	@override String get progressUnderstand => 'Ymmärretään ateria';
	@override String get progressMatch => 'Haetaan ainesosien ravintoarvoja';
	@override String get progressCheck => 'Tarkistetaan annoskoot ja varmuus';
	@override String get progressMealType => 'Valitaan ateriatyyppi';
	@override String get progressFinish => 'Lasketaan kalorit ja makrot';
	@override String get detectedIngredientHeading => 'Havaitsemamme ainesosat';
	@override String ingredientsOverflow({required Object count}) => '${count} lisää';
	@override String ingredientsLine({required Object count}) => '${count} ainesosaa tunnistettu';
	@override String get ingredientsPending => 'Skannataan ainesosia…';
	@override String mealPreviewDescription({required Object text}) => '”${text}”';
	@override String get offlineTip0 => 'Vinkki: Johdonmukaisuus voittaa täydellisyyden—säännölliset merkinnät paljastavat merkitykselliset kaavat.';
	@override String get offlineTip1 => 'Vinkki: Kuvia varten luonnonvalo ja ylhäältä otettu näkymä auttavat annosarvioissa.';
	@override String get offlineTip2 => 'Vinkki: Mainitse juomat, kastikkeet ja paistorasva—ne lisäävät kaloreita, jotka usein unohdetaan.';
	@override String get offlineTip3 => 'Vinkki: Pikainen annosmerkintä (1 kulho, iso kahvi) tekee arvioista tarkempia.';
	@override String get offlineTip4 => 'Vinkki: Aterian jälkeinen kirjaaminen rakentaa silti tapaa; täydellisyyttä ei vaadita.';
	@override String get offlineTip5 => 'Vinkki: Kerro, miten ruoka on valmistettu, jos se muuttaa kaloreita paljon (paistettu vs. uunissa).';
}

// Path: meal.localInference
class _Translations$meal$localInference$fi extends Translations$meal$localInference$en {
	_Translations$meal$localInference$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Tarkista tunnistetut ainesosat';
	@override String get reviewSubtitle => 'Tämä tulkittiin laitteellasi. Korjaa nimet tai annoskoot ennen ravintoarvojen laskemista.';
	@override String get mealName => 'Aterian nimi';
	@override String get ingredient => 'Ainesosa';
	@override String get grams => 'Arvioidut grammat';
	@override String get removeIngredient => 'Poista ainesosa';
	@override String get continueLabel => 'Jatka';
	@override String get invalidProposal => 'Lisää vähintään yksi ainesosa ja käytä positiivista grammamäärää.';
	@override String get localUnavailable => 'Laitteen oma analyysi ei ole tällä hetkellä käytettävissä.';
}

// Path: meal.feedback
class _Translations$meal$feedback$fi extends Translations$meal$feedback$en {
	_Translations$meal$feedback$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mikä näyttää väärältä?';
	@override String get subtitle => 'Auttaaksesi parantamaan analyysiä, valitse yksi tai useampi ongelma.';
	@override String get tellUsMore => 'Kerro lisää';
	@override String get describeIncorrect => 'Kuvaile mikä oli virheellistä';
	@override String get submit => 'Lähetä';
	@override String get issueFoodIdentification => 'Ruoan tunnistus';
	@override String get issuePortionSize => 'Annoksen koko';
	@override String get issueCalorieDistribution => 'Kalorien jakautuminen';
	@override String get issueMacrosWrong => 'Makrot väärin';
	@override String get issueMissingItems => 'Puuttuvat ainesosat';
	@override String get issueExtraItems => 'Liian monta ainesosaa';
	@override String get issueOther => 'Muu';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$fi extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Viimeisimmät';
	@override String get calories => 'Kalorit';
	@override String get alphabetical => 'A–Ö';
}

// Path: profile.sections
class _Translations$profile$sections$fi extends Translations$profile$sections$en {
	_Translations$profile$sections$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIILI';
	@override String get basicInformation => 'PERUSTIEDOT';
	@override String get goalsAndActivity => 'TAVOITTEET & AKTIVITEETTI';
	@override String get calculatedValues => 'LASKETUT ARVOT';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$fi extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Päivittäinen tavoite';
	@override String get calPerDay => 'kal/pv';
	@override String get notAvailable => 'Ei saatavilla';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$fi extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'HENKILÖTIEDOT';
	@override String get physicalMeasurements => 'KEHON MITAT';
	@override String get goalsAndActivity => 'TAVOITTEET & AKTIVITEETTI';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$fi extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get male => 'Mies';
	@override String get female => 'Nainen';
	@override String get other => 'Muu';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$fi extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$fi loseWeight = _Translations$editProfile$weightGoals$loseWeight$fi._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$fi maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$fi._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$fi gainWeight = _Translations$editProfile$weightGoals$gainWeight$fi._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$fi extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$fi sedentary = _Translations$editProfile$activityLevels$sedentary$fi._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$fi lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$fi._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$fi moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$fi._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$fi veryActive = _Translations$editProfile$activityLevels$veryActive$fi._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$fi extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$fi._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$fi extends Translations$settings$sections$en {
	_Translations$settings$sections$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIILI';
	@override String get localization => 'LOKALISAATIO';
	@override String get notifications => 'ILMOITUKSET';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'LAITTEEN OMA ANALYYSI';
	@override String get supportAndLegal => 'TUKI & LAINSÄÄDÄNTÖ';
	@override String get about => 'TIETOA';
	@override String get dangerZone => 'VAIKUTUSALUE';
	@override String get developer => 'KEHITTÄJÄ';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$fi extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Muokkaa profiilia';
	@override String get subtitle => 'Päivitä henkilökohtaiset tietosi';
}

// Path: settings.language
class _Translations$settings$language$fi extends Translations$settings$language$en {
	_Translations$settings$language$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kieli';
	@override String get subtitle => 'Valitse haluamasi kieli';
	@override String get searchHint => 'Hae kieliä...';
	@override String get noResults => 'Ei tuloksia';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$fi extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pituusyksikkö';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$fi extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Painoyksikkö';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$fi extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ateriamuistutukset';
	@override String get subtitle => 'Pysy raiteilla ajankohtaisilla muistutuksilla';
}

// Path: settings.localInference
class _Translations$settings$localInference$fi extends Translations$settings$localInference$en {
	_Translations$settings$localInference$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aterioiden paikallinen analyysi';
	@override String get subtitle => 'Tulkitse tuetut ateriat Gemini Nanolla ennen ravintoarvojen laskemista';
	@override String get unavailable => 'Ei käytettävissä tällä laitteella';
	@override String get rolloutUnavailable => 'Yhteensopiva laitteisto löytyi, mutta tämä ominaisuus ei ole käytössä tässä sovellusversiossa';
	@override String get modelSetup => 'Gemini Nanon latauksen on valmistuttava ennen kuin tämä voidaan ottaa käyttöön';
	@override String get useLocalTitle => 'Käytä paikallista analyysia';
	@override String get useLocalSubtitle => 'Tulokset saattavat olla vähemmän luotettavia monimutkaisissa aterioissa.';
	@override String get disclosureTitle => 'Ennen paikallisen analyysin käyttöönottoa';
	@override String get disclosureBody => 'Gemini Nano voi tunnistaa ainesosia ja arvioida annoskokoja tuetuilla Android-laitteilla. Tarkistamasi ainesosaehdotus lähetetään Calorifylle USDA-ravintoarvojen vahvistusta ja laskentaa varten.';
	@override String get disclosureLimit1 => 'Monimutkaiset annokset, piilotetut ainesosat ja annoskoot saatetaan tunnistaa väärin.';
	@override String get disclosureLimit2 => 'Malli voi olla käytettävissämätön latauksen aikana, kun se on varattu, taustalla tai laitteen rajoitusten vuoksi.';
	@override String get disclosureLimit3 => 'Jos paikallinen tulkinta ei valmistu, tämä beta-versio lähettää alkuperäisen ateriakuvauksesi automaattisesti Calorifylle pilvianalyysia varten.';
	@override String get acknowledgement => 'Ymmärrän, että minun tulee tarkistaa tunnistetut ainesosat ja annoskoot.';
	@override String get enable => 'Hyväksy ja ota käyttöön';
	@override String get cancel => 'Peruuta';
}

// Path: settings.theme
class _Translations$settings$theme$fi extends Translations$settings$theme$en {
	_Translations$settings$theme$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Teema';
	@override String get light => 'Vaalea';
	@override String get dark => 'Tumma';
	@override String get system => 'Järjestelmä';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$fi extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lähetä palautetta';
	@override String subtitle({required Object appLabel}) => 'Auta parantamaan ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} - Sovelluspalaute';
	@override String get emailBodyPrefix => 'Anna palautteesi alla:';
	@override String get appVersion => 'Sovelluksen versio';
	@override String get device => 'Laite';
	@override String get osVersion => 'Käyttöjärjestelmäversio';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$fi extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vie ateriakirja';
	@override String get subtitle => 'Jaa CSV tiedosto kirjatuista aterioistasi';
	@override String get shareText => 'Calorify meal history export';
	@override String failed({required Object error}) => 'Ateriakirjan vieminen epäonnistui: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$fi extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tyhjennä kaikki tiedot';
	@override String get subtitle => 'Poista kaikki tietosi peruuttamattomasti';
	@override String get localOnlySubtitle => 'Poista tälle laitteelle tallennetut Calorify-tiedot';
	@override String get confirmationTitle => 'Tyhjennetäänkö kaikki tiedot?';
	@override String get confirmationMessage => 'Tätä toimenpidettä ei voi peruuttaa. Kaikki kirjatut ateriasi, suosikit ja profiiliasetukset poistetaan pysyvästi.';
	@override String get localOnlyConfirmationMessage => 'Tämä poistaa kirjatut ateriat, suosikit ja profiiliasetukset pysyvästi tältä laitteelta. Health Connectiin jo jaettuja aterioita ja Health Connectin käyttöoikeuksia hallitaan erikseen kohdassa Asetukset > Health Connect.';
	@override String get cancel => 'Peruuta';
	@override String get clearEverything => 'Tyhjennä kaikki';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$fi extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug-asetukset';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$fi extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Katso ja hallinnoi käyttöoikeuksia';
	@override late final _Translations$settings$healthConnect$unavailable$fi unavailable = _Translations$settings$healthConnect$unavailable$fi._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$fi updateRequired = _Translations$settings$healthConnect$updateRequired$fi._(_root);
	@override late final _Translations$settings$healthConnect$permissions$fi permissions = _Translations$settings$healthConnect$permissions$fi._(_root);
	@override String get managePermissions => 'Hallitse käyttöoikeuksia';
	@override String get openSettings => 'Avaa Health Connect -asetukset';
	@override String get disconnect => 'Katkaise Health Connect -yhteys';
	@override String get disconnectConfirmationTitle => 'Katkaistaanko Health Connect -yhteys?';
	@override String get disconnectConfirmationMessage => 'Calorify menettää Health Connectin käyttöoikeuden. Sinne jo kirjoitettuja tietoja ei poisteta.';
	@override String get disconnectConfirmationAction => 'Katkaise yhteys';
	@override String get deleteSyncedMeals => 'Poista Calorify-ateriat Health Connectista';
	@override String get deleteSyncedMealsConfirmationTitle => 'Poistetaanko synkronoidut ateriat?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Poistetaanko tämän Calorify-version synkronoimat ateriat Health Connectista? Paikallinen aterialoki ei muutu. Vanhemmat Calorify-merkinnät on ehkä edelleen poistettava Health Connectin Hallitse tietoja -toiminnolla.';
	@override String get deleteSyncedMealsConfirmationAction => 'Poista synkronoidut ateriat';
	@override String get deleteSyncedMealsSuccess => 'Calorify-ateriat poistettiin Health Connectista.';
	@override String get deleteSyncedMealsFailed => 'Synkronoituja aterioita ei voitu poistaa. Yritä uudelleen.';
	@override String get connectionPartial => 'Jotkin Health Connect -ominaisuudet ovat käytössä.';
	@override String get connectionComplete => 'Molemmat Health Connect -ominaisuudet ovat käytössä.';
	@override String get actionFailed => 'Health Connectia ei voitu avata. Yritä uudelleen.';
	@override String get requestPermissions => 'Pyydä oikeuksia';
	@override String get permissionRequestCancelledOrFailed => 'Käyttöoikeuspyyntö keskeytettiin tai epäonnistui. Yritä uudelleen tai myönnä oikeudet manuaalisesti Health Connectin asetuksista.';
	@override String get permissionRequestFailed => 'Oikeuspyyntöä ei voitu lähettää. Yritä uudelleen tai myönnä oikeudet manuaalisesti Health Connectin asetuksista.';
	@override String get requestingPermissions => 'Pyydetään...';
}

// Path: settings.about
class _Translations$settings$about$fi extends Translations$settings$about$en {
	_Translations$settings$about$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tietoa';
	@override String get tagline => 'Nopea, ilmainen ja tietosuoja etusijalla oleva kaloritehokkuus';
	@override late final _Translations$settings$about$ourStory$fi ourStory = _Translations$settings$about$ourStory$fi._(_root);
	@override late final _Translations$settings$about$privacy$fi privacy = _Translations$settings$about$privacy$fi._(_root);
	@override late final _Translations$settings$about$developer$fi developer = _Translations$settings$about$developer$fi._(_root);
	@override late final _Translations$settings$about$feedback$fi feedback = _Translations$settings$about$feedback$fi._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$fi extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify-versio ${version}';
	@override String build({required Object buildNumber}) => 'Koonti ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$fi extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aamupala-aika! 🍳';
	@override String get body => 'Muista kirjata aamiaisesi';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$fi extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lounasaika! 🥗';
	@override String get body => 'On aika kirjata lounas';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$fi extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päivällisaika! 🍽️';
	@override String get body => 'Muista kirjata päivällisesi';
}

// Path: notifications.snack
class _Translations$notifications$snack$fi extends Translations$notifications$snack$en {
	_Translations$notifications$snack$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Välipala-aika! 🍎';
	@override String get body => 'Aika terveelliselle välipalalle';
}

// Path: notifications.test
class _Translations$notifications$test$fi extends Translations$notifications$test$en {
	_Translations$notifications$test$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testi-ilmoitus';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$fi extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} antaa arvioidut ravintoarvot. Tarkkuus riippuu antamistasi tiedoista ja ruokien vaihteluista. Käytä ohjeellisena, ei lopullisena tietolähteenä. Kysy henkilökohtaista ravitsemusneuvontaa ammattilaiselta.';
	@override late final _Translations$disclaimer$snap$portionSize$fi portionSize = _Translations$disclaimer$snap$portionSize$fi._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$fi preparationMethods = _Translations$disclaimer$snap$preparationMethods$fi._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$fi ingredients = _Translations$disclaimer$snap$ingredients$fi._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$fi databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$fi._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$fi extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tietoa painoarviosta';
	@override String get description => 'Projektio painonmuutoksesta on teoreettinen arvio perustuen yksinkertaiseen kalorien sisään vs. ulos -malliin. Se on tarkoitettu motivoivaksi ohjaukseksi, ei ennusteeksi todellisesta painostasi.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$fi calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$fi._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$fi biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$fi._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$fi waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$fi._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$fi professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$fi._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$fi extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get description => 'Nämä mittarit auttavat ymmärtämään kehosi energiantarpeita ja ohjaavat ravitsemustavoitteitasi.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$fi bmr = _Translations$disclaimer$healthMetrics$bmr$fi._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$fi tdee = _Translations$disclaimer$healthMetrics$tdee$fi._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$fi dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$fi._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$fi extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Arvio kalorinkulutuksesta';
	@override String get description => 'Kun Health Connect -data ei ole saatavilla, arvioimme tämän päivän poltetut kalorit käyttäen perusaineenvaihduntaasi (BMR) ja aktiivisuustasoasi (TDEE), skaalaamalla sen kuluneen päivän osuuden mukaan.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$fi howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$fi._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$fi professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$fi._(_root);
}

// Path: watch.common
class _Translations$watch$common$fi extends Translations$watch$common$en {
	_Translations$watch$common$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get back => 'Takaisin';
	@override String get cancel => 'Peruuta';
	@override String get delete => 'Poista';
	@override String get retry => 'Yritä uudelleen';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$fi extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Ravintoaine';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} g';
	@override String get protein => 'Proteiini';
	@override String get carbs => 'Hiilihydraatit';
	@override String get fat => 'Rasva';
	@override String get fiber => 'Kuitu';
}

// Path: watch.sync
class _Translations$watch$sync$fi extends Translations$watch$sync$en {
	_Translations$watch$sync$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Synkronoi puhelimen kanssa';
	@override String get syncing => 'Synkronoidaan…';
	@override String get synced => 'Synkronoitu';
	@override String get syncedJustNow => 'Synkronoitu juuri nyt';
	@override String syncedMinutesAgo({required Object minutes}) => 'Synkronoitu ${minutes} min sitten';
	@override String get failed => 'Synkronointi epäonnistui';
	@override String get phoneDisconnected => 'Puhelin ei ole yhdistetty';
	@override String get tapToSync => 'Napauta synkronoidaksesi';
	@override String get refreshFailed => 'Päivitys epäonnistui. Tarkista puhelimesi.';
	@override String get openPhone => 'Avaa Calorify puhelimellasi ja napauta sitten päivitä.';
}

// Path: watch.home
class _Translations$watch$home$fi extends Translations$watch$home$en {
	_Translations$watch$home$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get today => 'Tänään';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} kaloria kulutettu tavoitteesta ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} yli tavoitteen';
	@override String remaining({required Object calories}) => '${calories} jäljellä';
	@override String left({required Object calories}) => '${calories} jäljellä';
	@override String goal({required Object calories}) => '${calories} kcal tavoite';
	@override String get logMeal => 'Kirjaa ateria';
	@override String get todayMeals => 'Tämän päivän ateriat';
	@override String todayMealsCount({required Object count}) => 'Tämän päivän ateriat, ${count}';
	@override String viewMore({required Object count}) => 'Näytä ${count} lisää';
	@override String viewMoreSemantics({required Object count}) => '${count} lisää ateriaa, napauta nähdäksesi kaikki';
	@override String get noMeals => 'Ei kirjattuja aterioita';
	@override String get noMealsSemantics => 'Ei kirjattuja aterioita tänään';
	@override String get tapLog => 'Napauta Kirjaa aloittaaksesi';
	@override String get removedFromQueue => 'Ateria poistettu offline-jonosta.';
	@override String get removedOffline => 'Ateria poistettu paikallisesti. Synkronoituu, kun puhelimesi yhdistyy.';
	@override String get deleteFailed => 'Aterian poistaminen epäonnistui';
}

// Path: watch.history
class _Translations$watch$history$fi extends Translations$watch$history$en {
	_Translations$watch$history$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tämän päivän ateriat';
	@override String get refresh => 'Päivitä ateriat';
	@override String get loadFailed => 'Aterioita ei voitu ladata';
	@override String get syncFailed => 'Synkronointi epäonnistui';
	@override String get emptyTitle => 'Ei vielä aterioita';
	@override String get emptyMessage => 'Kirjaa ateria Kotinäkymästä nähdäksesi sen täällä.';
}

// Path: watch.favorites
class _Translations$watch$favorites$fi extends Translations$watch$favorites$en {
	_Translations$watch$favorites$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suosikit';
	@override String get refresh => 'Päivitä suosikit';
	@override String get loadFailed => 'Suosikkeja ei voitu ladata';
	@override String get syncFailed => 'Synkronointi epäonnistui';
	@override String get emptyTitle => 'Ei vielä suosikkeja';
	@override String get emptyMessage => 'Tähditä aterioita puhelimen sovelluksessa, niin yhden napautuksen kirjaukset näkyvät tässä.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} kcal. Napauta kirjataaksesi.';
	@override String logged({required Object name}) => '${name} kirjattu!';
	@override String savedOffline({required Object name}) => '${name} tallennettu paikallisesti. Synkronoituu, kun puhelimesi yhdistyy.';
	@override String get saveFailed => 'Aterian tallennus epäonnistui. Yritä uudelleen.';
	@override String get log => 'Kirjaa';
}

// Path: watch.meal
class _Translations$watch$meal$fi extends Translations$watch$meal$en {
	_Translations$watch$meal$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kcal, kirjattu ${time}.';
	@override String get longPressDelete => 'Paina pitkään poistaaksesi.';
	@override String get deleteTitle => 'Poistetaanko ateria?';
}

// Path: watch.voice
class _Translations$watch$voice$fi extends Translations$watch$voice$en {
	_Translations$watch$voice$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Äänikirjaus';
	@override String get processing => 'Tarkistetaan ateriaa…';
	@override String get processingDescription => 'Arvioidaan annoskokoja ja ravintosisältöä';
	@override String get listening => 'Kuunnellaan';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Lopeta tallennus';
	@override String get start => 'Napauta aloittaaksesi tallennuksen';
	@override String get starting => 'Käynnistetään mikrofoni…';
	@override String get prompt => 'Napauta ja kuvaile ateriasi';
	@override String get tapToRetry => 'Napauta yrittääksesi uudelleen';
	@override String get example => 'Kokeile: “2 rotia dalin kanssa”';
	@override String get unavailable => 'Puheentunnistus ei ole käytettävissä. Tarkista mikrofonin käyttöoikeus kellon asetuksista.';
	@override String get didNotStart => 'Mikrofoni ei käynnistynyt. Napauta yrittääksesi uudelleen.';
	@override String get startFailed => 'Tallennuksen käynnistäminen epäonnistui. Tarkista mikrofonin käyttöoikeudet.';
	@override String get allowMicrophone => 'Salli mikrofonin käyttö kirjauksia varten.';
	@override String get needsConnection => 'Puheentunnistus tarvitsee yhteyden. Napauta yrittääksesi uudelleen.';
	@override String get microphoneUnavailable => 'Mikrofoni ei ole käytettävissä. Napauta yrittääksesi uudelleen.';
	@override String get microphoneBusy => 'Mikrofoni on varattu. Odota hetki ja yritä uudelleen.';
	@override String get languageUnsupported => 'Puheentunnistus ei tue kellon kieltä.';
	@override String get temporarilyBusy => 'Puheentunnistus on tilapäisesti varattu. Odota hetki ja yritä uudelleen.';
	@override String get notRecognized => 'En kuullut kunnolla. Napauta mikrofonia ja yritä uudelleen.';
	@override String get noSpeech => 'Puhetta ei havaittu. Napauta mikrofonia ja yritä uudelleen.';
	@override String get analysisFailed => 'Analyysi epäonnistui. Yritä uudelleen.';
	@override String get mealNotIdentified => 'Ateriaa ei tunnistettu. Kokeile kuvailla sitä eri tavalla.';
}

// Path: watch.result
class _Translations$watch$result$fi extends Translations$watch$result$en {
	_Translations$watch$result$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aterian tiedot';
	@override String get savedOffline => 'Tallennettu paikallisesti';
	@override String get logged => 'Kirjattu!';
	@override String get mealFound => 'Ateria löytyi';
	@override String get estimatedEnergy => 'Arvioitu energiamäärä';
	@override String get logMeal => 'Kirjaa ateria';
	@override String get logging => 'Kirjataan…';
	@override String get logAnother => 'Kirjaa toinen';
	@override String get goingBack => 'Palataan…';
	@override String get savedOfflineMessage => 'Ateria tallennettu paikallisesti. Synkronoituu, kun puhelimesi yhdistyy.';
	@override String get saveFailed => 'Aterian tallennus epäonnistui. Yritä uudelleen.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$fi extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Älykäs ruoan tunnistus';
	@override String get description => 'Ota kuva ja anna AI:n tunnistaa ateriasi';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$fi extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-analyysi';
	@override String get description => 'Saat välittömiä ravintoarvoja kuvauksistasi';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$fi extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terveystietojen integraatio';
	@override String get description => 'Yhdistä Health Connectiin saadaksesi parempia näkemyksiä';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$fi extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Alipaino';
	@override String get healthyWeight => 'Terve paino';
	@override String get overweight => 'Ylipaino';
	@override String get obese => 'Lihavuus';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$fi extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Voimme auttaa sinua rakentamaan terveellisen suunnitelman kohti tasapainoista painoa ja ravinteikkaita aterioita.';
	@override String get healthy => 'Hyvä työ! Olet terveellä alueella. Autamme sinua ylläpitämään elinvoimaa ja energiatason.';
	@override String overweight({required Object appLabel}) => '${appLabel} yksinkertaistaa matkaasi AI-pohjaisella seurannalla, jotta saavutat tavoitteesi mukavasti.';
	@override String get obese => 'Olemme täällä tukemassa sinua henkilökohtaisella ohjauksella ja kestäviksi suunnitelluilla strategioilla terveyttäsi varten.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$fi extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automaattinen kaloriseuranta';
	@override String get description => 'Seuraa harjoittelun polttamia kaloreita suosikkisovelluksistasi';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$fi extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kulutetut kalorit';
	@override String get description => 'Lue tämän päivän kulutettujen kalorien kokonaismäärä Health Connectista';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$fi extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edistymisnäkymät';
	@override String get description => 'Saat yksityiskohtaisia näkymiä terveystrendeistäsi';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$fi extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jaa kirjatut ateriat';
	@override String get description => 'Kirjoita Calorifyyn kirjaamasi ateriat Health Connectiin';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$fi extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Saumaton integraatio';
	@override String get description => 'Synkronoi tietoja suosikkiterveyssovelluksistasi';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$fi extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sinä päätät';
	@override String get description => 'Valitse haluamasi käyttöoikeus ja muuta pääsyä milloin tahansa';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$fi extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Et ole yksin';
	@override String get genericMessage => 'Tutkimukset osoittavat, että johdonmukainen seuranta on paras ennustaja pitkäaikaiselle menestykselle.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age}-vuotiaalle ${gender}:lle, joka haluaa ${goal}, johdonmukainen seuranta on tärkein menestyksen ennustaja.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} tekee siitä 10x helpompaa kuin manuaalisesti.';
	@override String get getStartedTitle => 'Valmis aloittamaan?';
	@override String get tipPhoto => 'Ota kuva aterioistasi välitöntä analyysia varten';
	@override String get tipConsistency => 'Kirjaa säännöllisesti nähdäksesi merkittäviä edistysaskeleita';
	@override String get tipProgress => 'Seuraa edistystäsi päivittäin pysyäksesi motivoituneena';
	@override String get button => 'Aloitetaan';
	@override String get defaultGender => 'henkilö';
	@override String get defaultGoal => 'terveempi sinä';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$fi extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terveysprofiilisi';
	@override String bmiDescription({required Object bmi}) => 'Mittiesi perusteella BMI:si on ${bmi}.';
	@override String get finalizeDescription => 'Viimeistellään profiilisi, jotta voimme räätälöidä kokemuksesi.';
	@override String get goalGain => 'saada';
	@override String get goalLose => 'laihtua';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Saavuttaaksesi tavoitteen, sinun täytyy ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Olet tavoitepainossasi! Autamme sinua ylläpitämään sitä.';
	@override String get button => 'Aloitetaan';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$fi extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erinomainen alku!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Olet ottanut ensimmäisen askeleen kohti ${goalText}. Koska olet ${activityText}, ${appLabel} säätää tavoitteesi vastaamaan elämäntyyliäsi.';
	@override String get personalizedTargets => 'Räätälöidyt kalorintavoitteet';
	@override String get aiMealDetection => 'AI-pohjainen aterian tunnistus';
	@override String get macroBreakdowns => 'Yksityiskohtaiset makroravinteiden erittelyt';
	@override String get button => 'Aloitetaan';
	@override String get defaultGoal => 'tavoitteitasi';
	@override String get defaultActivity => 'aktiivinen';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$fi extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Läihtyminen';
	@override String get description => 'Luo kalorivajetta laihtumista varten';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$fi extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Säilytä paino';
	@override String get description => 'Säilytä nykyinen painosi';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$fi extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lisää painoa';
	@override String get description => 'Luo kaloriylijäämä painon lisäämiseksi';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$fi extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Vähän liikkuva';
	@override String get description => 'Vähän tai ei lainkaan liikuntaa';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$fi extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kevyesti aktiivinen';
	@override String get description => 'Kevyt liikunta 1–3 päivää/viikko';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$fi extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kohtalaisesti aktiivinen';
	@override String get description => 'Kohtalainen liikunta 3–5 päivää/viikko';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$fi extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Erittäin aktiivinen';
	@override String get description => 'Rankka liikunta 6–7 päivää/viikko';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$fi extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Erittäin intensiivinen';
	@override String get description => 'Todella raskas liikunta tai fyysinen työ';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$fi extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ei saatavilla';
	@override String get description => 'Health Connect ei ole käytettävissä tällä laitteella. Asenna Health Connect Play Storesta (Android 9+) tai päivitä Android 14+:aan.';
	@override String get unsupportedDescription => 'Health Connectia ei tueta tällä laitteella.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$fi extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect vaatii huomiota';
	@override String get description => 'Asenna tai päivitä Health Connect ennen pääsyn hallintaa.';
	@override String get action => 'Asenna tai päivitä';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$fi extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oikeudet';
	@override String get description => 'Seuraavia oikeuksia pyydetään tarjotaksemme Health Connect -integraation:';
	@override String get granted => 'Myönnetty';
	@override String get notGranted => 'Ei myönnetty';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$fi caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$fi._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$fi nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$fi._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$fi nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$fi._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$fi extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tarinaamme';
	@override String content({required Object appLabel}) => '${appLabel} syntyi yksinkertaisesta turhautumisesta: useimmat kaloriseurantasovellukset ovat joko liian monimutkaisia, vaativat jatkuvaa manuaalista syöttöä, veloittavat suuria tilausmaksuja tai vaarantavat yksityisyyden.\n\nYksittäisenä kehittäjänä halusin rakentaa jotain yksinkertaisempaa ja reilumpaa — sovelluksen, joka käyttää AI:ta vähentääkseen vaivaa, pysyy nopeana ja ilmaisena käyttää, ja käsittelee terveystietojasi kunnioittavasti.\n\n${appLabel} on sovellus, jonka toivoisin olevan olemassa: ei tilejä, ei seurantaa, ei mainoksia — vain selkeitä, käytännöllisiä näkemyksiä ja sinun terveystavoitteesi.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$fi extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yksityisyytesi on tärkeä';
	@override String get description => 'Yksityisyys ei ole harkinnanvarainen lisä — se on suunnitteluperiaate. Tässä, mitä se tarkoittaa käytännössä:';
	@override String get noAccounts => 'Ei tilejä vaadita\nKäytä sovellusta välittömästi. Ei kirjautumisia, ei identiteettejä.';
	@override String noTracking({required Object appLabel}) => 'Ei käytöksen seurantaa\n${appLabel} ei seuraa toimintaasi, rakenna käyttötottumuksia tai seuraa sinua sovellusten tai verkkosivujen välillä.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Rajoitettu analytiikka ja diagnostiikka\n${appLabel} käyttää sovelluksen perustapahtumia ja kaatumisdiagnostiikkaa luotettavuuden parantamiseen. Terveystietojen arvoja ei käytetä mainontaan eikä myydä.';
	@override String noAds({required Object appLabel}) => 'Mainokseton suunnittelu\n${appLabel} on rakennettu toimimaan ilman mainoksia tai dataperusteista rahastusta.';
	@override String get noDataSelling => 'Ei datan myyntiä\nTerveystietojasi ei koskaan myydä tai jaeta kolmansille osapuolille.';
	@override String get localStorage => 'Laitteella ensisijaisesti tallennus\nTietosi säilyvät laitteellasi.';
	@override String get privacyPolicy => 'Tietosuojakäytäntö';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$fi extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rakennettu yksinkehittäjän toimesta';
	@override String description({required Object appLabel}) => '${appLabel} on rakennettu ja ylläpidetty yhden kehittäjän toimesta, joka keskittyy rauhalliseen, yksityisyyttä kunnioittavaan terveysohjelmistoon.\n\nPalaute luetaan henkilökohtaisesti ja auttaa muovaamaan sovelluksen kehityssuuntaa.';
	@override String get website => 'Verkkosivusto';
	@override String get email => 'Sähköposti';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$fi extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Pidätkö ${appLabel}:sta?';
	@override String description({required Object appLabel}) => 'Palautteesi auttaa tekemään ${appLabel}:sta parempaa kaikille.';
	@override String get rateApp => 'Arvostele Play Storessa';
	@override String get sendFeedback => 'Lähetä palaute';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$fi extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Annoskoko';
	@override String get description => 'Arvioiden tarkkuus perustuu pitkälti oikeaan annoskoon arviointiisi.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$fi extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Valmistustavat';
	@override String description({required Object appLabel}) => 'Ruokien valmistustavat voivat merkittävästi muuttaa ravintoarvoja. ${appLabel}in arviot eivät aina huomioi näitä eroja.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$fi extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ainesosat';
	@override String get description => 'Monimutkaiset ruoat, joissa on paljon piilotettuja ainesosia, saattavat johtaa epätarkempiin arvioihin.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$fi extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tietokantaan liittyvät rajoitukset';
	@override String description({required Object appLabel}) => '${appLabel}in ruokarekisteri on laaja, mutta se ei välttämättä sisällä jokaista mahdollista ruokaa tai variaatiota.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$fi extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorien tarkkuus';
	@override String get description => 'Tämä arvio on yhtä tarkka kuin kirjaamiesi kulutus- ja polttoarvioiden tarkkuus. Virheellinen kirjaaminen johtaa virheelliseen ennusteeseen.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$fi extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiset tekijät';
	@override String description({required Object appLabel}) => 'Todellinen laihtuminen/lihastus riippuu aineenvaihdunnasta, hormoneista, unesta, stressistä, nesteytyksestä ja muista yksilöllisistä tekijöistä, joita ${appLabel} ei voi mitata.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$fi extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veden paino & vaihtelut';
	@override String get description => 'Normaali päiväkohtainen paino voi vaihdella merkittävästi vedenpidätyksen, ruoansulatuksen ja ajankohdan vuoksi. Arvio ei ota huomioon näitä päivittäisiä vaihteluita.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$fi extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ammatillinen ohjaus';
	@override String get description => 'Älä käytä tätä arviota lääketieteellisten päätösten tekemiseen. Kysy aina terveydenhuollon ammattilaiselta tai rekisteröidyltä ravitsemusterapeutilta henkilökohtaista painonhallintaohjeistusta.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$fi extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Perusaineenvaihdunta (BMR) on kalorimäärä, jonka kehosi polttaa levossa ylläpitääkseen perustoimintoja, kuten hengitystä ja verenkiertoa. BMR riippuu iästäsi, sukupuolestasi, pituudestasi ja painostasi. Korkeampi BMR tarkoittaa, että kehosi polttaa luonnollisesti enemmän kaloreita levossa, usein enemmän lihasmassan, nuoren iän tai miehisyyden takia. Alhaisempi BMR viittaa yleensä vähäisempään lihasmassan määrään, korkeampaan ikään tai naiseuteen.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$fi extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Kokonaispäivittäinen energiankulutus (TDEE) on päivittäinen kalorimäärä, jonka poltat, ja siihen sisältyy BMR sekä liikunnasta ja päivittäisestä liikkumisesta poltetut kalorit. TDEE riippuu BMR:stäsi ja aktiivisuustasostasi. Korkeampi TDEE tarkoittaa, että poltat enemmän kaloreita kokonaisuudessaan, yleensä aktiivisuuden tai korkeamman BMR:n vuoksi. Alhaisempi TDEE viittaa vähäisempään päivittäiseen aktiivisuuteen tai matalampaan BMR:ään.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$fi extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päivittäinen tavoite';
	@override String get description => 'Päivittäinen tavoite on suositeltu päivittäinen kalorinsaantisi TDEE:si ja painotavoitteesi perusteella. Laihduttaessa kulutat vähemmän kaloreita kuin TDEE. Painon ylläpitämiseksi vastaat TDEE:tä. Painon nostamiseksi kulutat enemmän kaloreita kuin TDEE. Tämä auttaa sinua saavuttamaan halutun painon muutoksen terveellisellä tahdilla.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$fi extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Miten arvio lasketaan';
	@override String get description => 'Laskemme TDEE:si (profiilisi perusteella) ja kerromme sen kuluneen päivän osuudella (tunnit + minuutit) / 24 arvioidaksemme tähän mennessä poltetut kalorit.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$fi extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ammatillinen ohjaus';
	@override String get description => 'Älä käytä tätä arviota lääketieteellisten päätösten tekemiseen. Kysy aina terveydenhuollon ammattilaiselta tai rekisteröidyltä ravitsemusterapeutilta henkilökohtaista painonhallintaohjeistusta.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$fi extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lue poltetut kokonaiskalorit';
	@override String get description => 'Antaa sovellukselle luvan lukea Health Connectista polttamasi kokonaiskalorit.';
	@override String get usage => 'Tätä käyttöoikeutta käytetään näyttämään päivittäinen kalorinkulutuksesi sovelluksessa, jotta ymmärrät kokonaissähkönkulutuksesi päivän aikana.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$fi extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lue ravintotiedot';
	@override String get description => 'Antaa sovellukselle luvan lukea ravintotietoja Health Connectista.';
	@override String get usage => 'Tämä oikeus sallii sovelluksen lukea muiden Health Connectiin yhdistettyjen sovellusten kirjaamia ravintotietoja ja tarjoaa kattavamman kuvan ravinnostasi.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$fi extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kirjoita ravintotietoja';
	@override String get description => 'Antaa sovellukselle luvan kirjoittaa ravintotietoja Health Connectiin.';
	@override String get usage => 'Tämä oikeus sallii sovelluksen synkronoida kirjauksesi Health Connectiin, jolloin ravintotietosi ovat muiden käyttämiesi terveys- ja kuntoilussovellusten saatavilla.';
}

/// The flat map containing all translations for locale <fi>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFi {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Suomi',
			'flag' => '🇫🇮',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Olet tehnyt liian monta pyyntöä. Odota hetki ja yritä uudelleen.',
			'errors.networkError' => 'Verkkovirhe. Tarkista internet-yhteytesi.',
			'errors.unknownError' => 'Jotain meni pieleen. Yritä myöhemmin uudelleen.',
			'errors.loadingProfileData' => 'Virhe profiilitietojen lataamisessa',
			'errors.somethingWentWrong' => 'Jotain meni pieleen.',
			'errors.retry' => 'Yritä uudelleen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Tervetuloa ${appLabel}',
			'onboarding.subtitle' => 'Henkilökohtainen ravitsemuskumppanisi, jota pyörittää AI',
			'onboarding.getStarted' => 'Aloita',
			'onboarding.features.foodRecognition.title' => 'Älykäs ruoan tunnistus',
			'onboarding.features.foodRecognition.description' => 'Ota kuva ja anna AI:n tunnistaa ateriasi',
			'onboarding.features.aiAnalysis.title' => 'AI-analyysi',
			'onboarding.features.aiAnalysis.description' => 'Saat välittömiä ravintoarvoja kuvauksistasi',
			'onboarding.features.healthIntegration.title' => 'Terveystietojen integraatio',
			'onboarding.features.healthIntegration.description' => 'Yhdistä Health Connectiin saadaksesi parempia näkemyksiä',
			'onboarding.gender.title' => 'Mikä on sukupuolesi?',
			'onboarding.gender.description' => 'Sukupuoli auttaa meitä laskemaan perusaineenvaihduntasi (BMR) tarkasti.',
			'onboarding.gender.next' => 'Seuraava',
			'onboarding.height.title' => 'Kuinka pitkä olet?',
			'onboarding.height.description' => 'Pituutesi auttaa meitä laskemaan BMI:si ja energiantarpeesi tarkasti.',
			'onboarding.height.metric' => 'Metrinen',
			'onboarding.height.imperial' => 'Imperiaalinen',
			'onboarding.height.next' => 'Seuraava',
			'onboarding.weight.currentTitle' => 'Mikä on nykyinen painosi?',
			'onboarding.weight.currentDescription' => 'Nykyinen painosi on tärkeä, jotta voimme räätälöidä päivittäiset tavoitteesi.',
			'onboarding.weight.targetTitle' => 'Mikä on tavoitepainosi?',
			'onboarding.weight.targetDescription' => 'Tavoitepainon asettaminen auttaa meitä määrittämään pitkän aikavälin suunnitelmasi.',
			'onboarding.weight.metric' => 'Metrinen',
			'onboarding.weight.imperial' => 'Imperiaalinen',
			'onboarding.weight.next' => 'Seuraava',
			'onboarding.age.title' => 'Milloin olet syntynyt?',
			'onboarding.age.description' => 'Ikäsi auttaa meitä laskemaan kaloritarpeesi tarkasti.',
			'onboarding.age.next' => 'Seuraava',
			'onboarding.bmiScale.underweight' => 'Alipaino',
			'onboarding.bmiScale.healthy' => 'Terve',
			'onboarding.bmiScale.overweight' => 'Ylipaino',
			'onboarding.bmiScale.obese' => 'Lihavuus',
			'onboarding.bmiScale.categories.underweight' => 'Alipaino',
			'onboarding.bmiScale.categories.healthyWeight' => 'Terve paino',
			'onboarding.bmiScale.categories.overweight' => 'Ylipaino',
			'onboarding.bmiScale.categories.obese' => 'Lihavuus',
			'onboarding.bmiScale.messages.underweight' => 'Voimme auttaa sinua rakentamaan terveellisen suunnitelman kohti tasapainoista painoa ja ravinteikkaita aterioita.',
			'onboarding.bmiScale.messages.healthy' => 'Hyvä työ! Olet terveellä alueella. Autamme sinua ylläpitämään elinvoimaa ja energiatason.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} yksinkertaistaa matkaasi AI-pohjaisella seurannalla, jotta saavutat tavoitteesi mukavasti.',
			'onboarding.bmiScale.messages.obese' => 'Olemme täällä tukemassa sinua henkilökohtaisella ohjauksella ja kestäviksi suunnitelluilla strategioilla terveyttäsi varten.',
			'onboarding.weightGoal.title' => 'Mikä on tavoitteesi?',
			'onboarding.weightGoal.description' => 'Valitse tavoite, joka parhaiten kuvaa mitä haluat saavuttaa',
			'onboarding.activityLevel.title' => 'Kuinka aktiivinen olet?',
			'onboarding.activityLevel.description' => 'Tämä auttaa meitä laskemaan päivittäiset kaloritarpeesi tarkemmin',
			'onboarding.healthConnect.title' => 'Yhdistä Health Connectiin',
			'onboarding.healthConnect.description' => 'Synkronoi terveystietosi parempia näkemyksiä ja automaattista kaloriseurantaa varten',
			'onboarding.healthConnect.overviewDescription' => 'Käytä kulutettuja kaloreita päivätavoitteessasi ja halutessasi jaa kirjaamasi ateriat Health Connectiin.',
			'onboarding.healthConnect.automaticTracking.title' => 'Automaattinen kaloriseuranta',
			'onboarding.healthConnect.automaticTracking.description' => 'Seuraa harjoittelun polttamia kaloreita suosikkisovelluksistasi',
			'onboarding.healthConnect.caloriesBurned.title' => 'Kulutetut kalorit',
			'onboarding.healthConnect.caloriesBurned.description' => 'Lue tämän päivän kulutettujen kalorien kokonaismäärä Health Connectista',
			'onboarding.healthConnect.progressInsights.title' => 'Edistymisnäkymät',
			'onboarding.healthConnect.progressInsights.description' => 'Saat yksityiskohtaisia näkymiä terveystrendeistäsi',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Jaa kirjatut ateriat',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Kirjoita Calorifyyn kirjaamasi ateriat Health Connectiin',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Saumaton integraatio',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synkronoi tietoja suosikkiterveyssovelluksistasi',
			'onboarding.healthConnect.userControl.title' => 'Sinä päätät',
			'onboarding.healthConnect.userControl.description' => 'Valitse haluamasi käyttöoikeus ja muuta pääsyä milloin tahansa',
			'onboarding.healthConnect.connected' => 'Health Connect yhdistetty',
			'onboarding.healthConnect.notConnected' => 'Health Connect ei yhdistetty',
			'onboarding.healthConnect.setup' => 'Aseta Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Ohita nyt',
			'onboarding.healthConnect.statusConnected' => 'Health Connect on yhdistetty.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect on yhdistetty onnistuneesti!',
			'onboarding.healthConnect.statusNotConnected' => 'Valitse Health Connect -ominaisuudet, jotka haluat ottaa käyttöön.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect on yhdistetty osittain. Ota jäljellä oleva käyttöoikeus käyttöön käyttääksesi molempia ominaisuuksia.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Jatka asentamalla tai päivittämällä Health Connect.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connectia ei tueta tällä laitteella.',
			'onboarding.healthConnect.installOrUpdate' => 'Asenna tai päivitä',
			'onboarding.healthConnect.manageAccess' => 'Hallitse pääsyä',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Lupa evätty. Ota käyttöön Health Connect -oikeudet puhelimesi asetuksista ${appLabel}:lle.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Virhe Health Connectin asennuksessa: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Et ole yksin',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Tutkimukset osoittavat, että johdonmukainen seuranta on paras ennustaja pitkäaikaiselle menestykselle.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age}-vuotiaalle ${gender}:lle, joka haluaa ${goal}, johdonmukainen seuranta on tärkein menestyksen ennustaja.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} tekee siitä 10x helpompaa kuin manuaalisesti.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Valmis aloittamaan?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Ota kuva aterioistasi välitöntä analyysia varten',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Kirjaa säännöllisesti nähdäksesi merkittäviä edistysaskeleita',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Seuraa edistystäsi päivittäin pysyäksesi motivoituneena',
			'onboarding.reinforcement.trackingSuccess.button' => 'Aloitetaan',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'henkilö',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'terveempi sinä',
			'onboarding.reinforcement.healthProfile.title' => 'Terveysprofiilisi',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Mittiesi perusteella BMI:si on ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Viimeistellään profiilisi, jotta voimme räätälöidä kokemuksesi.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'saada',
			'onboarding.reinforcement.healthProfile.goalLose' => 'laihtua',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Saavuttaaksesi tavoitteen, sinun täytyy ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Olet tavoitepainossasi! Autamme sinua ylläpitämään sitä.',
			'onboarding.reinforcement.healthProfile.button' => 'Aloitetaan',
			'onboarding.reinforcement.goalLifestyle.title' => 'Erinomainen alku!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Olet ottanut ensimmäisen askeleen kohti ${goalText}. Koska olet ${activityText}, ${appLabel} säätää tavoitteesi vastaamaan elämäntyyliäsi.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Räätälöidyt kalorintavoitteet',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-pohjainen aterian tunnistus',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Yksityiskohtaiset makroravinteiden erittelyt',
			'onboarding.reinforcement.goalLifestyle.button' => 'Aloitetaan',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'tavoitteitasi',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiivinen',
			'tabs.dashboard' => 'Koonti',
			'tabs.history' => 'Historia',
			'home.aiSummary.title' => 'AI-yhteenvetosi',
			'home.aiSummary.logMore' => 'Kirjaa lisää aterioita seuraavien päivien aikana saadaksesi henkilökohtaisia AI-näkemyksiä.',
			'home.aiSummary.loading' => 'Ladataan yhteenvetoa...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} ateriaa kirjattu',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Tasapainopisteet ${score}',
			'home.aiSummary.topFoods' => 'Suosituimmat ruoat',
			'home.aiSummary.trendUp' => 'Kalorit nousemassa',
			'home.aiSummary.trendDown' => 'Kalorit laskevana',
			'home.aiSummary.trendSteady' => 'Kalorit pysyvät tasaisina',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Päivitetty ${time}',
			'home.dailyGoal.title' => 'Aseta päivittäinen tavoitteesi',
			'home.dailyGoal.titleSet' => 'Päivittäinen tavoitteesi',
			'home.dailyGoal.description' => 'Valmis aloittamaan hyvinvointimatkasi? Aseta päivittäinen kalorirajasi alle käynnistääksesi edistymisen.',
			'home.dailyGoal.descriptionSet' => 'Kompassisi on asetettu! Tämä on päivittäinen kalorirajasi, joka ohjaa sinua.',
			'home.dailyGoal.yourGoal' => 'Tavoitteesi',
			'home.dailyGoal.goal' => 'Tavoite',
			'home.dailyGoal.dailyCalories' => 'Päivittäiset kalorit (kcal)',
			'home.dailyGoal.setGoal' => 'Aseta tavoite',
			'home.dailyGoal.intake' => 'Saanti',
			'home.dailyGoal.burned' => 'Poltettu',
			'home.dailyGoal.weightImpact' => 'Vaikutus painoon',
			'home.dailyGoal.estLoss' => 'Arvioitu pudotus',
			'home.dailyGoal.estGain' => 'Arvioitu nousu',
			'home.dailyGoal.kcal' => 'kilokaloria (kcal)',
			'home.dailySummary.title' => 'Päiväkohtainen yhteenveto',
			'home.dailySummary.calories' => 'Kalorit',
			'home.dailySummary.carbs' => 'Hiilihydraatit',
			'home.dailySummary.protein' => 'Proteiini',
			'home.dailySummary.fat' => 'Rasva',
			'home.dailySummary.fiber' => 'Kuitu',
			'home.dailySummary.grams' => 'grammaa',
			'home.dailySummary.chartAccessibilityLabel' => 'Makroravinteiden kaavio',
			'home.intakeProgress.title' => 'Päivän makrojako',
			'home.intakeProgress.target' => 'Tavoite',
			'home.intakeProgress.current' => 'Nykyinen',
			'home.intakeHistory.title' => '7 päivän makrohistoria',
			'home.intakeHistory.trendTitle' => 'Päivän trendi',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Huippu: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Ei historiaa vielä',
			'home.intakeHistory.startLogging' => 'Aloita aterioiden kirjaaminen nähdäksesi\n7 päivän makrotrendit täällä',
			'home.mealLog.title' => 'Kirjatut ateriat',
			'home.mealLog.emptyMessage' => 'Ota kuva viimeisestä ateriastasi kirjataksesi sen tänne.',
			'home.mealLog.noMealsToday' => 'Ei ateriakirjauksia tälle päivälle',
			'home.mealLog.seeAllMeals' => 'Näytä kaikki ateriat',
			'home.mealDescription.title' => 'Nopea lisäys AI:lla',
			'home.mealDescription.description' => 'Kuvaile ateriasi ja anna AI:n hoitaa yksityiskohdat.',
			'home.mealDescription.hint' => 'esim. Aamupalalla söin ison kulhollisen kaurapuuroa viipaloidun banaanin ja mitallisen heraproteiinia ...',
			'home.mealDescription.analyzeMeal' => 'Analysoi ateria',
			'home.favoriteMeals.title' => 'Suosikkiateriat',
			'home.favoriteMeals.description' => 'Lisää nopeasti joku suosikeistasi.',
			'home.favoriteMeals.noFavorites' => 'Ei suosikkia vielä.',
			'home.favoriteMeals.addFavoriteHint' => 'Klikkaa tähteä aterian kohdalla merkitäksesi sen suosikiksi.',
			'home.favoriteMeals.seeAll' => 'Näytä kaikki',
			'home.favoriteMeals.add' => 'Lisää',
			'home.mealSnap.title' => 'Kuvaa & seuraa ateriasi',
			'home.mealSnap.description' => 'Käytä kameraa ottaaksesi kuvan ruoastasi AI-analyysiä varten.',
			'home.mealSnap.openCamera' => 'Avaa kamera',
			'home.mealSnap.gallery' => 'Galleria',
			'home.mealSnap.compressingPhoto' => 'Optimoidaan kuva…',
			'home.mealSnap.uploadingPhoto' => 'Lähetetään kuvaa…',
			'home.connectHealth.title' => 'Synkronoi Health Connectiin',
			'home.connectHealth.description' => 'Synkronoi ravintotietosi Health Connectiin',
			'home.connectHealth.install' => 'Asenna',
			'home.connectHealth.dataUseDescription' => 'Käytä kulutettuja kaloreita tavoitteessasi ja jaa kirjatut ateriat',
			'home.connectHealth.installOrUpdate' => 'Asenna tai päivitä',
			'home.connectHealth.connect' => 'Yhdistä',
			'history.noMeals' => 'Ei kirjattuja aterioita',
			'history.emptyMessage' => 'Ota kuva viimeisestä ateriastasi kirjataksesi sen tänne.',
			'history.today' => 'Tänään',
			'history.yesterday' => 'Eilen',
			'meal.ohNo' => 'Voi ei!',
			'meal.delete' => 'Poista',
			'meal.editMeal' => 'Muokkaa ateriaa',
			'meal.addMeal' => 'Lisää ateria',
			'meal.saveMeal' => 'Tallenna ateria',
			'meal.save' => 'Tallenna',
			'meal.mealName' => 'Aterian nimi',
			'meal.mealNameHint' => 'esim. Munakokkeli ja paahtoleipä',
			'meal.nameRequired' => 'Anna aterialle nimi ennen tallentamista.',
			'meal.mealQuantity' => 'Aterian määrä',
			'meal.mealQuantityHint' => 'esim. 1 kulho, 2 viipaletta',
			'meal.timeOfMeal' => 'Ajanhetki',
			'meal.timeOfMealHint' => 'Valitse milloin söit aterian',
			'meal.mealType' => 'Ateriatyyppi',
			'meal.nutrition.calories' => 'Kalorit',
			'meal.nutrition.carbs' => 'Hiilihydraatit (g)',
			'meal.nutrition.protein' => 'Proteiini (g)',
			'meal.nutrition.fat' => 'Rasva (g)',
			'meal.nutrition.fiber' => 'Kuitu (g)',
			'meal.deleteConfirmation.title' => 'Poista ateria',
			'meal.deleteConfirmation.message' => 'Haluatko varmasti poistaa tämän ateriakirjauksen?',
			'meal.deleteConfirmation.cancel' => 'Peruuta',
			'meal.deleteConfirmation.delete' => 'Poista',
			'meal.addedToLog' => 'Ateria lisätty kirjanpitoosi!',
			'meal.couldNotAdd' => ({required Object error}) => 'Aterian lisääminen epäonnistui: ${error}',
			'meal.savedSuccessfully' => 'Ateria lisätty onnistuneesti!',
			'meal.updatedSuccessfully' => 'Ateria päivitetty onnistuneesti!',
			'meal.errorSaving' => ({required Object error}) => 'Virhe tallennettaessa ateriaa: ${error}',
			'meal.removedFromFavorites' => 'Poistettu suosikeista!',
			'meal.savedAsFavorite' => 'Ateria tallennettu suosikiksi!',
			'meal.unfavorite' => 'Poista suosikista',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Suosikin päivittäminen epäonnistui: ${error}',
			'meal.feedbackThanks' => 'Kiitos palautteesta!',
			'meal.reanalysisUpdated' => 'Päivitettiin aterian analyysi palautteesi perusteella.',
			'meal.failedToProcess' => ({required Object error}) => 'Käsittely epäonnistui: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Kuvan käsittely epäonnistui: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Virhe kuvan pakkaamisessa: ${error}',
			'meal.imageTooLarge' => 'Tämän kuvan koko on pakkaamisen jälkeenkin yli 1 Mt. Valitse toinen kuva.',
			'meal.failedToSave' => 'Tietojen tallennus epäonnistui. Yritä uudelleen.',
			'meal.skip' => 'Ohita',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Kysymys ${current} / ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Ei saatavilla olevia kysymyksiä',
			'meal.questionFlow.next' => 'Seuraava',
			'meal.questionFlow.continueLabel' => 'Jatka',
			'meal.questionFlow.countQuestion' => 'Valitse määrä',
			'meal.questionFlow.itemSizeQuestion' => 'Valitse tuotteen koko',
			'meal.questionFlow.portionSizeQuestion' => 'Valitse annoksen koko',
			'meal.questionFlow.option6plus' => '6 tai enemmän',
			'meal.questionFlow.optionSmall' => 'Pieni',
			'meal.questionFlow.optionRegular' => 'Normaali',
			'meal.questionFlow.optionLarge' => 'Suuri',
			'meal.questionFlow.optionThin' => 'Ohut',
			'meal.questionFlow.optionThick' => 'Paksu',
			'meal.questionFlow.optionMini' => 'Mini',
			'meal.questionFlow.optionStuffed' => 'Täytetty',
			'meal.questionFlow.optionHeavy' => 'Painava',
			'meal.questionFlow.optionSmaller' => 'Pienempi',
			'meal.questionFlow.optionTypical' => 'Tyypillinen',
			'meal.questionFlow.optionLarger' => 'Suurempi',
			'meal.analysis.title' => 'Analysoidaan ateriaasi',
			'meal.analysis.stepStarted' => 'Aloitetaan…',
			'meal.analysis.stepDecomposition' => 'Ymmärretään ateriaasi…',
			'meal.analysis.stepIngredients' => 'Etsitään ainesosia ja ravintoarvoja…',
			'meal.analysis.stepUncertainty' => 'Tarkistetaan varmuutta…',
			'meal.analysis.stepMealTypeQuestion' => 'Melkein valmis…',
			'meal.analysis.stepResult' => 'Viimeistellään tulosta…',
			'meal.analysis.stepError' => 'Jotain meni pieleen',
			'meal.analysis.noFoodTip' => 'Ruokaa ei tunnistettu. Kokeile toista kuvaa tai kuvausta.',
			'meal.analysis.stepDefault' => 'Analysoidaan ateriaasi…',
			'meal.analysis.progressUnderstand' => 'Ymmärretään ateria',
			'meal.analysis.progressMatch' => 'Haetaan ainesosien ravintoarvoja',
			'meal.analysis.progressCheck' => 'Tarkistetaan annoskoot ja varmuus',
			'meal.analysis.progressMealType' => 'Valitaan ateriatyyppi',
			'meal.analysis.progressFinish' => 'Lasketaan kalorit ja makrot',
			'meal.analysis.detectedIngredientHeading' => 'Havaitsemamme ainesosat',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} lisää',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ainesosaa tunnistettu',
			'meal.analysis.ingredientsPending' => 'Skannataan ainesosia…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '”${text}”',
			'meal.analysis.offlineTip0' => 'Vinkki: Johdonmukaisuus voittaa täydellisyyden—säännölliset merkinnät paljastavat merkitykselliset kaavat.',
			'meal.analysis.offlineTip1' => 'Vinkki: Kuvia varten luonnonvalo ja ylhäältä otettu näkymä auttavat annosarvioissa.',
			'meal.analysis.offlineTip2' => 'Vinkki: Mainitse juomat, kastikkeet ja paistorasva—ne lisäävät kaloreita, jotka usein unohdetaan.',
			'meal.analysis.offlineTip3' => 'Vinkki: Pikainen annosmerkintä (1 kulho, iso kahvi) tekee arvioista tarkempia.',
			'meal.analysis.offlineTip4' => 'Vinkki: Aterian jälkeinen kirjaaminen rakentaa silti tapaa; täydellisyyttä ei vaadita.',
			'meal.analysis.offlineTip5' => 'Vinkki: Kerro, miten ruoka on valmistettu, jos se muuttaa kaloreita paljon (paistettu vs. uunissa).',
			'meal.localInference.reviewTitle' => 'Tarkista tunnistetut ainesosat',
			'meal.localInference.reviewSubtitle' => 'Tämä tulkittiin laitteellasi. Korjaa nimet tai annoskoot ennen ravintoarvojen laskemista.',
			'meal.localInference.mealName' => 'Aterian nimi',
			'meal.localInference.ingredient' => 'Ainesosa',
			'meal.localInference.grams' => 'Arvioidut grammat',
			'meal.localInference.removeIngredient' => 'Poista ainesosa',
			'meal.localInference.continueLabel' => 'Jatka',
			'meal.localInference.invalidProposal' => 'Lisää vähintään yksi ainesosa ja käytä positiivista grammamäärää.',
			'meal.localInference.localUnavailable' => 'Laitteen oma analyysi ei ole tällä hetkellä käytettävissä.',
			'meal.feedback.title' => 'Mikä näyttää väärältä?',
			'meal.feedback.subtitle' => 'Auttaaksesi parantamaan analyysiä, valitse yksi tai useampi ongelma.',
			'meal.feedback.tellUsMore' => 'Kerro lisää',
			'meal.feedback.describeIncorrect' => 'Kuvaile mikä oli virheellistä',
			'meal.feedback.submit' => 'Lähetä',
			'meal.feedback.issueFoodIdentification' => 'Ruoan tunnistus',
			'meal.feedback.issuePortionSize' => 'Annoksen koko',
			'meal.feedback.issueCalorieDistribution' => 'Kalorien jakautuminen',
			'meal.feedback.issueMacrosWrong' => 'Makrot väärin',
			'meal.feedback.issueMissingItems' => 'Puuttuvat ainesosat',
			'meal.feedback.issueExtraItems' => 'Liian monta ainesosaa',
			'meal.feedback.issueOther' => 'Muu',
			'favorites.title' => 'Suosikit',
			'favorites.empty' => 'Ei suosikkia vielä.',
			'favorites.searchPlaceholder' => 'Hae suosikkiaterioita',
			'favorites.searchEmptyTitle' => 'Hakusi ei vastaa yhtään suosikkia',
			'favorites.searchEmptySubtitle' => 'Kokeile toista aterian nimeä, määrää tai ateriatyyppiä.',
			'favorites.sortLabel' => 'Lajittele suosikit',
			'favorites.undo' => 'Kumoa',
			'favorites.removed' => ({required Object name}) => 'Poistettiin ${name} suosikeista',
			'favorites.sortOptions.recent' => 'Viimeisimmät',
			'favorites.sortOptions.calories' => 'Kalorit',
			'favorites.sortOptions.alphabetical' => 'A–Ö',
			'profile.title' => 'Profiili',
			'profile.noProfileData' => 'Profiilitietoja ei löytynyt',
			'profile.yourProfile' => 'Profiilisi',
			'profile.viewAndManage' => 'Katso ja hallinnoi terveystietojasi',
			'profile.sections.profile' => 'PROFIILI',
			'profile.sections.basicInformation' => 'PERUSTIEDOT',
			'profile.sections.goalsAndActivity' => 'TAVOITTEET & AKTIVITEETTI',
			'profile.sections.calculatedValues' => 'LASKETUT ARVOT',
			'profile.gender' => 'Sukupuoli',
			'profile.height' => 'Pituus',
			'profile.weight' => 'Paino',
			'profile.age' => 'Ikä',
			'profile.weightGoal' => 'Painotavoite',
			'profile.targetWeight' => 'Tavoitepaino',
			'profile.activityLevel' => 'Aktiivisuustaso',
			'profile.healthMetrics' => 'Terveysmittarit',
			'profile.notSet' => 'Ei asetettu',
			'profile.years' => 'vuotta',
			'profile.updatedSuccessfully' => 'Profiili päivitetty onnistuneesti!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Päivittäinen tavoite',
			'profile.calculatedValues.calPerDay' => 'kal/pv',
			'profile.calculatedValues.notAvailable' => 'Ei saatavilla',
			'healthScore.title' => 'Terveysarvo',
			'healthScore.whyThisScore' => 'Miksi tämä arvo?',
			'healthScore.note' => 'Tämä arvio on AI-arvio tunnistettujen ainesosien ja ravintotiheyden perusteella. Kysy aina ammattilaiselta henkilökohtaista ravitsemusneuvontaa.',
			'healthScore.unhealthy' => 'Epäterveellinen',
			'healthScore.healthy' => 'Terveellinen',
			'healthScore.neutral' => 'Neutraali',
			'editProfile.title' => 'Muokkaa profiilia',
			'editProfile.sections.personalInformation' => 'HENKILÖTIEDOT',
			'editProfile.sections.physicalMeasurements' => 'KEHON MITAT',
			'editProfile.sections.goalsAndActivity' => 'TAVOITTEET & AKTIVITEETTI',
			'editProfile.gender' => 'Sukupuoli',
			'editProfile.dateOfBirth' => 'Syntymäaika',
			'editProfile.height' => 'Pituus',
			'editProfile.weight' => 'Paino',
			'editProfile.weightGoal' => 'Painotavoite',
			'editProfile.activityLevel' => 'Aktiivisuustaso',
			'editProfile.metric' => 'Metrinen',
			'editProfile.imperial' => 'Imperiaalinen',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'paunaa (lb)',
			'editProfile.metricCm' => 'Metrinen (cm)',
			'editProfile.imperialFtIn' => 'Imperiaalinen (ft/in)',
			'editProfile.metricKg' => 'Metrinen (kg)',
			'editProfile.imperialLbs' => 'Imperiaalinen (lbs)',
			'editProfile.genders.male' => 'Mies',
			'editProfile.genders.female' => 'Nainen',
			'editProfile.genders.other' => 'Muu',
			'editProfile.weightGoals.loseWeight.name' => 'Läihtyminen',
			'editProfile.weightGoals.loseWeight.description' => 'Luo kalorivajetta laihtumista varten',
			'editProfile.weightGoals.maintainWeight.name' => 'Säilytä paino',
			'editProfile.weightGoals.maintainWeight.description' => 'Säilytä nykyinen painosi',
			'editProfile.weightGoals.gainWeight.name' => 'Lisää painoa',
			'editProfile.weightGoals.gainWeight.description' => 'Luo kaloriylijäämä painon lisäämiseksi',
			'editProfile.activityLevels.sedentary.name' => 'Vähän liikkuva',
			'editProfile.activityLevels.sedentary.description' => 'Vähän tai ei lainkaan liikuntaa',
			'editProfile.activityLevels.lightlyActive.name' => 'Kevyesti aktiivinen',
			'editProfile.activityLevels.lightlyActive.description' => 'Kevyt liikunta 1–3 päivää/viikko',
			'editProfile.activityLevels.moderatelyActive.name' => 'Kohtalaisesti aktiivinen',
			'editProfile.activityLevels.moderatelyActive.description' => 'Kohtalainen liikunta 3–5 päivää/viikko',
			'editProfile.activityLevels.veryActive.name' => 'Erittäin aktiivinen',
			'editProfile.activityLevels.veryActive.description' => 'Rankka liikunta 6–7 päivää/viikko',
			'editProfile.activityLevels.extremelyActive.name' => 'Erittäin intensiivinen',
			'editProfile.activityLevels.extremelyActive.description' => 'Todella raskas liikunta tai fyysinen työ',
			'settings.title' => 'Asetukset',
			'settings.sections.profile' => 'PROFIILI',
			'settings.sections.localization' => 'LOKALISAATIO',
			'settings.sections.notifications' => 'ILMOITUKSET',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.localInference' => 'LAITTEEN OMA ANALYYSI',
			'settings.sections.supportAndLegal' => 'TUKI & LAINSÄÄDÄNTÖ',
			'settings.sections.about' => 'TIETOA',
			'settings.sections.dangerZone' => 'VAIKUTUSALUE',
			'settings.sections.developer' => 'KEHITTÄJÄ',
			'settings.editProfile.title' => 'Muokkaa profiilia',
			'settings.editProfile.subtitle' => 'Päivitä henkilökohtaiset tietosi',
			'settings.language.title' => 'Kieli',
			'settings.language.subtitle' => 'Valitse haluamasi kieli',
			'settings.language.searchHint' => 'Hae kieliä...',
			'settings.language.noResults' => 'Ei tuloksia',
			'settings.heightUnit.title' => 'Pituusyksikkö',
			'settings.weightUnit.title' => 'Painoyksikkö',
			'settings.mealReminders.title' => 'Ateriamuistutukset',
			'settings.mealReminders.subtitle' => 'Pysy raiteilla ajankohtaisilla muistutuksilla',
			'settings.localInference.title' => 'Aterioiden paikallinen analyysi',
			'settings.localInference.subtitle' => 'Tulkitse tuetut ateriat Gemini Nanolla ennen ravintoarvojen laskemista',
			'settings.localInference.unavailable' => 'Ei käytettävissä tällä laitteella',
			'settings.localInference.rolloutUnavailable' => 'Yhteensopiva laitteisto löytyi, mutta tämä ominaisuus ei ole käytössä tässä sovellusversiossa',
			'settings.localInference.modelSetup' => 'Gemini Nanon latauksen on valmistuttava ennen kuin tämä voidaan ottaa käyttöön',
			'settings.localInference.useLocalTitle' => 'Käytä paikallista analyysia',
			'settings.localInference.useLocalSubtitle' => 'Tulokset saattavat olla vähemmän luotettavia monimutkaisissa aterioissa.',
			'settings.localInference.disclosureTitle' => 'Ennen paikallisen analyysin käyttöönottoa',
			'settings.localInference.disclosureBody' => 'Gemini Nano voi tunnistaa ainesosia ja arvioida annoskokoja tuetuilla Android-laitteilla. Tarkistamasi ainesosaehdotus lähetetään Calorifylle USDA-ravintoarvojen vahvistusta ja laskentaa varten.',
			'settings.localInference.disclosureLimit1' => 'Monimutkaiset annokset, piilotetut ainesosat ja annoskoot saatetaan tunnistaa väärin.',
			'settings.localInference.disclosureLimit2' => 'Malli voi olla käytettävissämätön latauksen aikana, kun se on varattu, taustalla tai laitteen rajoitusten vuoksi.',
			'settings.localInference.disclosureLimit3' => 'Jos paikallinen tulkinta ei valmistu, tämä beta-versio lähettää alkuperäisen ateriakuvauksesi automaattisesti Calorifylle pilvianalyysia varten.',
			'settings.localInference.acknowledgement' => 'Ymmärrän, että minun tulee tarkistaa tunnistetut ainesosat ja annoskoot.',
			'settings.localInference.enable' => 'Hyväksy ja ota käyttöön',
			'settings.localInference.cancel' => 'Peruuta',
			'settings.theme.title' => 'Teema',
			'settings.theme.light' => 'Vaalea',
			'settings.theme.dark' => 'Tumma',
			'settings.theme.system' => 'Järjestelmä',
			'settings.sendFeedback.title' => 'Lähetä palautetta',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Auta parantamaan ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} - Sovelluspalaute',
			'settings.sendFeedback.emailBodyPrefix' => 'Anna palautteesi alla:',
			'settings.sendFeedback.appVersion' => 'Sovelluksen versio',
			'settings.sendFeedback.device' => 'Laite',
			'settings.sendFeedback.osVersion' => 'Käyttöjärjestelmäversio',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Vie ateriakirja',
			'settings.exportMealHistory.subtitle' => 'Jaa CSV tiedosto kirjatuista aterioistasi',
			'settings.exportMealHistory.shareText' => 'Calorify meal history export',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Ateriakirjan vieminen epäonnistui: ${error}',
			'settings.clearAllData.title' => 'Tyhjennä kaikki tiedot',
			'settings.clearAllData.subtitle' => 'Poista kaikki tietosi peruuttamattomasti',
			'settings.clearAllData.localOnlySubtitle' => 'Poista tälle laitteelle tallennetut Calorify-tiedot',
			'settings.clearAllData.confirmationTitle' => 'Tyhjennetäänkö kaikki tiedot?',
			'settings.clearAllData.confirmationMessage' => 'Tätä toimenpidettä ei voi peruuttaa. Kaikki kirjatut ateriasi, suosikit ja profiiliasetukset poistetaan pysyvästi.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Tämä poistaa kirjatut ateriat, suosikit ja profiiliasetukset pysyvästi tältä laitteelta. Health Connectiin jo jaettuja aterioita ja Health Connectin käyttöoikeuksia hallitaan erikseen kohdassa Asetukset > Health Connect.',
			'settings.clearAllData.cancel' => 'Peruuta',
			'settings.clearAllData.clearEverything' => 'Tyhjennä kaikki',
			'settings.debugOptions.title' => 'Debug-asetukset',
			'settings.developerModeEnabled' => 'Kehittäjätila käytössä!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Katso ja hallinnoi käyttöoikeuksia',
			'settings.healthConnect.unavailable.title' => 'Health Connect ei saatavilla',
			'settings.healthConnect.unavailable.description' => 'Health Connect ei ole käytettävissä tällä laitteella. Asenna Health Connect Play Storesta (Android 9+) tai päivitä Android 14+:aan.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connectia ei tueta tällä laitteella.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect vaatii huomiota',
			'settings.healthConnect.updateRequired.description' => 'Asenna tai päivitä Health Connect ennen pääsyn hallintaa.',
			'settings.healthConnect.updateRequired.action' => 'Asenna tai päivitä',
			'settings.healthConnect.permissions.title' => 'Oikeudet',
			'settings.healthConnect.permissions.description' => 'Seuraavia oikeuksia pyydetään tarjotaksemme Health Connect -integraation:',
			'settings.healthConnect.permissions.granted' => 'Myönnetty',
			'settings.healthConnect.permissions.notGranted' => 'Ei myönnetty',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Lue poltetut kokonaiskalorit',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Antaa sovellukselle luvan lukea Health Connectista polttamasi kokonaiskalorit.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Tätä käyttöoikeutta käytetään näyttämään päivittäinen kalorinkulutuksesi sovelluksessa, jotta ymmärrät kokonaissähkönkulutuksesi päivän aikana.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Lue ravintotiedot',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Antaa sovellukselle luvan lukea ravintotietoja Health Connectista.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Tämä oikeus sallii sovelluksen lukea muiden Health Connectiin yhdistettyjen sovellusten kirjaamia ravintotietoja ja tarjoaa kattavamman kuvan ravinnostasi.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Kirjoita ravintotietoja',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Antaa sovellukselle luvan kirjoittaa ravintotietoja Health Connectiin.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Tämä oikeus sallii sovelluksen synkronoida kirjauksesi Health Connectiin, jolloin ravintotietosi ovat muiden käyttämiesi terveys- ja kuntoilussovellusten saatavilla.',
			'settings.healthConnect.managePermissions' => 'Hallitse käyttöoikeuksia',
			'settings.healthConnect.openSettings' => 'Avaa Health Connect -asetukset',
			'settings.healthConnect.disconnect' => 'Katkaise Health Connect -yhteys',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Katkaistaanko Health Connect -yhteys?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify menettää Health Connectin käyttöoikeuden. Sinne jo kirjoitettuja tietoja ei poisteta.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Katkaise yhteys',
			'settings.healthConnect.deleteSyncedMeals' => 'Poista Calorify-ateriat Health Connectista',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Poistetaanko synkronoidut ateriat?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Poistetaanko tämän Calorify-version synkronoimat ateriat Health Connectista? Paikallinen aterialoki ei muutu. Vanhemmat Calorify-merkinnät on ehkä edelleen poistettava Health Connectin Hallitse tietoja -toiminnolla.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Poista synkronoidut ateriat',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Calorify-ateriat poistettiin Health Connectista.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Synkronoituja aterioita ei voitu poistaa. Yritä uudelleen.',
			'settings.healthConnect.connectionPartial' => 'Jotkin Health Connect -ominaisuudet ovat käytössä.',
			'settings.healthConnect.connectionComplete' => 'Molemmat Health Connect -ominaisuudet ovat käytössä.',
			'settings.healthConnect.actionFailed' => 'Health Connectia ei voitu avata. Yritä uudelleen.',
			'settings.healthConnect.requestPermissions' => 'Pyydä oikeuksia',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Käyttöoikeuspyyntö keskeytettiin tai epäonnistui. Yritä uudelleen tai myönnä oikeudet manuaalisesti Health Connectin asetuksista.',
			'settings.healthConnect.permissionRequestFailed' => 'Oikeuspyyntöä ei voitu lähettää. Yritä uudelleen tai myönnä oikeudet manuaalisesti Health Connectin asetuksista.',
			'settings.healthConnect.requestingPermissions' => 'Pyydetään...',
			'settings.about.title' => 'Tietoa',
			'settings.about.tagline' => 'Nopea, ilmainen ja tietosuoja etusijalla oleva kaloritehokkuus',
			'settings.about.ourStory.title' => 'Tarinaamme',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} syntyi yksinkertaisesta turhautumisesta: useimmat kaloriseurantasovellukset ovat joko liian monimutkaisia, vaativat jatkuvaa manuaalista syöttöä, veloittavat suuria tilausmaksuja tai vaarantavat yksityisyyden.\n\nYksittäisenä kehittäjänä halusin rakentaa jotain yksinkertaisempaa ja reilumpaa — sovelluksen, joka käyttää AI:ta vähentääkseen vaivaa, pysyy nopeana ja ilmaisena käyttää, ja käsittelee terveystietojasi kunnioittavasti.\n\n${appLabel} on sovellus, jonka toivoisin olevan olemassa: ei tilejä, ei seurantaa, ei mainoksia — vain selkeitä, käytännöllisiä näkemyksiä ja sinun terveystavoitteesi.',
			'settings.about.privacy.title' => 'Yksityisyytesi on tärkeä',
			'settings.about.privacy.description' => 'Yksityisyys ei ole harkinnanvarainen lisä — se on suunnitteluperiaate. Tässä, mitä se tarkoittaa käytännössä:',
			'settings.about.privacy.noAccounts' => 'Ei tilejä vaadita\nKäytä sovellusta välittömästi. Ei kirjautumisia, ei identiteettejä.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Ei käytöksen seurantaa\n${appLabel} ei seuraa toimintaasi, rakenna käyttötottumuksia tai seuraa sinua sovellusten tai verkkosivujen välillä.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Rajoitettu analytiikka ja diagnostiikka\n${appLabel} käyttää sovelluksen perustapahtumia ja kaatumisdiagnostiikkaa luotettavuuden parantamiseen. Terveystietojen arvoja ei käytetä mainontaan eikä myydä.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Mainokseton suunnittelu\n${appLabel} on rakennettu toimimaan ilman mainoksia tai dataperusteista rahastusta.',
			'settings.about.privacy.noDataSelling' => 'Ei datan myyntiä\nTerveystietojasi ei koskaan myydä tai jaeta kolmansille osapuolille.',
			'settings.about.privacy.localStorage' => 'Laitteella ensisijaisesti tallennus\nTietosi säilyvät laitteellasi.',
			'settings.about.privacy.privacyPolicy' => 'Tietosuojakäytäntö',
			'settings.about.developer.title' => 'Rakennettu yksinkehittäjän toimesta',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} on rakennettu ja ylläpidetty yhden kehittäjän toimesta, joka keskittyy rauhalliseen, yksityisyyttä kunnioittavaan terveysohjelmistoon.\n\nPalaute luetaan henkilökohtaisesti ja auttaa muovaamaan sovelluksen kehityssuuntaa.',
			'settings.about.developer.website' => 'Verkkosivusto',
			'settings.about.developer.email' => 'Sähköposti',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Pidätkö ${appLabel}:sta?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Palautteesi auttaa tekemään ${appLabel}:sta parempaa kaikille.',
			'settings.about.feedback.rateApp' => 'Arvostele Play Storessa',
			'settings.about.feedback.sendFeedback' => 'Lähetä palaute',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify-versio ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Koonti ${buildNumber}',
			'reminders.title' => 'Pysy raiteilla muistutuksilla',
			'reminders.description' => 'Saat lempeitä muistutuksia kirjataksesi ateriasi ja pysyäksesi johdonmukaisena ravintotavoissasi',
			'reminders.notificationsEnabled' => 'Ilmoitukset käytössä',
			'reminders.notificationsDisabled' => 'Ilmoitukset pois käytöstä',
			'reminders.enabledSubtitle' => 'Saat ateriamuistutuksia',
			'reminders.disabledSubtitle' => 'Ota ilmoitukset käyttöön saadaksesi ateriamuistutuksia',
			'reminders.mealReminders' => 'Ateriamuistutukset',
			'reminders.breakfast' => 'Aamiainen',
			'reminders.lunch' => 'Lounas',
			'reminders.dinner' => 'Päivällinen',
			'reminders.snack' => 'Välipala',
			'reminders.unknown' => 'Tuntematon',
			'reminders.change' => 'Vaihda',
			'reminders.enableNotifications' => 'Ota ilmoitukset käyttöön',
			'reminders.skipForNow' => 'Ohita nyt',
			'reminders.saveChanges' => 'Tallenna muutokset',
			'reminders.enabledSuccessfully' => 'Ilmoitukset otettu käyttöön onnistuneesti!',
			'reminders.permissionDenied' => 'Ilmoitusoikeus evätty',
			'reminders.errorEnabling' => ({required Object error}) => 'Virhe ilmoitusten ottamisessa käyttöön: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Virhe asetusten viimeistelyssä: ${error}',
			'notifications.breakfast.title' => 'Aamupala-aika! 🍳',
			'notifications.breakfast.body' => 'Muista kirjata aamiaisesi',
			_ => null,
		} ?? switch (path) {
			'notifications.lunch.title' => 'Lounasaika! 🥗',
			'notifications.lunch.body' => 'On aika kirjata lounas',
			'notifications.dinner.title' => 'Päivällisaika! 🍽️',
			'notifications.dinner.body' => 'Muista kirjata päivällisesi',
			'notifications.snack.title' => 'Välipala-aika! 🍎',
			'notifications.snack.body' => 'Aika terveelliselle välipalalle',
			'notifications.test.title' => 'Testi-ilmoitus',
			'login.title' => 'Kirjaudu',
			'login.signInWithGoogle' => 'Kirjaudu Googlella',
			'login.signInFailed' => 'Google-kirjautuminen epäonnistui tai peruttiin.',
			'disclaimer.pleaseNote' => 'Huomioithan',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} antaa arvioidut ravintoarvot. Tarkkuus riippuu antamistasi tiedoista ja ruokien vaihteluista. Käytä ohjeellisena, ei lopullisena tietolähteenä. Kysy henkilökohtaista ravitsemusneuvontaa ammattilaiselta.',
			'disclaimer.snap.portionSize.title' => 'Annoskoko',
			'disclaimer.snap.portionSize.description' => 'Arvioiden tarkkuus perustuu pitkälti oikeaan annoskoon arviointiisi.',
			'disclaimer.snap.preparationMethods.title' => 'Valmistustavat',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Ruokien valmistustavat voivat merkittävästi muuttaa ravintoarvoja. ${appLabel}in arviot eivät aina huomioi näitä eroja.',
			'disclaimer.snap.ingredients.title' => 'Ainesosat',
			'disclaimer.snap.ingredients.description' => 'Monimutkaiset ruoat, joissa on paljon piilotettuja ainesosia, saattavat johtaa epätarkempiin arvioihin.',
			'disclaimer.snap.databaseLimitations.title' => 'Tietokantaan liittyvät rajoitukset',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}in ruokarekisteri on laaja, mutta se ei välttämättä sisällä jokaista mahdollista ruokaa tai variaatiota.',
			'disclaimer.weightEstimate.title' => 'Tietoa painoarviosta',
			'disclaimer.weightEstimate.description' => 'Projektio painonmuutoksesta on teoreettinen arvio perustuen yksinkertaiseen kalorien sisään vs. ulos -malliin. Se on tarkoitettu motivoivaksi ohjaukseksi, ei ennusteeksi todellisesta painostasi.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalorien tarkkuus',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Tämä arvio on yhtä tarkka kuin kirjaamiesi kulutus- ja polttoarvioiden tarkkuus. Virheellinen kirjaaminen johtaa virheelliseen ennusteeseen.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiset tekijät',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Todellinen laihtuminen/lihastus riippuu aineenvaihdunnasta, hormoneista, unesta, stressistä, nesteytyksestä ja muista yksilöllisistä tekijöistä, joita ${appLabel} ei voi mitata.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Veden paino & vaihtelut',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normaali päiväkohtainen paino voi vaihdella merkittävästi vedenpidätyksen, ruoansulatuksen ja ajankohdan vuoksi. Arvio ei ota huomioon näitä päivittäisiä vaihteluita.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Ammatillinen ohjaus',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Älä käytä tätä arviota lääketieteellisten päätösten tekemiseen. Kysy aina terveydenhuollon ammattilaiselta tai rekisteröidyltä ravitsemusterapeutilta henkilökohtaista painonhallintaohjeistusta.',
			'disclaimer.healthMetrics.description' => 'Nämä mittarit auttavat ymmärtämään kehosi energiantarpeita ja ohjaavat ravitsemustavoitteitasi.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Perusaineenvaihdunta (BMR) on kalorimäärä, jonka kehosi polttaa levossa ylläpitääkseen perustoimintoja, kuten hengitystä ja verenkiertoa. BMR riippuu iästäsi, sukupuolestasi, pituudestasi ja painostasi. Korkeampi BMR tarkoittaa, että kehosi polttaa luonnollisesti enemmän kaloreita levossa, usein enemmän lihasmassan, nuoren iän tai miehisyyden takia. Alhaisempi BMR viittaa yleensä vähäisempään lihasmassan määrään, korkeampaan ikään tai naiseuteen.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Kokonaispäivittäinen energiankulutus (TDEE) on päivittäinen kalorimäärä, jonka poltat, ja siihen sisältyy BMR sekä liikunnasta ja päivittäisestä liikkumisesta poltetut kalorit. TDEE riippuu BMR:stäsi ja aktiivisuustasostasi. Korkeampi TDEE tarkoittaa, että poltat enemmän kaloreita kokonaisuudessaan, yleensä aktiivisuuden tai korkeamman BMR:n vuoksi. Alhaisempi TDEE viittaa vähäisempään päivittäiseen aktiivisuuteen tai matalampaan BMR:ään.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Päivittäinen tavoite',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Päivittäinen tavoite on suositeltu päivittäinen kalorinsaantisi TDEE:si ja painotavoitteesi perusteella. Laihduttaessa kulutat vähemmän kaloreita kuin TDEE. Painon ylläpitämiseksi vastaat TDEE:tä. Painon nostamiseksi kulutat enemmän kaloreita kuin TDEE. Tämä auttaa sinua saavuttamaan halutun painon muutoksen terveellisellä tahdilla.',
			'disclaimer.calorieExpenditure.title' => 'Arvio kalorinkulutuksesta',
			'disclaimer.calorieExpenditure.description' => 'Kun Health Connect -data ei ole saatavilla, arvioimme tämän päivän poltetut kalorit käyttäen perusaineenvaihduntaasi (BMR) ja aktiivisuustasoasi (TDEE), skaalaamalla sen kuluneen päivän osuuden mukaan.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Miten arvio lasketaan',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Laskemme TDEE:si (profiilisi perusteella) ja kerromme sen kuluneen päivän osuudella (tunnit + minuutit) / 24 arvioidaksemme tähän mennessä poltetut kalorit.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Ammatillinen ohjaus',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Älä käytä tätä arviota lääketieteellisten päätösten tekemiseen. Kysy aina terveydenhuollon ammattilaiselta tai rekisteröidyltä ravitsemusterapeutilta henkilökohtaista painonhallintaohjeistusta.',
			'localNutritionPhase4.portionSmaller' => 'Pienempi',
			'localNutritionPhase4.portionEstimated' => 'Arvioitu',
			'localNutritionPhase4.portionLarger' => 'Suurempi',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Mikä annoskoko vastasi parhaiten ainesta ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Mikä ateria tämä oli?',
			'localNutritionPhase4.localNutritionTip' => 'Laskettu varmennetuista paikallisista ravintoarvotiedoista.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Lataa ravintoarvotiedot',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Käytä varmennettuja USDA-rivejä ja determinististä laskentaa tällä laitteella, kun kaikki ainesosat on katettu.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Paikallisia ravintoarvotietoja ei ole saatavilla tähän sovellusversioon.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Varmennettua ravintoarvopakettia ei ole ladattu.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Ravintoarvotietoja ladataan ja varmennetaan…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Paketti ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} USDA-riviä välimuistissa · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Tarkista päivitykset',
			'localNutritionPhase4.offlineNutritionClear' => 'Tyhjennä paikalliset ravintoarvotiedot',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Tyhjennetäänkö paikalliset ravintoarvotiedot?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Tämä poistaa ladatun USDA-paketin ja hakuvälimuistin. Kirjatut ateriat säilyttävät täsmällisen ravintoarvotilannekuvan, jota käytettiin tallennettaessa.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Tyhjennä tiedot',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Paikallisia ravintoarvotietoja ei voitu ladata ja varmentaa: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Paikalliset ravintoarvotiedot tyhjennettiin',
			'watch.appTitle' => 'Calorify-kello',
			'watch.common.back' => 'Takaisin',
			'watch.common.cancel' => 'Peruuta',
			'watch.common.delete' => 'Poista',
			'watch.common.retry' => 'Yritä uudelleen',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Ravintoaine',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} g',
			'watch.nutrition.protein' => 'Proteiini',
			'watch.nutrition.carbs' => 'Hiilihydraatit',
			'watch.nutrition.fat' => 'Rasva',
			'watch.nutrition.fiber' => 'Kuitu',
			'watch.sync.syncWithPhone' => 'Synkronoi puhelimen kanssa',
			'watch.sync.syncing' => 'Synkronoidaan…',
			'watch.sync.synced' => 'Synkronoitu',
			'watch.sync.syncedJustNow' => 'Synkronoitu juuri nyt',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Synkronoitu ${minutes} min sitten',
			'watch.sync.failed' => 'Synkronointi epäonnistui',
			'watch.sync.phoneDisconnected' => 'Puhelin ei ole yhdistetty',
			'watch.sync.tapToSync' => 'Napauta synkronoidaksesi',
			'watch.sync.refreshFailed' => 'Päivitys epäonnistui. Tarkista puhelimesi.',
			'watch.sync.openPhone' => 'Avaa Calorify puhelimellasi ja napauta sitten päivitä.',
			'watch.home.today' => 'Tänään',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} kaloria kulutettu tavoitteesta ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} yli tavoitteen',
			'watch.home.remaining' => ({required Object calories}) => '${calories} jäljellä',
			'watch.home.left' => ({required Object calories}) => '${calories} jäljellä',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal tavoite',
			'watch.home.logMeal' => 'Kirjaa ateria',
			'watch.home.todayMeals' => 'Tämän päivän ateriat',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Tämän päivän ateriat, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Näytä ${count} lisää',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} lisää ateriaa, napauta nähdäksesi kaikki',
			'watch.home.noMeals' => 'Ei kirjattuja aterioita',
			'watch.home.noMealsSemantics' => 'Ei kirjattuja aterioita tänään',
			'watch.home.tapLog' => 'Napauta Kirjaa aloittaaksesi',
			'watch.home.removedFromQueue' => 'Ateria poistettu offline-jonosta.',
			'watch.home.removedOffline' => 'Ateria poistettu paikallisesti. Synkronoituu, kun puhelimesi yhdistyy.',
			'watch.home.deleteFailed' => 'Aterian poistaminen epäonnistui',
			'watch.history.title' => 'Tämän päivän ateriat',
			'watch.history.refresh' => 'Päivitä ateriat',
			'watch.history.loadFailed' => 'Aterioita ei voitu ladata',
			'watch.history.syncFailed' => 'Synkronointi epäonnistui',
			'watch.history.emptyTitle' => 'Ei vielä aterioita',
			'watch.history.emptyMessage' => 'Kirjaa ateria Kotinäkymästä nähdäksesi sen täällä.',
			'watch.favorites.title' => 'Suosikit',
			'watch.favorites.refresh' => 'Päivitä suosikit',
			'watch.favorites.loadFailed' => 'Suosikkeja ei voitu ladata',
			'watch.favorites.syncFailed' => 'Synkronointi epäonnistui',
			'watch.favorites.emptyTitle' => 'Ei vielä suosikkeja',
			'watch.favorites.emptyMessage' => 'Tähditä aterioita puhelimen sovelluksessa, niin yhden napautuksen kirjaukset näkyvät tässä.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} kcal. Napauta kirjataaksesi.',
			'watch.favorites.logged' => ({required Object name}) => '${name} kirjattu!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} tallennettu paikallisesti. Synkronoituu, kun puhelimesi yhdistyy.',
			'watch.favorites.saveFailed' => 'Aterian tallennus epäonnistui. Yritä uudelleen.',
			'watch.favorites.log' => 'Kirjaa',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kcal, kirjattu ${time}.',
			'watch.meal.longPressDelete' => 'Paina pitkään poistaaksesi.',
			'watch.meal.deleteTitle' => 'Poistetaanko ateria?',
			'watch.voice.title' => 'Äänikirjaus',
			'watch.voice.processing' => 'Tarkistetaan ateriaa…',
			'watch.voice.processingDescription' => 'Arvioidaan annoskokoja ja ravintosisältöä',
			'watch.voice.listening' => 'Kuunnellaan',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Lopeta tallennus',
			'watch.voice.start' => 'Napauta aloittaaksesi tallennuksen',
			'watch.voice.starting' => 'Käynnistetään mikrofoni…',
			'watch.voice.prompt' => 'Napauta ja kuvaile ateriasi',
			'watch.voice.tapToRetry' => 'Napauta yrittääksesi uudelleen',
			'watch.voice.example' => 'Kokeile: “2 rotia dalin kanssa”',
			'watch.voice.unavailable' => 'Puheentunnistus ei ole käytettävissä. Tarkista mikrofonin käyttöoikeus kellon asetuksista.',
			'watch.voice.didNotStart' => 'Mikrofoni ei käynnistynyt. Napauta yrittääksesi uudelleen.',
			'watch.voice.startFailed' => 'Tallennuksen käynnistäminen epäonnistui. Tarkista mikrofonin käyttöoikeudet.',
			'watch.voice.allowMicrophone' => 'Salli mikrofonin käyttö kirjauksia varten.',
			'watch.voice.needsConnection' => 'Puheentunnistus tarvitsee yhteyden. Napauta yrittääksesi uudelleen.',
			'watch.voice.microphoneUnavailable' => 'Mikrofoni ei ole käytettävissä. Napauta yrittääksesi uudelleen.',
			'watch.voice.microphoneBusy' => 'Mikrofoni on varattu. Odota hetki ja yritä uudelleen.',
			'watch.voice.languageUnsupported' => 'Puheentunnistus ei tue kellon kieltä.',
			'watch.voice.temporarilyBusy' => 'Puheentunnistus on tilapäisesti varattu. Odota hetki ja yritä uudelleen.',
			'watch.voice.notRecognized' => 'En kuullut kunnolla. Napauta mikrofonia ja yritä uudelleen.',
			'watch.voice.noSpeech' => 'Puhetta ei havaittu. Napauta mikrofonia ja yritä uudelleen.',
			'watch.voice.analysisFailed' => 'Analyysi epäonnistui. Yritä uudelleen.',
			'watch.voice.mealNotIdentified' => 'Ateriaa ei tunnistettu. Kokeile kuvailla sitä eri tavalla.',
			'watch.result.title' => 'Aterian tiedot',
			'watch.result.savedOffline' => 'Tallennettu paikallisesti',
			'watch.result.logged' => 'Kirjattu!',
			'watch.result.mealFound' => 'Ateria löytyi',
			'watch.result.estimatedEnergy' => 'Arvioitu energiamäärä',
			'watch.result.logMeal' => 'Kirjaa ateria',
			'watch.result.logging' => 'Kirjataan…',
			'watch.result.logAnother' => 'Kirjaa toinen',
			'watch.result.goingBack' => 'Palataan…',
			'watch.result.savedOfflineMessage' => 'Ateria tallennettu paikallisesti. Synkronoituu, kun puhelimesi yhdistyy.',
			'watch.result.saveFailed' => 'Aterian tallennus epäonnistui. Yritä uudelleen.',
			'common.betaTag' => 'Beta',
			'common.close' => 'Sulje',
			'common.kContinue' => 'Jatka',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Pidätkö ${appLabel}:sta?',
			'feedbackRating.yes' => 'Kyllä, pidän siitä',
			'feedbackRating.no' => 'En oikeastaan',
			'feedbackRating.rateStepHeading' => 'Arvostele Play Storessa',
			'feedbackRating.emailStepHeading' => 'Lähetä palaute sähköpostilla',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Pikainen arvostelu auttaa muita löytämään ${appLabel}:n ja pitää kehitystyön käynnissä. Voisitko hetken jättää arvion?',
			'feedbackRating.shareFeedbackViaEmail' => 'Palautteesi muokkaa tulevaa — luemme jokaisen viestin. Haluatko jakaa ajatuksesi sähköpostilla?',
			'feedbackRating.rateCta' => 'Arvostele Play Storessa',
			'feedbackRating.maybeLater' => 'Ehkä myöhemmin',
			'feedbackRating.sendFeedback' => 'Lähetä palaute',
			'feedbackRating.noThanks' => 'Ei kiitos',
			'feedbackRating.aboutUsDescription' => 'Tehty huolella pienellä tiimillä. Keskitymme yksityisyyteen, yksinkertaisuuteen ja auttamaan sinua kehittämään parempia ruokailutottumuksia.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Kiinnostaa kuka ${appLabel}:n takana on? Katso ',
			'feedbackRating.aboutUsLinkLabel' => 'Tietoa meistä',
			'feedbackRating.thankYouMessage' => 'Kiitos! Kysymme taas myöhemmin.',
			'health.syncFailed' => 'Synkronointi Health Connectiin epäonnistui',
			'health.mealSynced' => 'Ateria synkattu Health Connectiin',
			_ => null,
		};
	}
}
