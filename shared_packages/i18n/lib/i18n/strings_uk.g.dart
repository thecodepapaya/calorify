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
class TranslationsUk with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsUk({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.uk,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <uk>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsUk _root = this; // ignore: unused_field

	@override 
	TranslationsUk $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsUk(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Українська';
	@override String get flag => '🇺🇦';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingUk onboarding = _TranslationsOnboardingUk._(_root);
	@override late final _TranslationsTabsUk tabs = _TranslationsTabsUk._(_root);
	@override late final _TranslationsHomeUk home = _TranslationsHomeUk._(_root);
	@override late final _TranslationsHistoryUk history = _TranslationsHistoryUk._(_root);
	@override late final _TranslationsMealUk meal = _TranslationsMealUk._(_root);
	@override late final _TranslationsFavoritesUk favorites = _TranslationsFavoritesUk._(_root);
	@override late final _TranslationsProfileUk profile = _TranslationsProfileUk._(_root);
	@override late final _TranslationsHealthScoreUk healthScore = _TranslationsHealthScoreUk._(_root);
	@override late final _TranslationsEditProfileUk editProfile = _TranslationsEditProfileUk._(_root);
	@override late final _TranslationsSettingsUk settings = _TranslationsSettingsUk._(_root);
	@override late final _TranslationsRemindersUk reminders = _TranslationsRemindersUk._(_root);
	@override late final _TranslationsNotificationsUk notifications = _TranslationsNotificationsUk._(_root);
	@override late final _TranslationsLoginUk login = _TranslationsLoginUk._(_root);
	@override late final _TranslationsDisclaimerUk disclaimer = _TranslationsDisclaimerUk._(_root);
	@override late final _TranslationsCommonUk common = _TranslationsCommonUk._(_root);
	@override late final _TranslationsFeedbackRatingUk feedbackRating = _TranslationsFeedbackRatingUk._(_root);
	@override late final _TranslationsErrorsUk errors = _TranslationsErrorsUk._(_root);
	@override late final _TranslationsDebugUk debug = _TranslationsDebugUk._(_root);
	@override late final _TranslationsHealthUk health = _TranslationsHealthUk._(_root);
}

// Path: onboarding
class _TranslationsOnboardingUk implements TranslationsOnboardingEn {
	_TranslationsOnboardingUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Ласкаво просимо до ${appLabel}';
	@override String get subtitle => 'Ваш особистий супутник у харчуванні, підкріплений ШІ';
	@override String get getStarted => 'Розпочати';
	@override late final _TranslationsOnboardingFeaturesUk features = _TranslationsOnboardingFeaturesUk._(_root);
	@override late final _TranslationsOnboardingGenderUk gender = _TranslationsOnboardingGenderUk._(_root);
	@override late final _TranslationsOnboardingHeightUk height = _TranslationsOnboardingHeightUk._(_root);
	@override late final _TranslationsOnboardingWeightUk weight = _TranslationsOnboardingWeightUk._(_root);
	@override late final _TranslationsOnboardingAgeUk age = _TranslationsOnboardingAgeUk._(_root);
	@override late final _TranslationsOnboardingBmiScaleUk bmiScale = _TranslationsOnboardingBmiScaleUk._(_root);
	@override late final _TranslationsOnboardingWeightGoalUk weightGoal = _TranslationsOnboardingWeightGoalUk._(_root);
	@override late final _TranslationsOnboardingActivityLevelUk activityLevel = _TranslationsOnboardingActivityLevelUk._(_root);
	@override late final _TranslationsOnboardingHealthConnectUk healthConnect = _TranslationsOnboardingHealthConnectUk._(_root);
	@override late final _TranslationsOnboardingReinforcementUk reinforcement = _TranslationsOnboardingReinforcementUk._(_root);
}

// Path: tabs
class _TranslationsTabsUk implements TranslationsTabsEn {
	_TranslationsTabsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Панель';
	@override String get history => 'Історія';
}

// Path: home
class _TranslationsHomeUk implements TranslationsHomeEn {
	_TranslationsHomeUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalUk dailyGoal = _TranslationsHomeDailyGoalUk._(_root);
	@override late final _TranslationsHomeDailySummaryUk dailySummary = _TranslationsHomeDailySummaryUk._(_root);
	@override late final _TranslationsHomeIntakeProgressUk intakeProgress = _TranslationsHomeIntakeProgressUk._(_root);
	@override late final _TranslationsHomeIntakeHistoryUk intakeHistory = _TranslationsHomeIntakeHistoryUk._(_root);
	@override late final _TranslationsHomeMealLogUk mealLog = _TranslationsHomeMealLogUk._(_root);
	@override late final _TranslationsHomeMealDescriptionUk mealDescription = _TranslationsHomeMealDescriptionUk._(_root);
	@override late final _TranslationsHomeFavoriteMealsUk favoriteMeals = _TranslationsHomeFavoriteMealsUk._(_root);
	@override late final _TranslationsHomeMealSnapUk mealSnap = _TranslationsHomeMealSnapUk._(_root);
	@override late final _TranslationsHomeConnectHealthUk connectHealth = _TranslationsHomeConnectHealthUk._(_root);
}

// Path: history
class _TranslationsHistoryUk implements TranslationsHistoryEn {
	_TranslationsHistoryUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Немає зареєстрованих страв';
	@override String get emptyMessage => 'Зробіть фото вашої останньої страви, щоб зареєструвати її тут.';
	@override String get today => 'Сьогодні';
	@override String get yesterday => 'Вчора';
}

// Path: meal
class _TranslationsMealUk implements TranslationsMealEn {
	_TranslationsMealUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'О ні!';
	@override String get delete => 'Видалити';
	@override String get editMeal => 'Редагувати страву';
	@override String get addMeal => 'Додати страву';
	@override String get saveMeal => 'Зберегти страву';
	@override String get save => 'Зберегти';
	@override String get mealName => 'Назва страви';
	@override String get mealNameHint => 'Наприклад, яєчня з тостом';
	@override String get mealQuantity => 'Кількість страви';
	@override String get mealQuantityHint => 'наприклад, 1 чаша, 2 скибки';
	@override String get timeOfMeal => 'Час страви';
	@override String get timeOfMealHint => 'Виберіть час, коли ви мали вашу страву';
	@override String get mealType => 'Тип страви';
	@override late final _TranslationsMealNutritionUk nutrition = _TranslationsMealNutritionUk._(_root);
	@override late final _TranslationsMealDeleteConfirmationUk deleteConfirmation = _TranslationsMealDeleteConfirmationUk._(_root);
	@override String get addedToLog => 'Страву додано до вашого журналу!';
	@override String couldNotAdd({required Object error}) => 'Не вдалося додати страву: ${error}';
	@override String get savedSuccessfully => 'Страву успішно додано!';
	@override String get updatedSuccessfully => 'Страву успішно оновлено!';
	@override String errorSaving({required Object error}) => 'Не вдалося зберегти страву: ${error}';
	@override String get removedFromFavorites => 'Вилучено з улюблених!';
	@override String get savedAsFavorite => 'Страву збережено як улюблену!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Не вдалося оновити улюблену: ${error}';
	@override String failedToProcess({required Object error}) => 'Не вдалося обробити: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Не вдалося обробити зображення: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Помилка стиснення зображення: ${error}';
	@override String get failedToSave => 'Не вдалося зберегти дані. Будь ласка, спробуйте ще раз.';
	@override String get skip => 'Пропустити';
	@override late final _TranslationsMealVariationUk variation = _TranslationsMealVariationUk._(_root);
}

// Path: favorites
class _TranslationsFavoritesUk implements TranslationsFavoritesEn {
	_TranslationsFavoritesUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Улюблені';
	@override String get empty => 'Ще немає улюблених страв.';
}

// Path: profile
class _TranslationsProfileUk implements TranslationsProfileEn {
	_TranslationsProfileUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профіль';
	@override String get noProfileData => 'Дані профілю не знайдено';
	@override String get yourProfile => 'Ваш профіль';
	@override String get viewAndManage => 'Перегляньте та керуйте вашою інформацією про здоров\'я';
	@override late final _TranslationsProfileSectionsUk sections = _TranslationsProfileSectionsUk._(_root);
	@override String get gender => 'Стать';
	@override String get height => 'Зріст';
	@override String get weight => 'Вага';
	@override String get age => 'Вік';
	@override String get weightGoal => 'Цільова вага';
	@override String get targetWeight => 'Цільова вага';
	@override String get activityLevel => 'Рівень активності';
	@override String get healthMetrics => 'Показники здоров\'я';
	@override String get notSet => 'Не встановлено';
	@override String get years => 'роки';
	@override String get updatedSuccessfully => 'Профіль успішно оновлено!';
	@override late final _TranslationsProfileCalculatedValuesUk calculatedValues = _TranslationsProfileCalculatedValuesUk._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreUk implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оцінка здоров\'я';
	@override String get whyThisScore => 'Чому ця оцінка?';
	@override String get note => 'Ця оцінка є оцінкою ШІ на основі визнаних інгредієнтів та харчової щільності. Завжди консультуйтеся з фахівцем для дієтичних порад.';
	@override String get unhealthy => 'Нездоровий';
	@override String get healthy => 'Здоровий';
	@override String get neutral => 'Нейтральний';
}

// Path: editProfile
class _TranslationsEditProfileUk implements TranslationsEditProfileEn {
	_TranslationsEditProfileUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редагувати профіль';
	@override late final _TranslationsEditProfileSectionsUk sections = _TranslationsEditProfileSectionsUk._(_root);
	@override String get gender => 'Стать';
	@override String get dateOfBirth => 'Дата народження';
	@override String get height => 'Зріст';
	@override String get weight => 'Вага';
	@override String get weightGoal => 'Цільова вага';
	@override String get activityLevel => 'Рівень активності';
	@override String get metric => 'Метрична';
	@override String get imperial => 'Імперська';
	@override String get unitCm => 'см';
	@override String get unitFt => 'фут';
	@override String get unitKg => 'кг';
	@override String get unitLbs => 'фунт';
	@override String get metricCm => 'Метрична (см)';
	@override String get imperialFtIn => 'Імперська (фут/дюйм)';
	@override String get metricKg => 'Метрична (кг)';
	@override String get imperialLbs => 'Імперська (фунти)';
	@override late final _TranslationsEditProfileGendersUk genders = _TranslationsEditProfileGendersUk._(_root);
	@override late final _TranslationsEditProfileWeightGoalsUk weightGoals = _TranslationsEditProfileWeightGoalsUk._(_root);
	@override late final _TranslationsEditProfileActivityLevelsUk activityLevels = _TranslationsEditProfileActivityLevelsUk._(_root);
}

// Path: settings
class _TranslationsSettingsUk implements TranslationsSettingsEn {
	_TranslationsSettingsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Налаштування';
	@override late final _TranslationsSettingsSectionsUk sections = _TranslationsSettingsSectionsUk._(_root);
	@override late final _TranslationsSettingsEditProfileUk editProfile = _TranslationsSettingsEditProfileUk._(_root);
	@override late final _TranslationsSettingsLanguageUk language = _TranslationsSettingsLanguageUk._(_root);
	@override late final _TranslationsSettingsHeightUnitUk heightUnit = _TranslationsSettingsHeightUnitUk._(_root);
	@override late final _TranslationsSettingsWeightUnitUk weightUnit = _TranslationsSettingsWeightUnitUk._(_root);
	@override late final _TranslationsSettingsMealRemindersUk mealReminders = _TranslationsSettingsMealRemindersUk._(_root);
	@override late final _TranslationsSettingsThemeUk theme = _TranslationsSettingsThemeUk._(_root);
	@override late final _TranslationsSettingsSendFeedbackUk sendFeedback = _TranslationsSettingsSendFeedbackUk._(_root);
	@override late final _TranslationsSettingsClearAllDataUk clearAllData = _TranslationsSettingsClearAllDataUk._(_root);
	@override late final _TranslationsSettingsDebugOptionsUk debugOptions = _TranslationsSettingsDebugOptionsUk._(_root);
	@override String get developerModeEnabled => 'Режим розробника увімкнено!';
	@override late final _TranslationsSettingsHealthConnectUk healthConnect = _TranslationsSettingsHealthConnectUk._(_root);
	@override late final _TranslationsSettingsAboutUk about = _TranslationsSettingsAboutUk._(_root);
	@override late final _TranslationsSettingsAppInfoUk appInfo = _TranslationsSettingsAppInfoUk._(_root);
}

// Path: reminders
class _TranslationsRemindersUk implements TranslationsRemindersEn {
	_TranslationsRemindersUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Залишайтеся на правильному шляху з нагадуваннями';
	@override String get description => 'Отримуйте м\'які нагадування, щоб вести облік своїх страв і підтримувати послідовність з вашими цілями у харчуванні';
	@override String get notificationsEnabled => 'Сповіщення увімкнені';
	@override String get notificationsDisabled => 'Сповіщення вимкнені';
	@override String get enabledSubtitle => 'Ви отримуватимете нагадування про страви';
	@override String get disabledSubtitle => 'Увімкніть сповіщення, щоб отримати нагадування про страви';
	@override String get mealReminders => 'Нагадування про страви';
	@override String get breakfast => 'Сніданок';
	@override String get lunch => 'Обід';
	@override String get dinner => 'Вечеря';
	@override String get snack => 'Перекус';
	@override String get unknown => 'Невідомо';
	@override String get change => 'Змінити';
	@override String get enableNotifications => 'Увімкнути сповіщення';
	@override String get skipForNow => 'Пропустити на даний момент';
	@override String get saveChanges => 'Зберегти зміни';
	@override String get enabledSuccessfully => 'Сповіщення успішно увімкнені!';
	@override String get permissionDenied => 'Дозвіл на сповіщення відхилено';
	@override String errorEnabling({required Object error}) => 'Помилка при увімкненні сповіщень: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Помилка під час завершення налаштування: ${error}';
}

// Path: notifications
class _TranslationsNotificationsUk implements TranslationsNotificationsEn {
	_TranslationsNotificationsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastUk breakfast = _TranslationsNotificationsBreakfastUk._(_root);
	@override late final _TranslationsNotificationsLunchUk lunch = _TranslationsNotificationsLunchUk._(_root);
	@override late final _TranslationsNotificationsDinnerUk dinner = _TranslationsNotificationsDinnerUk._(_root);
	@override late final _TranslationsNotificationsSnackUk snack = _TranslationsNotificationsSnackUk._(_root);
	@override late final _TranslationsNotificationsTestUk test = _TranslationsNotificationsTestUk._(_root);
}

// Path: login
class _TranslationsLoginUk implements TranslationsLoginEn {
	_TranslationsLoginUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Увійти';
	@override String get signInWithGoogle => 'Увійти з Google';
	@override String get signInFailed => 'Увійти в Google не вдалося або скасовано.';
}

// Path: disclaimer
class _TranslationsDisclaimerUk implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Будь ласка, зауважте';
	@override late final _TranslationsDisclaimerSnapUk snap = _TranslationsDisclaimerSnapUk._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateUk weightEstimate = _TranslationsDisclaimerWeightEstimateUk._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsUk healthMetrics = _TranslationsDisclaimerHealthMetricsUk._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureUk calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureUk._(_root);
}

// Path: common
class _TranslationsCommonUk implements TranslationsCommonEn {
	_TranslationsCommonUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get close => 'Закрити';
	@override String get kContinue => 'Продовжити';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingUk implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Чи подобається вам ${appLabel}?';
	@override String get yes => 'Так, мені подобається';
	@override String get no => 'Не дуже';
	@override String soloDevMessage({required Object appLabel}) => 'Коротка оцінка допомагає іншим знайти ${appLabel} і підтримує подальший розвиток. Чи не могли б ви приділити хвилину, щоб поставити її?';
	@override String get shareFeedbackViaEmail => 'Ваші відгуки формують те, що буде далі — ми читаємо кожне повідомлення. Чи хотіли б ви поділитися своїми думками електронною поштою?';
	@override String get rateCta => 'Оцінити в Google Play';
	@override String get maybeLater => 'Можливо пізніше';
	@override String get sendFeedback => 'Надіслати відгук';
	@override String get noThanks => 'Ні, дякую';
	@override String get aboutUsDescription => 'Створено з турботою невеликою командою. Ми дбаємо про вашу конфіденційність, цінуємо простоту та підтримуємо вас у формуванні кращих харчових звичок.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Цікавитесь, хто стоїть за ${appLabel}? Дізнайтеся більше ';
	@override String get aboutUsLinkLabel => 'Про нас';
	@override String get thankYouMessage => 'Дякуємо! Ми ще запитаємо пізніше.';
}

// Path: errors
class _TranslationsErrorsUk implements TranslationsErrorsEn {
	_TranslationsErrorsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Помилка завантаження даних профілю';
	@override String get somethingWentWrong => 'Щось пішло не так.';
}

// Path: debug
class _TranslationsDebugUk implements TranslationsDebugEn {
	_TranslationsDebugUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Опції налагодження';
	@override String get searchHint => 'Параметри пошуку...';
	@override late final _TranslationsDebugSectionsUk sections = _TranslationsDebugSectionsUk._(_root);
	@override String get showActiveNotifications => 'Показати активні сповіщення';
	@override String get scheduleTestNotification => 'Запланувати тестове сповіщення (10с)';
	@override String get triggerBreakfastNotification => 'Запустити сповіщення про сніданок';
	@override String get cancelAllNotifications => 'Скасувати всі сповіщення';
	@override String get activeNotifications => 'Активні сповіщення';
	@override String get noTitle => 'Без назви';
	@override String get noBody => 'Без тіла';
	@override String get fetchTodaysSteps => 'Отримати сьогоднішні кроки';
	@override String get fetchTodaysCalories => 'Отримати сьогоднішні калорії';
	@override String get fetchLatestWeight => 'Отримати останню вагу';
	@override String get fetchLatestHeight => 'Отримати останній зріст';
	@override String get writeTestWeight => 'Записати тестову вагу (70кг)';
	@override String get writeTestHeight => 'Записати тестовий зріст (175см)';
	@override String get syncLast7Days => 'Синхронізувати останні 7 днів';
	@override String get sync7DaysTitle => '7-денна синхронізація';
	@override String get checkCurrentLocale => 'Перевірити поточну локалізацію';
	@override String get currentLocale => 'Поточна локалізація';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Мова: ${languageCode}\nКраїна: ${countryCode}\nСистема вимірювань: ${unitSystem}';
	@override String get latestWeight => 'Остання вага';
	@override String get latestHeight => 'Останній зріст';
	@override String get todaysCalories => 'Сьогоднішні калорії';
	@override String totalCaloriesBurned({required Object calories}) => 'Загальна кількість спалених калорій: ${calories}';
	@override String syncSuccess({required Object count}) => 'Успішно отримано ${count} даних про Кроки, Калорії та Вагу за останні 7 днів.';
	@override String get noWeightData => 'Немає даних про вагу за останні 30 днів.';
	@override String get noHeightData => 'Немає даних про зріст за останній рік.';
	@override String get noCalorieData => 'Немає даних про калорії на сьогодні.';
	@override String get weightWritten => 'Успішно записано тестову вагу (70кг).';
	@override String get weightWriteFailed => 'Не вдалося записати тестову вагу.';
	@override String get heightWritten => 'Успішно записано тестовий зріст (175см).';
	@override String get heightWriteFailed => 'Не вдалося записати тестовий зріст.';
	@override String get noNotifications => 'Немає активних сповіщень.';
	@override String get testNotificationScheduled => 'Тестове сповіщення заплановано через 10 секунд.';
	@override String get testNotificationBody => 'Це тестове сповіщення, заплановане через 10 секунд.';
	@override String get breakfastNotificationTriggered => 'Сповіщення про сніданок запущено.';
	@override String get allNotificationsCancelled => 'Всі сповіщення скасовано.';
	@override String get fetchingData => 'Отримання даних за останні 7 днів...';
	@override String id({required Object id}) => 'ID: ${id}';
	@override String get showFeedbackRatingSheet => 'Показати форму відгуку/оцінки';
	@override String get clearUserPreferences => 'Скинути налаштування користувача';
	@override String get clearUserPreferencesConfirmationTitle => 'Скинути налаштування користувача?';
	@override String get clearUserPreferencesConfirmationMessage => 'Тему, мову та налаштування зворотного зв\'язку буде скинуто. Дані про прийоми їжі та профіль не постраждають.';
	@override String get clearUserProfile => 'Скинути профіль користувача';
	@override String get clearUserProfileConfirmationTitle => 'Скинути профіль користувача?';
	@override String get clearUserProfileConfirmationMessage => 'Дані вашого профілю (щоденна мета, зріст, вага тощо) будуть видалені. Дані про прийоми їжі та налаштування не постраждають.';
	@override String get clear => 'Очистити';
	@override String get cancel => 'Скасувати';
	@override String get checkWatchConnection => 'Перевірити підключення годинника';
	@override String get sendTestMessage => 'Надіслати тестове повідомлення';
	@override String get sendTestMessageSubtitle => 'Надішліть просте тестове повідомлення на годинник';
	@override String get sendTestMealData => 'Надіслати тестові дані про страву';
	@override String get sendTestMealDataSubtitle => 'Надішліть приклад даних про страву на годинник';
	@override String get sendTestCalorieGoal => 'Надіслати тестову ціль по калоріям';
	@override String get sendTestCalorieGoalSubtitle => 'Надішліть приклад цілі по калоріям на годинник';
	@override String get viewReceivedMessages => 'Переглянути отримані повідомлення';
	@override String get viewReceivedMessagesSubtitle => 'Перегляньте повідомлення, отримані з годинника';
	@override String get watchConnected => 'Годинник підключено ✓';
	@override String get device => 'Пристрій';
	@override String get nearby => 'Поблизу';
	@override String get yes => 'Так';
	@override String get no => 'Ні';
	@override String get connectedDevices => 'Підключені пристрої';
	@override String get deviceInfoUnavailable => '(інформація про пристрій недоступна)';
	@override String get unknownDevice => 'Невідомий пристрій';
	@override String get watchNotConnected => 'Годинник не підключено ✗';
	@override String get watchNotConnectedHint => 'Переконайтеся:\n• Обидва пристрої спаровані\n• Додаток на годиннику запущено\n• Обидва додатки працюють у режимі налагодження/стадингу';
	@override String get watchConnection => 'Підключення годинника';
	@override String errorCheckingConnection({required Object error}) => 'Помилка перевірки з\'єднання: ${error}';
	@override String get helloFromPhone => 'Привіт з телефону!';
	@override String get testMessageSentSuccess => 'Тестове повідомлення успішно надіслано!';
	@override String get testMessageFailed => 'Не вдалося надіслати тестове повідомлення. Перевірте підключення годинника.';
	@override String errorSendingMessage({required Object error}) => 'Помилка надсилання повідомлення: ${error}';
	@override String get testMeal => 'Тестова страва';
	@override String get testMealDataSentSuccess => 'Дані тестової страви успішно надіслано!';
	@override String get failedToSendMealData => 'Не вдалося надіслати дані про страву. Перевірте підключення годинника.';
	@override String errorSendingMealData({required Object error}) => 'Помилка під час відправки даних про страву: ${error}';
	@override String get testCalorieGoalSentSuccess => 'Тестова ціль за калоріями успішно надіслана!';
	@override String get failedToSendCalorieGoal => 'Не вдалося надіслати ціль по калоріям. Перевірте підключення годинника.';
	@override String errorSendingCalorieGoal({required Object error}) => 'Помилка під час надсилання цілі по калоріям: ${error}';
	@override String get testAnalyzeImage => 'Тест: аналіз зображення';
	@override String get testAnalyzeImageSubtitle => 'Завантажити фіксоване тестове зображення';
	@override String get testDetectImage => 'Тест: розпізнати зображення';
	@override String get testDetectImageSubtitle => 'Розпізнати страву за URL зображення';
	@override String get detectImageFromGallery => 'Розпізнати зображення з галереї';
	@override String get detectImageFromGallerySubtitle => 'Виберіть зображення, завантажте до сховища та оцініть калорії';
	@override String get testDetectText => 'Тест: розпізнавання тексту';
	@override String get testDetectTextSubtitle => 'Розпізнати страву з опису текстом';
	@override String get testMealLoggingWithVariations => 'Тест: запис їжі з варіаціями';
	@override String get testMealLoggingWithVariationsSubtitle => 'Перевірте повний процес запису їжі з варіаціями';
	@override String get mockMealWithVariations => 'Зразкова страва з варіаціями';
	@override String get mockMealWithVariationsSubtitle => 'Попередній перегляд варіацій та інтерфейсу порад без запису';
	@override String get mockMealName => 'Курка-гриль з рисом та овочами';
	@override String get mockTip => 'Це тестова порада для попереднього перегляду інтерфейсу. Страва не заноситься в журнал.';
	@override String get mockMealDescription => 'Тестова страва для налагодження';
	@override String get portionSizeQuestion => 'Який був розмір порції?';
	@override String get extraSidesQuestion => 'Є додаткові гарніри?';
	@override String get optionSmall => 'Мала';
	@override String get optionMedium => 'Середня';
	@override String get optionLarge => 'Велика';
	@override String get optionNone => 'Немає';
	@override String get optionSideSalad => 'Салат-гарнір';
	@override String get optionBreadRoll => 'Булочка';
	@override String get testingAnalyzeImage => 'Тестування API analyzeImage...';
	@override String get testingDetectImage => 'Тестування API detectImage...';
	@override String get testingDetectText => 'Тестування API detectText...';
	@override String get selectingImageFromGallery => 'Вибір зображення з галереї...';
	@override String get noImageSelected => 'Зображення не вибрано';
	@override String get compressingImage => 'Стиснення зображення...';
	@override String get uploadingImageAndDetecting => 'Завантаження зображення до сховища та виявлення страви...';
	@override String get testingMealLoggingFlow => 'Тестування процесу запису їжі з варіаціями...';
	@override String get testUpdateProfile => 'Перевірка оновлення профілю';
	@override String get testUpdateProfileSubtitle => 'Надіслати зразок профілю на сервер (POST)';
	@override String get testingProfileApi => 'Тестування API профілю...';
	@override String get profileUpdateSuccess => 'API профілю відповів успішно';
	@override String profileUpdateFailed({required Object error}) => 'Помилка API профілю: ${error}';
	@override String get noMealIdentifiedInResponse => 'Страву не виявлено у відповіді';
	@override String get mealIdentified => 'Страву виявлено';
	@override String get confidence => 'Впевненість';
	@override String get tip => 'Порада';
	@override String get mealName => 'Назва страви';
	@override String get calories => 'Калорії';
	@override String get protein => 'Білки';
	@override String get carbs => 'Вуглеводи';
	@override String get fat => 'Жири';
	@override String get noMealInfo => 'Інформація про страву відсутня';
	@override String get na => 'Н/Д';
	@override String get analyzeImageResult => 'Результат аналізу зображення';
	@override String get detectImageResult => 'Результат розпізнавання зображення';
	@override String get detectImageFromGalleryResult => 'Результат розпізнавання зображення з галереї';
	@override String get detectTextResult => 'Результат розпізнавання тексту';
	@override String errorGeneric({required Object error}) => 'Помилка: ${error}';
	@override String get variationsCount => 'Варіації';
	@override String get userPreferencesCleared => 'Налаштування користувача очищено';
	@override String get userProfileCleared => 'Профіль користувача очищено';
	@override String get checkForUpdate => 'Перевірити оновлення';
	@override String get showPatchNumber => 'Показати номер патчу';
	@override String get showUpdateAvailable => 'Показати доступне оновлення';
	@override String get updateAvailable => 'Доступне оновлення';
	@override String get upToDate => 'Актуально';
	@override String get shorebirdUnavailable => 'Shorebird недоступний у цьому середовищі.';
	@override String get patchNumberLabel => 'Номер патчу';
	@override String get noPatchInstalled => 'Патч не встановлено';
	@override String get todaysSteps => 'Кроки за сьогодні';
	@override String get stepsLabel => 'Кроки';
	@override String weightLabel({required Object value}) => 'Вага: ${value} кг';
	@override String heightLabel({required Object value}) => 'Зріст: ${value} см';
	@override String get receivedMessagesFromWatch => 'Отримані повідомлення з годинника';
	@override String get noMessagesReceivedYet => 'Поки що повідомлень немає.\n\nНадішліть тестові дані з годинника, щоб побачити їх тут.';
	@override String get messagesCleared => 'Повідомлення очищено';
}

// Path: health
class _TranslationsHealthUk implements TranslationsHealthEn {
	_TranslationsHealthUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Не вдалося синхронізувати з Health Connect';
	@override String get mealSynced => 'Страву синхронізовано з Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesUk implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionUk foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionUk._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisUk aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisUk._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationUk healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationUk._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderUk implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Яка ваша стать?';
	@override String get description => 'Стать допомагає нам точно розрахувати ваш базовий метаболічний рівень (BMR).';
	@override String get next => 'Далі';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightUk implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Якого ви зросту?';
	@override String get description => 'Ваш зріст допомагає нам точно розрахувати ваш Індекс маси тіла (ІМТ) та потреби в енергії.';
	@override String get metric => 'Метрична';
	@override String get imperial => 'Імперська';
	@override String get next => 'Далі';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightUk implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Яка ваша теперішня вага?';
	@override String get currentDescription => 'Ваша теперішня вага важлива для персоналізації ваших щоденних цілей.';
	@override String get targetTitle => 'Яка ваша цільова вага?';
	@override String get targetDescription => 'Встановлення цільової ваги допомагає нам визначити ваш довгостроковий план.';
	@override String get metric => 'Метрична';
	@override String get imperial => 'Імперська';
	@override String get next => 'Далі';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeUk implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Коли у вас день народження?';
	@override String get description => 'Ваш вік допомагає нам точно розрахувати ваші потреби в калоріях.';
	@override String get next => 'Далі';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleUk implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Недостатня вага';
	@override String get healthy => 'Здоровий';
	@override String get overweight => 'Надмірна вага';
	@override String get obese => 'Ожиріння';
	@override late final _TranslationsOnboardingBmiScaleCategoriesUk categories = _TranslationsOnboardingBmiScaleCategoriesUk._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesUk messages = _TranslationsOnboardingBmiScaleMessagesUk._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalUk implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Яка ваша мета?';
	@override String get description => 'Виберіть мету, яка найкраще описує те, що ви хочете досягти';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelUk implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Наскільки ви активні?';
	@override String get description => 'Це допомагає нам точніше розрахувати ваші щоденні потреби в калоріях';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectUk implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Підключіться до Health Connect';
	@override String get description => 'Синхронізуйте ваші дані про здоров\'я для покращених усвідомлень та автоматичного відслідковування калорій';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingUk automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingUk._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsUk progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsUk._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationUk seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationUk._(_root);
	@override String get connected => 'Health Connect підключено';
	@override String get notConnected => 'Health Connect не підключено';
	@override String get setup => 'Налаштувати Health Connect';
	@override String get skipForNow => 'Пропустити на даний момент';
	@override String get statusConnected => 'Health Connect підключено.';
	@override String get statusSuccess => 'Health Connect успішно підключено!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Доступ заборонено. Будь ласка, увімкніть дозволи Health Connect у налаштуваннях вашого телефону для ${appLabel}.';
	@override String statusError({required Object error}) => 'Помилка налаштування Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementUk implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessUk trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessUk._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileUk healthProfile = _TranslationsOnboardingReinforcementHealthProfileUk._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleUk goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleUk._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalUk implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Встановіть свою щоденну ціль';
	@override String get titleSet => 'Ваша щоденна ціль';
	@override String get description => 'Готові розпочати свою подорож до здоров\'я? Встановіть свою щоденну калорійну ціль нижче, щоб розпочати свій прогрес.';
	@override String get descriptionSet => 'Ваш компас налаштовано! Це ваша щоденна калорійна ціль, яка допоможе вам.';
	@override String get yourGoal => 'Ваша ціль';
	@override String get goal => 'Ціль';
	@override String get dailyCalories => 'Щоденні калорії (ккал)';
	@override String get setGoal => 'Встановити мету';
	@override String get intake => 'Споживання';
	@override String get burned => 'Спалено';
	@override String get weightImpact => 'Вплив на вагу';
	@override String get estLoss => 'Приблизна втрата';
	@override String get estGain => 'Приблизний приріст';
	@override String get kcal => 'ккал';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryUk implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Щоденний звіт';
	@override String get calories => 'Калорії';
	@override String get carbs => 'Вуглеводи';
	@override String get protein => 'Білок';
	@override String get fat => 'Жир';
	@override String get fiber => 'Волокна';
	@override String get grams => 'г';
	@override String get chartAccessibilityLabel => 'Діаграма макронутрієнтів';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressUk implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сьогоднішній макро-спліт';
	@override String get target => 'Ціль';
	@override String get current => 'Поточний';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryUk implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => '7-денна історія макро';
	@override String get noHistoryYet => 'Історії ще немає';
	@override String get startLogging => 'Розпочніть ведення обліку страв, щоб побачити ваші\n7-денні макро-тенденції тут';
}

// Path: home.mealLog
class _TranslationsHomeMealLogUk implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Зареєстровані страви';
	@override String get emptyMessage => 'Зробіть фото вашої останньої страви, щоб зареєструвати її тут.';
	@override String get noMealsToday => 'Сьогодні немає зареєстрованих страв';
	@override String get seeAllMeals => 'Дивитися всі страви';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionUk implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Швидке додавання з ШІ';
	@override String get description => 'Опишіть вашу страву, а ШІ впорається з деталями.';
	@override String get hint => 'наприклад, на сніданок я мав велику чашу вівсянки з нарізаним бананом та ложкою протеїну ...';
	@override String get analyzeMeal => 'Проаналізувати страву';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsUk implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Улюблені страви';
	@override String get description => 'Швидко додайте одну з ваших улюблених страв.';
	@override String get noFavorites => 'Ще немає улюблених страв.';
	@override String get addFavoriteHint => 'Натисніть на зірку у страві, щоб відзначити її як улюблену.';
	@override String get seeAll => 'Дивитися всі';
	@override String get add => 'Додати';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapUk implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Зробіть фото та відстежте вашу страву';
	@override String get description => 'Використовуйте вашу камеру, щоб зробити фото вашої їжі для аналізу ШІ.';
	@override String get openCamera => 'Відкрити камеру';
	@override String get gallery => 'Галерея';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthUk implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Синхронізуйте з Health Connect';
	@override String get description => 'Синхронізуйте свої дані про харчування з Health Connect';
	@override String get install => 'Встановити';
	@override String get connect => 'Підключити';
}

