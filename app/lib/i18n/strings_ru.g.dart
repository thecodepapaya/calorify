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
class TranslationsRu with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Русский';
	@override String get flag => '🇷🇺';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingRu onboarding = _TranslationsOnboardingRu._(_root);
	@override late final _TranslationsTabsRu tabs = _TranslationsTabsRu._(_root);
	@override late final _TranslationsHomeRu home = _TranslationsHomeRu._(_root);
	@override late final _TranslationsHistoryRu history = _TranslationsHistoryRu._(_root);
	@override late final _TranslationsMealRu meal = _TranslationsMealRu._(_root);
	@override late final _TranslationsFavoritesRu favorites = _TranslationsFavoritesRu._(_root);
	@override late final _TranslationsProfileRu profile = _TranslationsProfileRu._(_root);
	@override late final _TranslationsHealthScoreRu healthScore = _TranslationsHealthScoreRu._(_root);
	@override late final _TranslationsEditProfileRu editProfile = _TranslationsEditProfileRu._(_root);
	@override late final _TranslationsSettingsRu settings = _TranslationsSettingsRu._(_root);
	@override late final _TranslationsRemindersRu reminders = _TranslationsRemindersRu._(_root);
	@override late final _TranslationsNotificationsRu notifications = _TranslationsNotificationsRu._(_root);
	@override late final _TranslationsLoginRu login = _TranslationsLoginRu._(_root);
	@override late final _TranslationsDisclaimerRu disclaimer = _TranslationsDisclaimerRu._(_root);
	@override late final _TranslationsCommonRu common = _TranslationsCommonRu._(_root);
	@override late final _TranslationsErrorsRu errors = _TranslationsErrorsRu._(_root);
	@override late final _TranslationsDebugRu debug = _TranslationsDebugRu._(_root);
	@override late final _TranslationsHealthRu health = _TranslationsHealthRu._(_root);
}

// Path: onboarding
class _TranslationsOnboardingRu implements TranslationsOnboardingEn {
	_TranslationsOnboardingRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Добро пожаловать в ${appLabel}';
	@override String get subtitle => 'Ваш личный помощник по питанию, работающий на AI';
	@override String get getStarted => 'Начать';
	@override late final _TranslationsOnboardingFeaturesRu features = _TranslationsOnboardingFeaturesRu._(_root);
	@override late final _TranslationsOnboardingGenderRu gender = _TranslationsOnboardingGenderRu._(_root);
	@override late final _TranslationsOnboardingHeightRu height = _TranslationsOnboardingHeightRu._(_root);
	@override late final _TranslationsOnboardingWeightRu weight = _TranslationsOnboardingWeightRu._(_root);
	@override late final _TranslationsOnboardingAgeRu age = _TranslationsOnboardingAgeRu._(_root);
	@override late final _TranslationsOnboardingBmiScaleRu bmiScale = _TranslationsOnboardingBmiScaleRu._(_root);
	@override late final _TranslationsOnboardingWeightGoalRu weightGoal = _TranslationsOnboardingWeightGoalRu._(_root);
	@override late final _TranslationsOnboardingActivityLevelRu activityLevel = _TranslationsOnboardingActivityLevelRu._(_root);
	@override late final _TranslationsOnboardingHealthConnectRu healthConnect = _TranslationsOnboardingHealthConnectRu._(_root);
	@override late final _TranslationsOnboardingReinforcementRu reinforcement = _TranslationsOnboardingReinforcementRu._(_root);
}

// Path: tabs
class _TranslationsTabsRu implements TranslationsTabsEn {
	_TranslationsTabsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Панель';
	@override String get history => 'История';
}

// Path: home
class _TranslationsHomeRu implements TranslationsHomeEn {
	_TranslationsHomeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalRu dailyGoal = _TranslationsHomeDailyGoalRu._(_root);
	@override late final _TranslationsHomeDailySummaryRu dailySummary = _TranslationsHomeDailySummaryRu._(_root);
	@override late final _TranslationsHomeIntakeProgressRu intakeProgress = _TranslationsHomeIntakeProgressRu._(_root);
	@override late final _TranslationsHomeIntakeHistoryRu intakeHistory = _TranslationsHomeIntakeHistoryRu._(_root);
	@override late final _TranslationsHomeMealLogRu mealLog = _TranslationsHomeMealLogRu._(_root);
	@override late final _TranslationsHomeMealDescriptionRu mealDescription = _TranslationsHomeMealDescriptionRu._(_root);
	@override late final _TranslationsHomeFavoriteMealsRu favoriteMeals = _TranslationsHomeFavoriteMealsRu._(_root);
	@override late final _TranslationsHomeMealSnapRu mealSnap = _TranslationsHomeMealSnapRu._(_root);
	@override late final _TranslationsHomeConnectHealthRu connectHealth = _TranslationsHomeConnectHealthRu._(_root);
}

// Path: history
class _TranslationsHistoryRu implements TranslationsHistoryEn {
	_TranslationsHistoryRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Нет записанных приёмов пищи';
	@override String get emptyMessage => 'Сфотографируйте свой последний приём пищи, чтобы зарегистрировать его здесь.';
	@override String get today => 'Сегодня';
	@override String get yesterday => 'Вчера';
}

// Path: meal
class _TranslationsMealRu implements TranslationsMealEn {
	_TranslationsMealRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'О нет!';
	@override String get delete => 'Удалить';
	@override String get editMeal => 'Редактировать приём пищи';
	@override String get addMeal => 'Добавить приём пищи';
	@override String get saveMeal => 'Сохранить приём пищи';
	@override String get save => 'Сохранить';
	@override String get mealName => 'Название приёма пищи';
	@override String get mealQuantity => 'Количество приёма пищи';
	@override String get mealQuantityHint => 'например, 1 тарелка, 2 куска';
	@override String get timeOfMeal => 'Время приёма пищи';
	@override String get timeOfMealHint => 'Выберите время, когда вы имели приём пищи';
	@override String get mealType => 'Тип приёма пищи';
	@override late final _TranslationsMealNutritionRu nutrition = _TranslationsMealNutritionRu._(_root);
	@override late final _TranslationsMealDeleteConfirmationRu deleteConfirmation = _TranslationsMealDeleteConfirmationRu._(_root);
	@override String get addedToLog => 'Приём пищи добавлен в ваш журнал!';
	@override String couldNotAdd({required Object error}) => 'Не удалось добавить приём пищи: ${error}';
	@override String get removedFromFavorites => 'Удалено из избранного!';
	@override String get savedAsFavorite => 'Приём пищи сохранён как любимое!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Не удалось обновить любимое: ${error}';
	@override String failedToProcess({required Object error}) => 'Не удалось обработать: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Не удалось обработать изображение: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Ошибка сжатия изображения: ${error}';
	@override String get failedToSave => 'Не удалось сохранить данные. Пожалуйста, попробуйте еще раз.';
}

// Path: favorites
class _TranslationsFavoritesRu implements TranslationsFavoritesEn {
	_TranslationsFavoritesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Избранное';
	@override String get empty => 'Нет любимых блюд.';
}

// Path: profile
class _TranslationsProfileRu implements TranslationsProfileEn {
	_TranslationsProfileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профиль';
	@override String get noProfileData => 'Данные профиля не найдены';
	@override String get yourProfile => 'Ваш профиль';
	@override String get viewAndManage => 'Просмотреть и управлять вашей информацией о здоровье';
	@override late final _TranslationsProfileSectionsRu sections = _TranslationsProfileSectionsRu._(_root);
	@override String get gender => 'Пол';
	@override String get height => 'Рост';
	@override String get weight => 'Вес';
	@override String get age => 'Возраст';
	@override String get weightGoal => 'Цель по весу';
	@override String get activityLevel => 'Уровень активности';
	@override String get healthMetrics => 'Метрики здоровья';
	@override String get notSet => 'Не задано';
	@override String get years => 'лет';
	@override String get updatedSuccessfully => 'Профиль успешно обновлён!';
	@override late final _TranslationsProfileCalculatedValuesRu calculatedValues = _TranslationsProfileCalculatedValuesRu._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreRu implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оценка здоровья';
	@override String get whyThisScore => 'Почему эта оценка?';
	@override String get note => 'Эта оценка - это оценка AI, основанная на определённых ингредиентах и их питательной ценности. Всегда консультируйтесь с профессионалом по поводу диетических рекомендаций.';
	@override String get unhealthy => 'Нездоровый';
	@override String get healthy => 'Здоровый';
	@override String get neutral => 'Нейтральный';
}

