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
	@override late final _TranslationsErrorsPl errors = _TranslationsErrorsPl._(_root);
	@override late final _TranslationsDebugPl debug = _TranslationsDebugPl._(_root);
	@override late final _TranslationsHealthPl health = _TranslationsHealthPl._(_root);
}

// Path: onboarding
class _TranslationsOnboardingPl implements TranslationsOnboardingEn {
	_TranslationsOnboardingPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Witamy w ${appLabel}';
	@override String get subtitle => 'Twój osobisty towarzysz w odżywianiu wspierany sztuczną inteligencją';
	@override String get getStarted => 'Rozpocznij';
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
	@override String get emptyMessage => 'Zrób zdjęcie swojego ostatniego posiłku, aby go zarejestrować.';
	@override String get today => 'Dzisiaj';
	@override String get yesterday => 'Wczoraj';
}

// Path: meal
class _TranslationsMealPl implements TranslationsMealEn {
	_TranslationsMealPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'O nie!';
	@override String get delete => 'Usuń';
	@override String get editMeal => 'Edytuj Posiłek';
	@override String get addMeal => 'Dodaj Posiłek';
	@override String get saveMeal => 'Zapisz Posiłek';
	@override String get save => 'Zapisz';
	@override String get mealName => 'Nazwa Posiłku';
	@override String get mealQuantity => 'Ilość Posiłku';
	@override String get mealQuantityHint => 'np. 1 miska, 2 plastry';
	@override String get timeOfMeal => 'Czas Posiłku';
	@override String get timeOfMealHint => 'Wybierz czas, w którym miałeś posiłek';
	@override String get mealType => 'Rodzaj Posiłku';
	@override late final _TranslationsMealNutritionPl nutrition = _TranslationsMealNutritionPl._(_root);
	@override late final _TranslationsMealDeleteConfirmationPl deleteConfirmation = _TranslationsMealDeleteConfirmationPl._(_root);
	@override String get addedToLog => 'Posiłek dodany do logu!';
	@override String couldNotAdd({required Object error}) => 'Nie można dodać posiłku: ${error}';
	@override String get removedFromFavorites => 'Usunięto z ulubionych!';
	@override String get savedAsFavorite => 'Posiłek zapisany jako ulubiony!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nie można zaktualizować ulubionego: ${error}';
	@override String failedToProcess({required Object error}) => 'Nieudana próba przetworzenia: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Nieudana próba przetworzenia obrazu: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Błąd kompresji obrazu: ${error}';
	@override String get failedToSave => 'Nie udało się zapisać danych. Proszę spróbuj ponownie.';
}

// Path: favorites
class _TranslationsFavoritesPl implements TranslationsFavoritesEn {
	_TranslationsFavoritesPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ulubione';
	@override String get empty => 'Brak ulubionych posiłków.';
}

// Path: profile
class _TranslationsProfilePl implements TranslationsProfileEn {
	_TranslationsProfilePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Brak danych profilowych';
	@override String get yourProfile => 'Twój Profil';
	@override String get viewAndManage => 'Zobacz i zarządzaj swoimi informacjami zdrowotnymi';
	@override late final _TranslationsProfileSectionsPl sections = _TranslationsProfileSectionsPl._(_root);
	@override String get gender => 'Płeć';
	@override String get height => 'Wysokość';
	@override String get weight => 'Waga';
	@override String get age => 'Wiek';
	@override String get weightGoal => 'Cel Wagowy';
	@override String get targetWeight => 'Docelowa Waga';
	@override String get activityLevel => 'Poziom Aktywności';
	@override String get healthMetrics => 'Wskaźniki Zdrowia';
	@override String get notSet => 'Nie ustawione';
	@override String get years => 'lata';
	@override String get updatedSuccessfully => 'Profil zaktualizowany pomyślnie!';
	@override late final _TranslationsProfileCalculatedValuesPl calculatedValues = _TranslationsProfileCalculatedValuesPl._(_root);
}

// Path: healthScore
class _TranslationsHealthScorePl implements TranslationsHealthScoreEn {
	_TranslationsHealthScorePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wynik Zdrowia';
	@override String get whyThisScore => 'Dlaczego ten wynik?';
	@override String get note => 'Ten wynik jest oszacowaniem sztucznej inteligencji na podstawie zidentyfikowanych składników i gęstości odżywczej. Zawsze konsultuj się z profesjonalistą w sprawie porad dietetycznych.';
	@override String get unhealthy => 'Niezdrowy';
	@override String get healthy => 'Zdrowy';
	@override String get neutral => 'Neutralny';
}

// Path: editProfile
class _TranslationsEditProfilePl implements TranslationsEditProfileEn {
	_TranslationsEditProfilePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edytuj Profil';
	@override late final _TranslationsEditProfileSectionsPl sections = _TranslationsEditProfileSectionsPl._(_root);
	@override String get gender => 'Płeć';
	@override String get dateOfBirth => 'Data Urodzenia';
	@override String get height => 'Wysokość';
	@override String get weight => 'Waga';
	@override String get weightGoal => 'Cel Wagowy';
	@override String get activityLevel => 'Poziom Aktywności';
	@override String get metric => 'Metryczny';
	@override String get imperial => 'Imperialny';
	@override String get metricCm => 'Metryczny (cm)';
	@override String get imperialFtIn => 'Imperialny (ft/in)';
	@override String get metricKg => 'Metryczny (kg)';
	@override String get imperialLbs => 'Imperialny (lbs)';
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
	@override late final _TranslationsSettingsClearAllDataPl clearAllData = _TranslationsSettingsClearAllDataPl._(_root);
	@override late final _TranslationsSettingsDebugOptionsPl debugOptions = _TranslationsSettingsDebugOptionsPl._(_root);
	@override String get developerModeEnabled => 'Tryb dewelopera włączony!';
	@override late final _TranslationsSettingsHealthConnectPl healthConnect = _TranslationsSettingsHealthConnectPl._(_root);
	@override late final _TranslationsSettingsAboutPl about = _TranslationsSettingsAboutPl._(_root);
}

// Path: reminders
class _TranslationsRemindersPl implements TranslationsRemindersEn {
	_TranslationsRemindersPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pozostań na właściwej ścieżce dzięki przypomnieniom';
	@override String get description => 'Otrzymuj delikatne przypomnienia o rejestrowaniu posiłków i utrzymaniu konsekwencji w celach dotyczących odżywiania';
	@override String get notificationsEnabled => 'Powiadomienia Włączone';
	@override String get notificationsDisabled => 'Powiadomienia Wyłączone';
	@override String get enabledSubtitle => 'Otrzymasz przypomnienia o posiłkach';
	@override String get disabledSubtitle => 'Włącz powiadomienia, aby otrzymywać przypomnienia o posiłkach';
	@override String get mealReminders => 'Przypomnienia o Posiłkach';
	@override String get breakfast => 'Śniadanie';
	@override String get lunch => 'Obiad';
	@override String get dinner => 'Kolacja';
	@override String get snack => 'Przekąska';
	@override String get unknown => 'Nieznane';
	@override String get change => 'Zmień';
	@override String get enableNotifications => 'Włącz Powiadomienia';
	@override String get skipForNow => 'Pomiń na razie';
	@override String get saveChanges => 'Zapisz Zmiany';
	@override String get enabledSuccessfully => 'Powiadomienia włączone pomyślnie!';
	@override String get permissionDenied => 'Odmowa uprawnień do powiadomień';
	@override String errorEnabling({required Object error}) => 'Błąd podczas włączania powiadomień: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Błąd podczas ukończenia konfiguracji: ${error}';
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
	@override String get title => 'Zaloguj się';
	@override String get signInWithGoogle => 'Zaloguj się z Google';
	@override String get signInFailed => 'Logowanie z Google nie powiodło się lub zostało anulowane.';
}

// Path: disclaimer
class _TranslationsDisclaimerPl implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Proszę zauważyć';
	@override late final _TranslationsDisclaimerSnapPl snap = _TranslationsDisclaimerSnapPl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimatePl weightEstimate = _TranslationsDisclaimerWeightEstimatePl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsPl healthMetrics = _TranslationsDisclaimerHealthMetricsPl._(_root);
}

// Path: common
class _TranslationsCommonPl implements TranslationsCommonEn {
	_TranslationsCommonPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get close => 'Zamknij';
	@override String get kContinue => 'Kontynuuj';
}

// Path: errors
class _TranslationsErrorsPl implements TranslationsErrorsEn {
	_TranslationsErrorsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Błąd ładowania danych profilu';
	@override String get somethingWentWrong => 'Coś poszło nie tak.';
}

