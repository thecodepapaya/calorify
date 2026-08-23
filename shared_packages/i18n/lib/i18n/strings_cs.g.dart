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
class TranslationsCs extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsCs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.cs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <cs>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsCs _root = this; // ignore: unused_field

	@override 
	TranslationsCs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsCs(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Čeština';
	@override String get flag => '🇨🇿';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$cs errors = _Translations$errors$cs._(_root);
	@override late final _Translations$onboarding$cs onboarding = _Translations$onboarding$cs._(_root);
	@override late final _Translations$tabs$cs tabs = _Translations$tabs$cs._(_root);
	@override late final _Translations$home$cs home = _Translations$home$cs._(_root);
	@override late final _Translations$history$cs history = _Translations$history$cs._(_root);
	@override late final _Translations$meal$cs meal = _Translations$meal$cs._(_root);
	@override late final _Translations$favorites$cs favorites = _Translations$favorites$cs._(_root);
	@override late final _Translations$profile$cs profile = _Translations$profile$cs._(_root);
	@override late final _Translations$healthScore$cs healthScore = _Translations$healthScore$cs._(_root);
	@override late final _Translations$editProfile$cs editProfile = _Translations$editProfile$cs._(_root);
	@override late final _Translations$settings$cs settings = _Translations$settings$cs._(_root);
	@override late final _Translations$reminders$cs reminders = _Translations$reminders$cs._(_root);
	@override late final _Translations$notifications$cs notifications = _Translations$notifications$cs._(_root);
	@override late final _Translations$login$cs login = _Translations$login$cs._(_root);
	@override late final _Translations$disclaimer$cs disclaimer = _Translations$disclaimer$cs._(_root);
	@override late final _Translations$localNutritionPhase4$cs localNutritionPhase4 = _Translations$localNutritionPhase4$cs._(_root);
	@override late final _Translations$watch$cs watch = _Translations$watch$cs._(_root);
	@override late final _Translations$common$cs common = _Translations$common$cs._(_root);
	@override late final _Translations$feedbackRating$cs feedbackRating = _Translations$feedbackRating$cs._(_root);
	@override late final _Translations$health$cs health = _Translations$health$cs._(_root);
}

// Path: errors
class _Translations$errors$cs extends Translations$errors$en {
	_Translations$errors$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Odeslali jste příliš mnoho požadavků. Počkejte prosím chvíli a zkuste to znovu.';
	@override String get networkError => 'Síťová chyba. Zkontrolujte prosím připojení k internetu.';
	@override String get unknownError => 'Něco se pokazilo. Zkuste to prosím později.';
	@override String get loadingProfileData => 'Chyba při načítání dat profilu';
	@override String get somethingWentWrong => 'Něco se pokazilo.';
	@override String get retry => 'Zkusit znovu';
}

// Path: onboarding
class _Translations$onboarding$cs extends Translations$onboarding$en {
	_Translations$onboarding$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Vítejte v ${appLabel}';
	@override String get subtitle => 'Váš osobní výživový průvodce poháněný AI';
	@override String get getStarted => 'Začít';
	@override late final _Translations$onboarding$features$cs features = _Translations$onboarding$features$cs._(_root);
	@override late final _Translations$onboarding$gender$cs gender = _Translations$onboarding$gender$cs._(_root);
	@override late final _Translations$onboarding$height$cs height = _Translations$onboarding$height$cs._(_root);
	@override late final _Translations$onboarding$weight$cs weight = _Translations$onboarding$weight$cs._(_root);
	@override late final _Translations$onboarding$age$cs age = _Translations$onboarding$age$cs._(_root);
	@override late final _Translations$onboarding$bmiScale$cs bmiScale = _Translations$onboarding$bmiScale$cs._(_root);
	@override late final _Translations$onboarding$weightGoal$cs weightGoal = _Translations$onboarding$weightGoal$cs._(_root);
	@override late final _Translations$onboarding$activityLevel$cs activityLevel = _Translations$onboarding$activityLevel$cs._(_root);
	@override late final _Translations$onboarding$healthConnect$cs healthConnect = _Translations$onboarding$healthConnect$cs._(_root);
	@override late final _Translations$onboarding$reinforcement$cs reinforcement = _Translations$onboarding$reinforcement$cs._(_root);
}

// Path: tabs
class _Translations$tabs$cs extends Translations$tabs$en {
	_Translations$tabs$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Přehled';
	@override String get history => 'Historie';
}

// Path: home
class _Translations$home$cs extends Translations$home$en {
	_Translations$home$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$cs aiSummary = _Translations$home$aiSummary$cs._(_root);
	@override late final _Translations$home$dailyGoal$cs dailyGoal = _Translations$home$dailyGoal$cs._(_root);
	@override late final _Translations$home$dailySummary$cs dailySummary = _Translations$home$dailySummary$cs._(_root);
	@override late final _Translations$home$intakeProgress$cs intakeProgress = _Translations$home$intakeProgress$cs._(_root);
	@override late final _Translations$home$intakeHistory$cs intakeHistory = _Translations$home$intakeHistory$cs._(_root);
	@override late final _Translations$home$mealLog$cs mealLog = _Translations$home$mealLog$cs._(_root);
	@override late final _Translations$home$mealDescription$cs mealDescription = _Translations$home$mealDescription$cs._(_root);
	@override late final _Translations$home$favoriteMeals$cs favoriteMeals = _Translations$home$favoriteMeals$cs._(_root);
	@override late final _Translations$home$mealSnap$cs mealSnap = _Translations$home$mealSnap$cs._(_root);
	@override late final _Translations$home$connectHealth$cs connectHealth = _Translations$home$connectHealth$cs._(_root);
}

// Path: history
class _Translations$history$cs extends Translations$history$en {
	_Translations$history$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Žádná zaznamenaná jídla';
	@override String get emptyMessage => 'Vyfoťte poslední jídlo a zaznamenejte ho sem.';
	@override String get today => 'Dnes';
	@override String get yesterday => 'Včera';
}

// Path: meal
class _Translations$meal$cs extends Translations$meal$en {
	_Translations$meal$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Jejda!';
	@override String get delete => 'Smazat';
	@override String get editMeal => 'Upravit jídlo';
	@override String get addMeal => 'Přidat jídlo';
	@override String get saveMeal => 'Uložit jídlo';
	@override String get save => 'Uložit';
	@override String get mealName => 'Název jídla';
	@override String get mealNameHint => 'např. Míchaná vejce s toustem';
	@override String get nameRequired => 'Zadejte název jídla před uložením.';
	@override String get mealQuantity => 'Množství jídla';
	@override String get mealQuantityHint => 'např. 1 miska, 2 plátky';
	@override String get timeOfMeal => 'Čas jídla';
	@override String get timeOfMealHint => 'Vyberte čas, kdy jste jídlo měli';
	@override String get mealType => 'Typ jídla';
	@override late final _Translations$meal$nutrition$cs nutrition = _Translations$meal$nutrition$cs._(_root);
	@override late final _Translations$meal$deleteConfirmation$cs deleteConfirmation = _Translations$meal$deleteConfirmation$cs._(_root);
	@override String get addedToLog => 'Jídlo přidáno do záznamu!';
	@override String couldNotAdd({required Object error}) => 'Nepodařilo se přidat jídlo: ${error}';
	@override String get savedSuccessfully => 'Jídlo úspěšně přidáno!';
	@override String get updatedSuccessfully => 'Jídlo úspěšně upraveno!';
	@override String errorSaving({required Object error}) => 'Chyba při ukládání jídla: ${error}';
	@override String get removedFromFavorites => 'Odebráno z oblíbených!';
	@override String get savedAsFavorite => 'Jídlo uloženo mezi oblíbené!';
	@override String get unfavorite => 'Odebrat z oblíbených';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nepodařilo se aktualizovat oblíbené: ${error}';
	@override String get feedbackThanks => 'Díky za zpětnou vazbu!';
	@override String get reanalysisUpdated => 'Analýza jídla byla aktualizována podle vaší zpětné vazby.';
	@override String failedToProcess({required Object error}) => 'Zpracování selhalo: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Zpracování obrázku selhalo: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Chyba při kompresi obrázku: ${error}';
	@override String get failedToSave => 'Nepodařilo se uložit data. Zkuste to prosím znovu.';
	@override String get skip => 'Přeskočit';
	@override late final _Translations$meal$questionFlow$cs questionFlow = _Translations$meal$questionFlow$cs._(_root);
	@override late final _Translations$meal$analysis$cs analysis = _Translations$meal$analysis$cs._(_root);
	@override late final _Translations$meal$localInference$cs localInference = _Translations$meal$localInference$cs._(_root);
	@override late final _Translations$meal$feedback$cs feedback = _Translations$meal$feedback$cs._(_root);
}

// Path: favorites
class _Translations$favorites$cs extends Translations$favorites$en {
	_Translations$favorites$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oblíbené';
	@override String get empty => 'Zatím žádná oblíbená jídla.';
	@override String get searchPlaceholder => 'Hledat oblíbená jídla';
	@override String get searchEmptyTitle => 'Žádné oblíbené neodpovídají hledání';
	@override String get searchEmptySubtitle => 'Zkuste jiný název jídla, množství nebo typ jídla.';
	@override String get sortLabel => 'Seřadit oblíbené';
	@override String get undo => 'Vrátit';
	@override String removed({required Object name}) => 'Odebráno ${name} z oblíbených';
	@override late final _Translations$favorites$sortOptions$cs sortOptions = _Translations$favorites$sortOptions$cs._(_root);
}

// Path: profile
class _Translations$profile$cs extends Translations$profile$en {
	_Translations$profile$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Nenalezena data profilu';
	@override String get yourProfile => 'Váš profil';
	@override String get viewAndManage => 'Prohlížet a spravovat své zdravotní informace';
	@override late final _Translations$profile$sections$cs sections = _Translations$profile$sections$cs._(_root);
	@override String get gender => 'Pohlaví';
	@override String get height => 'Výška';
	@override String get weight => 'Hmotnost';
	@override String get age => 'Věk';
	@override String get weightGoal => 'Cíl hmotnosti';
	@override String get targetWeight => 'Cílová hmotnost';
	@override String get activityLevel => 'Úroveň aktivity';
	@override String get healthMetrics => 'Zdravotní ukazatele';
	@override String get notSet => 'Nenastaveno';
	@override String get years => 'let';
	@override String get updatedSuccessfully => 'Profil byl úspěšně aktualizován!';
	@override late final _Translations$profile$calculatedValues$cs calculatedValues = _Translations$profile$calculatedValues$cs._(_root);
}

// Path: healthScore
class _Translations$healthScore$cs extends Translations$healthScore$en {
	_Translations$healthScore$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hodnocení zdraví';
	@override String get whyThisScore => 'Proč takové hodnocení?';
	@override String get note => 'Toto hodnocení je odhad AI založený na identifikovaných ingrediencích a nutriční hustotě. Pro dietní doporučení se vždy poraďte s odborníkem.';
	@override String get unhealthy => 'Nezdravé';
	@override String get healthy => 'Zdravé';
	@override String get neutral => 'Neutrální';
}

// Path: editProfile
class _Translations$editProfile$cs extends Translations$editProfile$en {
	_Translations$editProfile$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Upravit profil';
	@override late final _Translations$editProfile$sections$cs sections = _Translations$editProfile$sections$cs._(_root);
	@override String get gender => 'Pohlaví';
	@override String get dateOfBirth => 'Datum narození';
	@override String get height => 'Výška';
	@override String get weight => 'Hmotnost';
	@override String get weightGoal => 'Cíl hmotnosti';
	@override String get activityLevel => 'Úroveň aktivity';
	@override String get metric => 'Metrické';
	@override String get imperial => 'Imperiální';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'libry (lb)';
	@override String get metricCm => 'Metrické (cm)';
	@override String get imperialFtIn => 'Imperiální (ft/in)';
	@override String get metricKg => 'Metrické (kg)';
	@override String get imperialLbs => 'Imperiální (lbs)';
	@override late final _Translations$editProfile$genders$cs genders = _Translations$editProfile$genders$cs._(_root);
	@override late final _Translations$editProfile$weightGoals$cs weightGoals = _Translations$editProfile$weightGoals$cs._(_root);
	@override late final _Translations$editProfile$activityLevels$cs activityLevels = _Translations$editProfile$activityLevels$cs._(_root);
}

// Path: settings
class _Translations$settings$cs extends Translations$settings$en {
	_Translations$settings$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nastavení';
	@override late final _Translations$settings$sections$cs sections = _Translations$settings$sections$cs._(_root);
	@override late final _Translations$settings$editProfile$cs editProfile = _Translations$settings$editProfile$cs._(_root);
	@override late final _Translations$settings$language$cs language = _Translations$settings$language$cs._(_root);
	@override late final _Translations$settings$heightUnit$cs heightUnit = _Translations$settings$heightUnit$cs._(_root);
	@override late final _Translations$settings$weightUnit$cs weightUnit = _Translations$settings$weightUnit$cs._(_root);
	@override late final _Translations$settings$mealReminders$cs mealReminders = _Translations$settings$mealReminders$cs._(_root);
	@override late final _Translations$settings$localInference$cs localInference = _Translations$settings$localInference$cs._(_root);
	@override late final _Translations$settings$theme$cs theme = _Translations$settings$theme$cs._(_root);
	@override late final _Translations$settings$sendFeedback$cs sendFeedback = _Translations$settings$sendFeedback$cs._(_root);
	@override late final _Translations$settings$exportMealHistory$cs exportMealHistory = _Translations$settings$exportMealHistory$cs._(_root);
	@override late final _Translations$settings$clearAllData$cs clearAllData = _Translations$settings$clearAllData$cs._(_root);
	@override late final _Translations$settings$debugOptions$cs debugOptions = _Translations$settings$debugOptions$cs._(_root);
	@override String get developerModeEnabled => 'Režim vývojáře povolen!';
	@override late final _Translations$settings$healthConnect$cs healthConnect = _Translations$settings$healthConnect$cs._(_root);
	@override late final _Translations$settings$about$cs about = _Translations$settings$about$cs._(_root);
	@override late final _Translations$settings$appInfo$cs appInfo = _Translations$settings$appInfo$cs._(_root);
}

// Path: reminders
class _Translations$reminders$cs extends Translations$reminders$en {
	_Translations$reminders$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zůstaňte na cestě díky připomenutím';
	@override String get description => 'Dostávejte jemná upozornění, abyste si zaznamenávali jídla a udrželi se v souladu se svými výživovými cíli';
	@override String get notificationsEnabled => 'Upozornění povolena';
	@override String get notificationsDisabled => 'Upozornění vypnuta';
	@override String get enabledSubtitle => 'Budete dostávat připomenutí jídel';
	@override String get disabledSubtitle => 'Povolte upozornění pro připomenutí jídel';
	@override String get mealReminders => 'Připomenutí jídel';
	@override String get breakfast => 'Snídaně';
	@override String get lunch => 'Oběd';
	@override String get dinner => 'Večeře';
	@override String get snack => 'Svačina';
	@override String get unknown => 'Neznámé';
	@override String get change => 'Změnit';
	@override String get enableNotifications => 'Povolit upozornění';
	@override String get skipForNow => 'Přeskočit nyní';
	@override String get saveChanges => 'Uložit změny';
	@override String get enabledSuccessfully => 'Upozornění úspěšně povolena!';
	@override String get permissionDenied => 'Oprávnění k upozorněním odepřeno';
	@override String errorEnabling({required Object error}) => 'Chyba při povolování upozornění: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Chyba při dokončování nastavení: ${error}';
}