// Path: editProfile
class _TranslationsEditProfileRu implements TranslationsEditProfileEn {
	_TranslationsEditProfileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редактировать профиль';
	@override late final _TranslationsEditProfileSectionsRu sections = _TranslationsEditProfileSectionsRu._(_root);
	@override String get gender => 'Пол';
	@override String get dateOfBirth => 'Дата рождения';
	@override String get height => 'Рост';
	@override String get weight => 'Вес';
	@override String get weightGoal => 'Цель по весу';
	@override String get activityLevel => 'Уровень активности';
	@override String get metric => 'Метрика';
	@override String get imperial => 'Имперская';
	@override String get metricCm => 'Метрика (см)';
	@override String get imperialFtIn => 'Имперская (футы/дюймы)';
	@override String get metricKg => 'Метрика (кг)';
	@override String get imperialLbs => 'Имперская (фунты)';
	@override late final _TranslationsEditProfileGendersRu genders = _TranslationsEditProfileGendersRu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsRu weightGoals = _TranslationsEditProfileWeightGoalsRu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsRu activityLevels = _TranslationsEditProfileActivityLevelsRu._(_root);
}

// Path: settings
class _TranslationsSettingsRu implements TranslationsSettingsEn {
	_TranslationsSettingsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Настройки';
	@override late final _TranslationsSettingsSectionsRu sections = _TranslationsSettingsSectionsRu._(_root);
	@override late final _TranslationsSettingsEditProfileRu editProfile = _TranslationsSettingsEditProfileRu._(_root);
	@override late final _TranslationsSettingsLanguageRu language = _TranslationsSettingsLanguageRu._(_root);
	@override late final _TranslationsSettingsHeightUnitRu heightUnit = _TranslationsSettingsHeightUnitRu._(_root);
	@override late final _TranslationsSettingsWeightUnitRu weightUnit = _TranslationsSettingsWeightUnitRu._(_root);
	@override late final _TranslationsSettingsMealRemindersRu mealReminders = _TranslationsSettingsMealRemindersRu._(_root);
	@override late final _TranslationsSettingsThemeRu theme = _TranslationsSettingsThemeRu._(_root);
	@override late final _TranslationsSettingsSendFeedbackRu sendFeedback = _TranslationsSettingsSendFeedbackRu._(_root);
	@override late final _TranslationsSettingsClearAllDataRu clearAllData = _TranslationsSettingsClearAllDataRu._(_root);
	@override late final _TranslationsSettingsDebugOptionsRu debugOptions = _TranslationsSettingsDebugOptionsRu._(_root);
	@override String get developerModeEnabled => 'Режим разработчика включён!';
}

// Path: reminders
class _TranslationsRemindersRu implements TranslationsRemindersEn {
	_TranslationsRemindersRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оставайтесь на правильном пути с напоминаниями';
	@override String get description => 'Получайте лёгкие напоминания, чтобы записывать ваши приёмы пищи и оставаться последовательными с вашими целями питания';
	@override String get notificationsEnabled => 'Уведомления включены';
	@override String get notificationsDisabled => 'Уведомления отключены';
	@override String get enabledSubtitle => 'Вы будете получать напоминания о приёмах пищи';
	@override String get disabledSubtitle => 'Включите уведомления, чтобы получать напоминания о приёмах пищи';
	@override String get mealReminders => 'Напоминания о приёмах пищи';
	@override String get breakfast => 'Завтрак';
	@override String get lunch => 'Обед';
	@override String get dinner => 'Ужин';
	@override String get snack => 'Перекус';
	@override String get unknown => 'Неизвестно';
	@override String get change => 'Изменить';
	@override String get enableNotifications => 'Включить уведомления';
	@override String get skipForNow => 'Пропустить на данный момент';
	@override String get saveChanges => 'Сохранить изменения';
	@override String get enabledSuccessfully => 'Уведомления успешно включены!';
	@override String get permissionDenied => 'Разрешение на уведомления запрещено';
	@override String errorEnabling({required Object error}) => 'Ошибка при включении уведомлений: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Ошибка при завершении настройки: ${error}';
}

// Path: notifications
class _TranslationsNotificationsRu implements TranslationsNotificationsEn {
	_TranslationsNotificationsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastRu breakfast = _TranslationsNotificationsBreakfastRu._(_root);
	@override late final _TranslationsNotificationsLunchRu lunch = _TranslationsNotificationsLunchRu._(_root);
	@override late final _TranslationsNotificationsDinnerRu dinner = _TranslationsNotificationsDinnerRu._(_root);
	@override late final _TranslationsNotificationsSnackRu snack = _TranslationsNotificationsSnackRu._(_root);
	@override late final _TranslationsNotificationsTestRu test = _TranslationsNotificationsTestRu._(_root);
}

// Path: login
class _TranslationsLoginRu implements TranslationsLoginEn {
	_TranslationsLoginRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вход';
	@override String get signInWithGoogle => 'Войти с помощью Google';
	@override String get signInFailed => 'Вход в Google не удался или был отменён.';
}

// Path: disclaimer
class _TranslationsDisclaimerRu implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Пожалуйста, обратите внимание';
	@override late final _TranslationsDisclaimerSnapRu snap = _TranslationsDisclaimerSnapRu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateRu weightEstimate = _TranslationsDisclaimerWeightEstimateRu._(_root);
}

// Path: common
class _TranslationsCommonRu implements TranslationsCommonEn {
	_TranslationsCommonRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get close => 'Закрыть';
	@override String get kContinue => 'Продолжить';
}

// Path: errors
class _TranslationsErrorsRu implements TranslationsErrorsEn {
	_TranslationsErrorsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Ошибка загрузки данных профиля';
	@override String get somethingWentWrong => 'Что-то пошло не так.';
}

// Path: debug
class _TranslationsDebugRu implements TranslationsDebugEn {
	_TranslationsDebugRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Опции отладки';
	@override late final _TranslationsDebugSectionsRu sections = _TranslationsDebugSectionsRu._(_root);
	@override String get showActiveNotifications => 'Показать активные уведомления';
	@override String get scheduleTestNotification => 'Запланировать тестовое уведомление (10с)';
	@override String get triggerBreakfastNotification => 'Сигнализировать о завтраке';
	@override String get cancelAllNotifications => 'Отменить все уведомления';
	@override String get activeNotifications => 'Активные уведомления';
	@override String get noTitle => 'Нет названия';
	@override String get noBody => 'Нет тела';
	@override String get fetchTodaysSteps => 'Получить шаги за сегодня';
	@override String get fetchTodaysCalories => 'Получить калории за сегодня';
	@override String get fetchLatestWeight => 'Получить последний вес';
	@override String get fetchLatestHeight => 'Получить последний рост';
	@override String get writeTestWeight => 'Записать тестовый вес (70кг)';
	@override String get writeTestHeight => 'Записать тестовый рост (175см)';
	@override String get syncLast7Days => 'Синхронизировать за последние 7 дней';
	@override String get sync7DaysTitle => 'Синхронизация за 7 дней';
	@override String get checkCurrentLocale => 'Проверить текущую локализацию';
	@override String get currentLocale => 'Текущая локализация';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Язык: ${languageCode}\nСтрана: ${countryCode}\nСистема единиц: ${unitSystem}';
	@override String get latestWeight => 'Последний вес';
	@override String get latestHeight => 'Последний рост';
	@override String get todaysCalories => 'Калории за сегодня';
	@override String totalCaloriesBurned({required Object calories}) => 'Всего сожжённых калорий: ${calories}';
	@override String syncSuccess({required Object count}) => 'Успешно получено ${count} данных за последние 7 дней по шагам, калориям и весу.';
	@override String get noWeightData => 'Данные о весе не найдены за последние 30 дней.';
	@override String get noHeightData => 'Данные о росте не найдены за последний год.';
	@override String get noCalorieData => 'Данные о калориях не найдены за сегодня.';
	@override String get weightWritten => 'Тестовый вес (70кг) успешно записан.';
	@override String get weightWriteFailed => 'Не удалось записать тестовый вес.';
	@override String get heightWritten => 'Тестовый рост (175см) успешно записан.';
	@override String get heightWriteFailed => 'Не удалось записать тестовый рост.';
	@override String get noNotifications => 'Нет активных уведомлений.';
	@override String get testNotificationScheduled => 'Тестовое уведомление запланировано на 10 секунд с этого момента.';
	@override String get testNotificationBody => 'Это тестовое уведомление, запланированное на 10 секунд с этого момента.';
	@override String get breakfastNotificationTriggered => 'Сигнализация о завтраке активирована.';
	@override String get allNotificationsCancelled => 'Все уведомления отменены.';
	@override String get fetchingData => 'Получение данных за последние 7 дней...';
	@override String id({required Object id}) => 'ID: ${id}';
}