// Path: meal.nutrition
class _TranslationsMealNutritionUk implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Калорії';
	@override String get carbs => 'Вуглеводи (г)';
	@override String get protein => 'Білок (г)';
	@override String get fat => 'Жир (г)';
	@override String get fiber => 'Волокна (г)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationUk implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Видалити страву';
	@override String get message => 'Ви впевнені, що хочете видалити цей запис про страву?';
	@override String get cancel => 'Скасувати';
	@override String get delete => 'Видалити';
}

// Path: meal.variation
class _TranslationsMealVariationUk implements TranslationsMealVariationEn {
	_TranslationsMealVariationUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Питання ${current} з ${total}';
	@override String get noVariationsAvailable => 'Немає доступних варіантів';
}

// Path: profile.sections
class _TranslationsProfileSectionsUk implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ПРОФІЛЬ';
	@override String get basicInformation => 'ОСОБИСТА ІНФОРМАЦІЯ';
	@override String get goalsAndActivity => 'ЦІЛІ ТА АКТИВНІСТЬ';
	@override String get calculatedValues => 'РОЗРАХОВУВАНІ ПОКАЗНИКИ';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesUk implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Щоденна ціль';
	@override String get calPerDay => 'кал/день';
	@override String get notAvailable => 'Н/Д';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsUk implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ОСОБИСТА ІНФОРМАЦІЯ';
	@override String get physicalMeasurements => 'ФІЗИЧНІ РОЗМІРИ';
	@override String get goalsAndActivity => 'ЦІЛІ ТА АКТИВНІСТЬ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersUk implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get male => 'Чоловіча';
	@override String get female => 'Жіноча';
	@override String get other => 'Інша';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsUk implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightUk loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightUk._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightUk maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightUk._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightUk gainWeight = _TranslationsEditProfileWeightGoalsGainWeightUk._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsUk implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryUk sedentary = _TranslationsEditProfileActivityLevelsSedentaryUk._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveUk lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveUk._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveUk moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveUk._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveUk veryActive = _TranslationsEditProfileActivityLevelsVeryActiveUk._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveUk extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveUk._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsUk implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ПРОФІЛЬ';
	@override String get localization => 'ЛОКАЛІЗАЦІЯ';
	@override String get notifications => 'СПОВІЩЕННЯ';
	@override String get healthConnect => 'ЗВ\'ЯЗОК ЗДОРОВ\'Я';
	@override String get supportAndLegal => 'ПІДТРИМКА ТА ЮРИДИЧНІ ПИТАННЯ';
	@override String get about => 'ПРО ДОДАТОК';
	@override String get dangerZone => 'ЗОНИ РИЗИКУ';
	@override String get developer => 'РОЗРОБНИК';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileUk implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редагувати профіль';
	@override String get subtitle => 'Оновіть вашу особисту інформацію';
}