// Path: debug
class _TranslationsDebugPl implements TranslationsDebugEn {
	_TranslationsDebugPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opcje Debugowania';
	@override late final _TranslationsDebugSectionsPl sections = _TranslationsDebugSectionsPl._(_root);
	@override String get showActiveNotifications => 'Pokaż Aktywne Powiadomienia';
	@override String get scheduleTestNotification => 'Zaprogramuj Powiadomienie Testowe (10s)';
	@override String get triggerBreakfastNotification => 'Wywołaj Powiadomienie o Śniadaniu';
	@override String get cancelAllNotifications => 'Anuluj Wszystkie Powiadomienia';
	@override String get activeNotifications => 'Aktywne Powiadomienia';
	@override String get noTitle => 'Brak Tytułu';
	@override String get noBody => 'Brak Treści';
	@override String get fetchTodaysSteps => 'Pobierz Dziś Kroków';
	@override String get fetchTodaysCalories => 'Pobierz Dziś Kalorii';
	@override String get fetchLatestWeight => 'Pobierz Najnowszą Wagę';
	@override String get fetchLatestHeight => 'Pobierz Najnowszą Wysokość';
	@override String get writeTestWeight => 'Zapisz Testową Wagę (70kg)';
	@override String get writeTestHeight => 'Zapisz Testową Wysokość (175cm)';
	@override String get syncLast7Days => 'Synchronizuj Ostatnie 7 Dni';
	@override String get sync7DaysTitle => '7-Dniowa Synchronizacja';
	@override String get checkCurrentLocale => 'Sprawdź Aktualny Locale';
	@override String get currentLocale => 'Aktualny Locale';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Język: ${languageCode}\nKraj: ${countryCode}\nSystem Jednostek: ${unitSystem}';
	@override String get latestWeight => 'Najnowsza Waga';
	@override String get latestHeight => 'Najnowsza Wysokość';
	@override String get todaysCalories => 'Dzisiejsze Kalorie';
	@override String totalCaloriesBurned({required Object calories}) => 'Razem spalonych kalorii: ${calories}';
	@override String syncSuccess({required Object count}) => 'Pomyślnie pobrano ${count} punktów danych dotyczących kroków, kalorii i wagi w ciągu ostatnich 7 dni.';
	@override String get noWeightData => 'Brak danych o wadze w ciągu ostatnich 30 dni.';
	@override String get noHeightData => 'Brak danych o wzroście w ciągu ostatniego roku.';
	@override String get noCalorieData => 'Brak danych o kaloriach na dzisiaj.';
	@override String get weightWritten => 'Pomyślnie zapisano testową wagę (70kg).';
	@override String get weightWriteFailed => 'Nie udało się zapisać testowej wagi.';
	@override String get heightWritten => 'Pomyślnie zapisano testową wysokość (175cm).';
	@override String get heightWriteFailed => 'Nie udało się zapisać testowej wysokości.';
	@override String get noNotifications => 'Brak aktywnych powiadomień.';
	@override String get testNotificationScheduled => 'Zaprogramowano powiadomienie testowe na 10 sekund z teraz.';
	@override String get testNotificationBody => 'To jest powiadomienie testowe zaplanowane na 10 sekund z teraz.';
	@override String get breakfastNotificationTriggered => 'Wywołano powiadomienie o śniadaniu.';
	@override String get allNotificationsCancelled => 'Wszystkie powiadomienia anulowane.';
	@override String get fetchingData => 'Pobieranie danych z ostatnich 7 dni...';
	@override String id({required Object id}) => 'ID: ${id}';
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
	@override String get description => 'Płeć pomaga nam dokładnie obliczyć Twój podstawowy wskaźnik metaboliczny (BMR).';
	@override String get next => 'Dalej';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightPl implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak wysoki jesteś?';
	@override String get description => 'Twoja wysokość pomaga nam dokładnie obliczyć Twój BMI i zapotrzebowanie energetyczne.';
	@override String get metric => 'Metryczny';
	@override String get imperial => 'Imperialny';
	@override String get next => 'Dalej';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightPl implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Jaka jest Twoja obecna waga?';
	@override String get currentDescription => 'Twoja obecna waga jest kluczowa do personalizacji Twoich codziennych celów.';
	@override String get targetTitle => 'Jaka jest Twoja docelowa waga?';
	@override String get targetDescription => 'Ustalenie celowanej wagi pomoże nam określić Twój długoterminowy plan.';
	@override String get metric => 'Metryczny';
	@override String get imperial => 'Imperialny';
	@override String get next => 'Dalej';
}

// Path: onboarding.age
class _TranslationsOnboardingAgePl implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kiedy są Twoje urodziny?';
	@override String get description => 'Twój wiek pomaga nam dokładnie obliczyć Twoje zapotrzebowanie kaloryczne.';
	@override String get next => 'Dalej';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScalePl implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScalePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Niedowaga';
	@override String get healthy => 'Zdrowa waga';
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
	@override String get title => 'Jakie masz cele?';
	@override String get description => 'Wybierz cel, który najlepiej opisuje to, co chcesz osiągnąć';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelPl implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak aktywny jesteś?';
	@override String get description => 'To pomaga nam dokładnie obliczyć Twoje codzienne zapotrzebowanie kaloryczne';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectPl implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Połącz z Health Connect';
	@override String get description => 'Synchronizuj swoje dane zdrowotne, aby uzyskać lepsze wnioski i automatyczne śledzenie kalorii';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingPl automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingPl._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsPl progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsPl._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationPl seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationPl._(_root);
	@override String get connected => 'Health Connect Połączony';
	@override String get notConnected => 'Health Connect Niepołączony';
	@override String get setup => 'Skonfiguruj Health Connect';
	@override String get skipForNow => 'Pomiń na razie';
	@override String get statusConnected => 'Health Connect jest połączony.';
	@override String get statusSuccess => 'Health Connect został pomyślnie połączony!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Zgoda odmówiona. Proszę włączyć uprawnienia Health Connect w ustawieniach telefonu, aby korzystać z ${appLabel}.';
	@override String statusError({required Object error}) => 'Błąd podczas konfigurowania Health Connect: ${error}';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalPl implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ustaw Swój Codzienny Cel';
	@override String get titleSet => 'Twój Codzienny Cel';
	@override String get description => 'Gotowy, by wyruszyć w swoją drogę do zdrowia? Ustaw poniżej swój dzienny cel kaloryczny, aby rozpocząć postęp.';
	@override String get descriptionSet => 'Kompas ustawiony! To jest Twój dzienny cel kaloryczny do prowadzenia.';
	@override String get yourGoal => 'Twój Cel';
	@override String get dailyCalories => 'Dziennie kalorie (kcal)';
	@override String get setGoal => 'Ustaw Cel';
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
	@override String get title => 'Codzienne Podsumowanie';
	@override String get calories => 'Kalorie';
	@override String get carbs => 'Węglowodany';
	@override String get protein => 'Białko';
	@override String get fat => 'Tłuszcz';
	@override String get fiber => 'Błonnik';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressPl implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Podział Makroskładników Dziś';
	@override String get target => 'Cel';
	@override String get current => 'Bieżący';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryPl implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Historia Makroskładników z 7 Dni';
	@override String get noHistoryYet => 'Brak historii';
	@override String get startLogging => 'Rozpocznij rejestrowanie posiłków, aby zobaczyć swoje\n7-dniowe trendy makroskładników tutaj';
}

// Path: home.mealLog
class _TranslationsHomeMealLogPl implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zarejestrowane Posiłki';
	@override String get emptyMessage => 'Zrób zdjęcie swojego ostatniego posiłku, aby go zarejestrować.';
	@override String get noMealsToday => 'Brak zarejestrowanych posiłków na dzisiaj';
	@override String get seeAllMeals => 'Zobacz wszystkie posiłki';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionPl implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szybkie Dodawanie z AI';
	@override String get description => 'Opisz swój posiłek, a sztuczna inteligencja zajmie się szczegółami.';
	@override String get hint => 'np. Na śniadanie miałem dużą miskę owsianki z pokrojonym bananem i porcją białka ...';
	@override String get analyzeMeal => 'Przeanalizuj posiłek';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsPl implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ulubione Posiłki';
	@override String get description => 'Szybko dodaj jeden z ulubionych posiłków.';
	@override String get noFavorites => 'Brak ulubionych posiłków.';
	@override String get addFavoriteHint => 'Kliknij w gwiazdkę na posiłku, aby oznaczyć go jako ulubiony.';
	@override String get seeAll => 'Zobacz wszystkie';
	@override String get add => 'Dodaj';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapPl implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zrób Zdjęcie i Śledź Swój Posiłek';
	@override String get description => 'Użyj aparatu, aby zrobić zdjęcie swojego jedzenia do analizy AI.';
	@override String get openCamera => 'Otwórz aparat';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthPl implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchronizuj z Health Connect';
	@override String get description => 'Synchronizuj swoje dane dotyczące odżywiania z Health Connect';
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
	@override String get title => 'Usuń Posiłek';
	@override String get message => 'Czy na pewno chcesz usunąć ten wpis o posiłku?';
	@override String get cancel => 'Anuluj';
	@override String get delete => 'Usuń';
}

