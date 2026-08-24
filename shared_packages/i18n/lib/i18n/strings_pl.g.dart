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
class TranslationsPl extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsPl _root = this; // ignore: unused_field

	@override 
	TranslationsPl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPl(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Polski';
	@override String get flag => '🇵🇱';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$pl errors = _Translations$errors$pl._(_root);
	@override late final _Translations$onboarding$pl onboarding = _Translations$onboarding$pl._(_root);
	@override late final _Translations$tabs$pl tabs = _Translations$tabs$pl._(_root);
	@override late final _Translations$home$pl home = _Translations$home$pl._(_root);
	@override late final _Translations$history$pl history = _Translations$history$pl._(_root);
	@override late final _Translations$meal$pl meal = _Translations$meal$pl._(_root);
	@override late final _Translations$favorites$pl favorites = _Translations$favorites$pl._(_root);
	@override late final _Translations$profile$pl profile = _Translations$profile$pl._(_root);
	@override late final _Translations$healthScore$pl healthScore = _Translations$healthScore$pl._(_root);
	@override late final _Translations$editProfile$pl editProfile = _Translations$editProfile$pl._(_root);
	@override late final _Translations$settings$pl settings = _Translations$settings$pl._(_root);
	@override late final _Translations$reminders$pl reminders = _Translations$reminders$pl._(_root);
	@override late final _Translations$notifications$pl notifications = _Translations$notifications$pl._(_root);
	@override late final _Translations$login$pl login = _Translations$login$pl._(_root);
	@override late final _Translations$disclaimer$pl disclaimer = _Translations$disclaimer$pl._(_root);
	@override late final _Translations$localNutritionPhase4$pl localNutritionPhase4 = _Translations$localNutritionPhase4$pl._(_root);
	@override late final _Translations$watch$pl watch = _Translations$watch$pl._(_root);
	@override late final _Translations$common$pl common = _Translations$common$pl._(_root);
	@override late final _Translations$feedbackRating$pl feedbackRating = _Translations$feedbackRating$pl._(_root);
	@override late final _Translations$health$pl health = _Translations$health$pl._(_root);
}

// Path: errors
class _Translations$errors$pl extends Translations$errors$en {
	_Translations$errors$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Wykonałeś zbyt wiele żądań. Proszę odczekaj chwilę, zanim spróbujesz ponownie.';
	@override String get networkError => 'Błąd sieci. Sprawdź połączenie z internetem.';
	@override String get unknownError => 'Coś poszło nie tak. Spróbuj ponownie później.';
	@override String get loadingProfileData => 'Błąd podczas ładowania danych profilu';
	@override String get somethingWentWrong => 'Coś poszło nie tak.';
	@override String get retry => 'Ponów';
}

// Path: onboarding
class _Translations$onboarding$pl extends Translations$onboarding$en {
	_Translations$onboarding$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Witaj w ${appLabel}';
	@override String get subtitle => 'Twój osobisty towarzysz żywieniowy zasilany przez AI';
	@override String get getStarted => 'Zaczynamy';
	@override late final _Translations$onboarding$features$pl features = _Translations$onboarding$features$pl._(_root);
	@override late final _Translations$onboarding$gender$pl gender = _Translations$onboarding$gender$pl._(_root);
	@override late final _Translations$onboarding$height$pl height = _Translations$onboarding$height$pl._(_root);
	@override late final _Translations$onboarding$weight$pl weight = _Translations$onboarding$weight$pl._(_root);
	@override late final _Translations$onboarding$age$pl age = _Translations$onboarding$age$pl._(_root);
	@override late final _Translations$onboarding$bmiScale$pl bmiScale = _Translations$onboarding$bmiScale$pl._(_root);
	@override late final _Translations$onboarding$weightGoal$pl weightGoal = _Translations$onboarding$weightGoal$pl._(_root);
	@override late final _Translations$onboarding$activityLevel$pl activityLevel = _Translations$onboarding$activityLevel$pl._(_root);
	@override late final _Translations$onboarding$healthConnect$pl healthConnect = _Translations$onboarding$healthConnect$pl._(_root);
	@override late final _Translations$onboarding$reinforcement$pl reinforcement = _Translations$onboarding$reinforcement$pl._(_root);
}

// Path: tabs
class _Translations$tabs$pl extends Translations$tabs$en {
	_Translations$tabs$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Panel';
	@override String get history => 'Historia';
}

// Path: home
class _Translations$home$pl extends Translations$home$en {
	_Translations$home$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$pl aiSummary = _Translations$home$aiSummary$pl._(_root);
	@override late final _Translations$home$dailyGoal$pl dailyGoal = _Translations$home$dailyGoal$pl._(_root);
	@override late final _Translations$home$dailySummary$pl dailySummary = _Translations$home$dailySummary$pl._(_root);
	@override late final _Translations$home$intakeProgress$pl intakeProgress = _Translations$home$intakeProgress$pl._(_root);
	@override late final _Translations$home$intakeHistory$pl intakeHistory = _Translations$home$intakeHistory$pl._(_root);
	@override late final _Translations$home$mealLog$pl mealLog = _Translations$home$mealLog$pl._(_root);
	@override late final _Translations$home$mealDescription$pl mealDescription = _Translations$home$mealDescription$pl._(_root);
	@override late final _Translations$home$favoriteMeals$pl favoriteMeals = _Translations$home$favoriteMeals$pl._(_root);
	@override late final _Translations$home$mealSnap$pl mealSnap = _Translations$home$mealSnap$pl._(_root);
	@override late final _Translations$home$connectHealth$pl connectHealth = _Translations$home$connectHealth$pl._(_root);
}

// Path: history
class _Translations$history$pl extends Translations$history$en {
	_Translations$history$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Brak zarejestrowanych posiłków';
	@override String get emptyMessage => 'Zrób zdjęcie ostatniego posiłku, aby zapisać je tutaj.';
	@override String get today => 'Dziś';
	@override String get yesterday => 'Wczoraj';
}

// Path: meal
class _Translations$meal$pl extends Translations$meal$en {
	_Translations$meal$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'O nie!';
	@override String get delete => 'Usuń';
	@override String get editMeal => 'Edytuj posiłek';
	@override String get addMeal => 'Dodaj posiłek';
	@override String get saveMeal => 'Zapisz posiłek';
	@override String get save => 'Zapisz';
	@override String get mealName => 'Nazwa posiłku';
	@override String get mealNameHint => 'np. Jajecznica z tostami';
	@override String get nameRequired => 'Podaj nazwę posiłku przed zapisaniem.';
	@override String get mealQuantity => 'Ilość posiłku';
	@override String get mealQuantityHint => 'np. 1 miska, 2 kromki';
	@override String get timeOfMeal => 'Czas posiłku';
	@override String get timeOfMealHint => 'Wybierz godzinę, kiedy spożyłeś posiłek';
	@override String get mealType => 'Rodzaj posiłku';
	@override late final _Translations$meal$nutrition$pl nutrition = _Translations$meal$nutrition$pl._(_root);
	@override late final _Translations$meal$deleteConfirmation$pl deleteConfirmation = _Translations$meal$deleteConfirmation$pl._(_root);
	@override String get addedToLog => 'Posiłek dodany do dziennika!';
	@override String couldNotAdd({required Object error}) => 'Nie można dodać posiłku: ${error}';
	@override String get savedSuccessfully => 'Posiłek dodany pomyślnie!';
	@override String get updatedSuccessfully => 'Posiłek zaktualizowany pomyślnie!';
	@override String errorSaving({required Object error}) => 'Błąd podczas zapisywania posiłku: ${error}';
	@override String get removedFromFavorites => 'Usunięto z ulubionych!';
	@override String get savedAsFavorite => 'Posiłek zapisany jako ulubiony!';
	@override String get unfavorite => 'Usuń z ulubionych';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nie można zaktualizować ulubionych: ${error}';
	@override String get feedbackThanks => 'Dziękujemy za opinię!';
	@override String get reanalysisUpdated => 'Zaktualizowano analizę posiłku na podstawie Twojej opinii.';
	@override String failedToProcess({required Object error}) => 'Nie udało się przetworzyć: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Nie udało się przetworzyć obrazu: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Błąd kompresji obrazu: ${error}';
	@override String get failedToSave => 'Nie udało się zapisać danych. Spróbuj ponownie.';
	@override String get skip => 'Pomiń';
	@override late final _Translations$meal$questionFlow$pl questionFlow = _Translations$meal$questionFlow$pl._(_root);
	@override late final _Translations$meal$analysis$pl analysis = _Translations$meal$analysis$pl._(_root);
	@override late final _Translations$meal$localInference$pl localInference = _Translations$meal$localInference$pl._(_root);
	@override late final _Translations$meal$feedback$pl feedback = _Translations$meal$feedback$pl._(_root);
}

// Path: favorites
class _Translations$favorites$pl extends Translations$favorites$en {
	_Translations$favorites$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ulubione';
	@override String get empty => 'Brak ulubionych posiłków.';
	@override String get searchPlaceholder => 'Szukaj ulubionych posiłków';
	@override String get searchEmptyTitle => 'Żadne ulubione nie pasują do wyszukiwania';
	@override String get searchEmptySubtitle => 'Spróbuj innej nazwy posiłku, ilości lub rodzaju posiłku.';
	@override String get sortLabel => 'Sortuj ulubione';
	@override String get undo => 'Cofnij';
	@override String removed({required Object name}) => 'Usunięto ${name} z ulubionych';
	@override late final _Translations$favorites$sortOptions$pl sortOptions = _Translations$favorites$sortOptions$pl._(_root);
}

// Path: profile
class _Translations$profile$pl extends Translations$profile$en {
	_Translations$profile$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Brak danych profilu';
	@override String get yourProfile => 'Twój profil';
	@override String get viewAndManage => 'Przeglądaj i zarządzaj informacjami o zdrowiu';
	@override late final _Translations$profile$sections$pl sections = _Translations$profile$sections$pl._(_root);
	@override String get gender => 'Płeć';
	@override String get height => 'Wzrost';
	@override String get weight => 'Waga';
	@override String get age => 'Wiek';
	@override String get weightGoal => 'Cel wagowy';
	@override String get targetWeight => 'Waga docelowa';
	@override String get activityLevel => 'Poziom aktywności';
	@override String get healthMetrics => 'Metryki zdrowotne';
	@override String get notSet => 'Nie ustawiono';
	@override String get years => 'lat';
	@override String get updatedSuccessfully => 'Profil zaktualizowany pomyślnie!';
	@override late final _Translations$profile$calculatedValues$pl calculatedValues = _Translations$profile$calculatedValues$pl._(_root);
}

// Path: healthScore
class _Translations$healthScore$pl extends Translations$healthScore$en {
	_Translations$healthScore$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wskaźnik zdrowia';
	@override String get whyThisScore => 'Dlaczego taki wynik?';
	@override String get note => 'Wynik jest oszacowaniem AI opartym na rozpoznanych składnikach i gęstości odżywczej. Zawsze konsultuj się ze specjalistą w sprawach diety.';
	@override String get unhealthy => 'Niezdrowy';
	@override String get healthy => 'Zdrowy';
	@override String get neutral => 'Neutralny';
}

// Path: editProfile
class _Translations$editProfile$pl extends Translations$editProfile$en {
	_Translations$editProfile$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edytuj profil';
	@override late final _Translations$editProfile$sections$pl sections = _Translations$editProfile$sections$pl._(_root);
	@override String get gender => 'Płeć';
	@override String get dateOfBirth => 'Data urodzenia';
	@override String get height => 'Wzrost';
	@override String get weight => 'Waga';
	@override String get weightGoal => 'Cel wagowy';
	@override String get activityLevel => 'Poziom aktywności';
	@override String get metric => 'Metryczne';
	@override String get imperial => 'Imperialne';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'funty (lb)';
	@override String get metricCm => 'Metryczne (cm)';
	@override String get imperialFtIn => 'Imperialne (ft/in)';
	@override String get metricKg => 'Metryczne (kg)';
	@override String get imperialLbs => 'Imperialne (lbs)';
	@override late final _Translations$editProfile$genders$pl genders = _Translations$editProfile$genders$pl._(_root);
	@override late final _Translations$editProfile$weightGoals$pl weightGoals = _Translations$editProfile$weightGoals$pl._(_root);
	@override late final _Translations$editProfile$activityLevels$pl activityLevels = _Translations$editProfile$activityLevels$pl._(_root);
}

// Path: settings
class _Translations$settings$pl extends Translations$settings$en {
	_Translations$settings$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ustawienia';
	@override late final _Translations$settings$sections$pl sections = _Translations$settings$sections$pl._(_root);
	@override late final _Translations$settings$editProfile$pl editProfile = _Translations$settings$editProfile$pl._(_root);
	@override late final _Translations$settings$language$pl language = _Translations$settings$language$pl._(_root);
	@override late final _Translations$settings$heightUnit$pl heightUnit = _Translations$settings$heightUnit$pl._(_root);
	@override late final _Translations$settings$weightUnit$pl weightUnit = _Translations$settings$weightUnit$pl._(_root);
	@override late final _Translations$settings$mealReminders$pl mealReminders = _Translations$settings$mealReminders$pl._(_root);
	@override late final _Translations$settings$localInference$pl localInference = _Translations$settings$localInference$pl._(_root);
	@override late final _Translations$settings$theme$pl theme = _Translations$settings$theme$pl._(_root);
	@override late final _Translations$settings$sendFeedback$pl sendFeedback = _Translations$settings$sendFeedback$pl._(_root);
	@override late final _Translations$settings$exportMealHistory$pl exportMealHistory = _Translations$settings$exportMealHistory$pl._(_root);
	@override late final _Translations$settings$clearAllData$pl clearAllData = _Translations$settings$clearAllData$pl._(_root);
	@override late final _Translations$settings$debugOptions$pl debugOptions = _Translations$settings$debugOptions$pl._(_root);
	@override String get developerModeEnabled => 'Tryb dewelopera włączony!';
	@override late final _Translations$settings$healthConnect$pl healthConnect = _Translations$settings$healthConnect$pl._(_root);
	@override late final _Translations$settings$about$pl about = _Translations$settings$about$pl._(_root);
	@override late final _Translations$settings$appInfo$pl appInfo = _Translations$settings$appInfo$pl._(_root);
}

// Path: reminders
class _Translations$reminders$pl extends Translations$reminders$en {
	_Translations$reminders$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pozostań na kursie dzięki przypomnieniom';
	@override String get description => 'Otrzymuj delikatne przypomnienia o zapisywaniu posiłków i utrzymaniu spójności w celach żywieniowych';
	@override String get notificationsEnabled => 'Powiadomienia włączone';
	@override String get notificationsDisabled => 'Powiadomienia wyłączone';
	@override String get enabledSubtitle => 'Będziesz otrzymywać przypomnienia o posiłkach';
	@override String get disabledSubtitle => 'Włącz powiadomienia, aby otrzymywać przypomnienia o posiłkach';
	@override String get mealReminders => 'Przypomnienia o posiłkach';
	@override String get breakfast => 'Śniadanie';
	@override String get lunch => 'Obiad';
	@override String get dinner => 'Kolacja';
	@override String get snack => 'Przekąska';
	@override String get unknown => 'Nieznane';
	@override String get change => 'Zmień';
	@override String get enableNotifications => 'Włącz powiadomienia';
	@override String get skipForNow => 'Pomiń na razie';
	@override String get saveChanges => 'Zapisz zmiany';
	@override String get enabledSuccessfully => 'Powiadomienia włączone pomyślnie!';
	@override String get permissionDenied => 'Odmowa uprawnień do powiadomień';
	@override String errorEnabling({required Object error}) => 'Błąd podczas włączania powiadomień: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Błąd podczas kończenia konfiguracji: ${error}';
}

