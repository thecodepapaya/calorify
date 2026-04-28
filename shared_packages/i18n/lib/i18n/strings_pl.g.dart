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
class TranslationsPl with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPl _root = this; // ignore: unused_field

	@override 
	TranslationsPl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPl(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Polski';
	@override String get flag => '🇵🇱';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsPl errors = _TranslationsErrorsPl._(_root);
	@override late final _TranslationsOnboardingPl onboarding = _TranslationsOnboardingPl._(_root);
	@override late final _TranslationsTabsPl tabs = _TranslationsTabsPl._(_root);
	@override late final _TranslationsHomePl home = _TranslationsHomePl._(_root);
	@override late final _TranslationsHistoryPl history = _TranslationsHistoryPl._(_root);
	@override late final _TranslationsMealPl meal = _TranslationsMealPl._(_root);
	@override late final _TranslationsFavoritesPl favorites = _TranslationsFavoritesPl._(_root);
	@override late final _TranslationsProfilePl profile = _TranslationsProfilePl._(_root);
	@override late final _TranslationsHealthScorePl healthScore = _TranslationsHealthScorePl._(_root);
	@override late final _TranslationsEditProfilePl editProfile = _TranslationsEditProfilePl._(_root);
	@override late final _TranslationsSettingsPl settings = _TranslationsSettingsPl._(_root);
	@override late final _TranslationsRemindersPl reminders = _TranslationsRemindersPl._(_root);
	@override late final _TranslationsNotificationsPl notifications = _TranslationsNotificationsPl._(_root);
	@override late final _TranslationsLoginPl login = _TranslationsLoginPl._(_root);
	@override late final _TranslationsDisclaimerPl disclaimer = _TranslationsDisclaimerPl._(_root);
	@override late final _TranslationsCommonPl common = _TranslationsCommonPl._(_root);
	@override late final _TranslationsFeedbackRatingPl feedbackRating = _TranslationsFeedbackRatingPl._(_root);
	@override late final _TranslationsHealthPl health = _TranslationsHealthPl._(_root);
}

// Path: errors
class _TranslationsErrorsPl implements TranslationsErrorsEn {
	_TranslationsErrorsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Wykonano zbyt wiele żądań. Poczekaj chwilę i spróbuj ponownie.';
	@override String get networkError => 'Błąd sieci. Sprawdź połączenie z internetem.';
	@override String get unknownError => 'Coś poszło nie tak. Spróbuj ponownie później.';
	@override String get loadingProfileData => 'Błąd wczytywania danych profilu';
	@override String get somethingWentWrong => 'Coś poszło nie tak.';
	@override String get retry => 'Ponów';
}

// Path: onboarding
class _TranslationsOnboardingPl implements TranslationsOnboardingEn {
	_TranslationsOnboardingPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Witamy w ${appLabel}';
	@override String get subtitle => 'Twój osobisty towarzysz żywieniowy zasilany przez AI';
	@override String get getStarted => 'Zaczynamy';
	@override late final _TranslationsOnboardingFeaturesPl features = _TranslationsOnboardingFeaturesPl._(_root);
	@override late final _TranslationsOnboardingGenderPl gender = _TranslationsOnboardingGenderPl._(_root);
	@override late final _TranslationsOnboardingHeightPl height = _TranslationsOnboardingHeightPl._(_root);
	@override late final _TranslationsOnboardingWeightPl weight = _TranslationsOnboardingWeightPl._(_root);
	@override late final _TranslationsOnboardingAgePl age = _TranslationsOnboardingAgePl._(_root);
	@override late final _TranslationsOnboardingBmiScalePl bmiScale = _TranslationsOnboardingBmiScalePl._(_root);
	@override late final _TranslationsOnboardingWeightGoalPl weightGoal = _TranslationsOnboardingWeightGoalPl._(_root);
	@override late final _TranslationsOnboardingActivityLevelPl activityLevel = _TranslationsOnboardingActivityLevelPl._(_root);
	@override late final _TranslationsOnboardingHealthConnectPl healthConnect = _TranslationsOnboardingHealthConnectPl._(_root);
	@override late final _TranslationsOnboardingReinforcementPl reinforcement = _TranslationsOnboardingReinforcementPl._(_root);
}

// Path: tabs
class _TranslationsTabsPl implements TranslationsTabsEn {
	_TranslationsTabsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Panel';
	@override String get history => 'Historia';
}

// Path: home
class _TranslationsHomePl implements TranslationsHomeEn {
	_TranslationsHomePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryPl aiSummary = _TranslationsHomeAiSummaryPl._(_root);
	@override late final _TranslationsHomeDailyGoalPl dailyGoal = _TranslationsHomeDailyGoalPl._(_root);
	@override late final _TranslationsHomeDailySummaryPl dailySummary = _TranslationsHomeDailySummaryPl._(_root);
	@override late final _TranslationsHomeIntakeProgressPl intakeProgress = _TranslationsHomeIntakeProgressPl._(_root);
	@override late final _TranslationsHomeIntakeHistoryPl intakeHistory = _TranslationsHomeIntakeHistoryPl._(_root);
	@override late final _TranslationsHomeMealLogPl mealLog = _TranslationsHomeMealLogPl._(_root);
	@override late final _TranslationsHomeMealDescriptionPl mealDescription = _TranslationsHomeMealDescriptionPl._(_root);
	@override late final _TranslationsHomeFavoriteMealsPl favoriteMeals = _TranslationsHomeFavoriteMealsPl._(_root);
	@override late final _TranslationsHomeMealSnapPl mealSnap = _TranslationsHomeMealSnapPl._(_root);
	@override late final _TranslationsHomeConnectHealthPl connectHealth = _TranslationsHomeConnectHealthPl._(_root);
}

// Path: history
class _TranslationsHistoryPl implements TranslationsHistoryEn {
	_TranslationsHistoryPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Brak zapisanych posiłków';
	@override String get emptyMessage => 'Zrób zdjęcie ostatniego posiłku, aby dodać go tutaj.';
	@override String get today => 'Dzisiaj';
	@override String get yesterday => 'Wczoraj';
}

// Path: meal
class _TranslationsMealPl implements TranslationsMealEn {
	_TranslationsMealPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Ojej!';
	@override String get delete => 'Usuń';
	@override String get editMeal => 'Edytuj posiłek';
	@override String get addMeal => 'Dodaj posiłek';
	@override String get saveMeal => 'Zapisz posiłek';
	@override String get save => 'Zapisz';
	@override String get mealName => 'Nazwa posiłku';
	@override String get mealNameHint => 'np. Jajecznica z tostem';
	@override String get mealQuantity => 'Ilość posiłku';
	@override String get mealQuantityHint => 'np. 1 miska, 2 kromki';
	@override String get timeOfMeal => 'Godzina posiłku';
	@override String get timeOfMealHint => 'Wybierz godzinę posiłku';
	@override String get mealType => 'Rodzaj posiłku';
	@override late final _TranslationsMealNutritionPl nutrition = _TranslationsMealNutritionPl._(_root);
	@override late final _TranslationsMealDeleteConfirmationPl deleteConfirmation = _TranslationsMealDeleteConfirmationPl._(_root);
	@override String get addedToLog => 'Dodano posiłek do dziennika!';
	@override String couldNotAdd({required Object error}) => 'Nie udało się dodać posiłku: ${error}';
	@override String get savedSuccessfully => 'Pomyślnie dodano posiłek!';
	@override String get updatedSuccessfully => 'Pomyślnie zaktualizowano posiłek!';
	@override String errorSaving({required Object error}) => 'Błąd zapisu posiłku: ${error}';
	@override String get removedFromFavorites => 'Usunięto z ulubionych!';
	@override String get savedAsFavorite => 'Zapisano jako ulubione!';
	@override String get unfavorite => 'Usuń z ulubionych';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nie udało się zaktualizować ulubionych: ${error}';
	@override String get feedbackThanks => 'Dziękujemy za opinię!';
	@override String get reanalysisUpdated => 'Zaktualizowano analizę posiłku na podstawie Twojej opinii.';
	@override String failedToProcess({required Object error}) => 'Nie udało się przetworzyć: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Nie udało się przetworzyć obrazu: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Błąd kompresji obrazu: ${error}';
	@override String get failedToSave => 'Nie udało się zapisać danych. Spróbuj ponownie.';
	@override String get skip => 'Pomiń';
	@override late final _TranslationsMealVariationPl variation = _TranslationsMealVariationPl._(_root);
	@override late final _TranslationsMealAnalysisPl analysis = _TranslationsMealAnalysisPl._(_root);
	@override late final _TranslationsMealFeedbackPl feedback = _TranslationsMealFeedbackPl._(_root);
}

// Path: favorites
class _TranslationsFavoritesPl implements TranslationsFavoritesEn {
	_TranslationsFavoritesPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ulubione';
	@override String get empty => 'Brak ulubionych posiłków.';
	@override String get searchPlaceholder => 'Szukaj w ulubionych';
	@override String get searchEmptyTitle => 'Brak ulubionych pasujących do wyszukiwania';
	@override String get searchEmptySubtitle => 'Spróbuj innej nazwy posiłku, ilości lub rodzaju posiłku.';
	@override String get sortLabel => 'Sortuj ulubione';
	@override String get undo => 'Cofnij';
	@override String removed({required Object name}) => 'Usunięto ${name} z ulubionych';
	@override late final _TranslationsFavoritesSortOptionsPl sortOptions = _TranslationsFavoritesSortOptionsPl._(_root);
}

// Path: profile
class _TranslationsProfilePl implements TranslationsProfileEn {
	_TranslationsProfilePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Brak danych profilu';
	@override String get yourProfile => 'Twój profil';
	@override String get viewAndManage => 'Przeglądaj i zarządzaj informacjami zdrowotnymi';
	@override late final _TranslationsProfileSectionsPl sections = _TranslationsProfileSectionsPl._(_root);
	@override String get gender => 'Płeć';
	@override String get height => 'Wzrost';
	@override String get weight => 'Waga';
	@override String get age => 'Wiek';
	@override String get weightGoal => 'Cel wagowy';
	@override String get targetWeight => 'Waga docelowa';
	@override String get activityLevel => 'Poziom aktywności';
	@override String get healthMetrics => 'Wskaźniki zdrowia';
	@override String get notSet => 'Brak';
	@override String get years => 'lat';
	@override String get updatedSuccessfully => 'Profil zaktualizowany pomyślnie!';
	@override late final _TranslationsProfileCalculatedValuesPl calculatedValues = _TranslationsProfileCalculatedValuesPl._(_root);
}