// Path: notifications
class _Translations$notifications$cs extends Translations$notifications$en {
	_Translations$notifications$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$cs breakfast = _Translations$notifications$breakfast$cs._(_root);
	@override late final _Translations$notifications$lunch$cs lunch = _Translations$notifications$lunch$cs._(_root);
	@override late final _Translations$notifications$dinner$cs dinner = _Translations$notifications$dinner$cs._(_root);
	@override late final _Translations$notifications$snack$cs snack = _Translations$notifications$snack$cs._(_root);
	@override late final _Translations$notifications$test$cs test = _Translations$notifications$test$cs._(_root);
}

// Path: login
class _Translations$login$cs extends Translations$login$en {
	_Translations$login$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Přihlášení';
	@override String get signInWithGoogle => 'Přihlásit se přes Google';
	@override String get signInFailed => 'Přihlášení přes Google selhalo nebo bylo zrušeno.';
}

// Path: disclaimer
class _Translations$disclaimer$cs extends Translations$disclaimer$en {
	_Translations$disclaimer$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Vezměte prosím na vědomí';
	@override late final _Translations$disclaimer$snap$cs snap = _Translations$disclaimer$snap$cs._(_root);
	@override late final _Translations$disclaimer$weightEstimate$cs weightEstimate = _Translations$disclaimer$weightEstimate$cs._(_root);
	@override late final _Translations$disclaimer$healthMetrics$cs healthMetrics = _Translations$disclaimer$healthMetrics$cs._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$cs calorieExpenditure = _Translations$disclaimer$calorieExpenditure$cs._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$cs extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'Výživové údaje nalezeny ve staženém balíčku USDA';
	@override String get nutritionCached => 'Výživové údaje nalezeny v mezipaměti USDA v zařízení';
	@override String get nutritionMixed => 'Výživové údaje sloučeny ze stažených, uložených a vzdálených řádků USDA';
	@override String get calculationLocal => 'Kalorie a makroživiny vypočítány v tomto zařízení';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: stažený balíček USDA';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: mezipaměť USDA v zařízení';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: řádek USDA načtený přes Calorify';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: deterministická nutriční konstanta';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · datová sada ${datasetVersion}';
	@override String get portionSmaller => 'Menší';
	@override String get portionEstimated => 'Odhadovaná';
	@override String get portionLarger => 'Větší';
	@override String portionQuestion({required Object ingredient}) => 'Která porce nejlépe odpovídala položce ${ingredient}?';
	@override String get mealTypeQuestion => 'O které jídlo šlo?';
	@override String get localNutritionTip => 'Vypočítáno z ověřených místních výživových dat.';
	@override String get offlineNutritionTitle => 'Stáhnout výživová data';
	@override String get offlineNutritionSubtitle => 'Pokud jsou pokryty všechny ingredience, použijí se v tomto zařízení ověřené řádky USDA a deterministický výpočet.';
	@override String get offlineNutritionUnavailable => 'Místní výživová data nejsou pro tuto verzi aplikace dostupná.';
	@override String get offlineNutritionNotDownloaded => 'Není stažen žádný ověřený balíček výživových dat.';
	@override String get offlineNutritionInstalling => 'Stahování a ověřování výživových dat…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Balíček ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} řádků USDA v mezipaměti · ${size}';
	@override String get offlineNutritionUpdate => 'Zkontrolovat aktualizaci';
	@override String get offlineNutritionClear => 'Vymazat místní výživová data';
	@override String get offlineNutritionClearTitle => 'Vymazat místní výživová data?';
	@override String get offlineNutritionClearBody => 'Tímto se odstraní stažený balíček USDA a vyhledávací mezipaměť. Uložená jídla si zachovají přesný snímek výživových hodnot použitý při uložení.';
	@override String get offlineNutritionClearConfirm => 'Vymazat data';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Výživová data se nepodařilo stáhnout a ověřit: ${error}';
	@override String get offlineNutritionCleared => 'Místní výživová data byla vymazána';
}

// Path: watch
class _Translations$watch$cs extends Translations$watch$en {
	_Translations$watch$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$cs common = _Translations$watch$common$cs._(_root);
	@override late final _Translations$watch$nutrition$cs nutrition = _Translations$watch$nutrition$cs._(_root);
	@override late final _Translations$watch$sync$cs sync = _Translations$watch$sync$cs._(_root);
	@override late final _Translations$watch$home$cs home = _Translations$watch$home$cs._(_root);
	@override late final _Translations$watch$history$cs history = _Translations$watch$history$cs._(_root);
	@override late final _Translations$watch$favorites$cs favorites = _Translations$watch$favorites$cs._(_root);
	@override late final _Translations$watch$meal$cs meal = _Translations$watch$meal$cs._(_root);
	@override late final _Translations$watch$voice$cs voice = _Translations$watch$voice$cs._(_root);
	@override late final _Translations$watch$result$cs result = _Translations$watch$result$cs._(_root);
}

// Path: common
class _Translations$common$cs extends Translations$common$en {
	_Translations$common$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get close => 'Zavřít';
	@override String get kContinue => 'Pokračovat';
}

// Path: feedbackRating
class _Translations$feedbackRating$cs extends Translations$feedbackRating$en {
	_Translations$feedbackRating$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Líbí se vám ${appLabel}?';
	@override String get yes => 'Ano, líbí se mi';
	@override String get no => 'Ne tak moc';
	@override String get rateStepHeading => 'Ohodnoťte v Play Store';
	@override String get emailStepHeading => 'Poslat zpětnou vazbu e-mailem';
	@override String soloDevMessage({required Object appLabel}) => 'Krátké hodnocení pomůže ostatním najít ${appLabel} a podpoří další vývoj. Věnujete chvíli a ohodnotíte nás?';
	@override String get shareFeedbackViaEmail => 'Vaše zpětná vazba formuje další kroky — čteme každou zprávu. Chcete sdílet své myšlenky e-mailem?';
	@override String get rateCta => 'Ohodnotit v Play Store';
	@override String get maybeLater => 'Možná později';
	@override String get sendFeedback => 'Poslat zpětnou vazbu';
	@override String get noThanks => 'Ne, díky';
	@override String get aboutUsDescription => 'Vytvořeno s péčí malým týmem. Zaměřujeme se na soukromí, jednoduchost a pomoc s lepšími stravovacími návyky.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Zajímá vás, kdo stojí za ${appLabel}? Podívejte se ';
	@override String get aboutUsLinkLabel => 'O nás';
	@override String get thankYouMessage => 'Děkujeme! Zeptáme se vás znovu jindy.';
}

// Path: health
class _Translations$health$cs extends Translations$health$en {
	_Translations$health$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Nelze synchronizovat s Health Connect';
	@override String get mealSynced => 'Jídlo synchronizováno s Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$cs extends Translations$onboarding$features$en {
	_Translations$onboarding$features$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$cs foodRecognition = _Translations$onboarding$features$foodRecognition$cs._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$cs aiAnalysis = _Translations$onboarding$features$aiAnalysis$cs._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$cs healthIntegration = _Translations$onboarding$features$healthIntegration$cs._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$cs extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jaké je vaše pohlaví?';
	@override String get description => 'Pohlaví nám pomáhá přesně vypočítat váš bazální metabolismus (BMR).';
	@override String get next => 'Další';
}

// Path: onboarding.height
class _Translations$onboarding$height$cs extends Translations$onboarding$height$en {
	_Translations$onboarding$height$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jaká je vaše výška?';
	@override String get description => 'Vaše výška nám pomůže přesně vypočítat BMI a energetické potřeby.';
	@override String get metric => 'Metrické';
	@override String get imperial => 'Imperiální';
	@override String get next => 'Další';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$cs extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Jaká je vaše aktuální hmotnost?';
	@override String get currentDescription => 'Vaše aktuální hmotnost je zásadní pro personalizaci denních cílů.';
	@override String get targetTitle => 'Jaká je vaše cílová hmotnost?';
	@override String get targetDescription => 'Nastavení cílové hmotnosti nám pomůže sestavit dlouhodobý plán.';
	@override String get metric => 'Metrické';
	@override String get imperial => 'Imperiální';
	@override String get next => 'Další';
}

// Path: onboarding.age
class _Translations$onboarding$age$cs extends Translations$onboarding$age$en {
	_Translations$onboarding$age$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kdy máte narozeniny?';
	@override String get description => 'Věk nám pomáhá přesně vypočítat denní potřebu kalorií.';
	@override String get next => 'Další';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$cs extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podváha';
	@override String get healthy => 'Zdravé';
	@override String get overweight => 'Nadváha';
	@override String get obese => 'Obezita';
	@override late final _Translations$onboarding$bmiScale$categories$cs categories = _Translations$onboarding$bmiScale$categories$cs._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$cs messages = _Translations$onboarding$bmiScale$messages$cs._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$cs extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jaký je váš cíl?';
	@override String get description => 'Vyberte cíl, který nejlépe vystihuje, čeho chcete dosáhnout';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$cs extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak jste aktivní?';
	@override String get description => 'To nám pomůže přesněji vypočítat vaši denní potřebu kalorií';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$cs extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Propojte se s Health Connect';
	@override String get description => 'Synchronizujte svá zdravotní data pro lepší přehledy a automatické sledování kalorií';
	@override String get overviewDescription => 'Používejte spálené kalorie ve svém denním cíli a volitelně sdílejte zaznamenaná jídla s Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$cs automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$cs._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$cs caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$cs._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$cs progressInsights = _Translations$onboarding$healthConnect$progressInsights$cs._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$cs shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$cs._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$cs seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$cs._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$cs userControl = _Translations$onboarding$healthConnect$userControl$cs._(_root);
	@override String get connected => 'Health Connect propojeno';
	@override String get notConnected => 'Health Connect není propojen';
	@override String get setup => 'Nastavit Health Connect';
	@override String get skipForNow => 'Přeskočit nyní';
	@override String get statusConnected => 'Health Connect je propojen.';
	@override String get statusSuccess => 'Health Connect byl úspěšně propojen!';
	@override String get statusNotConnected => 'Vyberte funkce Health Connect, které chcete povolit.';
	@override String get statusPartial => 'Health Connect je připojen částečně. Chcete-li používat obě funkce, povolte zbývající oprávnění.';
	@override String get statusProviderUpdateRequired => 'Chcete-li pokračovat, nainstalujte nebo aktualizujte Health Connect.';
	@override String get statusUnavailable => 'Health Connect není na tomto zařízení podporován.';
	@override String get installOrUpdate => 'Nainstalovat nebo aktualizovat';
	@override String get manageAccess => 'Spravovat přístup';
	@override String statusPermissionDenied({required Object appLabel}) => 'Oprávnění odepřeno. Povolte prosím oprávnění Health Connect v nastavení telefonu pro ${appLabel}.';
	@override String statusError({required Object error}) => 'Chyba při nastavování Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$cs extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$cs trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$cs._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$cs healthProfile = _Translations$onboarding$reinforcement$healthProfile$cs._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$cs goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$cs._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$cs extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vaše AI shrnutí';
	@override String get logMore => 'Zaznamenávejte více jídel v příštích dnech, aby vám AI poskytla personalizované postřehy.';
	@override String get loading => 'Načítám souhrn...';
	@override String mealCount({required Object count}) => '${count} zaznamenaných jídel';
	@override String macroBalanceScore({required Object score}) => 'Skóre vyváženosti ${score}';
	@override String get topFoods => 'Nejčastější potraviny';
	@override String get trendUp => 'Kalorie rostou';
	@override String get trendDown => 'Kalorie klesají';
	@override String get trendSteady => 'Kalorie stabilní';
	@override String generatedAt({required Object time}) => 'Aktualizováno ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$cs extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nastavte svůj denní cíl';
	@override String get titleSet => 'Váš denní cíl';
	@override String get description => 'Připraveni začít svou cestu ke zdraví? Nastavte si níže denní cílový příjem kalorií a vydejte se na cestu.';
	@override String get descriptionSet => 'Kompas je nastaven! Toto je váš denní kalorický cíl.';
	@override String get yourGoal => 'Váš cíl';
	@override String get goal => 'Cíl';
	@override String get dailyCalories => 'Denní kalorie (kcal)';
	@override String get setGoal => 'Nastavit cíl';
	@override String get intake => 'Příjem';
	@override String get burned => 'Spáleno';
	@override String get weightImpact => 'Dopad na váhu';
	@override String get estLoss => 'Odhad. úbytek';
	@override String get estGain => 'Odhad. přírůstek';
	@override String get kcal => 'kilokalorie (kcal)';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$cs extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Denní souhrn';
	@override String get calories => 'Kalorie';
	@override String get carbs => 'Sacharidy';
	@override String get protein => 'Bílkoviny';
	@override String get fat => 'Tuky';
	@override String get fiber => 'Vláknina';
	@override String get grams => 'gramy';
	@override String get chartAccessibilityLabel => 'Graf makroživin';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$cs extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dnešní rozdělení makroživin';
	@override String get target => 'Cíl';
	@override String get current => 'Aktuální';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$cs extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => '7denní historie makroživin';
	@override String get trendTitle => 'Dnešní trend';
	@override String peakHour({required Object hour}) => 'Vrchol: ${hour}:00';
	@override String get noHistoryYet => 'Zatím žádná historie';
	@override String get startLogging => 'Začněte zaznamenávat jídla, abyste zde viděli\n7denní trendy makroživin';
}

// Path: home.mealLog
class _Translations$home$mealLog$cs extends Translations$home$mealLog$en {
	_Translations$home$mealLog$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zaznamenaná jídla';
	@override String get emptyMessage => 'Vyfoťte poslední jídlo a zaznamenejte ho sem.';
	@override String get noMealsToday => 'Dnes žádná zaznamenaná jídla';
	@override String get seeAllMeals => 'Zobrazit všechna jídla';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$cs extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rychlé přidání s AI';
	@override String get description => 'Popište své jídlo a AI se postará o zbytek.';
	@override String get hint => 'např. K snídani jsem měl velkou misku ovesné kaše s nakrájeným banánem a odměrkou syrovátkového proteinu ...';
	@override String get analyzeMeal => 'Analyzovat jídlo';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$cs extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oblíbená jídla';
	@override String get description => 'Rychle přidejte některé z vašich oblíbených jídel.';
	@override String get noFavorites => 'Zatím žádná oblíbená jídla.';
	@override String get addFavoriteHint => 'Klikněte na hvězdičku u jídla pro označení jako oblíbené.';
	@override String get seeAll => 'Zobrazit vše';
	@override String get add => 'Přidat';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$cs extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vyfoťte a zaznamenejte jídlo';
	@override String get description => 'Použijte fotoaparát k vyfocení jídla pro AI analýzu.';
	@override String get openCamera => 'Otevřít fotoaparát';
	@override String get gallery => 'Galerie';
	@override String get compressingPhoto => 'Optimalizuji fotku…';
	@override String get uploadingPhoto => 'Nahrávám fotku…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$cs extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchronizovat s Health Connect';
	@override String get description => 'Synchronizujte svá nutriční data s Health Connect';
	@override String get install => 'Nainstalovat';
	@override String get dataUseDescription => 'Použijte spálené kalorie ve svém cíli a sdílejte zaznamenaná jídla';
	@override String get installOrUpdate => 'Nainstalovat nebo aktualizovat';
	@override String get connect => 'Propojit';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$cs extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorie';
	@override String get carbs => 'Sacharidy (g)';
	@override String get protein => 'Bílkoviny (g)';
	@override String get fat => 'Tuky (g)';
	@override String get fiber => 'Vláknina (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$cs extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Smazat jídlo';
	@override String get message => 'Jste si jistí, že chcete smazat tento záznam o jídle?';
	@override String get cancel => 'Zrušit';
	@override String get delete => 'Smazat';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$cs extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Otázka ${current} z ${total}';
	@override String get noQuestionsAvailable => 'Žádné otázky nejsou k dispozici';
	@override String get next => 'Další';
	@override String get continueLabel => 'Pokračovat';
}

