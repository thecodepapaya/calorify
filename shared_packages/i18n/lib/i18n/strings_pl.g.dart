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
	@override String get rateLimitExceeded => 'Wykonałeś zbyt wiele żądań. Proszę odczekaj chwilę, zanim spróbujesz ponownie.';
	@override String get networkError => 'Błąd sieci. Sprawdź połączenie z internetem.';
	@override String get unknownError => 'Coś poszło nie tak. Spróbuj ponownie później.';
	@override String get loadingProfileData => 'Błąd podczas ładowania danych profilu';
	@override String get somethingWentWrong => 'Coś poszło nie tak.';
	@override String get retry => 'Ponów';
}

// Path: onboarding
class _TranslationsOnboardingPl implements TranslationsOnboardingEn {
	_TranslationsOnboardingPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Witaj w ${appLabel}';
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
	@override String get noMeals => 'Brak zarejestrowanych posiłków';
	@override String get emptyMessage => 'Zrób zdjęcie ostatniego posiłku, aby zapisać je tutaj.';
	@override String get today => 'Dziś';
	@override String get yesterday => 'Wczoraj';
}

// Path: meal
class _TranslationsMealPl implements TranslationsMealEn {
	_TranslationsMealPl._(this._root);

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
	@override String get mealQuantity => 'Ilość posiłku';
	@override String get mealQuantityHint => 'np. 1 miska, 2 kromki';
	@override String get timeOfMeal => 'Czas posiłku';
	@override String get timeOfMealHint => 'Wybierz godzinę, kiedy spożyłeś posiłek';
	@override String get mealType => 'Rodzaj posiłku';
	@override late final _TranslationsMealNutritionPl nutrition = _TranslationsMealNutritionPl._(_root);
	@override late final _TranslationsMealDeleteConfirmationPl deleteConfirmation = _TranslationsMealDeleteConfirmationPl._(_root);
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
	@override late final _TranslationsMealQuestionFlowPl questionFlow = _TranslationsMealQuestionFlowPl._(_root);
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
	@override String get searchPlaceholder => 'Szukaj ulubionych posiłków';
	@override String get searchEmptyTitle => 'Żadne ulubione nie pasują do wyszukiwania';
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
	@override String get viewAndManage => 'Przeglądaj i zarządzaj informacjami o zdrowiu';
	@override late final _TranslationsProfileSectionsPl sections = _TranslationsProfileSectionsPl._(_root);
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
	@override late final _TranslationsProfileCalculatedValuesPl calculatedValues = _TranslationsProfileCalculatedValuesPl._(_root);
}

// Path: healthScore
class _TranslationsHealthScorePl implements TranslationsHealthScoreEn {
	_TranslationsHealthScorePl._(this._root);

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
	@override String get developerModeEnabled => 'Tryb dewelopera włączony!';
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
	@override String get title => 'Jakiej jesteś płci?';
	@override String get description => 'Płeć pomaga nam dokładnie obliczyć podstawową przemianę materii (BMR).';
	@override String get next => 'Dalej';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightPl implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak masz na wzrost?';
	@override String get description => 'Twój wzrost pomaga dokładnie obliczyć BMI i zapotrzebowanie energetyczne.';
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
	@override String get currentDescription => 'Twoja aktualna waga jest niezbędna do spersonalizowania dziennych celów.';
	@override String get targetTitle => 'Jaka jest Twoja docelowa waga?';
	@override String get targetDescription => 'Ustawienie wagi docelowej pomaga określić długoterminowy plan.';
	@override String get metric => 'Metryczne';
	@override String get imperial => 'Imperialne';
	@override String get next => 'Dalej';
}