// Path: notifications
class _Translations$notifications$pl extends Translations$notifications$en {
	_Translations$notifications$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$pl breakfast = _Translations$notifications$breakfast$pl._(_root);
	@override late final _Translations$notifications$lunch$pl lunch = _Translations$notifications$lunch$pl._(_root);
	@override late final _Translations$notifications$dinner$pl dinner = _Translations$notifications$dinner$pl._(_root);
	@override late final _Translations$notifications$snack$pl snack = _Translations$notifications$snack$pl._(_root);
	@override late final _Translations$notifications$test$pl test = _Translations$notifications$test$pl._(_root);
}

// Path: login
class _Translations$login$pl extends Translations$login$en {
	_Translations$login$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Logowanie';
	@override String get signInWithGoogle => 'Zaloguj się przez Google';
	@override String get signInFailed => 'Logowanie przez Google nie powiodło się lub zostało anulowane.';
}

// Path: disclaimer
class _Translations$disclaimer$pl extends Translations$disclaimer$en {
	_Translations$disclaimer$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Uwaga';
	@override late final _Translations$disclaimer$snap$pl snap = _Translations$disclaimer$snap$pl._(_root);
	@override late final _Translations$disclaimer$weightEstimate$pl weightEstimate = _Translations$disclaimer$weightEstimate$pl._(_root);
	@override late final _Translations$disclaimer$healthMetrics$pl healthMetrics = _Translations$disclaimer$healthMetrics$pl._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$pl calorieExpenditure = _Translations$disclaimer$calorieExpenditure$pl._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$pl extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get portionSmaller => 'Mniejsza';
	@override String get portionEstimated => 'Szacowana';
	@override String get portionLarger => 'Większa';
	@override String portionQuestion({required Object ingredient}) => 'Która porcja była najbliższa dla ${ingredient}?';
	@override String get mealTypeQuestion => 'Który to był posiłek?';
	@override String get localNutritionTip => 'Obliczono na podstawie zweryfikowanych lokalnych danych żywieniowych.';
	@override String get offlineNutritionTitle => 'Pobierz dane żywieniowe';
	@override String get offlineNutritionSubtitle => 'Używaj zweryfikowanych wierszy USDA i deterministycznych obliczeń na tym urządzeniu, gdy wszystkie składniki są objęte.';
	@override String get offlineNutritionUnavailable => 'Lokalne dane żywieniowe nie są dostępne dla tej wersji aplikacji.';
	@override String get offlineNutritionNotDownloaded => 'Nie pobrano zweryfikowanego pakietu danych żywieniowych.';
	@override String get offlineNutritionInstalling => 'Pobieranie i weryfikowanie danych żywieniowych…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Pakiet ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} wierszy USDA w pamięci podręcznej · ${size}';
	@override String get offlineNutritionUpdate => 'Sprawdź aktualizacje';
	@override String get offlineNutritionClear => 'Wyczyść lokalne dane żywieniowe';
	@override String get offlineNutritionClearTitle => 'Wyczyścić lokalne dane żywieniowe?';
	@override String get offlineNutritionClearBody => 'Spowoduje to usunięcie pobranego pakietu USDA i pamięci podręcznej wyszukiwania. Zapisane posiłki zachowają dokładną migawkę wartości odżywczych użytą podczas zapisywania.';
	@override String get offlineNutritionClearConfirm => 'Wyczyść dane';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Nie udało się pobrać i zweryfikować lokalnych danych żywieniowych: ${error}';
	@override String get offlineNutritionCleared => 'Lokalne dane żywieniowe zostały wyczyszczone';
}

// Path: watch
class _Translations$watch$pl extends Translations$watch$en {
	_Translations$watch$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$pl common = _Translations$watch$common$pl._(_root);
	@override late final _Translations$watch$nutrition$pl nutrition = _Translations$watch$nutrition$pl._(_root);
	@override late final _Translations$watch$sync$pl sync = _Translations$watch$sync$pl._(_root);
	@override late final _Translations$watch$home$pl home = _Translations$watch$home$pl._(_root);
	@override late final _Translations$watch$history$pl history = _Translations$watch$history$pl._(_root);
	@override late final _Translations$watch$favorites$pl favorites = _Translations$watch$favorites$pl._(_root);
	@override late final _Translations$watch$meal$pl meal = _Translations$watch$meal$pl._(_root);
	@override late final _Translations$watch$voice$pl voice = _Translations$watch$voice$pl._(_root);
	@override late final _Translations$watch$result$pl result = _Translations$watch$result$pl._(_root);
}

// Path: common
class _Translations$common$pl extends Translations$common$en {
	_Translations$common$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Wersja beta';
	@override String get close => 'Zamknij';
	@override String get kContinue => 'Kontynuuj';
}

// Path: feedbackRating
class _Translations$feedbackRating$pl extends Translations$feedbackRating$en {
	_Translations$feedbackRating$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Podoba Ci się ${appLabel}?';
	@override String get yes => 'Tak, podoba mi się';
	@override String get no => 'Nie bardzo';
	@override String get rateStepHeading => 'Oceń w Play Store';
	@override String get emailStepHeading => 'Wyślij opinię mailem';
	@override String soloDevMessage({required Object appLabel}) => 'Krótka ocena pomaga innym znaleźć ${appLabel} i wspiera dalszy rozwój. Czy poświęcisz chwilę, by wystawić opinię?';
	@override String get shareFeedbackViaEmail => 'Twoja opinia kształtuje przyszłość aplikacji — czy chciałbyś podzielić się uwagami mailem? Czytamy każdą wiadomość.';
	@override String get rateCta => 'Oceń w Play Store';
	@override String get maybeLater => 'Może później';
	@override String get sendFeedback => 'Wyślij opinię';
	@override String get noThanks => 'Nie, dziękuję';
	@override String get aboutUsDescription => 'Stworzone z dbałością przez mały zespół. Skupiamy się na prywatności, prostocie i pomaganiu w budowaniu lepszych nawyków żywieniowych.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Ciekawi, kto stoi za ${appLabel}? Zobacz ';
	@override String get aboutUsLinkLabel => 'O nas';
	@override String get thankYouMessage => 'Dziękujemy! Zapytamy ponownie innym razem.';
}

// Path: health
class _Translations$health$pl extends Translations$health$en {
	_Translations$health$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Nie udało się zsynchronizować z Health Connect';
	@override String get mealSynced => 'Posiłek zsynchronizowany z Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$pl extends Translations$onboarding$features$en {
	_Translations$onboarding$features$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$pl foodRecognition = _Translations$onboarding$features$foodRecognition$pl._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$pl aiAnalysis = _Translations$onboarding$features$aiAnalysis$pl._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$pl healthIntegration = _Translations$onboarding$features$healthIntegration$pl._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$pl extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jakiej jesteś płci?';
	@override String get description => 'Płeć pomaga nam dokładnie obliczyć podstawową przemianę materii (BMR).';
	@override String get next => 'Dalej';
}

// Path: onboarding.height
class _Translations$onboarding$height$pl extends Translations$onboarding$height$en {
	_Translations$onboarding$height$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak masz na wzrost?';
	@override String get description => 'Twój wzrost pomaga dokładnie obliczyć BMI i zapotrzebowanie energetyczne.';
	@override String get metric => 'Metryczne';
	@override String get imperial => 'Imperialne';
	@override String get next => 'Dalej';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$pl extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Jaka jest Twoja aktualna waga?';
	@override String get currentDescription => 'Twoja aktualna waga jest niezbędna do spersonalizowania dziennych celów.';
	@override String get targetTitle => 'Jaka jest Twoja docelowa waga?';
	@override String get targetDescription => 'Ustawienie wagi docelowej pomaga określić długoterminowy plan.';
	@override String get metric => 'Metryczne';
	@override String get imperial => 'Imperialne';
	@override String get next => 'Dalej';
}

// Path: onboarding.age
class _Translations$onboarding$age$pl extends Translations$onboarding$age$en {
	_Translations$onboarding$age$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kiedy masz urodziny?';
	@override String get description => 'Twój wiek pomaga dokładnie obliczyć zapotrzebowanie kaloryczne.';
	@override String get next => 'Dalej';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$pl extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Niedowaga';
	@override String get healthy => 'Zdrowy';
	@override String get overweight => 'Nadwaga';
	@override String get obese => 'Otyłość';
	@override late final _Translations$onboarding$bmiScale$categories$pl categories = _Translations$onboarding$bmiScale$categories$pl._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$pl messages = _Translations$onboarding$bmiScale$messages$pl._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$pl extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jaki jest Twój cel?';
	@override String get description => 'Wybierz cel, który najlepiej opisuje to, co chcesz osiągnąć';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$pl extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak bardzo jesteś aktywny?';
	@override String get description => 'To pomaga nam dokładniej obliczyć Twoje dzienne zapotrzebowanie kaloryczne';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$pl extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Połącz z Health Connect';
	@override String get description => 'Wykorzystuj spalone kalorie w swoim dziennym celu i opcjonalnie udostępniaj zapisane posiłki w Health Connect.';
	@override String get overviewDescription => 'Wykorzystuj spalone kalorie w swoim dziennym celu i opcjonalnie udostępniaj zapisane posiłki w Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$pl automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$pl._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$pl caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$pl._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$pl progressInsights = _Translations$onboarding$healthConnect$progressInsights$pl._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$pl shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$pl._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$pl seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$pl._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$pl userControl = _Translations$onboarding$healthConnect$userControl$pl._(_root);
	@override String get connected => 'Health Connect połączony';
	@override String get notConnected => 'Health Connect niepołączony';
	@override String get setup => 'Skonfiguruj Health Connect';
	@override String get skipForNow => 'Pomiń na razie';
	@override String get statusConnected => 'Health Connect jest połączony.';
	@override String get statusSuccess => 'Health Connect został pomyślnie połączony!';
	@override String get statusNotConnected => 'Wybierz funkcje Health Connect, które chcesz włączyć.';
	@override String get statusPartial => 'Health Connect jest częściowo połączony. Włącz pozostałe uprawnienie, aby korzystać z obu funkcji.';
	@override String get statusProviderUpdateRequired => 'Zainstaluj lub zaktualizuj Health Connect, aby kontynuować.';
	@override String get statusUnavailable => 'Health Connect nie jest obsługiwany na tym urządzeniu.';
	@override String get installOrUpdate => 'Zainstaluj lub zaktualizuj';
	@override String get manageAccess => 'Zarządzaj dostępem';
	@override String statusPermissionDenied({required Object appLabel}) => 'Odmowa uprawnień. Włącz uprawnienia Health Connect w ustawieniach telefonu dla ${appLabel}.';
	@override String statusError({required Object error}) => 'Błąd podczas konfiguracji Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$pl extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$pl trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$pl._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$pl healthProfile = _Translations$onboarding$reinforcement$healthProfile$pl._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$pl goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$pl._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$pl extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Twoje podsumowanie AI';
	@override String get logMore => 'Zaloguj więcej posiłków w ciągu kilku następnych dni, aby otrzymać spersonalizowane wnioski AI.';
	@override String get loading => 'Ładowanie podsumowania...';
	@override String mealCount({required Object count}) => 'Zalogowano ${count} posiłków';
	@override String macroBalanceScore({required Object score}) => 'Wskaźnik równowagi ${score}';
	@override String get topFoods => 'Najczęściej jedzone';
	@override String get trendUp => 'Kalorie w trendzie wzrostowym';
	@override String get trendDown => 'Kalorie w trendzie spadkowym';
	@override String get trendSteady => 'Kalorie utrzymują się stabilnie';
	@override String generatedAt({required Object time}) => 'Zaktualizowano ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$pl extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ustaw swój dzienny cel';
	@override String get titleSet => 'Twój dzienny cel';
	@override String get description => 'Gotowy rozpocząć swoją drogę do lepszego samopoczucia? Ustaw poniżej swoje dzienne cele kaloryczne, aby rozpocząć postępy.';
	@override String get descriptionSet => 'Twoja kompas jest ustawiony! To Twój dzienny cel kaloryczny, który Cię poprowadzi.';
	@override String get yourGoal => 'Twój cel';
	@override String get goal => 'Cel';
	@override String get dailyCalories => 'Dzienne kalorie (kcal)';
	@override String get setGoal => 'Ustaw cel';
	@override String get intake => 'Spożycie';
	@override String get burned => 'Spalone';
	@override String get weightImpact => 'Wpływ na wagę';
	@override String get estLoss => 'Szac. utrata';
	@override String get estGain => 'Szac. przyrost';
	@override String get kcal => 'kilokalorie (kcal)';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$pl extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Codzienne podsumowanie';
	@override String get calories => 'Kalorie';
	@override String get carbs => 'Węglowodany';
	@override String get protein => 'Białko';
	@override String get fat => 'Tłuszcz';
	@override String get fiber => 'Błonnik';
	@override String get grams => 'gramy';
	@override String get chartAccessibilityLabel => 'Wykres makroskładników';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$pl extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dzisiejszy podział makro';
	@override String get target => 'Cel';
	@override String get current => 'Aktualnie';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$pl extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => '7-dniowa historia makro';
	@override String get trendTitle => 'Dzisiejszy trend';
	@override String peakHour({required Object hour}) => 'Szczyt: ${hour}:00';
	@override String get noHistoryYet => 'Brak historii';
	@override String get startLogging => 'Zacznij zapisywać posiłki, aby zobaczyć tutaj\n7-dniowe trendy makro';
}

// Path: home.mealLog
class _Translations$home$mealLog$pl extends Translations$home$mealLog$en {
	_Translations$home$mealLog$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zalogowane posiłki';
	@override String get emptyMessage => 'Zrób zdjęcie ostatniego posiłku, aby zapisać je tutaj.';
	@override String get noMealsToday => 'Brak zarejestrowanych posiłków na dziś';
	@override String get seeAllMeals => 'Zobacz wszystkie posiłki';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$pl extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szybkie dodawanie z AI';
	@override String get description => 'Opisz posiłek, a AI zajmie się szczegółami.';
	@override String get hint => 'np. Na śniadanie zjadłem dużą miskę owsianki z pokrojonym bananem i miarką białka ...';
	@override String get analyzeMeal => 'Analizuj posiłek';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$pl extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ulubione posiłki';
	@override String get description => 'Szybko dodaj jeden ze swoich ulubionych posiłków.';
	@override String get noFavorites => 'Brak ulubionych posiłków.';
	@override String get addFavoriteHint => 'Kliknij gwiazdkę przy posiłku, aby dodać do ulubionych.';
	@override String get seeAll => 'Zobacz wszystkie';
	@override String get add => 'Dodaj';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$pl extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zrób zdjęcie i śledź posiłek';
	@override String get description => 'Użyj aparatu, aby zrobić zdjęcie jedzenia do analizy AI.';
	@override String get openCamera => 'Otwórz aparat';
	@override String get gallery => 'Galeria';
	@override String get compressingPhoto => 'Optymalizowanie zdjęcia…';
	@override String get uploadingPhoto => 'Wysyłanie zdjęcia…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$pl extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchronizuj z Health Connect';
	@override String get description => 'Wykorzystuj spalone kalorie w swoim celu i udostępniaj zapisane posiłki';
	@override String get install => 'Zainstaluj lub zaktualizuj';
	@override String get dataUseDescription => 'Wykorzystuj spalone kalorie w swoim celu i udostępniaj zapisane posiłki';
	@override String get installOrUpdate => 'Zainstaluj lub zaktualizuj';
	@override String get connect => 'Połącz';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$pl extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorie';
	@override String get carbs => 'Węglowodany (g)';
	@override String get protein => 'Białko (g)';
	@override String get fat => 'Tłuszcz (g)';
	@override String get fiber => 'Błonnik (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$pl extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Usuń posiłek';
	@override String get message => 'Czy na pewno chcesz usunąć ten wpis posiłku?';
	@override String get cancel => 'Anuluj';
	@override String get delete => 'Usuń';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$pl extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Pytanie ${current} z ${total}';
	@override String get noQuestionsAvailable => 'Brak dostępnych pytań';
	@override String get next => 'Dalej';
	@override String get continueLabel => 'Kontynuuj';
}