// Path: meal.analysis
class _Translations$meal$analysis$cs extends Translations$meal$analysis$en {
	_Translations$meal$analysis$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyzuji vaše jídlo';
	@override String get stepStarted => 'Začínám…';
	@override String get stepDecomposition => 'Porozumění jídlu…';
	@override String get stepIngredients => 'Párování ingrediencí s nutričními daty…';
	@override String get stepUncertainty => 'Kontroluji jistotu…';
	@override String get stepMealTypeQuestion => 'Skoro hotovo…';
	@override String get stepResult => 'Dokončuji výsledek…';
	@override String get stepError => 'Něco se pokazilo';
	@override String get stepDefault => 'Analyzuji vaše jídlo…';
	@override String get progressUnderstand => 'Porozumění jídlu';
	@override String get progressMatch => 'Vyhledávání nutričních údajů ingrediencí';
	@override String get progressCheck => 'Kontrola porcí a jistoty';
	@override String get progressMealType => 'Výběr typu jídla';
	@override String get progressFinish => 'Výpočet kalorií a makroživin';
	@override String get detectedIngredientHeading => 'Ingredience, které zaznamenáváme';
	@override String ingredientsOverflow({required Object count}) => '${count} dalších';
	@override String ingredientsLine({required Object count}) => 'Zjištěno ${count} ingrediencí';
	@override String get ingredientsPending => 'Skenuji ingredience…';
	@override String mealPreviewDescription({required Object text}) => '„${text}“';
	@override String get offlineTip0 => 'Tip: Pravidelnost je důležitější než dokonalost — pravidelné záznamy odhalí podstatné vzorce.';
	@override String get offlineTip1 => 'Tip: Pro fotky pomáhá přirozené světlo a pohled shora pro přesnost porcí.';
	@override String get offlineTip2 => 'Tip: Uveďte nápoje, omáčky a olej používaný při vaření — přidávají kalorie, na které se často zapomíná.';
	@override String get offlineTip3 => 'Tip: Krátká poznámka o porci (1 miska, velká káva) výrazně zpřesní odhady.';
	@override String get offlineTip4 => 'Tip: Záznam po jídle stále buduje návyk; dokonalost není nutná.';
	@override String get offlineTip5 => 'Tip: Uveďte způsob přípravy, pokud zásadně mění kalorickou hodnotu (smažené vs pečené).';
}

// Path: meal.localInference
class _Translations$meal$localInference$cs extends Translations$meal$localInference$en {
	_Translations$meal$localInference$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Zkontrolujte detekované ingredience';
	@override String get reviewSubtitle => 'Tento text byl interpretován ve vašem zařízení. Před výpočtem výživových hodnot opravte názvy nebo porce.';
	@override String get mealName => 'Název jídla';
	@override String get ingredient => 'Ingredience';
	@override String get grams => 'Odhadované gramy';
	@override String get removeIngredient => 'Odebrat ingredienci';
	@override String get continueLabel => 'Pokračovat';
	@override String get invalidProposal => 'Přidejte alespoň jednu ingredienci a zadejte kladný počet gramů.';
	@override String get localUnavailable => 'Analýza v zařízení momentálně není k dispozici.';
	@override String get calculationDetails => 'Jak bylo vypočítáno';
	@override String get interpretationLocal => 'Ingredience interpretované v tomto zařízení';
	@override String get interpretationCloud => 'Ingredience interpretované v cloudu';
	@override String get interpretationManual => 'Ingredience zkontrolované nebo upravené vámi';
	@override String get nutritionRemote => 'Výživové hodnoty staženy z USDA prostřednictvím Calorify';
	@override String get nutritionFallback => 'Některé výživové hodnoty byly odhadnuty vzdáleně';
	@override String get calculationServer => 'Kalorie a makroživiny vypočítány aplikací Calorify';
	@override String get fallbackUsed => 'Lokální analýza byla nahrazena zpracováním v cloudu';
	@override String get noRawContent => 'Diagnostické účtenky neobsahují text ani fotografii vašeho jídla.';
}

// Path: meal.feedback
class _Translations$meal$feedback$cs extends Translations$meal$feedback$en {
	_Translations$meal$feedback$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Co vypadá špatně?';
	@override String get subtitle => 'Označte jednu nebo více chyb a pomozte nám zlepšit analýzu.';
	@override String get tellUsMore => 'Řekněte více';
	@override String get describeIncorrect => 'Popište, co bylo nepřesné';
	@override String get submit => 'Odeslat';
	@override String get issueFoodIdentification => 'Identifikace jídla';
	@override String get issuePortionSize => 'Velikost porce';
	@override String get issueCalorieDistribution => 'Rozložení kalorií';
	@override String get issueMacrosWrong => 'Makroživiny jsou špatně';
	@override String get issueMissingItems => 'Chybějící položky';
	@override String get issueExtraItems => 'Nadbytečné položky';
	@override String get issueOther => 'Jiné';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$cs extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Nedávné';
	@override String get calories => 'Kalorie';
	@override String get alphabetical => 'A–Z';
}

// Path: profile.sections
class _Translations$profile$sections$cs extends Translations$profile$sections$en {
	_Translations$profile$sections$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'ZÁKLADNÍ INFORMACE';
	@override String get goalsAndActivity => 'CÍLE & AKTIVITA';
	@override String get calculatedValues => 'VYPOČÍTANÉ HODNOTY';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$cs extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Denní cíl';
	@override String get calPerDay => 'cal/den';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$cs extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'OSOBNÍ INFORMACE';
	@override String get physicalMeasurements => 'TĚLESNÉ ROZMĚRY';
	@override String get goalsAndActivity => 'CÍLE & AKTIVITA';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$cs extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get male => 'Muž';
	@override String get female => 'Žena';
	@override String get other => 'Jiné';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$cs extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$cs loseWeight = _Translations$editProfile$weightGoals$loseWeight$cs._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$cs maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$cs._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$cs gainWeight = _Translations$editProfile$weightGoals$gainWeight$cs._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$cs extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$cs sedentary = _Translations$editProfile$activityLevels$sedentary$cs._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$cs lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$cs._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$cs moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$cs._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$cs veryActive = _Translations$editProfile$activityLevels$veryActive$cs._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$cs extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$cs._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$cs extends Translations$settings$sections$en {
	_Translations$settings$sections$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALIZACE';
	@override String get notifications => 'UPOZORNĚNÍ';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'ANALÝZA V ZAŘÍZENÍ';
	@override String get supportAndLegal => 'PODPORA & PRÁVNÍ';
	@override String get about => 'O APLIKACI';
	@override String get dangerZone => 'RIZIKOVÁ ZÓNA';
	@override String get developer => 'VÝVOJÁŘ';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$cs extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Upravit profil';
	@override String get subtitle => 'Aktualizujte své osobní informace';
}

// Path: settings.language
class _Translations$settings$language$cs extends Translations$settings$language$en {
	_Translations$settings$language$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jazyk';
	@override String get subtitle => 'Vyberte preferovaný jazyk';
	@override String get searchHint => 'Hledat jazyky...';
	@override String get noResults => 'Nebyly nalezeny výsledky';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$cs extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jednotka výšky';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$cs extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jednotka hmotnosti';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$cs extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Připomenutí jídel';
	@override String get subtitle => 'Zůstaňte na cestě díky včasným upozorněním';
}

// Path: settings.localInference
class _Translations$settings$localInference$cs extends Translations$settings$localInference$en {
	_Translations$settings$localInference$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analýza jídla v zařízení';
	@override String get subtitle => 'Interpretujte podporovaná jídla pomocí Gemini Nano před výpočtem výživových hodnot';
	@override String get unavailable => 'V tomto zařízení není k dispozici';
	@override String get rolloutUnavailable => 'Podporovaný hardware byl nalezen, ale tato funkce není pro tuto verzi aplikace aktivní';
	@override String get modelSetup => 'Před aktivací musí Gemini Nano dokončit stahování';
	@override String get useLocalTitle => 'Používat analýzu v zařízení';
	@override String get useLocalSubtitle => 'Volitelné, ve výchozím nastavení vypnuto. Výsledky mohou být u složitých jídel méně spolehlivé.';
	@override String get disclosureTitle => 'Než zapnete analýzu v zařízení';
	@override String get disclosureBody => 'Gemini Nano dokáže identifikovat ingredience a odhadnout porce na podporovaných zařízeních Android. Váš zkontrolovaný návrh ingrediencí je odeslán do Calorify za účelem ověření výživových hodnot USDA a výpočtu.';
	@override String get disclosureLimit1 => 'Složitá jídla, skryté ingredience a velikosti porcí mohou být identifikovány nesprávně.';
	@override String get disclosureLimit2 => 'Model nemusí být k dispozici během stahování, při vysokém zatížení, v pozadí nebo z důvodu omezení zařízení.';
	@override String get disclosureLimit3 => 'Pokud lokální interpretace nedokončí, tato beta verze automaticky odešle původní popis jídla do Calorify za účelem analýzy v cloudu.';
	@override String get acknowledgement => 'Rozumím tomu, že mám zkontrolovat detekované ingredience a porce.';
	@override String get enable => 'Potvrdit a zapnout';
	@override String get cancel => 'Zrušit';
}

// Path: settings.theme
class _Translations$settings$theme$cs extends Translations$settings$theme$en {
	_Translations$settings$theme$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Téma';
	@override String get light => 'Světlé';
	@override String get dark => 'Tmavé';
	@override String get system => 'Systémové';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$cs extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Poslat zpětnou vazbu';
	@override String subtitle({required Object appLabel}) => 'Pomozte nám vylepšit ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} - zpětná vazba k aplikaci';
	@override String get emailBodyPrefix => 'Napište prosím svou zpětnou vazbu níže:';
	@override String get appVersion => 'Verze aplikace';
	@override String get device => 'Zařízení';
	@override String get osVersion => 'Verze OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$cs extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Export historie jídel';
	@override String get subtitle => 'Sdílejte CSV se zaznamenanými jídly';
	@override String get shareText => 'Export historie jídel Calorify';
	@override String failed({required Object error}) => 'Nepodařilo se exportovat historii jídel: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$cs extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vymazat všechna data';
	@override String get subtitle => 'Trvale smazat všechny vaše informace';
	@override String get localOnlySubtitle => 'Smazat data Calorify uložená v tomto zařízení';
	@override String get confirmationTitle => 'Vymazat všechna data?';
	@override String get confirmationMessage => 'Tuto akci nelze vrátit zpět. Všechna vaše zaznamenaná jídla, oblíbené položky a nastavení profilu budou trvale smazány.';
	@override String get localOnlyConfirmationMessage => 'Tímto trvale smažete zaznamenaná jídla, oblíbené položky a nastavení profilu z tohoto zařízení. Jídla již sdílená s Health Connect a přístup k Health Connect se spravují samostatně v Nastavení > Health Connect.';
	@override String get cancel => 'Zrušit';
	@override String get clearEverything => 'Vymazat vše';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$cs extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Možnosti ladění';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$cs extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Prohlížet a spravovat oprávnění';
	@override late final _Translations$settings$healthConnect$unavailable$cs unavailable = _Translations$settings$healthConnect$unavailable$cs._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$cs updateRequired = _Translations$settings$healthConnect$updateRequired$cs._(_root);
	@override late final _Translations$settings$healthConnect$permissions$cs permissions = _Translations$settings$healthConnect$permissions$cs._(_root);
	@override String get managePermissions => 'Spravovat oprávnění';
	@override String get openSettings => 'Otevřít nastavení Health Connect';
	@override String get disconnect => 'Odpojit Health Connect';
	@override String get disconnectConfirmationTitle => 'Odpojit Health Connect?';
	@override String get disconnectConfirmationMessage => 'Calorify ztratí přístup k Health Connect. Data, která již byla zapsána, nebudou smazána.';
	@override String get disconnectConfirmationAction => 'Odpojit';
	@override String get deleteSyncedMeals => 'Smazat jídla Calorify z Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Smazat synchronizovaná jídla?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Smazat z Health Connect jídla synchronizovaná touto verzí Calorify? Místní záznam jídel se nezmění. Starší záznamy Calorify může být stále nutné odstranit pomocí možnosti Spravovat data v Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Smazat synchronizovaná jídla';
	@override String get deleteSyncedMealsSuccess => 'Jídla Calorify byla z Health Connect smazána.';
	@override String get deleteSyncedMealsFailed => 'Synchronizovaná jídla se nepodařilo smazat. Zkuste to znovu.';
	@override String get connectionPartial => 'Některé funkce Health Connect jsou povoleny.';
	@override String get connectionComplete => 'Obě funkce Health Connect jsou povoleny.';
	@override String get actionFailed => 'Health Connect se nepodařilo otevřít. Zkuste to znovu.';
	@override String get requestPermissions => 'Požádat o oprávnění';
	@override String get permissionRequestCancelledOrFailed => 'Požadavek na oprávnění byl zrušen nebo selhal. Zkuste to prosím znovu nebo udělte oprávnění ručně v nastavení Health Connect.';
	@override String get permissionRequestFailed => 'Nelze požádat o oprávnění. Zkuste to prosím znovu nebo udělte oprávnění ručně v nastavení Health Connect.';
	@override String get requestingPermissions => 'Žádám o oprávnění...';
}

// Path: settings.about
class _Translations$settings$about$cs extends Translations$settings$about$en {
	_Translations$settings$about$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'O aplikaci';
	@override String get tagline => 'Rychlé, bezplatné a soukromí na prvním místě — povědomí o kaloriích';
	@override late final _Translations$settings$about$ourStory$cs ourStory = _Translations$settings$about$ourStory$cs._(_root);
	@override late final _Translations$settings$about$privacy$cs privacy = _Translations$settings$about$privacy$cs._(_root);
	@override late final _Translations$settings$about$developer$cs developer = _Translations$settings$about$developer$cs._(_root);
	@override late final _Translations$settings$about$feedback$cs feedback = _Translations$settings$about$feedback$cs._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$cs extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify verze ${version}';
	@override String build({required Object buildNumber}) => 'Sestavení ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$cs extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čas na snídani! 🍳';
	@override String get body => 'Nezapomeňte zaznamenat snídani';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$cs extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čas na oběd! 🥗';
	@override String get body => 'Je čas zaznamenat oběd';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$cs extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čas na večeři! 🍽️';
	@override String get body => 'Nezapomeňte zaznamenat večeři';
}

// Path: notifications.snack
class _Translations$notifications$snack$cs extends Translations$notifications$snack$en {
	_Translations$notifications$snack$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čas na svačinu! 🍎';
	@override String get body => 'Čas na zdravou svačinu';
}

// Path: notifications.test
class _Translations$notifications$test$cs extends Translations$notifications$test$en {
	_Translations$notifications$test$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testovací upozornění';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$cs extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} poskytuje odhadnuté nutriční informace. Přesnost závisí na vašem zadání a na variacích potravin. Používejte je jako orientaci, nikoli jako definitivní zdroj. Pro osobní dietní poradenství se poraďte s odborníkem.';
	@override late final _Translations$disclaimer$snap$portionSize$cs portionSize = _Translations$disclaimer$snap$portionSize$cs._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$cs preparationMethods = _Translations$disclaimer$snap$preparationMethods$cs._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$cs ingredients = _Translations$disclaimer$snap$ingredients$cs._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$cs databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$cs._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$cs extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odhad váhové změny';
	@override String get description => 'Projekce změny hmotnosti je teoretický odhad založený na jednoduchém modelu kalorický příjem vs. výdej. Slouží pouze jako motivační vodítko, nikoli jako předpověď vaší skutečné váhy.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$cs calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$cs._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$cs biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$cs._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$cs waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$cs._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$cs professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$cs._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$cs extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Tyto metriky vám pomáhají porozumět energetickým potřebám těla a vést vaše výživové cíle.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$cs bmr = _Translations$disclaimer$healthMetrics$bmr$cs._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$cs tdee = _Translations$disclaimer$healthMetrics$tdee$cs._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$cs dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$cs._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$cs extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odhad spálených kalorií';
	@override String get description => 'Pokud nejsou dostupná data z Health Connect, odhadujeme dnešní spálené kalorie na základě vašeho BMR a úrovně aktivity (TDEE), škálované podle části dne, která již uplynula.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$cs howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$cs._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$cs professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$cs._(_root);
}

// Path: watch.common
class _Translations$watch$common$cs extends Translations$watch$common$en {
	_Translations$watch$common$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get back => 'Zpět';
	@override String get cancel => 'Zrušit';
	@override String get delete => 'Smazat';
	@override String get retry => 'Zkusit znovu';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$cs extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Živina';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} gramů';
	@override String get protein => 'Bílkoviny';
	@override String get carbs => 'Sacharidy';
	@override String get fat => 'Tuky';
	@override String get fiber => 'Vláknina';
}

// Path: watch.sync
class _Translations$watch$sync$cs extends Translations$watch$sync$en {
	_Translations$watch$sync$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Synchronizovat s telefonem';
	@override String get syncing => 'Synchronizuji…';
	@override String get synced => 'Synchronizováno';
	@override String get syncedJustNow => 'Právě synchronizováno';
	@override String syncedMinutesAgo({required Object minutes}) => 'Synchronizováno před ${minutes} min';
	@override String get failed => 'Synchronizace selhala';
	@override String get phoneDisconnected => 'Telefon odpojen';
	@override String get tapToSync => 'Klepněte pro synchronizaci';
	@override String get refreshFailed => 'Nepodařilo se obnovit. Zkontrolujte telefon.';
	@override String get openPhone => 'Otevřete Calorify v telefonu a potom klepněte na obnovit.';
}

// Path: watch.home
class _Translations$watch$home$cs extends Translations$watch$home$en {
	_Translations$watch$home$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get today => 'Dnes';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} kalorií z ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} nad cílem';
	@override String remaining({required Object calories}) => '${calories} zbývá';
	@override String left({required Object calories}) => '${calories} zbývá';
	@override String goal({required Object calories}) => 'Cíl: ${calories} kcal';
	@override String get logMeal => 'Zadat jídlo';
	@override String get todayMeals => 'Dnešní jídla';
	@override String todayMealsCount({required Object count}) => 'Dnešní jídla, ${count}';
	@override String viewMore({required Object count}) => 'Zobrazit ${count} dalších';
	@override String viewMoreSemantics({required Object count}) => '${count} dalších jídel, klepněte pro zobrazení všech';
	@override String get noMeals => 'Žádná jídla nezaznamenána';
	@override String get noMealsSemantics => 'Dnes žádná jídla nezaznamenána';
	@override String get tapLog => 'Klepněte na Zadat pro začátek';
	@override String get removedFromQueue => 'Jídlo odstraněno z offline fronty.';
	@override String get removedOffline => 'Jídlo odstraněno offline. Synchronizuje se, až se telefon znovu připojí.';
	@override String get deleteFailed => 'Nepodařilo se smazat jídlo';
}