// Path: health
class _TranslationsHealthRu implements TranslationsHealthEn {
	_TranslationsHealthRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Не удалось синхронизироваться с Health Connect';
	@override String get mealSynced => 'Приём пищи синхронизирован с Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesRu implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionRu foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionRu._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisRu aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisRu._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationRu healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationRu._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderRu implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Каков ваш пол?';
	@override String get description => 'Пол помогает нам точно высчитать вашу базовую скорость метаболизма (BMR).';
	@override String get next => 'Далее';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightRu implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Какой у вас рост?';
	@override String get description => 'Ваш рост помогает нам точно рассчитать ваш индекс массы тела (BMI) и потребности в энергии.';
	@override String get metric => 'Метрика';
	@override String get imperial => 'Имперская';
	@override String get next => 'Далее';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightRu implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Какой у вас текущий вес?';
	@override String get currentDescription => 'Ваш текущий вес важен для персонализации ваших ежедневных целей.';
	@override String get targetTitle => 'Какой у вас целевой вес?';
	@override String get targetDescription => 'Установка целевого веса помогает нам определить ваш долгосрочный план.';
	@override String get metric => 'Метрика';
	@override String get imperial => 'Имперская';
	@override String get next => 'Далее';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeRu implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Когда у вас день рождения?';
	@override String get description => 'Ваш возраст помогает нам точно рассчитать ваши потребности в калориях.';
	@override String get next => 'Далее';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleRu implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Недовес';
	@override String get healthy => 'Здоровый';
	@override String get overweight => 'Избыточный вес';
	@override String get obese => 'Ожирение';
	@override late final _TranslationsOnboardingBmiScaleCategoriesRu categories = _TranslationsOnboardingBmiScaleCategoriesRu._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesRu messages = _TranslationsOnboardingBmiScaleMessagesRu._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalRu implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Какова ваша цель?';
	@override String get description => 'Выберите цель, которая лучше всего описывает, что вы хотите достичь';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelRu implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Насколько вы активны?';
	@override String get description => 'Это поможет нам более точно рассчитать ваши ежедневные потребности в калориях';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectRu implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Подключиться к Health Connect';
	@override String get description => 'Синхронизируйте ваши данные о здоровье для лучших аналитических данных и автоматического отслеживания калорий';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingRu automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingRu._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsRu progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsRu._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationRu seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationRu._(_root);
	@override String get connected => 'Подключено к Health Connect';
	@override String get notConnected => 'Не подключено к Health Connect';
	@override String get setup => 'Настроить Health Connect';
	@override String get skipForNow => 'Пропустить на данный момент';
	@override String get statusConnected => 'Health Connect подключен.';
	@override String get statusSuccess => 'Health Connect был успешно подключен!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Доступ запрещен. Пожалуйста, включите разрешения для Health Connect в настройках вашего телефона для ${appLabel}.';
	@override String statusError({required Object error}) => 'Ошибка настройки Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementRu implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessRu trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessRu._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileRu healthProfile = _TranslationsOnboardingReinforcementHealthProfileRu._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleRu goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleRu._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalRu implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Установите вашу дневную цель';
	@override String get titleSet => 'Ваша дневная цель';
	@override String get description => 'Готовы начать ваше путешествие к благополучию? Установите вашу ежедневную калорийную цель ниже, чтобы запустить ваш прогресс.';
	@override String get descriptionSet => 'Ваш компас установлен! Это ваша ежедневная калорийная цель, чтобы направлять вас.';
	@override String get yourGoal => 'Ваша цель';
	@override String get dailyCalories => 'Ежедневные калории (ккал)';
	@override String get setGoal => 'Установить цель';
	@override String get intake => 'Приём пищи';
	@override String get burned => 'Сожжено';
	@override String get weightImpact => 'Влияние на вес';
	@override String get estLoss => 'Ожидаемая потеря';
	@override String get estGain => 'Ожидаемое увеличение';
	@override String get kcal => 'ккал';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryRu implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ежедневный отчёт';
	@override String get calories => 'Калории';
	@override String get carbs => 'Углеводы';
	@override String get protein => 'Белок';
	@override String get fat => 'Жир';
	@override String get fiber => 'Клетчатка';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressRu implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Макроразделение за сегодня';
	@override String get target => 'Цель';
	@override String get current => 'Текущий';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryRu implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'История макроэлементов за 7 дней';
	@override String get noHistoryYet => 'История отсутствует';
	@override String get startLogging => 'Начните регистрировать приёмы пищи, чтобы увидеть ваши\nтенденции макроэлементов за 7 дней здесь';
}

// Path: home.mealLog
class _TranslationsHomeMealLogRu implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Зарегистрированные приёмы пищи';
	@override String get emptyMessage => 'Сфотографируйте свой последний приём пищи, чтобы зарегистрировать его здесь.';
	@override String get noMealsToday => 'Сегодня нет записанных приёмов пищи';
	@override String get seeAllMeals => 'Посмотреть все приёмы пищи';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionRu implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Быстрое добавление с помощью AI';
	@override String get description => 'Опишите свой приём пищи, и пусть AI позаботится о деталях.';
	@override String get hint => 'например, на завтрак я съел большую тарелку овсянки с нарезанным бананом и ложкой сывороточного белка ...';
	@override String get analyzeMeal => 'Проанализировать приём пищи';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsRu implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Избранные блюда';
	@override String get description => 'Быстро добавьте одно из ваших любимых блюд.';
	@override String get noFavorites => 'Нет любимых блюд.';
	@override String get addFavoriteHint => 'Нажмите на звезду на блюде, чтобы отметить его как любимое.';
	@override String get seeAll => 'Смотреть все';
	@override String get add => 'Добавить';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapRu implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сфотографируйте и отслеживайте ваш приём пищи';
	@override String get description => 'Используйте камеру, чтобы сделать снимок вашей еды для анализа AI.';
	@override String get openCamera => 'Открыть камеру';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthRu implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Синхронизация с Health Connect';
	@override String get description => 'Синхронизируйте ваши данные о питании с Health Connect';
	@override String get install => 'Установить';
	@override String get connect => 'Подключиться';
}