// Path: settings.language
class _TranslationsSettingsLanguageUk implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Мова';
	@override String get subtitle => 'Виберіть вашу бажану мову';
	@override String get searchHint => 'Шукати мови...';
	@override String get noResults => 'Нічого не знайдено';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitUk implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Одиниця зрісту';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitUk implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Одиниця ваги';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersUk implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нагадування про страви';
	@override String get subtitle => 'Залишайтеся на правильному шляху з вчасними сповіщеннями';
}

// Path: settings.theme
class _TranslationsSettingsThemeUk implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тема';
	@override String get light => 'Світла';
	@override String get dark => 'Темна';
	@override String get system => 'Системна';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackUk implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Надіслати відгук';
	@override String subtitle({required Object appLabel}) => 'Допоможіть нам покращити ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Відгук про додаток ${appLabel}';
	@override String get emailBodyPrefix => 'Будь ласка, надайте ваші відгуки нижче:';
	@override String get appVersion => 'Версія додатку';
	@override String get device => 'Пристрій';
	@override String get osVersion => 'Версія ОС';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataUk implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Очистити всі дані';
	@override String get subtitle => 'Безповоротно видалити всю вашу інформацію';
	@override String get confirmationTitle => 'Очистити всі дані?';
	@override String get confirmationMessage => 'Цю дію неможливо скасувати. Всі ваші зареєстровані страви, улюблені та налаштування профілю будуть видалені назавжди.';
	@override String get cancel => 'Скасувати';
	@override String get clearEverything => 'Очистити все';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsUk implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Опції налагодження';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectUk implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Зв\'язок зі здоров\'ям';
	@override String get subtitle => 'Перегляньте та керуйте дозволами';
	@override late final _TranslationsSettingsHealthConnectUnavailableUk unavailable = _TranslationsSettingsHealthConnectUnavailableUk._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsUk permissions = _TranslationsSettingsHealthConnectPermissionsUk._(_root);
	@override String get managePermissions => 'Керувати дозволами';
	@override String get openSettings => 'Відкрити налаштування Health Connect';
	@override String get requestPermissions => 'Запросити дозволи';
	@override String get permissionRequestCancelledOrFailed => 'Запит дозволу було скасовано або він не вдався. Будь ласка, спробуйте ще раз або надайте дозволи вручну в налаштуваннях Health Connect.';
	@override String get permissionRequestFailed => 'Не вдалося надіслати запит на дозволи. Будь ласка, спробуйте ще раз або надайте дозволи вручну в налаштуваннях Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutUk implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Про нас';
	@override String get tagline => 'Швидка, безкоштовна та орієнтована на конфіденційність обізнаність про калорії';
	@override late final _TranslationsSettingsAboutOurStoryUk ourStory = _TranslationsSettingsAboutOurStoryUk._(_root);
	@override late final _TranslationsSettingsAboutPrivacyUk privacy = _TranslationsSettingsAboutPrivacyUk._(_root);
	@override late final _TranslationsSettingsAboutDeveloperUk developer = _TranslationsSettingsAboutDeveloperUk._(_root);
	@override late final _TranslationsSettingsAboutFeedbackUk feedback = _TranslationsSettingsAboutFeedbackUk._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoUk implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Збірка ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastUk implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Час сніданку! 🍳';
	@override String get body => 'Не забудьте зареєструвати свій сніданок';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchUk implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Час обіду! 🥗';
	@override String get body => 'Час зареєструвати свій обід';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerUk implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Час вечері! 🍽️';
	@override String get body => 'Не забудьте зареєструвати свою вечерю';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackUk implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Час перекусу! 🍎';
	@override String get body => 'Час для здорового перекусу';
}