// Path: watch.history
class _Translations$watch$history$cs extends Translations$watch$history$en {
	_Translations$watch$history$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dnešní jídla';
	@override String get refresh => 'Obnovit jídla';
	@override String get loadFailed => 'Nepodařilo se načíst jídla';
	@override String get syncFailed => 'Nepodařilo se synchronizovat';
	@override String get emptyTitle => 'Žádná jídla zatím';
	@override String get emptyMessage => 'Zadejte jídlo na hlavní obrazovce a bude zde zobrazeno.';
}

// Path: watch.favorites
class _Translations$watch$favorites$cs extends Translations$watch$favorites$en {
	_Translations$watch$favorites$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oblíbené';
	@override String get refresh => 'Obnovit oblíbené';
	@override String get loadFailed => 'Nepodařilo se načíst oblíbené';
	@override String get syncFailed => 'Nepodařilo se synchronizovat';
	@override String get emptyTitle => 'Žádné oblíbené zatím';
	@override String get emptyMessage => 'Označte jídla hvězdičkou v aplikaci v telefonu, aby zde šla zadat jedním klepnutím.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} kalorií. Klepněte pro zadání.';
	@override String logged({required Object name}) => '${name} zadáno!';
	@override String savedOffline({required Object name}) => '${name} uloženo offline. Synchronizuje se, až se telefon znovu připojí.';
	@override String get saveFailed => 'Nepodařilo se uložit jídlo. Zkuste to prosím znovu.';
	@override String get log => 'Zadat';
}

// Path: watch.meal
class _Translations$watch$meal$cs extends Translations$watch$meal$en {
	_Translations$watch$meal$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kalorií, zaznamenáno v ${time}.';
	@override String get longPressDelete => 'Dlouze stiskněte pro smazání.';
	@override String get deleteTitle => 'Smazat jídlo?';
}

// Path: watch.voice
class _Translations$watch$voice$cs extends Translations$watch$voice$en {
	_Translations$watch$voice$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hlasové zadání jídla';
	@override String get processing => 'Zpracovávám vaše jídlo…';
	@override String get processingDescription => 'Odhad porcí a živin';
	@override String get listening => 'Naslouchám';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Zastavit nahrávání';
	@override String get start => 'Klepněte pro spuštění nahrávání';
	@override String get starting => 'Spouštím mikrofon…';
	@override String get prompt => 'Klepněte a pak popište jídlo';
	@override String get tapToRetry => 'Klepněte pro opakování';
	@override String get example => 'Zkuste „2 rotis s dal“';
	@override String get unavailable => 'Hlasový vstup není dostupný. Zkontrolujte oprávnění k mikrofonu v nastavení hodinek.';
	@override String get didNotStart => 'Mikrofon se nespustil. Klepněte pro opakování.';
	@override String get startFailed => 'Nepodařilo se spustit nahrávání. Zkontrolujte oprávnění mikrofonu.';
	@override String get allowMicrophone => 'Povolte přístup k mikrofonu pro zadávání jídel hlasem.';
	@override String get needsConnection => 'Rozpoznávání hlasu vyžaduje připojení. Klepněte pro opakování.';
	@override String get microphoneUnavailable => 'Mikrofon není k dispozici. Klepněte pro opakování.';
	@override String get microphoneBusy => 'Mikrofon je obsazen. Chvíli počkejte a zkuste to znovu.';
	@override String get languageUnsupported => 'Hlasový vstup nepodporuje jazyk hodinek.';
	@override String get temporarilyBusy => 'Hlasový vstup je dočasně vytížen. Chvíli počkejte a zkuste to znovu.';
	@override String get notRecognized => 'Nezachytilo se to. Klepněte na mikrofon a zkuste to znovu.';
	@override String get noSpeech => 'Nebyl zaznamenán žádný zvuk. Klepněte na mikrofon a zkuste to znovu.';
	@override String get analysisFailed => 'Analýza selhala. Zkuste to prosím znovu.';
	@override String get mealNotIdentified => 'Nepodařilo se identifikovat jídlo. Zkuste jej popsat jinak.';
}

// Path: watch.result
class _Translations$watch$result$cs extends Translations$watch$result$en {
	_Translations$watch$result$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Podrobnosti jídla';
	@override String get savedOffline => 'Uloženo offline';
	@override String get logged => 'Zaznamenáno!';
	@override String get mealFound => 'Jídlo nalezeno';
	@override String get estimatedEnergy => 'Odhadované kalorie';
	@override String get logMeal => 'Zadat jídlo';
	@override String get logging => 'Zaznamenávám…';
	@override String get logAnother => 'Zadat další';
	@override String get goingBack => 'Vrátit se…';
	@override String get savedOfflineMessage => 'Jídlo uloženo offline. Synchronizuje se, až se telefon znovu připojí.';
	@override String get saveFailed => 'Nepodařilo se uložit jídlo. Zkuste to prosím znovu.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$cs extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chytré rozpoznávání jídla';
	@override String get description => 'Vyfoťte jídlo a nechte AI identifikovat váš pokrm';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$cs extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI analýza';
	@override String get description => 'Získejte okamžité nutriční informace z vašich popisů';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$cs extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrace se Health Connect';
	@override String get description => 'Propojte se s Health Connect pro lepší přehledy';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$cs extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podváha';
	@override String get healthyWeight => 'Zdravá váha';
	@override String get overweight => 'Nadváha';
	@override String get obese => 'Obezita';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$cs extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Pomůžeme vám vytvořit zdravý plán k dosažení vyvážené hmotnosti s nutričně bohatými jídly.';
	@override String get healthy => 'Skvěle! Jste ve zdravém rozmezí. Pomůžeme vám udržet vitalitu a energetickou hladinu.';
	@override String overweight({required Object appLabel}) => '${appLabel} zjednoduší vaši cestu díky sledování poháněnému AI, aby vám pomohl pohodlně dosáhnout cíle.';
	@override String get obese => 'Jsme tu, abychom vás podpořili osobním vedením a udržitelnými strategiemi pro vaše zdravotní cíle.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$cs extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatické sledování kalorií';
	@override String get description => 'Sledujte spálené kalorie z vašich fitness aplikací';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$cs extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Spálené kalorie';
	@override String get description => 'Přečíst dnešní celkový počet spálených kalorií z Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$cs extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Přehled pokroku';
	@override String get description => 'Získejte podrobné poznatky o trendech vašeho zdraví';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$cs extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sdílet zaznamenaná jídla';
	@override String get description => 'Zapisovat jídla zaznamenaná v Calorify do Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$cs extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bezproblémová integrace';
	@override String get description => 'Synchronizujte data z vašich oblíbených zdravotních aplikací';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$cs extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Máte vše pod kontrolou';
	@override String get description => 'Vyberte kterékoli oprávnění a přístup můžete kdykoli změnit';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$cs extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nejste na to sami';
	@override String get genericMessage => 'Výzkumy ukazují, že konzistentní sledování je nejlepším ukazatelem dlouhodobého úspěchu.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Pro ${age}letého ${gender}, který chce ${goal}, je konzistentní sledování nejlepším ukazatelem úspěchu.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} to udělá 10× snazší než ruční zadávání.';
	@override String get getStartedTitle => 'Jste připraveni začít?';
	@override String get tipPhoto => 'Vyfoťte jídlo pro okamžitou analýzu';
	@override String get tipConsistency => 'Zaznamenávejte průběžně, abyste viděli významný pokrok';
	@override String get tipProgress => 'Denně sledujte pokrok, abyste zůstali motivovaní';
	@override String get button => 'Pojďme na to';
	@override String get defaultGender => 'jedinec';
	@override String get defaultGoal => 'zdravější já';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$cs extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Váš zdravotní profil';
	@override String bmiDescription({required Object bmi}) => 'Na základě vašich údajů je váš BMI ${bmi}.';
	@override String get finalizeDescription => 'Dokončeme váš profil pro přizpůsobení zážitku.';
	@override String get goalGain => 'přibrat';
	@override String get goalLose => 'zhubnout';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Abyste dosáhli cíle, budete muset ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Dosáhli jste cílové hmotnosti! Pomůžeme vám ji udržet.';
	@override String get button => 'Pojďme na to';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$cs extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Výborný začátek!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Udělali jste první krok k ${goalText}. Vzhledem k tomu, že jste ${activityText}, ${appLabel} upraví vaše cíle tak, aby odpovídaly vašemu životnímu stylu.';
	@override String get personalizedTargets => 'Personalizované kalorické cíle';
	@override String get aiMealDetection => 'Detekce jídel poháněná AI';
	@override String get macroBreakdowns => 'Podrobné rozbory makroživin';
	@override String get button => 'Pojďme na to';
	@override String get defaultGoal => 'vaše cíle';
	@override String get defaultActivity => 'aktivní';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$cs extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Zhubnout';
	@override String get description => 'Vytvořit kalorický deficit pro hubnutí';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$cs extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Udržet váhu';
	@override String get description => 'Udržovat současnou hmotnost';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$cs extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Přibrat';
	@override String get description => 'Vytvořit kalorický přebytek pro přibrání';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$cs extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentární';
	@override String get description => 'Málo nebo žádné cvičení';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$cs extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lehce aktivní';
	@override String get description => 'Lehké cvičení 1–3× týdně';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$cs extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Středně aktivní';
	@override String get description => 'Středně intenzivní cvičení 3–5× týdně';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$cs extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Velmi aktivní';
	@override String get description => 'Intenzivní cvičení 6–7× týdně';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$cs extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrémně aktivní';
	@override String get description => 'Velmi náročné cvičení nebo fyzická práce';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$cs extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect není k dispozici';
	@override String get description => 'Health Connect není na tomto zařízení dostupný. Nainstalujte prosím Health Connect z Play Store (Android 9+) nebo aktualizujte na Android 14+.';
	@override String get unsupportedDescription => 'Health Connect není na tomto zařízení podporován.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$cs extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect vyžaduje pozornost';
	@override String get description => 'Před správou přístupu nainstalujte nebo aktualizujte Health Connect.';
	@override String get action => 'Nainstalovat nebo aktualizovat';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$cs extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oprávnění';
	@override String get description => 'Následující oprávnění jsou požadována pro integraci s Health Connect:';
	@override String get granted => 'Povoleno';
	@override String get notGranted => 'Nepovoleno';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$cs caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$cs._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$cs nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$cs._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$cs nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$cs._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$cs extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Náš příběh';
	@override String content({required Object appLabel}) => '${appLabel} vznikl z jednoduché frustrace: většina aplikací pro sledování kalorií je buď příliš složitá, vyžaduje neustálé ruční zadávání, účtuje vysoké předplatné nebo kompromituje soukromí.\n\nJako samostatný vývojář jsem chtěl vytvořit něco jednoduššího a spravedlivějšího — aplikaci, která využívá AI ke zmenšení námahy, zůstává rychlá a zdarma a zachází s vašimi zdravotními daty s respektem.\n\n${appLabel} je aplikace, kterou bych si přál, aby existovala: žádné účty, žádné sledování, žádné reklamy — jen jasné, praktické postřehy a vaše zdravotní cíle.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$cs extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vaše soukromí je důležité';
	@override String get description => 'Soukromí není dodatek — je to princip návrhu. Co to v praxi znamená:';
	@override String get noAccounts => 'Není potřeba účet\nPoužijte aplikaci okamžitě. Žádné registrace, žádné identity.';
	@override String noTracking({required Object appLabel}) => 'Žádné sledování chování\n${appLabel} nesleduje vaši aktivitu, netvoří uživatelské profily ani vás nesleduje napříč aplikacemi či weby.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Omezené analytické a diagnostické údaje\n${appLabel} používá základní události aplikace a diagnostiku pádů ke zvýšení spolehlivosti. Hodnoty zdravotních záznamů se nepoužívají k reklamě ani se neprodávají.';
	@override String noAds({required Object appLabel}) => 'Bez reklam záměrně\n${appLabel} je navržen tak, aby fungoval bez reklam a monetizace založené na datech.';
	@override String get noDataSelling => 'Žádný prodej dat\nVaše zdravotní údaje nejsou nikdy prodávány ani sdíleny s třetími stranami.';
	@override String get localStorage => 'Primárně lokální úložiště\nVaše data zůstávají v zařízení.';
	@override String get privacyPolicy => 'Zásady ochrany osobních údajů';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$cs extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vytvořeno jedním vývojářem';
	@override String description({required Object appLabel}) => '${appLabel} je vytvořen a udržován jediným vývojářem, který se zaměřuje na klidný software pro zdraví, respektující soukromí.\n\nZpětnou vazbu čte osobně a pomáhá směrovat další vývoj aplikace.';
	@override String get website => 'Web';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$cs extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Líbí se vám ${appLabel}?';
	@override String description({required Object appLabel}) => 'Vaše zpětná vazba pomáhá zlepšit ${appLabel} pro všechny.';
	@override String get rateApp => 'Ohodnotit v Play Store';
	@override String get sendFeedback => 'Poslat zpětnou vazbu';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$cs extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Velikost porce';
	@override String get description => 'Přesnost odhadů silně závisí na správném odhadu velikosti porce.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$cs extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Způsoby přípravy';
	@override String description({required Object appLabel}) => 'Způsoby vaření mohou výrazně měnit nutriční hodnotu jídla. Odhady ${appLabel} nemusí tyto rozdíly vždy zohlednit.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$cs extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredience';
	@override String get description => 'Složité pokrmy s mnoha skrytými ingrediencemi mohou vést k méně přesným odhadům.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$cs extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Omezení databáze';
	@override String description({required Object appLabel}) => 'Databáze potravin v ${appLabel} je rozsáhlá, ale nemusí obsahovat každou potravinu nebo variantu.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$cs extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Přesnost odhadů kalorií';
	@override String get description => 'Tento odhad je přesný jen tolik, kolik jsou přesné vaše záznamy o příjmu a výdeji kalorií. Nepřesné záznamy povedou k nepřesné projekci.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$cs extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologické faktory';
	@override String description({required Object appLabel}) => 'Skutečný úbytek nebo nárůst hmotnosti ovlivňují metabolismus, hormony, spánek, stres, hydratace a další individuální faktory, které ${appLabel} neměří.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$cs extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Voda v těle a výkyvy';
	@override String get description => 'Běžná denní hmotnost se může výrazně lišit kvůli zadržování vody, trávení a načasování. Odhad tyto denní výkyvy nezohledňuje.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$cs extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odborné poradenství';
	@override String get description => 'Nepoužívejte tento odhad k lékařským rozhodnutím. Vždy se poraďte se zdravotnickým odborníkem nebo registrovaným dietologem pro personalizovanou péči.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$cs extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Bazální metabolický výdej (BMR) je počet kalorií, které vaše tělo spálí v klidu pro udržení základních funkcí, jako je dýchání a krevní oběh. BMR závisí na věku, pohlaví, výšce a hmotnosti. Vyšší BMR obvykle znamená, že tělo spaluje více kalorií v klidu, často kvůli vyššímu podílu svalové hmoty, nižšímu věku nebo tomu, že jde o muže. Nižší BMR obvykle naznačuje méně svalové hmoty, vyšší věk nebo že jde o ženu.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$cs extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Celkový denní energetický výdej (TDEE) je celkový počet kalorií, které spálíte za den, včetně BMR a kalorií spálených při fyzické aktivitě a běžném pohybu. TDEE závisí na vašem BMR a úrovni aktivity. Vyšší TDEE znamená, že celkově spálíte více kalorií, obvykle díky větší aktivitě nebo vyššímu BMR. Nižší TDEE naznačuje méně denní aktivity nebo nižší BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$cs extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Denní cíl';
	@override String get description => 'Denní cíl je doporučený denní příjem kalorií založený na vašem TDEE a cíli hmotnosti. Při hubnutí konzumujete méně kalorií než váš TDEE. Pro udržení váhy se příjem vyrovná TDEE. Při nabírání váhy konzumujete více kalorií než TDEE. Pomáhá to dosáhnout požadované změny váhy zdravým tempem.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$cs extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak je odhad vypočítán';
	@override String get description => 'Vypočítáme váš TDEE (na základě profilu) a vynásobíme ho zlomkem uběhlého dne (hodiny + minuty) / 24, abychom odhadli dosud spálené kalorie.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$cs extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odborné poradenství';
	@override String get description => 'Nepoužívejte tento odhad pro lékařská rozhodnutí. Vždy se poraďte se zdravotnickým odborníkem nebo registrovaným dietologem pro personalizovanou péči.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$cs extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Číst celkový počet spálených kalorií';
	@override String get description => 'Umožňuje aplikaci číst celkové spálené kalorie z Health Connect.';
	@override String get usage => 'Toto oprávnění se používá k zobrazení denního výdeje kalorií v aplikaci, což pomáhá pochopit váš celkový energetický výdej během dne.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$cs extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Číst nutriční údaje';
	@override String get description => 'Umožňuje aplikaci číst nutriční data z Health Connect.';
	@override String get usage => 'Toto oprávnění umožňuje aplikaci číst nutriční informace, které mohly být zaznamenány jinými aplikacemi připojenými k Health Connect, a poskytuje komplexní pohled na vaši výživu.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$cs extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$cs._(TranslationsCs root) : this._root = root, super.internal(root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zapisovat nutriční údaje';
	@override String get description => 'Umožňuje aplikaci zapisovat nutriční data do Health Connect.';
	@override String get usage => 'Toto oprávnění umožňuje aplikaci synchronizovat vaše zaznamenaná jídla s Health Connect, takže vaše nutriční data budou dostupná dalším zdravotním a fitness aplikacím, které používáte.';
}