// Path: healthScore
class _TranslationsHealthScorePl implements TranslationsHealthScoreEn {
	_TranslationsHealthScorePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wynik zdrowia';
	@override String get whyThisScore => 'Skąd ta ocena?';
	@override String get note => 'Ten wynik to szacunek AI oparty na rozpoznanych składnikach i gęstości odżywczej. Zawsze konsultuj się ze specjalistą w sprawach diety.';
	@override String get unhealthy => 'Niezdrowe';
	@override String get healthy => 'Zdrowe';
	@override String get neutral => 'Neutralne';
}

// Path: editProfile
class _TranslationsEditProfilePl implements TranslationsEditProfileEn {
	_TranslationsEditProfilePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edytuj profil';
	@override late final _TranslationsEditProfileSectionsPl sections = _TranslationsEditProfileSectionsPl._(_root);
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
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metryczne (cm)';
	@override String get imperialFtIn => 'Imperialne (ft/in)';
	@override String get metricKg => 'Metryczne (kg)';
	@override String get imperialLbs => 'Imperialne (lbs)';
	@override late final _TranslationsEditProfileGendersPl genders = _TranslationsEditProfileGendersPl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsPl weightGoals = _TranslationsEditProfileWeightGoalsPl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsPl activityLevels = _TranslationsEditProfileActivityLevelsPl._(_root);
}

// Path: settings
class _TranslationsSettingsPl implements TranslationsSettingsEn {
	_TranslationsSettingsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ustawienia';
	@override late final _TranslationsSettingsSectionsPl sections = _TranslationsSettingsSectionsPl._(_root);
	@override late final _TranslationsSettingsEditProfilePl editProfile = _TranslationsSettingsEditProfilePl._(_root);
	@override late final _TranslationsSettingsLanguagePl language = _TranslationsSettingsLanguagePl._(_root);
	@override late final _TranslationsSettingsHeightUnitPl heightUnit = _TranslationsSettingsHeightUnitPl._(_root);
	@override late final _TranslationsSettingsWeightUnitPl weightUnit = _TranslationsSettingsWeightUnitPl._(_root);
	@override late final _TranslationsSettingsMealRemindersPl mealReminders = _TranslationsSettingsMealRemindersPl._(_root);
	@override late final _TranslationsSettingsThemePl theme = _TranslationsSettingsThemePl._(_root);
	@override late final _TranslationsSettingsSendFeedbackPl sendFeedback = _TranslationsSettingsSendFeedbackPl._(_root);
	@override late final _TranslationsSettingsExportMealHistoryPl exportMealHistory = _TranslationsSettingsExportMealHistoryPl._(_root);
	@override late final _TranslationsSettingsClearAllDataPl clearAllData = _TranslationsSettingsClearAllDataPl._(_root);
	@override late final _TranslationsSettingsDebugOptionsPl debugOptions = _TranslationsSettingsDebugOptionsPl._(_root);
	@override String get developerModeEnabled => 'Włączono tryb deweloperski!';
	@override late final _TranslationsSettingsHealthConnectPl healthConnect = _TranslationsSettingsHealthConnectPl._(_root);
	@override late final _TranslationsSettingsAboutPl about = _TranslationsSettingsAboutPl._(_root);
	@override late final _TranslationsSettingsAppInfoPl appInfo = _TranslationsSettingsAppInfoPl._(_root);
}

// Path: reminders
class _TranslationsRemindersPl implements TranslationsRemindersEn {
	_TranslationsRemindersPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pozostań na kursie dzięki przypomnieniom';
	@override String get description => 'Otrzymuj delikatne przypomnienia o logowaniu posiłków i zachowuj regularność w realizacji celów żywieniowych';
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
	@override String get enabledSuccessfully => 'Pomyślnie włączono powiadomienia!';
	@override String get permissionDenied => 'Odmowa uprawnień do powiadomień';
	@override String errorEnabling({required Object error}) => 'Błąd włączania powiadomień: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Błąd kończenia konfiguracji: ${error}';
}

// Path: notifications
class _TranslationsNotificationsPl implements TranslationsNotificationsEn {
	_TranslationsNotificationsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastPl breakfast = _TranslationsNotificationsBreakfastPl._(_root);
	@override late final _TranslationsNotificationsLunchPl lunch = _TranslationsNotificationsLunchPl._(_root);
	@override late final _TranslationsNotificationsDinnerPl dinner = _TranslationsNotificationsDinnerPl._(_root);
	@override late final _TranslationsNotificationsSnackPl snack = _TranslationsNotificationsSnackPl._(_root);
	@override late final _TranslationsNotificationsTestPl test = _TranslationsNotificationsTestPl._(_root);
}

// Path: login
class _TranslationsLoginPl implements TranslationsLoginEn {
	_TranslationsLoginPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Logowanie';
	@override String get signInWithGoogle => 'Zaloguj się przez Google';
	@override String get signInFailed => 'Logowanie przez Google nie powiodło się lub zostało anulowane.';
}

// Path: disclaimer
class _TranslationsDisclaimerPl implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Uwaga';
	@override late final _TranslationsDisclaimerSnapPl snap = _TranslationsDisclaimerSnapPl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimatePl weightEstimate = _TranslationsDisclaimerWeightEstimatePl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsPl healthMetrics = _TranslationsDisclaimerHealthMetricsPl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditurePl calorieExpenditure = _TranslationsDisclaimerCalorieExpenditurePl._(_root);
}

// Path: common
class _TranslationsCommonPl implements TranslationsCommonEn {
	_TranslationsCommonPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get close => 'Zamknij';
	@override String get kContinue => 'Kontynuuj';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingPl implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Podoba Ci się ${appLabel}?';
	@override String get yes => 'Tak, podoba mi się';
	@override String get no => 'Niespecjalnie';
	@override String get rateStepHeading => 'Oceń w Sklepie Play';
	@override String get emailStepHeading => 'Wyślij opinię e‑mailem';
	@override String soloDevMessage({required Object appLabel}) => 'Krótka ocena pomaga innym znaleźć ${appLabel} i wspiera dalszy rozwój. Poświęcisz chwilkę?';
	@override String get shareFeedbackViaEmail => 'Twoja opinia kształtuje kolejne kroki — czytamy każdą wiadomość. Chcesz podzielić się przemyśleniami e‑mailem?';
	@override String get rateCta => 'Oceń w Sklepie Play';
	@override String get maybeLater => 'Może później';
	@override String get sendFeedback => 'Prześlij opinię';
	@override String get noThanks => 'Nie, dziękuję';
	@override String get aboutUsDescription => 'Stworzone z troską przez mały zespół. Stawiamy na prywatność, prostotę i pomoc w budowaniu lepszych nawyków żywieniowych.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Ciekawi Cię, kto stoi za ${appLabel}? Zobacz ';
	@override String get aboutUsLinkLabel => 'O nas';
	@override String get thankYouMessage => 'Dziękujemy! Zapytamy innym razem.';
}

// Path: health
class _TranslationsHealthPl implements TranslationsHealthEn {
	_TranslationsHealthPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Nie udało się zsynchronizować z Health Connect';
	@override String get mealSynced => 'Posiłek zsynchronizowany z Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesPl implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionPl foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionPl._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisPl aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisPl._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationPl healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationPl._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderPl implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jaka jest Twoja płeć?';
	@override String get description => 'Płeć pomaga dokładniej obliczyć podstawową przemianę materii (BMR).';
	@override String get next => 'Dalej';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightPl implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ile masz wzrostu?';
	@override String get description => 'Wzrost pomaga dokładnie obliczyć BMI i zapotrzebowanie energetyczne.';
	@override String get metric => 'Metryczne';
	@override String get imperial => 'Imperialne';
	@override String get next => 'Dalej';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightPl implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Jaka jest Twoja aktualna waga?';
	@override String get currentDescription => 'Aktualna waga jest kluczowa do personalizacji Twoich codziennych celów.';
	@override String get targetTitle => 'Jaka jest Twoja docelowa waga?';
	@override String get targetDescription => 'Ustalenie wagi docelowej pomaga określić długoterminowy plan.';
	@override String get metric => 'Metryczne';
	@override String get imperial => 'Imperialne';
	@override String get next => 'Dalej';
}

// Path: onboarding.age
class _TranslationsOnboardingAgePl implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kiedy się urodziłeś/-aś?';
	@override String get description => 'Wiek pomaga dokładnie obliczyć Twoje zapotrzebowanie kaloryczne.';
	@override String get next => 'Dalej';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScalePl implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScalePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Niedowaga';
	@override String get healthy => 'Prawidłowa';
	@override String get overweight => 'Nadwaga';
	@override String get obese => 'Otyłość';
	@override late final _TranslationsOnboardingBmiScaleCategoriesPl categories = _TranslationsOnboardingBmiScaleCategoriesPl._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesPl messages = _TranslationsOnboardingBmiScaleMessagesPl._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalPl implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jaki masz cel?';
	@override String get description => 'Wybierz cel, który najlepiej opisuje to, co chcesz osiągnąć';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelPl implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak bardzo jesteś aktywny/a?';
	@override String get description => 'To pomaga nam dokładniej obliczyć Twoje dzienne zapotrzebowanie kaloryczne';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectPl implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Połącz z Health Connect';
	@override String get description => 'Synchronizuj dane zdrowotne, aby uzyskać lepsze wglądy i automatyczne śledzenie kalorii';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingPl automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingPl._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsPl progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsPl._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationPl seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationPl._(_root);
	@override String get connected => 'Połączono z Health Connect';
	@override String get notConnected => 'Brak połączenia z Health Connect';
	@override String get setup => 'Skonfiguruj Health Connect';
	@override String get skipForNow => 'Pomiń na razie';
	@override String get statusConnected => 'Health Connect jest połączony.';
	@override String get statusSuccess => 'Pomyślnie połączono z Health Connect!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Odmowa uprawnień. Włącz uprawnienia Health Connect w ustawieniach telefonu dla ${appLabel}.';
	@override String statusError({required Object error}) => 'Błąd konfiguracji Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementPl implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessPl trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessPl._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfilePl healthProfile = _TranslationsOnboardingReinforcementHealthProfilePl._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestylePl goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestylePl._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryPl implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Twój skrót AI';
	@override String get logMore => 'Zapisuj więcej posiłków w najbliższych dniach, aby otrzymać spersonalizowane wnioski AI.';
	@override String get loading => 'Wczytywanie podsumowania...';
	@override String mealCount({required Object count}) => 'Zalogowano posiłków: ${count}';
	@override String macroBalanceScore({required Object score}) => 'Wynik balansu ${score}';
	@override String get topFoods => 'Najczęstsze posiłki';
	@override String get trendUp => 'Kalorie rosną';
	@override String get trendDown => 'Kalorie spadają';
	@override String get trendSteady => 'Kalorie stabilne';
	@override String generatedAt({required Object time}) => 'Zaktualizowano ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalPl implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ustaw swój dzienny cel';
	@override String get titleSet => 'Twój dzienny cel';
	@override String get description => 'Gotowy/a, by rozpocząć swoją drogę do zdrowia? Ustaw poniżej dzienny cel kalorii, aby ruszyć z postępami.';
	@override String get descriptionSet => 'Kompas ustawiony! To Twój codzienny cel kalorii, który będzie Twoją wskazówką.';
	@override String get yourGoal => 'Twój cel';
	@override String get goal => 'Cel';
	@override String get dailyCalories => 'Dzienne kalorie (kcal)';
	@override String get setGoal => 'Ustaw cel';
	@override String get intake => 'Spożycie';
	@override String get burned => 'Spalone';
	@override String get weightImpact => 'Wpływ na masę ciała';
	@override String get estLoss => 'Szac. spadek o';
	@override String get estGain => 'Szac. wzrost o';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryPl implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dzienne podsumowanie';
	@override String get calories => 'Kalorie';
	@override String get carbs => 'Węglowodany';
	@override String get protein => 'Białko';
	@override String get fat => 'Tłuszcz';
	@override String get fiber => 'Błonnik';
	@override String get grams => 'gramy';
	@override String get chartAccessibilityLabel => 'Wykres makroskładników';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressPl implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dzisiejszy podział makro';
	@override String get target => 'Cel';
	@override String get current => 'Obecnie';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryPl implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Historia makro z 7 dni';
	@override String get trendTitle => 'Dzisiejszy trend';
	@override String peakHour({required Object hour}) => 'Szczyt: ${hour}:00';
	@override String get noHistoryYet => 'Brak historii';
	@override String get startLogging => 'Zacznij logować posiłki, aby zobaczyć tu\n7‑dniowe trendy makro';
}