// Path: profile.sections
class _TranslationsProfileSectionsPl implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'PODSTAWOWE INFORMACJE';
	@override String get goalsAndActivity => 'CELE I AKTYWNOŚCI';
	@override String get calculatedValues => 'OBLICZONE WARTOŚCI';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesPl implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Codzienny Cel';
	@override String get calPerDay => 'kal/dzień';
	@override String get notAvailable => 'N/D';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsPl implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMACJE OSOBISTE';
	@override String get physicalMeasurements => 'POMIARY FIZYCZNE';
	@override String get goalsAndActivity => 'CELE I AKTYWNOŚCI';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersPl implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get male => 'Mężczyzna';
	@override String get female => 'Kobieta';
	@override String get other => 'Inne';
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
	@override String get healthConnect => 'ŁĄCZENIE Z ZDROWIEM';
	@override String get supportAndLegal => 'WSPARCIE I PRAWO';
	@override String get about => 'O APLIKACJI';
	@override String get dangerZone => 'STREFA ZAGROŻENIA';
	@override String get developer => 'DEWELOPER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfilePl implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfilePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edytuj Profil';
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
	@override String get noResults => 'Nie znaleziono wyników';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitPl implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jednostka Wzrostu';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitPl implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jednostka Wagi';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersPl implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Przypomnienia o posiłkach';
	@override String get subtitle => 'Pozostań na właściwej ścieżce dzięki terminowym powiadomieniom';
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
	@override String get title => 'Wyślij Opinie';
	@override String subtitle({required Object appLabel}) => 'Pomóż nam ulepszyć ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Opinie o aplikacji ${appLabel}';
	@override String get emailBodyPrefix => 'Proszę podać swoje uwagi poniżej:';
	@override String get appVersion => 'Wersja aplikacji';
	@override String get device => 'Urządzenie';
	@override String get osVersion => 'Wersja OS';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataPl implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wyczyść Wszystkie Dane';
	@override String get subtitle => 'Nieodwracalnie usuń wszystkie swoje informacje';
	@override String get confirmationTitle => 'Wyczyścić wszystkie dane?';
	@override String get confirmationMessage => 'Tej akcji nie można cofnąć. Wszystkie Twoje zarejestrowane posiłki, ulubione i ustawienia profilu zostaną trwale usunięte.';
	@override String get cancel => 'Anuluj';
	@override String get clearEverything => 'Wyczyść wszystko';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsPl implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opcje Debugowania';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectPl implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Łączenie z Zdrowiem';
	@override String get subtitle => 'Wyświetl i zarządzaj uprawnieniami';
	@override late final _TranslationsSettingsHealthConnectUnavailablePl unavailable = _TranslationsSettingsHealthConnectUnavailablePl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsPl permissions = _TranslationsSettingsHealthConnectPermissionsPl._(_root);
	@override String get managePermissions => 'Zarządzaj Uprawnieniami';
	@override String get openSettings => 'Otwórz ustawienia Health Connect';
	@override String get requestPermissions => 'Poproś o zezwolenia';
}

// Path: settings.about
class _TranslationsSettingsAboutPl implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'O nas';
	@override String get tagline => 'Szybka, darmowa i z poszanowaniem prywatności świadomość kalorii';
	@override late final _TranslationsSettingsAboutOurStoryPl ourStory = _TranslationsSettingsAboutOurStoryPl._(_root);
	@override late final _TranslationsSettingsAboutPrivacyPl privacy = _TranslationsSettingsAboutPrivacyPl._(_root);
	@override late final _TranslationsSettingsAboutDeveloperPl developer = _TranslationsSettingsAboutDeveloperPl._(_root);
	@override late final _TranslationsSettingsAboutFeedbackPl feedback = _TranslationsSettingsAboutFeedbackPl._(_root);
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastPl implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czas na Śniadanie! 🍳';
	@override String get body => 'Nie zapomnij zarejestrować swojego śniadania';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchPl implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czas na Obiad! 🥗';
	@override String get body => 'Czas, aby zarejestrować swój obiad';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerPl implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czas na Kolację! 🍽️';
	@override String get body => 'Nie zapomnij zarejestrować swojej kolacji';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackPl implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czas na Przekąskę! 🍎';
	@override String get body => 'Czas na zdrową przekąskę';
}