// Path: meal.analysis
class _Translations$meal$analysis$pl extends Translations$meal$analysis$en {
	_Translations$meal$analysis$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analiza Twojego posiłku';
	@override String get stepStarted => 'Rozpoczynanie…';
	@override String get stepDecomposition => 'Rozpoznawanie posiłku…';
	@override String get stepIngredients => 'Dopasowywanie składników do danych odżywczych…';
	@override String get stepUncertainty => 'Sprawdzanie pewności…';
	@override String get stepMealTypeQuestion => 'Już prawie…';
	@override String get stepResult => 'Finalizowanie wyniku…';
	@override String get stepError => 'Coś poszło nie tak';
	@override String get stepDefault => 'Analizowanie posiłku…';
	@override String get progressUnderstand => 'Rozpoznawanie posiłku';
	@override String get progressMatch => 'Wyszukiwanie wartości odżywczych składników';
	@override String get progressCheck => 'Sprawdzanie porcji i pewności';
	@override String get progressMealType => 'Wybór typu posiłku';
	@override String get progressFinish => 'Obliczanie kalorii i makroskładników';
	@override String get detectedIngredientHeading => 'Składniki, które zauważyliśmy';
	@override String ingredientsOverflow({required Object count}) => '${count} więcej';
	@override String ingredientsLine({required Object count}) => 'Wykryto ${count} składników';
	@override String get ingredientsPending => 'Skanowanie składników…';
	@override String mealPreviewDescription({required Object text}) => '„${text}”';
	@override String get offlineTip0 => 'Wskazówka: Konsekwencja jest ważniejsza niż perfekcja — regularne zapisy ujawniają istotne wzorce.';
	@override String get offlineTip1 => 'Wskazówka: Do zdjęć najlepiej naturalne światło i ujęcie z góry — pomagają w ocenie porcji.';
	@override String get offlineTip2 => 'Wskazówka: Wspomnij o napojach, sosach i oleju do smażenia — to kalorie, które często są pomijane.';
	@override String get offlineTip3 => 'Wskazówka: Krótka informacja o porcji (1 miska, duża kawa) znacznie poprawia dokładność.';
	@override String get offlineTip4 => 'Wskazówka: Zapis po posiłku też buduje nawyk; perfekcja nie jest obowiązkowa.';
	@override String get offlineTip5 => 'Wskazówka: Powiedz, jak jedzenie było przygotowane, jeśli to znacząco zmienia kalorie (smażone vs pieczone).';
}

// Path: meal.localInference
class _Translations$meal$localInference$pl extends Translations$meal$localInference$en {
	_Translations$meal$localInference$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Sprawdź wykryte składniki';
	@override String get reviewSubtitle => 'Dane zostały zinterpretowane na Twoim urządzeniu. Popraw nazwy lub porcje przed obliczeniem wartości odżywczych.';
	@override String get mealName => 'Nazwa posiłku';
	@override String get ingredient => 'Składnik';
	@override String get grams => 'Szacowana waga (g)';
	@override String get removeIngredient => 'Usuń składnik';
	@override String get continueLabel => 'Kontynuuj';
	@override String get invalidProposal => 'Dodaj co najmniej jeden składnik i podaj dodatnią wartość gramów.';
	@override String get localUnavailable => 'Analiza na urządzeniu jest obecnie niedostępna.';
}