// Path: onboarding.age
class _TranslationsOnboardingAgePl implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kiedy masz urodziny?';
	@override String get description => 'Twój wiek pomaga dokładnie obliczyć zapotrzebowanie kaloryczne.';
	@override String get next => 'Dalej';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScalePl implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScalePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Niedowaga';
	@override String get healthy => 'Zdrowy';
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
	@override String get title => 'Jaki jest Twój cel?';
	@override String get description => 'Wybierz cel, który najlepiej opisuje to, co chcesz osiągnąć';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelPl implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak bardzo jesteś aktywny?';
	@override String get description => 'To pomaga nam dokładniej obliczyć Twoje dzienne zapotrzebowanie kaloryczne';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectPl implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Połącz z Health Connect';
	@override String get description => 'Synchronizuj dane zdrowotne, aby uzyskać lepsze informacje i automatyczne śledzenie kalorii';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingPl automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingPl._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsPl progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsPl._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationPl seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationPl._(_root);
	@override String get connected => 'Health Connect połączony';
	@override String get notConnected => 'Health Connect niepołączony';
	@override String get setup => 'Skonfiguruj Health Connect';
	@override String get skipForNow => 'Pomiń na razie';
	@override String get statusConnected => 'Health Connect jest połączony.';
	@override String get statusSuccess => 'Health Connect został pomyślnie połączony!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Odmowa uprawnień. Włącz uprawnienia Health Connect w ustawieniach telefonu dla ${appLabel}.';
	@override String statusError({required Object error}) => 'Błąd podczas konfiguracji Health Connect: ${error}';
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
class _TranslationsHomeDailyGoalPl implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalPl._(this._root);

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
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryPl implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryPl._(this._root);

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
class _TranslationsHomeIntakeProgressPl implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dzisiejszy podział makro';
	@override String get target => 'Cel';
	@override String get current => 'Aktualnie';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryPl implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => '7-dniowa historia makro';
	@override String get trendTitle => 'Dzisiejszy trend';
	@override String peakHour({required Object hour}) => 'Szczyt: ${hour}:00';
	@override String get noHistoryYet => 'Brak historii';
	@override String get startLogging => 'Zacznij zapisywać posiłki, aby zobaczyć tutaj\n7-dniowe trendy makro';
}

// Path: home.mealLog
class _TranslationsHomeMealLogPl implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zalogowane posiłki';
	@override String get emptyMessage => 'Zrób zdjęcie ostatniego posiłku, aby zapisać je tutaj.';
	@override String get noMealsToday => 'Brak zarejestrowanych posiłków na dziś';
	@override String get seeAllMeals => 'Zobacz wszystkie posiłki';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionPl implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szybkie dodawanie z AI';
	@override String get description => 'Opisz posiłek, a AI zajmie się szczegółami.';
	@override String get hint => 'np. Na śniadanie zjadłem dużą miskę owsianki z pokrojonym bananem i miarką białka ...';
	@override String get analyzeMeal => 'Analizuj posiłek';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsPl implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsPl._(this._root);

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
class _TranslationsHomeMealSnapPl implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapPl._(this._root);

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
class _TranslationsHomeConnectHealthPl implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchronizuj z Health Connect';
	@override String get description => 'Synchronizuj swoje dane żywieniowe z Health Connect';
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
	@override String get title => 'Usuń posiłek';
	@override String get message => 'Czy na pewno chcesz usunąć ten wpis posiłku?';
	@override String get cancel => 'Anuluj';
	@override String get delete => 'Usuń';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowPl implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Pytanie ${current} z ${total}';
	@override String get noQuestionsAvailable => 'Brak dostępnych pytań';
	@override String get next => 'Dalej';
	@override String get continueLabel => 'Kontynuuj';
}