/// The flat map containing all translations for locale <cs>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsCs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Čeština',
			'flag' => '🇨🇿',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Odeslali jste příliš mnoho požadavků. Počkejte prosím chvíli a zkuste to znovu.',
			'errors.networkError' => 'Síťová chyba. Zkontrolujte prosím připojení k internetu.',
			'errors.unknownError' => 'Něco se pokazilo. Zkuste to prosím později.',
			'errors.loadingProfileData' => 'Chyba při načítání dat profilu',
			'errors.somethingWentWrong' => 'Něco se pokazilo.',
			'errors.retry' => 'Zkusit znovu',
			'onboarding.welcome' => ({required Object appLabel}) => 'Vítejte v ${appLabel}',
			'onboarding.subtitle' => 'Váš osobní výživový průvodce poháněný AI',
			'onboarding.getStarted' => 'Začít',
			'onboarding.features.foodRecognition.title' => 'Chytré rozpoznávání jídla',
			'onboarding.features.foodRecognition.description' => 'Vyfoťte jídlo a nechte AI identifikovat váš pokrm',
			'onboarding.features.aiAnalysis.title' => 'AI analýza',
			'onboarding.features.aiAnalysis.description' => 'Získejte okamžité nutriční informace z vašich popisů',
			'onboarding.features.healthIntegration.title' => 'Integrace se Health Connect',
			'onboarding.features.healthIntegration.description' => 'Propojte se s Health Connect pro lepší přehledy',
			'onboarding.gender.title' => 'Jaké je vaše pohlaví?',
			'onboarding.gender.description' => 'Pohlaví nám pomáhá přesně vypočítat váš bazální metabolismus (BMR).',
			'onboarding.gender.next' => 'Další',
			'onboarding.height.title' => 'Jaká je vaše výška?',
			'onboarding.height.description' => 'Vaše výška nám pomůže přesně vypočítat BMI a energetické potřeby.',
			'onboarding.height.metric' => 'Metrické',
			'onboarding.height.imperial' => 'Imperiální',
			'onboarding.height.next' => 'Další',
			'onboarding.weight.currentTitle' => 'Jaká je vaše aktuální hmotnost?',
			'onboarding.weight.currentDescription' => 'Vaše aktuální hmotnost je zásadní pro personalizaci denních cílů.',
			'onboarding.weight.targetTitle' => 'Jaká je vaše cílová hmotnost?',
			'onboarding.weight.targetDescription' => 'Nastavení cílové hmotnosti nám pomůže sestavit dlouhodobý plán.',
			'onboarding.weight.metric' => 'Metrické',
			'onboarding.weight.imperial' => 'Imperiální',
			'onboarding.weight.next' => 'Další',
			'onboarding.age.title' => 'Kdy máte narozeniny?',
			'onboarding.age.description' => 'Věk nám pomáhá přesně vypočítat denní potřebu kalorií.',
			'onboarding.age.next' => 'Další',
			'onboarding.bmiScale.underweight' => 'Podváha',
			'onboarding.bmiScale.healthy' => 'Zdravé',
			'onboarding.bmiScale.overweight' => 'Nadváha',
			'onboarding.bmiScale.obese' => 'Obezita',
			'onboarding.bmiScale.categories.underweight' => 'Podváha',
			'onboarding.bmiScale.categories.healthyWeight' => 'Zdravá váha',
			'onboarding.bmiScale.categories.overweight' => 'Nadváha',
			'onboarding.bmiScale.categories.obese' => 'Obezita',
			'onboarding.bmiScale.messages.underweight' => 'Pomůžeme vám vytvořit zdravý plán k dosažení vyvážené hmotnosti s nutričně bohatými jídly.',
			'onboarding.bmiScale.messages.healthy' => 'Skvěle! Jste ve zdravém rozmezí. Pomůžeme vám udržet vitalitu a energetickou hladinu.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} zjednoduší vaši cestu díky sledování poháněnému AI, aby vám pomohl pohodlně dosáhnout cíle.',
			'onboarding.bmiScale.messages.obese' => 'Jsme tu, abychom vás podpořili osobním vedením a udržitelnými strategiemi pro vaše zdravotní cíle.',
			'onboarding.weightGoal.title' => 'Jaký je váš cíl?',
			'onboarding.weightGoal.description' => 'Vyberte cíl, který nejlépe vystihuje, čeho chcete dosáhnout',
			'onboarding.activityLevel.title' => 'Jak jste aktivní?',
			'onboarding.activityLevel.description' => 'To nám pomůže přesněji vypočítat vaši denní potřebu kalorií',
			'onboarding.healthConnect.title' => 'Propojte se s Health Connect',
			'onboarding.healthConnect.description' => 'Synchronizujte svá zdravotní data pro lepší přehledy a automatické sledování kalorií',
			'onboarding.healthConnect.overviewDescription' => 'Používejte spálené kalorie ve svém denním cíli a volitelně sdílejte zaznamenaná jídla s Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatické sledování kalorií',
			'onboarding.healthConnect.automaticTracking.description' => 'Sledujte spálené kalorie z vašich fitness aplikací',
			'onboarding.healthConnect.caloriesBurned.title' => 'Spálené kalorie',
			'onboarding.healthConnect.caloriesBurned.description' => 'Přečíst dnešní celkový počet spálených kalorií z Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Přehled pokroku',
			'onboarding.healthConnect.progressInsights.description' => 'Získejte podrobné poznatky o trendech vašeho zdraví',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Sdílet zaznamenaná jídla',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Zapisovat jídla zaznamenaná v Calorify do Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Bezproblémová integrace',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronizujte data z vašich oblíbených zdravotních aplikací',
			'onboarding.healthConnect.userControl.title' => 'Máte vše pod kontrolou',
			'onboarding.healthConnect.userControl.description' => 'Vyberte kterékoli oprávnění a přístup můžete kdykoli změnit',
			'onboarding.healthConnect.connected' => 'Health Connect propojeno',
			'onboarding.healthConnect.notConnected' => 'Health Connect není propojen',
			'onboarding.healthConnect.setup' => 'Nastavit Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Přeskočit nyní',
			'onboarding.healthConnect.statusConnected' => 'Health Connect je propojen.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect byl úspěšně propojen!',
			'onboarding.healthConnect.statusNotConnected' => 'Vyberte funkce Health Connect, které chcete povolit.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect je připojen částečně. Chcete-li používat obě funkce, povolte zbývající oprávnění.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Chcete-li pokračovat, nainstalujte nebo aktualizujte Health Connect.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect není na tomto zařízení podporován.',
			'onboarding.healthConnect.installOrUpdate' => 'Nainstalovat nebo aktualizovat',
			'onboarding.healthConnect.manageAccess' => 'Spravovat přístup',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Oprávnění odepřeno. Povolte prosím oprávnění Health Connect v nastavení telefonu pro ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Chyba při nastavování Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nejste na to sami',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Výzkumy ukazují, že konzistentní sledování je nejlepším ukazatelem dlouhodobého úspěchu.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Pro ${age}letého ${gender}, který chce ${goal}, je konzistentní sledování nejlepším ukazatelem úspěchu.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} to udělá 10× snazší než ruční zadávání.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Jste připraveni začít?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Vyfoťte jídlo pro okamžitou analýzu',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Zaznamenávejte průběžně, abyste viděli významný pokrok',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Denně sledujte pokrok, abyste zůstali motivovaní',
			'onboarding.reinforcement.trackingSuccess.button' => 'Pojďme na to',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'jedinec',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'zdravější já',
			'onboarding.reinforcement.healthProfile.title' => 'Váš zdravotní profil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Na základě vašich údajů je váš BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Dokončeme váš profil pro přizpůsobení zážitku.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'přibrat',
			'onboarding.reinforcement.healthProfile.goalLose' => 'zhubnout',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Abyste dosáhli cíle, budete muset ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Dosáhli jste cílové hmotnosti! Pomůžeme vám ji udržet.',
			'onboarding.reinforcement.healthProfile.button' => 'Pojďme na to',
			'onboarding.reinforcement.goalLifestyle.title' => 'Výborný začátek!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Udělali jste první krok k ${goalText}. Vzhledem k tomu, že jste ${activityText}, ${appLabel} upraví vaše cíle tak, aby odpovídaly vašemu životnímu stylu.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personalizované kalorické cíle',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Detekce jídel poháněná AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Podrobné rozbory makroživin',
			'onboarding.reinforcement.goalLifestyle.button' => 'Pojďme na to',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'vaše cíle',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktivní',
			'tabs.dashboard' => 'Přehled',
			'tabs.history' => 'Historie',
			'home.aiSummary.title' => 'Vaše AI shrnutí',
			'home.aiSummary.logMore' => 'Zaznamenávejte více jídel v příštích dnech, aby vám AI poskytla personalizované postřehy.',
			'home.aiSummary.loading' => 'Načítám souhrn...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} zaznamenaných jídel',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Skóre vyváženosti ${score}',
			'home.aiSummary.topFoods' => 'Nejčastější potraviny',
			'home.aiSummary.trendUp' => 'Kalorie rostou',
			'home.aiSummary.trendDown' => 'Kalorie klesají',
			'home.aiSummary.trendSteady' => 'Kalorie stabilní',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Aktualizováno ${time}',
			'home.dailyGoal.title' => 'Nastavte svůj denní cíl',
			'home.dailyGoal.titleSet' => 'Váš denní cíl',
			'home.dailyGoal.description' => 'Připraveni začít svou cestu ke zdraví? Nastavte si níže denní cílový příjem kalorií a vydejte se na cestu.',
			'home.dailyGoal.descriptionSet' => 'Kompas je nastaven! Toto je váš denní kalorický cíl.',
			'home.dailyGoal.yourGoal' => 'Váš cíl',
			'home.dailyGoal.goal' => 'Cíl',
			'home.dailyGoal.dailyCalories' => 'Denní kalorie (kcal)',
			'home.dailyGoal.setGoal' => 'Nastavit cíl',
			'home.dailyGoal.intake' => 'Příjem',
			'home.dailyGoal.burned' => 'Spáleno',
			'home.dailyGoal.weightImpact' => 'Dopad na váhu',
			'home.dailyGoal.estLoss' => 'Odhad. úbytek',
			'home.dailyGoal.estGain' => 'Odhad. přírůstek',
			'home.dailyGoal.kcal' => 'kilokalorie (kcal)',
			'home.dailySummary.title' => 'Denní souhrn',
			'home.dailySummary.calories' => 'Kalorie',
			'home.dailySummary.carbs' => 'Sacharidy',
			'home.dailySummary.protein' => 'Bílkoviny',
			'home.dailySummary.fat' => 'Tuky',
			'home.dailySummary.fiber' => 'Vláknina',
			'home.dailySummary.grams' => 'gramy',
			'home.dailySummary.chartAccessibilityLabel' => 'Graf makroživin',
			'home.intakeProgress.title' => 'Dnešní rozdělení makroživin',
			'home.intakeProgress.target' => 'Cíl',
			'home.intakeProgress.current' => 'Aktuální',
			'home.intakeHistory.title' => '7denní historie makroživin',
			'home.intakeHistory.trendTitle' => 'Dnešní trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Vrchol: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Zatím žádná historie',
			'home.intakeHistory.startLogging' => 'Začněte zaznamenávat jídla, abyste zde viděli\n7denní trendy makroživin',
			'home.mealLog.title' => 'Zaznamenaná jídla',
			'home.mealLog.emptyMessage' => 'Vyfoťte poslední jídlo a zaznamenejte ho sem.',
			'home.mealLog.noMealsToday' => 'Dnes žádná zaznamenaná jídla',
			'home.mealLog.seeAllMeals' => 'Zobrazit všechna jídla',
			'home.mealDescription.title' => 'Rychlé přidání s AI',
			'home.mealDescription.description' => 'Popište své jídlo a AI se postará o zbytek.',
			'home.mealDescription.hint' => 'např. K snídani jsem měl velkou misku ovesné kaše s nakrájeným banánem a odměrkou syrovátkového proteinu ...',
			'home.mealDescription.analyzeMeal' => 'Analyzovat jídlo',
			'home.favoriteMeals.title' => 'Oblíbená jídla',
			'home.favoriteMeals.description' => 'Rychle přidejte některé z vašich oblíbených jídel.',
			'home.favoriteMeals.noFavorites' => 'Zatím žádná oblíbená jídla.',
			'home.favoriteMeals.addFavoriteHint' => 'Klikněte na hvězdičku u jídla pro označení jako oblíbené.',
			'home.favoriteMeals.seeAll' => 'Zobrazit vše',
			'home.favoriteMeals.add' => 'Přidat',
			'home.mealSnap.title' => 'Vyfoťte a zaznamenejte jídlo',
			'home.mealSnap.description' => 'Použijte fotoaparát k vyfocení jídla pro AI analýzu.',
			'home.mealSnap.openCamera' => 'Otevřít fotoaparát',
			'home.mealSnap.gallery' => 'Galerie',
			'home.mealSnap.compressingPhoto' => 'Optimalizuji fotku…',
			'home.mealSnap.uploadingPhoto' => 'Nahrávám fotku…',
			'home.connectHealth.title' => 'Synchronizovat s Health Connect',
			'home.connectHealth.description' => 'Synchronizujte svá nutriční data s Health Connect',
			'home.connectHealth.install' => 'Nainstalovat',
			'home.connectHealth.dataUseDescription' => 'Použijte spálené kalorie ve svém cíli a sdílejte zaznamenaná jídla',
			'home.connectHealth.installOrUpdate' => 'Nainstalovat nebo aktualizovat',
			'home.connectHealth.connect' => 'Propojit',
			'history.noMeals' => 'Žádná zaznamenaná jídla',
			'history.emptyMessage' => 'Vyfoťte poslední jídlo a zaznamenejte ho sem.',
			'history.today' => 'Dnes',
			'history.yesterday' => 'Včera',
			'meal.ohNo' => 'Jejda!',
			'meal.delete' => 'Smazat',
			'meal.editMeal' => 'Upravit jídlo',
			'meal.addMeal' => 'Přidat jídlo',
			'meal.saveMeal' => 'Uložit jídlo',
			'meal.save' => 'Uložit',
			'meal.mealName' => 'Název jídla',
			'meal.mealNameHint' => 'např. Míchaná vejce s toustem',
			'meal.nameRequired' => 'Zadejte název jídla před uložením.',
			'meal.mealQuantity' => 'Množství jídla',
			'meal.mealQuantityHint' => 'např. 1 miska, 2 plátky',
			'meal.timeOfMeal' => 'Čas jídla',
			'meal.timeOfMealHint' => 'Vyberte čas, kdy jste jídlo měli',
			'meal.mealType' => 'Typ jídla',
			'meal.nutrition.calories' => 'Kalorie',
			'meal.nutrition.carbs' => 'Sacharidy (g)',
			'meal.nutrition.protein' => 'Bílkoviny (g)',
			'meal.nutrition.fat' => 'Tuky (g)',
			'meal.nutrition.fiber' => 'Vláknina (g)',
			'meal.deleteConfirmation.title' => 'Smazat jídlo',
			'meal.deleteConfirmation.message' => 'Jste si jistí, že chcete smazat tento záznam o jídle?',
			'meal.deleteConfirmation.cancel' => 'Zrušit',
			'meal.deleteConfirmation.delete' => 'Smazat',
			'meal.addedToLog' => 'Jídlo přidáno do záznamu!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nepodařilo se přidat jídlo: ${error}',
			'meal.savedSuccessfully' => 'Jídlo úspěšně přidáno!',
			'meal.updatedSuccessfully' => 'Jídlo úspěšně upraveno!',
			'meal.errorSaving' => ({required Object error}) => 'Chyba při ukládání jídla: ${error}',
			'meal.removedFromFavorites' => 'Odebráno z oblíbených!',
			'meal.savedAsFavorite' => 'Jídlo uloženo mezi oblíbené!',
			'meal.unfavorite' => 'Odebrat z oblíbených',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nepodařilo se aktualizovat oblíbené: ${error}',
			'meal.feedbackThanks' => 'Díky za zpětnou vazbu!',
			'meal.reanalysisUpdated' => 'Analýza jídla byla aktualizována podle vaší zpětné vazby.',
			'meal.failedToProcess' => ({required Object error}) => 'Zpracování selhalo: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Zpracování obrázku selhalo: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Chyba při kompresi obrázku: ${error}',
			'meal.failedToSave' => 'Nepodařilo se uložit data. Zkuste to prosím znovu.',
			'meal.skip' => 'Přeskočit',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Otázka ${current} z ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Žádné otázky nejsou k dispozici',
			'meal.questionFlow.next' => 'Další',
			'meal.questionFlow.continueLabel' => 'Pokračovat',
			'meal.analysis.title' => 'Analyzuji vaše jídlo',
			'meal.analysis.stepStarted' => 'Začínám…',
			'meal.analysis.stepDecomposition' => 'Porozumění jídlu…',
			'meal.analysis.stepIngredients' => 'Párování ingrediencí s nutričními daty…',
			'meal.analysis.stepUncertainty' => 'Kontroluji jistotu…',
			'meal.analysis.stepMealTypeQuestion' => 'Skoro hotovo…',
			'meal.analysis.stepResult' => 'Dokončuji výsledek…',
			'meal.analysis.stepError' => 'Něco se pokazilo',
			'meal.analysis.stepDefault' => 'Analyzuji vaše jídlo…',
			'meal.analysis.progressUnderstand' => 'Porozumění jídlu',
			'meal.analysis.progressMatch' => 'Vyhledávání nutričních údajů ingrediencí',
			'meal.analysis.progressCheck' => 'Kontrola porcí a jistoty',
			'meal.analysis.progressMealType' => 'Výběr typu jídla',
			'meal.analysis.progressFinish' => 'Výpočet kalorií a makroživin',
			'meal.analysis.detectedIngredientHeading' => 'Ingredience, které zaznamenáváme',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} dalších',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'Zjištěno ${count} ingrediencí',
			'meal.analysis.ingredientsPending' => 'Skenuji ingredience…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '„${text}“',
			'meal.analysis.offlineTip0' => 'Tip: Pravidelnost je důležitější než dokonalost — pravidelné záznamy odhalí podstatné vzorce.',
			'meal.analysis.offlineTip1' => 'Tip: Pro fotky pomáhá přirozené světlo a pohled shora pro přesnost porcí.',
			'meal.analysis.offlineTip2' => 'Tip: Uveďte nápoje, omáčky a olej používaný při vaření — přidávají kalorie, na které se často zapomíná.',
			'meal.analysis.offlineTip3' => 'Tip: Krátká poznámka o porci (1 miska, velká káva) výrazně zpřesní odhady.',
			'meal.analysis.offlineTip4' => 'Tip: Záznam po jídle stále buduje návyk; dokonalost není nutná.',
			'meal.analysis.offlineTip5' => 'Tip: Uveďte způsob přípravy, pokud zásadně mění kalorickou hodnotu (smažené vs pečené).',
			'meal.localInference.reviewTitle' => 'Zkontrolujte detekované ingredience',
			'meal.localInference.reviewSubtitle' => 'Tento text byl interpretován ve vašem zařízení. Před výpočtem výživových hodnot opravte názvy nebo porce.',
			'meal.localInference.mealName' => 'Název jídla',
			'meal.localInference.ingredient' => 'Ingredience',
			'meal.localInference.grams' => 'Odhadované gramy',
			'meal.localInference.removeIngredient' => 'Odebrat ingredienci',
			'meal.localInference.continueLabel' => 'Pokračovat',
			'meal.localInference.invalidProposal' => 'Přidejte alespoň jednu ingredienci a zadejte kladný počet gramů.',
			'meal.localInference.localUnavailable' => 'Analýza v zařízení momentálně není k dispozici.',
			'meal.localInference.calculationDetails' => 'Jak bylo vypočítáno',
			'meal.localInference.interpretationLocal' => 'Ingredience interpretované v tomto zařízení',
			'meal.localInference.interpretationCloud' => 'Ingredience interpretované v cloudu',
			'meal.localInference.interpretationManual' => 'Ingredience zkontrolované nebo upravené vámi',
			'meal.localInference.nutritionRemote' => 'Výživové hodnoty staženy z USDA prostřednictvím Calorify',
			'meal.localInference.nutritionFallback' => 'Některé výživové hodnoty byly odhadnuty vzdáleně',
			'meal.localInference.calculationServer' => 'Kalorie a makroživiny vypočítány aplikací Calorify',
			'meal.localInference.fallbackUsed' => 'Lokální analýza byla nahrazena zpracováním v cloudu',
			'meal.localInference.noRawContent' => 'Diagnostické účtenky neobsahují text ani fotografii vašeho jídla.',
			'meal.feedback.title' => 'Co vypadá špatně?',
			'meal.feedback.subtitle' => 'Označte jednu nebo více chyb a pomozte nám zlepšit analýzu.',
			'meal.feedback.tellUsMore' => 'Řekněte více',
			'meal.feedback.describeIncorrect' => 'Popište, co bylo nepřesné',
			'meal.feedback.submit' => 'Odeslat',
			'meal.feedback.issueFoodIdentification' => 'Identifikace jídla',
			'meal.feedback.issuePortionSize' => 'Velikost porce',
			'meal.feedback.issueCalorieDistribution' => 'Rozložení kalorií',
			'meal.feedback.issueMacrosWrong' => 'Makroživiny jsou špatně',
			'meal.feedback.issueMissingItems' => 'Chybějící položky',
			'meal.feedback.issueExtraItems' => 'Nadbytečné položky',
			'meal.feedback.issueOther' => 'Jiné',
			'favorites.title' => 'Oblíbené',
			'favorites.empty' => 'Zatím žádná oblíbená jídla.',
			'favorites.searchPlaceholder' => 'Hledat oblíbená jídla',
			'favorites.searchEmptyTitle' => 'Žádné oblíbené neodpovídají hledání',
			'favorites.searchEmptySubtitle' => 'Zkuste jiný název jídla, množství nebo typ jídla.',
			'favorites.sortLabel' => 'Seřadit oblíbené',
			'favorites.undo' => 'Vrátit',
			'favorites.removed' => ({required Object name}) => 'Odebráno ${name} z oblíbených',
			'favorites.sortOptions.recent' => 'Nedávné',
			'favorites.sortOptions.calories' => 'Kalorie',
			'favorites.sortOptions.alphabetical' => 'A–Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Nenalezena data profilu',
			'profile.yourProfile' => 'Váš profil',
			'profile.viewAndManage' => 'Prohlížet a spravovat své zdravotní informace',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'ZÁKLADNÍ INFORMACE',
			'profile.sections.goalsAndActivity' => 'CÍLE & AKTIVITA',
			'profile.sections.calculatedValues' => 'VYPOČÍTANÉ HODNOTY',
			'profile.gender' => 'Pohlaví',
			'profile.height' => 'Výška',
			'profile.weight' => 'Hmotnost',
			'profile.age' => 'Věk',
			'profile.weightGoal' => 'Cíl hmotnosti',
			'profile.targetWeight' => 'Cílová hmotnost',
			'profile.activityLevel' => 'Úroveň aktivity',
			'profile.healthMetrics' => 'Zdravotní ukazatele',
			'profile.notSet' => 'Nenastaveno',
			'profile.years' => 'let',
			'profile.updatedSuccessfully' => 'Profil byl úspěšně aktualizován!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Denní cíl',
			'profile.calculatedValues.calPerDay' => 'cal/den',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Hodnocení zdraví',
			'healthScore.whyThisScore' => 'Proč takové hodnocení?',
			'healthScore.note' => 'Toto hodnocení je odhad AI založený na identifikovaných ingrediencích a nutriční hustotě. Pro dietní doporučení se vždy poraďte s odborníkem.',
			'healthScore.unhealthy' => 'Nezdravé',
			'healthScore.healthy' => 'Zdravé',
			'healthScore.neutral' => 'Neutrální',
			'editProfile.title' => 'Upravit profil',
			'editProfile.sections.personalInformation' => 'OSOBNÍ INFORMACE',
			'editProfile.sections.physicalMeasurements' => 'TĚLESNÉ ROZMĚRY',
			'editProfile.sections.goalsAndActivity' => 'CÍLE & AKTIVITA',
			'editProfile.gender' => 'Pohlaví',
			'editProfile.dateOfBirth' => 'Datum narození',
			'editProfile.height' => 'Výška',
			'editProfile.weight' => 'Hmotnost',
			'editProfile.weightGoal' => 'Cíl hmotnosti',
			'editProfile.activityLevel' => 'Úroveň aktivity',
			'editProfile.metric' => 'Metrické',
			'editProfile.imperial' => 'Imperiální',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'libry (lb)',
			'editProfile.metricCm' => 'Metrické (cm)',
			'editProfile.imperialFtIn' => 'Imperiální (ft/in)',
			'editProfile.metricKg' => 'Metrické (kg)',
			'editProfile.imperialLbs' => 'Imperiální (lbs)',
			'editProfile.genders.male' => 'Muž',
			'editProfile.genders.female' => 'Žena',
			'editProfile.genders.other' => 'Jiné',
			'editProfile.weightGoals.loseWeight.name' => 'Zhubnout',
			'editProfile.weightGoals.loseWeight.description' => 'Vytvořit kalorický deficit pro hubnutí',
			'editProfile.weightGoals.maintainWeight.name' => 'Udržet váhu',
			'editProfile.weightGoals.maintainWeight.description' => 'Udržovat současnou hmotnost',
			'editProfile.weightGoals.gainWeight.name' => 'Přibrat',
			'editProfile.weightGoals.gainWeight.description' => 'Vytvořit kalorický přebytek pro přibrání',
			'editProfile.activityLevels.sedentary.name' => 'Sedentární',
			'editProfile.activityLevels.sedentary.description' => 'Málo nebo žádné cvičení',
			'editProfile.activityLevels.lightlyActive.name' => 'Lehce aktivní',
			'editProfile.activityLevels.lightlyActive.description' => 'Lehké cvičení 1–3× týdně',
			'editProfile.activityLevels.moderatelyActive.name' => 'Středně aktivní',
			'editProfile.activityLevels.moderatelyActive.description' => 'Středně intenzivní cvičení 3–5× týdně',
			'editProfile.activityLevels.veryActive.name' => 'Velmi aktivní',
			'editProfile.activityLevels.veryActive.description' => 'Intenzivní cvičení 6–7× týdně',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrémně aktivní',
			'editProfile.activityLevels.extremelyActive.description' => 'Velmi náročné cvičení nebo fyzická práce',
			'settings.title' => 'Nastavení',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALIZACE',
			'settings.sections.notifications' => 'UPOZORNĚNÍ',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.localInference' => 'ANALÝZA V ZAŘÍZENÍ',
			'settings.sections.supportAndLegal' => 'PODPORA & PRÁVNÍ',
			'settings.sections.about' => 'O APLIKACI',
			'settings.sections.dangerZone' => 'RIZIKOVÁ ZÓNA',
			'settings.sections.developer' => 'VÝVOJÁŘ',
			'settings.editProfile.title' => 'Upravit profil',
			'settings.editProfile.subtitle' => 'Aktualizujte své osobní informace',
			'settings.language.title' => 'Jazyk',
			'settings.language.subtitle' => 'Vyberte preferovaný jazyk',
			'settings.language.searchHint' => 'Hledat jazyky...',
			'settings.language.noResults' => 'Nebyly nalezeny výsledky',
			'settings.heightUnit.title' => 'Jednotka výšky',
			'settings.weightUnit.title' => 'Jednotka hmotnosti',
			'settings.mealReminders.title' => 'Připomenutí jídel',
			'settings.mealReminders.subtitle' => 'Zůstaňte na cestě díky včasným upozorněním',
			'settings.localInference.title' => 'Analýza jídla v zařízení',
			'settings.localInference.subtitle' => 'Interpretujte podporovaná jídla pomocí Gemini Nano před výpočtem výživových hodnot',
			'settings.localInference.unavailable' => 'V tomto zařízení není k dispozici',
			'settings.localInference.rolloutUnavailable' => 'Podporovaný hardware byl nalezen, ale tato funkce není pro tuto verzi aplikace aktivní',
			'settings.localInference.modelSetup' => 'Před aktivací musí Gemini Nano dokončit stahování',
			'settings.localInference.useLocalTitle' => 'Používat analýzu v zařízení',
			'settings.localInference.useLocalSubtitle' => 'Volitelné, ve výchozím nastavení vypnuto. Výsledky mohou být u složitých jídel méně spolehlivé.',
			'settings.localInference.disclosureTitle' => 'Než zapnete analýzu v zařízení',
			'settings.localInference.disclosureBody' => 'Gemini Nano dokáže identifikovat ingredience a odhadnout porce na podporovaných zařízeních Android. Váš zkontrolovaný návrh ingrediencí je odeslán do Calorify za účelem ověření výživových hodnot USDA a výpočtu.',
			'settings.localInference.disclosureLimit1' => 'Složitá jídla, skryté ingredience a velikosti porcí mohou být identifikovány nesprávně.',
			'settings.localInference.disclosureLimit2' => 'Model nemusí být k dispozici během stahování, při vysokém zatížení, v pozadí nebo z důvodu omezení zařízení.',
			'settings.localInference.disclosureLimit3' => 'Pokud lokální interpretace nedokončí, tato beta verze automaticky odešle původní popis jídla do Calorify za účelem analýzy v cloudu.',
			'settings.localInference.acknowledgement' => 'Rozumím tomu, že mám zkontrolovat detekované ingredience a porce.',
			'settings.localInference.enable' => 'Potvrdit a zapnout',
			'settings.localInference.cancel' => 'Zrušit',
			'settings.theme.title' => 'Téma',
			'settings.theme.light' => 'Světlé',
			'settings.theme.dark' => 'Tmavé',
			'settings.theme.system' => 'Systémové',
			'settings.sendFeedback.title' => 'Poslat zpětnou vazbu',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Pomozte nám vylepšit ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} - zpětná vazba k aplikaci',
			'settings.sendFeedback.emailBodyPrefix' => 'Napište prosím svou zpětnou vazbu níže:',
			'settings.sendFeedback.appVersion' => 'Verze aplikace',
			'settings.sendFeedback.device' => 'Zařízení',
			'settings.sendFeedback.osVersion' => 'Verze OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Export historie jídel',
			'settings.exportMealHistory.subtitle' => 'Sdílejte CSV se zaznamenanými jídly',
			'settings.exportMealHistory.shareText' => 'Export historie jídel Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Nepodařilo se exportovat historii jídel: ${error}',
			'settings.clearAllData.title' => 'Vymazat všechna data',
			'settings.clearAllData.subtitle' => 'Trvale smazat všechny vaše informace',
			'settings.clearAllData.localOnlySubtitle' => 'Smazat data Calorify uložená v tomto zařízení',
			'settings.clearAllData.confirmationTitle' => 'Vymazat všechna data?',
			'settings.clearAllData.confirmationMessage' => 'Tuto akci nelze vrátit zpět. Všechna vaše zaznamenaná jídla, oblíbené položky a nastavení profilu budou trvale smazány.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Tímto trvale smažete zaznamenaná jídla, oblíbené položky a nastavení profilu z tohoto zařízení. Jídla již sdílená s Health Connect a přístup k Health Connect se spravují samostatně v Nastavení > Health Connect.',
			'settings.clearAllData.cancel' => 'Zrušit',
			'settings.clearAllData.clearEverything' => 'Vymazat vše',
			'settings.debugOptions.title' => 'Možnosti ladění',
			'settings.developerModeEnabled' => 'Režim vývojáře povolen!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Prohlížet a spravovat oprávnění',
			'settings.healthConnect.unavailable.title' => 'Health Connect není k dispozici',
			'settings.healthConnect.unavailable.description' => 'Health Connect není na tomto zařízení dostupný. Nainstalujte prosím Health Connect z Play Store (Android 9+) nebo aktualizujte na Android 14+.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect není na tomto zařízení podporován.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect vyžaduje pozornost',
			'settings.healthConnect.updateRequired.description' => 'Před správou přístupu nainstalujte nebo aktualizujte Health Connect.',
			'settings.healthConnect.updateRequired.action' => 'Nainstalovat nebo aktualizovat',
			'settings.healthConnect.permissions.title' => 'Oprávnění',
			'settings.healthConnect.permissions.description' => 'Následující oprávnění jsou požadována pro integraci s Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Povoleno',
			'settings.healthConnect.permissions.notGranted' => 'Nepovoleno',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Číst celkový počet spálených kalorií',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Umožňuje aplikaci číst celkové spálené kalorie z Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Toto oprávnění se používá k zobrazení denního výdeje kalorií v aplikaci, což pomáhá pochopit váš celkový energetický výdej během dne.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Číst nutriční údaje',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Umožňuje aplikaci číst nutriční data z Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Toto oprávnění umožňuje aplikaci číst nutriční informace, které mohly být zaznamenány jinými aplikacemi připojenými k Health Connect, a poskytuje komplexní pohled na vaši výživu.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Zapisovat nutriční údaje',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Umožňuje aplikaci zapisovat nutriční data do Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Toto oprávnění umožňuje aplikaci synchronizovat vaše zaznamenaná jídla s Health Connect, takže vaše nutriční data budou dostupná dalším zdravotním a fitness aplikacím, které používáte.',
			'settings.healthConnect.managePermissions' => 'Spravovat oprávnění',
			'settings.healthConnect.openSettings' => 'Otevřít nastavení Health Connect',
			'settings.healthConnect.disconnect' => 'Odpojit Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Odpojit Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify ztratí přístup k Health Connect. Data, která již byla zapsána, nebudou smazána.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Odpojit',
			'settings.healthConnect.deleteSyncedMeals' => 'Smazat jídla Calorify z Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Smazat synchronizovaná jídla?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Smazat z Health Connect jídla synchronizovaná touto verzí Calorify? Místní záznam jídel se nezmění. Starší záznamy Calorify může být stále nutné odstranit pomocí možnosti Spravovat data v Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Smazat synchronizovaná jídla',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Jídla Calorify byla z Health Connect smazána.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Synchronizovaná jídla se nepodařilo smazat. Zkuste to znovu.',
			'settings.healthConnect.connectionPartial' => 'Některé funkce Health Connect jsou povoleny.',
			'settings.healthConnect.connectionComplete' => 'Obě funkce Health Connect jsou povoleny.',
			'settings.healthConnect.actionFailed' => 'Health Connect se nepodařilo otevřít. Zkuste to znovu.',
			'settings.healthConnect.requestPermissions' => 'Požádat o oprávnění',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Požadavek na oprávnění byl zrušen nebo selhal. Zkuste to prosím znovu nebo udělte oprávnění ručně v nastavení Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Nelze požádat o oprávnění. Zkuste to prosím znovu nebo udělte oprávnění ručně v nastavení Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Žádám o oprávnění...',
			'settings.about.title' => 'O aplikaci',
			'settings.about.tagline' => 'Rychlé, bezplatné a soukromí na prvním místě — povědomí o kaloriích',
			'settings.about.ourStory.title' => 'Náš příběh',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} vznikl z jednoduché frustrace: většina aplikací pro sledování kalorií je buď příliš složitá, vyžaduje neustálé ruční zadávání, účtuje vysoké předplatné nebo kompromituje soukromí.\n\nJako samostatný vývojář jsem chtěl vytvořit něco jednoduššího a spravedlivějšího — aplikaci, která využívá AI ke zmenšení námahy, zůstává rychlá a zdarma a zachází s vašimi zdravotními daty s respektem.\n\n${appLabel} je aplikace, kterou bych si přál, aby existovala: žádné účty, žádné sledování, žádné reklamy — jen jasné, praktické postřehy a vaše zdravotní cíle.',
			'settings.about.privacy.title' => 'Vaše soukromí je důležité',
			'settings.about.privacy.description' => 'Soukromí není dodatek — je to princip návrhu. Co to v praxi znamená:',
			'settings.about.privacy.noAccounts' => 'Není potřeba účet\nPoužijte aplikaci okamžitě. Žádné registrace, žádné identity.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Žádné sledování chování\n${appLabel} nesleduje vaši aktivitu, netvoří uživatelské profily ani vás nesleduje napříč aplikacemi či weby.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Omezené analytické a diagnostické údaje\n${appLabel} používá základní události aplikace a diagnostiku pádů ke zvýšení spolehlivosti. Hodnoty zdravotních záznamů se nepoužívají k reklamě ani se neprodávají.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Bez reklam záměrně\n${appLabel} je navržen tak, aby fungoval bez reklam a monetizace založené na datech.',
			'settings.about.privacy.noDataSelling' => 'Žádný prodej dat\nVaše zdravotní údaje nejsou nikdy prodávány ani sdíleny s třetími stranami.',
			'settings.about.privacy.localStorage' => 'Primárně lokální úložiště\nVaše data zůstávají v zařízení.',
			'settings.about.privacy.privacyPolicy' => 'Zásady ochrany osobních údajů',
			'settings.about.developer.title' => 'Vytvořeno jedním vývojářem',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} je vytvořen a udržován jediným vývojářem, který se zaměřuje na klidný software pro zdraví, respektující soukromí.\n\nZpětnou vazbu čte osobně a pomáhá směrovat další vývoj aplikace.',
			'settings.about.developer.website' => 'Web',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Líbí se vám ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Vaše zpětná vazba pomáhá zlepšit ${appLabel} pro všechny.',
			'settings.about.feedback.rateApp' => 'Ohodnotit v Play Store',
			'settings.about.feedback.sendFeedback' => 'Poslat zpětnou vazbu',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify verze ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Sestavení ${buildNumber}',
			'reminders.title' => 'Zůstaňte na cestě díky připomenutím',
			'reminders.description' => 'Dostávejte jemná upozornění, abyste si zaznamenávali jídla a udrželi se v souladu se svými výživovými cíli',
			'reminders.notificationsEnabled' => 'Upozornění povolena',
			'reminders.notificationsDisabled' => 'Upozornění vypnuta',
			'reminders.enabledSubtitle' => 'Budete dostávat připomenutí jídel',
			'reminders.disabledSubtitle' => 'Povolte upozornění pro připomenutí jídel',
			'reminders.mealReminders' => 'Připomenutí jídel',
			'reminders.breakfast' => 'Snídaně',
			'reminders.lunch' => 'Oběd',
			'reminders.dinner' => 'Večeře',
			'reminders.snack' => 'Svačina',
			'reminders.unknown' => 'Neznámé',
			'reminders.change' => 'Změnit',
			'reminders.enableNotifications' => 'Povolit upozornění',
			'reminders.skipForNow' => 'Přeskočit nyní',
			'reminders.saveChanges' => 'Uložit změny',
			'reminders.enabledSuccessfully' => 'Upozornění úspěšně povolena!',
			'reminders.permissionDenied' => 'Oprávnění k upozorněním odepřeno',
			'reminders.errorEnabling' => ({required Object error}) => 'Chyba při povolování upozornění: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Chyba při dokončování nastavení: ${error}',
			'notifications.breakfast.title' => 'Čas na snídani! 🍳',
			'notifications.breakfast.body' => 'Nezapomeňte zaznamenat snídani',
			'notifications.lunch.title' => 'Čas na oběd! 🥗',
			'notifications.lunch.body' => 'Je čas zaznamenat oběd',
			'notifications.dinner.title' => 'Čas na večeři! 🍽️',
			'notifications.dinner.body' => 'Nezapomeňte zaznamenat večeři',
			'notifications.snack.title' => 'Čas na svačinu! 🍎',
			'notifications.snack.body' => 'Čas na zdravou svačinu',
			'notifications.test.title' => 'Testovací upozornění',
			'login.title' => 'Přihlášení',
			_ => null,
		} ?? switch (path) {
			'login.signInWithGoogle' => 'Přihlásit se přes Google',
			'login.signInFailed' => 'Přihlášení přes Google selhalo nebo bylo zrušeno.',
			'disclaimer.pleaseNote' => 'Vezměte prosím na vědomí',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} poskytuje odhadnuté nutriční informace. Přesnost závisí na vašem zadání a na variacích potravin. Používejte je jako orientaci, nikoli jako definitivní zdroj. Pro osobní dietní poradenství se poraďte s odborníkem.',
			'disclaimer.snap.portionSize.title' => 'Velikost porce',
			'disclaimer.snap.portionSize.description' => 'Přesnost odhadů silně závisí na správném odhadu velikosti porce.',
			'disclaimer.snap.preparationMethods.title' => 'Způsoby přípravy',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Způsoby vaření mohou výrazně měnit nutriční hodnotu jídla. Odhady ${appLabel} nemusí tyto rozdíly vždy zohlednit.',
			'disclaimer.snap.ingredients.title' => 'Ingredience',
			'disclaimer.snap.ingredients.description' => 'Složité pokrmy s mnoha skrytými ingrediencemi mohou vést k méně přesným odhadům.',
			'disclaimer.snap.databaseLimitations.title' => 'Omezení databáze',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Databáze potravin v ${appLabel} je rozsáhlá, ale nemusí obsahovat každou potravinu nebo variantu.',
			'disclaimer.weightEstimate.title' => 'Odhad váhové změny',
			'disclaimer.weightEstimate.description' => 'Projekce změny hmotnosti je teoretický odhad založený na jednoduchém modelu kalorický příjem vs. výdej. Slouží pouze jako motivační vodítko, nikoli jako předpověď vaší skutečné váhy.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Přesnost odhadů kalorií',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Tento odhad je přesný jen tolik, kolik jsou přesné vaše záznamy o příjmu a výdeji kalorií. Nepřesné záznamy povedou k nepřesné projekci.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologické faktory',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Skutečný úbytek nebo nárůst hmotnosti ovlivňují metabolismus, hormony, spánek, stres, hydratace a další individuální faktory, které ${appLabel} neměří.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Voda v těle a výkyvy',
			'disclaimer.weightEstimate.waterWeight.description' => 'Běžná denní hmotnost se může výrazně lišit kvůli zadržování vody, trávení a načasování. Odhad tyto denní výkyvy nezohledňuje.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Odborné poradenství',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Nepoužívejte tento odhad k lékařským rozhodnutím. Vždy se poraďte se zdravotnickým odborníkem nebo registrovaným dietologem pro personalizovanou péči.',
			'disclaimer.healthMetrics.description' => 'Tyto metriky vám pomáhají porozumět energetickým potřebám těla a vést vaše výživové cíle.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Bazální metabolický výdej (BMR) je počet kalorií, které vaše tělo spálí v klidu pro udržení základních funkcí, jako je dýchání a krevní oběh. BMR závisí na věku, pohlaví, výšce a hmotnosti. Vyšší BMR obvykle znamená, že tělo spaluje více kalorií v klidu, často kvůli vyššímu podílu svalové hmoty, nižšímu věku nebo tomu, že jde o muže. Nižší BMR obvykle naznačuje méně svalové hmoty, vyšší věk nebo že jde o ženu.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Celkový denní energetický výdej (TDEE) je celkový počet kalorií, které spálíte za den, včetně BMR a kalorií spálených při fyzické aktivitě a běžném pohybu. TDEE závisí na vašem BMR a úrovni aktivity. Vyšší TDEE znamená, že celkově spálíte více kalorií, obvykle díky větší aktivitě nebo vyššímu BMR. Nižší TDEE naznačuje méně denní aktivity nebo nižší BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Denní cíl',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Denní cíl je doporučený denní příjem kalorií založený na vašem TDEE a cíli hmotnosti. Při hubnutí konzumujete méně kalorií než váš TDEE. Pro udržení váhy se příjem vyrovná TDEE. Při nabírání váhy konzumujete více kalorií než TDEE. Pomáhá to dosáhnout požadované změny váhy zdravým tempem.',
			'disclaimer.calorieExpenditure.title' => 'Odhad spálených kalorií',
			'disclaimer.calorieExpenditure.description' => 'Pokud nejsou dostupná data z Health Connect, odhadujeme dnešní spálené kalorie na základě vašeho BMR a úrovně aktivity (TDEE), škálované podle části dne, která již uplynula.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Jak je odhad vypočítán',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Vypočítáme váš TDEE (na základě profilu) a vynásobíme ho zlomkem uběhlého dne (hodiny + minuty) / 24, abychom odhadli dosud spálené kalorie.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Odborné poradenství',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Nepoužívejte tento odhad pro lékařská rozhodnutí. Vždy se poraďte se zdravotnickým odborníkem nebo registrovaným dietologem pro personalizovanou péči.',
			'localNutritionPhase4.nutritionBundled' => 'Výživové údaje nalezeny ve staženém balíčku USDA',
			'localNutritionPhase4.nutritionCached' => 'Výživové údaje nalezeny v mezipaměti USDA v zařízení',
			'localNutritionPhase4.nutritionMixed' => 'Výživové údaje sloučeny ze stažených, uložených a vzdálených řádků USDA',
			'localNutritionPhase4.calculationLocal' => 'Kalorie a makroživiny vypočítány v tomto zařízení',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: stažený balíček USDA',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: mezipaměť USDA v zařízení',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: řádek USDA načtený přes Calorify',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: deterministická nutriční konstanta',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · datová sada ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Menší',
			'localNutritionPhase4.portionEstimated' => 'Odhadovaná',
			'localNutritionPhase4.portionLarger' => 'Větší',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Která porce nejlépe odpovídala položce ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'O které jídlo šlo?',
			'localNutritionPhase4.localNutritionTip' => 'Vypočítáno z ověřených místních výživových dat.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Stáhnout výživová data',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Pokud jsou pokryty všechny ingredience, použijí se v tomto zařízení ověřené řádky USDA a deterministický výpočet.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Místní výživová data nejsou pro tuto verzi aplikace dostupná.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Není stažen žádný ověřený balíček výživových dat.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Stahování a ověřování výživových dat…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Balíček ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} řádků USDA v mezipaměti · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Zkontrolovat aktualizaci',
			'localNutritionPhase4.offlineNutritionClear' => 'Vymazat místní výživová data',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Vymazat místní výživová data?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Tímto se odstraní stažený balíček USDA a vyhledávací mezipaměť. Uložená jídla si zachovají přesný snímek výživových hodnot použitý při uložení.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Vymazat data',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Výživová data se nepodařilo stáhnout a ověřit: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Místní výživová data byla vymazána',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Zpět',
			'watch.common.cancel' => 'Zrušit',
			'watch.common.delete' => 'Smazat',
			'watch.common.retry' => 'Zkusit znovu',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Živina',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} gramů',
			'watch.nutrition.protein' => 'Bílkoviny',
			'watch.nutrition.carbs' => 'Sacharidy',
			'watch.nutrition.fat' => 'Tuky',
			'watch.nutrition.fiber' => 'Vláknina',
			'watch.sync.syncWithPhone' => 'Synchronizovat s telefonem',
			'watch.sync.syncing' => 'Synchronizuji…',
			'watch.sync.synced' => 'Synchronizováno',
			'watch.sync.syncedJustNow' => 'Právě synchronizováno',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Synchronizováno před ${minutes} min',
			'watch.sync.failed' => 'Synchronizace selhala',
			'watch.sync.phoneDisconnected' => 'Telefon odpojen',
			'watch.sync.tapToSync' => 'Klepněte pro synchronizaci',
			'watch.sync.refreshFailed' => 'Nepodařilo se obnovit. Zkontrolujte telefon.',
			'watch.sync.openPhone' => 'Otevřete Calorify v telefonu a potom klepněte na obnovit.',
			'watch.home.today' => 'Dnes',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} kalorií z ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} nad cílem',
			'watch.home.remaining' => ({required Object calories}) => '${calories} zbývá',
			'watch.home.left' => ({required Object calories}) => '${calories} zbývá',
			'watch.home.goal' => ({required Object calories}) => 'Cíl: ${calories} kcal',
			'watch.home.logMeal' => 'Zadat jídlo',
			'watch.home.todayMeals' => 'Dnešní jídla',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Dnešní jídla, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Zobrazit ${count} dalších',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} dalších jídel, klepněte pro zobrazení všech',
			'watch.home.noMeals' => 'Žádná jídla nezaznamenána',
			'watch.home.noMealsSemantics' => 'Dnes žádná jídla nezaznamenána',
			'watch.home.tapLog' => 'Klepněte na Zadat pro začátek',
			'watch.home.removedFromQueue' => 'Jídlo odstraněno z offline fronty.',
			'watch.home.removedOffline' => 'Jídlo odstraněno offline. Synchronizuje se, až se telefon znovu připojí.',
			'watch.home.deleteFailed' => 'Nepodařilo se smazat jídlo',
			'watch.history.title' => 'Dnešní jídla',
			'watch.history.refresh' => 'Obnovit jídla',
			'watch.history.loadFailed' => 'Nepodařilo se načíst jídla',
			'watch.history.syncFailed' => 'Nepodařilo se synchronizovat',
			'watch.history.emptyTitle' => 'Žádná jídla zatím',
			'watch.history.emptyMessage' => 'Zadejte jídlo na hlavní obrazovce a bude zde zobrazeno.',
			'watch.favorites.title' => 'Oblíbené',
			'watch.favorites.refresh' => 'Obnovit oblíbené',
			'watch.favorites.loadFailed' => 'Nepodařilo se načíst oblíbené',
			'watch.favorites.syncFailed' => 'Nepodařilo se synchronizovat',
			'watch.favorites.emptyTitle' => 'Žádné oblíbené zatím',
			'watch.favorites.emptyMessage' => 'Označte jídla hvězdičkou v aplikaci v telefonu, aby zde šla zadat jedním klepnutím.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} kalorií. Klepněte pro zadání.',
			'watch.favorites.logged' => ({required Object name}) => '${name} zadáno!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} uloženo offline. Synchronizuje se, až se telefon znovu připojí.',
			'watch.favorites.saveFailed' => 'Nepodařilo se uložit jídlo. Zkuste to prosím znovu.',
			'watch.favorites.log' => 'Zadat',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kalorií, zaznamenáno v ${time}.',
			'watch.meal.longPressDelete' => 'Dlouze stiskněte pro smazání.',
			'watch.meal.deleteTitle' => 'Smazat jídlo?',
			'watch.voice.title' => 'Hlasové zadání jídla',
			'watch.voice.processing' => 'Zpracovávám vaše jídlo…',
			'watch.voice.processingDescription' => 'Odhad porcí a živin',
			'watch.voice.listening' => 'Naslouchám',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Zastavit nahrávání',
			'watch.voice.start' => 'Klepněte pro spuštění nahrávání',
			'watch.voice.starting' => 'Spouštím mikrofon…',
			'watch.voice.prompt' => 'Klepněte a pak popište jídlo',
			'watch.voice.tapToRetry' => 'Klepněte pro opakování',
			'watch.voice.example' => 'Zkuste „2 rotis s dal“',
			'watch.voice.unavailable' => 'Hlasový vstup není dostupný. Zkontrolujte oprávnění k mikrofonu v nastavení hodinek.',
			'watch.voice.didNotStart' => 'Mikrofon se nespustil. Klepněte pro opakování.',
			'watch.voice.startFailed' => 'Nepodařilo se spustit nahrávání. Zkontrolujte oprávnění mikrofonu.',
			'watch.voice.allowMicrophone' => 'Povolte přístup k mikrofonu pro zadávání jídel hlasem.',
			'watch.voice.needsConnection' => 'Rozpoznávání hlasu vyžaduje připojení. Klepněte pro opakování.',
			'watch.voice.microphoneUnavailable' => 'Mikrofon není k dispozici. Klepněte pro opakování.',
			'watch.voice.microphoneBusy' => 'Mikrofon je obsazen. Chvíli počkejte a zkuste to znovu.',
			'watch.voice.languageUnsupported' => 'Hlasový vstup nepodporuje jazyk hodinek.',
			'watch.voice.temporarilyBusy' => 'Hlasový vstup je dočasně vytížen. Chvíli počkejte a zkuste to znovu.',
			'watch.voice.notRecognized' => 'Nezachytilo se to. Klepněte na mikrofon a zkuste to znovu.',
			'watch.voice.noSpeech' => 'Nebyl zaznamenán žádný zvuk. Klepněte na mikrofon a zkuste to znovu.',
			'watch.voice.analysisFailed' => 'Analýza selhala. Zkuste to prosím znovu.',
			'watch.voice.mealNotIdentified' => 'Nepodařilo se identifikovat jídlo. Zkuste jej popsat jinak.',
			'watch.result.title' => 'Podrobnosti jídla',
			'watch.result.savedOffline' => 'Uloženo offline',
			'watch.result.logged' => 'Zaznamenáno!',
			'watch.result.mealFound' => 'Jídlo nalezeno',
			'watch.result.estimatedEnergy' => 'Odhadované kalorie',
			'watch.result.logMeal' => 'Zadat jídlo',
			'watch.result.logging' => 'Zaznamenávám…',
			'watch.result.logAnother' => 'Zadat další',
			'watch.result.goingBack' => 'Vrátit se…',
			'watch.result.savedOfflineMessage' => 'Jídlo uloženo offline. Synchronizuje se, až se telefon znovu připojí.',
			'watch.result.saveFailed' => 'Nepodařilo se uložit jídlo. Zkuste to prosím znovu.',
			'common.close' => 'Zavřít',
			'common.kContinue' => 'Pokračovat',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Líbí se vám ${appLabel}?',
			'feedbackRating.yes' => 'Ano, líbí se mi',
			'feedbackRating.no' => 'Ne tak moc',
			'feedbackRating.rateStepHeading' => 'Ohodnoťte v Play Store',
			'feedbackRating.emailStepHeading' => 'Poslat zpětnou vazbu e-mailem',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Krátké hodnocení pomůže ostatním najít ${appLabel} a podpoří další vývoj. Věnujete chvíli a ohodnotíte nás?',
			'feedbackRating.shareFeedbackViaEmail' => 'Vaše zpětná vazba formuje další kroky — čteme každou zprávu. Chcete sdílet své myšlenky e-mailem?',
			'feedbackRating.rateCta' => 'Ohodnotit v Play Store',
			'feedbackRating.maybeLater' => 'Možná později',
			'feedbackRating.sendFeedback' => 'Poslat zpětnou vazbu',
			'feedbackRating.noThanks' => 'Ne, díky',
			'feedbackRating.aboutUsDescription' => 'Vytvořeno s péčí malým týmem. Zaměřujeme se na soukromí, jednoduchost a pomoc s lepšími stravovacími návyky.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Zajímá vás, kdo stojí za ${appLabel}? Podívejte se ',
			'feedbackRating.aboutUsLinkLabel' => 'O nás',
			'feedbackRating.thankYouMessage' => 'Děkujeme! Zeptáme se vás znovu jindy.',
			'health.syncFailed' => 'Nelze synchronizovat s Health Connect',
			'health.mealSynced' => 'Jídlo synchronizováno s Health Connect',
			_ => null,
		};
	}
}