// Path: notifications.test
class _TranslationsNotificationsTestPl implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Powiadomienie Testowe';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapPl implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} dostarcza szacunkowe informacje o wartościach odżywczych. Dokładność zależy od Twoich danych i wariantów żywności. Używaj jako przewodnika, a nie jako ostatecznego źródła. Skonsultuj się z profesjonalistą w celu uzyskania spersonalizowanej porady żywieniowej.';
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
	@override String get title => 'O Szacowaniu Wagi';
	@override String get description => 'Prognozowana zmiana wagi jest teoretycznym oszacowaniem opartym na prostym modelu kaloria wpuszczająca vs. kaloria wypuszczająca. Ma na celu jedynie motywacyjne wskazanie, a nie jako prognoza Twojej rzeczywistej wagi.';
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
	@override String get description => 'Te wskaźniki pomagają zrozumieć zapotrzebowanie energetyczne twojego ciała i wyznaczyć cele żywieniowe.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrPl bmr = _TranslationsDisclaimerHealthMetricsBmrPl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeePl tdee = _TranslationsDisclaimerHealthMetricsTdeePl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalPl dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalPl._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsPl implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Powiadomienia';
	@override String get healthConnect => 'Health Connect';
	@override String get appInfo => 'Informacje o Aplikacji';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionPl implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inteligentne Rozpoznawanie Żywności';
	@override String get description => 'Zrób zdjęcie i pozwól sztucznej inteligencji zidentyfikować Twój posiłek';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisPl implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analiza AI';
	@override String get description => 'Uzyskaj natychmiastowe informacje o wartości odżywczej na podstawie Twojego opisu';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationPl implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integracja ze Zdrowiem';
	@override String get description => 'Połącz się z Health Connect, aby uzyskać lepsze wnioski';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesPl implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Niedowaga';
	@override String get healthyWeight => 'Zdrowa waga';
	@override String get overweight => 'Nadwaga';
	@override String get obese => 'Otyłość';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesPl implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Możemy pomóc Ci zbudować zdrowy plan, aby osiągnąć zrównoważoną wagę z pożywnymi posiłkami.';
	@override String get healthy => 'Świetna robota! Jesteś w zdrowym zakresie. Pomożemy Ci utrzymać witalność i poziom energii.';
	@override String overweight({required Object appLabel}) => '${appLabel} uprości Twoją drogę dzięki śledzeniu zasilanemu przez AI, aby pomóc Ci osiągnąć swój cel w komfortowy sposób.';
	@override String get obese => 'Jesteśmy tu, aby Cię wspierać w spersonalizowanych wskazówkach i zrównoważonych strategiach dla Twoich celów zdrowotnych.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingPl implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatyczne Śledzenie Kalorii';
	@override String get description => 'Śledź kalorie spalane z aplikacji fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsPl implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wnioski o Postępach';
	@override String get description => 'Uzyskaj szczegółowe informacje na temat swoich trendów zdrowotnych';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationPl implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bezproblemowa Integracja';
	@override String get description => 'Synchronizuj dane z ulubionych aplikacji zdrowotnych';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessPl implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nie jesteś sam';
	@override String get genericMessage => 'Badania pokazują, że konsekwentne śledzenie jest najlepszym predyktorem długoterminowego sukcesu.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Dla ${age} letniego ${gender} dążącego do ${goal}, konsekwentne śledzenie jest najlepszym predyktorem sukcesu.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} sprawia, że to 10 razy łatwiejsze niż robienie tego ręcznie.';
	@override String get getStartedTitle => 'Gotowy, aby zacząć?';
	@override String get tipPhoto => 'Zrób zdjęcie swoich posiłków, aby uzyskać natychmiastową analizę';
	@override String get tipConsistency => 'Rejestruj regularnie, aby zobaczyć znaczący postęp';
	@override String get tipProgress => 'Śledź swoje postępy codziennie, aby utrzymać motywację';
	@override String get button => 'Idźmy';
	@override String get defaultGender => 'indywidualna';
	@override String get defaultGoal => 'zdrowsza Ty';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfilePl implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfilePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Twój Profil Zdrowia';
	@override String bmiDescription({required Object bmi}) => 'Na podstawie Twoich parametrów, Twoje BMI wynosi ${bmi}.';
	@override String get finalizeDescription => 'Sfinalizuj swój profil, aby dostosować swoje doświadczenie.';
	@override String get goalGain => 'zyskać';
	@override String get goalLose => 'stracić';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Aby osiągnąć swój cel, musisz ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Jesteś na swojej docelowej wadze! Pomożemy Ci ją utrzymać.';
	@override String get button => 'Idźmy';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestylePl implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestylePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Świetny Początek!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Miałeś już pierwszy krok w kierunku ${goalText}. Ponieważ jesteś ${activityText}, ${appLabel} dostosuje Twoje cele, aby odpowiadały Twojemu stylowi życia.';
	@override String get personalizedTargets => 'Spersonalizowane cele kaloryczne';
	@override String get aiMealDetection => 'Wykrywanie posiłków wspierane przez AI';
	@override String get macroBreakdowns => 'Szczegółowe podziały makroskładników';
	@override String get button => 'Idźmy';
	@override String get defaultGoal => 'Twoje cele';
	@override String get defaultActivity => 'aktywny';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightPl implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Stracić na wadze';
	@override String get description => 'Stwórz deficyt kaloryczny, aby schudnąć';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightPl implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Utrzymać wagę';
	@override String get description => 'Utrzymaj swoją obecną wagę';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightPl implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Zyskać na wadze';
	@override String get description => 'Stwórz nadwyżkę kaloryczną, aby przytyć';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryPl implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Siedzący';
	@override String get description => 'Mała do żadnej aktywności fizycznej';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActivePl implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActivePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lekko aktywny';
	@override String get description => 'Lekka aktywność przez 1-3 dni w tygodniu';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActivePl implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActivePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Umiarkowanie aktywny';
	@override String get description => 'Umiarkowana aktywność przez 3-5 dni w tygodniu';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActivePl implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActivePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Bardzo aktywny';
	@override String get description => 'Intensywna aktywność przez 6-7 dni w tygodniu';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActivePl implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActivePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Skrajnie aktywny';
	@override String get description => 'Bardzo intensywna aktywność fizyczna, praca fizyczna';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailablePl implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailablePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Łączenie z Zdrowiem Niedostępne';
	@override String get description => 'Łączenie z Zdrowiem nie jest dostępne na tym urządzeniu. Wymaga systemu Android 14 lub nowszego.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsPl implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uprawnienia';
	@override String get description => 'Następujące uprawnienia są wymagane, aby umożliwić integrację z Łącznością Zdrowotną:';
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
	@override String get title => 'Nasza Historia';
	@override String content({required Object appLabel}) => '${appLabel} powstał z prostej frustracji: większość aplikacji do śledzenia kalorii jest albo zbyt skomplikowana, wymaga ciągłego ręcznego wprowadzania danych, pobiera wysokie opłaty subskrypcyjne, albo narusza prywatność.\n\nJako niezależny deweloper chciałem stworzyć coś prostszego i sprawiedliwszego — aplikację, która wykorzystuje AI, aby zredukować wysiłek, pozostaje szybka i darmowa w użyciu oraz szanuje Twoje dane zdrowotne.\n\n${appLabel} to aplikacja, której pragnęłem: bez kont, bez śledzenia, bez reklam — tylko jasne, praktyczne spostrzeżenia i Twoje cele zdrowotne.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyPl implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Twoja Prywatność Ma Znaczenie';
	@override String get description => 'Prywatność nie jest kwestią drugorzędną — to zasada projektowania. Oto co to oznacza w praktyce:';
	@override String get noAccounts => 'Brak wymaganych kont\nUżyj aplikacji od razu. Bez rejestracji, bez tożsamości.';
	@override String noTracking({required Object appLabel}) => 'Brak śledzenia aktywności\n${appLabel} nie monitoruje Twojej aktywności, nie buduje profili użycia ani nie śledzi Cię w aplikacjach lub witrynach.';
	@override String noAds({required Object appLabel}) => 'Bez reklam z zasady\n${appLabel} jest zbudowany tak, aby działał bez reklam lub monetyzacji opartej na danych.';
	@override String get noDataSelling => 'Brak sprzedaży danych\nTwoje dane zdrowotne nigdy nie są sprzedawane ani udostępniane osobom trzecim.';
	@override String get localStorage => 'Przechowywanie lokalne\nTwoje dane pozostają na Twoim urządzeniu.';
	@override String get privacyPolicy => 'Polityka prywatności';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperPl implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stworzony przez Niezależnego Dewelopera';
	@override String description({required Object appLabel}) => '${appLabel} jest tworzony i utrzymywany przez jednego niezależnego dewelopera, który koncentruje się na tworzeniu spokojnego, szanującego prywatność oprogramowania zdrowotnego.\n\nOpinie są czytane osobiście i pomagają kształtować kierunek aplikacji.';
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
	@override String get rateApp => 'Oceń w Sklepie Play';
	@override String get sendFeedback => 'Wyślij opinię';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizePl implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rozmiar Porcji';
	@override String get description => 'Dokładność oszacowań w dużej mierze zależy od Twojej prawidłowej oceny rozmiaru porcji.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsPl implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metody Przygotowania';
	@override String description({required Object appLabel}) => 'Metody gotowania mogą znacznie zmieniać zawartość odżywczą żywności. Szacunki ${appLabel} mogą nie zawsze uwzględniać te różnice.';
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
	@override String get title => 'Ograniczenia Bazy Danych';
	@override String description({required Object appLabel}) => 'Baza danych żywności ${appLabel} jest obszerna, ale może nie zawierać każdego pojedynczego artykułu spożywczego ani wariantu.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyPl implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dokładność Kalorii';
	@override String get description => 'To oszacowanie jest tylko tak dokładne, jak Twoje rejestrowane spożycie kalorii i ich wydatkowanie. Nieprawidłowe rejestrowanie skutkuje niedokładnym prognozowaniem.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsPl implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Czynniki Biologiczne';
	@override String description({required Object appLabel}) => 'Rzeczywista utrata/przyrost masy ciała jest wpływana przez metabolizm, hormony, sen, stres, nawodnienie i inne indywidualne czynniki, których ${appLabel} nie może zmierzyć.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightPl implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Waga Wody i Fluktuacje';
	@override String get description => 'Normalna waga codzienna może znacznie się wahać z powodu zatrzymywania wody, trawienia i czasu. To oszacowanie nie uwzględnia tych codziennych zmian.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidancePl implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidancePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Porady Profesjonalne';
	@override String get description => 'Nie używaj tego oszacowania do podejmowania decyzji medycznych. Zawsze skonsultuj się z profesjonalistą lub zarejestrowanym dietetykiem w celu uzyskania spersonalizowanych porad w zakresie zarządzania wagą.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrPl implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Podstawowa Przemiana Materii (BMR) to liczba kalorii, które twoje ciało spala w spoczynku, aby utrzymać podstawowe funkcje, takie jak oddychanie i krążenie. BMR zależy od twojego wieku, płci, wzrostu i wagi. Wyższe BMR oznacza, że twoje ciało naturalnie spala więcej kalorii w spoczynku, często z powodu większej masy mięśniowej, młodszego wieku lub płci męskiej. Niższe BMR zazwyczaj oznacza mniejszą masę mięśniową, starszy wiek lub płeć żeńską.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeePl implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Całkowite Dzienne Wydatkowanie Energii (TDEE) to całkowita liczba kalorii, które spalasz dziennie, w tym twoje BMR oraz kalorie pochodzące z aktywności fizycznej i codziennego ruchu. TDEE zależy od twojego BMR i poziomu aktywności. Wyższe TDEE oznacza, że spalasz więcej kalorii ogólnie, zazwyczaj z powodu większej aktywności lub wyższego BMR. Niższe TDEE sugeruje mniejszą aktywność dzienną lub niższe BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalPl implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cel Dzienny';
	@override String get description => 'Cel Dzienny to twoje zalecane dzienne spożycie kalorii na podstawie twojego TDEE i celu wagowego. Aby schudnąć, spożywasz mniej kalorii niż twoje TDEE. Aby utrzymać wagę, dostosowujesz swoje spożycie do TDEE. Aby przytyć, spożywasz więcej kalorii niż twoje TDEE. To pomaga osiągnąć pożądane zmiany w wadze w zdrowym tempie.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPl implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odczyt Całkowitych Spalonych Kalorii';
	@override String get description => 'Pozwala aplikacji na odczytanie całkowitych spalonych kalorii z Łączności Zdrowotnej.';
	@override String get usage => 'To uprawnienie jest używane do wyświetlania dziennego spalania kalorii w aplikacji, pomagając Ci zrozumieć całkowite zużycie energii w ciągu dnia.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadPl implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odczyt Danych Żywieniowych';
	@override String get description => 'Pozwala aplikacji na odczytanie danych żywieniowych z Łączności Zdrowotnej.';
	@override String get usage => 'To uprawnienie umożliwia aplikacji odczyt danych żywieniowych, które mogły być zapisane przez inne aplikacje podłączone do Łączności Zdrowotnej, zapewniając kompleksowy przegląd Twojej diety.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWritePl implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWritePl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zapis Danych Żywieniowych';
	@override String get description => 'Pozwala aplikacji na zapis danych żywieniowych w Łączności Zdrowotnej.';
	@override String get usage => 'To uprawnienie umożliwia aplikacji synchronizację zapisanych posiłków z Łącznością Zdrowotną, co sprawia, że Twoje dane żywieniowe są dostępne dla innych aplikacji zdrowotnych i fitness, których używasz.';
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
			'onboarding.welcome' => ({required Object appLabel}) => 'Witamy w ${appLabel}',
			'onboarding.subtitle' => 'Twój osobisty towarzysz w odżywianiu wspierany sztuczną inteligencją',
			'onboarding.getStarted' => 'Rozpocznij',
			'onboarding.features.foodRecognition.title' => 'Inteligentne Rozpoznawanie Żywności',
			'onboarding.features.foodRecognition.description' => 'Zrób zdjęcie i pozwól sztucznej inteligencji zidentyfikować Twój posiłek',
			'onboarding.features.aiAnalysis.title' => 'Analiza AI',
			'onboarding.features.aiAnalysis.description' => 'Uzyskaj natychmiastowe informacje o wartości odżywczej na podstawie Twojego opisu',
			'onboarding.features.healthIntegration.title' => 'Integracja ze Zdrowiem',
			'onboarding.features.healthIntegration.description' => 'Połącz się z Health Connect, aby uzyskać lepsze wnioski',
			'onboarding.gender.title' => 'Jaka jest Twoja płeć?',
			'onboarding.gender.description' => 'Płeć pomaga nam dokładnie obliczyć Twój podstawowy wskaźnik metaboliczny (BMR).',
			'onboarding.gender.next' => 'Dalej',
			'onboarding.height.title' => 'Jak wysoki jesteś?',
			'onboarding.height.description' => 'Twoja wysokość pomaga nam dokładnie obliczyć Twój BMI i zapotrzebowanie energetyczne.',
			'onboarding.height.metric' => 'Metryczny',
			'onboarding.height.imperial' => 'Imperialny',
			'onboarding.height.next' => 'Dalej',
			'onboarding.weight.currentTitle' => 'Jaka jest Twoja obecna waga?',
			'onboarding.weight.currentDescription' => 'Twoja obecna waga jest kluczowa do personalizacji Twoich codziennych celów.',
			'onboarding.weight.targetTitle' => 'Jaka jest Twoja docelowa waga?',
			'onboarding.weight.targetDescription' => 'Ustalenie celowanej wagi pomoże nam określić Twój długoterminowy plan.',
			'onboarding.weight.metric' => 'Metryczny',
			'onboarding.weight.imperial' => 'Imperialny',
			'onboarding.weight.next' => 'Dalej',
			'onboarding.age.title' => 'Kiedy są Twoje urodziny?',
			'onboarding.age.description' => 'Twój wiek pomaga nam dokładnie obliczyć Twoje zapotrzebowanie kaloryczne.',
			'onboarding.age.next' => 'Dalej',
			'onboarding.bmiScale.underweight' => 'Niedowaga',
			'onboarding.bmiScale.healthy' => 'Zdrowa waga',
			'onboarding.bmiScale.overweight' => 'Nadwaga',
			'onboarding.bmiScale.obese' => 'Otyłość',
			'onboarding.bmiScale.categories.underweight' => 'Niedowaga',
			'onboarding.bmiScale.categories.healthyWeight' => 'Zdrowa waga',
			'onboarding.bmiScale.categories.overweight' => 'Nadwaga',
			'onboarding.bmiScale.categories.obese' => 'Otyłość',
			'onboarding.bmiScale.messages.underweight' => 'Możemy pomóc Ci zbudować zdrowy plan, aby osiągnąć zrównoważoną wagę z pożywnymi posiłkami.',
			'onboarding.bmiScale.messages.healthy' => 'Świetna robota! Jesteś w zdrowym zakresie. Pomożemy Ci utrzymać witalność i poziom energii.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} uprości Twoją drogę dzięki śledzeniu zasilanemu przez AI, aby pomóc Ci osiągnąć swój cel w komfortowy sposób.',
			'onboarding.bmiScale.messages.obese' => 'Jesteśmy tu, aby Cię wspierać w spersonalizowanych wskazówkach i zrównoważonych strategiach dla Twoich celów zdrowotnych.',
			'onboarding.weightGoal.title' => 'Jakie masz cele?',
			'onboarding.weightGoal.description' => 'Wybierz cel, który najlepiej opisuje to, co chcesz osiągnąć',
			'onboarding.activityLevel.title' => 'Jak aktywny jesteś?',
			'onboarding.activityLevel.description' => 'To pomaga nam dokładnie obliczyć Twoje codzienne zapotrzebowanie kaloryczne',
			'onboarding.healthConnect.title' => 'Połącz z Health Connect',
			'onboarding.healthConnect.description' => 'Synchronizuj swoje dane zdrowotne, aby uzyskać lepsze wnioski i automatyczne śledzenie kalorii',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatyczne Śledzenie Kalorii',
			'onboarding.healthConnect.automaticTracking.description' => 'Śledź kalorie spalane z aplikacji fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Wnioski o Postępach',
			'onboarding.healthConnect.progressInsights.description' => 'Uzyskaj szczegółowe informacje na temat swoich trendów zdrowotnych',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Bezproblemowa Integracja',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronizuj dane z ulubionych aplikacji zdrowotnych',
			'onboarding.healthConnect.connected' => 'Health Connect Połączony',
			'onboarding.healthConnect.notConnected' => 'Health Connect Niepołączony',
			'onboarding.healthConnect.setup' => 'Skonfiguruj Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Pomiń na razie',
			'onboarding.healthConnect.statusConnected' => 'Health Connect jest połączony.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect został pomyślnie połączony!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Zgoda odmówiona. Proszę włączyć uprawnienia Health Connect w ustawieniach telefonu, aby korzystać z ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Błąd podczas konfigurowania Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nie jesteś sam',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Badania pokazują, że konsekwentne śledzenie jest najlepszym predyktorem długoterminowego sukcesu.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Dla ${age} letniego ${gender} dążącego do ${goal}, konsekwentne śledzenie jest najlepszym predyktorem sukcesu.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} sprawia, że to 10 razy łatwiejsze niż robienie tego ręcznie.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Gotowy, aby zacząć?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Zrób zdjęcie swoich posiłków, aby uzyskać natychmiastową analizę',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Rejestruj regularnie, aby zobaczyć znaczący postęp',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Śledź swoje postępy codziennie, aby utrzymać motywację',
			'onboarding.reinforcement.trackingSuccess.button' => 'Idźmy',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'indywidualna',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'zdrowsza Ty',
			'onboarding.reinforcement.healthProfile.title' => 'Twój Profil Zdrowia',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Na podstawie Twoich parametrów, Twoje BMI wynosi ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Sfinalizuj swój profil, aby dostosować swoje doświadczenie.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'zyskać',
			'onboarding.reinforcement.healthProfile.goalLose' => 'stracić',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Aby osiągnąć swój cel, musisz ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Jesteś na swojej docelowej wadze! Pomożemy Ci ją utrzymać.',
			'onboarding.reinforcement.healthProfile.button' => 'Idźmy',
			'onboarding.reinforcement.goalLifestyle.title' => 'Świetny Początek!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Miałeś już pierwszy krok w kierunku ${goalText}. Ponieważ jesteś ${activityText}, ${appLabel} dostosuje Twoje cele, aby odpowiadały Twojemu stylowi życia.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Spersonalizowane cele kaloryczne',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Wykrywanie posiłków wspierane przez AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Szczegółowe podziały makroskładników',
			'onboarding.reinforcement.goalLifestyle.button' => 'Idźmy',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'Twoje cele',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktywny',
			'tabs.dashboard' => 'Panel',
			'tabs.history' => 'Historia',
			'home.dailyGoal.title' => 'Ustaw Swój Codzienny Cel',
			'home.dailyGoal.titleSet' => 'Twój Codzienny Cel',
			'home.dailyGoal.description' => 'Gotowy, by wyruszyć w swoją drogę do zdrowia? Ustaw poniżej swój dzienny cel kaloryczny, aby rozpocząć postęp.',
			'home.dailyGoal.descriptionSet' => 'Kompas ustawiony! To jest Twój dzienny cel kaloryczny do prowadzenia.',
			'home.dailyGoal.yourGoal' => 'Twój Cel',
			'home.dailyGoal.dailyCalories' => 'Dziennie kalorie (kcal)',
			'home.dailyGoal.setGoal' => 'Ustaw Cel',
			'home.dailyGoal.intake' => 'Spożycie',
			'home.dailyGoal.burned' => 'Spalone',
			'home.dailyGoal.weightImpact' => 'Wpływ na wagę',
			'home.dailyGoal.estLoss' => 'Szac. utrata',
			'home.dailyGoal.estGain' => 'Szac. przyrost',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Codzienne Podsumowanie',
			'home.dailySummary.calories' => 'Kalorie',
			'home.dailySummary.carbs' => 'Węglowodany',
			'home.dailySummary.protein' => 'Białko',
			'home.dailySummary.fat' => 'Tłuszcz',
			'home.dailySummary.fiber' => 'Błonnik',
			'home.intakeProgress.title' => 'Podział Makroskładników Dziś',
			'home.intakeProgress.target' => 'Cel',
			'home.intakeProgress.current' => 'Bieżący',
			'home.intakeHistory.title' => 'Historia Makroskładników z 7 Dni',
			'home.intakeHistory.noHistoryYet' => 'Brak historii',
			'home.intakeHistory.startLogging' => 'Rozpocznij rejestrowanie posiłków, aby zobaczyć swoje\n7-dniowe trendy makroskładników tutaj',
			'home.mealLog.title' => 'Zarejestrowane Posiłki',
			'home.mealLog.emptyMessage' => 'Zrób zdjęcie swojego ostatniego posiłku, aby go zarejestrować.',
			'home.mealLog.noMealsToday' => 'Brak zarejestrowanych posiłków na dzisiaj',
			'home.mealLog.seeAllMeals' => 'Zobacz wszystkie posiłki',
			'home.mealDescription.title' => 'Szybkie Dodawanie z AI',
			'home.mealDescription.description' => 'Opisz swój posiłek, a sztuczna inteligencja zajmie się szczegółami.',
			'home.mealDescription.hint' => 'np. Na śniadanie miałem dużą miskę owsianki z pokrojonym bananem i porcją białka ...',
			'home.mealDescription.analyzeMeal' => 'Przeanalizuj posiłek',
			'home.favoriteMeals.title' => 'Ulubione Posiłki',
			'home.favoriteMeals.description' => 'Szybko dodaj jeden z ulubionych posiłków.',
			'home.favoriteMeals.noFavorites' => 'Brak ulubionych posiłków.',
			'home.favoriteMeals.addFavoriteHint' => 'Kliknij w gwiazdkę na posiłku, aby oznaczyć go jako ulubiony.',
			'home.favoriteMeals.seeAll' => 'Zobacz wszystkie',
			'home.favoriteMeals.add' => 'Dodaj',
			'home.mealSnap.title' => 'Zrób Zdjęcie i Śledź Swój Posiłek',
			'home.mealSnap.description' => 'Użyj aparatu, aby zrobić zdjęcie swojego jedzenia do analizy AI.',
			'home.mealSnap.openCamera' => 'Otwórz aparat',
			'home.connectHealth.title' => 'Synchronizuj z Health Connect',
			'home.connectHealth.description' => 'Synchronizuj swoje dane dotyczące odżywiania z Health Connect',
			'home.connectHealth.install' => 'Zainstaluj',
			'home.connectHealth.connect' => 'Połącz',
			'history.noMeals' => 'Brak zarejestrowanych posiłków',
			'history.emptyMessage' => 'Zrób zdjęcie swojego ostatniego posiłku, aby go zarejestrować.',
			'history.today' => 'Dzisiaj',
			'history.yesterday' => 'Wczoraj',
			'meal.ohNo' => 'O nie!',
			'meal.delete' => 'Usuń',
			'meal.editMeal' => 'Edytuj Posiłek',
			'meal.addMeal' => 'Dodaj Posiłek',
			'meal.saveMeal' => 'Zapisz Posiłek',
			'meal.save' => 'Zapisz',
			'meal.mealName' => 'Nazwa Posiłku',
			'meal.mealQuantity' => 'Ilość Posiłku',
			'meal.mealQuantityHint' => 'np. 1 miska, 2 plastry',
			'meal.timeOfMeal' => 'Czas Posiłku',
			'meal.timeOfMealHint' => 'Wybierz czas, w którym miałeś posiłek',
			'meal.mealType' => 'Rodzaj Posiłku',
			'meal.nutrition.calories' => 'Kalorie',
			'meal.nutrition.carbs' => 'Węglowodany (g)',
			'meal.nutrition.protein' => 'Białko (g)',
			'meal.nutrition.fat' => 'Tłuszcz (g)',
			'meal.nutrition.fiber' => 'Błonnik (g)',
			'meal.deleteConfirmation.title' => 'Usuń Posiłek',
			'meal.deleteConfirmation.message' => 'Czy na pewno chcesz usunąć ten wpis o posiłku?',
			'meal.deleteConfirmation.cancel' => 'Anuluj',
			'meal.deleteConfirmation.delete' => 'Usuń',
			'meal.addedToLog' => 'Posiłek dodany do logu!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nie można dodać posiłku: ${error}',
			'meal.removedFromFavorites' => 'Usunięto z ulubionych!',
			'meal.savedAsFavorite' => 'Posiłek zapisany jako ulubiony!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nie można zaktualizować ulubionego: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Nieudana próba przetworzenia: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Nieudana próba przetworzenia obrazu: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Błąd kompresji obrazu: ${error}',
			'meal.failedToSave' => 'Nie udało się zapisać danych. Proszę spróbuj ponownie.',
			'favorites.title' => 'Ulubione',
			'favorites.empty' => 'Brak ulubionych posiłków.',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Brak danych profilowych',
			'profile.yourProfile' => 'Twój Profil',
			'profile.viewAndManage' => 'Zobacz i zarządzaj swoimi informacjami zdrowotnymi',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'PODSTAWOWE INFORMACJE',
			'profile.sections.goalsAndActivity' => 'CELE I AKTYWNOŚCI',
			'profile.sections.calculatedValues' => 'OBLICZONE WARTOŚCI',
			'profile.gender' => 'Płeć',
			'profile.height' => 'Wysokość',
			'profile.weight' => 'Waga',
			'profile.age' => 'Wiek',
			'profile.weightGoal' => 'Cel Wagowy',
			'profile.targetWeight' => 'Docelowa Waga',
			'profile.activityLevel' => 'Poziom Aktywności',
			'profile.healthMetrics' => 'Wskaźniki Zdrowia',
			'profile.notSet' => 'Nie ustawione',
			'profile.years' => 'lata',
			'profile.updatedSuccessfully' => 'Profil zaktualizowany pomyślnie!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Codzienny Cel',
			'profile.calculatedValues.calPerDay' => 'kal/dzień',
			'profile.calculatedValues.notAvailable' => 'N/D',
			'healthScore.title' => 'Wynik Zdrowia',
			'healthScore.whyThisScore' => 'Dlaczego ten wynik?',
			'healthScore.note' => 'Ten wynik jest oszacowaniem sztucznej inteligencji na podstawie zidentyfikowanych składników i gęstości odżywczej. Zawsze konsultuj się z profesjonalistą w sprawie porad dietetycznych.',
			'healthScore.unhealthy' => 'Niezdrowy',
			'healthScore.healthy' => 'Zdrowy',
			'healthScore.neutral' => 'Neutralny',
			'editProfile.title' => 'Edytuj Profil',
			'editProfile.sections.personalInformation' => 'INFORMACJE OSOBISTE',
			'editProfile.sections.physicalMeasurements' => 'POMIARY FIZYCZNE',
			'editProfile.sections.goalsAndActivity' => 'CELE I AKTYWNOŚCI',
			'editProfile.gender' => 'Płeć',
			'editProfile.dateOfBirth' => 'Data Urodzenia',
			'editProfile.height' => 'Wysokość',
			'editProfile.weight' => 'Waga',
			'editProfile.weightGoal' => 'Cel Wagowy',
			'editProfile.activityLevel' => 'Poziom Aktywności',
			'editProfile.metric' => 'Metryczny',
			'editProfile.imperial' => 'Imperialny',
			'editProfile.metricCm' => 'Metryczny (cm)',
			'editProfile.imperialFtIn' => 'Imperialny (ft/in)',
			'editProfile.metricKg' => 'Metryczny (kg)',
			'editProfile.imperialLbs' => 'Imperialny (lbs)',
			'editProfile.genders.male' => 'Mężczyzna',
			'editProfile.genders.female' => 'Kobieta',
			'editProfile.genders.other' => 'Inne',
			'editProfile.weightGoals.loseWeight.name' => 'Stracić na wadze',
			'editProfile.weightGoals.loseWeight.description' => 'Stwórz deficyt kaloryczny, aby schudnąć',
			'editProfile.weightGoals.maintainWeight.name' => 'Utrzymać wagę',
			'editProfile.weightGoals.maintainWeight.description' => 'Utrzymaj swoją obecną wagę',
			'editProfile.weightGoals.gainWeight.name' => 'Zyskać na wadze',
			'editProfile.weightGoals.gainWeight.description' => 'Stwórz nadwyżkę kaloryczną, aby przytyć',
			'editProfile.activityLevels.sedentary.name' => 'Siedzący',
			'editProfile.activityLevels.sedentary.description' => 'Mała do żadnej aktywności fizycznej',
			'editProfile.activityLevels.lightlyActive.name' => 'Lekko aktywny',
			'editProfile.activityLevels.lightlyActive.description' => 'Lekka aktywność przez 1-3 dni w tygodniu',
			'editProfile.activityLevels.moderatelyActive.name' => 'Umiarkowanie aktywny',
			'editProfile.activityLevels.moderatelyActive.description' => 'Umiarkowana aktywność przez 3-5 dni w tygodniu',
			'editProfile.activityLevels.veryActive.name' => 'Bardzo aktywny',
			'editProfile.activityLevels.veryActive.description' => 'Intensywna aktywność przez 6-7 dni w tygodniu',
			'editProfile.activityLevels.extremelyActive.name' => 'Skrajnie aktywny',
			'editProfile.activityLevels.extremelyActive.description' => 'Bardzo intensywna aktywność fizyczna, praca fizyczna',
			'settings.title' => 'Ustawienia',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALIZACJA',
			'settings.sections.notifications' => 'POWIADOMIENIA',
			'settings.sections.healthConnect' => 'ŁĄCZENIE Z ZDROWIEM',
			'settings.sections.supportAndLegal' => 'WSPARCIE I PRAWO',
			'settings.sections.about' => 'O APLIKACJI',
			'settings.sections.dangerZone' => 'STREFA ZAGROŻENIA',
			'settings.sections.developer' => 'DEWELOPER',
			'settings.editProfile.title' => 'Edytuj Profil',
			'settings.editProfile.subtitle' => 'Zaktualizuj swoje dane osobowe',
			'settings.language.title' => 'Język',
			'settings.language.subtitle' => 'Wybierz preferowany język',
			'settings.language.searchHint' => 'Szukaj języków...',
			'settings.language.noResults' => 'Nie znaleziono wyników',
			'settings.heightUnit.title' => 'Jednostka Wzrostu',
			'settings.weightUnit.title' => 'Jednostka Wagi',
			'settings.mealReminders.title' => 'Przypomnienia o posiłkach',
			'settings.mealReminders.subtitle' => 'Pozostań na właściwej ścieżce dzięki terminowym powiadomieniom',
			'settings.theme.title' => 'Motyw',
			'settings.theme.light' => 'Jasny',
			'settings.theme.dark' => 'Ciemny',
			'settings.theme.system' => 'Systemowy',
			'settings.sendFeedback.title' => 'Wyślij Opinie',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Pomóż nam ulepszyć ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Opinie o aplikacji ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Proszę podać swoje uwagi poniżej:',
			'settings.sendFeedback.appVersion' => 'Wersja aplikacji',
			'settings.sendFeedback.device' => 'Urządzenie',
			'settings.sendFeedback.osVersion' => 'Wersja OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Wyczyść Wszystkie Dane',
			'settings.clearAllData.subtitle' => 'Nieodwracalnie usuń wszystkie swoje informacje',
			'settings.clearAllData.confirmationTitle' => 'Wyczyścić wszystkie dane?',
			'settings.clearAllData.confirmationMessage' => 'Tej akcji nie można cofnąć. Wszystkie Twoje zarejestrowane posiłki, ulubione i ustawienia profilu zostaną trwale usunięte.',
			'settings.clearAllData.cancel' => 'Anuluj',
			'settings.clearAllData.clearEverything' => 'Wyczyść wszystko',
			'settings.debugOptions.title' => 'Opcje Debugowania',
			'settings.developerModeEnabled' => 'Tryb dewelopera włączony!',
			'settings.healthConnect.title' => 'Łączenie z Zdrowiem',
			'settings.healthConnect.subtitle' => 'Wyświetl i zarządzaj uprawnieniami',
			'settings.healthConnect.unavailable.title' => 'Łączenie z Zdrowiem Niedostępne',
			'settings.healthConnect.unavailable.description' => 'Łączenie z Zdrowiem nie jest dostępne na tym urządzeniu. Wymaga systemu Android 14 lub nowszego.',
			'settings.healthConnect.permissions.title' => 'Uprawnienia',
			'settings.healthConnect.permissions.description' => 'Następujące uprawnienia są wymagane, aby umożliwić integrację z Łącznością Zdrowotną:',
			'settings.healthConnect.permissions.granted' => 'Przyznane',
			'settings.healthConnect.permissions.notGranted' => 'Nieprzyznane',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Odczyt Całkowitych Spalonych Kalorii',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Pozwala aplikacji na odczytanie całkowitych spalonych kalorii z Łączności Zdrowotnej.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'To uprawnienie jest używane do wyświetlania dziennego spalania kalorii w aplikacji, pomagając Ci zrozumieć całkowite zużycie energii w ciągu dnia.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Odczyt Danych Żywieniowych',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Pozwala aplikacji na odczytanie danych żywieniowych z Łączności Zdrowotnej.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'To uprawnienie umożliwia aplikacji odczyt danych żywieniowych, które mogły być zapisane przez inne aplikacje podłączone do Łączności Zdrowotnej, zapewniając kompleksowy przegląd Twojej diety.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Zapis Danych Żywieniowych',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Pozwala aplikacji na zapis danych żywieniowych w Łączności Zdrowotnej.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'To uprawnienie umożliwia aplikacji synchronizację zapisanych posiłków z Łącznością Zdrowotną, co sprawia, że Twoje dane żywieniowe są dostępne dla innych aplikacji zdrowotnych i fitness, których używasz.',
			'settings.healthConnect.managePermissions' => 'Zarządzaj Uprawnieniami',
			'settings.healthConnect.openSettings' => 'Otwórz ustawienia Health Connect',
			'settings.healthConnect.requestPermissions' => 'Poproś o zezwolenia',
			'settings.about.title' => 'O nas',
			'settings.about.tagline' => 'Szybka, darmowa i z poszanowaniem prywatności świadomość kalorii',
			'settings.about.ourStory.title' => 'Nasza Historia',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} powstał z prostej frustracji: większość aplikacji do śledzenia kalorii jest albo zbyt skomplikowana, wymaga ciągłego ręcznego wprowadzania danych, pobiera wysokie opłaty subskrypcyjne, albo narusza prywatność.\n\nJako niezależny deweloper chciałem stworzyć coś prostszego i sprawiedliwszego — aplikację, która wykorzystuje AI, aby zredukować wysiłek, pozostaje szybka i darmowa w użyciu oraz szanuje Twoje dane zdrowotne.\n\n${appLabel} to aplikacja, której pragnęłem: bez kont, bez śledzenia, bez reklam — tylko jasne, praktyczne spostrzeżenia i Twoje cele zdrowotne.',
			'settings.about.privacy.title' => 'Twoja Prywatność Ma Znaczenie',
			'settings.about.privacy.description' => 'Prywatność nie jest kwestią drugorzędną — to zasada projektowania. Oto co to oznacza w praktyce:',
			'settings.about.privacy.noAccounts' => 'Brak wymaganych kont\nUżyj aplikacji od razu. Bez rejestracji, bez tożsamości.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Brak śledzenia aktywności\n${appLabel} nie monitoruje Twojej aktywności, nie buduje profili użycia ani nie śledzi Cię w aplikacjach lub witrynach.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Bez reklam z zasady\n${appLabel} jest zbudowany tak, aby działał bez reklam lub monetyzacji opartej na danych.',
			'settings.about.privacy.noDataSelling' => 'Brak sprzedaży danych\nTwoje dane zdrowotne nigdy nie są sprzedawane ani udostępniane osobom trzecim.',
			'settings.about.privacy.localStorage' => 'Przechowywanie lokalne\nTwoje dane pozostają na Twoim urządzeniu.',
			'settings.about.privacy.privacyPolicy' => 'Polityka prywatności',
			'settings.about.developer.title' => 'Stworzony przez Niezależnego Dewelopera',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} jest tworzony i utrzymywany przez jednego niezależnego dewelopera, który koncentruje się na tworzeniu spokojnego, szanującego prywatność oprogramowania zdrowotnego.\n\nOpinie są czytane osobiście i pomagają kształtować kierunek aplikacji.',
			'settings.about.developer.website' => 'Strona internetowa',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Podoba Ci się ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Twoja opinia pomaga uczynić ${appLabel} lepszym dla wszystkich.',
			'settings.about.feedback.rateApp' => 'Oceń w Sklepie Play',
			'settings.about.feedback.sendFeedback' => 'Wyślij opinię',
			'reminders.title' => 'Pozostań na właściwej ścieżce dzięki przypomnieniom',
			'reminders.description' => 'Otrzymuj delikatne przypomnienia o rejestrowaniu posiłków i utrzymaniu konsekwencji w celach dotyczących odżywiania',
			'reminders.notificationsEnabled' => 'Powiadomienia Włączone',
			'reminders.notificationsDisabled' => 'Powiadomienia Wyłączone',
			'reminders.enabledSubtitle' => 'Otrzymasz przypomnienia o posiłkach',
			'reminders.disabledSubtitle' => 'Włącz powiadomienia, aby otrzymywać przypomnienia o posiłkach',
			'reminders.mealReminders' => 'Przypomnienia o Posiłkach',
			'reminders.breakfast' => 'Śniadanie',
			'reminders.lunch' => 'Obiad',
			'reminders.dinner' => 'Kolacja',
			'reminders.snack' => 'Przekąska',
			'reminders.unknown' => 'Nieznane',
			'reminders.change' => 'Zmień',
			'reminders.enableNotifications' => 'Włącz Powiadomienia',
			'reminders.skipForNow' => 'Pomiń na razie',
			'reminders.saveChanges' => 'Zapisz Zmiany',
			'reminders.enabledSuccessfully' => 'Powiadomienia włączone pomyślnie!',
			'reminders.permissionDenied' => 'Odmowa uprawnień do powiadomień',
			'reminders.errorEnabling' => ({required Object error}) => 'Błąd podczas włączania powiadomień: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Błąd podczas ukończenia konfiguracji: ${error}',
			'notifications.breakfast.title' => 'Czas na Śniadanie! 🍳',
			'notifications.breakfast.body' => 'Nie zapomnij zarejestrować swojego śniadania',
			'notifications.lunch.title' => 'Czas na Obiad! 🥗',
			'notifications.lunch.body' => 'Czas, aby zarejestrować swój obiad',
			'notifications.dinner.title' => 'Czas na Kolację! 🍽️',
			'notifications.dinner.body' => 'Nie zapomnij zarejestrować swojej kolacji',
			'notifications.snack.title' => 'Czas na Przekąskę! 🍎',
			'notifications.snack.body' => 'Czas na zdrową przekąskę',
			'notifications.test.title' => 'Powiadomienie Testowe',
			'login.title' => 'Zaloguj się',
			'login.signInWithGoogle' => 'Zaloguj się z Google',
			'login.signInFailed' => 'Logowanie z Google nie powiodło się lub zostało anulowane.',
			'disclaimer.pleaseNote' => 'Proszę zauważyć',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} dostarcza szacunkowe informacje o wartościach odżywczych. Dokładność zależy od Twoich danych i wariantów żywności. Używaj jako przewodnika, a nie jako ostatecznego źródła. Skonsultuj się z profesjonalistą w celu uzyskania spersonalizowanej porady żywieniowej.',
			'disclaimer.snap.portionSize.title' => 'Rozmiar Porcji',
			'disclaimer.snap.portionSize.description' => 'Dokładność oszacowań w dużej mierze zależy od Twojej prawidłowej oceny rozmiaru porcji.',
			'disclaimer.snap.preparationMethods.title' => 'Metody Przygotowania',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Metody gotowania mogą znacznie zmieniać zawartość odżywczą żywności. Szacunki ${appLabel} mogą nie zawsze uwzględniać te różnice.',
			'disclaimer.snap.ingredients.title' => 'Składniki',
			'disclaimer.snap.ingredients.description' => 'Złożone dania z wieloma ukrytymi składnikami mogą prowadzić do mniej dokładnych oszacowań.',
			'disclaimer.snap.databaseLimitations.title' => 'Ograniczenia Bazy Danych',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Baza danych żywności ${appLabel} jest obszerna, ale może nie zawierać każdego pojedynczego artykułu spożywczego ani wariantu.',
			'disclaimer.weightEstimate.title' => 'O Szacowaniu Wagi',
			'disclaimer.weightEstimate.description' => 'Prognozowana zmiana wagi jest teoretycznym oszacowaniem opartym na prostym modelu kaloria wpuszczająca vs. kaloria wypuszczająca. Ma na celu jedynie motywacyjne wskazanie, a nie jako prognoza Twojej rzeczywistej wagi.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Dokładność Kalorii',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'To oszacowanie jest tylko tak dokładne, jak Twoje rejestrowane spożycie kalorii i ich wydatkowanie. Nieprawidłowe rejestrowanie skutkuje niedokładnym prognozowaniem.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Czynniki Biologiczne',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Rzeczywista utrata/przyrost masy ciała jest wpływana przez metabolizm, hormony, sen, stres, nawodnienie i inne indywidualne czynniki, których ${appLabel} nie może zmierzyć.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Waga Wody i Fluktuacje',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normalna waga codzienna może znacznie się wahać z powodu zatrzymywania wody, trawienia i czasu. To oszacowanie nie uwzględnia tych codziennych zmian.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Porady Profesjonalne',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Nie używaj tego oszacowania do podejmowania decyzji medycznych. Zawsze skonsultuj się z profesjonalistą lub zarejestrowanym dietetykiem w celu uzyskania spersonalizowanych porad w zakresie zarządzania wagą.',
			'disclaimer.healthMetrics.description' => 'Te wskaźniki pomagają zrozumieć zapotrzebowanie energetyczne twojego ciała i wyznaczyć cele żywieniowe.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Podstawowa Przemiana Materii (BMR) to liczba kalorii, które twoje ciało spala w spoczynku, aby utrzymać podstawowe funkcje, takie jak oddychanie i krążenie. BMR zależy od twojego wieku, płci, wzrostu i wagi. Wyższe BMR oznacza, że twoje ciało naturalnie spala więcej kalorii w spoczynku, często z powodu większej masy mięśniowej, młodszego wieku lub płci męskiej. Niższe BMR zazwyczaj oznacza mniejszą masę mięśniową, starszy wiek lub płeć żeńską.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Całkowite Dzienne Wydatkowanie Energii (TDEE) to całkowita liczba kalorii, które spalasz dziennie, w tym twoje BMR oraz kalorie pochodzące z aktywności fizycznej i codziennego ruchu. TDEE zależy od twojego BMR i poziomu aktywności. Wyższe TDEE oznacza, że spalasz więcej kalorii ogólnie, zazwyczaj z powodu większej aktywności lub wyższego BMR. Niższe TDEE sugeruje mniejszą aktywność dzienną lub niższe BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Cel Dzienny',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Cel Dzienny to twoje zalecane dzienne spożycie kalorii na podstawie twojego TDEE i celu wagowego. Aby schudnąć, spożywasz mniej kalorii niż twoje TDEE. Aby utrzymać wagę, dostosowujesz swoje spożycie do TDEE. Aby przytyć, spożywasz więcej kalorii niż twoje TDEE. To pomaga osiągnąć pożądane zmiany w wadze w zdrowym tempie.',
			'common.close' => 'Zamknij',
			'common.kContinue' => 'Kontynuuj',
			'errors.loadingProfileData' => 'Błąd ładowania danych profilu',
			'errors.somethingWentWrong' => 'Coś poszło nie tak.',
			'debug.title' => 'Opcje Debugowania',
			'debug.sections.notifications' => 'Powiadomienia',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.appInfo' => 'Informacje o Aplikacji',
			'debug.showActiveNotifications' => 'Pokaż Aktywne Powiadomienia',
			'debug.scheduleTestNotification' => 'Zaprogramuj Powiadomienie Testowe (10s)',
			'debug.triggerBreakfastNotification' => 'Wywołaj Powiadomienie o Śniadaniu',
			'debug.cancelAllNotifications' => 'Anuluj Wszystkie Powiadomienia',
			'debug.activeNotifications' => 'Aktywne Powiadomienia',
			'debug.noTitle' => 'Brak Tytułu',
			'debug.noBody' => 'Brak Treści',
			'debug.fetchTodaysSteps' => 'Pobierz Dziś Kroków',
			'debug.fetchTodaysCalories' => 'Pobierz Dziś Kalorii',
			'debug.fetchLatestWeight' => 'Pobierz Najnowszą Wagę',
			'debug.fetchLatestHeight' => 'Pobierz Najnowszą Wysokość',
			'debug.writeTestWeight' => 'Zapisz Testową Wagę (70kg)',
			'debug.writeTestHeight' => 'Zapisz Testową Wysokość (175cm)',
			'debug.syncLast7Days' => 'Synchronizuj Ostatnie 7 Dni',
			'debug.sync7DaysTitle' => '7-Dniowa Synchronizacja',
			'debug.checkCurrentLocale' => 'Sprawdź Aktualny Locale',
			'debug.currentLocale' => 'Aktualny Locale',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Język: ${languageCode}\nKraj: ${countryCode}\nSystem Jednostek: ${unitSystem}',
			'debug.latestWeight' => 'Najnowsza Waga',
			'debug.latestHeight' => 'Najnowsza Wysokość',
			'debug.todaysCalories' => 'Dzisiejsze Kalorie',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Razem spalonych kalorii: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Pomyślnie pobrano ${count} punktów danych dotyczących kroków, kalorii i wagi w ciągu ostatnich 7 dni.',
			'debug.noWeightData' => 'Brak danych o wadze w ciągu ostatnich 30 dni.',
			'debug.noHeightData' => 'Brak danych o wzroście w ciągu ostatniego roku.',
			'debug.noCalorieData' => 'Brak danych o kaloriach na dzisiaj.',
			'debug.weightWritten' => 'Pomyślnie zapisano testową wagę (70kg).',
			'debug.weightWriteFailed' => 'Nie udało się zapisać testowej wagi.',
			'debug.heightWritten' => 'Pomyślnie zapisano testową wysokość (175cm).',
			'debug.heightWriteFailed' => 'Nie udało się zapisać testowej wysokości.',
			'debug.noNotifications' => 'Brak aktywnych powiadomień.',
			'debug.testNotificationScheduled' => 'Zaprogramowano powiadomienie testowe na 10 sekund z teraz.',
			'debug.testNotificationBody' => 'To jest powiadomienie testowe zaplanowane na 10 sekund z teraz.',
			'debug.breakfastNotificationTriggered' => 'Wywołano powiadomienie o śniadaniu.',
			'debug.allNotificationsCancelled' => 'Wszystkie powiadomienia anulowane.',
			'debug.fetchingData' => 'Pobieranie danych z ostatnich 7 dni...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'Nie udało się zsynchronizować z Health Connect',
			'health.mealSynced' => 'Posiłek zsynchronizowany z Health Connect',
			_ => null,
		};
	}
}