// Path: meal.nutrition
class _TranslationsMealNutritionRu implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Калории';
	@override String get carbs => 'Углеводы (г)';
	@override String get protein => 'Белок (г)';
	@override String get fat => 'Жир (г)';
	@override String get fiber => 'Клетчатка (г)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationRu implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Удалить приём пищи';
	@override String get message => 'Вы уверены, что хотите удалить эту запись о приёме пищи?';
	@override String get cancel => 'Отмена';
	@override String get delete => 'Удалить';
}

// Path: profile.sections
class _TranslationsProfileSectionsRu implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ПРОФИЛЬ';
	@override String get basicInformation => 'БАЗОВАЯ ИНФОРМАЦИЯ';
	@override String get goalsAndActivity => 'ЦЕЛИ И АКТИВНОСТЬ';
	@override String get calculatedValues => 'ВЫЧИСЛЕННЫЕ ЗНАЧЕНИЯ';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesRu implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Ежедневная цель';
	@override String get calPerDay => 'кал/день';
	@override String get notAvailable => 'Недоступно';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsRu implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ЛИЧНАЯ ИНФОРМАЦИЯ';
	@override String get physicalMeasurements => 'ФИЗИЧЕСКИЕ ИЗМЕРЕНИЯ';
	@override String get goalsAndActivity => 'ЦЕЛИ И АКТИВНОСТЬ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersRu implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get male => 'Мужской';
	@override String get female => 'Женский';
	@override String get other => 'Другой';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsRu implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightRu loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightRu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightRu maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightRu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightRu gainWeight = _TranslationsEditProfileWeightGoalsGainWeightRu._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsRu implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryRu sedentary = _TranslationsEditProfileActivityLevelsSedentaryRu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveRu lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveRu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveRu moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveRu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveRu veryActive = _TranslationsEditProfileActivityLevelsVeryActiveRu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveRu extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveRu._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsRu implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ПРОФИЛЬ';
	@override String get localization => 'ЛОКАЛИЗАЦИЯ';
	@override String get notifications => 'УВЕДОМЛЕНИЯ';
	@override String get supportAndLegal => 'ПОДДЕРЖКА И ЗАКОН';
	@override String get dangerZone => 'ОПАСНАЯ ЗОНА';
	@override String get developer => 'РАЗРАБОТЧИК';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileRu implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редактировать профиль';
	@override String get subtitle => 'Обновите вашу личную информацию';
}

// Path: settings.language
class _TranslationsSettingsLanguageRu implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Язык';
	@override String get subtitle => 'Выберите предпочитаемый язык';
	@override String get searchHint => 'Поиск языков...';
	@override String get noResults => 'Результатов не найдено';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitRu implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Единица измерения роста';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitRu implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Единица измерения веса';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersRu implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Напоминания о приёмах пищи';
	@override String get subtitle => 'Оставайтесь на правильном пути с своевременными оповещениями';
}

// Path: settings.theme
class _TranslationsSettingsThemeRu implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тема';
	@override String get subtitle => 'Выберите вашу предпочтительную тему';
	@override String get light => 'Светлая';
	@override String get dark => 'Темная';
	@override String get system => 'Системная';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackRu implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Отправить отзыв';
	@override String subtitle({required Object appLabel}) => 'Помогите нам улучшить ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Обратная связь по приложению ${appLabel}';
	@override String get emailBodyPrefix => 'Пожалуйста, предоставьте свой отзыв ниже:';
	@override String get appVersion => 'Версия приложения';
	@override String get device => 'Устройство';
	@override String get osVersion => 'Версия ОС';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataRu implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Удалить все данные';
	@override String get subtitle => 'Безвозвратно удалить всю вашу информацию';
	@override String get confirmationTitle => 'Удалить все данные?';
	@override String get confirmationMessage => 'Это действие нельзя будет отменить. Все ваши зарегистрированные приёмы пищи, любимые и настройки профиля будут навсегда удалены.';
	@override String get cancel => 'Отмена';
	@override String get clearEverything => 'Удалить всё';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsRu implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Параметры отладки';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastRu implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время завтрака! 🍳';
	@override String get body => 'Не забудьте записать свой завтрак';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchRu implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время обеда! 🥗';
	@override String get body => 'Пора записывать ваш обед';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerRu implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время ужина! 🍽️';
	@override String get body => 'Не забудьте записать свой ужин';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackRu implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время перекуса! 🍎';
	@override String get body => 'Время для здорового перекуса';
}