// Path: meal.analysis
class _TranslationsMealAnalysisPl implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisPl._(this._root);

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
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Wskazówka: Konsekwencja jest ważniejsza niż perfekcja — regularne zapisy ujawniają istotne wzorce.';
	@override String get offlineTip1 => 'Wskazówka: Do zdjęć najlepiej naturalne światło i ujęcie z góry — pomagają w ocenie porcji.';
	@override String get offlineTip2 => 'Wskazówka: Wspomnij o napojach, sosach i oleju do smażenia — to kalorie, które często są pomijane.';
	@override String get offlineTip3 => 'Wskazówka: Krótka informacja o porcji (1 miska, duża kawa) znacznie poprawia dokładność.';
	@override String get offlineTip4 => 'Wskazówka: Zapis po posiłku też buduje nawyk; perfekcja nie jest obowiązkowa.';
	@override String get offlineTip5 => 'Wskazówka: Powiedz, jak jedzenie było przygotowane, jeśli to znacząco zmienia kalorie (smażone vs pieczone).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackPl implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackPl._(this._root);

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
class _TranslationsFavoritesSortOptionsPl implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Ostatnie';
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
	@override String get calculatedValues => 'OBLICZONE WARTOŚCI';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesPl implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Dzienny cel';
	@override String get calPerDay => 'cal/dzień';
	@override String get notAvailable => 'N/D';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsPl implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'DANE OSOBOWE';
	@override String get physicalMeasurements => 'POMIARY';
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
	@override String get supportAndLegal => 'POMOC I DANE PRAWNE';
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
	@override String get searchHint => 'Szukaj języków...';
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
	@override String get subtitle => 'Pozostań na ścieżce dzięki przypomnieniom';
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
class _TranslationsSettingsExportMealHistoryPl implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eksportuj historię posiłków';
	@override String get subtitle => 'Udostępnij plik CSV z zapisanymi posiłkami';
	@override String get shareText => 'Eksport historii posiłków Calorify';
	@override String failed({required Object error}) => 'Nie można wyeksportować historii posiłków: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataPl implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wyczyść wszystkie dane';
	@override String get subtitle => 'Trwale usuń wszystkie swoje informacje';
	@override String get confirmationTitle => 'Wyczyścić wszystkie dane?';
	@override String get confirmationMessage => 'Ta operacja jest nieodwracalna. Wszystkie zapisane posiłki, ulubione i ustawienia profilu zostaną trwale usunięte.';
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
	@override String get subtitle => 'Wyświetl i zarządzaj uprawnieniami';
	@override late final _TranslationsSettingsHealthConnectUnavailablePl unavailable = _TranslationsSettingsHealthConnectUnavailablePl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsPl permissions = _TranslationsSettingsHealthConnectPermissionsPl._(_root);
	@override String get managePermissions => 'Zarządzaj uprawnieniami';
	@override String get openSettings => 'Otwórz ustawienia Health Connect';
	@override String get requestPermissions => 'Poproś o uprawnienia';
	@override String get permissionRequestCancelledOrFailed => 'Żądanie uprawnień zostało anulowane lub nie powiodło się. Spróbuj ponownie lub przyznaj uprawnienia ręcznie w ustawieniach Health Connect.';
	@override String get permissionRequestFailed => 'Nie można poprosić o uprawnienia. Spróbuj ponownie lub przyznaj uprawnienia ręcznie w ustawieniach Health Connect.';
	@override String get requestingPermissions => 'Proszę czekać...';
}