// Path: notifications.test
class _TranslationsNotificationsTestUk implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тестове сповіщення';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapUk implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} надає оцінкову інформацію про харчування. Точність залежить від вашого внеску та варіацій їжі. Використовуйте як орієнтир, а не як остаточне джерело. Консультуйтеся з фахівцем для отримання індивідуальних порад з харчування.';
	@override late final _TranslationsDisclaimerSnapPortionSizeUk portionSize = _TranslationsDisclaimerSnapPortionSizeUk._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsUk preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsUk._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsUk ingredients = _TranslationsDisclaimerSnapIngredientsUk._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsUk databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsUk._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateUk implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Про оцінку ваги';
	@override String get description => 'Прогнозована зміна ваги є теоретичною оцінкою на основі простого моделі калорій-входу проти калорій-виходу. Вона призначена лише для мотиваційного спрямування, а не як прогноз вашої фактичної ваги.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyUk calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyUk._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsUk biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsUk._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightUk waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightUk._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceUk professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceUk._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsUk implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get description => 'Ці показники допоможуть вам зрозуміти енергетичні потреби вашого тіла та нададуть орієнтири для ваших цілей у харчуванні.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrUk bmr = _TranslationsDisclaimerHealthMetricsBmrUk._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeUk tdee = _TranslationsDisclaimerHealthMetricsTdeeUk._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalUk dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalUk._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureUk implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оцінка витрат калорій';
	@override String get description => 'Коли дані Health Connect недоступні, ми оцінюємо сьогоднішні витрати калорій, використовуючи ваш базальний обмін речовин (BMR) і рівень активності (TDEE), пропорційно тій частині дня, яка вже пройшла.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedUk howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedUk._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUk professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUk._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsUk implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Сповіщення';
	@override String get healthConnect => 'Health Connect';
	@override String get wearOs => 'Wear OS';
	@override String get foodApiTests => 'Тести Food API';
	@override String get profileApiTests => 'Тести API профілю';
	@override String get feedback => 'Зворотній зв\'язок';
	@override String get dataReset => 'Скидання даних';
	@override String get appInfo => 'Інформація про додаток';
	@override String get shorebird => 'Shorebird';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionUk implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Розумне визнання їжі';
	@override String get description => 'Зробіть фото та дайте можливість ШІ визначити вашу страву';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisUk implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Аналіз з ШІ';
	@override String get description => 'Отримуйте миттєву інформацію про харчування з ваших описів';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationUk implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Інтеграція зі здоров’ям';
	@override String get description => 'Підключайтеся до Health Connect для покращених усвідомлень';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesUk implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Недостатня вага';
	@override String get healthyWeight => 'Здорова вага';
	@override String get overweight => 'Надмірна вага';
	@override String get obese => 'Ожиріння';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesUk implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Ми можемо допомогти вам скласти здоровий план для досягнення збалансованої ваги з поживними стравами.';
	@override String get healthy => 'Чудова робота! Ви у здоровому діапазоні. Ми допоможемо вам підтримувати вашу життєвість та енергетичні рівні.';
	@override String overweight({required Object appLabel}) => '${appLabel} спростить вашу подорож за допомогою відстеження на базі ШІ, щоб допомогти вам досягти вашої мети з комфортом.';
	@override String get obese => 'Ми тут, щоб підтримати вас з персоналізованим керівництвом та сталими стратегіями для досягнення ваших цілей у здоров\'ї.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingUk implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Автоматичне відслідковування калорій';
	@override String get description => 'Відстежуйте спалені калорії з ваших фітнес-додатків';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsUk implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Аналіз прогресу';
	@override String get description => 'Отримуйте детальні відомості про тенденції вашого здоров\'я';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationUk implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Безшовна інтеграція';
	@override String get description => 'Синхронізуйте дані з ваших улюблених здоров\'я додатків';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessUk implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ви не один!';
	@override String get genericMessage => 'Дослідження показує, що постійне відстеження є найкращим предиктором довгострокового успіху.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Для ${age}-річного ${gender}, який бажає ${goal}, постійне відстеження є найкращим предиктором успіху.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} робить це у 10 разів легшим, ніж робити це вручну.';
	@override String get getStartedTitle => 'Готові почати?';
	@override String get tipPhoto => 'Зробіть фото ваших страв для миттєвого аналізу';
	@override String get tipConsistency => 'Фіксуйте дані регулярно, щоб бачити помітний прогрес';
	@override String get tipProgress => 'Відстежуйте свій прогрес щодня, щоб залишатися мотивованим';
	@override String get button => 'Поїхали';
	@override String get defaultGender => 'індивід';
	@override String get defaultGoal => 'здорова версія вас';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileUk implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваш профіль здоров\'я';
	@override String bmiDescription({required Object bmi}) => 'Згідно з вашими показниками, ваш ІМТ становить ${bmi}.';
	@override String get finalizeDescription => 'Давайте завершуємо ваш профіль, щоб налаштувати ваш досвід.';
	@override String get goalGain => 'набрати';
	@override String get goalLose => 'втратити';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Для досягнення вашої мети вам потрібно ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Ви на вашій цільовій вазі! Ми допоможемо вам підтримувати це.';
	@override String get button => 'Поїхали';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleUk implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Чудовий старт!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Ви зробили перший крок до ${goalText}. Оскільки ви ${activityText}, ${appLabel} підлаштує ваші цілі, щоб відповідати вашому способу життя.';
	@override String get personalizedTargets => 'Персоналізовані калорійні цілі';
	@override String get aiMealDetection => 'Визначення їжі на основі ШІ';
	@override String get macroBreakdowns => 'Детальні макро-розподіли';
	@override String get button => 'Поїхали';
	@override String get defaultGoal => 'ваших цілей';
	@override String get defaultActivity => 'активний';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightUk implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Скинути вагу';
	@override String get description => 'Створіть калорійний дефіцит, щоб скинути вагу';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightUk implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Утримати вагу';
	@override String get description => 'Утримуйте вашу поточну вагу';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightUk implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Набрати вагу';
	@override String get description => 'Створіть калорійний надлишок, щоб набрати вагу';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryUk implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Малорухливий';
	@override String get description => 'Мало або зовсім немає фізичних вправ';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveUk implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Помірно активний';
	@override String get description => 'Легкі фізичні вправи 1-3 дні/тиждень';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveUk implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Помірно активний';
	@override String get description => 'Помірні фізичні вправи 3-5 днів/тиждень';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveUk implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Дуже активний';
	@override String get description => 'Навантажувальні фізичні вправи 6-7 днів/тиждень';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveUk implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Вкрай активний';
	@override String get description => 'Дуже інтенсивні фізичні вправи, фізична робота';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableUk implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Зв\'язок зі здоров\'ям недоступний';
	@override String get description => 'Зв\'язок зі здоров\'ям недоступний на цьому пристрої. Він вимагає Android 14 або новішої версії.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsUk implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Дозволи';
	@override String get description => 'Для інтеграції з Зв\'язком зі здоров\'ям запитуються такі дозволи:';
	@override String get granted => 'Надано';
	@override String get notGranted => 'Не надано';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedUk caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedUk._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadUk nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadUk._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteUk nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteUk._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryUk implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Наша історія';
	@override String content({required Object appLabel}) => '${appLabel} з\'явився з простого розчарування: більшість додатків для відстеження калорій або занадто складні, вимагають постійного ручного вводу, мають високі підписні плати або порушують конфіденційність.\n\nЯк незалежний розробник, я хотів створити щось простіше і справедливіше — додаток, який використовує штучний інтелект, щоб зменшити зусилля, залишається швидким і безкоштовним у використанні та поважає ваші дані про здоров\'я.\n\n${appLabel} — це додаток, який я хотів би, щоб існував: без облікових записів, без відстеження, без реклами — лише чіткі, практичні звіти та ваші цілі щодо здоров\'я.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyUk implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваша конфіденційність важлива';
	@override String get description => 'Конфіденційність не є подумкою на останок — це принцип проєктування. Ось що це означає на практиці:';
	@override String get noAccounts => 'Облікові записи не потрібні\nВикористовуйте додаток відразу. Жодних реєстрацій, жодних ідентифікацій.';
	@override String noTracking({required Object appLabel}) => 'Без поведінкового відстеження\n${appLabel} не стежить за вашою активністю, не створює профілі використання і не відстежує вас через додатки або вебсайти.';
	@override String noAds({required Object appLabel}) => 'Без реклами за замовчуванням\n${appLabel} розроблений для роботи без реклами або монетизації на основі даних.';
	@override String get noDataSelling => 'Без продажу даних\nВаші дані про здоров\'я ніколи не продаються та не передаються третім особам.';
	@override String get localStorage => 'Місцеве зберігання\nВаші дані залишаються на вашому пристрої.';
	@override String get privacyPolicy => 'Політика конфіденційності';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperUk implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Розроблений незалежним розробником';
	@override String description({required Object appLabel}) => '${appLabel} розроблений та підтримується одним незалежним розробником, який зосереджений на створенні спокійного програмного забезпечення для здоров\'я, що поважає конфіденційність.\n\nВідгуки читаються особисто і допомагають формувати напрямок розвитку додатка.';
	@override String get website => 'Веб-сайт';
	@override String get email => 'Електронна пошта';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackUk implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Вам подобається ${appLabel}?';
	@override String description({required Object appLabel}) => 'Ваш відгук допомагає покращити ${appLabel} для всіх.';
	@override String get rateApp => 'Оцініть у Play Store';
	@override String get sendFeedback => 'Надіслати відгук';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeUk implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Розмір порції';
	@override String get description => 'Точність оцінок сильно залежить від вашої правильної оцінки розміру порції.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsUk implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Методи приготування';
	@override String description({required Object appLabel}) => 'Методи приготування можуть суттєво змінити харчову цінність їжі. Оцінки ${appLabel} можуть не завжди враховувати ці варіації.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsUk implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Інгредієнти';
	@override String get description => 'Складні страви з багатьма прихованими інгредієнтами можуть призвести до менш точних оцінок.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsUk implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Обмеження бази даних';
	@override String description({required Object appLabel}) => 'База даних продуктів ${appLabel} є обширною, але може не включати кожен окремий продукт або варіацію.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyUk implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Точність калорій';
	@override String get description => 'Ця оцінка є такою точністю, як ваша облікова споживана та витрачена калорія. Неправильне ведення обліку призведе до некоректного прогнозу.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsUk implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Біологічні чинники';
	@override String description({required Object appLabel}) => 'Фактична втрата/набираня ваги залежить від обміну речовин, гормонів, сну, стресу, гідратації та інших індивідуальних факторів, які ${appLabel} не може виміряти.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightUk implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Водна вага та коливання';
	@override String get description => 'Нормальна добова вага може сильно коливатися через затримку води, травлення та час. Оцінка не враховує ці добові зміни.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceUk implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Професійне керівництво';
	@override String get description => 'Не використовуйте цю оцінку для прийняття медичних рішень. Завжди консультуйтеся з медичним працівником або зареєстрованим дієтологом для отримання персоналізованих порад з управління вагою.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrUk implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Основний обмін речовин (BMR)';
	@override String get description => 'Основний обмін речовин (BMR) — це кількість калорій, які ваше тіло споживає в стані спокою для підтримки базових функцій, таких як дихання і циркуляція. BMR залежить від вашого віку, статі, зросту та ваги. Вищий BMR означає, що ваше тіло природно спалює більше калорій у спокої, зазвичай через більшу м\'язову масу, молодший вік або чоловічу стать. Нижчий BMR зазвичай свідчить про меншу м\'язову масу, старший вік або жіночу стать.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeUk implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тотальне добове енергоспоживання (TDEE)';
	@override String get description => 'Тотальне добове енергоспоживання (TDEE) — це загальна кількість калорій, яку ви спалюєте щодня, включаючи ваш BMR, а також калорії від фізичної активності та щоденних рухів. TDEE залежить від вашого BMR та рівня активності. Вищий TDEE означає, що ви спалюєте більше калорій загалом, зазвичай через більшу активність або вищий BMR. Нижчий TDEE свідчить про меншу щоденну активність або нижчий BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalUk implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Щоденна мета';
	@override String get description => 'Щоденна мета — це ваша рекомендована добова калорійність, основана на вашому TDEE і цілі щодо ваги. Для схуднення вам потрібно споживати менше калорій, ніж ваш TDEE. Для підтримання ваги — відповідати вашому TDEE. Для набору ваги — споживати більше калорій, ніж ваш TDEE. Це допоможе вам досягти бажаних змін у вазі здоровими темпами.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedUk implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Як обчислюється ця оцінка';
	@override String get description => 'Ми обчислюємо ваш TDEE (на основі профілю) і множимо його на частку пройденого часу доби (години + хвилини) / 24, щоб оцінити кількість калорій, спалених до цього моменту.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUk implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Поради фахівців';
	@override String get description => 'Не використовуйте цю оцінку для прийняття медичних рішень. Завжди консультуйтеся з медичним працівником або зареєстрованим дієтологом для отримання персоналізованих порад щодо контролю ваги.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedUk implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Читати загальні витрачені калорії';
	@override String get description => 'Дозволяє додатку читати загальні витрачені калорії з Зв\'язку зі здоров\'ям.';
	@override String get usage => 'Цей дозвіл використовується для відображення вашого щоденного витрачання калорій у додатку, що допомагає вам зрозуміти ваше загальне енергетичне споживання протягом дня.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadUk implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Читати дані про харчування';
	@override String get description => 'Дозволяє додатку читати дані про харчування з Зв\'язку зі здоров\'ям.';
	@override String get usage => 'Цей дозвіл дозволяє додатку читати інформацію про харчування, яка могла бути зафіксована іншими додатками, підключеними до Зв\'язку зі здоров\'ям, надаючи всебічний огляд вашого харчування.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteUk implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Записувати дані про харчування';
	@override String get description => 'Дозволяє додатку записувати дані про харчування в Зв\'язок зі здоров\'ям.';
	@override String get usage => 'Цей дозвіл дозволяє додатку синхронізувати ваші зафіксовані прийоми їжі з Зв\'язком зі здоров\'ям, роблячи ваші дані про харчування доступними для інших додатків зі здоров\'я та фітнесу, які ви використовуєте.';
}