// Path: notifications.test
class _TranslationsNotificationsTestRu implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тестовое уведомление';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapRu implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} предоставляет оценочную информацию о питательных веществах. Точность зависит от ваших данных и вариаций пищи. Используйте как руководство, а не как окончательный источник. Проконсультируйтесь с профессионалом для получения индивидуальных рекомендаций по питанию.';
	@override late final _TranslationsDisclaimerSnapPortionSizeRu portionSize = _TranslationsDisclaimerSnapPortionSizeRu._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsRu preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsRu._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsRu ingredients = _TranslationsDisclaimerSnapIngredientsRu._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsRu databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsRu._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateRu implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оценка веса';
	@override String get description => 'Предполагаемое изменение веса является теоретической оценкой, основанной на простом принципе калории-входят против калории-выходят. Это предназначено исключительно для мотивационного руководства, а не как предсказание вашего фактического веса.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyRu calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyRu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsRu biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsRu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightRu waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightRu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRu professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRu._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsRu implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Уведомления';
	@override String get healthConnect => 'Health Connect';
	@override String get appInfo => 'Информация о приложении';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionRu implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Умное распознавание еды';
	@override String get description => 'Сфотографируйте свою еду, и пусть AI определит ваш приём пищи';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisRu implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-анализ';
	@override String get description => 'Получите мгновенные сведения о питательных веществах по вашим описаниям';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationRu implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Интеграция со здоровьем';
	@override String get description => 'Подключитесь к Health Connect для получения лучших аналитических данных';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesRu implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Недовес';
	@override String get healthyWeight => 'Здоровый вес';
	@override String get overweight => 'Избыточный вес';
	@override String get obese => 'Ожирение';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesRu implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Мы поможем вам составить здоровый план для достижения сбалансированного веса с питательной пищей.';
	@override String get healthy => 'Отличная работа! Вы находитесь в здоровом диапазоне. Мы поможем вам поддерживать ваши бодрость и уровень энергии.';
	@override String overweight({required Object appLabel}) => '${appLabel} упростит ваш путь с помощью отслеживания на основе ИИ, чтобы помочь вам достичь вашей цели комфортно.';
	@override String get obese => 'Мы здесь, чтобы поддержать вас с персонализированными рекомендациями и устойчивыми стратегиями для достижения ваших целей в области здоровья.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingRu implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Автоматическое отслеживание калорий';
	@override String get description => 'Отслеживайте сожжённые калории из ваших фитнес-приложений';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsRu implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Анализ прогресса';
	@override String get description => 'Получите детальную информацию о ваших тенденциях здоровья';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationRu implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Бесшовная интеграция';
	@override String get description => 'Синхронизация данных из ваших любимых приложений для здоровья';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessRu implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вы не одни';
	@override String get genericMessage => 'Исследования показывают, что последовательное отслеживание является главным предиктором долгосрочного успеха.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Для ${age}-летнего ${gender}, стремящегося к ${goal}, последовательное отслеживание является главным предиктором успеха.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} делает это в 10 раз проще, чем делать это вручную.';
	@override String get getStartedTitle => 'Готовы начать?';
	@override String get tipPhoto => 'Сделайте фото своих блюд для моментального анализа';
	@override String get tipConsistency => 'Записывайте данные регулярно, чтобы увидеть значимый прогресс';
	@override String get tipProgress => 'Отслеживайте свой прогресс ежедневно, чтобы сохранить мотивацию';
	@override String get button => 'Поехали';
	@override String get defaultGender => 'индивид';
	@override String get defaultGoal => 'более здоровая версия вас';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileRu implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваш профиль здоровья';
	@override String bmiDescription({required Object bmi}) => 'Согласно вашим данным, ваш BMI составляет ${bmi}.';
	@override String get finalizeDescription => 'Давайте завершим ваш профиль, чтобы настроить ваш опыт.';
	@override String get goalGain => 'набирать';
	@override String get goalLose => 'терять';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Чтобы достичь вашей цели, вам нужно ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Вы достигли вашего целевого веса! Мы поможем вам поддерживать его.';
	@override String get button => 'Поехали';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleRu implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Отличное начало!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Вы сделали первый шаг к ${goalText}. Поскольку вы ${activityText}, ${appLabel} подстроит ваши цели под ваш образ жизни.';
	@override String get personalizedTargets => 'Персонализированные калорийные цели';
	@override String get aiMealDetection => 'Обнаружение блюд на основе AI';
	@override String get macroBreakdowns => 'Подробные разбивки по макроэлементам';
	@override String get button => 'Поехали';
	@override String get defaultGoal => 'ваши цели';
	@override String get defaultActivity => 'активный';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightRu implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Потерять вес';
	@override String get description => 'Создайте дефицит калорий, чтобы потерять вес';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightRu implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Сохранить вес';
	@override String get description => 'Поддерживайте ваш текущий вес';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightRu implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Набрать вес';
	@override String get description => 'Создайте избыток калорий, чтобы набрать вес';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryRu implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Малоподвижный';
	@override String get description => 'Мало или нет упражнений';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveRu implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Слегка активный';
	@override String get description => 'Лёгкие упражнения 1-3 дня в неделю';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveRu implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Умеренно активный';
	@override String get description => 'Умеренные упражнения 3-5 дней в неделю';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveRu implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Очень активный';
	@override String get description => 'Интенсивные упражнения 6-7 дней в неделю';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveRu implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Чрезвычайно активный';
	@override String get description => 'Очень интенсивные упражнения, физическая работа';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeRu implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Размер порции';
	@override String get description => 'Точность оценок сильно зависит от вашей правильной оценки размера порции.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsRu implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Методы приготовления';
	@override String description({required Object appLabel}) => 'Методы приготовления могут значительно изменить питательную ценность пищи. Оценки ${appLabel} могут не всегда учитывать эти вариации.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsRu implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ингредиенты';
	@override String get description => 'Сложные блюда с множеством скрытых ингредиентов могут привести к менее точным оценкам.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsRu implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ограничения базы данных';
	@override String description({required Object appLabel}) => 'База данных продуктов ${appLabel} обширна, но может не включать каждый отдельный продукт или его вариации.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyRu implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Точность калорий';
	@override String get description => 'Эта оценка настолько точна, насколько точно отслеживается ваш калорийный ввод и расход. Неправильное ведение записей приведет к неверной оценке.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsRu implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Биологические факторы';
	@override String description({required Object appLabel}) => 'Фактическая потеря/приобретение веса зависит от метаболизма, гормонов, сна, стресса, гидратации и других индивидуальных факторов, которые ${appLabel} не может измерить.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightRu implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Водяной вес и колебания';
	@override String get description => 'Повседневный вес может значительно колебаться из-за задержки воды, пищеварения и времени. Оценка не учитывает эти ежедневные изменения.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRu implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профессиональные рекомендации';
	@override String get description => 'Не используйте эту оценку для принятия медицинских решений. Всегда консультируйтесь с квалифицированным медицинским работником или зарегистрированным диетологом для получения персонализированных рекомендаций по управлению весом.';
}