// Path: settings.about
class _TranslationsSettingsAboutPl implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'O aplikacji';
	@override String get tagline => 'Szybkie, darmowe i zaprojektowane z myślą o prywatności';
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
	@override String get title => 'Czas na śniadanie! 🍳';
	@override String get body => 'Nie zapomnij zapisać swojego śniadania';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchPl implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czas na lunch! 🥗';
	@override String get body => 'Czas zapisać obiad';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerPl implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czas na kolację! 🍽️';
	@override String get body => 'Nie zapomnij zapisać kolacji';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackPl implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czas na przekąskę! 🍎';
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
	@override String description({required Object appLabel}) => '${appLabel} dostarcza szacunkowe informacje żywieniowe. Dokładność zależy od Twoich danych i wariantów potraw. Używaj jako wskazówki, nie jako ostatecznego źródła. W przypadku indywidualnej porady dietetycznej skonsultuj się ze specjalistą.';
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
	@override String get title => 'O szacowanej zmianie wagi';
	@override String get description => 'Przewidywana zmiana wagi to teoretyczne oszacowanie oparte na prostym modelu kalorie w vs kalorie out. Ma charakter motywacyjny, a nie prognozę rzeczywistej wagi.';
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
	@override String get description => 'Te metryki pomagają zrozumieć zapotrzebowanie energetyczne organizmu i kierować celami żywieniowymi.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrPl bmr = _TranslationsDisclaimerHealthMetricsBmrPl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeePl tdee = _TranslationsDisclaimerHealthMetricsTdeePl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalPl dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalPl._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditurePl implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditurePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szacunkowe spalanie kalorii';
	@override String get description => 'Gdy dane z Health Connect są niedostępne, szacujemy dzisiejsze spalone kalorie używając BMR i poziomu aktywności (TDEE), skalując według części dnia, która już minęła.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedPl howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedPl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePl professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePl._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionPl implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inteligentne rozpoznawanie jedzenia';
	@override String get description => 'Zrób zdjęcie i pozwól AI zidentyfikować posiłek';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisPl implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analiza AI';
	@override String get description => 'Otrzymaj natychmiastowe informacje o wartościach odżywczych na podstawie opisu';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationPl implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integracja z Health Connect';
	@override String get description => 'Połącz z Health Connect, aby uzyskać lepsze informacje';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesPl implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Niedowaga';
	@override String get healthyWeight => 'Prawidłowa waga';
	@override String get overweight => 'Nadwaga';
	@override String get obese => 'Otyłość';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesPl implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Możemy pomóc zbudować zdrowy plan, by osiągnąć zrównoważoną wagę przy odżywczych posiłkach.';
	@override String get healthy => 'Świetnie! Jesteś w zdrowym przedziale. Pomożemy utrzymać Twoją witalność i energię.';
	@override String overweight({required Object appLabel}) => '${appLabel} uprości twoją drogę dzięki śledzeniu wspieranemu przez AI, abyś komfortowo osiągnął cel.';
	@override String get obese => 'Jesteśmy tu, by wspierać Cię spersonalizowanymi wskazówkami i trwałymi strategiami dla Twoich celów zdrowotnych.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingPl implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatyczne śledzenie kalorii';
	@override String get description => 'Śledź kalorie spalane przez Twoje aplikacje fitness';
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
	@override String get title => 'Bezproblemowa integracja';
	@override String get description => 'Synchronizuj dane z ulubionych aplikacji zdrowotnych';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessPl implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessPl._(this._root);

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
class _TranslationsOnboardingReinforcementHealthProfilePl implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfilePl._(this._root);

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
class _TranslationsOnboardingReinforcementGoalLifestylePl implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestylePl._(this._root);

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
class _TranslationsEditProfileWeightGoalsLoseWeightPl implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Utrata wagi';
	@override String get description => 'Stwórz deficyt kaloryczny, aby schudnąć';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightPl implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Utrzymanie wagi';
	@override String get description => 'Utrzymaj swoją obecną wagę';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightPl implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Przyrost masy';
	@override String get description => 'Stwórz nadwyżkę kaloryczną, aby przytyć';
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
	@override String get name => 'Lekko aktywny';
	@override String get description => 'Lekkie ćwiczenia 1-3 dni/tydz.';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActivePl implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActivePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Umiarkowanie aktywny';
	@override String get description => 'Umiarkowane ćwiczenia 3-5 dni/tydz.';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActivePl implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActivePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Bardzo aktywny';
	@override String get description => 'Intensywne ćwiczenia 6-7 dni/tydz.';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActivePl implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActivePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ekstremalnie aktywny';
	@override String get description => 'Bardzo intensywne ćwiczenia lub praca fizyczna';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailablePl implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailablePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect niedostępny';
	@override String get description => 'Health Connect jest niedostępny na tym urządzeniu. Zainstaluj Health Connect z Play Store (Android 9+) lub zaktualizuj do Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsPl implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uprawnienia';
	@override String get description => 'Żądane są następujące uprawnienia, aby zapewnić integrację z Health Connect:';
	@override String get granted => 'Przyznane';
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
	@override String content({required Object appLabel}) => '${appLabel} narodził się z prostego rozczarowania: większość aplikacji do liczenia kalorii jest albo zbyt skomplikowana, wymaga ciągłego ręcznego wprowadzania, pobiera wysokie opłaty subskrypcyjne albo kompromituje prywatność.\n\nJako pojedynczy deweloper chciałem stworzyć coś prostszego i uczciwszego — aplikację, która używa AI, żeby zmniejszyć nakład pracy, pozostaje szybka i darmowa w użyciu oraz traktuje Twoje dane zdrowotne z szacunkiem.\n\n${appLabel} to aplikacja, której sam bym oczekiwał: bez kont, bez śledzenia, bez reklam — tylko jasne, praktyczne wnioski i Twoje cele zdrowotne.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyPl implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Twoja prywatność ma znaczenie';
	@override String get description => 'Prywatność to nie dodatek — to zasada projektowa. Oto, co to oznacza w praktyce:';
	@override String get noAccounts => 'Brak wymaganych kont\nKorzystaj z aplikacji od razu. Bez rejestracji, bez tworzenia tożsamości.';
	@override String noTracking({required Object appLabel}) => 'Brak śledzenia zachowań\n${appLabel} nie monitoruje Twojej aktywności, nie tworzy profili użytkowania ani nie śledzi Cię między aplikacjami czy stronami.';
	@override String noAds({required Object appLabel}) => 'Brak reklam z założenia\n${appLabel} działa bez reklam i monetyzacji opartej na danych.';
	@override String get noDataSelling => 'Brak sprzedaży danych\nTwoje dane zdrowotne nigdy nie są sprzedawane ani udostępniane stronom trzecim.';
	@override String get localStorage => 'Priorytet lokalny\nTwoje dane pozostają na urządzeniu.';
	@override String get privacyPolicy => 'Polityka prywatności';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperPl implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stworzone przez pojedynczego dewelopera';
	@override String description({required Object appLabel}) => '${appLabel} jest tworzony i utrzymywany przez jednego dewelopera, skoncentrowanego na tworzeniu spokojnego, szanującego prywatność oprogramowania zdrowotnego.\n\nOpinie są czytane osobiście i pomagają kształtować kierunek rozwoju aplikacji.';
	@override String get website => 'Strona internetowa';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackPl implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Podoba Ci się ${appLabel}?';
	@override String description({required Object appLabel}) => 'Twoja opinia pomaga uczynić ${appLabel} lepszym dla wszystkich.';
	@override String get rateApp => 'Oceń w Play Store';
	@override String get sendFeedback => 'Wyślij opinię';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizePl implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wielkość porcji';
	@override String get description => 'Dokładność szacunków w dużej mierze zależy od prawidłowej oceny wielkości porcji.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsPl implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metody przygotowania';
	@override String description({required Object appLabel}) => 'Sposób przygotowania potraw może znacząco zmienić jej wartość odżywczą. Szacunki ${appLabel} nie zawsze mogą uwzględniać te różnice.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsPl implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Składniki';
	@override String get description => 'Złożone dania z wieloma ukrytymi składnikami mogą powodować mniejszą dokładność oszacowań.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsPl implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ograniczenia bazy danych';
	@override String description({required Object appLabel}) => 'Baza produktów ${appLabel} jest obszerna, ale może nie zawierać każdego produktu lub wariantu.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyPl implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dokładność kalorii';
	@override String get description => 'To oszacowanie jest tak dokładne, jak dokładne są Twoje zarejestrowane kalorie i wydatki. Błędne zapisy spowodują niedokładne prognozy.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsPl implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czynniki biologiczne';
	@override String description({required Object appLabel}) => 'Rzeczywista utrata/przyrost masy zależy od metabolizmu, hormonów, snu, stresu, nawodnienia i innych indywidualnych czynników, których ${appLabel} nie może zmierzyć.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightPl implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Waga wodna i wahania';
	@override String get description => 'Codzienna waga może znacząco się wahać z powodu zatrzymania wody, trawienia i pory dnia. Oszacowanie nie uwzględnia tych codziennych zmian.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidancePl implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidancePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Porada specjalisty';
	@override String get description => 'Nie używaj tego oszacowania do podejmowania decyzji medycznych. Zawsze konsultuj się z pracownikiem służby zdrowia lub zarejestrowanym dietetykiem w sprawie zarządzania wagą.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrPl implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Podstawowa przemiana materii (BMR) to liczba kalorii spalanych przez organizm w spoczynku, potrzebna do podtrzymania podstawowych funkcji, takich jak oddychanie i krążenie. BMR zależy od wieku, płci, wzrostu i wagi. Wyższe BMR oznacza naturalne spalanie większej ilości kalorii w spoczynku, często z powodu większej masy mięśniowej, młodszego wieku lub bycia płci męskiej. Niższe BMR zwykle wskazuje na mniejszą masę mięśniową, starszy wiek lub bycie płci żeńskiej.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeePl implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Całkowite dzienne wydatki energetyczne (TDEE) to całkowita liczba spalonych kalorii w ciągu dnia, obejmująca BMR oraz kalorie związane z aktywnością fizyczną i ruchem codziennym. TDEE zależy od BMR i poziomu aktywności. Wyższe TDEE oznacza spalanie więcej kalorii, zwykle z powodu większej aktywności lub wyższego BMR. Niższe TDEE sugeruje mniejszą aktywność lub niższy BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalPl implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dzienny cel';
	@override String get description => 'Dzienny cel to zalecane dzienne spożycie kalorii oparte na Twoim TDEE i celu wagowym. Przy utracie wagi spożywasz mniej kalorii niż TDEE. Przy utrzymaniu wagi dopasowujesz się do TDEE. Przy zwiększaniu masy spożywasz więcej kalorii niż TDEE. To pomaga osiągać pożądaną zmianę wagi w zdrowym tempie.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedPl implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak obliczono szacunek';
	@override String get description => 'Obliczamy Twoje TDEE (na podstawie profilu) i mnożymy je przez ułamek upływu dnia (godziny + minuty) / 24, aby oszacować spalone kalorie do tej pory.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePl implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Porada specjalisty';
	@override String get description => 'Nie używaj tego oszacowania do podejmowania decyzji medycznych. Zawsze konsultuj się z lekarzem lub zarejestrowanym dietetykiem w sprawie zarządzania wagą.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPl implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odczyt całkowitych spalonych kalorii';
	@override String get description => 'Pozwala aplikacji odczytać całkowite spalone kalorie z Health Connect.';
	@override String get usage => 'To uprawnienie jest używane do wyświetlania dziennego spalania kalorii w aplikacji, pomagając zrozumieć całkowite wydatki energetyczne w ciągu dnia.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadPl implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odczyt danych żywieniowych';
	@override String get description => 'Pozwala aplikacji odczytywać dane żywieniowe z Health Connect.';
	@override String get usage => 'To uprawnienie umożliwia aplikacji odczyt informacji żywieniowych, które mogły zostać zapisane przez inne aplikacje połączone z Health Connect, dając pełniejszy obraz Twojej diety.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWritePl implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWritePl._(this._root);

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
			'onboarding.healthConnect.description' => 'Synchronizuj dane zdrowotne, aby uzyskać lepsze informacje i automatyczne śledzenie kalorii',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatyczne śledzenie kalorii',
			'onboarding.healthConnect.automaticTracking.description' => 'Śledź kalorie spalane przez Twoje aplikacje fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Wgląd w postępy',
			'onboarding.healthConnect.progressInsights.description' => 'Otrzymuj szczegółowe informacje o trendach zdrowotnych',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Bezproblemowa integracja',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronizuj dane z ulubionych aplikacji zdrowotnych',
			'onboarding.healthConnect.connected' => 'Health Connect połączony',
			'onboarding.healthConnect.notConnected' => 'Health Connect niepołączony',
			'onboarding.healthConnect.setup' => 'Skonfiguruj Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Pomiń na razie',
			'onboarding.healthConnect.statusConnected' => 'Health Connect jest połączony.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect został pomyślnie połączony!',
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
			'home.dailyGoal.kcal' => 'kcal',
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
			'home.connectHealth.description' => 'Synchronizuj swoje dane żywieniowe z Health Connect',
			'home.connectHealth.install' => 'Zainstaluj',
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
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Wskazówka: Konsekwencja jest ważniejsza niż perfekcja — regularne zapisy ujawniają istotne wzorce.',
			'meal.analysis.offlineTip1' => 'Wskazówka: Do zdjęć najlepiej naturalne światło i ujęcie z góry — pomagają w ocenie porcji.',
			'meal.analysis.offlineTip2' => 'Wskazówka: Wspomnij o napojach, sosach i oleju do smażenia — to kalorie, które często są pomijane.',
			'meal.analysis.offlineTip3' => 'Wskazówka: Krótka informacja o porcji (1 miska, duża kawa) znacznie poprawia dokładność.',
			'meal.analysis.offlineTip4' => 'Wskazówka: Zapis po posiłku też buduje nawyk; perfekcja nie jest obowiązkowa.',
			'meal.analysis.offlineTip5' => 'Wskazówka: Powiedz, jak jedzenie było przygotowane, jeśli to znacząco zmienia kalorie (smażone vs pieczone).',
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
			'editProfile.unitLbs' => 'lbs',
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
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
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
			'settings.clearAllData.subtitle' => 'Trwale usuń wszystkie swoje informacje',
			'settings.clearAllData.confirmationTitle' => 'Wyczyścić wszystkie dane?',
			'settings.clearAllData.confirmationMessage' => 'Ta operacja jest nieodwracalna. Wszystkie zapisane posiłki, ulubione i ustawienia profilu zostaną trwale usunięte.',
			'settings.clearAllData.cancel' => 'Anuluj',
			'settings.clearAllData.clearEverything' => 'Wyczyść wszystko',
			'settings.debugOptions.title' => 'Opcje debugowania',
			'settings.developerModeEnabled' => 'Tryb dewelopera włączony!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Wyświetl i zarządzaj uprawnieniami',
			'settings.healthConnect.unavailable.title' => 'Health Connect niedostępny',
			'settings.healthConnect.unavailable.description' => 'Health Connect jest niedostępny na tym urządzeniu. Zainstaluj Health Connect z Play Store (Android 9+) lub zaktualizuj do Android 14+.',
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
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Brak śledzenia zachowań\n${appLabel} nie monitoruje Twojej aktywności, nie tworzy profili użytkowania ani nie śledzi Cię między aplikacjami czy stronami.',
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
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
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