// Path: home.mealLog
class _TranslationsHomeMealLogPl implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zapisane posiłki';
	@override String get emptyMessage => 'Zrób zdjęcie ostatniego posiłku, aby dodać go tutaj.';
	@override String get noMealsToday => 'Brak posiłków dzisiaj';
	@override String get seeAllMeals => 'Zobacz wszystkie';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionPl implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szybkie dodawanie z AI';
	@override String get description => 'Opisz swój posiłek, a AI zajmie się resztą.';
	@override String get hint => 'np. Na śniadanie miałem dużą miskę owsianki z pokrojonym bananem i miarką odżywki białkowej...';
	@override String get analyzeMeal => 'Przeanalizuj posiłek';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsPl implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ulubione posiłki';
	@override String get description => 'Szybko dodaj jeden z ulubionych posiłków.';
	@override String get noFavorites => 'Brak ulubionych posiłków.';
	@override String get addFavoriteHint => 'Kliknij gwiazdkę przy posiłku, aby dodać go do ulubionych.';
	@override String get seeAll => 'Zobacz wszystkie';
	@override String get add => 'Dodaj';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapPl implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zrób zdjęcie i śledź posiłek';
	@override String get description => 'Użyj aparatu, aby zrobić zdjęcie jedzenia do analizy AI.';
	@override String get openCamera => 'Otwórz aparat';
	@override String get gallery => 'Galeria';
	@override String get compressingPhoto => 'Optymalizowanie zdjęcia…';
	@override String get uploadingPhoto => 'Przesyłanie zdjęcia…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthPl implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchronizuj z Health Connect';
	@override String get description => 'Synchronizuj dane żywieniowe z Health Connect';
	@override String get install => 'Zainstaluj';
	@override String get connect => 'Połącz';
}

// Path: meal.nutrition
class _TranslationsMealNutritionPl implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorie';
	@override String get carbs => 'Węglowodany (g)';
	@override String get protein => 'Białko (g)';
	@override String get fat => 'Tłuszcz (g)';
	@override String get fiber => 'Błonnik (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationPl implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Usunąć posiłek';
	@override String get message => 'Czy na pewno chcesz usunąć ten wpis posiłku?';
	@override String get cancel => 'Anuluj';
	@override String get delete => 'Usuń';
}

// Path: meal.variation
class _TranslationsMealVariationPl implements TranslationsMealVariationEn {
	_TranslationsMealVariationPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Pytanie ${current} z ${total}';
	@override String get noVariationsAvailable => 'Brak dostępnych wariantów';
}

// Path: meal.analysis
class _TranslationsMealAnalysisPl implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analiza posiłku przez AI';
	@override String get reassurance => 'To zwykle zajmuje kilka sekund.';
	@override String get stepStarted => 'Zaczynamy…';
	@override String get stepDecomposition => 'Rozpoznawanie posiłku…';
	@override String get stepIngredients => 'Dopasowywanie składników do danych żywieniowych…';
	@override String get stepUncertainty => 'Sprawdzanie pewności…';
	@override String get stepMealTypeQuestion => 'Prawie gotowe…';
	@override String get stepResult => 'Finalizowanie wyniku…';
	@override String get stepError => 'Coś poszło nie tak';
	@override String get stepDefault => 'Analizowanie Twojego posiłku…';
	@override String get progressUnderstand => 'Zrozum';
	@override String get progressMatch => 'Dopasuj';
	@override String get progressCheck => 'Sprawdź';
	@override String get progressFinish => 'Zakończ';
	@override String ingredientsLine({required Object count}) => 'Wykryto ${count} składników';
	@override String get ingredientsPending => 'Skanowanie składników…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackPl implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

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
class _TranslationsFavoritesSortOptionsPl implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Najnowsze';
	@override String get calories => 'Kalorie';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsPl implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'PODSTAWOWE INFORMACJE';
	@override String get goalsAndActivity => 'CELE I AKTYWNOŚĆ';
	@override String get calculatedValues => 'WARTOŚCI OBLICZONE';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesPl implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Dzienny cel';
	@override String get calPerDay => 'kcal/dzień';
	@override String get notAvailable => 'Niedostępne';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsPl implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'DANE OSOBOWE';
	@override String get physicalMeasurements => 'POMIARY FIZYCZNE';
	@override String get goalsAndActivity => 'CELE I AKTYWNOŚĆ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersPl implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get male => 'Mężczyzna';
	@override String get female => 'Kobieta';
	@override String get other => 'Inna';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsPl implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightPl loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightPl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightPl maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightPl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightPl gainWeight = _TranslationsEditProfileWeightGoalsGainWeightPl._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsPl implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryPl sedentary = _TranslationsEditProfileActivityLevelsSedentaryPl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActivePl lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActivePl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActivePl moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActivePl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActivePl veryActive = _TranslationsEditProfileActivityLevelsVeryActivePl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActivePl extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActivePl._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsPl implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALIZACJA';
	@override String get notifications => 'POWIADOMIENIA';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'WSPARCIE I PRAWNE';
	@override String get about => 'O APLIKACJI';
	@override String get dangerZone => 'STREFA RYZYKA';
	@override String get developer => 'DEWELOPER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfilePl implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfilePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edytuj profil';
	@override String get subtitle => 'Zaktualizuj swoje dane osobowe';
}

// Path: settings.language
class _TranslationsSettingsLanguagePl implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguagePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Język';
	@override String get subtitle => 'Wybierz preferowany język';
	@override String get searchHint => 'Szukaj języka...';
	@override String get noResults => 'Brak wyników';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitPl implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jednostka wzrostu';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitPl implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jednostka wagi';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersPl implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Przypomnienia o posiłkach';
	@override String get subtitle => 'Pozostań na kursie dzięki terminowym alertom';
}

// Path: settings.theme
class _TranslationsSettingsThemePl implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Motyw';
	@override String get light => 'Jasny';
	@override String get dark => 'Ciemny';
	@override String get system => 'Systemowy';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackPl implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Prześlij opinię';
	@override String subtitle({required Object appLabel}) => 'Pomóż ulepszyć ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Opinia o ${appLabel}';
	@override String get emailBodyPrefix => 'Podaj swoją opinię poniżej:';
	@override String get appVersion => 'Wersja aplikacji';
	@override String get device => 'Urządzenie';
	@override String get osVersion => 'Wersja systemu';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryPl implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eksport historii posiłków';
	@override String get subtitle => 'Udostępnij plik CSV ze swoimi posiłkami';
	@override String get shareText => 'Eksport historii posiłków Calorify';
	@override String failed({required Object error}) => 'Nie udało się wyeksportować historii posiłków: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataPl implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wyczyść wszystkie dane';
	@override String get subtitle => 'Nieodwracalnie usuń wszystkie informacje';
	@override String get confirmationTitle => 'Wyczyścić wszystkie dane?';
	@override String get confirmationMessage => 'Tej operacji nie można cofnąć. Wszystkie zapisane posiłki, ulubione i ustawienia profilu zostaną trwale usunięte.';
	@override String get cancel => 'Anuluj';
	@override String get clearEverything => 'Wyczyść wszystko';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsPl implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opcje debugowania';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectPl implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Przeglądaj i zarządzaj uprawnieniami';
	@override late final _TranslationsSettingsHealthConnectUnavailablePl unavailable = _TranslationsSettingsHealthConnectUnavailablePl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsPl permissions = _TranslationsSettingsHealthConnectPermissionsPl._(_root);
	@override String get managePermissions => 'Zarządzaj uprawnieniami';
	@override String get openSettings => 'Otwórz ustawienia Health Connect';
	@override String get requestPermissions => 'Poproś o uprawnienia';
	@override String get permissionRequestCancelledOrFailed => 'Prośba o uprawnienia została anulowana lub nie powiodła się. Spróbuj ponownie lub nadaj uprawnienia ręcznie w ustawieniach Health Connect.';
	@override String get permissionRequestFailed => 'Nie można poprosić o uprawnienia. Spróbuj ponownie lub nadaj uprawnienia ręcznie w ustawieniach Health Connect.';
	@override String get requestingPermissions => 'Trwa żądanie uprawnień…';
}