/// The flat map containing all translations for locale <ru>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Русский',
			'flag' => '🇷🇺',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => 'Добро пожаловать в ${appLabel}',
			'onboarding.subtitle' => 'Ваш личный помощник по питанию, работающий на AI',
			'onboarding.getStarted' => 'Начать',
			'onboarding.features.foodRecognition.title' => 'Умное распознавание еды',
			'onboarding.features.foodRecognition.description' => 'Сфотографируйте свою еду, и пусть AI определит ваш приём пищи',
			'onboarding.features.aiAnalysis.title' => 'AI-анализ',
			'onboarding.features.aiAnalysis.description' => 'Получите мгновенные сведения о питательных веществах по вашим описаниям',
			'onboarding.features.healthIntegration.title' => 'Интеграция со здоровьем',
			'onboarding.features.healthIntegration.description' => 'Подключитесь к Health Connect для получения лучших аналитических данных',
			'onboarding.gender.title' => 'Каков ваш пол?',
			'onboarding.gender.description' => 'Пол помогает нам точно высчитать вашу базовую скорость метаболизма (BMR).',
			'onboarding.gender.next' => 'Далее',
			'onboarding.height.title' => 'Какой у вас рост?',
			'onboarding.height.description' => 'Ваш рост помогает нам точно рассчитать ваш индекс массы тела (BMI) и потребности в энергии.',
			'onboarding.height.metric' => 'Метрика',
			'onboarding.height.imperial' => 'Имперская',
			'onboarding.height.next' => 'Далее',
			'onboarding.weight.currentTitle' => 'Какой у вас текущий вес?',
			'onboarding.weight.currentDescription' => 'Ваш текущий вес важен для персонализации ваших ежедневных целей.',
			'onboarding.weight.targetTitle' => 'Какой у вас целевой вес?',
			'onboarding.weight.targetDescription' => 'Установка целевого веса помогает нам определить ваш долгосрочный план.',
			'onboarding.weight.metric' => 'Метрика',
			'onboarding.weight.imperial' => 'Имперская',
			'onboarding.weight.next' => 'Далее',
			'onboarding.age.title' => 'Когда у вас день рождения?',
			'onboarding.age.description' => 'Ваш возраст помогает нам точно рассчитать ваши потребности в калориях.',
			'onboarding.age.next' => 'Далее',
			'onboarding.bmiScale.underweight' => 'Недовес',
			'onboarding.bmiScale.healthy' => 'Здоровый',
			'onboarding.bmiScale.overweight' => 'Избыточный вес',
			'onboarding.bmiScale.obese' => 'Ожирение',
			'onboarding.bmiScale.categories.underweight' => 'Недовес',
			'onboarding.bmiScale.categories.healthyWeight' => 'Здоровый вес',
			'onboarding.bmiScale.categories.overweight' => 'Избыточный вес',
			'onboarding.bmiScale.categories.obese' => 'Ожирение',
			'onboarding.bmiScale.messages.underweight' => 'Мы поможем вам составить здоровый план для достижения сбалансированного веса с питательной пищей.',
			'onboarding.bmiScale.messages.healthy' => 'Отличная работа! Вы находитесь в здоровом диапазоне. Мы поможем вам поддерживать ваши бодрость и уровень энергии.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} упростит ваш путь с помощью отслеживания на основе ИИ, чтобы помочь вам достичь вашей цели комфортно.',
			'onboarding.bmiScale.messages.obese' => 'Мы здесь, чтобы поддержать вас с персонализированными рекомендациями и устойчивыми стратегиями для достижения ваших целей в области здоровья.',
			'onboarding.weightGoal.title' => 'Какова ваша цель?',
			'onboarding.weightGoal.description' => 'Выберите цель, которая лучше всего описывает, что вы хотите достичь',
			'onboarding.activityLevel.title' => 'Насколько вы активны?',
			'onboarding.activityLevel.description' => 'Это поможет нам более точно рассчитать ваши ежедневные потребности в калориях',
			'onboarding.healthConnect.title' => 'Подключиться к Health Connect',
			'onboarding.healthConnect.description' => 'Синхронизируйте ваши данные о здоровье для лучших аналитических данных и автоматического отслеживания калорий',
			'onboarding.healthConnect.automaticTracking.title' => 'Автоматическое отслеживание калорий',
			'onboarding.healthConnect.automaticTracking.description' => 'Отслеживайте сожжённые калории из ваших фитнес-приложений',
			'onboarding.healthConnect.progressInsights.title' => 'Анализ прогресса',
			'onboarding.healthConnect.progressInsights.description' => 'Получите детальную информацию о ваших тенденциях здоровья',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Бесшовная интеграция',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Синхронизация данных из ваших любимых приложений для здоровья',
			'onboarding.healthConnect.connected' => 'Подключено к Health Connect',
			'onboarding.healthConnect.notConnected' => 'Не подключено к Health Connect',
			'onboarding.healthConnect.setup' => 'Настроить Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Пропустить на данный момент',
			'onboarding.healthConnect.statusConnected' => 'Health Connect подключен.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect был успешно подключен!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Доступ запрещен. Пожалуйста, включите разрешения для Health Connect в настройках вашего телефона для ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Ошибка настройки Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Вы не одни',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Исследования показывают, что последовательное отслеживание является главным предиктором долгосрочного успеха.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Для ${age}-летнего ${gender}, стремящегося к ${goal}, последовательное отслеживание является главным предиктором успеха.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} делает это в 10 раз проще, чем делать это вручную.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Готовы начать?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Сделайте фото своих блюд для моментального анализа',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Записывайте данные регулярно, чтобы увидеть значимый прогресс',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Отслеживайте свой прогресс ежедневно, чтобы сохранить мотивацию',
			'onboarding.reinforcement.trackingSuccess.button' => 'Поехали',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'индивид',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'более здоровая версия вас',
			'onboarding.reinforcement.healthProfile.title' => 'Ваш профиль здоровья',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Согласно вашим данным, ваш BMI составляет ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Давайте завершим ваш профиль, чтобы настроить ваш опыт.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'набирать',
			'onboarding.reinforcement.healthProfile.goalLose' => 'терять',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Чтобы достичь вашей цели, вам нужно ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Вы достигли вашего целевого веса! Мы поможем вам поддерживать его.',
			'onboarding.reinforcement.healthProfile.button' => 'Поехали',
			'onboarding.reinforcement.goalLifestyle.title' => 'Отличное начало!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Вы сделали первый шаг к ${goalText}. Поскольку вы ${activityText}, ${appLabel} подстроит ваши цели под ваш образ жизни.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Персонализированные калорийные цели',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Обнаружение блюд на основе AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Подробные разбивки по макроэлементам',
			'onboarding.reinforcement.goalLifestyle.button' => 'Поехали',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'ваши цели',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'активный',
			'tabs.dashboard' => 'Панель',
			'tabs.history' => 'История',
			'home.dailyGoal.title' => 'Установите вашу дневную цель',
			'home.dailyGoal.titleSet' => 'Ваша дневная цель',
			'home.dailyGoal.description' => 'Готовы начать ваше путешествие к благополучию? Установите вашу ежедневную калорийную цель ниже, чтобы запустить ваш прогресс.',
			'home.dailyGoal.descriptionSet' => 'Ваш компас установлен! Это ваша ежедневная калорийная цель, чтобы направлять вас.',
			'home.dailyGoal.yourGoal' => 'Ваша цель',
			'home.dailyGoal.dailyCalories' => 'Ежедневные калории (ккал)',
			'home.dailyGoal.setGoal' => 'Установить цель',
			'home.dailyGoal.intake' => 'Приём пищи',
			'home.dailyGoal.burned' => 'Сожжено',
			'home.dailyGoal.weightImpact' => 'Влияние на вес',
			'home.dailyGoal.estLoss' => 'Ожидаемая потеря',
			'home.dailyGoal.estGain' => 'Ожидаемое увеличение',
			'home.dailyGoal.kcal' => 'ккал',
			'home.dailySummary.title' => 'Ежедневный отчёт',
			'home.dailySummary.calories' => 'Калории',
			'home.dailySummary.carbs' => 'Углеводы',
			'home.dailySummary.protein' => 'Белок',
			'home.dailySummary.fat' => 'Жир',
			'home.dailySummary.fiber' => 'Клетчатка',
			'home.intakeProgress.title' => 'Макроразделение за сегодня',
			'home.intakeProgress.target' => 'Цель',
			'home.intakeProgress.current' => 'Текущий',
			'home.intakeHistory.title' => 'История макроэлементов за 7 дней',
			'home.intakeHistory.noHistoryYet' => 'История отсутствует',
			'home.intakeHistory.startLogging' => 'Начните регистрировать приёмы пищи, чтобы увидеть ваши\nтенденции макроэлементов за 7 дней здесь',
			'home.mealLog.title' => 'Зарегистрированные приёмы пищи',
			'home.mealLog.emptyMessage' => 'Сфотографируйте свой последний приём пищи, чтобы зарегистрировать его здесь.',
			'home.mealLog.noMealsToday' => 'Сегодня нет записанных приёмов пищи',
			'home.mealLog.seeAllMeals' => 'Посмотреть все приёмы пищи',
			'home.mealDescription.title' => 'Быстрое добавление с помощью AI',
			'home.mealDescription.description' => 'Опишите свой приём пищи, и пусть AI позаботится о деталях.',
			'home.mealDescription.hint' => 'например, на завтрак я съел большую тарелку овсянки с нарезанным бананом и ложкой сывороточного белка ...',
			'home.mealDescription.analyzeMeal' => 'Проанализировать приём пищи',
			'home.favoriteMeals.title' => 'Избранные блюда',
			'home.favoriteMeals.description' => 'Быстро добавьте одно из ваших любимых блюд.',
			'home.favoriteMeals.noFavorites' => 'Нет любимых блюд.',
			'home.favoriteMeals.addFavoriteHint' => 'Нажмите на звезду на блюде, чтобы отметить его как любимое.',
			'home.favoriteMeals.seeAll' => 'Смотреть все',
			'home.favoriteMeals.add' => 'Добавить',
			'home.mealSnap.title' => 'Сфотографируйте и отслеживайте ваш приём пищи',
			'home.mealSnap.description' => 'Используйте камеру, чтобы сделать снимок вашей еды для анализа AI.',
			'home.mealSnap.openCamera' => 'Открыть камеру',
			'home.connectHealth.title' => 'Синхронизация с Health Connect',
			'home.connectHealth.description' => 'Синхронизируйте ваши данные о питании с Health Connect',
			'home.connectHealth.install' => 'Установить',
			'home.connectHealth.connect' => 'Подключиться',
			'history.noMeals' => 'Нет записанных приёмов пищи',
			'history.emptyMessage' => 'Сфотографируйте свой последний приём пищи, чтобы зарегистрировать его здесь.',
			'history.today' => 'Сегодня',
			'history.yesterday' => 'Вчера',
			'meal.ohNo' => 'О нет!',
			'meal.delete' => 'Удалить',
			'meal.editMeal' => 'Редактировать приём пищи',
			'meal.addMeal' => 'Добавить приём пищи',
			'meal.saveMeal' => 'Сохранить приём пищи',
			'meal.save' => 'Сохранить',
			'meal.mealName' => 'Название приёма пищи',
			'meal.mealQuantity' => 'Количество приёма пищи',
			'meal.mealQuantityHint' => 'например, 1 тарелка, 2 куска',
			'meal.timeOfMeal' => 'Время приёма пищи',
			'meal.timeOfMealHint' => 'Выберите время, когда вы имели приём пищи',
			'meal.mealType' => 'Тип приёма пищи',
			'meal.nutrition.calories' => 'Калории',
			'meal.nutrition.carbs' => 'Углеводы (г)',
			'meal.nutrition.protein' => 'Белок (г)',
			'meal.nutrition.fat' => 'Жир (г)',
			'meal.nutrition.fiber' => 'Клетчатка (г)',
			'meal.deleteConfirmation.title' => 'Удалить приём пищи',
			'meal.deleteConfirmation.message' => 'Вы уверены, что хотите удалить эту запись о приёме пищи?',
			'meal.deleteConfirmation.cancel' => 'Отмена',
			'meal.deleteConfirmation.delete' => 'Удалить',
			'meal.addedToLog' => 'Приём пищи добавлен в ваш журнал!',
			'meal.couldNotAdd' => ({required Object error}) => 'Не удалось добавить приём пищи: ${error}',
			'meal.removedFromFavorites' => 'Удалено из избранного!',
			'meal.savedAsFavorite' => 'Приём пищи сохранён как любимое!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Не удалось обновить любимое: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Не удалось обработать: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Не удалось обработать изображение: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Ошибка сжатия изображения: ${error}',
			'meal.failedToSave' => 'Не удалось сохранить данные. Пожалуйста, попробуйте еще раз.',
			'favorites.title' => 'Избранное',
			'favorites.empty' => 'Нет любимых блюд.',
			'profile.title' => 'Профиль',
			'profile.noProfileData' => 'Данные профиля не найдены',
			'profile.yourProfile' => 'Ваш профиль',
			'profile.viewAndManage' => 'Просмотреть и управлять вашей информацией о здоровье',
			'profile.sections.profile' => 'ПРОФИЛЬ',
			'profile.sections.basicInformation' => 'БАЗОВАЯ ИНФОРМАЦИЯ',
			'profile.sections.goalsAndActivity' => 'ЦЕЛИ И АКТИВНОСТЬ',
			'profile.sections.calculatedValues' => 'ВЫЧИСЛЕННЫЕ ЗНАЧЕНИЯ',
			'profile.gender' => 'Пол',
			'profile.height' => 'Рост',
			'profile.weight' => 'Вес',
			'profile.age' => 'Возраст',
			'profile.weightGoal' => 'Цель по весу',
			'profile.activityLevel' => 'Уровень активности',
			'profile.healthMetrics' => 'Метрики здоровья',
			'profile.notSet' => 'Не задано',
			'profile.years' => 'лет',
			'profile.updatedSuccessfully' => 'Профиль успешно обновлён!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Ежедневная цель',
			'profile.calculatedValues.calPerDay' => 'кал/день',
			'profile.calculatedValues.notAvailable' => 'Недоступно',
			'healthScore.title' => 'Оценка здоровья',
			'healthScore.whyThisScore' => 'Почему эта оценка?',
			'healthScore.note' => 'Эта оценка - это оценка AI, основанная на определённых ингредиентах и их питательной ценности. Всегда консультируйтесь с профессионалом по поводу диетических рекомендаций.',
			'healthScore.unhealthy' => 'Нездоровый',
			'healthScore.healthy' => 'Здоровый',
			'healthScore.neutral' => 'Нейтральный',
			'editProfile.title' => 'Редактировать профиль',
			'editProfile.sections.personalInformation' => 'ЛИЧНАЯ ИНФОРМАЦИЯ',
			'editProfile.sections.physicalMeasurements' => 'ФИЗИЧЕСКИЕ ИЗМЕРЕНИЯ',
			'editProfile.sections.goalsAndActivity' => 'ЦЕЛИ И АКТИВНОСТЬ',
			'editProfile.gender' => 'Пол',
			'editProfile.dateOfBirth' => 'Дата рождения',
			'editProfile.height' => 'Рост',
			'editProfile.weight' => 'Вес',
			'editProfile.weightGoal' => 'Цель по весу',
			'editProfile.activityLevel' => 'Уровень активности',
			'editProfile.metric' => 'Метрика',
			'editProfile.imperial' => 'Имперская',
			'editProfile.metricCm' => 'Метрика (см)',
			'editProfile.imperialFtIn' => 'Имперская (футы/дюймы)',
			'editProfile.metricKg' => 'Метрика (кг)',
			'editProfile.imperialLbs' => 'Имперская (фунты)',
			'editProfile.genders.male' => 'Мужской',
			'editProfile.genders.female' => 'Женский',
			'editProfile.genders.other' => 'Другой',
			'editProfile.weightGoals.loseWeight.name' => 'Потерять вес',
			'editProfile.weightGoals.loseWeight.description' => 'Создайте дефицит калорий, чтобы потерять вес',
			'editProfile.weightGoals.maintainWeight.name' => 'Сохранить вес',
			'editProfile.weightGoals.maintainWeight.description' => 'Поддерживайте ваш текущий вес',
			'editProfile.weightGoals.gainWeight.name' => 'Набрать вес',
			'editProfile.weightGoals.gainWeight.description' => 'Создайте избыток калорий, чтобы набрать вес',
			'editProfile.activityLevels.sedentary.name' => 'Малоподвижный',
			'editProfile.activityLevels.sedentary.description' => 'Мало или нет упражнений',
			'editProfile.activityLevels.lightlyActive.name' => 'Слегка активный',
			'editProfile.activityLevels.lightlyActive.description' => 'Лёгкие упражнения 1-3 дня в неделю',
			'editProfile.activityLevels.moderatelyActive.name' => 'Умеренно активный',
			'editProfile.activityLevels.moderatelyActive.description' => 'Умеренные упражнения 3-5 дней в неделю',
			'editProfile.activityLevels.veryActive.name' => 'Очень активный',
			'editProfile.activityLevels.veryActive.description' => 'Интенсивные упражнения 6-7 дней в неделю',
			'editProfile.activityLevels.extremelyActive.name' => 'Чрезвычайно активный',
			'editProfile.activityLevels.extremelyActive.description' => 'Очень интенсивные упражнения, физическая работа',
			'settings.title' => 'Настройки',
			'settings.sections.profile' => 'ПРОФИЛЬ',
			'settings.sections.localization' => 'ЛОКАЛИЗАЦИЯ',
			'settings.sections.notifications' => 'УВЕДОМЛЕНИЯ',
			'settings.sections.supportAndLegal' => 'ПОДДЕРЖКА И ЗАКОН',
			'settings.sections.dangerZone' => 'ОПАСНАЯ ЗОНА',
			'settings.sections.developer' => 'РАЗРАБОТЧИК',
			'settings.editProfile.title' => 'Редактировать профиль',
			'settings.editProfile.subtitle' => 'Обновите вашу личную информацию',
			'settings.language.title' => 'Язык',
			'settings.language.subtitle' => 'Выберите предпочитаемый язык',
			'settings.language.searchHint' => 'Поиск языков...',
			'settings.language.noResults' => 'Результатов не найдено',
			'settings.heightUnit.title' => 'Единица измерения роста',
			'settings.weightUnit.title' => 'Единица измерения веса',
			'settings.mealReminders.title' => 'Напоминания о приёмах пищи',
			'settings.mealReminders.subtitle' => 'Оставайтесь на правильном пути с своевременными оповещениями',
			'settings.theme.title' => 'Тема',
			'settings.theme.subtitle' => 'Выберите вашу предпочтительную тему',
			'settings.theme.light' => 'Светлая',
			'settings.theme.dark' => 'Темная',
			'settings.theme.system' => 'Системная',
			'settings.sendFeedback.title' => 'Отправить отзыв',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Помогите нам улучшить ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Обратная связь по приложению ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Пожалуйста, предоставьте свой отзыв ниже:',
			'settings.sendFeedback.appVersion' => 'Версия приложения',
			'settings.sendFeedback.device' => 'Устройство',
			'settings.sendFeedback.osVersion' => 'Версия ОС',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Удалить все данные',
			'settings.clearAllData.subtitle' => 'Безвозвратно удалить всю вашу информацию',
			'settings.clearAllData.confirmationTitle' => 'Удалить все данные?',
			'settings.clearAllData.confirmationMessage' => 'Это действие нельзя будет отменить. Все ваши зарегистрированные приёмы пищи, любимые и настройки профиля будут навсегда удалены.',
			'settings.clearAllData.cancel' => 'Отмена',
			'settings.clearAllData.clearEverything' => 'Удалить всё',
			'settings.debugOptions.title' => 'Параметры отладки',
			'settings.developerModeEnabled' => 'Режим разработчика включён!',
			'reminders.title' => 'Оставайтесь на правильном пути с напоминаниями',
			'reminders.description' => 'Получайте лёгкие напоминания, чтобы записывать ваши приёмы пищи и оставаться последовательными с вашими целями питания',
			'reminders.notificationsEnabled' => 'Уведомления включены',
			'reminders.notificationsDisabled' => 'Уведомления отключены',
			'reminders.enabledSubtitle' => 'Вы будете получать напоминания о приёмах пищи',
			'reminders.disabledSubtitle' => 'Включите уведомления, чтобы получать напоминания о приёмах пищи',
			'reminders.mealReminders' => 'Напоминания о приёмах пищи',
			'reminders.breakfast' => 'Завтрак',
			'reminders.lunch' => 'Обед',
			'reminders.dinner' => 'Ужин',
			'reminders.snack' => 'Перекус',
			'reminders.unknown' => 'Неизвестно',
			'reminders.change' => 'Изменить',
			'reminders.enableNotifications' => 'Включить уведомления',
			'reminders.skipForNow' => 'Пропустить на данный момент',
			'reminders.saveChanges' => 'Сохранить изменения',
			'reminders.enabledSuccessfully' => 'Уведомления успешно включены!',
			'reminders.permissionDenied' => 'Разрешение на уведомления запрещено',
			'reminders.errorEnabling' => ({required Object error}) => 'Ошибка при включении уведомлений: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Ошибка при завершении настройки: ${error}',
			'notifications.breakfast.title' => 'Время завтрака! 🍳',
			'notifications.breakfast.body' => 'Не забудьте записать свой завтрак',
			'notifications.lunch.title' => 'Время обеда! 🥗',
			'notifications.lunch.body' => 'Пора записывать ваш обед',
			'notifications.dinner.title' => 'Время ужина! 🍽️',
			'notifications.dinner.body' => 'Не забудьте записать свой ужин',
			'notifications.snack.title' => 'Время перекуса! 🍎',
			'notifications.snack.body' => 'Время для здорового перекуса',
			'notifications.test.title' => 'Тестовое уведомление',
			'login.title' => 'Вход',
			'login.signInWithGoogle' => 'Войти с помощью Google',
			'login.signInFailed' => 'Вход в Google не удался или был отменён.',
			'disclaimer.pleaseNote' => 'Пожалуйста, обратите внимание',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} предоставляет оценочную информацию о питательных веществах. Точность зависит от ваших данных и вариаций пищи. Используйте как руководство, а не как окончательный источник. Проконсультируйтесь с профессионалом для получения индивидуальных рекомендаций по питанию.',
			'disclaimer.snap.portionSize.title' => 'Размер порции',
			'disclaimer.snap.portionSize.description' => 'Точность оценок сильно зависит от вашей правильной оценки размера порции.',
			'disclaimer.snap.preparationMethods.title' => 'Методы приготовления',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Методы приготовления могут значительно изменить питательную ценность пищи. Оценки ${appLabel} могут не всегда учитывать эти вариации.',
			'disclaimer.snap.ingredients.title' => 'Ингредиенты',
			'disclaimer.snap.ingredients.description' => 'Сложные блюда с множеством скрытых ингредиентов могут привести к менее точным оценкам.',
			'disclaimer.snap.databaseLimitations.title' => 'Ограничения базы данных',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'База данных продуктов ${appLabel} обширна, но может не включать каждый отдельный продукт или его вариации.',
			'disclaimer.weightEstimate.title' => 'Оценка веса',
			'disclaimer.weightEstimate.description' => 'Предполагаемое изменение веса является теоретической оценкой, основанной на простом принципе калории-входят против калории-выходят. Это предназначено исключительно для мотивационного руководства, а не как предсказание вашего фактического веса.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Точность калорий',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Эта оценка настолько точна, насколько точно отслеживается ваш калорийный ввод и расход. Неправильное ведение записей приведет к неверной оценке.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Биологические факторы',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Фактическая потеря/приобретение веса зависит от метаболизма, гормонов, сна, стресса, гидратации и других индивидуальных факторов, которые ${appLabel} не может измерить.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Водяной вес и колебания',
			'disclaimer.weightEstimate.waterWeight.description' => 'Повседневный вес может значительно колебаться из-за задержки воды, пищеварения и времени. Оценка не учитывает эти ежедневные изменения.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Профессиональные рекомендации',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Не используйте эту оценку для принятия медицинских решений. Всегда консультируйтесь с квалифицированным медицинским работником или зарегистрированным диетологом для получения персонализированных рекомендаций по управлению весом.',
			'common.close' => 'Закрыть',
			'common.kContinue' => 'Продолжить',
			'errors.loadingProfileData' => 'Ошибка загрузки данных профиля',
			'errors.somethingWentWrong' => 'Что-то пошло не так.',
			'debug.title' => 'Опции отладки',
			'debug.sections.notifications' => 'Уведомления',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.appInfo' => 'Информация о приложении',
			'debug.showActiveNotifications' => 'Показать активные уведомления',
			'debug.scheduleTestNotification' => 'Запланировать тестовое уведомление (10с)',
			'debug.triggerBreakfastNotification' => 'Сигнализировать о завтраке',
			'debug.cancelAllNotifications' => 'Отменить все уведомления',
			'debug.activeNotifications' => 'Активные уведомления',
			'debug.noTitle' => 'Нет названия',
			'debug.noBody' => 'Нет тела',
			'debug.fetchTodaysSteps' => 'Получить шаги за сегодня',
			'debug.fetchTodaysCalories' => 'Получить калории за сегодня',
			'debug.fetchLatestWeight' => 'Получить последний вес',
			'debug.fetchLatestHeight' => 'Получить последний рост',
			'debug.writeTestWeight' => 'Записать тестовый вес (70кг)',
			'debug.writeTestHeight' => 'Записать тестовый рост (175см)',
			'debug.syncLast7Days' => 'Синхронизировать за последние 7 дней',
			'debug.sync7DaysTitle' => 'Синхронизация за 7 дней',
			'debug.checkCurrentLocale' => 'Проверить текущую локализацию',
			'debug.currentLocale' => 'Текущая локализация',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Язык: ${languageCode}\nСтрана: ${countryCode}\nСистема единиц: ${unitSystem}',
			'debug.latestWeight' => 'Последний вес',
			'debug.latestHeight' => 'Последний рост',
			'debug.todaysCalories' => 'Калории за сегодня',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Всего сожжённых калорий: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Успешно получено ${count} данных за последние 7 дней по шагам, калориям и весу.',
			'debug.noWeightData' => 'Данные о весе не найдены за последние 30 дней.',
			'debug.noHeightData' => 'Данные о росте не найдены за последний год.',
			'debug.noCalorieData' => 'Данные о калориях не найдены за сегодня.',
			'debug.weightWritten' => 'Тестовый вес (70кг) успешно записан.',
			'debug.weightWriteFailed' => 'Не удалось записать тестовый вес.',
			'debug.heightWritten' => 'Тестовый рост (175см) успешно записан.',
			'debug.heightWriteFailed' => 'Не удалось записать тестовый рост.',
			'debug.noNotifications' => 'Нет активных уведомлений.',
			'debug.testNotificationScheduled' => 'Тестовое уведомление запланировано на 10 секунд с этого момента.',
			'debug.testNotificationBody' => 'Это тестовое уведомление, запланированное на 10 секунд с этого момента.',
			'debug.breakfastNotificationTriggered' => 'Сигнализация о завтраке активирована.',
			'debug.allNotificationsCancelled' => 'Все уведомления отменены.',
			'debug.fetchingData' => 'Получение данных за последние 7 дней...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'Не удалось синхронизироваться с Health Connect',
			'health.mealSynced' => 'Приём пищи синхронизирован с Health Connect',
			_ => null,
		};
	}
}