// Path: meal.feedback
class _Translations$meal$feedback$pl extends Translations$meal$feedback$en {
	_Translations$meal$feedback$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Co wygląda nie tak?';
	@override String get subtitle => 'Pomóż nam ulepszyć analizę, wybierając jeden lub więcej problemów.';
	@override String get tellUsMore => 'Opowiedz więcej';
	@override String get describeIncorrect => 'Opisz, co było nieprawidłowe';
	@override String get submit => 'Wyślij';
	@override String get issueFoodIdentification => 'Identyfikacja jedzenia';
	@override String get issuePortionSize => 'Wielkość porcji';
	@override String get issueCalorieDistribution => 'Rozkład kalorii';
	@override String get issueMacrosWrong => 'Makroskładniki są niepoprawne';
	@override String get issueMissingItems => 'Brakujące elementy';
	@override String get issueExtraItems => 'Dodatkowe elementy';
	@override String get issueOther => 'Inne';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$pl extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Ostatnie';
	@override String get calories => 'Kalorie';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$pl extends Translations$profile$sections$en {
	_Translations$profile$sections$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'PODSTAWOWE INFORMACJE';
	@override String get goalsAndActivity => 'CELE I AKTYWNOŚĆ';
	@override String get calculatedValues => 'OBLICZONE WARTOŚCI';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$pl extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Dzienny cel';
	@override String get calPerDay => 'cal/dzień';
	@override String get notAvailable => 'N/D';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$pl extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'DANE OSOBOWE';
	@override String get physicalMeasurements => 'POMIARY';
	@override String get goalsAndActivity => 'CELE I AKTYWNOŚĆ';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$pl extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get male => 'Mężczyzna';
	@override String get female => 'Kobieta';
	@override String get other => 'Inna';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$pl extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$pl loseWeight = _Translations$editProfile$weightGoals$loseWeight$pl._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$pl maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$pl._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$pl gainWeight = _Translations$editProfile$weightGoals$gainWeight$pl._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$pl extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$pl sedentary = _Translations$editProfile$activityLevels$sedentary$pl._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$pl lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$pl._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$pl moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$pl._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$pl veryActive = _Translations$editProfile$activityLevels$veryActive$pl._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$pl extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$pl._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$pl extends Translations$settings$sections$en {
	_Translations$settings$sections$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALIZACJA';
	@override String get notifications => 'POWIADOMIENIA';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'ANALIZA NA URZĄDZENIU';
	@override String get supportAndLegal => 'POMOC I DANE PRAWNE';
	@override String get about => 'O APLIKACJI';
	@override String get dangerZone => 'STREFA RYZYKA';
	@override String get developer => 'DEWELOPER';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$pl extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edytuj profil';
	@override String get subtitle => 'Zaktualizuj swoje dane osobowe';
}

// Path: settings.language
class _Translations$settings$language$pl extends Translations$settings$language$en {
	_Translations$settings$language$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Język';
	@override String get subtitle => 'Wybierz preferowany język';
	@override String get searchHint => 'Szukaj języków...';
	@override String get noResults => 'Brak wyników';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$pl extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jednostka wzrostu';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$pl extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jednostka wagi';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$pl extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Przypomnienia o posiłkach';
	@override String get subtitle => 'Pozostań na ścieżce dzięki przypomnieniom';
}

// Path: settings.localInference
class _Translations$settings$localInference$pl extends Translations$settings$localInference$en {
	_Translations$settings$localInference$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analiza posiłków na urządzeniu';
	@override String get subtitle => 'Interpretuj obsługiwane posiłki za pomocą Gemini Nano przed obliczeniem wartości odżywczych';
	@override String get unavailable => 'Niedostępne na tym urządzeniu';
	@override String get rolloutUnavailable => 'Wykryto odpowiedni sprzęt, ale ta funkcja nie jest włączona w tej wersji aplikacji';
	@override String get modelSetup => 'Gemini Nano musi zakończyć pobieranie, zanim będzie można to włączyć';
	@override String get useLocalTitle => 'Używaj analizy na urządzeniu';
	@override String get useLocalSubtitle => 'Opcjonalnie, domyślnie wyłączone. Wyniki mogą być mniej wiarygodne w przypadku złożonych posiłków.';
	@override String get disclosureTitle => 'Zanim włączysz analizę na urządzeniu';
	@override String get disclosureBody => 'Gemini Nano potrafi identyfikować składniki i szacować porcje na obsługiwanych urządzeniach Android. Twoja zweryfikowana propozycja składników jest wysyłana do Calorify w celu weryfikacji wartości odżywczych USDA i obliczeń.';
	@override String get disclosureLimit1 => 'Złożone dania, ukryte składniki i wielkość porcji mogą zostać błędnie zidentyfikowane.';
	@override String get disclosureLimit2 => 'Model może być niedostępny podczas pobierania, gdy jest zajęty, działa w tle lub jest ograniczony przez urządzenie.';
	@override String get disclosureLimit3 => 'Jeśli interpretacja lokalna nie może zostać zakończona, ta wersja beta automatycznie wysyła oryginalny opis posiłku do Calorify w celu analizy w chmurze.';
	@override String get acknowledgement => 'Rozumiem, że powinienem sprawdzać wykryte składniki i porcje.';
	@override String get enable => 'Potwierdź i włącz';
	@override String get cancel => 'Anuluj';
}

// Path: settings.theme
class _Translations$settings$theme$pl extends Translations$settings$theme$en {
	_Translations$settings$theme$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Motyw';
	@override String get light => 'Jasny';
	@override String get dark => 'Ciemny';
	@override String get system => 'Systemowy';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$pl extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wyślij opinię';
	@override String subtitle({required Object appLabel}) => 'Pomóż ulepszyć ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} — opinia o aplikacji';
	@override String get emailBodyPrefix => 'Prosimy o podanie opinii poniżej:';
	@override String get appVersion => 'Wersja aplikacji';
	@override String get device => 'Urządzenie';
	@override String get osVersion => 'Wersja systemu';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$pl extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eksportuj historię posiłków';
	@override String get subtitle => 'Udostępnij plik CSV z zapisanymi posiłkami';
	@override String get shareText => 'Eksport historii posiłków Calorify';
	@override String failed({required Object error}) => 'Nie można wyeksportować historii posiłków: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$pl extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wyczyść wszystkie dane';
	@override String get subtitle => 'Usuń dane Calorify zapisane na tym urządzeniu';
	@override String get localOnlySubtitle => 'Usuń dane Calorify zapisane na tym urządzeniu';
	@override String get confirmationTitle => 'Wyczyścić wszystkie dane?';
	@override String get confirmationMessage => 'Spowoduje to trwałe usunięcie zapisanych posiłków, ulubionych i ustawień profilu z tego urządzenia. Posiłkami udostępnionymi już w Health Connect i dostępem do Health Connect zarządza się osobno w Ustawienia > Health Connect.';
	@override String get localOnlyConfirmationMessage => 'Spowoduje to trwałe usunięcie zapisanych posiłków, ulubionych i ustawień profilu z tego urządzenia. Posiłkami udostępnionymi już w Health Connect i dostępem do Health Connect zarządza się osobno w Ustawienia > Health Connect.';
	@override String get cancel => 'Anuluj';
	@override String get clearEverything => 'Wyczyść wszystko';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$pl extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opcje debugowania';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$pl extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Wyświetl i zarządzaj uprawnieniami';
	@override late final _Translations$settings$healthConnect$unavailable$pl unavailable = _Translations$settings$healthConnect$unavailable$pl._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$pl updateRequired = _Translations$settings$healthConnect$updateRequired$pl._(_root);
	@override late final _Translations$settings$healthConnect$permissions$pl permissions = _Translations$settings$healthConnect$permissions$pl._(_root);
	@override String get managePermissions => 'Zarządzaj uprawnieniami';
	@override String get openSettings => 'Otwórz ustawienia Health Connect';
	@override String get disconnect => 'Odłącz Health Connect';
	@override String get disconnectConfirmationTitle => 'Odłączyć Health Connect?';
	@override String get disconnectConfirmationMessage => 'Calorify utraci dostęp do Health Connect. Dane już tam zapisane nie zostaną usunięte.';
	@override String get disconnectConfirmationAction => 'Odłącz';
	@override String get deleteSyncedMeals => 'Usuń posiłki Calorify z Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Usunąć zsynchronizowane posiłki?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Usunąć z Health Connect posiłki zsynchronizowane przez tę wersję Calorify? Lokalny dziennik posiłków nie ulegnie zmianie. Starsze wpisy Calorify mogą nadal wymagać usunięcia za pomocą opcji Zarządzaj danymi w Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Usuń zsynchronizowane posiłki';
	@override String get deleteSyncedMealsSuccess => 'Posiłki Calorify zostały usunięte z Health Connect.';
	@override String get deleteSyncedMealsFailed => 'Nie udało się usunąć zsynchronizowanych posiłków. Spróbuj ponownie.';
	@override String get connectionPartial => 'Niektóre funkcje Health Connect są włączone.';
	@override String get connectionComplete => 'Obie funkcje Health Connect są włączone.';
	@override String get actionFailed => 'Nie udało się otworzyć Health Connect. Spróbuj ponownie.';
	@override String get requestPermissions => 'Poproś o uprawnienia';
	@override String get permissionRequestCancelledOrFailed => 'Żądanie uprawnień zostało anulowane lub nie powiodło się. Spróbuj ponownie lub przyznaj uprawnienia ręcznie w ustawieniach Health Connect.';
	@override String get permissionRequestFailed => 'Nie można poprosić o uprawnienia. Spróbuj ponownie lub przyznaj uprawnienia ręcznie w ustawieniach Health Connect.';
	@override String get requestingPermissions => 'Proszę czekać...';
}

// Path: settings.about
class _Translations$settings$about$pl extends Translations$settings$about$en {
	_Translations$settings$about$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'O aplikacji';
	@override String get tagline => 'Szybkie, darmowe i zaprojektowane z myślą o prywatności';
	@override late final _Translations$settings$about$ourStory$pl ourStory = _Translations$settings$about$ourStory$pl._(_root);
	@override late final _Translations$settings$about$privacy$pl privacy = _Translations$settings$about$privacy$pl._(_root);
	@override late final _Translations$settings$about$developer$pl developer = _Translations$settings$about$developer$pl._(_root);
	@override late final _Translations$settings$about$feedback$pl feedback = _Translations$settings$about$feedback$pl._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$pl extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify, wersja ${version}';
	@override String build({required Object buildNumber}) => 'Kompilacja ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$pl extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czas na śniadanie! 🍳';
	@override String get body => 'Nie zapomnij zapisać swojego śniadania';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$pl extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czas na lunch! 🥗';
	@override String get body => 'Czas zapisać obiad';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$pl extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czas na kolację! 🍽️';
	@override String get body => 'Nie zapomnij zapisać kolacji';
}

// Path: notifications.snack
class _Translations$notifications$snack$pl extends Translations$notifications$snack$en {
	_Translations$notifications$snack$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czas na przekąskę! 🍎';
	@override String get body => 'Czas na zdrową przekąskę';
}

// Path: notifications.test
class _Translations$notifications$test$pl extends Translations$notifications$test$en {
	_Translations$notifications$test$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Powiadomienie testowe';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$pl extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} dostarcza szacunkowe informacje żywieniowe. Dokładność zależy od Twoich danych i wariantów potraw. Używaj jako wskazówki, nie jako ostatecznego źródła. W przypadku indywidualnej porady dietetycznej skonsultuj się ze specjalistą.';
	@override late final _Translations$disclaimer$snap$portionSize$pl portionSize = _Translations$disclaimer$snap$portionSize$pl._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$pl preparationMethods = _Translations$disclaimer$snap$preparationMethods$pl._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$pl ingredients = _Translations$disclaimer$snap$ingredients$pl._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$pl databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$pl._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$pl extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'O szacowanej zmianie wagi';
	@override String get description => 'Przewidywana zmiana wagi to teoretyczne oszacowanie oparte na prostym modelu kalorie w vs kalorie out. Ma charakter motywacyjny, a nie prognozę rzeczywistej wagi.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$pl calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$pl._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$pl biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$pl._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$pl waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$pl._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$pl professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$pl._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$pl extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get description => 'Te metryki pomagają zrozumieć zapotrzebowanie energetyczne organizmu i kierować celami żywieniowymi.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$pl bmr = _Translations$disclaimer$healthMetrics$bmr$pl._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$pl tdee = _Translations$disclaimer$healthMetrics$tdee$pl._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$pl dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$pl._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$pl extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szacunkowe spalanie kalorii';
	@override String get description => 'Gdy dane z Health Connect są niedostępne, szacujemy dzisiejsze spalone kalorie używając BMR i poziomu aktywności (TDEE), skalując według części dnia, która już minęła.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$pl howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$pl._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$pl professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$pl._(_root);
}

// Path: watch.common
class _Translations$watch$common$pl extends Translations$watch$common$en {
	_Translations$watch$common$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get back => 'Wstecz';
	@override String get cancel => 'Anuluj';
	@override String get delete => 'Usuń';
	@override String get retry => 'Ponów';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$pl extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Składnik odżywczy';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} g';
	@override String get protein => 'Białko';
	@override String get carbs => 'Węglowodany';
	@override String get fat => 'Tłuszcz';
	@override String get fiber => 'Błonnik';
}

// Path: watch.sync
class _Translations$watch$sync$pl extends Translations$watch$sync$en {
	_Translations$watch$sync$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Synchronizuj z telefonem';
	@override String get syncing => 'Synchronizowanie…';
	@override String get synced => 'Zsynchronizowano';
	@override String get syncedJustNow => 'Zsynchronizowano właśnie';
	@override String syncedMinutesAgo({required Object minutes}) => 'Zsynchronizowano ${minutes}m temu';
	@override String get failed => 'Synchronizacja nie powiodła się';
	@override String get phoneDisconnected => 'Telefon odłączony';
	@override String get tapToSync => 'Dotknij, aby zsynchronizować';
	@override String get refreshFailed => 'Nie można odświeżyć. Sprawdź telefon.';
	@override String get openPhone => 'Otwórz Calorify na telefonie, a następnie dotknij Odśwież.';
}

// Path: watch.home
class _Translations$watch$home$pl extends Translations$watch$home$en {
	_Translations$watch$home$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get today => 'Dziś';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => 'Spożyto ${consumed} kcal z ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} powyżej celu';
	@override String remaining({required Object calories}) => '${calories} pozostało';
	@override String left({required Object calories}) => '${calories} pozostało';
	@override String goal({required Object calories}) => 'Cel: ${calories} kcal';
	@override String get logMeal => 'Zapisz posiłek';
	@override String get todayMeals => 'Posiłki dzisiaj';
	@override String todayMealsCount({required Object count}) => 'Posiłki dzisiaj, ${count}';
	@override String viewMore({required Object count}) => 'Pokaż ${count} więcej';
	@override String viewMoreSemantics({required Object count}) => '${count} dodatkowych posiłków, dotknij, aby zobaczyć wszystkie';
	@override String get noMeals => 'Brak zapisanych posiłków';
	@override String get noMealsSemantics => 'Dzisiaj brak zapisanych posiłków';
	@override String get tapLog => 'Dotknij Zapisz, aby zacząć';
	@override String get removedFromQueue => 'Posiłek usunięty z kolejki offline.';
	@override String get removedOffline => 'Posiłek usunięty offline. Zostanie zsynchronizowany po ponownym połączeniu telefonu.';
	@override String get deleteFailed => 'Nie można usunąć posiłku';
}

// Path: watch.history
class _Translations$watch$history$pl extends Translations$watch$history$en {
	_Translations$watch$history$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Posiłki dzisiaj';
	@override String get refresh => 'Odśwież posiłki';
	@override String get loadFailed => 'Nie można załadować posiłków';
	@override String get syncFailed => 'Nie można zsynchronizować';
	@override String get emptyTitle => 'Brak posiłków';
	@override String get emptyMessage => 'Zapisz posiłek na ekranie głównym, aby zobaczyć go tutaj.';
}

// Path: watch.favorites
class _Translations$watch$favorites$pl extends Translations$watch$favorites$en {
	_Translations$watch$favorites$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ulubione';
	@override String get refresh => 'Odśwież ulubione';
	@override String get loadFailed => 'Nie można załadować ulubionych';
	@override String get syncFailed => 'Nie można zsynchronizować';
	@override String get emptyTitle => 'Brak ulubionych';
	@override String get emptyMessage => 'Oznacz posiłki gwiazdką w aplikacji na telefonie, aby móc je tu zapisywać jednym dotknięciem.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} kcal. Dotknij, aby zapisać.';
	@override String logged({required Object name}) => '${name} zapisano!';
	@override String savedOffline({required Object name}) => '${name} zapisano offline. Zostanie zsynchronizowany po ponownym połączeniu telefonu.';
	@override String get saveFailed => 'Nie można zapisać posiłku. Spróbuj ponownie.';
	@override String get log => 'Zapisz';
}

// Path: watch.meal
class _Translations$watch$meal$pl extends Translations$watch$meal$en {
	_Translations$watch$meal$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kcal, zapisano o ${time}.';
	@override String get longPressDelete => 'Naciśnij długo, aby usunąć.';
	@override String get deleteTitle => 'Usunąć posiłek?';
}

// Path: watch.voice
class _Translations$watch$voice$pl extends Translations$watch$voice$en {
	_Translations$watch$voice$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zapisywanie posiłku głosem';
	@override String get processing => 'Analizuję posiłek…';
	@override String get processingDescription => 'Szacowanie porcji i wartości odżywczych';
	@override String get listening => 'Słucham';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Zatrzymaj nagrywanie';
	@override String get start => 'Dotknij, aby rozpocząć nagrywanie';
	@override String get starting => 'Uruchamianie mikrofonu…';
	@override String get prompt => 'Dotknij, a następnie opisz posiłek';
	@override String get tapToRetry => 'Dotknij, aby spróbować ponownie';
	@override String get example => 'Spróbuj „2 rotis z dal”';
	@override String get unavailable => 'Wprowadzanie głosowe jest niedostępne. Sprawdź uprawnienia mikrofonu w ustawieniach zegarka.';
	@override String get didNotStart => 'Mikrofon nie wystartował. Dotknij, aby spróbować ponownie.';
	@override String get startFailed => 'Nie można rozpocząć nagrywania. Sprawdź uprawnienia mikrofonu.';
	@override String get allowMicrophone => 'Zezwól na dostęp do mikrofonu, aby zapisywać posiłki głosem.';
	@override String get needsConnection => 'Rozpoznawanie mowy wymaga połączenia. Dotknij, aby spróbować ponownie.';
	@override String get microphoneUnavailable => 'Mikrofon niedostępny. Dotknij, aby spróbować ponownie.';
	@override String get microphoneBusy => 'Mikrofon jest zajęty. Poczekaj chwilę i spróbuj ponownie.';
	@override String get languageUnsupported => 'Wprowadzanie głosowe nie obsługuje języka zegarka.';
	@override String get temporarilyBusy => 'Wprowadzanie głosowe jest chwilowo zajęte. Poczekaj i spróbuj ponownie.';
	@override String get notRecognized => 'Nie zrozumiałem. Dotknij mikrofonu i spróbuj ponownie.';
	@override String get noSpeech => 'Nie wykryto mowy. Dotknij mikrofonu, aby spróbować ponownie.';
	@override String get analysisFailed => 'Analiza nie powiodła się. Spróbuj ponownie.';
	@override String get mealNotIdentified => 'Nie rozpoznano posiłku. Spróbuj opisać go inaczej.';
}

// Path: watch.result
class _Translations$watch$result$pl extends Translations$watch$result$en {
	_Translations$watch$result$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szczegóły posiłku';
	@override String get savedOffline => 'Zapisano offline';
	@override String get logged => 'Zapisano!';
	@override String get mealFound => 'Znaleziono posiłek';
	@override String get estimatedEnergy => 'Szacowana energia';
	@override String get logMeal => 'Zapisz posiłek';
	@override String get logging => 'Zapisywanie…';
	@override String get logAnother => 'Zapisz kolejny';
	@override String get goingBack => 'Powrót…';
	@override String get savedOfflineMessage => 'Posiłek zapisano offline. Zostanie zsynchronizowany po ponownym połączeniu telefonu.';
	@override String get saveFailed => 'Nie można zapisać posiłku. Spróbuj ponownie.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$pl extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inteligentne rozpoznawanie jedzenia';
	@override String get description => 'Zrób zdjęcie i pozwól AI zidentyfikować posiłek';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$pl extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analiza AI';
	@override String get description => 'Otrzymaj natychmiastowe informacje o wartościach odżywczych na podstawie opisu';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$pl extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integracja z Health Connect';
	@override String get description => 'Połącz z Health Connect, aby uzyskać lepsze informacje';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$pl extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Niedowaga';
	@override String get healthyWeight => 'Prawidłowa waga';
	@override String get overweight => 'Nadwaga';
	@override String get obese => 'Otyłość';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$pl extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Możemy pomóc zbudować zdrowy plan, by osiągnąć zrównoważoną wagę przy odżywczych posiłkach.';
	@override String get healthy => 'Świetnie! Jesteś w zdrowym przedziale. Pomożemy utrzymać Twoją witalność i energię.';
	@override String overweight({required Object appLabel}) => '${appLabel} uprości twoją drogę dzięki śledzeniu wspieranemu przez AI, abyś komfortowo osiągnął cel.';
	@override String get obese => 'Jesteśmy tu, by wspierać Cię spersonalizowanymi wskazówkami i trwałymi strategiami dla Twoich celów zdrowotnych.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$pl extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Spalone kalorie';
	@override String get description => 'Odczytuj dzisiejszą całkowitą liczbę spalonych kalorii z Health Connect';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$pl extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Spalone kalorie';
	@override String get description => 'Odczytuj dzisiejszą całkowitą liczbę spalonych kalorii z Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$pl extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Udostępniaj zapisane posiłki';
	@override String get description => 'Zapisuj w Health Connect posiłki zarejestrowane w Calorify';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$pl extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Udostępniaj zapisane posiłki';
	@override String get description => 'Zapisuj w Health Connect posiłki zarejestrowane w Calorify';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$pl extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masz kontrolę';
	@override String get description => 'Wybierz dowolne uprawnienie i zmieniaj dostęp w każdej chwili';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$pl extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masz kontrolę';
	@override String get description => 'Wybierz dowolne uprawnienie i zmieniaj dostęp w każdej chwili';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$pl extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nie jesteś sam';
	@override String get genericMessage => 'Badania pokazują, że konsekwentne śledzenie jest najważniejszym czynnikiem długoterminowego sukcesu.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Dla ${age}-letniego ${gender} chcącego ${goal}, konsekwentne śledzenie jest najważniejszym czynnikiem sukcesu.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} ułatwia to 10x bardziej niż ręczne zapisywanie.';
	@override String get getStartedTitle => 'Gotowy, by zacząć?';
	@override String get tipPhoto => 'Zrób zdjęcie posiłków, aby uzyskać natychmiastową analizę';
	@override String get tipConsistency => 'Loguj regularnie, aby zobaczyć wymierne postępy';
	@override String get tipProgress => 'Śledź postęp codziennie, by pozostać zmotywowanym';
	@override String get button => 'Zaczynamy';
	@override String get defaultGender => 'osoba';
	@override String get defaultGoal => 'zdrowsze Ty';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$pl extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Twój profil zdrowotny';
	@override String bmiDescription({required Object bmi}) => 'Na podstawie Twoich danych Twoje BMI wynosi ${bmi}.';
	@override String get finalizeDescription => 'Ukończmy profil, aby spersonalizować doświadczenie.';
	@override String get goalGain => 'zyskać';
	@override String get goalLose => 'stracić';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Aby osiągnąć cel, będziesz ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Jesteś na docelowej wadze! Pomożemy Ci ją utrzymać.';
	@override String get button => 'Zaczynamy';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$pl extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Świetny początek!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Zrobiłeś pierwszy krok w kierunku ${goalText}. Skoro jesteś ${activityText}, ${appLabel} dostosuje Twoje cele do stylu życia.';
	@override String get personalizedTargets => 'Spersonalizowane cele kaloryczne';
	@override String get aiMealDetection => 'Wykrywanie posiłków wspierane przez AI';
	@override String get macroBreakdowns => 'Szczegółowy rozkład makroskładników';
	@override String get button => 'Zaczynamy';
	@override String get defaultGoal => 'Twoje cele';
	@override String get defaultActivity => 'aktywny';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$pl extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Utrata wagi';
	@override String get description => 'Stwórz deficyt kaloryczny, aby schudnąć';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$pl extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Utrzymanie wagi';
	@override String get description => 'Utrzymaj swoją obecną wagę';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$pl extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Przyrost masy';
	@override String get description => 'Stwórz nadwyżkę kaloryczną, aby przytyć';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$pl extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Siedzący tryb';
	@override String get description => 'Mało lub brak ćwiczeń';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$pl extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lekko aktywny';
	@override String get description => 'Lekkie ćwiczenia 1-3 dni/tydz.';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$pl extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Umiarkowanie aktywny';
	@override String get description => 'Umiarkowane ćwiczenia 3-5 dni/tydz.';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$pl extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Bardzo aktywny';
	@override String get description => 'Intensywne ćwiczenia 6-7 dni/tydz.';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$pl extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ekstremalnie aktywny';
	@override String get description => 'Bardzo intensywne ćwiczenia lub praca fizyczna';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$pl extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect niedostępny';
	@override String get description => 'Health Connect nie jest obsługiwany na tym urządzeniu.';
	@override String get unsupportedDescription => 'Health Connect nie jest obsługiwany na tym urządzeniu.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$pl extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect wymaga uwagi';
	@override String get description => 'Zainstaluj lub zaktualizuj Health Connect przed zarządzaniem dostępem.';
	@override String get action => 'Zainstaluj lub zaktualizuj';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$pl extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uprawnienia';
	@override String get description => 'Żądane są następujące uprawnienia, aby zapewnić integrację z Health Connect:';
	@override String get granted => 'Przyznane';
	@override String get notGranted => 'Nieprzyznane';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$pl caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$pl._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$pl nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$pl._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$pl nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$pl._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$pl extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nasza historia';
	@override String content({required Object appLabel}) => '${appLabel} narodził się z prostego rozczarowania: większość aplikacji do liczenia kalorii jest albo zbyt skomplikowana, wymaga ciągłego ręcznego wprowadzania, pobiera wysokie opłaty subskrypcyjne albo kompromituje prywatność.\n\nJako pojedynczy deweloper chciałem stworzyć coś prostszego i uczciwszego — aplikację, która używa AI, żeby zmniejszyć nakład pracy, pozostaje szybka i darmowa w użyciu oraz traktuje Twoje dane zdrowotne z szacunkiem.\n\n${appLabel} to aplikacja, której sam bym oczekiwał: bez kont, bez śledzenia, bez reklam — tylko jasne, praktyczne wnioski i Twoje cele zdrowotne.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$pl extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Twoja prywatność ma znaczenie';
	@override String get description => 'Prywatność to nie dodatek — to zasada projektowa. Oto, co to oznacza w praktyce:';
	@override String get noAccounts => 'Brak wymaganych kont\nKorzystaj z aplikacji od razu. Bez rejestracji, bez tworzenia tożsamości.';
	@override String noTracking({required Object appLabel}) => 'Ograniczona analityka i diagnostyka\n${appLabel} wykorzystuje podstawowe zdarzenia w aplikacji i diagnostykę awarii, aby zwiększać niezawodność. Wartości danych zdrowotnych nie są wykorzystywane do reklam ani sprzedawane.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Ograniczona analityka i diagnostyka\n${appLabel} wykorzystuje podstawowe zdarzenia w aplikacji i diagnostykę awarii, aby zwiększać niezawodność. Wartości danych zdrowotnych nie są wykorzystywane do reklam ani sprzedawane.';
	@override String noAds({required Object appLabel}) => 'Brak reklam z założenia\n${appLabel} działa bez reklam i monetyzacji opartej na danych.';
	@override String get noDataSelling => 'Brak sprzedaży danych\nTwoje dane zdrowotne nigdy nie są sprzedawane ani udostępniane stronom trzecim.';
	@override String get localStorage => 'Priorytet lokalny\nTwoje dane pozostają na urządzeniu.';
	@override String get privacyPolicy => 'Polityka prywatności';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$pl extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stworzone przez pojedynczego dewelopera';
	@override String description({required Object appLabel}) => '${appLabel} jest tworzony i utrzymywany przez jednego dewelopera, skoncentrowanego na tworzeniu spokojnego, szanującego prywatność oprogramowania zdrowotnego.\n\nOpinie są czytane osobiście i pomagają kształtować kierunek rozwoju aplikacji.';
	@override String get website => 'Strona internetowa';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$pl extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Podoba Ci się ${appLabel}?';
	@override String description({required Object appLabel}) => 'Twoja opinia pomaga uczynić ${appLabel} lepszym dla wszystkich.';
	@override String get rateApp => 'Oceń w Play Store';
	@override String get sendFeedback => 'Wyślij opinię';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$pl extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wielkość porcji';
	@override String get description => 'Dokładność szacunków w dużej mierze zależy od prawidłowej oceny wielkości porcji.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$pl extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metody przygotowania';
	@override String description({required Object appLabel}) => 'Sposób przygotowania potraw może znacząco zmienić jej wartość odżywczą. Szacunki ${appLabel} nie zawsze mogą uwzględniać te różnice.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$pl extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Składniki';
	@override String get description => 'Złożone dania z wieloma ukrytymi składnikami mogą powodować mniejszą dokładność oszacowań.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$pl extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ograniczenia bazy danych';
	@override String description({required Object appLabel}) => 'Baza produktów ${appLabel} jest obszerna, ale może nie zawierać każdego produktu lub wariantu.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$pl extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dokładność kalorii';
	@override String get description => 'To oszacowanie jest tak dokładne, jak dokładne są Twoje zarejestrowane kalorie i wydatki. Błędne zapisy spowodują niedokładne prognozy.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$pl extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czynniki biologiczne';
	@override String description({required Object appLabel}) => 'Rzeczywista utrata/przyrost masy zależy od metabolizmu, hormonów, snu, stresu, nawodnienia i innych indywidualnych czynników, których ${appLabel} nie może zmierzyć.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$pl extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Waga wodna i wahania';
	@override String get description => 'Codzienna waga może znacząco się wahać z powodu zatrzymania wody, trawienia i pory dnia. Oszacowanie nie uwzględnia tych codziennych zmian.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$pl extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Porada specjalisty';
	@override String get description => 'Nie używaj tego oszacowania do podejmowania decyzji medycznych. Zawsze konsultuj się z pracownikiem służby zdrowia lub zarejestrowanym dietetykiem w sprawie zarządzania wagą.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$pl extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Podstawowa przemiana materii (BMR) to liczba kalorii spalanych przez organizm w spoczynku, potrzebna do podtrzymania podstawowych funkcji, takich jak oddychanie i krążenie. BMR zależy od wieku, płci, wzrostu i wagi. Wyższe BMR oznacza naturalne spalanie większej ilości kalorii w spoczynku, często z powodu większej masy mięśniowej, młodszego wieku lub bycia płci męskiej. Niższe BMR zwykle wskazuje na mniejszą masę mięśniową, starszy wiek lub bycie płci żeńskiej.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$pl extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Całkowite dzienne wydatki energetyczne (TDEE) to całkowita liczba spalonych kalorii w ciągu dnia, obejmująca BMR oraz kalorie związane z aktywnością fizyczną i ruchem codziennym. TDEE zależy od BMR i poziomu aktywności. Wyższe TDEE oznacza spalanie więcej kalorii, zwykle z powodu większej aktywności lub wyższego BMR. Niższe TDEE sugeruje mniejszą aktywność lub niższy BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$pl extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dzienny cel';
	@override String get description => 'Dzienny cel to zalecane dzienne spożycie kalorii oparte na Twoim TDEE i celu wagowym. Przy utracie wagi spożywasz mniej kalorii niż TDEE. Przy utrzymaniu wagi dopasowujesz się do TDEE. Przy zwiększaniu masy spożywasz więcej kalorii niż TDEE. To pomaga osiągać pożądaną zmianę wagi w zdrowym tempie.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$pl extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak obliczono szacunek';
	@override String get description => 'Obliczamy Twoje TDEE (na podstawie profilu) i mnożymy je przez ułamek upływu dnia (godziny + minuty) / 24, aby oszacować spalone kalorie do tej pory.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$pl extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Porada specjalisty';
	@override String get description => 'Nie używaj tego oszacowania do podejmowania decyzji medycznych. Zawsze konsultuj się z lekarzem lub zarejestrowanym dietetykiem w sprawie zarządzania wagą.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$pl extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odczyt całkowitych spalonych kalorii';
	@override String get description => 'Pozwala aplikacji odczytać całkowite spalone kalorie z Health Connect.';
	@override String get usage => 'To uprawnienie jest używane do wyświetlania dziennego spalania kalorii w aplikacji, pomagając zrozumieć całkowite wydatki energetyczne w ciągu dnia.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$pl extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odczyt danych żywieniowych';
	@override String get description => 'Pozwala aplikacji odczytywać dane żywieniowe z Health Connect.';
	@override String get usage => 'To uprawnienie umożliwia aplikacji odczyt informacji żywieniowych, które mogły zostać zapisane przez inne aplikacje połączone z Health Connect, dając pełniejszy obraz Twojej diety.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$pl extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$pl._(TranslationsPl root) : this._root = root, super.internal(root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zapis danych żywieniowych';
	@override String get description => 'Pozwala aplikacji zapisywać dane żywieniowe do Health Connect.';
	@override String get usage => 'To uprawnienie pozwala aplikacji synchronizować zapisane posiłki z Health Connect, udostępniając dane żywieniowe innym aplikacjom zdrowotnym, których używasz.';
}

/// The flat map containing all translations for locale <pl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Polski',
			'flag' => '🇵🇱',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Wykonałeś zbyt wiele żądań. Proszę odczekaj chwilę, zanim spróbujesz ponownie.',
			'errors.networkError' => 'Błąd sieci. Sprawdź połączenie z internetem.',
			'errors.unknownError' => 'Coś poszło nie tak. Spróbuj ponownie później.',
			'errors.loadingProfileData' => 'Błąd podczas ładowania danych profilu',
			'errors.somethingWentWrong' => 'Coś poszło nie tak.',
			'errors.retry' => 'Ponów',
			'onboarding.welcome' => ({required Object appLabel}) => 'Witaj w ${appLabel}',
			'onboarding.subtitle' => 'Twój osobisty towarzysz żywieniowy zasilany przez AI',
			'onboarding.getStarted' => 'Zaczynamy',
			'onboarding.features.foodRecognition.title' => 'Inteligentne rozpoznawanie jedzenia',
			'onboarding.features.foodRecognition.description' => 'Zrób zdjęcie i pozwól AI zidentyfikować posiłek',
			'onboarding.features.aiAnalysis.title' => 'Analiza AI',
			'onboarding.features.aiAnalysis.description' => 'Otrzymaj natychmiastowe informacje o wartościach odżywczych na podstawie opisu',
			'onboarding.features.healthIntegration.title' => 'Integracja z Health Connect',
			'onboarding.features.healthIntegration.description' => 'Połącz z Health Connect, aby uzyskać lepsze informacje',
			'onboarding.gender.title' => 'Jakiej jesteś płci?',
			'onboarding.gender.description' => 'Płeć pomaga nam dokładnie obliczyć podstawową przemianę materii (BMR).',
			'onboarding.gender.next' => 'Dalej',
			'onboarding.height.title' => 'Jak masz na wzrost?',
			'onboarding.height.description' => 'Twój wzrost pomaga dokładnie obliczyć BMI i zapotrzebowanie energetyczne.',
			'onboarding.height.metric' => 'Metryczne',
			'onboarding.height.imperial' => 'Imperialne',
			'onboarding.height.next' => 'Dalej',
			'onboarding.weight.currentTitle' => 'Jaka jest Twoja aktualna waga?',
			'onboarding.weight.currentDescription' => 'Twoja aktualna waga jest niezbędna do spersonalizowania dziennych celów.',
			'onboarding.weight.targetTitle' => 'Jaka jest Twoja docelowa waga?',
			'onboarding.weight.targetDescription' => 'Ustawienie wagi docelowej pomaga określić długoterminowy plan.',
			'onboarding.weight.metric' => 'Metryczne',
			'onboarding.weight.imperial' => 'Imperialne',
			'onboarding.weight.next' => 'Dalej',
			'onboarding.age.title' => 'Kiedy masz urodziny?',
			'onboarding.age.description' => 'Twój wiek pomaga dokładnie obliczyć zapotrzebowanie kaloryczne.',
			'onboarding.age.next' => 'Dalej',
			'onboarding.bmiScale.underweight' => 'Niedowaga',
			'onboarding.bmiScale.healthy' => 'Zdrowy',
			'onboarding.bmiScale.overweight' => 'Nadwaga',
			'onboarding.bmiScale.obese' => 'Otyłość',
			'onboarding.bmiScale.categories.underweight' => 'Niedowaga',
			'onboarding.bmiScale.categories.healthyWeight' => 'Prawidłowa waga',
			'onboarding.bmiScale.categories.overweight' => 'Nadwaga',
			'onboarding.bmiScale.categories.obese' => 'Otyłość',
			'onboarding.bmiScale.messages.underweight' => 'Możemy pomóc zbudować zdrowy plan, by osiągnąć zrównoważoną wagę przy odżywczych posiłkach.',
			'onboarding.bmiScale.messages.healthy' => 'Świetnie! Jesteś w zdrowym przedziale. Pomożemy utrzymać Twoją witalność i energię.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} uprości twoją drogę dzięki śledzeniu wspieranemu przez AI, abyś komfortowo osiągnął cel.',
			'onboarding.bmiScale.messages.obese' => 'Jesteśmy tu, by wspierać Cię spersonalizowanymi wskazówkami i trwałymi strategiami dla Twoich celów zdrowotnych.',
			'onboarding.weightGoal.title' => 'Jaki jest Twój cel?',
			'onboarding.weightGoal.description' => 'Wybierz cel, który najlepiej opisuje to, co chcesz osiągnąć',
			'onboarding.activityLevel.title' => 'Jak bardzo jesteś aktywny?',
			'onboarding.activityLevel.description' => 'To pomaga nam dokładniej obliczyć Twoje dzienne zapotrzebowanie kaloryczne',
			'onboarding.healthConnect.title' => 'Połącz z Health Connect',
			'onboarding.healthConnect.description' => 'Wykorzystuj spalone kalorie w swoim dziennym celu i opcjonalnie udostępniaj zapisane posiłki w Health Connect.',
			'onboarding.healthConnect.overviewDescription' => 'Wykorzystuj spalone kalorie w swoim dziennym celu i opcjonalnie udostępniaj zapisane posiłki w Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Spalone kalorie',
			'onboarding.healthConnect.automaticTracking.description' => 'Odczytuj dzisiejszą całkowitą liczbę spalonych kalorii z Health Connect',
			'onboarding.healthConnect.caloriesBurned.title' => 'Spalone kalorie',
			'onboarding.healthConnect.caloriesBurned.description' => 'Odczytuj dzisiejszą całkowitą liczbę spalonych kalorii z Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Udostępniaj zapisane posiłki',
			'onboarding.healthConnect.progressInsights.description' => 'Zapisuj w Health Connect posiłki zarejestrowane w Calorify',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Udostępniaj zapisane posiłki',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Zapisuj w Health Connect posiłki zarejestrowane w Calorify',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Masz kontrolę',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Wybierz dowolne uprawnienie i zmieniaj dostęp w każdej chwili',
			'onboarding.healthConnect.userControl.title' => 'Masz kontrolę',
			'onboarding.healthConnect.userControl.description' => 'Wybierz dowolne uprawnienie i zmieniaj dostęp w każdej chwili',
			'onboarding.healthConnect.connected' => 'Health Connect połączony',
			'onboarding.healthConnect.notConnected' => 'Health Connect niepołączony',
			'onboarding.healthConnect.setup' => 'Skonfiguruj Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Pomiń na razie',
			'onboarding.healthConnect.statusConnected' => 'Health Connect jest połączony.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect został pomyślnie połączony!',
			'onboarding.healthConnect.statusNotConnected' => 'Wybierz funkcje Health Connect, które chcesz włączyć.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect jest częściowo połączony. Włącz pozostałe uprawnienie, aby korzystać z obu funkcji.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Zainstaluj lub zaktualizuj Health Connect, aby kontynuować.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect nie jest obsługiwany na tym urządzeniu.',
			'onboarding.healthConnect.installOrUpdate' => 'Zainstaluj lub zaktualizuj',
			'onboarding.healthConnect.manageAccess' => 'Zarządzaj dostępem',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Odmowa uprawnień. Włącz uprawnienia Health Connect w ustawieniach telefonu dla ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Błąd podczas konfiguracji Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nie jesteś sam',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Badania pokazują, że konsekwentne śledzenie jest najważniejszym czynnikiem długoterminowego sukcesu.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Dla ${age}-letniego ${gender} chcącego ${goal}, konsekwentne śledzenie jest najważniejszym czynnikiem sukcesu.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} ułatwia to 10x bardziej niż ręczne zapisywanie.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Gotowy, by zacząć?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Zrób zdjęcie posiłków, aby uzyskać natychmiastową analizę',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Loguj regularnie, aby zobaczyć wymierne postępy',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Śledź postęp codziennie, by pozostać zmotywowanym',
			'onboarding.reinforcement.trackingSuccess.button' => 'Zaczynamy',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'osoba',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'zdrowsze Ty',
			'onboarding.reinforcement.healthProfile.title' => 'Twój profil zdrowotny',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Na podstawie Twoich danych Twoje BMI wynosi ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Ukończmy profil, aby spersonalizować doświadczenie.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'zyskać',
			'onboarding.reinforcement.healthProfile.goalLose' => 'stracić',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Aby osiągnąć cel, będziesz ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Jesteś na docelowej wadze! Pomożemy Ci ją utrzymać.',
			'onboarding.reinforcement.healthProfile.button' => 'Zaczynamy',
			'onboarding.reinforcement.goalLifestyle.title' => 'Świetny początek!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Zrobiłeś pierwszy krok w kierunku ${goalText}. Skoro jesteś ${activityText}, ${appLabel} dostosuje Twoje cele do stylu życia.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Spersonalizowane cele kaloryczne',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Wykrywanie posiłków wspierane przez AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Szczegółowy rozkład makroskładników',
			'onboarding.reinforcement.goalLifestyle.button' => 'Zaczynamy',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'Twoje cele',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktywny',
			'tabs.dashboard' => 'Panel',
			'tabs.history' => 'Historia',
			'home.aiSummary.title' => 'Twoje podsumowanie AI',
			'home.aiSummary.logMore' => 'Zaloguj więcej posiłków w ciągu kilku następnych dni, aby otrzymać spersonalizowane wnioski AI.',
			'home.aiSummary.loading' => 'Ładowanie podsumowania...',
			'home.aiSummary.mealCount' => ({required Object count}) => 'Zalogowano ${count} posiłków',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Wskaźnik równowagi ${score}',
			'home.aiSummary.topFoods' => 'Najczęściej jedzone',
			'home.aiSummary.trendUp' => 'Kalorie w trendzie wzrostowym',
			'home.aiSummary.trendDown' => 'Kalorie w trendzie spadkowym',
			'home.aiSummary.trendSteady' => 'Kalorie utrzymują się stabilnie',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Zaktualizowano ${time}',
			'home.dailyGoal.title' => 'Ustaw swój dzienny cel',
			'home.dailyGoal.titleSet' => 'Twój dzienny cel',
			'home.dailyGoal.description' => 'Gotowy rozpocząć swoją drogę do lepszego samopoczucia? Ustaw poniżej swoje dzienne cele kaloryczne, aby rozpocząć postępy.',
			'home.dailyGoal.descriptionSet' => 'Twoja kompas jest ustawiony! To Twój dzienny cel kaloryczny, który Cię poprowadzi.',
			'home.dailyGoal.yourGoal' => 'Twój cel',
			'home.dailyGoal.goal' => 'Cel',
			'home.dailyGoal.dailyCalories' => 'Dzienne kalorie (kcal)',
			'home.dailyGoal.setGoal' => 'Ustaw cel',
			'home.dailyGoal.intake' => 'Spożycie',
			'home.dailyGoal.burned' => 'Spalone',
			'home.dailyGoal.weightImpact' => 'Wpływ na wagę',
			'home.dailyGoal.estLoss' => 'Szac. utrata',
			'home.dailyGoal.estGain' => 'Szac. przyrost',
			'home.dailyGoal.kcal' => 'kilokalorie (kcal)',
			'home.dailySummary.title' => 'Codzienne podsumowanie',
			'home.dailySummary.calories' => 'Kalorie',
			'home.dailySummary.carbs' => 'Węglowodany',
			'home.dailySummary.protein' => 'Białko',
			'home.dailySummary.fat' => 'Tłuszcz',
			'home.dailySummary.fiber' => 'Błonnik',
			'home.dailySummary.grams' => 'gramy',
			'home.dailySummary.chartAccessibilityLabel' => 'Wykres makroskładników',
			'home.intakeProgress.title' => 'Dzisiejszy podział makro',
			'home.intakeProgress.target' => 'Cel',
			'home.intakeProgress.current' => 'Aktualnie',
			'home.intakeHistory.title' => '7-dniowa historia makro',
			'home.intakeHistory.trendTitle' => 'Dzisiejszy trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Szczyt: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Brak historii',
			'home.intakeHistory.startLogging' => 'Zacznij zapisywać posiłki, aby zobaczyć tutaj\n7-dniowe trendy makro',
			'home.mealLog.title' => 'Zalogowane posiłki',
			'home.mealLog.emptyMessage' => 'Zrób zdjęcie ostatniego posiłku, aby zapisać je tutaj.',
			'home.mealLog.noMealsToday' => 'Brak zarejestrowanych posiłków na dziś',
			'home.mealLog.seeAllMeals' => 'Zobacz wszystkie posiłki',
			'home.mealDescription.title' => 'Szybkie dodawanie z AI',
			'home.mealDescription.description' => 'Opisz posiłek, a AI zajmie się szczegółami.',
			'home.mealDescription.hint' => 'np. Na śniadanie zjadłem dużą miskę owsianki z pokrojonym bananem i miarką białka ...',
			'home.mealDescription.analyzeMeal' => 'Analizuj posiłek',
			'home.favoriteMeals.title' => 'Ulubione posiłki',
			'home.favoriteMeals.description' => 'Szybko dodaj jeden ze swoich ulubionych posiłków.',
			'home.favoriteMeals.noFavorites' => 'Brak ulubionych posiłków.',
			'home.favoriteMeals.addFavoriteHint' => 'Kliknij gwiazdkę przy posiłku, aby dodać do ulubionych.',
			'home.favoriteMeals.seeAll' => 'Zobacz wszystkie',
			'home.favoriteMeals.add' => 'Dodaj',
			'home.mealSnap.title' => 'Zrób zdjęcie i śledź posiłek',
			'home.mealSnap.description' => 'Użyj aparatu, aby zrobić zdjęcie jedzenia do analizy AI.',
			'home.mealSnap.openCamera' => 'Otwórz aparat',
			'home.mealSnap.gallery' => 'Galeria',
			'home.mealSnap.compressingPhoto' => 'Optymalizowanie zdjęcia…',
			'home.mealSnap.uploadingPhoto' => 'Wysyłanie zdjęcia…',
			'home.connectHealth.title' => 'Synchronizuj z Health Connect',
			'home.connectHealth.description' => 'Wykorzystuj spalone kalorie w swoim celu i udostępniaj zapisane posiłki',
			'home.connectHealth.install' => 'Zainstaluj lub zaktualizuj',
			'home.connectHealth.dataUseDescription' => 'Wykorzystuj spalone kalorie w swoim celu i udostępniaj zapisane posiłki',
			'home.connectHealth.installOrUpdate' => 'Zainstaluj lub zaktualizuj',
			'home.connectHealth.connect' => 'Połącz',
			'history.noMeals' => 'Brak zarejestrowanych posiłków',
			'history.emptyMessage' => 'Zrób zdjęcie ostatniego posiłku, aby zapisać je tutaj.',
			'history.today' => 'Dziś',
			'history.yesterday' => 'Wczoraj',
			'meal.ohNo' => 'O nie!',
			'meal.delete' => 'Usuń',
			'meal.editMeal' => 'Edytuj posiłek',
			'meal.addMeal' => 'Dodaj posiłek',
			'meal.saveMeal' => 'Zapisz posiłek',
			'meal.save' => 'Zapisz',
			'meal.mealName' => 'Nazwa posiłku',
			'meal.mealNameHint' => 'np. Jajecznica z tostami',
			'meal.nameRequired' => 'Podaj nazwę posiłku przed zapisaniem.',
			'meal.mealQuantity' => 'Ilość posiłku',
			'meal.mealQuantityHint' => 'np. 1 miska, 2 kromki',
			'meal.timeOfMeal' => 'Czas posiłku',
			'meal.timeOfMealHint' => 'Wybierz godzinę, kiedy spożyłeś posiłek',
			'meal.mealType' => 'Rodzaj posiłku',
			'meal.nutrition.calories' => 'Kalorie',
			'meal.nutrition.carbs' => 'Węglowodany (g)',
			'meal.nutrition.protein' => 'Białko (g)',
			'meal.nutrition.fat' => 'Tłuszcz (g)',
			'meal.nutrition.fiber' => 'Błonnik (g)',
			'meal.deleteConfirmation.title' => 'Usuń posiłek',
			'meal.deleteConfirmation.message' => 'Czy na pewno chcesz usunąć ten wpis posiłku?',
			'meal.deleteConfirmation.cancel' => 'Anuluj',
			'meal.deleteConfirmation.delete' => 'Usuń',
			'meal.addedToLog' => 'Posiłek dodany do dziennika!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nie można dodać posiłku: ${error}',
			'meal.savedSuccessfully' => 'Posiłek dodany pomyślnie!',
			'meal.updatedSuccessfully' => 'Posiłek zaktualizowany pomyślnie!',
			'meal.errorSaving' => ({required Object error}) => 'Błąd podczas zapisywania posiłku: ${error}',
			'meal.removedFromFavorites' => 'Usunięto z ulubionych!',
			'meal.savedAsFavorite' => 'Posiłek zapisany jako ulubiony!',
			'meal.unfavorite' => 'Usuń z ulubionych',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nie można zaktualizować ulubionych: ${error}',
			'meal.feedbackThanks' => 'Dziękujemy za opinię!',
			'meal.reanalysisUpdated' => 'Zaktualizowano analizę posiłku na podstawie Twojej opinii.',
			'meal.failedToProcess' => ({required Object error}) => 'Nie udało się przetworzyć: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Nie udało się przetworzyć obrazu: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Błąd kompresji obrazu: ${error}',
			'meal.failedToSave' => 'Nie udało się zapisać danych. Spróbuj ponownie.',
			'meal.skip' => 'Pomiń',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Pytanie ${current} z ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Brak dostępnych pytań',
			'meal.questionFlow.next' => 'Dalej',
			'meal.questionFlow.continueLabel' => 'Kontynuuj',
			'meal.analysis.title' => 'Analiza Twojego posiłku',
			'meal.analysis.stepStarted' => 'Rozpoczynanie…',
			'meal.analysis.stepDecomposition' => 'Rozpoznawanie posiłku…',
			'meal.analysis.stepIngredients' => 'Dopasowywanie składników do danych odżywczych…',
			'meal.analysis.stepUncertainty' => 'Sprawdzanie pewności…',
			'meal.analysis.stepMealTypeQuestion' => 'Już prawie…',
			'meal.analysis.stepResult' => 'Finalizowanie wyniku…',
			'meal.analysis.stepError' => 'Coś poszło nie tak',
			'meal.analysis.stepDefault' => 'Analizowanie posiłku…',
			'meal.analysis.progressUnderstand' => 'Rozpoznawanie posiłku',
			'meal.analysis.progressMatch' => 'Wyszukiwanie wartości odżywczych składników',
			'meal.analysis.progressCheck' => 'Sprawdzanie porcji i pewności',
			'meal.analysis.progressMealType' => 'Wybór typu posiłku',
			'meal.analysis.progressFinish' => 'Obliczanie kalorii i makroskładników',
			'meal.analysis.detectedIngredientHeading' => 'Składniki, które zauważyliśmy',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} więcej',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'Wykryto ${count} składników',
			'meal.analysis.ingredientsPending' => 'Skanowanie składników…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '„${text}”',
			'meal.analysis.offlineTip0' => 'Wskazówka: Konsekwencja jest ważniejsza niż perfekcja — regularne zapisy ujawniają istotne wzorce.',
			'meal.analysis.offlineTip1' => 'Wskazówka: Do zdjęć najlepiej naturalne światło i ujęcie z góry — pomagają w ocenie porcji.',
			'meal.analysis.offlineTip2' => 'Wskazówka: Wspomnij o napojach, sosach i oleju do smażenia — to kalorie, które często są pomijane.',
			'meal.analysis.offlineTip3' => 'Wskazówka: Krótka informacja o porcji (1 miska, duża kawa) znacznie poprawia dokładność.',
			'meal.analysis.offlineTip4' => 'Wskazówka: Zapis po posiłku też buduje nawyk; perfekcja nie jest obowiązkowa.',
			'meal.analysis.offlineTip5' => 'Wskazówka: Powiedz, jak jedzenie było przygotowane, jeśli to znacząco zmienia kalorie (smażone vs pieczone).',
			'meal.localInference.reviewTitle' => 'Sprawdź wykryte składniki',
			'meal.localInference.reviewSubtitle' => 'Dane zostały zinterpretowane na Twoim urządzeniu. Popraw nazwy lub porcje przed obliczeniem wartości odżywczych.',
			'meal.localInference.mealName' => 'Nazwa posiłku',
			'meal.localInference.ingredient' => 'Składnik',
			'meal.localInference.grams' => 'Szacowana waga (g)',
			'meal.localInference.removeIngredient' => 'Usuń składnik',
			'meal.localInference.continueLabel' => 'Kontynuuj',
			'meal.localInference.invalidProposal' => 'Dodaj co najmniej jeden składnik i podaj dodatnią wartość gramów.',
			'meal.localInference.localUnavailable' => 'Analiza na urządzeniu jest obecnie niedostępna.',
			'meal.feedback.title' => 'Co wygląda nie tak?',
			'meal.feedback.subtitle' => 'Pomóż nam ulepszyć analizę, wybierając jeden lub więcej problemów.',
			'meal.feedback.tellUsMore' => 'Opowiedz więcej',
			'meal.feedback.describeIncorrect' => 'Opisz, co było nieprawidłowe',
			'meal.feedback.submit' => 'Wyślij',
			'meal.feedback.issueFoodIdentification' => 'Identyfikacja jedzenia',
			'meal.feedback.issuePortionSize' => 'Wielkość porcji',
			'meal.feedback.issueCalorieDistribution' => 'Rozkład kalorii',
			'meal.feedback.issueMacrosWrong' => 'Makroskładniki są niepoprawne',
			'meal.feedback.issueMissingItems' => 'Brakujące elementy',
			'meal.feedback.issueExtraItems' => 'Dodatkowe elementy',
			'meal.feedback.issueOther' => 'Inne',
			'favorites.title' => 'Ulubione',
			'favorites.empty' => 'Brak ulubionych posiłków.',
			'favorites.searchPlaceholder' => 'Szukaj ulubionych posiłków',
			'favorites.searchEmptyTitle' => 'Żadne ulubione nie pasują do wyszukiwania',
			'favorites.searchEmptySubtitle' => 'Spróbuj innej nazwy posiłku, ilości lub rodzaju posiłku.',
			'favorites.sortLabel' => 'Sortuj ulubione',
			'favorites.undo' => 'Cofnij',
			'favorites.removed' => ({required Object name}) => 'Usunięto ${name} z ulubionych',
			'favorites.sortOptions.recent' => 'Ostatnie',
			'favorites.sortOptions.calories' => 'Kalorie',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Brak danych profilu',
			'profile.yourProfile' => 'Twój profil',
			'profile.viewAndManage' => 'Przeglądaj i zarządzaj informacjami o zdrowiu',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'PODSTAWOWE INFORMACJE',
			'profile.sections.goalsAndActivity' => 'CELE I AKTYWNOŚĆ',
			'profile.sections.calculatedValues' => 'OBLICZONE WARTOŚCI',
			'profile.gender' => 'Płeć',
			'profile.height' => 'Wzrost',
			'profile.weight' => 'Waga',
			'profile.age' => 'Wiek',
			'profile.weightGoal' => 'Cel wagowy',
			'profile.targetWeight' => 'Waga docelowa',
			'profile.activityLevel' => 'Poziom aktywności',
			'profile.healthMetrics' => 'Metryki zdrowotne',
			'profile.notSet' => 'Nie ustawiono',
			'profile.years' => 'lat',
			'profile.updatedSuccessfully' => 'Profil zaktualizowany pomyślnie!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Dzienny cel',
			'profile.calculatedValues.calPerDay' => 'cal/dzień',
			'profile.calculatedValues.notAvailable' => 'N/D',
			'healthScore.title' => 'Wskaźnik zdrowia',
			'healthScore.whyThisScore' => 'Dlaczego taki wynik?',
			'healthScore.note' => 'Wynik jest oszacowaniem AI opartym na rozpoznanych składnikach i gęstości odżywczej. Zawsze konsultuj się ze specjalistą w sprawach diety.',
			'healthScore.unhealthy' => 'Niezdrowy',
			'healthScore.healthy' => 'Zdrowy',
			'healthScore.neutral' => 'Neutralny',
			'editProfile.title' => 'Edytuj profil',
			'editProfile.sections.personalInformation' => 'DANE OSOBOWE',
			'editProfile.sections.physicalMeasurements' => 'POMIARY',
			'editProfile.sections.goalsAndActivity' => 'CELE I AKTYWNOŚĆ',
			'editProfile.gender' => 'Płeć',
			'editProfile.dateOfBirth' => 'Data urodzenia',
			'editProfile.height' => 'Wzrost',
			'editProfile.weight' => 'Waga',
			'editProfile.weightGoal' => 'Cel wagowy',
			'editProfile.activityLevel' => 'Poziom aktywności',
			'editProfile.metric' => 'Metryczne',
			'editProfile.imperial' => 'Imperialne',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'funty (lb)',
			'editProfile.metricCm' => 'Metryczne (cm)',
			'editProfile.imperialFtIn' => 'Imperialne (ft/in)',
			'editProfile.metricKg' => 'Metryczne (kg)',
			'editProfile.imperialLbs' => 'Imperialne (lbs)',
			'editProfile.genders.male' => 'Mężczyzna',
			'editProfile.genders.female' => 'Kobieta',
			'editProfile.genders.other' => 'Inna',
			'editProfile.weightGoals.loseWeight.name' => 'Utrata wagi',
			'editProfile.weightGoals.loseWeight.description' => 'Stwórz deficyt kaloryczny, aby schudnąć',
			'editProfile.weightGoals.maintainWeight.name' => 'Utrzymanie wagi',
			'editProfile.weightGoals.maintainWeight.description' => 'Utrzymaj swoją obecną wagę',
			'editProfile.weightGoals.gainWeight.name' => 'Przyrost masy',
			'editProfile.weightGoals.gainWeight.description' => 'Stwórz nadwyżkę kaloryczną, aby przytyć',
			'editProfile.activityLevels.sedentary.name' => 'Siedzący tryb',
			'editProfile.activityLevels.sedentary.description' => 'Mało lub brak ćwiczeń',
			'editProfile.activityLevels.lightlyActive.name' => 'Lekko aktywny',
			'editProfile.activityLevels.lightlyActive.description' => 'Lekkie ćwiczenia 1-3 dni/tydz.',
			'editProfile.activityLevels.moderatelyActive.name' => 'Umiarkowanie aktywny',
			'editProfile.activityLevels.moderatelyActive.description' => 'Umiarkowane ćwiczenia 3-5 dni/tydz.',
			'editProfile.activityLevels.veryActive.name' => 'Bardzo aktywny',
			'editProfile.activityLevels.veryActive.description' => 'Intensywne ćwiczenia 6-7 dni/tydz.',
			'editProfile.activityLevels.extremelyActive.name' => 'Ekstremalnie aktywny',
			'editProfile.activityLevels.extremelyActive.description' => 'Bardzo intensywne ćwiczenia lub praca fizyczna',
			'settings.title' => 'Ustawienia',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALIZACJA',
			'settings.sections.notifications' => 'POWIADOMIENIA',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.localInference' => 'ANALIZA NA URZĄDZENIU',
			'settings.sections.supportAndLegal' => 'POMOC I DANE PRAWNE',
			'settings.sections.about' => 'O APLIKACJI',
			'settings.sections.dangerZone' => 'STREFA RYZYKA',
			'settings.sections.developer' => 'DEWELOPER',
			'settings.editProfile.title' => 'Edytuj profil',
			'settings.editProfile.subtitle' => 'Zaktualizuj swoje dane osobowe',
			'settings.language.title' => 'Język',
			'settings.language.subtitle' => 'Wybierz preferowany język',
			'settings.language.searchHint' => 'Szukaj języków...',
			'settings.language.noResults' => 'Brak wyników',
			'settings.heightUnit.title' => 'Jednostka wzrostu',
			'settings.weightUnit.title' => 'Jednostka wagi',
			'settings.mealReminders.title' => 'Przypomnienia o posiłkach',
			'settings.mealReminders.subtitle' => 'Pozostań na ścieżce dzięki przypomnieniom',
			'settings.localInference.title' => 'Analiza posiłków na urządzeniu',
			'settings.localInference.subtitle' => 'Interpretuj obsługiwane posiłki za pomocą Gemini Nano przed obliczeniem wartości odżywczych',
			'settings.localInference.unavailable' => 'Niedostępne na tym urządzeniu',
			'settings.localInference.rolloutUnavailable' => 'Wykryto odpowiedni sprzęt, ale ta funkcja nie jest włączona w tej wersji aplikacji',
			'settings.localInference.modelSetup' => 'Gemini Nano musi zakończyć pobieranie, zanim będzie można to włączyć',
			'settings.localInference.useLocalTitle' => 'Używaj analizy na urządzeniu',
			'settings.localInference.useLocalSubtitle' => 'Opcjonalnie, domyślnie wyłączone. Wyniki mogą być mniej wiarygodne w przypadku złożonych posiłków.',
			'settings.localInference.disclosureTitle' => 'Zanim włączysz analizę na urządzeniu',
			'settings.localInference.disclosureBody' => 'Gemini Nano potrafi identyfikować składniki i szacować porcje na obsługiwanych urządzeniach Android. Twoja zweryfikowana propozycja składników jest wysyłana do Calorify w celu weryfikacji wartości odżywczych USDA i obliczeń.',
			'settings.localInference.disclosureLimit1' => 'Złożone dania, ukryte składniki i wielkość porcji mogą zostać błędnie zidentyfikowane.',
			'settings.localInference.disclosureLimit2' => 'Model może być niedostępny podczas pobierania, gdy jest zajęty, działa w tle lub jest ograniczony przez urządzenie.',
			'settings.localInference.disclosureLimit3' => 'Jeśli interpretacja lokalna nie może zostać zakończona, ta wersja beta automatycznie wysyła oryginalny opis posiłku do Calorify w celu analizy w chmurze.',
			'settings.localInference.acknowledgement' => 'Rozumiem, że powinienem sprawdzać wykryte składniki i porcje.',
			'settings.localInference.enable' => 'Potwierdź i włącz',
			'settings.localInference.cancel' => 'Anuluj',
			'settings.theme.title' => 'Motyw',
			'settings.theme.light' => 'Jasny',
			'settings.theme.dark' => 'Ciemny',
			'settings.theme.system' => 'Systemowy',
			'settings.sendFeedback.title' => 'Wyślij opinię',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Pomóż ulepszyć ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} — opinia o aplikacji',
			'settings.sendFeedback.emailBodyPrefix' => 'Prosimy o podanie opinii poniżej:',
			'settings.sendFeedback.appVersion' => 'Wersja aplikacji',
			'settings.sendFeedback.device' => 'Urządzenie',
			'settings.sendFeedback.osVersion' => 'Wersja systemu',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Eksportuj historię posiłków',
			'settings.exportMealHistory.subtitle' => 'Udostępnij plik CSV z zapisanymi posiłkami',
			'settings.exportMealHistory.shareText' => 'Eksport historii posiłków Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Nie można wyeksportować historii posiłków: ${error}',
			'settings.clearAllData.title' => 'Wyczyść wszystkie dane',
			'settings.clearAllData.subtitle' => 'Usuń dane Calorify zapisane na tym urządzeniu',
			'settings.clearAllData.localOnlySubtitle' => 'Usuń dane Calorify zapisane na tym urządzeniu',
			'settings.clearAllData.confirmationTitle' => 'Wyczyścić wszystkie dane?',
			'settings.clearAllData.confirmationMessage' => 'Spowoduje to trwałe usunięcie zapisanych posiłków, ulubionych i ustawień profilu z tego urządzenia. Posiłkami udostępnionymi już w Health Connect i dostępem do Health Connect zarządza się osobno w Ustawienia > Health Connect.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Spowoduje to trwałe usunięcie zapisanych posiłków, ulubionych i ustawień profilu z tego urządzenia. Posiłkami udostępnionymi już w Health Connect i dostępem do Health Connect zarządza się osobno w Ustawienia > Health Connect.',
			'settings.clearAllData.cancel' => 'Anuluj',
			'settings.clearAllData.clearEverything' => 'Wyczyść wszystko',
			'settings.debugOptions.title' => 'Opcje debugowania',
			'settings.developerModeEnabled' => 'Tryb dewelopera włączony!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Wyświetl i zarządzaj uprawnieniami',
			'settings.healthConnect.unavailable.title' => 'Health Connect niedostępny',
			'settings.healthConnect.unavailable.description' => 'Health Connect nie jest obsługiwany na tym urządzeniu.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect nie jest obsługiwany na tym urządzeniu.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect wymaga uwagi',
			'settings.healthConnect.updateRequired.description' => 'Zainstaluj lub zaktualizuj Health Connect przed zarządzaniem dostępem.',
			'settings.healthConnect.updateRequired.action' => 'Zainstaluj lub zaktualizuj',
			'settings.healthConnect.permissions.title' => 'Uprawnienia',
			'settings.healthConnect.permissions.description' => 'Żądane są następujące uprawnienia, aby zapewnić integrację z Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Przyznane',
			'settings.healthConnect.permissions.notGranted' => 'Nieprzyznane',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Odczyt całkowitych spalonych kalorii',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Pozwala aplikacji odczytać całkowite spalone kalorie z Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'To uprawnienie jest używane do wyświetlania dziennego spalania kalorii w aplikacji, pomagając zrozumieć całkowite wydatki energetyczne w ciągu dnia.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Odczyt danych żywieniowych',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Pozwala aplikacji odczytywać dane żywieniowe z Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'To uprawnienie umożliwia aplikacji odczyt informacji żywieniowych, które mogły zostać zapisane przez inne aplikacje połączone z Health Connect, dając pełniejszy obraz Twojej diety.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Zapis danych żywieniowych',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Pozwala aplikacji zapisywać dane żywieniowe do Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'To uprawnienie pozwala aplikacji synchronizować zapisane posiłki z Health Connect, udostępniając dane żywieniowe innym aplikacjom zdrowotnym, których używasz.',
			'settings.healthConnect.managePermissions' => 'Zarządzaj uprawnieniami',
			'settings.healthConnect.openSettings' => 'Otwórz ustawienia Health Connect',
			'settings.healthConnect.disconnect' => 'Odłącz Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Odłączyć Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify utraci dostęp do Health Connect. Dane już tam zapisane nie zostaną usunięte.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Odłącz',
			'settings.healthConnect.deleteSyncedMeals' => 'Usuń posiłki Calorify z Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Usunąć zsynchronizowane posiłki?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Usunąć z Health Connect posiłki zsynchronizowane przez tę wersję Calorify? Lokalny dziennik posiłków nie ulegnie zmianie. Starsze wpisy Calorify mogą nadal wymagać usunięcia za pomocą opcji Zarządzaj danymi w Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Usuń zsynchronizowane posiłki',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Posiłki Calorify zostały usunięte z Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Nie udało się usunąć zsynchronizowanych posiłków. Spróbuj ponownie.',
			'settings.healthConnect.connectionPartial' => 'Niektóre funkcje Health Connect są włączone.',
			'settings.healthConnect.connectionComplete' => 'Obie funkcje Health Connect są włączone.',
			'settings.healthConnect.actionFailed' => 'Nie udało się otworzyć Health Connect. Spróbuj ponownie.',
			'settings.healthConnect.requestPermissions' => 'Poproś o uprawnienia',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Żądanie uprawnień zostało anulowane lub nie powiodło się. Spróbuj ponownie lub przyznaj uprawnienia ręcznie w ustawieniach Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Nie można poprosić o uprawnienia. Spróbuj ponownie lub przyznaj uprawnienia ręcznie w ustawieniach Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Proszę czekać...',
			'settings.about.title' => 'O aplikacji',
			'settings.about.tagline' => 'Szybkie, darmowe i zaprojektowane z myślą o prywatności',
			'settings.about.ourStory.title' => 'Nasza historia',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} narodził się z prostego rozczarowania: większość aplikacji do liczenia kalorii jest albo zbyt skomplikowana, wymaga ciągłego ręcznego wprowadzania, pobiera wysokie opłaty subskrypcyjne albo kompromituje prywatność.\n\nJako pojedynczy deweloper chciałem stworzyć coś prostszego i uczciwszego — aplikację, która używa AI, żeby zmniejszyć nakład pracy, pozostaje szybka i darmowa w użyciu oraz traktuje Twoje dane zdrowotne z szacunkiem.\n\n${appLabel} to aplikacja, której sam bym oczekiwał: bez kont, bez śledzenia, bez reklam — tylko jasne, praktyczne wnioski i Twoje cele zdrowotne.',
			'settings.about.privacy.title' => 'Twoja prywatność ma znaczenie',
			'settings.about.privacy.description' => 'Prywatność to nie dodatek — to zasada projektowa. Oto, co to oznacza w praktyce:',
			'settings.about.privacy.noAccounts' => 'Brak wymaganych kont\nKorzystaj z aplikacji od razu. Bez rejestracji, bez tworzenia tożsamości.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Ograniczona analityka i diagnostyka\n${appLabel} wykorzystuje podstawowe zdarzenia w aplikacji i diagnostykę awarii, aby zwiększać niezawodność. Wartości danych zdrowotnych nie są wykorzystywane do reklam ani sprzedawane.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Ograniczona analityka i diagnostyka\n${appLabel} wykorzystuje podstawowe zdarzenia w aplikacji i diagnostykę awarii, aby zwiększać niezawodność. Wartości danych zdrowotnych nie są wykorzystywane do reklam ani sprzedawane.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Brak reklam z założenia\n${appLabel} działa bez reklam i monetyzacji opartej na danych.',
			'settings.about.privacy.noDataSelling' => 'Brak sprzedaży danych\nTwoje dane zdrowotne nigdy nie są sprzedawane ani udostępniane stronom trzecim.',
			'settings.about.privacy.localStorage' => 'Priorytet lokalny\nTwoje dane pozostają na urządzeniu.',
			'settings.about.privacy.privacyPolicy' => 'Polityka prywatności',
			'settings.about.developer.title' => 'Stworzone przez pojedynczego dewelopera',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} jest tworzony i utrzymywany przez jednego dewelopera, skoncentrowanego na tworzeniu spokojnego, szanującego prywatność oprogramowania zdrowotnego.\n\nOpinie są czytane osobiście i pomagają kształtować kierunek rozwoju aplikacji.',
			'settings.about.developer.website' => 'Strona internetowa',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Podoba Ci się ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Twoja opinia pomaga uczynić ${appLabel} lepszym dla wszystkich.',
			'settings.about.feedback.rateApp' => 'Oceń w Play Store',
			'settings.about.feedback.sendFeedback' => 'Wyślij opinię',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify, wersja ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Kompilacja ${buildNumber}',
			'reminders.title' => 'Pozostań na kursie dzięki przypomnieniom',
			'reminders.description' => 'Otrzymuj delikatne przypomnienia o zapisywaniu posiłków i utrzymaniu spójności w celach żywieniowych',
			'reminders.notificationsEnabled' => 'Powiadomienia włączone',
			'reminders.notificationsDisabled' => 'Powiadomienia wyłączone',
			'reminders.enabledSubtitle' => 'Będziesz otrzymywać przypomnienia o posiłkach',
			'reminders.disabledSubtitle' => 'Włącz powiadomienia, aby otrzymywać przypomnienia o posiłkach',
			'reminders.mealReminders' => 'Przypomnienia o posiłkach',
			'reminders.breakfast' => 'Śniadanie',
			'reminders.lunch' => 'Obiad',
			'reminders.dinner' => 'Kolacja',
			'reminders.snack' => 'Przekąska',
			'reminders.unknown' => 'Nieznane',
			'reminders.change' => 'Zmień',
			'reminders.enableNotifications' => 'Włącz powiadomienia',
			'reminders.skipForNow' => 'Pomiń na razie',
			'reminders.saveChanges' => 'Zapisz zmiany',
			'reminders.enabledSuccessfully' => 'Powiadomienia włączone pomyślnie!',
			'reminders.permissionDenied' => 'Odmowa uprawnień do powiadomień',
			'reminders.errorEnabling' => ({required Object error}) => 'Błąd podczas włączania powiadomień: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Błąd podczas kończenia konfiguracji: ${error}',
			'notifications.breakfast.title' => 'Czas na śniadanie! 🍳',
			'notifications.breakfast.body' => 'Nie zapomnij zapisać swojego śniadania',
			'notifications.lunch.title' => 'Czas na lunch! 🥗',
			'notifications.lunch.body' => 'Czas zapisać obiad',
			'notifications.dinner.title' => 'Czas na kolację! 🍽️',
			'notifications.dinner.body' => 'Nie zapomnij zapisać kolacji',
			'notifications.snack.title' => 'Czas na przekąskę! 🍎',
			'notifications.snack.body' => 'Czas na zdrową przekąskę',
			'notifications.test.title' => 'Powiadomienie testowe',
			'login.title' => 'Logowanie',
			'login.signInWithGoogle' => 'Zaloguj się przez Google',
			'login.signInFailed' => 'Logowanie przez Google nie powiodło się lub zostało anulowane.',
			'disclaimer.pleaseNote' => 'Uwaga',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} dostarcza szacunkowe informacje żywieniowe. Dokładność zależy od Twoich danych i wariantów potraw. Używaj jako wskazówki, nie jako ostatecznego źródła. W przypadku indywidualnej porady dietetycznej skonsultuj się ze specjalistą.',
			'disclaimer.snap.portionSize.title' => 'Wielkość porcji',
			'disclaimer.snap.portionSize.description' => 'Dokładność szacunków w dużej mierze zależy od prawidłowej oceny wielkości porcji.',
			'disclaimer.snap.preparationMethods.title' => 'Metody przygotowania',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Sposób przygotowania potraw może znacząco zmienić jej wartość odżywczą. Szacunki ${appLabel} nie zawsze mogą uwzględniać te różnice.',
			'disclaimer.snap.ingredients.title' => 'Składniki',
			_ => null,
		} ?? switch (path) {
			'disclaimer.snap.ingredients.description' => 'Złożone dania z wieloma ukrytymi składnikami mogą powodować mniejszą dokładność oszacowań.',
			'disclaimer.snap.databaseLimitations.title' => 'Ograniczenia bazy danych',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Baza produktów ${appLabel} jest obszerna, ale może nie zawierać każdego produktu lub wariantu.',
			'disclaimer.weightEstimate.title' => 'O szacowanej zmianie wagi',
			'disclaimer.weightEstimate.description' => 'Przewidywana zmiana wagi to teoretyczne oszacowanie oparte na prostym modelu kalorie w vs kalorie out. Ma charakter motywacyjny, a nie prognozę rzeczywistej wagi.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Dokładność kalorii',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'To oszacowanie jest tak dokładne, jak dokładne są Twoje zarejestrowane kalorie i wydatki. Błędne zapisy spowodują niedokładne prognozy.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Czynniki biologiczne',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Rzeczywista utrata/przyrost masy zależy od metabolizmu, hormonów, snu, stresu, nawodnienia i innych indywidualnych czynników, których ${appLabel} nie może zmierzyć.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Waga wodna i wahania',
			'disclaimer.weightEstimate.waterWeight.description' => 'Codzienna waga może znacząco się wahać z powodu zatrzymania wody, trawienia i pory dnia. Oszacowanie nie uwzględnia tych codziennych zmian.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Porada specjalisty',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Nie używaj tego oszacowania do podejmowania decyzji medycznych. Zawsze konsultuj się z pracownikiem służby zdrowia lub zarejestrowanym dietetykiem w sprawie zarządzania wagą.',
			'disclaimer.healthMetrics.description' => 'Te metryki pomagają zrozumieć zapotrzebowanie energetyczne organizmu i kierować celami żywieniowymi.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Podstawowa przemiana materii (BMR) to liczba kalorii spalanych przez organizm w spoczynku, potrzebna do podtrzymania podstawowych funkcji, takich jak oddychanie i krążenie. BMR zależy od wieku, płci, wzrostu i wagi. Wyższe BMR oznacza naturalne spalanie większej ilości kalorii w spoczynku, często z powodu większej masy mięśniowej, młodszego wieku lub bycia płci męskiej. Niższe BMR zwykle wskazuje na mniejszą masę mięśniową, starszy wiek lub bycie płci żeńskiej.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Całkowite dzienne wydatki energetyczne (TDEE) to całkowita liczba spalonych kalorii w ciągu dnia, obejmująca BMR oraz kalorie związane z aktywnością fizyczną i ruchem codziennym. TDEE zależy od BMR i poziomu aktywności. Wyższe TDEE oznacza spalanie więcej kalorii, zwykle z powodu większej aktywności lub wyższego BMR. Niższe TDEE sugeruje mniejszą aktywność lub niższy BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Dzienny cel',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Dzienny cel to zalecane dzienne spożycie kalorii oparte na Twoim TDEE i celu wagowym. Przy utracie wagi spożywasz mniej kalorii niż TDEE. Przy utrzymaniu wagi dopasowujesz się do TDEE. Przy zwiększaniu masy spożywasz więcej kalorii niż TDEE. To pomaga osiągać pożądaną zmianę wagi w zdrowym tempie.',
			'disclaimer.calorieExpenditure.title' => 'Szacunkowe spalanie kalorii',
			'disclaimer.calorieExpenditure.description' => 'Gdy dane z Health Connect są niedostępne, szacujemy dzisiejsze spalone kalorie używając BMR i poziomu aktywności (TDEE), skalując według części dnia, która już minęła.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Jak obliczono szacunek',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Obliczamy Twoje TDEE (na podstawie profilu) i mnożymy je przez ułamek upływu dnia (godziny + minuty) / 24, aby oszacować spalone kalorie do tej pory.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Porada specjalisty',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Nie używaj tego oszacowania do podejmowania decyzji medycznych. Zawsze konsultuj się z lekarzem lub zarejestrowanym dietetykiem w sprawie zarządzania wagą.',
			'localNutritionPhase4.portionSmaller' => 'Mniejsza',
			'localNutritionPhase4.portionEstimated' => 'Szacowana',
			'localNutritionPhase4.portionLarger' => 'Większa',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Która porcja była najbliższa dla ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Który to był posiłek?',
			'localNutritionPhase4.localNutritionTip' => 'Obliczono na podstawie zweryfikowanych lokalnych danych żywieniowych.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Pobierz dane żywieniowe',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Używaj zweryfikowanych wierszy USDA i deterministycznych obliczeń na tym urządzeniu, gdy wszystkie składniki są objęte.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Lokalne dane żywieniowe nie są dostępne dla tej wersji aplikacji.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Nie pobrano zweryfikowanego pakietu danych żywieniowych.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Pobieranie i weryfikowanie danych żywieniowych…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Pakiet ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} wierszy USDA w pamięci podręcznej · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Sprawdź aktualizacje',
			'localNutritionPhase4.offlineNutritionClear' => 'Wyczyść lokalne dane żywieniowe',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Wyczyścić lokalne dane żywieniowe?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Spowoduje to usunięcie pobranego pakietu USDA i pamięci podręcznej wyszukiwania. Zapisane posiłki zachowają dokładną migawkę wartości odżywczych użytą podczas zapisywania.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Wyczyść dane',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Nie udało się pobrać i zweryfikować lokalnych danych żywieniowych: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Lokalne dane żywieniowe zostały wyczyszczone',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Wstecz',
			'watch.common.cancel' => 'Anuluj',
			'watch.common.delete' => 'Usuń',
			'watch.common.retry' => 'Ponów',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Składnik odżywczy',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} g',
			'watch.nutrition.protein' => 'Białko',
			'watch.nutrition.carbs' => 'Węglowodany',
			'watch.nutrition.fat' => 'Tłuszcz',
			'watch.nutrition.fiber' => 'Błonnik',
			'watch.sync.syncWithPhone' => 'Synchronizuj z telefonem',
			'watch.sync.syncing' => 'Synchronizowanie…',
			'watch.sync.synced' => 'Zsynchronizowano',
			'watch.sync.syncedJustNow' => 'Zsynchronizowano właśnie',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Zsynchronizowano ${minutes}m temu',
			'watch.sync.failed' => 'Synchronizacja nie powiodła się',
			'watch.sync.phoneDisconnected' => 'Telefon odłączony',
			'watch.sync.tapToSync' => 'Dotknij, aby zsynchronizować',
			'watch.sync.refreshFailed' => 'Nie można odświeżyć. Sprawdź telefon.',
			'watch.sync.openPhone' => 'Otwórz Calorify na telefonie, a następnie dotknij Odśwież.',
			'watch.home.today' => 'Dziś',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => 'Spożyto ${consumed} kcal z ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} powyżej celu',
			'watch.home.remaining' => ({required Object calories}) => '${calories} pozostało',
			'watch.home.left' => ({required Object calories}) => '${calories} pozostało',
			'watch.home.goal' => ({required Object calories}) => 'Cel: ${calories} kcal',
			'watch.home.logMeal' => 'Zapisz posiłek',
			'watch.home.todayMeals' => 'Posiłki dzisiaj',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Posiłki dzisiaj, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Pokaż ${count} więcej',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} dodatkowych posiłków, dotknij, aby zobaczyć wszystkie',
			'watch.home.noMeals' => 'Brak zapisanych posiłków',
			'watch.home.noMealsSemantics' => 'Dzisiaj brak zapisanych posiłków',
			'watch.home.tapLog' => 'Dotknij Zapisz, aby zacząć',
			'watch.home.removedFromQueue' => 'Posiłek usunięty z kolejki offline.',
			'watch.home.removedOffline' => 'Posiłek usunięty offline. Zostanie zsynchronizowany po ponownym połączeniu telefonu.',
			'watch.home.deleteFailed' => 'Nie można usunąć posiłku',
			'watch.history.title' => 'Posiłki dzisiaj',
			'watch.history.refresh' => 'Odśwież posiłki',
			'watch.history.loadFailed' => 'Nie można załadować posiłków',
			'watch.history.syncFailed' => 'Nie można zsynchronizować',
			'watch.history.emptyTitle' => 'Brak posiłków',
			'watch.history.emptyMessage' => 'Zapisz posiłek na ekranie głównym, aby zobaczyć go tutaj.',
			'watch.favorites.title' => 'Ulubione',
			'watch.favorites.refresh' => 'Odśwież ulubione',
			'watch.favorites.loadFailed' => 'Nie można załadować ulubionych',
			'watch.favorites.syncFailed' => 'Nie można zsynchronizować',
			'watch.favorites.emptyTitle' => 'Brak ulubionych',
			'watch.favorites.emptyMessage' => 'Oznacz posiłki gwiazdką w aplikacji na telefonie, aby móc je tu zapisywać jednym dotknięciem.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} kcal. Dotknij, aby zapisać.',
			'watch.favorites.logged' => ({required Object name}) => '${name} zapisano!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} zapisano offline. Zostanie zsynchronizowany po ponownym połączeniu telefonu.',
			'watch.favorites.saveFailed' => 'Nie można zapisać posiłku. Spróbuj ponownie.',
			'watch.favorites.log' => 'Zapisz',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kcal, zapisano o ${time}.',
			'watch.meal.longPressDelete' => 'Naciśnij długo, aby usunąć.',
			'watch.meal.deleteTitle' => 'Usunąć posiłek?',
			'watch.voice.title' => 'Zapisywanie posiłku głosem',
			'watch.voice.processing' => 'Analizuję posiłek…',
			'watch.voice.processingDescription' => 'Szacowanie porcji i wartości odżywczych',
			'watch.voice.listening' => 'Słucham',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Zatrzymaj nagrywanie',
			'watch.voice.start' => 'Dotknij, aby rozpocząć nagrywanie',
			'watch.voice.starting' => 'Uruchamianie mikrofonu…',
			'watch.voice.prompt' => 'Dotknij, a następnie opisz posiłek',
			'watch.voice.tapToRetry' => 'Dotknij, aby spróbować ponownie',
			'watch.voice.example' => 'Spróbuj „2 rotis z dal”',
			'watch.voice.unavailable' => 'Wprowadzanie głosowe jest niedostępne. Sprawdź uprawnienia mikrofonu w ustawieniach zegarka.',
			'watch.voice.didNotStart' => 'Mikrofon nie wystartował. Dotknij, aby spróbować ponownie.',
			'watch.voice.startFailed' => 'Nie można rozpocząć nagrywania. Sprawdź uprawnienia mikrofonu.',
			'watch.voice.allowMicrophone' => 'Zezwól na dostęp do mikrofonu, aby zapisywać posiłki głosem.',
			'watch.voice.needsConnection' => 'Rozpoznawanie mowy wymaga połączenia. Dotknij, aby spróbować ponownie.',
			'watch.voice.microphoneUnavailable' => 'Mikrofon niedostępny. Dotknij, aby spróbować ponownie.',
			'watch.voice.microphoneBusy' => 'Mikrofon jest zajęty. Poczekaj chwilę i spróbuj ponownie.',
			'watch.voice.languageUnsupported' => 'Wprowadzanie głosowe nie obsługuje języka zegarka.',
			'watch.voice.temporarilyBusy' => 'Wprowadzanie głosowe jest chwilowo zajęte. Poczekaj i spróbuj ponownie.',
			'watch.voice.notRecognized' => 'Nie zrozumiałem. Dotknij mikrofonu i spróbuj ponownie.',
			'watch.voice.noSpeech' => 'Nie wykryto mowy. Dotknij mikrofonu, aby spróbować ponownie.',
			'watch.voice.analysisFailed' => 'Analiza nie powiodła się. Spróbuj ponownie.',
			'watch.voice.mealNotIdentified' => 'Nie rozpoznano posiłku. Spróbuj opisać go inaczej.',
			'watch.result.title' => 'Szczegóły posiłku',
			'watch.result.savedOffline' => 'Zapisano offline',
			'watch.result.logged' => 'Zapisano!',
			'watch.result.mealFound' => 'Znaleziono posiłek',
			'watch.result.estimatedEnergy' => 'Szacowana energia',
			'watch.result.logMeal' => 'Zapisz posiłek',
			'watch.result.logging' => 'Zapisywanie…',
			'watch.result.logAnother' => 'Zapisz kolejny',
			'watch.result.goingBack' => 'Powrót…',
			'watch.result.savedOfflineMessage' => 'Posiłek zapisano offline. Zostanie zsynchronizowany po ponownym połączeniu telefonu.',
			'watch.result.saveFailed' => 'Nie można zapisać posiłku. Spróbuj ponownie.',
			'common.betaTag' => 'Wersja beta',
			'common.close' => 'Zamknij',
			'common.kContinue' => 'Kontynuuj',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Podoba Ci się ${appLabel}?',
			'feedbackRating.yes' => 'Tak, podoba mi się',
			'feedbackRating.no' => 'Nie bardzo',
			'feedbackRating.rateStepHeading' => 'Oceń w Play Store',
			'feedbackRating.emailStepHeading' => 'Wyślij opinię mailem',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Krótka ocena pomaga innym znaleźć ${appLabel} i wspiera dalszy rozwój. Czy poświęcisz chwilę, by wystawić opinię?',
			'feedbackRating.shareFeedbackViaEmail' => 'Twoja opinia kształtuje przyszłość aplikacji — czy chciałbyś podzielić się uwagami mailem? Czytamy każdą wiadomość.',
			'feedbackRating.rateCta' => 'Oceń w Play Store',
			'feedbackRating.maybeLater' => 'Może później',
			'feedbackRating.sendFeedback' => 'Wyślij opinię',
			'feedbackRating.noThanks' => 'Nie, dziękuję',
			'feedbackRating.aboutUsDescription' => 'Stworzone z dbałością przez mały zespół. Skupiamy się na prywatności, prostocie i pomaganiu w budowaniu lepszych nawyków żywieniowych.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Ciekawi, kto stoi za ${appLabel}? Zobacz ',
			'feedbackRating.aboutUsLinkLabel' => 'O nas',
			'feedbackRating.thankYouMessage' => 'Dziękujemy! Zapytamy ponownie innym razem.',
			'health.syncFailed' => 'Nie udało się zsynchronizować z Health Connect',
			'health.mealSynced' => 'Posiłek zsynchronizowany z Health Connect',
			_ => null,
		};
	}
}