// Path: settings.about
class _TranslationsSettingsAboutPl implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'O aplikacji';
	@override String get tagline => 'Szybka, darmowa i z prywatnością na pierwszym miejscu — świadomość kalorii';
	@override late final _TranslationsSettingsAboutOurStoryPl ourStory = _TranslationsSettingsAboutOurStoryPl._(_root);
	@override late final _TranslationsSettingsAboutPrivacyPl privacy = _TranslationsSettingsAboutPrivacyPl._(_root);
	@override late final _TranslationsSettingsAboutDeveloperPl developer = _TranslationsSettingsAboutDeveloperPl._(_root);
	@override late final _TranslationsSettingsAboutFeedbackPl feedback = _TranslationsSettingsAboutFeedbackPl._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoPl implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Kompilacja ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastPl implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pora na śniadanie! 🍳';
	@override String get body => 'Nie zapomnij zalogować śniadania';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchPl implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pora na obiad! 🥗';
	@override String get body => 'Czas zalogować obiad';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerPl implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pora na kolację! 🍽️';
	@override String get body => 'Nie zapomnij zalogować kolacji';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackPl implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pora na przekąskę! 🍎';
	@override String get body => 'Czas na zdrową przekąskę';
}

// Path: notifications.test
class _TranslationsNotificationsTestPl implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Powiadomienie testowe';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapPl implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} podaje szacunkowe informacje żywieniowe. Dokładność zależy od Twoich danych i różnic w jedzeniu. Traktuj to jako wskazówkę, a nie ostateczne źródło. Po spersonalizowaną poradę skonsultuj się ze specjalistą.';
	@override late final _TranslationsDisclaimerSnapPortionSizePl portionSize = _TranslationsDisclaimerSnapPortionSizePl._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsPl preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsPl._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsPl ingredients = _TranslationsDisclaimerSnapIngredientsPl._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsPl databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsPl._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimatePl implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimatePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'O szacunku zmiany wagi';
	@override String get description => 'Prognozowana zmiana masy ciała to teoretyczny szacunek oparty na prostym modelu „kalorie przyjęte vs. spalone”. Ma służyć wyłącznie motywacji, a nie przewidywaniu faktycznej wagi.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyPl calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyPl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsPl biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsPl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightPl waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightPl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidancePl professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidancePl._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsPl implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get description => 'Te wskaźniki pomagają zrozumieć potrzeby energetyczne organizmu i ukierunkować Twoje cele żywieniowe.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrPl bmr = _TranslationsDisclaimerHealthMetricsBmrPl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeePl tdee = _TranslationsDisclaimerHealthMetricsTdeePl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalPl dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalPl._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditurePl implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditurePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szacunek wydatku kalorycznego';
	@override String get description => 'Gdy dane z Health Connect są niedostępne, szacujemy dzisiejsze spalone kalorie na podstawie Twojego BMR i poziomu aktywności (TDEE), skalowanych do części dnia, która już upłynęła.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedPl howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedPl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePl professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePl._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionPl implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inteligentne rozpoznawanie jedzenia';
	@override String get description => 'Zrób zdjęcie i pozwól AI rozpoznać Twój posiłek';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisPl implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analiza AI';
	@override String get description => 'Otrzymuj natychmiastowe informacje żywieniowe na podstawie opisu';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationPl implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integracja z Health Connect';
	@override String get description => 'Połącz z Health Connect, aby uzyskać lepsze wglądy';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesPl implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Niedowaga';
	@override String get healthyWeight => 'Prawidłowa masa ciała';
	@override String get overweight => 'Nadwaga';
	@override String get obese => 'Otyłość';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesPl implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Pomożemy Ci zbudować zdrowy plan, aby osiągnąć zrównoważoną masę ciała dzięki wartościowym posiłkom.';
	@override String get healthy => 'Świetna robota! Jesteś w zdrowym zakresie. Pomożemy Ci utrzymać witalność i energię.';
	@override String overweight({required Object appLabel}) => '${appLabel} uprości Twoją drogę dzięki śledzeniu wspieranemu przez AI, abyś mógł/mogła komfortowo osiągnąć cel.';
	@override String get obese => 'Jesteśmy tu, by wspierać Cię spersonalizowanymi wskazówkami i zrównoważonymi strategiami dla Twoich celów zdrowotnych.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingPl implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatyczne śledzenie kalorii';
	@override String get description => 'Śledź kalorie spalane w aplikacjach fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsPl implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wgląd w postępy';
	@override String get description => 'Otrzymuj szczegółowe informacje o trendach zdrowotnych';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationPl implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Płynna integracja';
	@override String get description => 'Synchronizuj dane z ulubionych aplikacji zdrowotnych';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessPl implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nie jesteś sam/a';
	@override String get genericMessage => 'Badania pokazują, że regularne śledzenie to czynnik nr 1 długoterminowego sukcesu.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Dla osoby w wieku ${age} lat (${gender}), która chce ${goal}, konsekwentne śledzenie to czynnik nr 1 sukcesu.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} sprawia, że to 10x łatwiejsze niż ręcznie.';
	@override String get getStartedTitle => 'Gotowy/a, by zacząć?';
	@override String get tipPhoto => 'Rób zdjęcia posiłków, aby uzyskać natychmiastową analizę';
	@override String get tipConsistency => 'Loguj regularnie, aby zobaczyć znaczące postępy';
	@override String get tipProgress => 'Śledź postępy codziennie, by zachować motywację';
	@override String get button => 'Zaczynajmy';
	@override String get defaultGender => 'osoba';
	@override String get defaultGoal => 'zdrowszą wersję siebie';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfilePl implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfilePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Twój profil zdrowia';
	@override String bmiDescription({required Object bmi}) => 'Na podstawie Twoich danych Twoje BMI wynosi ${bmi}.';
	@override String get finalizeDescription => 'Dokończmy konfigurację profilu, aby spersonalizować Twoje doświadczenie.';
	@override String get goalGain => 'przybrać';
	@override String get goalLose => 'schudnąć';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Aby osiągnąć cel, musisz ${direction} o ${diff} ${unit}.';
	@override String get goalReached => 'Jesteś na docelowej wadze! Pomożemy Ci ją utrzymać.';
	@override String get button => 'Jedziemy';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestylePl implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestylePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Świetny start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Wykonałeś/-aś pierwszy krok ku ${goalText}. Ponieważ jesteś ${activityText}, ${appLabel} dopasuje Twoje cele do Twojego stylu życia.';
	@override String get personalizedTargets => 'Spersonalizowane cele kaloryczne';
	@override String get aiMealDetection => 'Wykrywanie posiłków z pomocą AI';
	@override String get macroBreakdowns => 'Szczegółowe rozbicie makroskładników';
	@override String get button => 'Zaczynajmy';
	@override String get defaultGoal => 'Twoich celów';
	@override String get defaultActivity => 'aktywny/a';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightPl implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Schudnąć';
	@override String get description => 'Utwórz deficyt kaloryczny, aby schudnąć';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightPl implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Utrzymać wagę';
	@override String get description => 'Utrzymuj swoją obecną wagę';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightPl implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Przybrać na wadze';
	@override String get description => 'Utwórz nadwyżkę kaloryczną, aby przybrać na wadze';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryPl implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Siedzący tryb';
	@override String get description => 'Mało lub brak ćwiczeń';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActivePl implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActivePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lekko aktywny/a';
	@override String get description => 'Lekka aktywność 1–3 dni/tydz.';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActivePl implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActivePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Umiarkowanie aktywny/a';
	@override String get description => 'Umiarkowana aktywność 3–5 dni/tydz.';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActivePl implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActivePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Bardzo aktywny/a';
	@override String get description => 'Intensywne ćwiczenia 6–7 dni/tydz.';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActivePl implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActivePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Skrajnie aktywny/a';
	@override String get description => 'Bardzo ciężkie ćwiczenia, praca fizyczna';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailablePl implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailablePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect niedostępny';
	@override String get description => 'Health Connect nie jest dostępny na tym urządzeniu. Zainstaluj Health Connect ze Sklepu Play (Android 9+) lub zaktualizuj do Androida 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsPl implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uprawnienia';
	@override String get description => 'Poniższe uprawnienia są wymagane, aby zapewnić integrację z Health Connect:';
	@override String get granted => 'Przyznano';
	@override String get notGranted => 'Nieprzyznane';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPl caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadPl nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadPl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWritePl nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWritePl._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryPl implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nasza historia';
	@override String content({required Object appLabel}) => '${appLabel} powstało z prostej frustracji: większość aplikacji do liczenia kalorii jest albo zbyt skomplikowana, wymaga ciągłego ręcznego wprowadzania danych, pobiera wysokie opłaty abonamentowe, albo idzie na kompromisy w kwestii prywatności.\n\nJako samodzielny deweloper chciałem stworzyć coś prostszego i uczciwszego — aplikację, która wykorzystuje AI, by zmniejszyć wysiłek, pozostaje szybka i darmowa oraz traktuje Twoje dane zdrowotne z szacunkiem.\n\n${appLabel} to aplikacja, której sobie życzyłem: bez kont, bez śledzenia, bez reklam — tylko jasne, praktyczne wnioski i Twoje cele zdrowotne.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyPl implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Twoja prywatność ma znaczenie';
	@override String get description => 'Prywatność to nie dodatek — to zasada projektowa. Oto, co to oznacza w praktyce:';
	@override String get noAccounts => 'Brak kont\nKorzystasz od razu. Bez rejestracji i bez tożsamości.';
	@override String noTracking({required Object appLabel}) => 'Brak śledzenia zachowań\n${appLabel} nie monitoruje Twojej aktywności, nie buduje profili i nie śledzi Cię w innych aplikacjach ani w sieci.';
	@override String noAds({required Object appLabel}) => 'Bez reklam z założenia\n${appLabel} działa bez reklam i monetyzacji opartej na danych.';
	@override String get noDataSelling => 'Brak sprzedaży danych\nTwoje dane zdrowotne nigdy nie są sprzedawane ani udostępniane podmiotom trzecim.';
	@override String get localStorage => 'Lokalne przechowywanie danych\nTwoje dane pozostają na Twoim urządzeniu.';
	@override String get privacyPolicy => 'Polityka prywatności';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperPl implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stworzona przez samodzielnego dewelopera';
	@override String description({required Object appLabel}) => '${appLabel} jest tworzona i utrzymywana przez jednego dewelopera, skupionego na spokojnym, szanującym prywatność oprogramowaniu zdrowotnym.\n\nOpinie czytam osobiście i to one kształtują kierunek rozwoju aplikacji.';
	@override String get website => 'Strona';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackPl implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Podoba Ci się ${appLabel}?';
	@override String description({required Object appLabel}) => 'Twoja opinia pomaga uczynić ${appLabel} lepszą dla wszystkich.';
	@override String get rateApp => 'Oceń w Sklepie Play';
	@override String get sendFeedback => 'Prześlij opinię';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizePl implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wielkość porcji';
	@override String get description => 'Dokładność szacunków w dużym stopniu zależy od prawidłowego oszacowania wielkości porcji.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsPl implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metody przygotowania';
	@override String description({required Object appLabel}) => 'Sposób przygotowania może znacząco zmieniać wartości odżywcze. Szacunki ${appLabel} nie zawsze uwzględniają te różnice.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsPl implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Składniki';
	@override String get description => 'Złożone dania z wieloma ukrytymi składnikami mogą prowadzić do mniej dokładnych oszacowań.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsPl implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ograniczenia bazy danych';
	@override String description({required Object appLabel}) => 'Baza żywności ${appLabel} jest obszerna, ale może nie zawierać każdego produktu ani wariantu.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyPl implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dokładność kalorii';
	@override String get description => 'Ten szacunek jest tak dokładny, jak Twoje rejestrowane spożycie i wydatek kalorii. Niedokładne logi skutkują niedokładną prognozą.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsPl implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czynniki biologiczne';
	@override String description({required Object appLabel}) => 'Rzeczywista utrata/przyrost masy zależą od metabolizmu, hormonów, snu, stresu, nawodnienia i innych indywidualnych czynników, których ${appLabel} nie mierzy.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightPl implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Woda i wahania';
	@override String get description => 'Dzienne wahania wagi są normalne i wynikają z retencji wody, trawienia i pory dnia. Szacunek ich nie uwzględnia.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidancePl implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidancePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wskazówki specjalistyczne';
	@override String get description => 'Nie używaj tego szacunku do podejmowania decyzji medycznych. Zawsze konsultuj się z lekarzem lub dietetykiem w sprawie spersonalizowanego planu.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrPl implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Podstawowa przemiana materii (BMR) to liczba kalorii spalanych w spoczynku na podstawowe funkcje, takie jak oddech i krążenie. BMR zależy od wieku, płci, wzrostu i wagi. Wyższy BMR oznacza, że organizm spala więcej kalorii w spoczynku — zwykle dzięki większej masie mięśniowej, młodszemu wiekowi lub byciu mężczyzną. Niższy BMR częściej wiąże się z mniejszą masą mięśniową, starszym wiekiem lub byciem kobietą.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeePl implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Całkowity wydatek energetyczny (TDEE) to łączna liczba kalorii spalanych każdego dnia: BMR plus energia wydatkowana na aktywność fizyczną i codzienny ruch. TDEE zależy od BMR i poziomu aktywności. Wyższy TDEE oznacza większe całkowite spalanie, zwykle dzięki większej aktywności lub wyższemu BMR. Niższy TDEE sugeruje mniejszą aktywność w ciągu dnia lub niższy BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalPl implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dzienny cel';
	@override String get description => 'Dzienny cel to rekomendowane dzienne spożycie kalorii na podstawie Twojego TDEE i celu wagowego. Aby schudnąć, spożywasz mniej niż TDEE. Aby utrzymać wagę, dopasowujesz spożycie do TDEE. Aby przybrać, spożywasz więcej niż TDEE. To pomaga osiągać zamierzoną zmianę wagi w zdrowym tempie.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedPl implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak obliczamy szacunek';
	@override String get description => 'Wyliczamy Twoje TDEE (z profilu), a następnie mnożymy przez ułamek dnia, który minął (godziny + minuty) / 24, aby oszacować dotychczas spalone kalorie.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePl implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wskazówki specjalistyczne';
	@override String get description => 'Nie używaj tego szacunku do podejmowania decyzji medycznych. Zawsze konsultuj się z lekarzem lub dietetykiem w sprawie spersonalizowanych porad.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPl implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odczyt całkowitych spalonych kalorii';
	@override String get description => 'Pozwala aplikacji odczytywać całkowite kalorie spalone z Health Connect.';
	@override String get usage => 'To uprawnienie służy do wyświetlania dziennego spalania kalorii w aplikacji, pomagając zrozumieć całkowity wydatek energetyczny w ciągu dnia.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadPl implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odczyt danych żywieniowych';
	@override String get description => 'Pozwala aplikacji odczytywać dane żywieniowe z Health Connect.';
	@override String get usage => 'To uprawnienie umożliwia odczyt informacji żywieniowych zapisanych przez inne aplikacje połączone z Health Connect, zapewniając pełniejszy obraz Twojego żywienia.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWritePl implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWritePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zapis danych żywieniowych';
	@override String get description => 'Pozwala aplikacji zapisywać dane żywieniowe w Health Connect.';
	@override String get usage => 'To uprawnienie pozwala synchronizować zapisane posiłki z Health Connect, dzięki czemu dane żywieniowe są dostępne w innych używanych aplikacjach zdrowia i fitness.';
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
			'errors.rateLimitExceeded' => 'Wykonano zbyt wiele żądań. Poczekaj chwilę i spróbuj ponownie.',
			'errors.networkError' => 'Błąd sieci. Sprawdź połączenie z internetem.',
			'errors.unknownError' => 'Coś poszło nie tak. Spróbuj ponownie później.',
			'errors.loadingProfileData' => 'Błąd wczytywania danych profilu',
			'errors.somethingWentWrong' => 'Coś poszło nie tak.',
			'errors.retry' => 'Ponów',
			'onboarding.welcome' => ({required Object appLabel}) => 'Witamy w ${appLabel}',
			'onboarding.subtitle' => 'Twój osobisty towarzysz żywieniowy zasilany przez AI',
			'onboarding.getStarted' => 'Zaczynamy',
			'onboarding.features.foodRecognition.title' => 'Inteligentne rozpoznawanie jedzenia',
			'onboarding.features.foodRecognition.description' => 'Zrób zdjęcie i pozwól AI rozpoznać Twój posiłek',
			'onboarding.features.aiAnalysis.title' => 'Analiza AI',
			'onboarding.features.aiAnalysis.description' => 'Otrzymuj natychmiastowe informacje żywieniowe na podstawie opisu',
			'onboarding.features.healthIntegration.title' => 'Integracja z Health Connect',
			'onboarding.features.healthIntegration.description' => 'Połącz z Health Connect, aby uzyskać lepsze wglądy',
			'onboarding.gender.title' => 'Jaka jest Twoja płeć?',
			'onboarding.gender.description' => 'Płeć pomaga dokładniej obliczyć podstawową przemianę materii (BMR).',
			'onboarding.gender.next' => 'Dalej',
			'onboarding.height.title' => 'Ile masz wzrostu?',
			'onboarding.height.description' => 'Wzrost pomaga dokładnie obliczyć BMI i zapotrzebowanie energetyczne.',
			'onboarding.height.metric' => 'Metryczne',
			'onboarding.height.imperial' => 'Imperialne',
			'onboarding.height.next' => 'Dalej',
			'onboarding.weight.currentTitle' => 'Jaka jest Twoja aktualna waga?',
			'onboarding.weight.currentDescription' => 'Aktualna waga jest kluczowa do personalizacji Twoich codziennych celów.',
			'onboarding.weight.targetTitle' => 'Jaka jest Twoja docelowa waga?',
			'onboarding.weight.targetDescription' => 'Ustalenie wagi docelowej pomaga określić długoterminowy plan.',
			'onboarding.weight.metric' => 'Metryczne',
			'onboarding.weight.imperial' => 'Imperialne',
			'onboarding.weight.next' => 'Dalej',
			'onboarding.age.title' => 'Kiedy się urodziłeś/-aś?',
			'onboarding.age.description' => 'Wiek pomaga dokładnie obliczyć Twoje zapotrzebowanie kaloryczne.',
			'onboarding.age.next' => 'Dalej',
			'onboarding.bmiScale.underweight' => 'Niedowaga',
			'onboarding.bmiScale.healthy' => 'Prawidłowa',
			'onboarding.bmiScale.overweight' => 'Nadwaga',
			'onboarding.bmiScale.obese' => 'Otyłość',
			'onboarding.bmiScale.categories.underweight' => 'Niedowaga',
			'onboarding.bmiScale.categories.healthyWeight' => 'Prawidłowa masa ciała',
			'onboarding.bmiScale.categories.overweight' => 'Nadwaga',
			'onboarding.bmiScale.categories.obese' => 'Otyłość',
			'onboarding.bmiScale.messages.underweight' => 'Pomożemy Ci zbudować zdrowy plan, aby osiągnąć zrównoważoną masę ciała dzięki wartościowym posiłkom.',
			'onboarding.bmiScale.messages.healthy' => 'Świetna robota! Jesteś w zdrowym zakresie. Pomożemy Ci utrzymać witalność i energię.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} uprości Twoją drogę dzięki śledzeniu wspieranemu przez AI, abyś mógł/mogła komfortowo osiągnąć cel.',
			'onboarding.bmiScale.messages.obese' => 'Jesteśmy tu, by wspierać Cię spersonalizowanymi wskazówkami i zrównoważonymi strategiami dla Twoich celów zdrowotnych.',
			'onboarding.weightGoal.title' => 'Jaki masz cel?',
			'onboarding.weightGoal.description' => 'Wybierz cel, który najlepiej opisuje to, co chcesz osiągnąć',
			'onboarding.activityLevel.title' => 'Jak bardzo jesteś aktywny/a?',
			'onboarding.activityLevel.description' => 'To pomaga nam dokładniej obliczyć Twoje dzienne zapotrzebowanie kaloryczne',
			'onboarding.healthConnect.title' => 'Połącz z Health Connect',
			'onboarding.healthConnect.description' => 'Synchronizuj dane zdrowotne, aby uzyskać lepsze wglądy i automatyczne śledzenie kalorii',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatyczne śledzenie kalorii',
			'onboarding.healthConnect.automaticTracking.description' => 'Śledź kalorie spalane w aplikacjach fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Wgląd w postępy',
			'onboarding.healthConnect.progressInsights.description' => 'Otrzymuj szczegółowe informacje o trendach zdrowotnych',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Płynna integracja',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronizuj dane z ulubionych aplikacji zdrowotnych',
			'onboarding.healthConnect.connected' => 'Połączono z Health Connect',
			'onboarding.healthConnect.notConnected' => 'Brak połączenia z Health Connect',
			'onboarding.healthConnect.setup' => 'Skonfiguruj Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Pomiń na razie',
			'onboarding.healthConnect.statusConnected' => 'Health Connect jest połączony.',
			'onboarding.healthConnect.statusSuccess' => 'Pomyślnie połączono z Health Connect!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Odmowa uprawnień. Włącz uprawnienia Health Connect w ustawieniach telefonu dla ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Błąd konfiguracji Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nie jesteś sam/a',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Badania pokazują, że regularne śledzenie to czynnik nr 1 długoterminowego sukcesu.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Dla osoby w wieku ${age} lat (${gender}), która chce ${goal}, konsekwentne śledzenie to czynnik nr 1 sukcesu.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} sprawia, że to 10x łatwiejsze niż ręcznie.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Gotowy/a, by zacząć?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Rób zdjęcia posiłków, aby uzyskać natychmiastową analizę',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Loguj regularnie, aby zobaczyć znaczące postępy',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Śledź postępy codziennie, by zachować motywację',
			'onboarding.reinforcement.trackingSuccess.button' => 'Zaczynajmy',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'osoba',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'zdrowszą wersję siebie',
			'onboarding.reinforcement.healthProfile.title' => 'Twój profil zdrowia',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Na podstawie Twoich danych Twoje BMI wynosi ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Dokończmy konfigurację profilu, aby spersonalizować Twoje doświadczenie.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'przybrać',
			'onboarding.reinforcement.healthProfile.goalLose' => 'schudnąć',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Aby osiągnąć cel, musisz ${direction} o ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Jesteś na docelowej wadze! Pomożemy Ci ją utrzymać.',
			'onboarding.reinforcement.healthProfile.button' => 'Jedziemy',
			'onboarding.reinforcement.goalLifestyle.title' => 'Świetny start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Wykonałeś/-aś pierwszy krok ku ${goalText}. Ponieważ jesteś ${activityText}, ${appLabel} dopasuje Twoje cele do Twojego stylu życia.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Spersonalizowane cele kaloryczne',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Wykrywanie posiłków z pomocą AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Szczegółowe rozbicie makroskładników',
			'onboarding.reinforcement.goalLifestyle.button' => 'Zaczynajmy',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'Twoich celów',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktywny/a',
			'tabs.dashboard' => 'Panel',
			'tabs.history' => 'Historia',
			'home.aiSummary.title' => 'Twój skrót AI',
			'home.aiSummary.logMore' => 'Zapisuj więcej posiłków w najbliższych dniach, aby otrzymać spersonalizowane wnioski AI.',
			'home.aiSummary.loading' => 'Wczytywanie podsumowania...',
			'home.aiSummary.mealCount' => ({required Object count}) => 'Zalogowano posiłków: ${count}',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Wynik balansu ${score}',
			'home.aiSummary.topFoods' => 'Najczęstsze posiłki',
			'home.aiSummary.trendUp' => 'Kalorie rosną',
			'home.aiSummary.trendDown' => 'Kalorie spadają',
			'home.aiSummary.trendSteady' => 'Kalorie stabilne',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Zaktualizowano ${time}',
			'home.dailyGoal.title' => 'Ustaw swój dzienny cel',
			'home.dailyGoal.titleSet' => 'Twój dzienny cel',
			'home.dailyGoal.description' => 'Gotowy/a, by rozpocząć swoją drogę do zdrowia? Ustaw poniżej dzienny cel kalorii, aby ruszyć z postępami.',
			'home.dailyGoal.descriptionSet' => 'Kompas ustawiony! To Twój codzienny cel kalorii, który będzie Twoją wskazówką.',
			'home.dailyGoal.yourGoal' => 'Twój cel',
			'home.dailyGoal.goal' => 'Cel',
			'home.dailyGoal.dailyCalories' => 'Dzienne kalorie (kcal)',
			'home.dailyGoal.setGoal' => 'Ustaw cel',
			'home.dailyGoal.intake' => 'Spożycie',
			'home.dailyGoal.burned' => 'Spalone',
			'home.dailyGoal.weightImpact' => 'Wpływ na masę ciała',
			'home.dailyGoal.estLoss' => 'Szac. spadek o',
			'home.dailyGoal.estGain' => 'Szac. wzrost o',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Dzienne podsumowanie',
			'home.dailySummary.calories' => 'Kalorie',
			'home.dailySummary.carbs' => 'Węglowodany',
			'home.dailySummary.protein' => 'Białko',
			'home.dailySummary.fat' => 'Tłuszcz',
			'home.dailySummary.fiber' => 'Błonnik',
			'home.dailySummary.grams' => 'gramy',
			'home.dailySummary.chartAccessibilityLabel' => 'Wykres makroskładników',
			'home.intakeProgress.title' => 'Dzisiejszy podział makro',
			'home.intakeProgress.target' => 'Cel',
			'home.intakeProgress.current' => 'Obecnie',
			'home.intakeHistory.title' => 'Historia makro z 7 dni',
			'home.intakeHistory.trendTitle' => 'Dzisiejszy trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Szczyt: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Brak historii',
			'home.intakeHistory.startLogging' => 'Zacznij logować posiłki, aby zobaczyć tu\n7‑dniowe trendy makro',
			'home.mealLog.title' => 'Zapisane posiłki',
			'home.mealLog.emptyMessage' => 'Zrób zdjęcie ostatniego posiłku, aby dodać go tutaj.',
			'home.mealLog.noMealsToday' => 'Brak posiłków dzisiaj',
			'home.mealLog.seeAllMeals' => 'Zobacz wszystkie',
			'home.mealDescription.title' => 'Szybkie dodawanie z AI',
			'home.mealDescription.description' => 'Opisz swój posiłek, a AI zajmie się resztą.',
			'home.mealDescription.hint' => 'np. Na śniadanie miałem dużą miskę owsianki z pokrojonym bananem i miarką odżywki białkowej...',
			'home.mealDescription.analyzeMeal' => 'Przeanalizuj posiłek',
			'home.favoriteMeals.title' => 'Ulubione posiłki',
			'home.favoriteMeals.description' => 'Szybko dodaj jeden z ulubionych posiłków.',
			'home.favoriteMeals.noFavorites' => 'Brak ulubionych posiłków.',
			'home.favoriteMeals.addFavoriteHint' => 'Kliknij gwiazdkę przy posiłku, aby dodać go do ulubionych.',
			'home.favoriteMeals.seeAll' => 'Zobacz wszystkie',
			'home.favoriteMeals.add' => 'Dodaj',
			'home.mealSnap.title' => 'Zrób zdjęcie i śledź posiłek',
			'home.mealSnap.description' => 'Użyj aparatu, aby zrobić zdjęcie jedzenia do analizy AI.',
			'home.mealSnap.openCamera' => 'Otwórz aparat',
			'home.mealSnap.gallery' => 'Galeria',
			'home.mealSnap.compressingPhoto' => 'Optymalizowanie zdjęcia…',
			'home.mealSnap.uploadingPhoto' => 'Przesyłanie zdjęcia…',
			'home.connectHealth.title' => 'Synchronizuj z Health Connect',
			'home.connectHealth.description' => 'Synchronizuj dane żywieniowe z Health Connect',
			'home.connectHealth.install' => 'Zainstaluj',
			'home.connectHealth.connect' => 'Połącz',
			'history.noMeals' => 'Brak zapisanych posiłków',
			'history.emptyMessage' => 'Zrób zdjęcie ostatniego posiłku, aby dodać go tutaj.',
			'history.today' => 'Dzisiaj',
			'history.yesterday' => 'Wczoraj',
			'meal.ohNo' => 'Ojej!',
			'meal.delete' => 'Usuń',
			'meal.editMeal' => 'Edytuj posiłek',
			'meal.addMeal' => 'Dodaj posiłek',
			'meal.saveMeal' => 'Zapisz posiłek',
			'meal.save' => 'Zapisz',
			'meal.mealName' => 'Nazwa posiłku',
			'meal.mealNameHint' => 'np. Jajecznica z tostem',
			'meal.mealQuantity' => 'Ilość posiłku',
			'meal.mealQuantityHint' => 'np. 1 miska, 2 kromki',
			'meal.timeOfMeal' => 'Godzina posiłku',
			'meal.timeOfMealHint' => 'Wybierz godzinę posiłku',
			'meal.mealType' => 'Rodzaj posiłku',
			'meal.nutrition.calories' => 'Kalorie',
			'meal.nutrition.carbs' => 'Węglowodany (g)',
			'meal.nutrition.protein' => 'Białko (g)',
			'meal.nutrition.fat' => 'Tłuszcz (g)',
			'meal.nutrition.fiber' => 'Błonnik (g)',
			'meal.deleteConfirmation.title' => 'Usunąć posiłek',
			'meal.deleteConfirmation.message' => 'Czy na pewno chcesz usunąć ten wpis posiłku?',
			'meal.deleteConfirmation.cancel' => 'Anuluj',
			'meal.deleteConfirmation.delete' => 'Usuń',
			'meal.addedToLog' => 'Dodano posiłek do dziennika!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nie udało się dodać posiłku: ${error}',
			'meal.savedSuccessfully' => 'Pomyślnie dodano posiłek!',
			'meal.updatedSuccessfully' => 'Pomyślnie zaktualizowano posiłek!',
			'meal.errorSaving' => ({required Object error}) => 'Błąd zapisu posiłku: ${error}',
			'meal.removedFromFavorites' => 'Usunięto z ulubionych!',
			'meal.savedAsFavorite' => 'Zapisano jako ulubione!',
			'meal.unfavorite' => 'Usuń z ulubionych',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nie udało się zaktualizować ulubionych: ${error}',
			'meal.feedbackThanks' => 'Dziękujemy za opinię!',
			'meal.reanalysisUpdated' => 'Zaktualizowano analizę posiłku na podstawie Twojej opinii.',
			'meal.failedToProcess' => ({required Object error}) => 'Nie udało się przetworzyć: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Nie udało się przetworzyć obrazu: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Błąd kompresji obrazu: ${error}',
			'meal.failedToSave' => 'Nie udało się zapisać danych. Spróbuj ponownie.',
			'meal.skip' => 'Pomiń',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Pytanie ${current} z ${total}',
			'meal.variation.noVariationsAvailable' => 'Brak dostępnych wariantów',
			'meal.analysis.title' => 'Analiza posiłku przez AI',
			'meal.analysis.reassurance' => 'To zwykle zajmuje kilka sekund.',
			'meal.analysis.stepStarted' => 'Zaczynamy…',
			'meal.analysis.stepDecomposition' => 'Rozpoznawanie posiłku…',
			'meal.analysis.stepIngredients' => 'Dopasowywanie składników do danych żywieniowych…',
			'meal.analysis.stepUncertainty' => 'Sprawdzanie pewności…',
			'meal.analysis.stepMealTypeQuestion' => 'Prawie gotowe…',
			'meal.analysis.stepResult' => 'Finalizowanie wyniku…',
			'meal.analysis.stepError' => 'Coś poszło nie tak',
			'meal.analysis.stepDefault' => 'Analizowanie Twojego posiłku…',
			'meal.analysis.progressUnderstand' => 'Zrozum',
			'meal.analysis.progressMatch' => 'Dopasuj',
			'meal.analysis.progressCheck' => 'Sprawdź',
			'meal.analysis.progressFinish' => 'Zakończ',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'Wykryto ${count} składników',
			'meal.analysis.ingredientsPending' => 'Skanowanie składników…',
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
			'favorites.title' => 'Ulubione',
			'favorites.empty' => 'Brak ulubionych posiłków.',
			'favorites.searchPlaceholder' => 'Szukaj w ulubionych',
			'favorites.searchEmptyTitle' => 'Brak ulubionych pasujących do wyszukiwania',
			'favorites.searchEmptySubtitle' => 'Spróbuj innej nazwy posiłku, ilości lub rodzaju posiłku.',
			'favorites.sortLabel' => 'Sortuj ulubione',
			'favorites.undo' => 'Cofnij',
			'favorites.removed' => ({required Object name}) => 'Usunięto ${name} z ulubionych',
			'favorites.sortOptions.recent' => 'Najnowsze',
			'favorites.sortOptions.calories' => 'Kalorie',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Brak danych profilu',
			'profile.yourProfile' => 'Twój profil',
			'profile.viewAndManage' => 'Przeglądaj i zarządzaj informacjami zdrowotnymi',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'PODSTAWOWE INFORMACJE',
			'profile.sections.goalsAndActivity' => 'CELE I AKTYWNOŚĆ',
			'profile.sections.calculatedValues' => 'WARTOŚCI OBLICZONE',
			'profile.gender' => 'Płeć',
			'profile.height' => 'Wzrost',
			'profile.weight' => 'Waga',
			'profile.age' => 'Wiek',
			'profile.weightGoal' => 'Cel wagowy',
			'profile.targetWeight' => 'Waga docelowa',
			'profile.activityLevel' => 'Poziom aktywności',
			'profile.healthMetrics' => 'Wskaźniki zdrowia',
			'profile.notSet' => 'Brak',
			'profile.years' => 'lat',
			'profile.updatedSuccessfully' => 'Profil zaktualizowany pomyślnie!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Dzienny cel',
			'profile.calculatedValues.calPerDay' => 'kcal/dzień',
			'profile.calculatedValues.notAvailable' => 'Niedostępne',
			'healthScore.title' => 'Wynik zdrowia',
			'healthScore.whyThisScore' => 'Skąd ta ocena?',
			'healthScore.note' => 'Ten wynik to szacunek AI oparty na rozpoznanych składnikach i gęstości odżywczej. Zawsze konsultuj się ze specjalistą w sprawach diety.',
			'healthScore.unhealthy' => 'Niezdrowe',
			'healthScore.healthy' => 'Zdrowe',
			'healthScore.neutral' => 'Neutralne',
			'editProfile.title' => 'Edytuj profil',
			'editProfile.sections.personalInformation' => 'DANE OSOBOWE',
			'editProfile.sections.physicalMeasurements' => 'POMIARY FIZYCZNE',
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
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metryczne (cm)',
			'editProfile.imperialFtIn' => 'Imperialne (ft/in)',
			'editProfile.metricKg' => 'Metryczne (kg)',
			'editProfile.imperialLbs' => 'Imperialne (lbs)',
			'editProfile.genders.male' => 'Mężczyzna',
			'editProfile.genders.female' => 'Kobieta',
			'editProfile.genders.other' => 'Inna',
			'editProfile.weightGoals.loseWeight.name' => 'Schudnąć',
			'editProfile.weightGoals.loseWeight.description' => 'Utwórz deficyt kaloryczny, aby schudnąć',
			'editProfile.weightGoals.maintainWeight.name' => 'Utrzymać wagę',
			'editProfile.weightGoals.maintainWeight.description' => 'Utrzymuj swoją obecną wagę',
			'editProfile.weightGoals.gainWeight.name' => 'Przybrać na wadze',
			'editProfile.weightGoals.gainWeight.description' => 'Utwórz nadwyżkę kaloryczną, aby przybrać na wadze',
			'editProfile.activityLevels.sedentary.name' => 'Siedzący tryb',
			'editProfile.activityLevels.sedentary.description' => 'Mało lub brak ćwiczeń',
			'editProfile.activityLevels.lightlyActive.name' => 'Lekko aktywny/a',
			'editProfile.activityLevels.lightlyActive.description' => 'Lekka aktywność 1–3 dni/tydz.',
			'editProfile.activityLevels.moderatelyActive.name' => 'Umiarkowanie aktywny/a',
			'editProfile.activityLevels.moderatelyActive.description' => 'Umiarkowana aktywność 3–5 dni/tydz.',
			'editProfile.activityLevels.veryActive.name' => 'Bardzo aktywny/a',
			'editProfile.activityLevels.veryActive.description' => 'Intensywne ćwiczenia 6–7 dni/tydz.',
			'editProfile.activityLevels.extremelyActive.name' => 'Skrajnie aktywny/a',
			'editProfile.activityLevels.extremelyActive.description' => 'Bardzo ciężkie ćwiczenia, praca fizyczna',
			'settings.title' => 'Ustawienia',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALIZACJA',
			'settings.sections.notifications' => 'POWIADOMIENIA',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'WSPARCIE I PRAWNE',
			'settings.sections.about' => 'O APLIKACJI',
			'settings.sections.dangerZone' => 'STREFA RYZYKA',
			'settings.sections.developer' => 'DEWELOPER',
			'settings.editProfile.title' => 'Edytuj profil',
			'settings.editProfile.subtitle' => 'Zaktualizuj swoje dane osobowe',
			'settings.language.title' => 'Język',
			'settings.language.subtitle' => 'Wybierz preferowany język',
			'settings.language.searchHint' => 'Szukaj języka...',
			'settings.language.noResults' => 'Brak wyników',
			'settings.heightUnit.title' => 'Jednostka wzrostu',
			'settings.weightUnit.title' => 'Jednostka wagi',
			'settings.mealReminders.title' => 'Przypomnienia o posiłkach',
			'settings.mealReminders.subtitle' => 'Pozostań na kursie dzięki terminowym alertom',
			'settings.theme.title' => 'Motyw',
			'settings.theme.light' => 'Jasny',
			'settings.theme.dark' => 'Ciemny',
			'settings.theme.system' => 'Systemowy',
			'settings.sendFeedback.title' => 'Prześlij opinię',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Pomóż ulepszyć ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Opinia o ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Podaj swoją opinię poniżej:',
			'settings.sendFeedback.appVersion' => 'Wersja aplikacji',
			'settings.sendFeedback.device' => 'Urządzenie',
			'settings.sendFeedback.osVersion' => 'Wersja systemu',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Eksport historii posiłków',
			'settings.exportMealHistory.subtitle' => 'Udostępnij plik CSV ze swoimi posiłkami',
			'settings.exportMealHistory.shareText' => 'Eksport historii posiłków Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Nie udało się wyeksportować historii posiłków: ${error}',
			'settings.clearAllData.title' => 'Wyczyść wszystkie dane',
			'settings.clearAllData.subtitle' => 'Nieodwracalnie usuń wszystkie informacje',
			'settings.clearAllData.confirmationTitle' => 'Wyczyścić wszystkie dane?',
			'settings.clearAllData.confirmationMessage' => 'Tej operacji nie można cofnąć. Wszystkie zapisane posiłki, ulubione i ustawienia profilu zostaną trwale usunięte.',
			'settings.clearAllData.cancel' => 'Anuluj',
			'settings.clearAllData.clearEverything' => 'Wyczyść wszystko',
			'settings.debugOptions.title' => 'Opcje debugowania',
			'settings.developerModeEnabled' => 'Włączono tryb deweloperski!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Przeglądaj i zarządzaj uprawnieniami',
			'settings.healthConnect.unavailable.title' => 'Health Connect niedostępny',
			'settings.healthConnect.unavailable.description' => 'Health Connect nie jest dostępny na tym urządzeniu. Zainstaluj Health Connect ze Sklepu Play (Android 9+) lub zaktualizuj do Androida 14+.',
			'settings.healthConnect.permissions.title' => 'Uprawnienia',
			'settings.healthConnect.permissions.description' => 'Poniższe uprawnienia są wymagane, aby zapewnić integrację z Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Przyznano',
			'settings.healthConnect.permissions.notGranted' => 'Nieprzyznane',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Odczyt całkowitych spalonych kalorii',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Pozwala aplikacji odczytywać całkowite kalorie spalone z Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'To uprawnienie służy do wyświetlania dziennego spalania kalorii w aplikacji, pomagając zrozumieć całkowity wydatek energetyczny w ciągu dnia.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Odczyt danych żywieniowych',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Pozwala aplikacji odczytywać dane żywieniowe z Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'To uprawnienie umożliwia odczyt informacji żywieniowych zapisanych przez inne aplikacje połączone z Health Connect, zapewniając pełniejszy obraz Twojego żywienia.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Zapis danych żywieniowych',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Pozwala aplikacji zapisywać dane żywieniowe w Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'To uprawnienie pozwala synchronizować zapisane posiłki z Health Connect, dzięki czemu dane żywieniowe są dostępne w innych używanych aplikacjach zdrowia i fitness.',
			'settings.healthConnect.managePermissions' => 'Zarządzaj uprawnieniami',
			'settings.healthConnect.openSettings' => 'Otwórz ustawienia Health Connect',
			'settings.healthConnect.requestPermissions' => 'Poproś o uprawnienia',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Prośba o uprawnienia została anulowana lub nie powiodła się. Spróbuj ponownie lub nadaj uprawnienia ręcznie w ustawieniach Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Nie można poprosić o uprawnienia. Spróbuj ponownie lub nadaj uprawnienia ręcznie w ustawieniach Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Trwa żądanie uprawnień…',
			'settings.about.title' => 'O aplikacji',
			'settings.about.tagline' => 'Szybka, darmowa i z prywatnością na pierwszym miejscu — świadomość kalorii',
			'settings.about.ourStory.title' => 'Nasza historia',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} powstało z prostej frustracji: większość aplikacji do liczenia kalorii jest albo zbyt skomplikowana, wymaga ciągłego ręcznego wprowadzania danych, pobiera wysokie opłaty abonamentowe, albo idzie na kompromisy w kwestii prywatności.\n\nJako samodzielny deweloper chciałem stworzyć coś prostszego i uczciwszego — aplikację, która wykorzystuje AI, by zmniejszyć wysiłek, pozostaje szybka i darmowa oraz traktuje Twoje dane zdrowotne z szacunkiem.\n\n${appLabel} to aplikacja, której sobie życzyłem: bez kont, bez śledzenia, bez reklam — tylko jasne, praktyczne wnioski i Twoje cele zdrowotne.',
			'settings.about.privacy.title' => 'Twoja prywatność ma znaczenie',
			'settings.about.privacy.description' => 'Prywatność to nie dodatek — to zasada projektowa. Oto, co to oznacza w praktyce:',
			'settings.about.privacy.noAccounts' => 'Brak kont\nKorzystasz od razu. Bez rejestracji i bez tożsamości.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Brak śledzenia zachowań\n${appLabel} nie monitoruje Twojej aktywności, nie buduje profili i nie śledzi Cię w innych aplikacjach ani w sieci.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Bez reklam z założenia\n${appLabel} działa bez reklam i monetyzacji opartej na danych.',
			'settings.about.privacy.noDataSelling' => 'Brak sprzedaży danych\nTwoje dane zdrowotne nigdy nie są sprzedawane ani udostępniane podmiotom trzecim.',
			'settings.about.privacy.localStorage' => 'Lokalne przechowywanie danych\nTwoje dane pozostają na Twoim urządzeniu.',
			'settings.about.privacy.privacyPolicy' => 'Polityka prywatności',
			'settings.about.developer.title' => 'Stworzona przez samodzielnego dewelopera',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} jest tworzona i utrzymywana przez jednego dewelopera, skupionego na spokojnym, szanującym prywatność oprogramowaniu zdrowotnym.\n\nOpinie czytam osobiście i to one kształtują kierunek rozwoju aplikacji.',
			'settings.about.developer.website' => 'Strona',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Podoba Ci się ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Twoja opinia pomaga uczynić ${appLabel} lepszą dla wszystkich.',
			'settings.about.feedback.rateApp' => 'Oceń w Sklepie Play',
			'settings.about.feedback.sendFeedback' => 'Prześlij opinię',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Kompilacja ${buildNumber}',
			'reminders.title' => 'Pozostań na kursie dzięki przypomnieniom',
			'reminders.description' => 'Otrzymuj delikatne przypomnienia o logowaniu posiłków i zachowuj regularność w realizacji celów żywieniowych',
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
			'reminders.enabledSuccessfully' => 'Pomyślnie włączono powiadomienia!',
			'reminders.permissionDenied' => 'Odmowa uprawnień do powiadomień',
			'reminders.errorEnabling' => ({required Object error}) => 'Błąd włączania powiadomień: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Błąd kończenia konfiguracji: ${error}',
			'notifications.breakfast.title' => 'Pora na śniadanie! 🍳',
			'notifications.breakfast.body' => 'Nie zapomnij zalogować śniadania',
			'notifications.lunch.title' => 'Pora na obiad! 🥗',
			'notifications.lunch.body' => 'Czas zalogować obiad',
			'notifications.dinner.title' => 'Pora na kolację! 🍽️',
			'notifications.dinner.body' => 'Nie zapomnij zalogować kolacji',
			'notifications.snack.title' => 'Pora na przekąskę! 🍎',
			'notifications.snack.body' => 'Czas na zdrową przekąskę',
			'notifications.test.title' => 'Powiadomienie testowe',
			'login.title' => 'Logowanie',
			'login.signInWithGoogle' => 'Zaloguj się przez Google',
			'login.signInFailed' => 'Logowanie przez Google nie powiodło się lub zostało anulowane.',
			'disclaimer.pleaseNote' => 'Uwaga',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} podaje szacunkowe informacje żywieniowe. Dokładność zależy od Twoich danych i różnic w jedzeniu. Traktuj to jako wskazówkę, a nie ostateczne źródło. Po spersonalizowaną poradę skonsultuj się ze specjalistą.',
			'disclaimer.snap.portionSize.title' => 'Wielkość porcji',
			'disclaimer.snap.portionSize.description' => 'Dokładność szacunków w dużym stopniu zależy od prawidłowego oszacowania wielkości porcji.',
			'disclaimer.snap.preparationMethods.title' => 'Metody przygotowania',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Sposób przygotowania może znacząco zmieniać wartości odżywcze. Szacunki ${appLabel} nie zawsze uwzględniają te różnice.',
			'disclaimer.snap.ingredients.title' => 'Składniki',
			'disclaimer.snap.ingredients.description' => 'Złożone dania z wieloma ukrytymi składnikami mogą prowadzić do mniej dokładnych oszacowań.',
			'disclaimer.snap.databaseLimitations.title' => 'Ograniczenia bazy danych',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Baza żywności ${appLabel} jest obszerna, ale może nie zawierać każdego produktu ani wariantu.',
			'disclaimer.weightEstimate.title' => 'O szacunku zmiany wagi',
			'disclaimer.weightEstimate.description' => 'Prognozowana zmiana masy ciała to teoretyczny szacunek oparty na prostym modelu „kalorie przyjęte vs. spalone”. Ma służyć wyłącznie motywacji, a nie przewidywaniu faktycznej wagi.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Dokładność kalorii',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Ten szacunek jest tak dokładny, jak Twoje rejestrowane spożycie i wydatek kalorii. Niedokładne logi skutkują niedokładną prognozą.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Czynniki biologiczne',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Rzeczywista utrata/przyrost masy zależą od metabolizmu, hormonów, snu, stresu, nawodnienia i innych indywidualnych czynników, których ${appLabel} nie mierzy.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Woda i wahania',
			'disclaimer.weightEstimate.waterWeight.description' => 'Dzienne wahania wagi są normalne i wynikają z retencji wody, trawienia i pory dnia. Szacunek ich nie uwzględnia.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Wskazówki specjalistyczne',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Nie używaj tego szacunku do podejmowania decyzji medycznych. Zawsze konsultuj się z lekarzem lub dietetykiem w sprawie spersonalizowanego planu.',
			'disclaimer.healthMetrics.description' => 'Te wskaźniki pomagają zrozumieć potrzeby energetyczne organizmu i ukierunkować Twoje cele żywieniowe.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Podstawowa przemiana materii (BMR) to liczba kalorii spalanych w spoczynku na podstawowe funkcje, takie jak oddech i krążenie. BMR zależy od wieku, płci, wzrostu i wagi. Wyższy BMR oznacza, że organizm spala więcej kalorii w spoczynku — zwykle dzięki większej masie mięśniowej, młodszemu wiekowi lub byciu mężczyzną. Niższy BMR częściej wiąże się z mniejszą masą mięśniową, starszym wiekiem lub byciem kobietą.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Całkowity wydatek energetyczny (TDEE) to łączna liczba kalorii spalanych każdego dnia: BMR plus energia wydatkowana na aktywność fizyczną i codzienny ruch. TDEE zależy od BMR i poziomu aktywności. Wyższy TDEE oznacza większe całkowite spalanie, zwykle dzięki większej aktywności lub wyższemu BMR. Niższy TDEE sugeruje mniejszą aktywność w ciągu dnia lub niższy BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Dzienny cel',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Dzienny cel to rekomendowane dzienne spożycie kalorii na podstawie Twojego TDEE i celu wagowego. Aby schudnąć, spożywasz mniej niż TDEE. Aby utrzymać wagę, dopasowujesz spożycie do TDEE. Aby przybrać, spożywasz więcej niż TDEE. To pomaga osiągać zamierzoną zmianę wagi w zdrowym tempie.',
			'disclaimer.calorieExpenditure.title' => 'Szacunek wydatku kalorycznego',
			'disclaimer.calorieExpenditure.description' => 'Gdy dane z Health Connect są niedostępne, szacujemy dzisiejsze spalone kalorie na podstawie Twojego BMR i poziomu aktywności (TDEE), skalowanych do części dnia, która już upłynęła.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Jak obliczamy szacunek',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Wyliczamy Twoje TDEE (z profilu), a następnie mnożymy przez ułamek dnia, który minął (godziny + minuty) / 24, aby oszacować dotychczas spalone kalorie.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Wskazówki specjalistyczne',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Nie używaj tego szacunku do podejmowania decyzji medycznych. Zawsze konsultuj się z lekarzem lub dietetykiem w sprawie spersonalizowanych porad.',
			'common.close' => 'Zamknij',
			'common.kContinue' => 'Kontynuuj',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Podoba Ci się ${appLabel}?',
			'feedbackRating.yes' => 'Tak, podoba mi się',
			'feedbackRating.no' => 'Niespecjalnie',
			'feedbackRating.rateStepHeading' => 'Oceń w Sklepie Play',
			'feedbackRating.emailStepHeading' => 'Wyślij opinię e‑mailem',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Krótka ocena pomaga innym znaleźć ${appLabel} i wspiera dalszy rozwój. Poświęcisz chwilkę?',
			'feedbackRating.shareFeedbackViaEmail' => 'Twoja opinia kształtuje kolejne kroki — czytamy każdą wiadomość. Chcesz podzielić się przemyśleniami e‑mailem?',
			'feedbackRating.rateCta' => 'Oceń w Sklepie Play',
			'feedbackRating.maybeLater' => 'Może później',
			'feedbackRating.sendFeedback' => 'Prześlij opinię',
			'feedbackRating.noThanks' => 'Nie, dziękuję',
			'feedbackRating.aboutUsDescription' => 'Stworzone z troską przez mały zespół. Stawiamy na prywatność, prostotę i pomoc w budowaniu lepszych nawyków żywieniowych.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Ciekawi Cię, kto stoi za ${appLabel}? Zobacz ',
			'feedbackRating.aboutUsLinkLabel' => 'O nas',
			'feedbackRating.thankYouMessage' => 'Dziękujemy! Zapytamy innym razem.',
			'health.syncFailed' => 'Nie udało się zsynchronizować z Health Connect',
			'health.mealSynced' => 'Posiłek zsynchronizowany z Health Connect',
			_ => null,
		};
	}
}