/// The flat map containing all translations for locale <uk>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsUk {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Українська',
			'flag' => '🇺🇦',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => 'Ласкаво просимо до ${appLabel}',
			'onboarding.subtitle' => 'Ваш особистий супутник у харчуванні, підкріплений ШІ',
			'onboarding.getStarted' => 'Розпочати',
			'onboarding.features.foodRecognition.title' => 'Розумне визнання їжі',
			'onboarding.features.foodRecognition.description' => 'Зробіть фото та дайте можливість ШІ визначити вашу страву',
			'onboarding.features.aiAnalysis.title' => 'Аналіз з ШІ',
			'onboarding.features.aiAnalysis.description' => 'Отримуйте миттєву інформацію про харчування з ваших описів',
			'onboarding.features.healthIntegration.title' => 'Інтеграція зі здоров’ям',
			'onboarding.features.healthIntegration.description' => 'Підключайтеся до Health Connect для покращених усвідомлень',
			'onboarding.gender.title' => 'Яка ваша стать?',
			'onboarding.gender.description' => 'Стать допомагає нам точно розрахувати ваш базовий метаболічний рівень (BMR).',
			'onboarding.gender.next' => 'Далі',
			'onboarding.height.title' => 'Якого ви зросту?',
			'onboarding.height.description' => 'Ваш зріст допомагає нам точно розрахувати ваш Індекс маси тіла (ІМТ) та потреби в енергії.',
			'onboarding.height.metric' => 'Метрична',
			'onboarding.height.imperial' => 'Імперська',
			'onboarding.height.next' => 'Далі',
			'onboarding.weight.currentTitle' => 'Яка ваша теперішня вага?',
			'onboarding.weight.currentDescription' => 'Ваша теперішня вага важлива для персоналізації ваших щоденних цілей.',
			'onboarding.weight.targetTitle' => 'Яка ваша цільова вага?',
			'onboarding.weight.targetDescription' => 'Встановлення цільової ваги допомагає нам визначити ваш довгостроковий план.',
			'onboarding.weight.metric' => 'Метрична',
			'onboarding.weight.imperial' => 'Імперська',
			'onboarding.weight.next' => 'Далі',
			'onboarding.age.title' => 'Коли у вас день народження?',
			'onboarding.age.description' => 'Ваш вік допомагає нам точно розрахувати ваші потреби в калоріях.',
			'onboarding.age.next' => 'Далі',
			'onboarding.bmiScale.underweight' => 'Недостатня вага',
			'onboarding.bmiScale.healthy' => 'Здоровий',
			'onboarding.bmiScale.overweight' => 'Надмірна вага',
			'onboarding.bmiScale.obese' => 'Ожиріння',
			'onboarding.bmiScale.categories.underweight' => 'Недостатня вага',
			'onboarding.bmiScale.categories.healthyWeight' => 'Здорова вага',
			'onboarding.bmiScale.categories.overweight' => 'Надмірна вага',
			'onboarding.bmiScale.categories.obese' => 'Ожиріння',
			'onboarding.bmiScale.messages.underweight' => 'Ми можемо допомогти вам скласти здоровий план для досягнення збалансованої ваги з поживними стравами.',
			'onboarding.bmiScale.messages.healthy' => 'Чудова робота! Ви у здоровому діапазоні. Ми допоможемо вам підтримувати вашу життєвість та енергетичні рівні.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} спростить вашу подорож за допомогою відстеження на базі ШІ, щоб допомогти вам досягти вашої мети з комфортом.',
			'onboarding.bmiScale.messages.obese' => 'Ми тут, щоб підтримати вас з персоналізованим керівництвом та сталими стратегіями для досягнення ваших цілей у здоров\'ї.',
			'onboarding.weightGoal.title' => 'Яка ваша мета?',
			'onboarding.weightGoal.description' => 'Виберіть мету, яка найкраще описує те, що ви хочете досягти',
			'onboarding.activityLevel.title' => 'Наскільки ви активні?',
			'onboarding.activityLevel.description' => 'Це допомагає нам точніше розрахувати ваші щоденні потреби в калоріях',
			'onboarding.healthConnect.title' => 'Підключіться до Health Connect',
			'onboarding.healthConnect.description' => 'Синхронізуйте ваші дані про здоров\'я для покращених усвідомлень та автоматичного відслідковування калорій',
			'onboarding.healthConnect.automaticTracking.title' => 'Автоматичне відслідковування калорій',
			'onboarding.healthConnect.automaticTracking.description' => 'Відстежуйте спалені калорії з ваших фітнес-додатків',
			'onboarding.healthConnect.progressInsights.title' => 'Аналіз прогресу',
			'onboarding.healthConnect.progressInsights.description' => 'Отримуйте детальні відомості про тенденції вашого здоров\'я',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Безшовна інтеграція',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Синхронізуйте дані з ваших улюблених здоров\'я додатків',
			'onboarding.healthConnect.connected' => 'Health Connect підключено',
			'onboarding.healthConnect.notConnected' => 'Health Connect не підключено',
			'onboarding.healthConnect.setup' => 'Налаштувати Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Пропустити на даний момент',
			'onboarding.healthConnect.statusConnected' => 'Health Connect підключено.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect успішно підключено!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Доступ заборонено. Будь ласка, увімкніть дозволи Health Connect у налаштуваннях вашого телефону для ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Помилка налаштування Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Ви не один!',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Дослідження показує, що постійне відстеження є найкращим предиктором довгострокового успіху.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Для ${age}-річного ${gender}, який бажає ${goal}, постійне відстеження є найкращим предиктором успіху.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} робить це у 10 разів легшим, ніж робити це вручну.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Готові почати?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Зробіть фото ваших страв для миттєвого аналізу',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Фіксуйте дані регулярно, щоб бачити помітний прогрес',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Відстежуйте свій прогрес щодня, щоб залишатися мотивованим',
			'onboarding.reinforcement.trackingSuccess.button' => 'Поїхали',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'індивід',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'здорова версія вас',
			'onboarding.reinforcement.healthProfile.title' => 'Ваш профіль здоров\'я',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Згідно з вашими показниками, ваш ІМТ становить ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Давайте завершуємо ваш профіль, щоб налаштувати ваш досвід.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'набрати',
			'onboarding.reinforcement.healthProfile.goalLose' => 'втратити',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Для досягнення вашої мети вам потрібно ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Ви на вашій цільовій вазі! Ми допоможемо вам підтримувати це.',
			'onboarding.reinforcement.healthProfile.button' => 'Поїхали',
			'onboarding.reinforcement.goalLifestyle.title' => 'Чудовий старт!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Ви зробили перший крок до ${goalText}. Оскільки ви ${activityText}, ${appLabel} підлаштує ваші цілі, щоб відповідати вашому способу життя.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Персоналізовані калорійні цілі',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Визначення їжі на основі ШІ',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Детальні макро-розподіли',
			'onboarding.reinforcement.goalLifestyle.button' => 'Поїхали',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'ваших цілей',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'активний',
			'tabs.dashboard' => 'Панель',
			'tabs.history' => 'Історія',
			'home.dailyGoal.title' => 'Встановіть свою щоденну ціль',
			'home.dailyGoal.titleSet' => 'Ваша щоденна ціль',
			'home.dailyGoal.description' => 'Готові розпочати свою подорож до здоров\'я? Встановіть свою щоденну калорійну ціль нижче, щоб розпочати свій прогрес.',
			'home.dailyGoal.descriptionSet' => 'Ваш компас налаштовано! Це ваша щоденна калорійна ціль, яка допоможе вам.',
			'home.dailyGoal.yourGoal' => 'Ваша ціль',
			'home.dailyGoal.goal' => 'Ціль',
			'home.dailyGoal.dailyCalories' => 'Щоденні калорії (ккал)',
			'home.dailyGoal.setGoal' => 'Встановити мету',
			'home.dailyGoal.intake' => 'Споживання',
			'home.dailyGoal.burned' => 'Спалено',
			'home.dailyGoal.weightImpact' => 'Вплив на вагу',
			'home.dailyGoal.estLoss' => 'Приблизна втрата',
			'home.dailyGoal.estGain' => 'Приблизний приріст',
			'home.dailyGoal.kcal' => 'ккал',
			'home.dailySummary.title' => 'Щоденний звіт',
			'home.dailySummary.calories' => 'Калорії',
			'home.dailySummary.carbs' => 'Вуглеводи',
			'home.dailySummary.protein' => 'Білок',
			'home.dailySummary.fat' => 'Жир',
			'home.dailySummary.fiber' => 'Волокна',
			'home.dailySummary.grams' => 'г',
			'home.dailySummary.chartAccessibilityLabel' => 'Діаграма макронутрієнтів',
			'home.intakeProgress.title' => 'Сьогоднішній макро-спліт',
			'home.intakeProgress.target' => 'Ціль',
			'home.intakeProgress.current' => 'Поточний',
			'home.intakeHistory.title' => '7-денна історія макро',
			'home.intakeHistory.noHistoryYet' => 'Історії ще немає',
			'home.intakeHistory.startLogging' => 'Розпочніть ведення обліку страв, щоб побачити ваші\n7-денні макро-тенденції тут',
			'home.mealLog.title' => 'Зареєстровані страви',
			'home.mealLog.emptyMessage' => 'Зробіть фото вашої останньої страви, щоб зареєструвати її тут.',
			'home.mealLog.noMealsToday' => 'Сьогодні немає зареєстрованих страв',
			'home.mealLog.seeAllMeals' => 'Дивитися всі страви',
			'home.mealDescription.title' => 'Швидке додавання з ШІ',
			'home.mealDescription.description' => 'Опишіть вашу страву, а ШІ впорається з деталями.',
			'home.mealDescription.hint' => 'наприклад, на сніданок я мав велику чашу вівсянки з нарізаним бананом та ложкою протеїну ...',
			'home.mealDescription.analyzeMeal' => 'Проаналізувати страву',
			'home.favoriteMeals.title' => 'Улюблені страви',
			'home.favoriteMeals.description' => 'Швидко додайте одну з ваших улюблених страв.',
			'home.favoriteMeals.noFavorites' => 'Ще немає улюблених страв.',
			'home.favoriteMeals.addFavoriteHint' => 'Натисніть на зірку у страві, щоб відзначити її як улюблену.',
			'home.favoriteMeals.seeAll' => 'Дивитися всі',
			'home.favoriteMeals.add' => 'Додати',
			'home.mealSnap.title' => 'Зробіть фото та відстежте вашу страву',
			'home.mealSnap.description' => 'Використовуйте вашу камеру, щоб зробити фото вашої їжі для аналізу ШІ.',
			'home.mealSnap.openCamera' => 'Відкрити камеру',
			'home.mealSnap.gallery' => 'Галерея',
			'home.connectHealth.title' => 'Синхронізуйте з Health Connect',
			'home.connectHealth.description' => 'Синхронізуйте свої дані про харчування з Health Connect',
			'home.connectHealth.install' => 'Встановити',
			'home.connectHealth.connect' => 'Підключити',
			'history.noMeals' => 'Немає зареєстрованих страв',
			'history.emptyMessage' => 'Зробіть фото вашої останньої страви, щоб зареєструвати її тут.',
			'history.today' => 'Сьогодні',
			'history.yesterday' => 'Вчора',
			'meal.ohNo' => 'О ні!',
			'meal.delete' => 'Видалити',
			'meal.editMeal' => 'Редагувати страву',
			'meal.addMeal' => 'Додати страву',
			'meal.saveMeal' => 'Зберегти страву',
			'meal.save' => 'Зберегти',
			'meal.mealName' => 'Назва страви',
			'meal.mealNameHint' => 'Наприклад, яєчня з тостом',
			'meal.mealQuantity' => 'Кількість страви',
			'meal.mealQuantityHint' => 'наприклад, 1 чаша, 2 скибки',
			'meal.timeOfMeal' => 'Час страви',
			'meal.timeOfMealHint' => 'Виберіть час, коли ви мали вашу страву',
			'meal.mealType' => 'Тип страви',
			'meal.nutrition.calories' => 'Калорії',
			'meal.nutrition.carbs' => 'Вуглеводи (г)',
			'meal.nutrition.protein' => 'Білок (г)',
			'meal.nutrition.fat' => 'Жир (г)',
			'meal.nutrition.fiber' => 'Волокна (г)',
			'meal.deleteConfirmation.title' => 'Видалити страву',
			'meal.deleteConfirmation.message' => 'Ви впевнені, що хочете видалити цей запис про страву?',
			'meal.deleteConfirmation.cancel' => 'Скасувати',
			'meal.deleteConfirmation.delete' => 'Видалити',
			'meal.addedToLog' => 'Страву додано до вашого журналу!',
			'meal.couldNotAdd' => ({required Object error}) => 'Не вдалося додати страву: ${error}',
			'meal.savedSuccessfully' => 'Страву успішно додано!',
			'meal.updatedSuccessfully' => 'Страву успішно оновлено!',
			'meal.errorSaving' => ({required Object error}) => 'Не вдалося зберегти страву: ${error}',
			'meal.removedFromFavorites' => 'Вилучено з улюблених!',
			'meal.savedAsFavorite' => 'Страву збережено як улюблену!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Не вдалося оновити улюблену: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Не вдалося обробити: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Не вдалося обробити зображення: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Помилка стиснення зображення: ${error}',
			'meal.failedToSave' => 'Не вдалося зберегти дані. Будь ласка, спробуйте ще раз.',
			'meal.skip' => 'Пропустити',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Питання ${current} з ${total}',
			'meal.variation.noVariationsAvailable' => 'Немає доступних варіантів',
			'favorites.title' => 'Улюблені',
			'favorites.empty' => 'Ще немає улюблених страв.',
			'profile.title' => 'Профіль',
			'profile.noProfileData' => 'Дані профілю не знайдено',
			'profile.yourProfile' => 'Ваш профіль',
			'profile.viewAndManage' => 'Перегляньте та керуйте вашою інформацією про здоров\'я',
			'profile.sections.profile' => 'ПРОФІЛЬ',
			'profile.sections.basicInformation' => 'ОСОБИСТА ІНФОРМАЦІЯ',
			'profile.sections.goalsAndActivity' => 'ЦІЛІ ТА АКТИВНІСТЬ',
			'profile.sections.calculatedValues' => 'РОЗРАХОВУВАНІ ПОКАЗНИКИ',
			'profile.gender' => 'Стать',
			'profile.height' => 'Зріст',
			'profile.weight' => 'Вага',
			'profile.age' => 'Вік',
			'profile.weightGoal' => 'Цільова вага',
			'profile.targetWeight' => 'Цільова вага',
			'profile.activityLevel' => 'Рівень активності',
			'profile.healthMetrics' => 'Показники здоров\'я',
			'profile.notSet' => 'Не встановлено',
			'profile.years' => 'роки',
			'profile.updatedSuccessfully' => 'Профіль успішно оновлено!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Щоденна ціль',
			'profile.calculatedValues.calPerDay' => 'кал/день',
			'profile.calculatedValues.notAvailable' => 'Н/Д',
			'healthScore.title' => 'Оцінка здоров\'я',
			'healthScore.whyThisScore' => 'Чому ця оцінка?',
			'healthScore.note' => 'Ця оцінка є оцінкою ШІ на основі визнаних інгредієнтів та харчової щільності. Завжди консультуйтеся з фахівцем для дієтичних порад.',
			'healthScore.unhealthy' => 'Нездоровий',
			'healthScore.healthy' => 'Здоровий',
			'healthScore.neutral' => 'Нейтральний',
			'editProfile.title' => 'Редагувати профіль',
			'editProfile.sections.personalInformation' => 'ОСОБИСТА ІНФОРМАЦІЯ',
			'editProfile.sections.physicalMeasurements' => 'ФІЗИЧНІ РОЗМІРИ',
			'editProfile.sections.goalsAndActivity' => 'ЦІЛІ ТА АКТИВНІСТЬ',
			'editProfile.gender' => 'Стать',
			'editProfile.dateOfBirth' => 'Дата народження',
			'editProfile.height' => 'Зріст',
			'editProfile.weight' => 'Вага',
			'editProfile.weightGoal' => 'Цільова вага',
			'editProfile.activityLevel' => 'Рівень активності',
			'editProfile.metric' => 'Метрична',
			'editProfile.imperial' => 'Імперська',
			'editProfile.unitCm' => 'см',
			'editProfile.unitFt' => 'фут',
			'editProfile.unitKg' => 'кг',
			'editProfile.unitLbs' => 'фунт',
			'editProfile.metricCm' => 'Метрична (см)',
			'editProfile.imperialFtIn' => 'Імперська (фут/дюйм)',
			'editProfile.metricKg' => 'Метрична (кг)',
			'editProfile.imperialLbs' => 'Імперська (фунти)',
			'editProfile.genders.male' => 'Чоловіча',
			'editProfile.genders.female' => 'Жіноча',
			'editProfile.genders.other' => 'Інша',
			'editProfile.weightGoals.loseWeight.name' => 'Скинути вагу',
			'editProfile.weightGoals.loseWeight.description' => 'Створіть калорійний дефіцит, щоб скинути вагу',
			'editProfile.weightGoals.maintainWeight.name' => 'Утримати вагу',
			'editProfile.weightGoals.maintainWeight.description' => 'Утримуйте вашу поточну вагу',
			'editProfile.weightGoals.gainWeight.name' => 'Набрати вагу',
			'editProfile.weightGoals.gainWeight.description' => 'Створіть калорійний надлишок, щоб набрати вагу',
			'editProfile.activityLevels.sedentary.name' => 'Малорухливий',
			'editProfile.activityLevels.sedentary.description' => 'Мало або зовсім немає фізичних вправ',
			'editProfile.activityLevels.lightlyActive.name' => 'Помірно активний',
			'editProfile.activityLevels.lightlyActive.description' => 'Легкі фізичні вправи 1-3 дні/тиждень',
			'editProfile.activityLevels.moderatelyActive.name' => 'Помірно активний',
			'editProfile.activityLevels.moderatelyActive.description' => 'Помірні фізичні вправи 3-5 днів/тиждень',
			'editProfile.activityLevels.veryActive.name' => 'Дуже активний',
			'editProfile.activityLevels.veryActive.description' => 'Навантажувальні фізичні вправи 6-7 днів/тиждень',
			'editProfile.activityLevels.extremelyActive.name' => 'Вкрай активний',
			'editProfile.activityLevels.extremelyActive.description' => 'Дуже інтенсивні фізичні вправи, фізична робота',
			'settings.title' => 'Налаштування',
			'settings.sections.profile' => 'ПРОФІЛЬ',
			'settings.sections.localization' => 'ЛОКАЛІЗАЦІЯ',
			'settings.sections.notifications' => 'СПОВІЩЕННЯ',
			'settings.sections.healthConnect' => 'ЗВ\'ЯЗОК ЗДОРОВ\'Я',
			'settings.sections.supportAndLegal' => 'ПІДТРИМКА ТА ЮРИДИЧНІ ПИТАННЯ',
			'settings.sections.about' => 'ПРО ДОДАТОК',
			'settings.sections.dangerZone' => 'ЗОНИ РИЗИКУ',
			'settings.sections.developer' => 'РОЗРОБНИК',
			'settings.editProfile.title' => 'Редагувати профіль',
			'settings.editProfile.subtitle' => 'Оновіть вашу особисту інформацію',
			'settings.language.title' => 'Мова',
			'settings.language.subtitle' => 'Виберіть вашу бажану мову',
			'settings.language.searchHint' => 'Шукати мови...',
			'settings.language.noResults' => 'Нічого не знайдено',
			'settings.heightUnit.title' => 'Одиниця зрісту',
			'settings.weightUnit.title' => 'Одиниця ваги',
			'settings.mealReminders.title' => 'Нагадування про страви',
			'settings.mealReminders.subtitle' => 'Залишайтеся на правильному шляху з вчасними сповіщеннями',
			'settings.theme.title' => 'Тема',
			'settings.theme.light' => 'Світла',
			'settings.theme.dark' => 'Темна',
			'settings.theme.system' => 'Системна',
			'settings.sendFeedback.title' => 'Надіслати відгук',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Допоможіть нам покращити ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Відгук про додаток ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Будь ласка, надайте ваші відгуки нижче:',
			'settings.sendFeedback.appVersion' => 'Версія додатку',
			'settings.sendFeedback.device' => 'Пристрій',
			'settings.sendFeedback.osVersion' => 'Версія ОС',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Очистити всі дані',
			'settings.clearAllData.subtitle' => 'Безповоротно видалити всю вашу інформацію',
			'settings.clearAllData.confirmationTitle' => 'Очистити всі дані?',
			'settings.clearAllData.confirmationMessage' => 'Цю дію неможливо скасувати. Всі ваші зареєстровані страви, улюблені та налаштування профілю будуть видалені назавжди.',
			'settings.clearAllData.cancel' => 'Скасувати',
			'settings.clearAllData.clearEverything' => 'Очистити все',
			'settings.debugOptions.title' => 'Опції налагодження',
			'settings.developerModeEnabled' => 'Режим розробника увімкнено!',
			'settings.healthConnect.title' => 'Зв\'язок зі здоров\'ям',
			'settings.healthConnect.subtitle' => 'Перегляньте та керуйте дозволами',
			'settings.healthConnect.unavailable.title' => 'Зв\'язок зі здоров\'ям недоступний',
			'settings.healthConnect.unavailable.description' => 'Зв\'язок зі здоров\'ям недоступний на цьому пристрої. Він вимагає Android 14 або новішої версії.',
			'settings.healthConnect.permissions.title' => 'Дозволи',
			'settings.healthConnect.permissions.description' => 'Для інтеграції з Зв\'язком зі здоров\'ям запитуються такі дозволи:',
			'settings.healthConnect.permissions.granted' => 'Надано',
			'settings.healthConnect.permissions.notGranted' => 'Не надано',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Читати загальні витрачені калорії',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Дозволяє додатку читати загальні витрачені калорії з Зв\'язку зі здоров\'ям.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Цей дозвіл використовується для відображення вашого щоденного витрачання калорій у додатку, що допомагає вам зрозуміти ваше загальне енергетичне споживання протягом дня.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Читати дані про харчування',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Дозволяє додатку читати дані про харчування з Зв\'язку зі здоров\'ям.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Цей дозвіл дозволяє додатку читати інформацію про харчування, яка могла бути зафіксована іншими додатками, підключеними до Зв\'язку зі здоров\'ям, надаючи всебічний огляд вашого харчування.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Записувати дані про харчування',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Дозволяє додатку записувати дані про харчування в Зв\'язок зі здоров\'ям.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Цей дозвіл дозволяє додатку синхронізувати ваші зафіксовані прийоми їжі з Зв\'язком зі здоров\'ям, роблячи ваші дані про харчування доступними для інших додатків зі здоров\'я та фітнесу, які ви використовуєте.',
			'settings.healthConnect.managePermissions' => 'Керувати дозволами',
			'settings.healthConnect.openSettings' => 'Відкрити налаштування Health Connect',
			'settings.healthConnect.requestPermissions' => 'Запросити дозволи',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Запит дозволу було скасовано або він не вдався. Будь ласка, спробуйте ще раз або надайте дозволи вручну в налаштуваннях Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Не вдалося надіслати запит на дозволи. Будь ласка, спробуйте ще раз або надайте дозволи вручну в налаштуваннях Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Про нас',
			'settings.about.tagline' => 'Швидка, безкоштовна та орієнтована на конфіденційність обізнаність про калорії',
			'settings.about.ourStory.title' => 'Наша історія',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} з\'явився з простого розчарування: більшість додатків для відстеження калорій або занадто складні, вимагають постійного ручного вводу, мають високі підписні плати або порушують конфіденційність.\n\nЯк незалежний розробник, я хотів створити щось простіше і справедливіше — додаток, який використовує штучний інтелект, щоб зменшити зусилля, залишається швидким і безкоштовним у використанні та поважає ваші дані про здоров\'я.\n\n${appLabel} — це додаток, який я хотів би, щоб існував: без облікових записів, без відстеження, без реклами — лише чіткі, практичні звіти та ваші цілі щодо здоров\'я.',
			'settings.about.privacy.title' => 'Ваша конфіденційність важлива',
			'settings.about.privacy.description' => 'Конфіденційність не є подумкою на останок — це принцип проєктування. Ось що це означає на практиці:',
			'settings.about.privacy.noAccounts' => 'Облікові записи не потрібні\nВикористовуйте додаток відразу. Жодних реєстрацій, жодних ідентифікацій.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Без поведінкового відстеження\n${appLabel} не стежить за вашою активністю, не створює профілі використання і не відстежує вас через додатки або вебсайти.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Без реклами за замовчуванням\n${appLabel} розроблений для роботи без реклами або монетизації на основі даних.',
			'settings.about.privacy.noDataSelling' => 'Без продажу даних\nВаші дані про здоров\'я ніколи не продаються та не передаються третім особам.',
			'settings.about.privacy.localStorage' => 'Місцеве зберігання\nВаші дані залишаються на вашому пристрої.',
			'settings.about.privacy.privacyPolicy' => 'Політика конфіденційності',
			'settings.about.developer.title' => 'Розроблений незалежним розробником',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} розроблений та підтримується одним незалежним розробником, який зосереджений на створенні спокійного програмного забезпечення для здоров\'я, що поважає конфіденційність.\n\nВідгуки читаються особисто і допомагають формувати напрямок розвитку додатка.',
			'settings.about.developer.website' => 'Веб-сайт',
			'settings.about.developer.email' => 'Електронна пошта',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Вам подобається ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Ваш відгук допомагає покращити ${appLabel} для всіх.',
			'settings.about.feedback.rateApp' => 'Оцініть у Play Store',
			'settings.about.feedback.sendFeedback' => 'Надіслати відгук',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Збірка ${buildNumber}',
			'reminders.title' => 'Залишайтеся на правильному шляху з нагадуваннями',
			'reminders.description' => 'Отримуйте м\'які нагадування, щоб вести облік своїх страв і підтримувати послідовність з вашими цілями у харчуванні',
			'reminders.notificationsEnabled' => 'Сповіщення увімкнені',
			'reminders.notificationsDisabled' => 'Сповіщення вимкнені',
			'reminders.enabledSubtitle' => 'Ви отримуватимете нагадування про страви',
			'reminders.disabledSubtitle' => 'Увімкніть сповіщення, щоб отримати нагадування про страви',
			'reminders.mealReminders' => 'Нагадування про страви',
			'reminders.breakfast' => 'Сніданок',
			'reminders.lunch' => 'Обід',
			'reminders.dinner' => 'Вечеря',
			'reminders.snack' => 'Перекус',
			'reminders.unknown' => 'Невідомо',
			'reminders.change' => 'Змінити',
			'reminders.enableNotifications' => 'Увімкнути сповіщення',
			'reminders.skipForNow' => 'Пропустити на даний момент',
			'reminders.saveChanges' => 'Зберегти зміни',
			'reminders.enabledSuccessfully' => 'Сповіщення успішно увімкнені!',
			'reminders.permissionDenied' => 'Дозвіл на сповіщення відхилено',
			'reminders.errorEnabling' => ({required Object error}) => 'Помилка при увімкненні сповіщень: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Помилка під час завершення налаштування: ${error}',
			'notifications.breakfast.title' => 'Час сніданку! 🍳',
			'notifications.breakfast.body' => 'Не забудьте зареєструвати свій сніданок',
			'notifications.lunch.title' => 'Час обіду! 🥗',
			'notifications.lunch.body' => 'Час зареєструвати свій обід',
			'notifications.dinner.title' => 'Час вечері! 🍽️',
			'notifications.dinner.body' => 'Не забудьте зареєструвати свою вечерю',
			'notifications.snack.title' => 'Час перекусу! 🍎',
			'notifications.snack.body' => 'Час для здорового перекусу',
			'notifications.test.title' => 'Тестове сповіщення',
			'login.title' => 'Увійти',
			'login.signInWithGoogle' => 'Увійти з Google',
			'login.signInFailed' => 'Увійти в Google не вдалося або скасовано.',
			'disclaimer.pleaseNote' => 'Будь ласка, зауважте',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} надає оцінкову інформацію про харчування. Точність залежить від вашого внеску та варіацій їжі. Використовуйте як орієнтир, а не як остаточне джерело. Консультуйтеся з фахівцем для отримання індивідуальних порад з харчування.',
			'disclaimer.snap.portionSize.title' => 'Розмір порції',
			'disclaimer.snap.portionSize.description' => 'Точність оцінок сильно залежить від вашої правильної оцінки розміру порції.',
			'disclaimer.snap.preparationMethods.title' => 'Методи приготування',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Методи приготування можуть суттєво змінити харчову цінність їжі. Оцінки ${appLabel} можуть не завжди враховувати ці варіації.',
			'disclaimer.snap.ingredients.title' => 'Інгредієнти',
			'disclaimer.snap.ingredients.description' => 'Складні страви з багатьма прихованими інгредієнтами можуть призвести до менш точних оцінок.',
			'disclaimer.snap.databaseLimitations.title' => 'Обмеження бази даних',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'База даних продуктів ${appLabel} є обширною, але може не включати кожен окремий продукт або варіацію.',
			'disclaimer.weightEstimate.title' => 'Про оцінку ваги',
			'disclaimer.weightEstimate.description' => 'Прогнозована зміна ваги є теоретичною оцінкою на основі простого моделі калорій-входу проти калорій-виходу. Вона призначена лише для мотиваційного спрямування, а не як прогноз вашої фактичної ваги.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Точність калорій',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Ця оцінка є такою точністю, як ваша облікова споживана та витрачена калорія. Неправильне ведення обліку призведе до некоректного прогнозу.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Біологічні чинники',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Фактична втрата/набираня ваги залежить від обміну речовин, гормонів, сну, стресу, гідратації та інших індивідуальних факторів, які ${appLabel} не може виміряти.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Водна вага та коливання',
			'disclaimer.weightEstimate.waterWeight.description' => 'Нормальна добова вага може сильно коливатися через затримку води, травлення та час. Оцінка не враховує ці добові зміни.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Професійне керівництво',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Не використовуйте цю оцінку для прийняття медичних рішень. Завжди консультуйтеся з медичним працівником або зареєстрованим дієтологом для отримання персоналізованих порад з управління вагою.',
			'disclaimer.healthMetrics.description' => 'Ці показники допоможуть вам зрозуміти енергетичні потреби вашого тіла та нададуть орієнтири для ваших цілей у харчуванні.',
			'disclaimer.healthMetrics.bmr.title' => 'Основний обмін речовин (BMR)',
			'disclaimer.healthMetrics.bmr.description' => 'Основний обмін речовин (BMR) — це кількість калорій, які ваше тіло споживає в стані спокою для підтримки базових функцій, таких як дихання і циркуляція. BMR залежить від вашого віку, статі, зросту та ваги. Вищий BMR означає, що ваше тіло природно спалює більше калорій у спокої, зазвичай через більшу м\'язову масу, молодший вік або чоловічу стать. Нижчий BMR зазвичай свідчить про меншу м\'язову масу, старший вік або жіночу стать.',
			'disclaimer.healthMetrics.tdee.title' => 'Тотальне добове енергоспоживання (TDEE)',
			'disclaimer.healthMetrics.tdee.description' => 'Тотальне добове енергоспоживання (TDEE) — це загальна кількість калорій, яку ви спалюєте щодня, включаючи ваш BMR, а також калорії від фізичної активності та щоденних рухів. TDEE залежить від вашого BMR та рівня активності. Вищий TDEE означає, що ви спалюєте більше калорій загалом, зазвичай через більшу активність або вищий BMR. Нижчий TDEE свідчить про меншу щоденну активність або нижчий BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Щоденна мета',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Щоденна мета — це ваша рекомендована добова калорійність, основана на вашому TDEE і цілі щодо ваги. Для схуднення вам потрібно споживати менше калорій, ніж ваш TDEE. Для підтримання ваги — відповідати вашому TDEE. Для набору ваги — споживати більше калорій, ніж ваш TDEE. Це допоможе вам досягти бажаних змін у вазі здоровими темпами.',
			'disclaimer.calorieExpenditure.title' => 'Оцінка витрат калорій',
			'disclaimer.calorieExpenditure.description' => 'Коли дані Health Connect недоступні, ми оцінюємо сьогоднішні витрати калорій, використовуючи ваш базальний обмін речовин (BMR) і рівень активності (TDEE), пропорційно тій частині дня, яка вже пройшла.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Як обчислюється ця оцінка',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Ми обчислюємо ваш TDEE (на основі профілю) і множимо його на частку пройденого часу доби (години + хвилини) / 24, щоб оцінити кількість калорій, спалених до цього моменту.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Поради фахівців',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Не використовуйте цю оцінку для прийняття медичних рішень. Завжди консультуйтеся з медичним працівником або зареєстрованим дієтологом для отримання персоналізованих порад щодо контролю ваги.',
			'common.close' => 'Закрити',
			'common.kContinue' => 'Продовжити',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Чи подобається вам ${appLabel}?',
			'feedbackRating.yes' => 'Так, мені подобається',
			'feedbackRating.no' => 'Не дуже',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Коротка оцінка допомагає іншим знайти ${appLabel} і підтримує подальший розвиток. Чи не могли б ви приділити хвилину, щоб поставити її?',
			'feedbackRating.shareFeedbackViaEmail' => 'Ваші відгуки формують те, що буде далі — ми читаємо кожне повідомлення. Чи хотіли б ви поділитися своїми думками електронною поштою?',
			'feedbackRating.rateCta' => 'Оцінити в Google Play',
			'feedbackRating.maybeLater' => 'Можливо пізніше',
			'feedbackRating.sendFeedback' => 'Надіслати відгук',
			'feedbackRating.noThanks' => 'Ні, дякую',
			'feedbackRating.aboutUsDescription' => 'Створено з турботою невеликою командою. Ми дбаємо про вашу конфіденційність, цінуємо простоту та підтримуємо вас у формуванні кращих харчових звичок.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Цікавитесь, хто стоїть за ${appLabel}? Дізнайтеся більше ',
			'feedbackRating.aboutUsLinkLabel' => 'Про нас',
			'feedbackRating.thankYouMessage' => 'Дякуємо! Ми ще запитаємо пізніше.',
			'errors.loadingProfileData' => 'Помилка завантаження даних профілю',
			'errors.somethingWentWrong' => 'Щось пішло не так.',
			'debug.title' => 'Опції налагодження',
			'debug.searchHint' => 'Параметри пошуку...',
			'debug.sections.notifications' => 'Сповіщення',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.wearOs' => 'Wear OS',
			'debug.sections.foodApiTests' => 'Тести Food API',
			'debug.sections.profileApiTests' => 'Тести API профілю',
			'debug.sections.feedback' => 'Зворотній зв\'язок',
			'debug.sections.dataReset' => 'Скидання даних',
			'debug.sections.appInfo' => 'Інформація про додаток',
			'debug.sections.shorebird' => 'Shorebird',
			'debug.showActiveNotifications' => 'Показати активні сповіщення',
			'debug.scheduleTestNotification' => 'Запланувати тестове сповіщення (10с)',
			'debug.triggerBreakfastNotification' => 'Запустити сповіщення про сніданок',
			'debug.cancelAllNotifications' => 'Скасувати всі сповіщення',
			'debug.activeNotifications' => 'Активні сповіщення',
			'debug.noTitle' => 'Без назви',
			'debug.noBody' => 'Без тіла',
			'debug.fetchTodaysSteps' => 'Отримати сьогоднішні кроки',
			'debug.fetchTodaysCalories' => 'Отримати сьогоднішні калорії',
			'debug.fetchLatestWeight' => 'Отримати останню вагу',
			'debug.fetchLatestHeight' => 'Отримати останній зріст',
			'debug.writeTestWeight' => 'Записати тестову вагу (70кг)',
			'debug.writeTestHeight' => 'Записати тестовий зріст (175см)',
			'debug.syncLast7Days' => 'Синхронізувати останні 7 днів',
			'debug.sync7DaysTitle' => '7-денна синхронізація',
			'debug.checkCurrentLocale' => 'Перевірити поточну локалізацію',
			'debug.currentLocale' => 'Поточна локалізація',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Мова: ${languageCode}\nКраїна: ${countryCode}\nСистема вимірювань: ${unitSystem}',
			'debug.latestWeight' => 'Остання вага',
			'debug.latestHeight' => 'Останній зріст',
			'debug.todaysCalories' => 'Сьогоднішні калорії',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Загальна кількість спалених калорій: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Успішно отримано ${count} даних про Кроки, Калорії та Вагу за останні 7 днів.',
			'debug.noWeightData' => 'Немає даних про вагу за останні 30 днів.',
			'debug.noHeightData' => 'Немає даних про зріст за останній рік.',
			'debug.noCalorieData' => 'Немає даних про калорії на сьогодні.',
			'debug.weightWritten' => 'Успішно записано тестову вагу (70кг).',
			'debug.weightWriteFailed' => 'Не вдалося записати тестову вагу.',
			'debug.heightWritten' => 'Успішно записано тестовий зріст (175см).',
			'debug.heightWriteFailed' => 'Не вдалося записати тестовий зріст.',
			'debug.noNotifications' => 'Немає активних сповіщень.',
			'debug.testNotificationScheduled' => 'Тестове сповіщення заплановано через 10 секунд.',
			'debug.testNotificationBody' => 'Це тестове сповіщення, заплановане через 10 секунд.',
			'debug.breakfastNotificationTriggered' => 'Сповіщення про сніданок запущено.',
			'debug.allNotificationsCancelled' => 'Всі сповіщення скасовано.',
			'debug.fetchingData' => 'Отримання даних за останні 7 днів...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'debug.showFeedbackRatingSheet' => 'Показати форму відгуку/оцінки',
			'debug.clearUserPreferences' => 'Скинути налаштування користувача',
			'debug.clearUserPreferencesConfirmationTitle' => 'Скинути налаштування користувача?',
			'debug.clearUserPreferencesConfirmationMessage' => 'Тему, мову та налаштування зворотного зв\'язку буде скинуто. Дані про прийоми їжі та профіль не постраждають.',
			'debug.clearUserProfile' => 'Скинути профіль користувача',
			'debug.clearUserProfileConfirmationTitle' => 'Скинути профіль користувача?',
			'debug.clearUserProfileConfirmationMessage' => 'Дані вашого профілю (щоденна мета, зріст, вага тощо) будуть видалені. Дані про прийоми їжі та налаштування не постраждають.',
			'debug.clear' => 'Очистити',
			'debug.cancel' => 'Скасувати',
			'debug.checkWatchConnection' => 'Перевірити підключення годинника',
			'debug.sendTestMessage' => 'Надіслати тестове повідомлення',
			'debug.sendTestMessageSubtitle' => 'Надішліть просте тестове повідомлення на годинник',
			'debug.sendTestMealData' => 'Надіслати тестові дані про страву',
			'debug.sendTestMealDataSubtitle' => 'Надішліть приклад даних про страву на годинник',
			'debug.sendTestCalorieGoal' => 'Надіслати тестову ціль по калоріям',
			'debug.sendTestCalorieGoalSubtitle' => 'Надішліть приклад цілі по калоріям на годинник',
			'debug.viewReceivedMessages' => 'Переглянути отримані повідомлення',
			'debug.viewReceivedMessagesSubtitle' => 'Перегляньте повідомлення, отримані з годинника',
			'debug.watchConnected' => 'Годинник підключено ✓',
			'debug.device' => 'Пристрій',
			'debug.nearby' => 'Поблизу',
			'debug.yes' => 'Так',
			'debug.no' => 'Ні',
			'debug.connectedDevices' => 'Підключені пристрої',
			'debug.deviceInfoUnavailable' => '(інформація про пристрій недоступна)',
			'debug.unknownDevice' => 'Невідомий пристрій',
			'debug.watchNotConnected' => 'Годинник не підключено ✗',
			'debug.watchNotConnectedHint' => 'Переконайтеся:\n• Обидва пристрої спаровані\n• Додаток на годиннику запущено\n• Обидва додатки працюють у режимі налагодження/стадингу',
			'debug.watchConnection' => 'Підключення годинника',
			'debug.errorCheckingConnection' => ({required Object error}) => 'Помилка перевірки з\'єднання: ${error}',
			'debug.helloFromPhone' => 'Привіт з телефону!',
			'debug.testMessageSentSuccess' => 'Тестове повідомлення успішно надіслано!',
			'debug.testMessageFailed' => 'Не вдалося надіслати тестове повідомлення. Перевірте підключення годинника.',
			'debug.errorSendingMessage' => ({required Object error}) => 'Помилка надсилання повідомлення: ${error}',
			'debug.testMeal' => 'Тестова страва',
			'debug.testMealDataSentSuccess' => 'Дані тестової страви успішно надіслано!',
			'debug.failedToSendMealData' => 'Не вдалося надіслати дані про страву. Перевірте підключення годинника.',
			'debug.errorSendingMealData' => ({required Object error}) => 'Помилка під час відправки даних про страву: ${error}',
			'debug.testCalorieGoalSentSuccess' => 'Тестова ціль за калоріями успішно надіслана!',
			'debug.failedToSendCalorieGoal' => 'Не вдалося надіслати ціль по калоріям. Перевірте підключення годинника.',
			'debug.errorSendingCalorieGoal' => ({required Object error}) => 'Помилка під час надсилання цілі по калоріям: ${error}',
			'debug.testAnalyzeImage' => 'Тест: аналіз зображення',
			'debug.testAnalyzeImageSubtitle' => 'Завантажити фіксоване тестове зображення',
			'debug.testDetectImage' => 'Тест: розпізнати зображення',
			'debug.testDetectImageSubtitle' => 'Розпізнати страву за URL зображення',
			_ => null,
		} ?? switch (path) {
			'debug.detectImageFromGallery' => 'Розпізнати зображення з галереї',
			'debug.detectImageFromGallerySubtitle' => 'Виберіть зображення, завантажте до сховища та оцініть калорії',
			'debug.testDetectText' => 'Тест: розпізнавання тексту',
			'debug.testDetectTextSubtitle' => 'Розпізнати страву з опису текстом',
			'debug.testMealLoggingWithVariations' => 'Тест: запис їжі з варіаціями',
			'debug.testMealLoggingWithVariationsSubtitle' => 'Перевірте повний процес запису їжі з варіаціями',
			'debug.mockMealWithVariations' => 'Зразкова страва з варіаціями',
			'debug.mockMealWithVariationsSubtitle' => 'Попередній перегляд варіацій та інтерфейсу порад без запису',
			'debug.mockMealName' => 'Курка-гриль з рисом та овочами',
			'debug.mockTip' => 'Це тестова порада для попереднього перегляду інтерфейсу. Страва не заноситься в журнал.',
			'debug.mockMealDescription' => 'Тестова страва для налагодження',
			'debug.portionSizeQuestion' => 'Який був розмір порції?',
			'debug.extraSidesQuestion' => 'Є додаткові гарніри?',
			'debug.optionSmall' => 'Мала',
			'debug.optionMedium' => 'Середня',
			'debug.optionLarge' => 'Велика',
			'debug.optionNone' => 'Немає',
			'debug.optionSideSalad' => 'Салат-гарнір',
			'debug.optionBreadRoll' => 'Булочка',
			'debug.testingAnalyzeImage' => 'Тестування API analyzeImage...',
			'debug.testingDetectImage' => 'Тестування API detectImage...',
			'debug.testingDetectText' => 'Тестування API detectText...',
			'debug.selectingImageFromGallery' => 'Вибір зображення з галереї...',
			'debug.noImageSelected' => 'Зображення не вибрано',
			'debug.compressingImage' => 'Стиснення зображення...',
			'debug.uploadingImageAndDetecting' => 'Завантаження зображення до сховища та виявлення страви...',
			'debug.testingMealLoggingFlow' => 'Тестування процесу запису їжі з варіаціями...',
			'debug.testUpdateProfile' => 'Перевірка оновлення профілю',
			'debug.testUpdateProfileSubtitle' => 'Надіслати зразок профілю на сервер (POST)',
			'debug.testingProfileApi' => 'Тестування API профілю...',
			'debug.profileUpdateSuccess' => 'API профілю відповів успішно',
			'debug.profileUpdateFailed' => ({required Object error}) => 'Помилка API профілю: ${error}',
			'debug.noMealIdentifiedInResponse' => 'Страву не виявлено у відповіді',
			'debug.mealIdentified' => 'Страву виявлено',
			'debug.confidence' => 'Впевненість',
			'debug.tip' => 'Порада',
			'debug.mealName' => 'Назва страви',
			'debug.calories' => 'Калорії',
			'debug.protein' => 'Білки',
			'debug.carbs' => 'Вуглеводи',
			'debug.fat' => 'Жири',
			'debug.noMealInfo' => 'Інформація про страву відсутня',
			'debug.na' => 'Н/Д',
			'debug.analyzeImageResult' => 'Результат аналізу зображення',
			'debug.detectImageResult' => 'Результат розпізнавання зображення',
			'debug.detectImageFromGalleryResult' => 'Результат розпізнавання зображення з галереї',
			'debug.detectTextResult' => 'Результат розпізнавання тексту',
			'debug.errorGeneric' => ({required Object error}) => 'Помилка: ${error}',
			'debug.variationsCount' => 'Варіації',
			'debug.userPreferencesCleared' => 'Налаштування користувача очищено',
			'debug.userProfileCleared' => 'Профіль користувача очищено',
			'debug.checkForUpdate' => 'Перевірити оновлення',
			'debug.showPatchNumber' => 'Показати номер патчу',
			'debug.showUpdateAvailable' => 'Показати доступне оновлення',
			'debug.updateAvailable' => 'Доступне оновлення',
			'debug.upToDate' => 'Актуально',
			'debug.shorebirdUnavailable' => 'Shorebird недоступний у цьому середовищі.',
			'debug.patchNumberLabel' => 'Номер патчу',
			'debug.noPatchInstalled' => 'Патч не встановлено',
			'debug.todaysSteps' => 'Кроки за сьогодні',
			'debug.stepsLabel' => 'Кроки',
			'debug.weightLabel' => ({required Object value}) => 'Вага: ${value} кг',
			'debug.heightLabel' => ({required Object value}) => 'Зріст: ${value} см',
			'debug.receivedMessagesFromWatch' => 'Отримані повідомлення з годинника',
			'debug.noMessagesReceivedYet' => 'Поки що повідомлень немає.\n\nНадішліть тестові дані з годинника, щоб побачити їх тут.',
			'debug.messagesCleared' => 'Повідомлення очищено',
			'health.syncFailed' => 'Не вдалося синхронізувати з Health Connect',
			'health.mealSynced' => 'Страву синхронізовано з Health Connect',
			_ => null,
		};
	}
}
