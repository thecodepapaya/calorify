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
class TranslationsRu extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Русский';
	@override String get flag => '🇷🇺';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$ru errors = _Translations$errors$ru._(_root);
	@override late final _Translations$onboarding$ru onboarding = _Translations$onboarding$ru._(_root);
	@override late final _Translations$tabs$ru tabs = _Translations$tabs$ru._(_root);
	@override late final _Translations$home$ru home = _Translations$home$ru._(_root);
	@override late final _Translations$history$ru history = _Translations$history$ru._(_root);
	@override late final _Translations$meal$ru meal = _Translations$meal$ru._(_root);
	@override late final _Translations$favorites$ru favorites = _Translations$favorites$ru._(_root);
	@override late final _Translations$profile$ru profile = _Translations$profile$ru._(_root);
	@override late final _Translations$healthScore$ru healthScore = _Translations$healthScore$ru._(_root);
	@override late final _Translations$editProfile$ru editProfile = _Translations$editProfile$ru._(_root);
	@override late final _Translations$settings$ru settings = _Translations$settings$ru._(_root);
	@override late final _Translations$reminders$ru reminders = _Translations$reminders$ru._(_root);
	@override late final _Translations$notifications$ru notifications = _Translations$notifications$ru._(_root);
	@override late final _Translations$login$ru login = _Translations$login$ru._(_root);
	@override late final _Translations$disclaimer$ru disclaimer = _Translations$disclaimer$ru._(_root);
	@override late final _Translations$localNutritionPhase4$ru localNutritionPhase4 = _Translations$localNutritionPhase4$ru._(_root);
	@override late final _Translations$watch$ru watch = _Translations$watch$ru._(_root);
	@override late final _Translations$common$ru common = _Translations$common$ru._(_root);
	@override late final _Translations$feedbackRating$ru feedbackRating = _Translations$feedbackRating$ru._(_root);
	@override late final _Translations$health$ru health = _Translations$health$ru._(_root);
}

// Path: errors
class _Translations$errors$ru extends Translations$errors$en {
	_Translations$errors$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Вы сделали слишком много запросов. Пожалуйста, подождите немного и попробуйте снова.';
	@override String get networkError => 'Ошибка сети. Пожалуйста, проверьте подключение к интернету.';
	@override String get unknownError => 'Что-то пошло не так. Пожалуйста, попробуйте позже.';
	@override String get loadingProfileData => 'Ошибка загрузки данных профиля';
	@override String get somethingWentWrong => 'Что-то пошло не так.';
	@override String get retry => 'Повторить';
}

// Path: onboarding
class _Translations$onboarding$ru extends Translations$onboarding$en {
	_Translations$onboarding$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Добро пожаловать в ${appLabel}';
	@override String get subtitle => 'Ваш персональный помощник по питанию на базе AI';
	@override String get getStarted => 'Начать';
	@override late final _Translations$onboarding$features$ru features = _Translations$onboarding$features$ru._(_root);
	@override late final _Translations$onboarding$gender$ru gender = _Translations$onboarding$gender$ru._(_root);
	@override late final _Translations$onboarding$height$ru height = _Translations$onboarding$height$ru._(_root);
	@override late final _Translations$onboarding$weight$ru weight = _Translations$onboarding$weight$ru._(_root);
	@override late final _Translations$onboarding$age$ru age = _Translations$onboarding$age$ru._(_root);
	@override late final _Translations$onboarding$bmiScale$ru bmiScale = _Translations$onboarding$bmiScale$ru._(_root);
	@override late final _Translations$onboarding$weightGoal$ru weightGoal = _Translations$onboarding$weightGoal$ru._(_root);
	@override late final _Translations$onboarding$activityLevel$ru activityLevel = _Translations$onboarding$activityLevel$ru._(_root);
	@override late final _Translations$onboarding$healthConnect$ru healthConnect = _Translations$onboarding$healthConnect$ru._(_root);
	@override late final _Translations$onboarding$reinforcement$ru reinforcement = _Translations$onboarding$reinforcement$ru._(_root);
}

// Path: tabs
class _Translations$tabs$ru extends Translations$tabs$en {
	_Translations$tabs$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Панель';
	@override String get history => 'История';
}

// Path: home
class _Translations$home$ru extends Translations$home$en {
	_Translations$home$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$ru aiSummary = _Translations$home$aiSummary$ru._(_root);
	@override late final _Translations$home$dailyGoal$ru dailyGoal = _Translations$home$dailyGoal$ru._(_root);
	@override late final _Translations$home$dailySummary$ru dailySummary = _Translations$home$dailySummary$ru._(_root);
	@override late final _Translations$home$intakeProgress$ru intakeProgress = _Translations$home$intakeProgress$ru._(_root);
	@override late final _Translations$home$intakeHistory$ru intakeHistory = _Translations$home$intakeHistory$ru._(_root);
	@override late final _Translations$home$mealLog$ru mealLog = _Translations$home$mealLog$ru._(_root);
	@override late final _Translations$home$mealDescription$ru mealDescription = _Translations$home$mealDescription$ru._(_root);
	@override late final _Translations$home$favoriteMeals$ru favoriteMeals = _Translations$home$favoriteMeals$ru._(_root);
	@override late final _Translations$home$mealSnap$ru mealSnap = _Translations$home$mealSnap$ru._(_root);
	@override late final _Translations$home$connectHealth$ru connectHealth = _Translations$home$connectHealth$ru._(_root);
}

// Path: history
class _Translations$history$ru extends Translations$history$en {
	_Translations$history$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Нет записанных приёмов пищи';
	@override String get emptyMessage => 'Сфотографируйте последний приём пищи, чтобы записать его здесь.';
	@override String get today => 'Сегодня';
	@override String get yesterday => 'Вчера';
}

// Path: meal
class _Translations$meal$ru extends Translations$meal$en {
	_Translations$meal$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Ох нет!';
	@override String get delete => 'Удалить';
	@override String get editMeal => 'Редактировать приём';
	@override String get addMeal => 'Добавить приём';
	@override String get saveMeal => 'Сохранить приём';
	@override String get save => 'Сохранить';
	@override String get mealName => 'Название блюда';
	@override String get mealNameHint => 'например, Омлет с тостом';
	@override String get nameRequired => 'Введите название приёма пищи перед сохранением.';
	@override String get mealQuantity => 'Количество';
	@override String get mealQuantityHint => 'например, 1 миска, 2 ломтика';
	@override String get timeOfMeal => 'Время приёма';
	@override String get timeOfMealHint => 'Выберите время приёма пищи';
	@override String get mealType => 'Тип приёма';
	@override late final _Translations$meal$nutrition$ru nutrition = _Translations$meal$nutrition$ru._(_root);
	@override late final _Translations$meal$deleteConfirmation$ru deleteConfirmation = _Translations$meal$deleteConfirmation$ru._(_root);
	@override String get addedToLog => 'Блюдо добавлено в журнал!';
	@override String couldNotAdd({required Object error}) => 'Не удалось добавить блюдо: ${error}';
	@override String get savedSuccessfully => 'Блюдо успешно добавлено!';
	@override String get updatedSuccessfully => 'Блюдо успешно обновлено!';
	@override String errorSaving({required Object error}) => 'Ошибка при сохранении блюда: ${error}';
	@override String get removedFromFavorites => 'Удалено из избранного!';
	@override String get savedAsFavorite => 'Блюдо сохранено в избранном!';
	@override String get unfavorite => 'Убрать из избранного';
	@override String couldNotUpdateFavorite({required Object error}) => 'Не удалось обновить избранное: ${error}';
	@override String get feedbackThanks => 'Спасибо за отзыв!';
	@override String get reanalysisUpdated => 'Анализ блюда обновлён с учётом вашего отзыва.';
	@override String failedToProcess({required Object error}) => 'Не удалось обработать: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Не удалось обработать изображение: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Ошибка сжатия изображения: ${error}';
	@override String get failedToSave => 'Не удалось сохранить данные. Пожалуйста, попробуйте снова.';
	@override String get skip => 'Пропустить';
	@override late final _Translations$meal$questionFlow$ru questionFlow = _Translations$meal$questionFlow$ru._(_root);
	@override late final _Translations$meal$analysis$ru analysis = _Translations$meal$analysis$ru._(_root);
	@override late final _Translations$meal$localInference$ru localInference = _Translations$meal$localInference$ru._(_root);
	@override late final _Translations$meal$feedback$ru feedback = _Translations$meal$feedback$ru._(_root);
}

// Path: favorites
class _Translations$favorites$ru extends Translations$favorites$en {
	_Translations$favorites$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Избранное';
	@override String get empty => 'Пока нет избранных блюд.';
	@override String get searchPlaceholder => 'Поиск в избранном';
	@override String get searchEmptyTitle => 'Ничего не найдено в избранном';
	@override String get searchEmptySubtitle => 'Попробуйте другое название блюда, количество или тип приёма.';
	@override String get sortLabel => 'Сортировка избранного';
	@override String get undo => 'Отменить';
	@override String removed({required Object name}) => 'Удалено ${name} из избранного';
	@override late final _Translations$favorites$sortOptions$ru sortOptions = _Translations$favorites$sortOptions$ru._(_root);
}

// Path: profile
class _Translations$profile$ru extends Translations$profile$en {
	_Translations$profile$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профиль';
	@override String get noProfileData => 'Данные профиля не найдены';
	@override String get yourProfile => 'Ваш профиль';
	@override String get viewAndManage => 'Просмотр и управление информацией о здоровье';
	@override late final _Translations$profile$sections$ru sections = _Translations$profile$sections$ru._(_root);
	@override String get gender => 'Пол';
	@override String get height => 'Рост';
	@override String get weight => 'Вес';
	@override String get age => 'Возраст';
	@override String get weightGoal => 'Цель по весу';
	@override String get targetWeight => 'Целевой вес';
	@override String get activityLevel => 'Уровень активности';
	@override String get healthMetrics => 'Показатели здоровья';
	@override String get notSet => 'Не задано';
	@override String get years => 'лет';
	@override String get updatedSuccessfully => 'Профиль успешно обновлён!';
	@override late final _Translations$profile$calculatedValues$ru calculatedValues = _Translations$profile$calculatedValues$ru._(_root);
}

// Path: healthScore
class _Translations$healthScore$ru extends Translations$healthScore$en {
	_Translations$healthScore$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Индекс здоровья';
	@override String get whyThisScore => 'Почему такой балл?';
	@override String get note => 'Этот показатель — оценка AI на основе распознанных ингредиентов и пищевой ценности. Всегда консультируйтесь со специалистом для персональных рекомендаций.';
	@override String get unhealthy => 'Нездорово';
	@override String get healthy => 'Здорово';
	@override String get neutral => 'Нейтрально';
}

// Path: editProfile
class _Translations$editProfile$ru extends Translations$editProfile$en {
	_Translations$editProfile$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редактировать профиль';
	@override late final _Translations$editProfile$sections$ru sections = _Translations$editProfile$sections$ru._(_root);
	@override String get gender => 'Пол';
	@override String get dateOfBirth => 'Дата рождения';
	@override String get height => 'Рост';
	@override String get weight => 'Вес';
	@override String get weightGoal => 'Цель по весу';
	@override String get activityLevel => 'Уровень активности';
	@override String get metric => 'Метрическая';
	@override String get imperial => 'Имперская';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'фунты';
	@override String get metricCm => 'Метрическая (cm)';
	@override String get imperialFtIn => 'Имперская (ft/in)';
	@override String get metricKg => 'Метрическая (kg)';
	@override String get imperialLbs => 'Имперская (lbs)';
	@override late final _Translations$editProfile$genders$ru genders = _Translations$editProfile$genders$ru._(_root);
	@override late final _Translations$editProfile$weightGoals$ru weightGoals = _Translations$editProfile$weightGoals$ru._(_root);
	@override late final _Translations$editProfile$activityLevels$ru activityLevels = _Translations$editProfile$activityLevels$ru._(_root);
}

// Path: settings
class _Translations$settings$ru extends Translations$settings$en {
	_Translations$settings$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Настройки';
	@override late final _Translations$settings$sections$ru sections = _Translations$settings$sections$ru._(_root);
	@override late final _Translations$settings$editProfile$ru editProfile = _Translations$settings$editProfile$ru._(_root);
	@override late final _Translations$settings$language$ru language = _Translations$settings$language$ru._(_root);
	@override late final _Translations$settings$heightUnit$ru heightUnit = _Translations$settings$heightUnit$ru._(_root);
	@override late final _Translations$settings$weightUnit$ru weightUnit = _Translations$settings$weightUnit$ru._(_root);
	@override late final _Translations$settings$mealReminders$ru mealReminders = _Translations$settings$mealReminders$ru._(_root);
	@override late final _Translations$settings$localInference$ru localInference = _Translations$settings$localInference$ru._(_root);
	@override late final _Translations$settings$theme$ru theme = _Translations$settings$theme$ru._(_root);
	@override late final _Translations$settings$sendFeedback$ru sendFeedback = _Translations$settings$sendFeedback$ru._(_root);
	@override late final _Translations$settings$exportMealHistory$ru exportMealHistory = _Translations$settings$exportMealHistory$ru._(_root);
	@override late final _Translations$settings$clearAllData$ru clearAllData = _Translations$settings$clearAllData$ru._(_root);
	@override late final _Translations$settings$debugOptions$ru debugOptions = _Translations$settings$debugOptions$ru._(_root);
	@override String get developerModeEnabled => 'Режим разработчика включён!';
	@override late final _Translations$settings$healthConnect$ru healthConnect = _Translations$settings$healthConnect$ru._(_root);
	@override late final _Translations$settings$about$ru about = _Translations$settings$about$ru._(_root);
	@override late final _Translations$settings$appInfo$ru appInfo = _Translations$settings$appInfo$ru._(_root);
}

// Path: reminders
class _Translations$reminders$ru extends Translations$reminders$en {
	_Translations$reminders$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оставайтесь в графике с напоминаниями';
	@override String get description => 'Получайте мягкие напоминания записывать приёмы пищи и поддерживать последовательность в достижении целей по питанию';
	@override String get notificationsEnabled => 'Уведомления включены';
	@override String get notificationsDisabled => 'Уведомления отключены';
	@override String get enabledSubtitle => 'Вы будете получать напоминания о приёмах пищи';
	@override String get disabledSubtitle => 'Включите уведомления, чтобы получать напоминания о приёмах пищи';
	@override String get mealReminders => 'Напоминания о приёмах';
	@override String get breakfast => 'Завтрак';
	@override String get lunch => 'Обед';
	@override String get dinner => 'Ужин';
	@override String get snack => 'Перекус';
	@override String get unknown => 'Неизвестно';
	@override String get change => 'Изменить';
	@override String get enableNotifications => 'Включить уведомления';
	@override String get skipForNow => 'Пропустить';
	@override String get saveChanges => 'Сохранить';
	@override String get enabledSuccessfully => 'Уведомления успешно включены!';
	@override String get permissionDenied => 'Разрешение на уведомления отклонено';
	@override String errorEnabling({required Object error}) => 'Ошибка при включении уведомлений: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Ошибка при завершении настройки: ${error}';
}

// Path: notifications
class _Translations$notifications$ru extends Translations$notifications$en {
	_Translations$notifications$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$ru breakfast = _Translations$notifications$breakfast$ru._(_root);
	@override late final _Translations$notifications$lunch$ru lunch = _Translations$notifications$lunch$ru._(_root);
	@override late final _Translations$notifications$dinner$ru dinner = _Translations$notifications$dinner$ru._(_root);
	@override late final _Translations$notifications$snack$ru snack = _Translations$notifications$snack$ru._(_root);
	@override late final _Translations$notifications$test$ru test = _Translations$notifications$test$ru._(_root);
}

// Path: login
class _Translations$login$ru extends Translations$login$en {
	_Translations$login$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вход';
	@override String get signInWithGoogle => 'Войти через Google';
	@override String get signInFailed => 'Вход через Google не удался или был отменён.';
}

// Path: disclaimer
class _Translations$disclaimer$ru extends Translations$disclaimer$en {
	_Translations$disclaimer$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Обратите внимание';
	@override late final _Translations$disclaimer$snap$ru snap = _Translations$disclaimer$snap$ru._(_root);
	@override late final _Translations$disclaimer$weightEstimate$ru weightEstimate = _Translations$disclaimer$weightEstimate$ru._(_root);
	@override late final _Translations$disclaimer$healthMetrics$ru healthMetrics = _Translations$disclaimer$healthMetrics$ru._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$ru calorieExpenditure = _Translations$disclaimer$calorieExpenditure$ru._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$ru extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get portionSmaller => 'Меньше';
	@override String get portionEstimated => 'Расчётная';
	@override String get portionLarger => 'Больше';
	@override String portionQuestion({required Object ingredient}) => 'Какая порция была ближе всего для ${ingredient}?';
	@override String get mealTypeQuestion => 'Какой это был приём пищи?';
	@override String get localNutritionTip => 'Рассчитано по проверенным локальным данным о питании.';
	@override String get offlineNutritionTitle => 'Скачать данные о питании';
	@override String get offlineNutritionSubtitle => 'Используйте проверенные строки USDA и детерминированный расчёт на этом устройстве, когда учтены все ингредиенты.';
	@override String get offlineNutritionUnavailable => 'Локальные данные о питании недоступны для этой версии приложения.';
	@override String get offlineNutritionNotDownloaded => 'Проверенный пакет данных о питании не загружен.';
	@override String get offlineNutritionInstalling => 'Загрузка и проверка данных о питании…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Пакет ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} строк USDA в кэше · ${size}';
	@override String get offlineNutritionUpdate => 'Проверить обновления';
	@override String get offlineNutritionClear => 'Очистить локальные данные о питании';
	@override String get offlineNutritionClearTitle => 'Очистить локальные данные о питании?';
	@override String get offlineNutritionClearBody => 'Будут удалены загруженный пакет USDA и кэш поиска. Записанные приёмы пищи сохранят точный снимок пищевой ценности, использованный при сохранении.';
	@override String get offlineNutritionClearConfirm => 'Очистить данные';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Не удалось скачать и проверить локальные данные о питании: ${error}';
	@override String get offlineNutritionCleared => 'Локальные данные о питании очищены';
}

// Path: watch
class _Translations$watch$ru extends Translations$watch$en {
	_Translations$watch$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$ru common = _Translations$watch$common$ru._(_root);
	@override late final _Translations$watch$nutrition$ru nutrition = _Translations$watch$nutrition$ru._(_root);
	@override late final _Translations$watch$sync$ru sync = _Translations$watch$sync$ru._(_root);
	@override late final _Translations$watch$home$ru home = _Translations$watch$home$ru._(_root);
	@override late final _Translations$watch$history$ru history = _Translations$watch$history$ru._(_root);
	@override late final _Translations$watch$favorites$ru favorites = _Translations$watch$favorites$ru._(_root);
	@override late final _Translations$watch$meal$ru meal = _Translations$watch$meal$ru._(_root);
	@override late final _Translations$watch$voice$ru voice = _Translations$watch$voice$ru._(_root);
	@override late final _Translations$watch$result$ru result = _Translations$watch$result$ru._(_root);
}

// Path: common
class _Translations$common$ru extends Translations$common$en {
	_Translations$common$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Бета';
	@override String get close => 'Закрыть';
	@override String get kContinue => 'Продолжить';
}

// Path: feedbackRating
class _Translations$feedbackRating$ru extends Translations$feedbackRating$en {
	_Translations$feedbackRating$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Нравится ${appLabel}?';
	@override String get yes => 'Да, мне нравится';
	@override String get no => 'Не очень';
	@override String get rateStepHeading => 'Оцените в Play Store';
	@override String get emailStepHeading => 'Отправьте отзыв по почте';
	@override String soloDevMessage({required Object appLabel}) => 'Быстрая оценка помогает другим найти ${appLabel} и поддерживает развитие. Оставите пару слов?';
	@override String get shareFeedbackViaEmail => 'Ваш отзыв формирует дальнейшее развитие — мы читаем каждое сообщение. Хотите поделиться мыслями по электронной почте?';
	@override String get rateCta => 'Оценить в Play Store';
	@override String get maybeLater => 'Может позже';
	@override String get sendFeedback => 'Отправить отзыв';
	@override String get noThanks => 'Нет, спасибо';
	@override String get aboutUsDescription => 'Создано с заботой небольшой командой. Мы ориентированы на приватность, простоту и помощь в формировании полезных привычек питания.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Интересно, кто стоит за ${appLabel}? Смотрите ';
	@override String get aboutUsLinkLabel => 'О нас';
	@override String get thankYouMessage => 'Спасибо! Мы спросим ещё раз позже.';
}

// Path: health
class _Translations$health$ru extends Translations$health$en {
	_Translations$health$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Не удалось синхронизировать с Health Connect';
	@override String get mealSynced => 'Приём пищи синхронизирован с Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$ru extends Translations$onboarding$features$en {
	_Translations$onboarding$features$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$ru foodRecognition = _Translations$onboarding$features$foodRecognition$ru._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$ru aiAnalysis = _Translations$onboarding$features$aiAnalysis$ru._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$ru healthIntegration = _Translations$onboarding$features$healthIntegration$ru._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$ru extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваш пол?';
	@override String get description => 'Пол помогает точно рассчитать ваш базальный уровень обмена веществ (BMR).';
	@override String get next => 'Далее';
}

// Path: onboarding.height
class _Translations$onboarding$height$ru extends Translations$onboarding$height$en {
	_Translations$onboarding$height$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Какой у вас рост?';
	@override String get description => 'Рост помогает точно рассчитать ваш BMI и потребности в энергии.';
	@override String get metric => 'Метрическая';
	@override String get imperial => 'Имперская';
	@override String get next => 'Далее';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$ru extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Какой у вас текущий вес?';
	@override String get currentDescription => 'Текущий вес важен для персонализации ваших ежедневных целей.';
	@override String get targetTitle => 'Какой ваш целевой вес?';
	@override String get targetDescription => 'Установка целевого веса помогает определить долгосрочный план.';
	@override String get metric => 'Метрическая';
	@override String get imperial => 'Имперская';
	@override String get next => 'Далее';
}

// Path: onboarding.age
class _Translations$onboarding$age$ru extends Translations$onboarding$age$en {
	_Translations$onboarding$age$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Когда у вас день рождения?';
	@override String get description => 'Возраст помогает нам точно рассчитать вашу потребность в калориях.';
	@override String get next => 'Далее';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$ru extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Ниже';
	@override String get healthy => 'Здоровый';
	@override String get overweight => 'Выше';
	@override String get obese => 'Ожирение';
	@override late final _Translations$onboarding$bmiScale$categories$ru categories = _Translations$onboarding$bmiScale$categories$ru._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$ru messages = _Translations$onboarding$bmiScale$messages$ru._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$ru extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Какая у вас цель?';
	@override String get description => 'Выберите цель, которая лучше всего описывает то, чего вы хотите достичь';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$ru extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Насколько вы активны?';
	@override String get description => 'Это помогает точнее рассчитать ваши ежедневные потребности в калориях';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$ru extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Подключитесь к Health Connect';
	@override String get description => 'Используйте сожжённые калории в дневной цели и при желании делитесь записанными приёмами пищи с Health Connect.';
	@override String get overviewDescription => 'Используйте сожжённые калории в дневной цели и при желании делитесь записанными приёмами пищи с Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$ru automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$ru._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$ru caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$ru._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$ru progressInsights = _Translations$onboarding$healthConnect$progressInsights$ru._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$ru shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$ru._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$ru seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$ru._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$ru userControl = _Translations$onboarding$healthConnect$userControl$ru._(_root);
	@override String get connected => 'Health Connect подключён';
	@override String get notConnected => 'Health Connect не подключён';
	@override String get setup => 'Настроить Health Connect';
	@override String get skipForNow => 'Пропустить';
	@override String get statusConnected => 'Health Connect подключён.';
	@override String get statusSuccess => 'Health Connect успешно подключён!';
	@override String get statusNotConnected => 'Выберите функции Health Connect, которые хотите включить.';
	@override String get statusPartial => 'Health Connect подключён частично. Включите оставшееся разрешение, чтобы использовать обе функции.';
	@override String get statusProviderUpdateRequired => 'Установите или обновите Health Connect, чтобы продолжить.';
	@override String get statusUnavailable => 'Health Connect не поддерживается на этом устройстве.';
	@override String get installOrUpdate => 'Установить или обновить';
	@override String get manageAccess => 'Управлять доступом';
	@override String statusPermissionDenied({required Object appLabel}) => 'Доступ запрещён. Пожалуйста, включите разрешения Health Connect в настройках телефона для ${appLabel}.';
	@override String statusError({required Object error}) => 'Ошибка при настройке Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$ru extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$ru trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$ru._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$ru healthProfile = _Translations$onboarding$reinforcement$healthProfile$ru._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$ru goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$ru._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$ru extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваш AI‑обзор';
	@override String get logMore => 'Записывайте больше блюд в ближайшие дни, чтобы получить персональные AI‑выводы.';
	@override String get loading => 'Загрузка обзора...';
	@override String mealCount({required Object count}) => '${count} записанных приёмов пищи';
	@override String macroBalanceScore({required Object score}) => 'Оценка баланса ${score}';
	@override String get topFoods => 'Частые продукты';
	@override String get trendUp => 'Калории растут';
	@override String get trendDown => 'Калории снижаются';
	@override String get trendSteady => 'Калории стабильны';
	@override String generatedAt({required Object time}) => 'Обновлено ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$ru extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Установите суточную цель';
	@override String get titleSet => 'Ваша суточная цель';
	@override String get description => 'Готовы начать путь к благополучию? Установите суточную калорийную цель ниже, чтобы начать прогресс.';
	@override String get descriptionSet => 'Ваш курс задан! Это ваша суточная калорийная цель.';
	@override String get yourGoal => 'Ваша цель';
	@override String get goal => 'Цель';
	@override String get dailyCalories => 'Ежедневные калории (kcal)';
	@override String get setGoal => 'Установить цель';
	@override String get intake => 'Потреблено';
	@override String get burned => 'Сожжено';
	@override String get weightImpact => 'Влияние на вес';
	@override String get estLoss => 'Прогноз. потеря';
	@override String get estGain => 'Прогноз. набор';
	@override String get kcal => 'ккал';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$ru extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ежедневная сводка';
	@override String get calories => 'Калории';
	@override String get carbs => 'Углеводы';
	@override String get protein => 'Белки';
	@override String get fat => 'Жиры';
	@override String get fiber => 'Клетчатка';
	@override String get grams => 'граммы';
	@override String get chartAccessibilityLabel => 'График макроэлементов';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$ru extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сегодняшнее распределение макроэлементов';
	@override String get target => 'Цель';
	@override String get current => 'Текущее';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$ru extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'История макроэлементов за 7 дней';
	@override String get trendTitle => 'Тенденция за сегодня';
	@override String peakHour({required Object hour}) => 'Пик: ${hour}:00';
	@override String get noHistoryYet => 'Пока нет данных';
	@override String get startLogging => 'Начните записывать приёмы пищи, чтобы увидеть\nтут 7‑дневные макро‑тенденции';
}

// Path: home.mealLog
class _Translations$home$mealLog$ru extends Translations$home$mealLog$en {
	_Translations$home$mealLog$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Записи приёмов пищи';
	@override String get emptyMessage => 'Сфотографируйте последний приём пищи, чтобы записать его здесь.';
	@override String get noMealsToday => 'Сегодня приёмы пищи не зафиксированы';
	@override String get seeAllMeals => 'Посмотреть все приёмы';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$ru extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Быстро добавить с AI';
	@override String get description => 'Опишите приём пищи, и AI подготовит детали.';
	@override String get hint => 'например: На завтрак у меня была большая миска овсянки с бананом и порцией сывороточного протеина ...';
	@override String get analyzeMeal => 'Проанализировать блюдо';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$ru extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Избранное';
	@override String get description => 'Быстро добавляйте любимые блюда.';
	@override String get noFavorites => 'Пока нет избранных блюд.';
	@override String get addFavoriteHint => 'Нажмите на звезду у блюда, чтобы добавить в избранное.';
	@override String get seeAll => 'Посмотреть все';
	@override String get add => 'Добавить';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$ru extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сфотографируйте и зафиксируйте блюдо';
	@override String get description => 'Используйте камеру, чтобы снять еду для AI‑анализа.';
	@override String get openCamera => 'Открыть камеру';
	@override String get gallery => 'Галерея';
	@override String get compressingPhoto => 'Оптимизация фото…';
	@override String get uploadingPhoto => 'Загрузка фото…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$ru extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Синхронизировать с Health Connect';
	@override String get description => 'Используйте сожжённые калории в своей цели и делитесь записями о питании';
	@override String get install => 'Установить или обновить';
	@override String get dataUseDescription => 'Используйте сожжённые калории в своей цели и делитесь записями о питании';
	@override String get installOrUpdate => 'Установить или обновить';
	@override String get connect => 'Подключить';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$ru extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Калории';
	@override String get carbs => 'Углеводы (г)';
	@override String get protein => 'Белки (г)';
	@override String get fat => 'Жиры (г)';
	@override String get fiber => 'Клетчатка (г)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$ru extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Удалить приём';
	@override String get message => 'Вы уверены, что хотите удалить эту запись?';
	@override String get cancel => 'Отмена';
	@override String get delete => 'Удалить';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$ru extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Вопрос ${current} из ${total}';
	@override String get noQuestionsAvailable => 'Вопросов нет';
	@override String get next => 'Далее';
	@override String get continueLabel => 'Продолжить';
	@override String get countQuestion => 'Выберите количество';
	@override String get itemSizeQuestion => 'Выберите размер продукта';
	@override String get portionSizeQuestion => 'Выберите размер порции';
	@override String get option6plus => '6 или больше';
	@override String get optionSmall => 'Маленький';
	@override String get optionRegular => 'Обычный';
	@override String get optionLarge => 'Большой';
	@override String get optionThin => 'Тонкий';
	@override String get optionThick => 'Толстый';
	@override String get optionMini => 'Мини';
	@override String get optionStuffed => 'С начинкой';
	@override String get optionHeavy => 'Тяжелый';
	@override String get optionSmaller => 'Меньше';
	@override String get optionTypical => 'Типичный';
	@override String get optionLarger => 'Больше';
}

// Path: meal.analysis
class _Translations$meal$analysis$ru extends Translations$meal$analysis$en {
	_Translations$meal$analysis$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Анализируем ваше блюдо';
	@override String get stepStarted => 'Начинаем…';
	@override String get stepDecomposition => 'Разбираем блюдо…';
	@override String get stepIngredients => 'Сопоставляем ингредиенты с данными о питании…';
	@override String get stepUncertainty => 'Проверяем уверенность…';
	@override String get stepMealTypeQuestion => 'Почти готово…';
	@override String get stepResult => 'Формируем результат…';
	@override String get stepError => 'Что‑то пошло не так';
	@override String get noFoodTip => 'Еда не обнаружена. Попробуйте другое фото или описание.';
	@override String get stepDefault => 'Анализируем ваше блюдо…';
	@override String get progressUnderstand => 'Понимание блюда';
	@override String get progressMatch => 'Поиск питания ингредиентов';
	@override String get progressCheck => 'Проверка порций и уверенности';
	@override String get progressMealType => 'Выбор типа приёма';
	@override String get progressFinish => 'Расчёт калорий и макроэлементов';
	@override String get detectedIngredientHeading => 'Ингредиенты, которые мы видим';
	@override String ingredientsOverflow({required Object count}) => 'ещё ${count}';
	@override String ingredientsLine({required Object count}) => 'Найдено ${count} ингредиентов';
	@override String get ingredientsPending => 'Сканирование ингредиентов…';
	@override String mealPreviewDescription({required Object text}) => '«${text}»';
	@override String get offlineTip0 => 'Совет: регулярность важнее идеала — регулярные записи показывают полезные закономерности.';
	@override String get offlineTip1 => 'Совет: для фото используйте естественный свет и вид сверху — это помогает точнее оценить порции.';
	@override String get offlineTip2 => 'Совет: указывайте напитки, соусы и масло для жарки — они часто добавляют калории, которые забывают учесть.';
	@override String get offlineTip3 => 'Совет: быстрая заметка о порции (1 миска, большой кофе) делает оценки значительно точнее.';
	@override String get offlineTip4 => 'Совет: запись после еды всё ещё формирует привычку; совершенство не обязательно.';
	@override String get offlineTip5 => 'Совет: указывайте способ приготовления, когда он сильно влияет на калории (жареное vs запечённое).';
}

// Path: meal.localInference
class _Translations$meal$localInference$ru extends Translations$meal$localInference$en {
	_Translations$meal$localInference$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Проверка распознанных ингредиентов';
	@override String get reviewSubtitle => 'Данные были обработаны на вашем устройстве. Исправьте названия или порции перед расчетом питательной ценности.';
	@override String get mealName => 'Название блюда';
	@override String get ingredient => 'Ингредиент';
	@override String get grams => 'Приблизительный вес (г)';
	@override String get removeIngredient => 'Удалить ингредиент';
	@override String get continueLabel => 'Продолжить';
	@override String get invalidProposal => 'Добавьте хотя бы один ингредиент и укажите положительное значение веса.';
	@override String get localUnavailable => 'Анализ на устройстве сейчас недоступен.';
}

// Path: meal.feedback
class _Translations$meal$feedback$ru extends Translations$meal$feedback$en {
	_Translations$meal$feedback$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Что не так?';
	@override String get subtitle => 'Помогите улучшить анализ — отметьте один или несколько пунктов.';
	@override String get tellUsMore => 'Расскажите подробнее';
	@override String get describeIncorrect => 'Опишите, что было неверно';
	@override String get submit => 'Отправить';
	@override String get issueFoodIdentification => 'Идентификация еды';
	@override String get issuePortionSize => 'Размер порции';
	@override String get issueCalorieDistribution => 'Распределение калорий';
	@override String get issueMacrosWrong => 'Неправильные макроэлементы';
	@override String get issueMissingItems => 'Отсутствующие позиции';
	@override String get issueExtraItems => 'Лишние позиции';
	@override String get issueOther => 'Другое';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$ru extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Недавние';
	@override String get calories => 'Калории';
	@override String get alphabetical => 'A‑Z';
}

// Path: profile.sections
class _Translations$profile$sections$ru extends Translations$profile$sections$en {
	_Translations$profile$sections$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ПРОФИЛЬ';
	@override String get basicInformation => 'ОСНОВНЫЕ ДАННЫЕ';
	@override String get goalsAndActivity => 'ЦЕЛИ И АКТИВНОСТЬ';
	@override String get calculatedValues => 'РАСЧЁТНЫЕ ПОКАЗАТЕЛИ';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$ru extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Суточная цель';
	@override String get calPerDay => 'кал/день';
	@override String get notAvailable => 'Н/Д';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$ru extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ЛИЧНЫЕ ДАННЫЕ';
	@override String get physicalMeasurements => 'ФИЗИЧЕСКИЕ ПОКАЗАТЕЛИ';
	@override String get goalsAndActivity => 'ЦЕЛИ И АКТИВНОСТЬ';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$ru extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get male => 'Мужской';
	@override String get female => 'Женский';
	@override String get other => 'Другое';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$ru extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$ru loseWeight = _Translations$editProfile$weightGoals$loseWeight$ru._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$ru maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$ru._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$ru gainWeight = _Translations$editProfile$weightGoals$gainWeight$ru._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$ru extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$ru sedentary = _Translations$editProfile$activityLevels$sedentary$ru._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$ru lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$ru._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$ru moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$ru._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$ru veryActive = _Translations$editProfile$activityLevels$veryActive$ru._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$ru extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$ru._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$ru extends Translations$settings$sections$en {
	_Translations$settings$sections$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ПРОФИЛЬ';
	@override String get localization => 'ЛОКАЛИЗАЦИЯ';
	@override String get notifications => 'УВЕДОМЛЕНИЯ';
	@override String get healthConnect => 'ПОДКЛЮЧЕНИЕ HEALTH CONNECT';
	@override String get localInference => 'АНАЛИЗ НА УСТРОЙСТВЕ';
	@override String get supportAndLegal => 'ПОДДЕРЖКА И ЮРИДИЧЕСКОЕ';
	@override String get about => 'О ПРОГРАММЕ';
	@override String get dangerZone => 'ОПАСНАЯ ЗОНА';
	@override String get developer => 'РАЗРАБОТЧИК';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$ru extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редактировать профиль';
	@override String get subtitle => 'Обновите личные данные';
}

// Path: settings.language
class _Translations$settings$language$ru extends Translations$settings$language$en {
	_Translations$settings$language$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Язык';
	@override String get subtitle => 'Выберите предпочитаемый язык';
	@override String get searchHint => 'Поиск языков...';
	@override String get noResults => 'Результаты не найдены';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$ru extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Единица роста';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$ru extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Единица веса';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$ru extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Напоминания о приёмах пищи';
	@override String get subtitle => 'Оставайтесь в графике с вовремя появляющимися уведомлениями';
}

// Path: settings.localInference
class _Translations$settings$localInference$ru extends Translations$settings$localInference$en {
	_Translations$settings$localInference$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Анализ блюд на устройстве';
	@override String get subtitle => 'Распознавание поддерживаемых блюд с помощью Gemini Nano перед расчетом питательной ценности';
	@override String get unavailable => 'Недоступно на этом устройстве';
	@override String get rolloutUnavailable => 'Подходящее оборудование найдено, но эта функция не включена для данной версии приложения';
	@override String get modelSetup => 'Gemini Nano должен завершить загрузку, прежде чем эту функцию можно будет включить';
	@override String get useLocalTitle => 'Использовать анализ на устройстве';
	@override String get useLocalSubtitle => 'Дополнительно, по умолчанию выключено. Результаты для сложных блюд могут быть менее точными.';
	@override String get disclosureTitle => 'Перед включением анализа на устройстве';
	@override String get disclosureBody => 'Gemini Nano может определять ингредиенты и оценивать порции на поддерживаемых устройствах Android. Проверенный вами список ингредиентов отправляется в Calorify для сопоставления с данными USDA и расчета.';
	@override String get disclosureLimit1 => 'Сложные блюда, скрытые ингредиенты и размеры порций могут быть определены неверно.';
	@override String get disclosureLimit2 => 'Модель может быть недоступна во время загрузки, при высокой нагрузке, в фоновом режиме или из-за ограничений устройства.';
	@override String get disclosureLimit3 => 'Если локальное распознавание не может быть завершено, эта бета-версия автоматически отправит исходное описание вашего блюда в Calorify для облачного анализа.';
	@override String get acknowledgement => 'Я понимаю, что должен проверять распознанные ингредиенты и порции.';
	@override String get enable => 'Подтвердить и включить';
	@override String get cancel => 'Отмена';
}

// Path: settings.theme
class _Translations$settings$theme$ru extends Translations$settings$theme$en {
	_Translations$settings$theme$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тема';
	@override String get light => 'Светлая';
	@override String get dark => 'Тёмная';
	@override String get system => 'Системная';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$ru extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Отправить отзыв';
	@override String subtitle({required Object appLabel}) => 'Помогите улучшить ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel}: отзыв о приложении';
	@override String get emailBodyPrefix => 'Пожалуйста, оставьте ваш отзыв ниже:';
	@override String get appVersion => 'Версия приложения';
	@override String get device => 'Устройство';
	@override String get osVersion => 'Версия ОС';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$ru extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Экспорт истории приёмов пищи';
	@override String get subtitle => 'Поделиться CSV с вашими записями';
	@override String get shareText => 'Экспорт истории приёмов пищи Calorify';
	@override String failed({required Object error}) => 'Не удалось экспортировать историю: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$ru extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Удалить все данные';
	@override String get subtitle => 'Удалить данные Calorify, сохранённые на этом устройстве';
	@override String get localOnlySubtitle => 'Удалить данные Calorify, сохранённые на этом устройстве';
	@override String get confirmationTitle => 'Удалить все данные?';
	@override String get confirmationMessage => 'Записи о питании, избранное и настройки профиля будут безвозвратно удалены с этого устройства. Приёмы пищи, уже отправленные в Health Connect, и доступ к Health Connect управляются отдельно в разделе Настройки > Health Connect.';
	@override String get localOnlyConfirmationMessage => 'Записи о питании, избранное и настройки профиля будут безвозвратно удалены с этого устройства. Приёмы пищи, уже отправленные в Health Connect, и доступ к Health Connect управляются отдельно в разделе Настройки > Health Connect.';
	@override String get cancel => 'Отмена';
	@override String get clearEverything => 'Удалить всё';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$ru extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Опции отладки';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$ru extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Просмотр и управление разрешениями';
	@override late final _Translations$settings$healthConnect$unavailable$ru unavailable = _Translations$settings$healthConnect$unavailable$ru._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$ru updateRequired = _Translations$settings$healthConnect$updateRequired$ru._(_root);
	@override late final _Translations$settings$healthConnect$permissions$ru permissions = _Translations$settings$healthConnect$permissions$ru._(_root);
	@override String get managePermissions => 'Управление разрешениями';
	@override String get openSettings => 'Открыть настройки Health Connect';
	@override String get disconnect => 'Отключить Health Connect';
	@override String get disconnectConfirmationTitle => 'Отключить Health Connect?';
	@override String get disconnectConfirmationMessage => 'Calorify потеряет доступ к Health Connect. Уже записанные туда данные удалены не будут.';
	@override String get disconnectConfirmationAction => 'Отключить';
	@override String get deleteSyncedMeals => 'Удалить приёмы пищи Calorify из Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Удалить синхронизированные приёмы пищи?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Удалить из Health Connect приёмы пищи, синхронизированные этой версией Calorify? Локальный журнал питания не изменится. Более ранние записи Calorify, возможно, потребуется удалить через раздел «Управление данными» в Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Удалить синхронизированные приёмы пищи';
	@override String get deleteSyncedMealsSuccess => 'Приёмы пищи Calorify удалены из Health Connect.';
	@override String get deleteSyncedMealsFailed => 'Не удалось удалить синхронизированные приёмы пищи. Повторите попытку.';
	@override String get connectionPartial => 'Некоторые функции Health Connect включены.';
	@override String get connectionComplete => 'Обе функции Health Connect включены.';
	@override String get actionFailed => 'Не удалось открыть Health Connect. Повторите попытку.';
	@override String get requestPermissions => 'Запросить разрешения';
	@override String get permissionRequestCancelledOrFailed => 'Запрос разрешений был отменён или не удался. Пожалуйста, попробуйте снова или предоставьте разрешения вручную в настройках Health Connect.';
	@override String get permissionRequestFailed => 'Не удалось запросить разрешения. Пожалуйста, попробуйте снова или предоставьте разрешения вручную в настройках Health Connect.';
	@override String get requestingPermissions => 'Запрос разрешений...';
}

// Path: settings.about
class _Translations$settings$about$ru extends Translations$settings$about$en {
	_Translations$settings$about$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'О программе';
	@override String get tagline => 'Быстро, бесплатно и с приоритетом приватности';
	@override late final _Translations$settings$about$ourStory$ru ourStory = _Translations$settings$about$ourStory$ru._(_root);
	@override late final _Translations$settings$about$privacy$ru privacy = _Translations$settings$about$privacy$ru._(_root);
	@override late final _Translations$settings$about$developer$ru developer = _Translations$settings$about$developer$ru._(_root);
	@override late final _Translations$settings$about$feedback$ru feedback = _Translations$settings$about$feedback$ru._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$ru extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify, версия ${version}';
	@override String build({required Object buildNumber}) => 'Сборка ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$ru extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время завтрака! 🍳';
	@override String get body => 'Не забудьте зафиксировать завтрак';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$ru extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время обеда! 🥗';
	@override String get body => 'Пора зафиксировать обед';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$ru extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время ужина! 🍽️';
	@override String get body => 'Не забудьте зафиксировать ужин';
}

// Path: notifications.snack
class _Translations$notifications$snack$ru extends Translations$notifications$snack$en {
	_Translations$notifications$snack$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время перекуса! 🍎';
	@override String get body => 'Пора для полезного перекуса';
}

// Path: notifications.test
class _Translations$notifications$test$ru extends Translations$notifications$test$en {
	_Translations$notifications$test$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тестовое уведомление';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$ru extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} предоставляет оценочные данные о питании. Точность зависит от вашего ввода и вариаций пищи. Используйте как ориентир, а не как окончательный источник. Для персональных рекомендаций обратитесь к специалисту.';
	@override late final _Translations$disclaimer$snap$portionSize$ru portionSize = _Translations$disclaimer$snap$portionSize$ru._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$ru preparationMethods = _Translations$disclaimer$snap$preparationMethods$ru._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$ru ingredients = _Translations$disclaimer$snap$ingredients$ru._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$ru databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$ru._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$ru extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оценка изменения веса';
	@override String get description => 'Прогноз изменения веса — теоретическая оценка, основанная на простой модели «калории внутрь vs калории наружу». Он предназначен для мотивации, а не как предсказание реального веса.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$ru calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$ru._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$ru biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$ru._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$ru waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$ru._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$ru professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$ru._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$ru extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get description => 'Эти показатели помогают понять потребности организма в энергии и направляют ваши цели по питанию.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$ru bmr = _Translations$disclaimer$healthMetrics$bmr$ru._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$ru tdee = _Translations$disclaimer$healthMetrics$tdee$ru._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$ru dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$ru._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$ru extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оценка расхода калорий';
	@override String get description => 'Когда данные Health Connect недоступны, мы оцениваем сожжённые сегодня калории, используя ваш BMR и уровень активности (TDEE), масштабируя по доле дня, которая прошла.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$ru howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$ru._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$ru professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$ru._(_root);
}

// Path: watch.common
class _Translations$watch$common$ru extends Translations$watch$common$en {
	_Translations$watch$common$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get back => 'Назад';
	@override String get cancel => 'Отмена';
	@override String get delete => 'Удалить';
	@override String get retry => 'Повторить';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$ru extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Питательное вещество';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} г';
	@override String get protein => 'Белки';
	@override String get carbs => 'Углеводы';
	@override String get fat => 'Жиры';
	@override String get fiber => 'Клетчатка';
}

// Path: watch.sync
class _Translations$watch$sync$ru extends Translations$watch$sync$en {
	_Translations$watch$sync$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Синхронизировать с телефоном';
	@override String get syncing => 'Синхронизация…';
	@override String get synced => 'Синхронизировано';
	@override String get syncedJustNow => 'Синхронизировано только что';
	@override String syncedMinutesAgo({required Object minutes}) => 'Синхронизировано ${minutes} мин назад';
	@override String get failed => 'Не удалось синхронизировать';
	@override String get phoneDisconnected => 'Телефон не подключен';
	@override String get tapToSync => 'Коснитесь, чтобы синхронизировать';
	@override String get refreshFailed => 'Не удалось обновить. Проверьте телефон.';
	@override String get openPhone => 'Откройте Calorify на телефоне, затем нажмите «Обновить». ';
}

// Path: watch.home
class _Translations$watch$home$ru extends Translations$watch$home$en {
	_Translations$watch$home$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get today => 'Сегодня';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} ккал потреблено из ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} сверх цели';
	@override String remaining({required Object calories}) => '${calories} осталось';
	@override String left({required Object calories}) => '${calories} осталось';
	@override String goal({required Object calories}) => 'Цель: ${calories} ккал';
	@override String get logMeal => 'Записать приём пищи';
	@override String get todayMeals => 'Приёмы пищи за сегодня';
	@override String todayMealsCount({required Object count}) => 'Приёмы пищи за сегодня, ${count}';
	@override String viewMore({required Object count}) => 'Показать ещё ${count}';
	@override String viewMoreSemantics({required Object count}) => '${count} дополнительных приёмов пищи, коснитесь, чтобы увидеть все';
	@override String get noMeals => 'Нет записей о приёмах пищи';
	@override String get noMealsSemantics => 'Сегодня нет записей о приёмах пищи';
	@override String get tapLog => 'Нажмите «Записать», чтобы начать';
	@override String get removedFromQueue => 'Приём пищи удалён из офлайн-очереди.';
	@override String get removedOffline => 'Приём пищи удалён локально. Он синхронизируется, когда телефон подключится.';
	@override String get deleteFailed => 'Не удалось удалить приём пищи';
}

// Path: watch.history
class _Translations$watch$history$ru extends Translations$watch$history$en {
	_Translations$watch$history$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Приёмы пищи за сегодня';
	@override String get refresh => 'Обновить приёмы пищи';
	@override String get loadFailed => 'Не удалось загрузить приёмы пищи';
	@override String get syncFailed => 'Не удалось синхронизировать';
	@override String get emptyTitle => 'Пока нет приёмов пищи';
	@override String get emptyMessage => 'Запишите приём пищи на главном экране, чтобы он появился здесь.';
}

// Path: watch.favorites
class _Translations$watch$favorites$ru extends Translations$watch$favorites$en {
	_Translations$watch$favorites$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Избранное';
	@override String get refresh => 'Обновить избранное';
	@override String get loadFailed => 'Не удалось загрузить избранное';
	@override String get syncFailed => 'Не удалось синхронизировать';
	@override String get emptyTitle => 'Пока нет избранного';
	@override String get emptyMessage => 'Помечайте блюда звёздочкой в приложении на телефоне, чтобы здесь логировать их одним нажатием.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} ккал. Нажмите, чтобы записать.';
	@override String logged({required Object name}) => '${name} добавлено!';
	@override String savedOffline({required Object name}) => '${name} сохранено локально. Синхронизируется, когда телефон подключится.';
	@override String get saveFailed => 'Не удалось сохранить приём пищи. Попробуйте ещё раз.';
	@override String get log => 'Записать';
}

// Path: watch.meal
class _Translations$watch$meal$ru extends Translations$watch$meal$en {
	_Translations$watch$meal$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} ккал, записано в ${time}.';
	@override String get longPressDelete => 'Удерживайте для удаления.';
	@override String get deleteTitle => 'Удалить приём пищи?';
}

// Path: watch.voice
class _Translations$watch$voice$ru extends Translations$watch$voice$en {
	_Translations$watch$voice$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Голосовой ввод приёма пищи';
	@override String get processing => 'Проверка приёма пищи…';
	@override String get processingDescription => 'Оценка порций и нутриентов';
	@override String get listening => 'Слушаю…';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Остановить запись';
	@override String get start => 'Нажмите, чтобы начать запись';
	@override String get starting => 'Запуск микрофона…';
	@override String get prompt => 'Нажмите, затем опишите приём пищи';
	@override String get tapToRetry => 'Нажмите, чтобы повторить';
	@override String get example => 'Попробуйте: «2 роти с далом»';
	@override String get unavailable => 'Голосовой ввод недоступен. Проверьте разрешение на микрофон в настройках часов.';
	@override String get didNotStart => 'Микрофон не запустился. Нажмите, чтобы повторить.';
	@override String get startFailed => 'Не удалось начать запись. Проверьте разрешения на микрофон.';
	@override String get allowMicrophone => 'Разрешите доступ к микрофону, чтобы записывать приёмы пищи голосом.';
	@override String get needsConnection => 'Распознавание голоса требует подключения. Нажмите, чтобы повторить.';
	@override String get microphoneUnavailable => 'Микрофон недоступен. Нажмите, чтобы повторить.';
	@override String get microphoneBusy => 'Микрофон занят. Подождите немного и повторите попытку.';
	@override String get languageUnsupported => 'Голосовой ввод не поддерживает язык часов.';
	@override String get temporarilyBusy => 'Голосовой ввод временно недоступен. Подождите немного и повторите.';
	@override String get notRecognized => 'Не расслышано. Нажмите на микрофон и попробуйте снова.';
	@override String get noSpeech => 'Речь не обнаружена. Нажмите на микрофон и попробуйте снова.';
	@override String get analysisFailed => 'Анализ не удался. Пожалуйста, попробуйте ещё раз.';
	@override String get mealNotIdentified => 'Не удалось распознать приём пищи. Попробуйте описать иначе.';
}

// Path: watch.result
class _Translations$watch$result$ru extends Translations$watch$result$en {
	_Translations$watch$result$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Детали приёма пищи';
	@override String get savedOffline => 'Сохранено локально';
	@override String get logged => 'Записано!';
	@override String get mealFound => 'Приём пищи найден';
	@override String get estimatedEnergy => 'Оценённая калорийность';
	@override String get logMeal => 'Записать приём пищи';
	@override String get logging => 'Сохранение…';
	@override String get logAnother => 'Записать ещё один';
	@override String get goingBack => 'Возврат…';
	@override String get savedOfflineMessage => 'Приём пищи сохранён локально. Он синхронизируется, когда телефон подключится.';
	@override String get saveFailed => 'Не удалось сохранить приём пищи. Попробуйте ещё раз.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$ru extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Умное распознавание еды';
	@override String get description => 'Сделайте фото — AI определит ваше блюдо';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$ru extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI‑анализ';
	@override String get description => 'Мгновенные данные о питании по вашему описанию';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$ru extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Интеграция с Health Connect';
	@override String get description => 'Подключитесь к Health Connect для более точных данных';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$ru extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Недостаточный вес';
	@override String get healthyWeight => 'Здоровый вес';
	@override String get overweight => 'Избыточный вес';
	@override String get obese => 'Ожирение';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$ru extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Мы поможем составить план для достижения сбалансированного веса с питательными блюдами.';
	@override String get healthy => 'Отлично! Вы в здоровом диапазоне. Мы поможем сохранить вашу энергию и самочувствие.';
	@override String overweight({required Object appLabel}) => '${appLabel} упростит ваше путешествие с помощью AI‑отслеживания, чтобы вы комфортно дошли до цели.';
	@override String get obese => 'Мы поддержим вас персональными рекомендациями и устойчивыми стратегиями для ваших целей по здоровью.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$ru extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сожжённые калории';
	@override String get description => 'Считывайте из Health Connect общее количество сожжённых сегодня калорий';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$ru extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сожжённые калории';
	@override String get description => 'Считывайте из Health Connect общее количество сожжённых сегодня калорий';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$ru extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Делитесь записями о питании';
	@override String get description => 'Записывайте в Health Connect приёмы пищи, добавленные в Calorify';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$ru extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Делитесь записями о питании';
	@override String get description => 'Записывайте в Health Connect приёмы пищи, добавленные в Calorify';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$ru extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Всё под вашим контролем';
	@override String get description => 'Выберите любое из разрешений и меняйте доступ в любое время';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$ru extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Всё под вашим контролем';
	@override String get description => 'Выберите любое из разрешений и меняйте доступ в любое время';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$ru extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вы не одни';
	@override String get genericMessage => 'Исследования показывают: регулярное ведение записей — главный предиктор долгосрочного успеха.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Для ${age}-летнего(й) ${gender}, который(ая) хочет ${goal}, регулярное отслеживание — главный фактор успеха.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} делает это в 10 раз проще, чем вручную.';
	@override String get getStartedTitle => 'Готовы начать?';
	@override String get tipPhoto => 'Фотографируйте блюда для мгновенного анализа';
	@override String get tipConsistency => 'Записывайте регулярно, чтобы увидеть реальный прогресс';
	@override String get tipProgress => 'Отслеживайте прогресс ежедневно, чтобы поддерживать мотивацию';
	@override String get button => 'Поехали';
	@override String get defaultGender => 'человек';
	@override String get defaultGoal => 'здоровее вы';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$ru extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваш профиль здоровья';
	@override String bmiDescription({required Object bmi}) => 'По вашим данным ваш BMI составляет ${bmi}.';
	@override String get finalizeDescription => 'Давайте завершим профиль, чтобы персонализировать опыт.';
	@override String get goalGain => 'набрать';
	@override String get goalLose => 'сбросить';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Чтобы достичь цели, вы должны ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Вы достигли целевого веса! Мы поможем его поддерживать.';
	@override String get button => 'Поехали';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$ru extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Отличное начало!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Вы сделали первый шаг к ${goalText}. Поскольку вы ${activityText}, ${appLabel} подстроит цели под ваш образ жизни.';
	@override String get personalizedTargets => 'Персонализированные калорийные цели';
	@override String get aiMealDetection => 'AI‑распознавание блюд';
	@override String get macroBreakdowns => 'Подробное распределение макроэлементов';
	@override String get button => 'Поехали';
	@override String get defaultGoal => 'ваши цели';
	@override String get defaultActivity => 'активны';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$ru extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Похудеть';
	@override String get description => 'Создать дефицит калорий для снижения веса';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$ru extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Поддерживать вес';
	@override String get description => 'Поддерживать текущий вес';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$ru extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Набрать вес';
	@override String get description => 'Создать излишек калорий для набора веса';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$ru extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Малоподвижный';
	@override String get description => 'Мало или нет упражнений';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$ru extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Слегка активный';
	@override String get description => 'Лёгкие упражнения 1–3 дня в неделю';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$ru extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Умеренно активный';
	@override String get description => 'Умеренные упражнения 3–5 дней в неделю';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$ru extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Очень активный';
	@override String get description => 'Интенсивные тренировки 6–7 дней в неделю';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$ru extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Чрезвычайно активный';
	@override String get description => 'Очень тяжёлая физическая работа или тренировки';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$ru extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect недоступен';
	@override String get description => 'Health Connect не поддерживается на этом устройстве.';
	@override String get unsupportedDescription => 'Health Connect не поддерживается на этом устройстве.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$ru extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect требует внимания';
	@override String get description => 'Установите или обновите Health Connect, прежде чем управлять доступом.';
	@override String get action => 'Установить или обновить';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$ru extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Разрешения';
	@override String get description => 'Запрашиваются следующие разрешения для интеграции с Health Connect:';
	@override String get granted => 'Разрешено';
	@override String get notGranted => 'Не разрешено';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$ru caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$ru._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$ru nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$ru._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$ru nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$ru._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$ru extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Наша история';
	@override String content({required Object appLabel}) => '${appLabel} родился из простой фрустрации: большинство приложений для подсчёта калорий либо слишком сложны, требуют постоянного ручного ввода, берут высокую плату за подписку, либо нарушают приватность.\n\nКак одиночный разработчик, я хотел создать что‑то проще и честнее — приложение, которое использует AI, чтобы снизить усилия, остаётся быстрым и бесплатным, и уважительно относится к вашим данным о здоровье.\n\n${appLabel} — это приложение, которого мне хотелось бы: без аккаунтов, без отслеживания, без рекламы — только понятные, практичные выводы и ваши цели по здоровью.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$ru extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваша приватность важна';
	@override String get description => 'Приватность — не второстепенная мысль, а принцип проектирования. Это означает следующее:';
	@override String get noAccounts => 'Без аккаунтов\nИспользуйте приложение сразу. Никаких регистрации и идентичностей.';
	@override String noTracking({required Object appLabel}) => 'Ограниченная аналитика и диагностика\n${appLabel} использует основные события приложения и диагностику сбоев для повышения надёжности. Значения показателей здоровья не используются для рекламы и не продаются.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Ограниченная аналитика и диагностика\n${appLabel} использует основные события приложения и диагностику сбоев для повышения надёжности. Значения показателей здоровья не используются для рекламы и не продаются.';
	@override String noAds({required Object appLabel}) => 'Без рекламы по дизайну\n${appLabel} создан работать без рекламы и монетизации на основе данных.';
	@override String get noDataSelling => 'Без продажи данных\nВаши данные о здоровье никогда не продаются и не передаются третьим лицам.';
	@override String get localStorage => 'Приоритет локального хранения\nВаши данные остаются на вашем устройстве.';
	@override String get privacyPolicy => 'Политика конфиденциальности';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$ru extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Создано одним разработчиком';
	@override String description({required Object appLabel}) => '${appLabel} создаётся и поддерживается одним разработчиком, который делает акцент на спокойном, уважающем приватность ПО для здоровья.\n\nОтзывы читаются лично и помогают формировать развитие приложения.';
	@override String get website => 'Вебсайт';
	@override String get email => 'Электронная почта';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$ru extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Понравился ${appLabel}?';
	@override String description({required Object appLabel}) => 'Ваш отзыв помогает сделать ${appLabel} лучше для всех.';
	@override String get rateApp => 'Оценить в Play Store';
	@override String get sendFeedback => 'Отправить отзыв';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$ru extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Размер порции';
	@override String get description => 'Точность оценок в значительной мере зависит от правильной оценки вами размера порции.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$ru extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Методы приготовления';
	@override String description({required Object appLabel}) => 'Методы приготовления могут существенно менять питательную ценность. Оценки ${appLabel} не всегда учитывают все эти вариации.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$ru extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ингредиенты';
	@override String get description => 'Сложные блюда с множеством скрытых ингредиентов могут давать менее точные оценки.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$ru extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ограничения базы данных';
	@override String description({required Object appLabel}) => 'База продуктов ${appLabel} обширна, но может не содержать каждой отдельной позиции или её вариаций.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$ru extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Точность калорий';
	@override String get description => 'Эта оценка точна лишь настолько, насколько точны ваши записи о потреблении и расходе калорий. Неточные записи дадут неточный прогноз.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$ru extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Биологические факторы';
	@override String description({required Object appLabel}) => 'Реальная потеря/набор веса зависит от метаболизма, гормонов, сна, стресса, гидратации и других индивидуальных факторов, которые ${appLabel} не может измерить.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$ru extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Водный вес и колебания';
	@override String get description => 'Нормальный ежедневный вес может значительно колебаться из‑за удержания воды, переваривания и времени измерения. Оценка не учитывает эти ежедневные изменения.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$ru extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профессиональная консультация';
	@override String get description => 'Не используйте эту оценку для медицинских решений. Всегда консультируйтесь с врачом или диетологом для персональных рекомендаций.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$ru extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Базальный уровень метаболизма (BMR) — это количество калорий, которое ваше тело сжигает в покое для поддержания базовых функций: дыхание, кровообращение и т.д. BMR зависит от возраста, пола, роста и веса. Более высокий BMR обычно означает, что тело сжигает больше калорий в покое (чаще за счёт большей мышечной массы, молодого возраста или мужского пола). Более низкий BMR чаще указывает на меньшую мышечную массу, более зрелый возраст или женский пол.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$ru extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Полная суточная энергетическая потребность (TDEE) — это общее количество калорий, которое вы сжигаете в день, включая BMR, физическую активность и повседневную активность. TDEE зависит от BMR и уровня активности. Более высокий TDEE означает больший общий расход калорий, обычно из‑за активности или более высокого BMR. Более низкий TDEE говорит о меньшей активности или более низком BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$ru extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Суточная цель';
	@override String get description => 'Суточная цель — рекомендованный объём калорий в день на основе вашего TDEE и цели по весу. Для похудения вы потребляете меньше калорий, чем ваш TDEE. Для поддержания — примерно равное количество. Для набора — больше калорий, чем ваш TDEE. Это помогает достичь желаемого изменения веса в здоровом темпе.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$ru extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Как рассчитывается оценка';
	@override String get description => 'Мы вычисляем ваш TDEE (на основе профиля) и умножаем на долю прошедшего дня (часы + минуты) / 24, чтобы оценить, сколько калорий вы сожгли на данный момент.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$ru extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профессиональная консультация';
	@override String get description => 'Не используйте эту оценку для медицинских решений. Всегда консультируйтесь с врачом или диетологом для персональных рекомендаций по управлению весом.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$ru extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Чтение общего числа сожжённых калорий';
	@override String get description => 'Позволяет приложению читать ваши общие сожжённые калории из Health Connect.';
	@override String get usage => 'Это разрешение используется для отображения ежедневного сожжённого количества калорий в приложении, помогая понять общий расход энергии за день.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$ru extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Чтение данных о питании';
	@override String get description => 'Позволяет приложению читать данные о питании из Health Connect.';
	@override String get usage => 'Это разрешение позволяет приложению получать информацию о питании, которую могли записать другие приложения, подключённые к Health Connect, для полного обзора вашего питания.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$ru extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$ru._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Запись данных о питании';
	@override String get description => 'Позволяет приложению записывать данные о питании в Health Connect.';
	@override String get usage => 'Это разрешение позволяет приложению синхронизировать ваши записи питания с Health Connect, делая их доступными другим приложениям здоровья и фитнеса.';
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
			'errors.rateLimitExceeded' => 'Вы сделали слишком много запросов. Пожалуйста, подождите немного и попробуйте снова.',
			'errors.networkError' => 'Ошибка сети. Пожалуйста, проверьте подключение к интернету.',
			'errors.unknownError' => 'Что-то пошло не так. Пожалуйста, попробуйте позже.',
			'errors.loadingProfileData' => 'Ошибка загрузки данных профиля',
			'errors.somethingWentWrong' => 'Что-то пошло не так.',
			'errors.retry' => 'Повторить',
			'onboarding.welcome' => ({required Object appLabel}) => 'Добро пожаловать в ${appLabel}',
			'onboarding.subtitle' => 'Ваш персональный помощник по питанию на базе AI',
			'onboarding.getStarted' => 'Начать',
			'onboarding.features.foodRecognition.title' => 'Умное распознавание еды',
			'onboarding.features.foodRecognition.description' => 'Сделайте фото — AI определит ваше блюдо',
			'onboarding.features.aiAnalysis.title' => 'AI‑анализ',
			'onboarding.features.aiAnalysis.description' => 'Мгновенные данные о питании по вашему описанию',
			'onboarding.features.healthIntegration.title' => 'Интеграция с Health Connect',
			'onboarding.features.healthIntegration.description' => 'Подключитесь к Health Connect для более точных данных',
			'onboarding.gender.title' => 'Ваш пол?',
			'onboarding.gender.description' => 'Пол помогает точно рассчитать ваш базальный уровень обмена веществ (BMR).',
			'onboarding.gender.next' => 'Далее',
			'onboarding.height.title' => 'Какой у вас рост?',
			'onboarding.height.description' => 'Рост помогает точно рассчитать ваш BMI и потребности в энергии.',
			'onboarding.height.metric' => 'Метрическая',
			'onboarding.height.imperial' => 'Имперская',
			'onboarding.height.next' => 'Далее',
			'onboarding.weight.currentTitle' => 'Какой у вас текущий вес?',
			'onboarding.weight.currentDescription' => 'Текущий вес важен для персонализации ваших ежедневных целей.',
			'onboarding.weight.targetTitle' => 'Какой ваш целевой вес?',
			'onboarding.weight.targetDescription' => 'Установка целевого веса помогает определить долгосрочный план.',
			'onboarding.weight.metric' => 'Метрическая',
			'onboarding.weight.imperial' => 'Имперская',
			'onboarding.weight.next' => 'Далее',
			'onboarding.age.title' => 'Когда у вас день рождения?',
			'onboarding.age.description' => 'Возраст помогает нам точно рассчитать вашу потребность в калориях.',
			'onboarding.age.next' => 'Далее',
			'onboarding.bmiScale.underweight' => 'Ниже',
			'onboarding.bmiScale.healthy' => 'Здоровый',
			'onboarding.bmiScale.overweight' => 'Выше',
			'onboarding.bmiScale.obese' => 'Ожирение',
			'onboarding.bmiScale.categories.underweight' => 'Недостаточный вес',
			'onboarding.bmiScale.categories.healthyWeight' => 'Здоровый вес',
			'onboarding.bmiScale.categories.overweight' => 'Избыточный вес',
			'onboarding.bmiScale.categories.obese' => 'Ожирение',
			'onboarding.bmiScale.messages.underweight' => 'Мы поможем составить план для достижения сбалансированного веса с питательными блюдами.',
			'onboarding.bmiScale.messages.healthy' => 'Отлично! Вы в здоровом диапазоне. Мы поможем сохранить вашу энергию и самочувствие.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} упростит ваше путешествие с помощью AI‑отслеживания, чтобы вы комфортно дошли до цели.',
			'onboarding.bmiScale.messages.obese' => 'Мы поддержим вас персональными рекомендациями и устойчивыми стратегиями для ваших целей по здоровью.',
			'onboarding.weightGoal.title' => 'Какая у вас цель?',
			'onboarding.weightGoal.description' => 'Выберите цель, которая лучше всего описывает то, чего вы хотите достичь',
			'onboarding.activityLevel.title' => 'Насколько вы активны?',
			'onboarding.activityLevel.description' => 'Это помогает точнее рассчитать ваши ежедневные потребности в калориях',
			'onboarding.healthConnect.title' => 'Подключитесь к Health Connect',
			'onboarding.healthConnect.description' => 'Используйте сожжённые калории в дневной цели и при желании делитесь записанными приёмами пищи с Health Connect.',
			'onboarding.healthConnect.overviewDescription' => 'Используйте сожжённые калории в дневной цели и при желании делитесь записанными приёмами пищи с Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Сожжённые калории',
			'onboarding.healthConnect.automaticTracking.description' => 'Считывайте из Health Connect общее количество сожжённых сегодня калорий',
			'onboarding.healthConnect.caloriesBurned.title' => 'Сожжённые калории',
			'onboarding.healthConnect.caloriesBurned.description' => 'Считывайте из Health Connect общее количество сожжённых сегодня калорий',
			'onboarding.healthConnect.progressInsights.title' => 'Делитесь записями о питании',
			'onboarding.healthConnect.progressInsights.description' => 'Записывайте в Health Connect приёмы пищи, добавленные в Calorify',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Делитесь записями о питании',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Записывайте в Health Connect приёмы пищи, добавленные в Calorify',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Всё под вашим контролем',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Выберите любое из разрешений и меняйте доступ в любое время',
			'onboarding.healthConnect.userControl.title' => 'Всё под вашим контролем',
			'onboarding.healthConnect.userControl.description' => 'Выберите любое из разрешений и меняйте доступ в любое время',
			'onboarding.healthConnect.connected' => 'Health Connect подключён',
			'onboarding.healthConnect.notConnected' => 'Health Connect не подключён',
			'onboarding.healthConnect.setup' => 'Настроить Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Пропустить',
			'onboarding.healthConnect.statusConnected' => 'Health Connect подключён.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect успешно подключён!',
			'onboarding.healthConnect.statusNotConnected' => 'Выберите функции Health Connect, которые хотите включить.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect подключён частично. Включите оставшееся разрешение, чтобы использовать обе функции.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Установите или обновите Health Connect, чтобы продолжить.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect не поддерживается на этом устройстве.',
			'onboarding.healthConnect.installOrUpdate' => 'Установить или обновить',
			'onboarding.healthConnect.manageAccess' => 'Управлять доступом',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Доступ запрещён. Пожалуйста, включите разрешения Health Connect в настройках телефона для ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Ошибка при настройке Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Вы не одни',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Исследования показывают: регулярное ведение записей — главный предиктор долгосрочного успеха.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Для ${age}-летнего(й) ${gender}, который(ая) хочет ${goal}, регулярное отслеживание — главный фактор успеха.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} делает это в 10 раз проще, чем вручную.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Готовы начать?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Фотографируйте блюда для мгновенного анализа',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Записывайте регулярно, чтобы увидеть реальный прогресс',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Отслеживайте прогресс ежедневно, чтобы поддерживать мотивацию',
			'onboarding.reinforcement.trackingSuccess.button' => 'Поехали',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'человек',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'здоровее вы',
			'onboarding.reinforcement.healthProfile.title' => 'Ваш профиль здоровья',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'По вашим данным ваш BMI составляет ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Давайте завершим профиль, чтобы персонализировать опыт.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'набрать',
			'onboarding.reinforcement.healthProfile.goalLose' => 'сбросить',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Чтобы достичь цели, вы должны ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Вы достигли целевого веса! Мы поможем его поддерживать.',
			'onboarding.reinforcement.healthProfile.button' => 'Поехали',
			'onboarding.reinforcement.goalLifestyle.title' => 'Отличное начало!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Вы сделали первый шаг к ${goalText}. Поскольку вы ${activityText}, ${appLabel} подстроит цели под ваш образ жизни.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Персонализированные калорийные цели',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI‑распознавание блюд',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Подробное распределение макроэлементов',
			'onboarding.reinforcement.goalLifestyle.button' => 'Поехали',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'ваши цели',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'активны',
			'tabs.dashboard' => 'Панель',
			'tabs.history' => 'История',
			'home.aiSummary.title' => 'Ваш AI‑обзор',
			'home.aiSummary.logMore' => 'Записывайте больше блюд в ближайшие дни, чтобы получить персональные AI‑выводы.',
			'home.aiSummary.loading' => 'Загрузка обзора...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} записанных приёмов пищи',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Оценка баланса ${score}',
			'home.aiSummary.topFoods' => 'Частые продукты',
			'home.aiSummary.trendUp' => 'Калории растут',
			'home.aiSummary.trendDown' => 'Калории снижаются',
			'home.aiSummary.trendSteady' => 'Калории стабильны',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Обновлено ${time}',
			'home.dailyGoal.title' => 'Установите суточную цель',
			'home.dailyGoal.titleSet' => 'Ваша суточная цель',
			'home.dailyGoal.description' => 'Готовы начать путь к благополучию? Установите суточную калорийную цель ниже, чтобы начать прогресс.',
			'home.dailyGoal.descriptionSet' => 'Ваш курс задан! Это ваша суточная калорийная цель.',
			'home.dailyGoal.yourGoal' => 'Ваша цель',
			'home.dailyGoal.goal' => 'Цель',
			'home.dailyGoal.dailyCalories' => 'Ежедневные калории (kcal)',
			'home.dailyGoal.setGoal' => 'Установить цель',
			'home.dailyGoal.intake' => 'Потреблено',
			'home.dailyGoal.burned' => 'Сожжено',
			'home.dailyGoal.weightImpact' => 'Влияние на вес',
			'home.dailyGoal.estLoss' => 'Прогноз. потеря',
			'home.dailyGoal.estGain' => 'Прогноз. набор',
			'home.dailyGoal.kcal' => 'ккал',
			'home.dailySummary.title' => 'Ежедневная сводка',
			'home.dailySummary.calories' => 'Калории',
			'home.dailySummary.carbs' => 'Углеводы',
			'home.dailySummary.protein' => 'Белки',
			'home.dailySummary.fat' => 'Жиры',
			'home.dailySummary.fiber' => 'Клетчатка',
			'home.dailySummary.grams' => 'граммы',
			'home.dailySummary.chartAccessibilityLabel' => 'График макроэлементов',
			'home.intakeProgress.title' => 'Сегодняшнее распределение макроэлементов',
			'home.intakeProgress.target' => 'Цель',
			'home.intakeProgress.current' => 'Текущее',
			'home.intakeHistory.title' => 'История макроэлементов за 7 дней',
			'home.intakeHistory.trendTitle' => 'Тенденция за сегодня',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Пик: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Пока нет данных',
			'home.intakeHistory.startLogging' => 'Начните записывать приёмы пищи, чтобы увидеть\nтут 7‑дневные макро‑тенденции',
			'home.mealLog.title' => 'Записи приёмов пищи',
			'home.mealLog.emptyMessage' => 'Сфотографируйте последний приём пищи, чтобы записать его здесь.',
			'home.mealLog.noMealsToday' => 'Сегодня приёмы пищи не зафиксированы',
			'home.mealLog.seeAllMeals' => 'Посмотреть все приёмы',
			'home.mealDescription.title' => 'Быстро добавить с AI',
			'home.mealDescription.description' => 'Опишите приём пищи, и AI подготовит детали.',
			'home.mealDescription.hint' => 'например: На завтрак у меня была большая миска овсянки с бананом и порцией сывороточного протеина ...',
			'home.mealDescription.analyzeMeal' => 'Проанализировать блюдо',
			'home.favoriteMeals.title' => 'Избранное',
			'home.favoriteMeals.description' => 'Быстро добавляйте любимые блюда.',
			'home.favoriteMeals.noFavorites' => 'Пока нет избранных блюд.',
			'home.favoriteMeals.addFavoriteHint' => 'Нажмите на звезду у блюда, чтобы добавить в избранное.',
			'home.favoriteMeals.seeAll' => 'Посмотреть все',
			'home.favoriteMeals.add' => 'Добавить',
			'home.mealSnap.title' => 'Сфотографируйте и зафиксируйте блюдо',
			'home.mealSnap.description' => 'Используйте камеру, чтобы снять еду для AI‑анализа.',
			'home.mealSnap.openCamera' => 'Открыть камеру',
			'home.mealSnap.gallery' => 'Галерея',
			'home.mealSnap.compressingPhoto' => 'Оптимизация фото…',
			'home.mealSnap.uploadingPhoto' => 'Загрузка фото…',
			'home.connectHealth.title' => 'Синхронизировать с Health Connect',
			'home.connectHealth.description' => 'Используйте сожжённые калории в своей цели и делитесь записями о питании',
			'home.connectHealth.install' => 'Установить или обновить',
			'home.connectHealth.dataUseDescription' => 'Используйте сожжённые калории в своей цели и делитесь записями о питании',
			'home.connectHealth.installOrUpdate' => 'Установить или обновить',
			'home.connectHealth.connect' => 'Подключить',
			'history.noMeals' => 'Нет записанных приёмов пищи',
			'history.emptyMessage' => 'Сфотографируйте последний приём пищи, чтобы записать его здесь.',
			'history.today' => 'Сегодня',
			'history.yesterday' => 'Вчера',
			'meal.ohNo' => 'Ох нет!',
			'meal.delete' => 'Удалить',
			'meal.editMeal' => 'Редактировать приём',
			'meal.addMeal' => 'Добавить приём',
			'meal.saveMeal' => 'Сохранить приём',
			'meal.save' => 'Сохранить',
			'meal.mealName' => 'Название блюда',
			'meal.mealNameHint' => 'например, Омлет с тостом',
			'meal.nameRequired' => 'Введите название приёма пищи перед сохранением.',
			'meal.mealQuantity' => 'Количество',
			'meal.mealQuantityHint' => 'например, 1 миска, 2 ломтика',
			'meal.timeOfMeal' => 'Время приёма',
			'meal.timeOfMealHint' => 'Выберите время приёма пищи',
			'meal.mealType' => 'Тип приёма',
			'meal.nutrition.calories' => 'Калории',
			'meal.nutrition.carbs' => 'Углеводы (г)',
			'meal.nutrition.protein' => 'Белки (г)',
			'meal.nutrition.fat' => 'Жиры (г)',
			'meal.nutrition.fiber' => 'Клетчатка (г)',
			'meal.deleteConfirmation.title' => 'Удалить приём',
			'meal.deleteConfirmation.message' => 'Вы уверены, что хотите удалить эту запись?',
			'meal.deleteConfirmation.cancel' => 'Отмена',
			'meal.deleteConfirmation.delete' => 'Удалить',
			'meal.addedToLog' => 'Блюдо добавлено в журнал!',
			'meal.couldNotAdd' => ({required Object error}) => 'Не удалось добавить блюдо: ${error}',
			'meal.savedSuccessfully' => 'Блюдо успешно добавлено!',
			'meal.updatedSuccessfully' => 'Блюдо успешно обновлено!',
			'meal.errorSaving' => ({required Object error}) => 'Ошибка при сохранении блюда: ${error}',
			'meal.removedFromFavorites' => 'Удалено из избранного!',
			'meal.savedAsFavorite' => 'Блюдо сохранено в избранном!',
			'meal.unfavorite' => 'Убрать из избранного',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Не удалось обновить избранное: ${error}',
			'meal.feedbackThanks' => 'Спасибо за отзыв!',
			'meal.reanalysisUpdated' => 'Анализ блюда обновлён с учётом вашего отзыва.',
			'meal.failedToProcess' => ({required Object error}) => 'Не удалось обработать: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Не удалось обработать изображение: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Ошибка сжатия изображения: ${error}',
			'meal.failedToSave' => 'Не удалось сохранить данные. Пожалуйста, попробуйте снова.',
			'meal.skip' => 'Пропустить',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Вопрос ${current} из ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Вопросов нет',
			'meal.questionFlow.next' => 'Далее',
			'meal.questionFlow.continueLabel' => 'Продолжить',
			'meal.questionFlow.countQuestion' => 'Выберите количество',
			'meal.questionFlow.itemSizeQuestion' => 'Выберите размер продукта',
			'meal.questionFlow.portionSizeQuestion' => 'Выберите размер порции',
			'meal.questionFlow.option6plus' => '6 или больше',
			'meal.questionFlow.optionSmall' => 'Маленький',
			'meal.questionFlow.optionRegular' => 'Обычный',
			'meal.questionFlow.optionLarge' => 'Большой',
			'meal.questionFlow.optionThin' => 'Тонкий',
			'meal.questionFlow.optionThick' => 'Толстый',
			'meal.questionFlow.optionMini' => 'Мини',
			'meal.questionFlow.optionStuffed' => 'С начинкой',
			'meal.questionFlow.optionHeavy' => 'Тяжелый',
			'meal.questionFlow.optionSmaller' => 'Меньше',
			'meal.questionFlow.optionTypical' => 'Типичный',
			'meal.questionFlow.optionLarger' => 'Больше',
			'meal.analysis.title' => 'Анализируем ваше блюдо',
			'meal.analysis.stepStarted' => 'Начинаем…',
			'meal.analysis.stepDecomposition' => 'Разбираем блюдо…',
			'meal.analysis.stepIngredients' => 'Сопоставляем ингредиенты с данными о питании…',
			'meal.analysis.stepUncertainty' => 'Проверяем уверенность…',
			'meal.analysis.stepMealTypeQuestion' => 'Почти готово…',
			'meal.analysis.stepResult' => 'Формируем результат…',
			'meal.analysis.stepError' => 'Что‑то пошло не так',
			'meal.analysis.noFoodTip' => 'Еда не обнаружена. Попробуйте другое фото или описание.',
			'meal.analysis.stepDefault' => 'Анализируем ваше блюдо…',
			'meal.analysis.progressUnderstand' => 'Понимание блюда',
			'meal.analysis.progressMatch' => 'Поиск питания ингредиентов',
			'meal.analysis.progressCheck' => 'Проверка порций и уверенности',
			'meal.analysis.progressMealType' => 'Выбор типа приёма',
			'meal.analysis.progressFinish' => 'Расчёт калорий и макроэлементов',
			'meal.analysis.detectedIngredientHeading' => 'Ингредиенты, которые мы видим',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => 'ещё ${count}',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'Найдено ${count} ингредиентов',
			'meal.analysis.ingredientsPending' => 'Сканирование ингредиентов…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '«${text}»',
			'meal.analysis.offlineTip0' => 'Совет: регулярность важнее идеала — регулярные записи показывают полезные закономерности.',
			'meal.analysis.offlineTip1' => 'Совет: для фото используйте естественный свет и вид сверху — это помогает точнее оценить порции.',
			'meal.analysis.offlineTip2' => 'Совет: указывайте напитки, соусы и масло для жарки — они часто добавляют калории, которые забывают учесть.',
			'meal.analysis.offlineTip3' => 'Совет: быстрая заметка о порции (1 миска, большой кофе) делает оценки значительно точнее.',
			'meal.analysis.offlineTip4' => 'Совет: запись после еды всё ещё формирует привычку; совершенство не обязательно.',
			'meal.analysis.offlineTip5' => 'Совет: указывайте способ приготовления, когда он сильно влияет на калории (жареное vs запечённое).',
			'meal.localInference.reviewTitle' => 'Проверка распознанных ингредиентов',
			'meal.localInference.reviewSubtitle' => 'Данные были обработаны на вашем устройстве. Исправьте названия или порции перед расчетом питательной ценности.',
			'meal.localInference.mealName' => 'Название блюда',
			'meal.localInference.ingredient' => 'Ингредиент',
			'meal.localInference.grams' => 'Приблизительный вес (г)',
			'meal.localInference.removeIngredient' => 'Удалить ингредиент',
			'meal.localInference.continueLabel' => 'Продолжить',
			'meal.localInference.invalidProposal' => 'Добавьте хотя бы один ингредиент и укажите положительное значение веса.',
			'meal.localInference.localUnavailable' => 'Анализ на устройстве сейчас недоступен.',
			'meal.feedback.title' => 'Что не так?',
			'meal.feedback.subtitle' => 'Помогите улучшить анализ — отметьте один или несколько пунктов.',
			'meal.feedback.tellUsMore' => 'Расскажите подробнее',
			'meal.feedback.describeIncorrect' => 'Опишите, что было неверно',
			'meal.feedback.submit' => 'Отправить',
			'meal.feedback.issueFoodIdentification' => 'Идентификация еды',
			'meal.feedback.issuePortionSize' => 'Размер порции',
			'meal.feedback.issueCalorieDistribution' => 'Распределение калорий',
			'meal.feedback.issueMacrosWrong' => 'Неправильные макроэлементы',
			'meal.feedback.issueMissingItems' => 'Отсутствующие позиции',
			'meal.feedback.issueExtraItems' => 'Лишние позиции',
			'meal.feedback.issueOther' => 'Другое',
			'favorites.title' => 'Избранное',
			'favorites.empty' => 'Пока нет избранных блюд.',
			'favorites.searchPlaceholder' => 'Поиск в избранном',
			'favorites.searchEmptyTitle' => 'Ничего не найдено в избранном',
			'favorites.searchEmptySubtitle' => 'Попробуйте другое название блюда, количество или тип приёма.',
			'favorites.sortLabel' => 'Сортировка избранного',
			'favorites.undo' => 'Отменить',
			'favorites.removed' => ({required Object name}) => 'Удалено ${name} из избранного',
			'favorites.sortOptions.recent' => 'Недавние',
			'favorites.sortOptions.calories' => 'Калории',
			'favorites.sortOptions.alphabetical' => 'A‑Z',
			'profile.title' => 'Профиль',
			'profile.noProfileData' => 'Данные профиля не найдены',
			'profile.yourProfile' => 'Ваш профиль',
			'profile.viewAndManage' => 'Просмотр и управление информацией о здоровье',
			'profile.sections.profile' => 'ПРОФИЛЬ',
			'profile.sections.basicInformation' => 'ОСНОВНЫЕ ДАННЫЕ',
			'profile.sections.goalsAndActivity' => 'ЦЕЛИ И АКТИВНОСТЬ',
			'profile.sections.calculatedValues' => 'РАСЧЁТНЫЕ ПОКАЗАТЕЛИ',
			'profile.gender' => 'Пол',
			'profile.height' => 'Рост',
			'profile.weight' => 'Вес',
			'profile.age' => 'Возраст',
			'profile.weightGoal' => 'Цель по весу',
			'profile.targetWeight' => 'Целевой вес',
			'profile.activityLevel' => 'Уровень активности',
			'profile.healthMetrics' => 'Показатели здоровья',
			'profile.notSet' => 'Не задано',
			'profile.years' => 'лет',
			'profile.updatedSuccessfully' => 'Профиль успешно обновлён!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Суточная цель',
			'profile.calculatedValues.calPerDay' => 'кал/день',
			'profile.calculatedValues.notAvailable' => 'Н/Д',
			'healthScore.title' => 'Индекс здоровья',
			'healthScore.whyThisScore' => 'Почему такой балл?',
			'healthScore.note' => 'Этот показатель — оценка AI на основе распознанных ингредиентов и пищевой ценности. Всегда консультируйтесь со специалистом для персональных рекомендаций.',
			'healthScore.unhealthy' => 'Нездорово',
			'healthScore.healthy' => 'Здорово',
			'healthScore.neutral' => 'Нейтрально',
			'editProfile.title' => 'Редактировать профиль',
			'editProfile.sections.personalInformation' => 'ЛИЧНЫЕ ДАННЫЕ',
			'editProfile.sections.physicalMeasurements' => 'ФИЗИЧЕСКИЕ ПОКАЗАТЕЛИ',
			'editProfile.sections.goalsAndActivity' => 'ЦЕЛИ И АКТИВНОСТЬ',
			'editProfile.gender' => 'Пол',
			'editProfile.dateOfBirth' => 'Дата рождения',
			'editProfile.height' => 'Рост',
			'editProfile.weight' => 'Вес',
			'editProfile.weightGoal' => 'Цель по весу',
			'editProfile.activityLevel' => 'Уровень активности',
			'editProfile.metric' => 'Метрическая',
			'editProfile.imperial' => 'Имперская',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'фунты',
			'editProfile.metricCm' => 'Метрическая (cm)',
			'editProfile.imperialFtIn' => 'Имперская (ft/in)',
			'editProfile.metricKg' => 'Метрическая (kg)',
			'editProfile.imperialLbs' => 'Имперская (lbs)',
			'editProfile.genders.male' => 'Мужской',
			'editProfile.genders.female' => 'Женский',
			'editProfile.genders.other' => 'Другое',
			'editProfile.weightGoals.loseWeight.name' => 'Похудеть',
			'editProfile.weightGoals.loseWeight.description' => 'Создать дефицит калорий для снижения веса',
			'editProfile.weightGoals.maintainWeight.name' => 'Поддерживать вес',
			'editProfile.weightGoals.maintainWeight.description' => 'Поддерживать текущий вес',
			'editProfile.weightGoals.gainWeight.name' => 'Набрать вес',
			'editProfile.weightGoals.gainWeight.description' => 'Создать излишек калорий для набора веса',
			'editProfile.activityLevels.sedentary.name' => 'Малоподвижный',
			'editProfile.activityLevels.sedentary.description' => 'Мало или нет упражнений',
			'editProfile.activityLevels.lightlyActive.name' => 'Слегка активный',
			'editProfile.activityLevels.lightlyActive.description' => 'Лёгкие упражнения 1–3 дня в неделю',
			'editProfile.activityLevels.moderatelyActive.name' => 'Умеренно активный',
			'editProfile.activityLevels.moderatelyActive.description' => 'Умеренные упражнения 3–5 дней в неделю',
			'editProfile.activityLevels.veryActive.name' => 'Очень активный',
			'editProfile.activityLevels.veryActive.description' => 'Интенсивные тренировки 6–7 дней в неделю',
			'editProfile.activityLevels.extremelyActive.name' => 'Чрезвычайно активный',
			'editProfile.activityLevels.extremelyActive.description' => 'Очень тяжёлая физическая работа или тренировки',
			'settings.title' => 'Настройки',
			'settings.sections.profile' => 'ПРОФИЛЬ',
			'settings.sections.localization' => 'ЛОКАЛИЗАЦИЯ',
			'settings.sections.notifications' => 'УВЕДОМЛЕНИЯ',
			'settings.sections.healthConnect' => 'ПОДКЛЮЧЕНИЕ HEALTH CONNECT',
			'settings.sections.localInference' => 'АНАЛИЗ НА УСТРОЙСТВЕ',
			'settings.sections.supportAndLegal' => 'ПОДДЕРЖКА И ЮРИДИЧЕСКОЕ',
			'settings.sections.about' => 'О ПРОГРАММЕ',
			'settings.sections.dangerZone' => 'ОПАСНАЯ ЗОНА',
			'settings.sections.developer' => 'РАЗРАБОТЧИК',
			'settings.editProfile.title' => 'Редактировать профиль',
			'settings.editProfile.subtitle' => 'Обновите личные данные',
			'settings.language.title' => 'Язык',
			'settings.language.subtitle' => 'Выберите предпочитаемый язык',
			'settings.language.searchHint' => 'Поиск языков...',
			'settings.language.noResults' => 'Результаты не найдены',
			'settings.heightUnit.title' => 'Единица роста',
			'settings.weightUnit.title' => 'Единица веса',
			'settings.mealReminders.title' => 'Напоминания о приёмах пищи',
			'settings.mealReminders.subtitle' => 'Оставайтесь в графике с вовремя появляющимися уведомлениями',
			'settings.localInference.title' => 'Анализ блюд на устройстве',
			'settings.localInference.subtitle' => 'Распознавание поддерживаемых блюд с помощью Gemini Nano перед расчетом питательной ценности',
			'settings.localInference.unavailable' => 'Недоступно на этом устройстве',
			'settings.localInference.rolloutUnavailable' => 'Подходящее оборудование найдено, но эта функция не включена для данной версии приложения',
			'settings.localInference.modelSetup' => 'Gemini Nano должен завершить загрузку, прежде чем эту функцию можно будет включить',
			'settings.localInference.useLocalTitle' => 'Использовать анализ на устройстве',
			'settings.localInference.useLocalSubtitle' => 'Дополнительно, по умолчанию выключено. Результаты для сложных блюд могут быть менее точными.',
			'settings.localInference.disclosureTitle' => 'Перед включением анализа на устройстве',
			'settings.localInference.disclosureBody' => 'Gemini Nano может определять ингредиенты и оценивать порции на поддерживаемых устройствах Android. Проверенный вами список ингредиентов отправляется в Calorify для сопоставления с данными USDA и расчета.',
			'settings.localInference.disclosureLimit1' => 'Сложные блюда, скрытые ингредиенты и размеры порций могут быть определены неверно.',
			'settings.localInference.disclosureLimit2' => 'Модель может быть недоступна во время загрузки, при высокой нагрузке, в фоновом режиме или из-за ограничений устройства.',
			'settings.localInference.disclosureLimit3' => 'Если локальное распознавание не может быть завершено, эта бета-версия автоматически отправит исходное описание вашего блюда в Calorify для облачного анализа.',
			'settings.localInference.acknowledgement' => 'Я понимаю, что должен проверять распознанные ингредиенты и порции.',
			'settings.localInference.enable' => 'Подтвердить и включить',
			'settings.localInference.cancel' => 'Отмена',
			'settings.theme.title' => 'Тема',
			'settings.theme.light' => 'Светлая',
			'settings.theme.dark' => 'Тёмная',
			'settings.theme.system' => 'Системная',
			'settings.sendFeedback.title' => 'Отправить отзыв',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Помогите улучшить ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel}: отзыв о приложении',
			'settings.sendFeedback.emailBodyPrefix' => 'Пожалуйста, оставьте ваш отзыв ниже:',
			'settings.sendFeedback.appVersion' => 'Версия приложения',
			'settings.sendFeedback.device' => 'Устройство',
			'settings.sendFeedback.osVersion' => 'Версия ОС',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Экспорт истории приёмов пищи',
			'settings.exportMealHistory.subtitle' => 'Поделиться CSV с вашими записями',
			'settings.exportMealHistory.shareText' => 'Экспорт истории приёмов пищи Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Не удалось экспортировать историю: ${error}',
			'settings.clearAllData.title' => 'Удалить все данные',
			'settings.clearAllData.subtitle' => 'Удалить данные Calorify, сохранённые на этом устройстве',
			'settings.clearAllData.localOnlySubtitle' => 'Удалить данные Calorify, сохранённые на этом устройстве',
			'settings.clearAllData.confirmationTitle' => 'Удалить все данные?',
			'settings.clearAllData.confirmationMessage' => 'Записи о питании, избранное и настройки профиля будут безвозвратно удалены с этого устройства. Приёмы пищи, уже отправленные в Health Connect, и доступ к Health Connect управляются отдельно в разделе Настройки > Health Connect.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Записи о питании, избранное и настройки профиля будут безвозвратно удалены с этого устройства. Приёмы пищи, уже отправленные в Health Connect, и доступ к Health Connect управляются отдельно в разделе Настройки > Health Connect.',
			'settings.clearAllData.cancel' => 'Отмена',
			'settings.clearAllData.clearEverything' => 'Удалить всё',
			'settings.debugOptions.title' => 'Опции отладки',
			'settings.developerModeEnabled' => 'Режим разработчика включён!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Просмотр и управление разрешениями',
			'settings.healthConnect.unavailable.title' => 'Health Connect недоступен',
			'settings.healthConnect.unavailable.description' => 'Health Connect не поддерживается на этом устройстве.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect не поддерживается на этом устройстве.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect требует внимания',
			'settings.healthConnect.updateRequired.description' => 'Установите или обновите Health Connect, прежде чем управлять доступом.',
			'settings.healthConnect.updateRequired.action' => 'Установить или обновить',
			'settings.healthConnect.permissions.title' => 'Разрешения',
			'settings.healthConnect.permissions.description' => 'Запрашиваются следующие разрешения для интеграции с Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Разрешено',
			'settings.healthConnect.permissions.notGranted' => 'Не разрешено',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Чтение общего числа сожжённых калорий',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Позволяет приложению читать ваши общие сожжённые калории из Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Это разрешение используется для отображения ежедневного сожжённого количества калорий в приложении, помогая понять общий расход энергии за день.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Чтение данных о питании',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Позволяет приложению читать данные о питании из Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Это разрешение позволяет приложению получать информацию о питании, которую могли записать другие приложения, подключённые к Health Connect, для полного обзора вашего питания.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Запись данных о питании',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Позволяет приложению записывать данные о питании в Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Это разрешение позволяет приложению синхронизировать ваши записи питания с Health Connect, делая их доступными другим приложениям здоровья и фитнеса.',
			'settings.healthConnect.managePermissions' => 'Управление разрешениями',
			'settings.healthConnect.openSettings' => 'Открыть настройки Health Connect',
			'settings.healthConnect.disconnect' => 'Отключить Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Отключить Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify потеряет доступ к Health Connect. Уже записанные туда данные удалены не будут.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Отключить',
			'settings.healthConnect.deleteSyncedMeals' => 'Удалить приёмы пищи Calorify из Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Удалить синхронизированные приёмы пищи?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Удалить из Health Connect приёмы пищи, синхронизированные этой версией Calorify? Локальный журнал питания не изменится. Более ранние записи Calorify, возможно, потребуется удалить через раздел «Управление данными» в Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Удалить синхронизированные приёмы пищи',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Приёмы пищи Calorify удалены из Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Не удалось удалить синхронизированные приёмы пищи. Повторите попытку.',
			'settings.healthConnect.connectionPartial' => 'Некоторые функции Health Connect включены.',
			'settings.healthConnect.connectionComplete' => 'Обе функции Health Connect включены.',
			'settings.healthConnect.actionFailed' => 'Не удалось открыть Health Connect. Повторите попытку.',
			'settings.healthConnect.requestPermissions' => 'Запросить разрешения',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Запрос разрешений был отменён или не удался. Пожалуйста, попробуйте снова или предоставьте разрешения вручную в настройках Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Не удалось запросить разрешения. Пожалуйста, попробуйте снова или предоставьте разрешения вручную в настройках Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Запрос разрешений...',
			'settings.about.title' => 'О программе',
			'settings.about.tagline' => 'Быстро, бесплатно и с приоритетом приватности',
			'settings.about.ourStory.title' => 'Наша история',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} родился из простой фрустрации: большинство приложений для подсчёта калорий либо слишком сложны, требуют постоянного ручного ввода, берут высокую плату за подписку, либо нарушают приватность.\n\nКак одиночный разработчик, я хотел создать что‑то проще и честнее — приложение, которое использует AI, чтобы снизить усилия, остаётся быстрым и бесплатным, и уважительно относится к вашим данным о здоровье.\n\n${appLabel} — это приложение, которого мне хотелось бы: без аккаунтов, без отслеживания, без рекламы — только понятные, практичные выводы и ваши цели по здоровью.',
			'settings.about.privacy.title' => 'Ваша приватность важна',
			'settings.about.privacy.description' => 'Приватность — не второстепенная мысль, а принцип проектирования. Это означает следующее:',
			'settings.about.privacy.noAccounts' => 'Без аккаунтов\nИспользуйте приложение сразу. Никаких регистрации и идентичностей.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Ограниченная аналитика и диагностика\n${appLabel} использует основные события приложения и диагностику сбоев для повышения надёжности. Значения показателей здоровья не используются для рекламы и не продаются.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Ограниченная аналитика и диагностика\n${appLabel} использует основные события приложения и диагностику сбоев для повышения надёжности. Значения показателей здоровья не используются для рекламы и не продаются.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Без рекламы по дизайну\n${appLabel} создан работать без рекламы и монетизации на основе данных.',
			'settings.about.privacy.noDataSelling' => 'Без продажи данных\nВаши данные о здоровье никогда не продаются и не передаются третьим лицам.',
			'settings.about.privacy.localStorage' => 'Приоритет локального хранения\nВаши данные остаются на вашем устройстве.',
			'settings.about.privacy.privacyPolicy' => 'Политика конфиденциальности',
			'settings.about.developer.title' => 'Создано одним разработчиком',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} создаётся и поддерживается одним разработчиком, который делает акцент на спокойном, уважающем приватность ПО для здоровья.\n\nОтзывы читаются лично и помогают формировать развитие приложения.',
			'settings.about.developer.website' => 'Вебсайт',
			'settings.about.developer.email' => 'Электронная почта',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Понравился ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Ваш отзыв помогает сделать ${appLabel} лучше для всех.',
			'settings.about.feedback.rateApp' => 'Оценить в Play Store',
			'settings.about.feedback.sendFeedback' => 'Отправить отзыв',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify, версия ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Сборка ${buildNumber}',
			'reminders.title' => 'Оставайтесь в графике с напоминаниями',
			'reminders.description' => 'Получайте мягкие напоминания записывать приёмы пищи и поддерживать последовательность в достижении целей по питанию',
			'reminders.notificationsEnabled' => 'Уведомления включены',
			'reminders.notificationsDisabled' => 'Уведомления отключены',
			'reminders.enabledSubtitle' => 'Вы будете получать напоминания о приёмах пищи',
			'reminders.disabledSubtitle' => 'Включите уведомления, чтобы получать напоминания о приёмах пищи',
			'reminders.mealReminders' => 'Напоминания о приёмах',
			'reminders.breakfast' => 'Завтрак',
			'reminders.lunch' => 'Обед',
			'reminders.dinner' => 'Ужин',
			'reminders.snack' => 'Перекус',
			'reminders.unknown' => 'Неизвестно',
			'reminders.change' => 'Изменить',
			'reminders.enableNotifications' => 'Включить уведомления',
			'reminders.skipForNow' => 'Пропустить',
			'reminders.saveChanges' => 'Сохранить',
			'reminders.enabledSuccessfully' => 'Уведомления успешно включены!',
			'reminders.permissionDenied' => 'Разрешение на уведомления отклонено',
			'reminders.errorEnabling' => ({required Object error}) => 'Ошибка при включении уведомлений: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Ошибка при завершении настройки: ${error}',
			'notifications.breakfast.title' => 'Время завтрака! 🍳',
			'notifications.breakfast.body' => 'Не забудьте зафиксировать завтрак',
			'notifications.lunch.title' => 'Время обеда! 🥗',
			_ => null,
		} ?? switch (path) {
			'notifications.lunch.body' => 'Пора зафиксировать обед',
			'notifications.dinner.title' => 'Время ужина! 🍽️',
			'notifications.dinner.body' => 'Не забудьте зафиксировать ужин',
			'notifications.snack.title' => 'Время перекуса! 🍎',
			'notifications.snack.body' => 'Пора для полезного перекуса',
			'notifications.test.title' => 'Тестовое уведомление',
			'login.title' => 'Вход',
			'login.signInWithGoogle' => 'Войти через Google',
			'login.signInFailed' => 'Вход через Google не удался или был отменён.',
			'disclaimer.pleaseNote' => 'Обратите внимание',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} предоставляет оценочные данные о питании. Точность зависит от вашего ввода и вариаций пищи. Используйте как ориентир, а не как окончательный источник. Для персональных рекомендаций обратитесь к специалисту.',
			'disclaimer.snap.portionSize.title' => 'Размер порции',
			'disclaimer.snap.portionSize.description' => 'Точность оценок в значительной мере зависит от правильной оценки вами размера порции.',
			'disclaimer.snap.preparationMethods.title' => 'Методы приготовления',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Методы приготовления могут существенно менять питательную ценность. Оценки ${appLabel} не всегда учитывают все эти вариации.',
			'disclaimer.snap.ingredients.title' => 'Ингредиенты',
			'disclaimer.snap.ingredients.description' => 'Сложные блюда с множеством скрытых ингредиентов могут давать менее точные оценки.',
			'disclaimer.snap.databaseLimitations.title' => 'Ограничения базы данных',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'База продуктов ${appLabel} обширна, но может не содержать каждой отдельной позиции или её вариаций.',
			'disclaimer.weightEstimate.title' => 'Оценка изменения веса',
			'disclaimer.weightEstimate.description' => 'Прогноз изменения веса — теоретическая оценка, основанная на простой модели «калории внутрь vs калории наружу». Он предназначен для мотивации, а не как предсказание реального веса.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Точность калорий',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Эта оценка точна лишь настолько, насколько точны ваши записи о потреблении и расходе калорий. Неточные записи дадут неточный прогноз.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Биологические факторы',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Реальная потеря/набор веса зависит от метаболизма, гормонов, сна, стресса, гидратации и других индивидуальных факторов, которые ${appLabel} не может измерить.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Водный вес и колебания',
			'disclaimer.weightEstimate.waterWeight.description' => 'Нормальный ежедневный вес может значительно колебаться из‑за удержания воды, переваривания и времени измерения. Оценка не учитывает эти ежедневные изменения.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Профессиональная консультация',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Не используйте эту оценку для медицинских решений. Всегда консультируйтесь с врачом или диетологом для персональных рекомендаций.',
			'disclaimer.healthMetrics.description' => 'Эти показатели помогают понять потребности организма в энергии и направляют ваши цели по питанию.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Базальный уровень метаболизма (BMR) — это количество калорий, которое ваше тело сжигает в покое для поддержания базовых функций: дыхание, кровообращение и т.д. BMR зависит от возраста, пола, роста и веса. Более высокий BMR обычно означает, что тело сжигает больше калорий в покое (чаще за счёт большей мышечной массы, молодого возраста или мужского пола). Более низкий BMR чаще указывает на меньшую мышечную массу, более зрелый возраст или женский пол.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Полная суточная энергетическая потребность (TDEE) — это общее количество калорий, которое вы сжигаете в день, включая BMR, физическую активность и повседневную активность. TDEE зависит от BMR и уровня активности. Более высокий TDEE означает больший общий расход калорий, обычно из‑за активности или более высокого BMR. Более низкий TDEE говорит о меньшей активности или более низком BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Суточная цель',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Суточная цель — рекомендованный объём калорий в день на основе вашего TDEE и цели по весу. Для похудения вы потребляете меньше калорий, чем ваш TDEE. Для поддержания — примерно равное количество. Для набора — больше калорий, чем ваш TDEE. Это помогает достичь желаемого изменения веса в здоровом темпе.',
			'disclaimer.calorieExpenditure.title' => 'Оценка расхода калорий',
			'disclaimer.calorieExpenditure.description' => 'Когда данные Health Connect недоступны, мы оцениваем сожжённые сегодня калории, используя ваш BMR и уровень активности (TDEE), масштабируя по доле дня, которая прошла.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Как рассчитывается оценка',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Мы вычисляем ваш TDEE (на основе профиля) и умножаем на долю прошедшего дня (часы + минуты) / 24, чтобы оценить, сколько калорий вы сожгли на данный момент.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Профессиональная консультация',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Не используйте эту оценку для медицинских решений. Всегда консультируйтесь с врачом или диетологом для персональных рекомендаций по управлению весом.',
			'localNutritionPhase4.portionSmaller' => 'Меньше',
			'localNutritionPhase4.portionEstimated' => 'Расчётная',
			'localNutritionPhase4.portionLarger' => 'Больше',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Какая порция была ближе всего для ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Какой это был приём пищи?',
			'localNutritionPhase4.localNutritionTip' => 'Рассчитано по проверенным локальным данным о питании.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Скачать данные о питании',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Используйте проверенные строки USDA и детерминированный расчёт на этом устройстве, когда учтены все ингредиенты.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Локальные данные о питании недоступны для этой версии приложения.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Проверенный пакет данных о питании не загружен.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Загрузка и проверка данных о питании…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Пакет ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} строк USDA в кэше · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Проверить обновления',
			'localNutritionPhase4.offlineNutritionClear' => 'Очистить локальные данные о питании',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Очистить локальные данные о питании?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Будут удалены загруженный пакет USDA и кэш поиска. Записанные приёмы пищи сохранят точный снимок пищевой ценности, использованный при сохранении.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Очистить данные',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Не удалось скачать и проверить локальные данные о питании: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Локальные данные о питании очищены',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Назад',
			'watch.common.cancel' => 'Отмена',
			'watch.common.delete' => 'Удалить',
			'watch.common.retry' => 'Повторить',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Питательное вещество',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} г',
			'watch.nutrition.protein' => 'Белки',
			'watch.nutrition.carbs' => 'Углеводы',
			'watch.nutrition.fat' => 'Жиры',
			'watch.nutrition.fiber' => 'Клетчатка',
			'watch.sync.syncWithPhone' => 'Синхронизировать с телефоном',
			'watch.sync.syncing' => 'Синхронизация…',
			'watch.sync.synced' => 'Синхронизировано',
			'watch.sync.syncedJustNow' => 'Синхронизировано только что',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Синхронизировано ${minutes} мин назад',
			'watch.sync.failed' => 'Не удалось синхронизировать',
			'watch.sync.phoneDisconnected' => 'Телефон не подключен',
			'watch.sync.tapToSync' => 'Коснитесь, чтобы синхронизировать',
			'watch.sync.refreshFailed' => 'Не удалось обновить. Проверьте телефон.',
			'watch.sync.openPhone' => 'Откройте Calorify на телефоне, затем нажмите «Обновить». ',
			'watch.home.today' => 'Сегодня',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} ккал потреблено из ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} сверх цели',
			'watch.home.remaining' => ({required Object calories}) => '${calories} осталось',
			'watch.home.left' => ({required Object calories}) => '${calories} осталось',
			'watch.home.goal' => ({required Object calories}) => 'Цель: ${calories} ккал',
			'watch.home.logMeal' => 'Записать приём пищи',
			'watch.home.todayMeals' => 'Приёмы пищи за сегодня',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Приёмы пищи за сегодня, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Показать ещё ${count}',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} дополнительных приёмов пищи, коснитесь, чтобы увидеть все',
			'watch.home.noMeals' => 'Нет записей о приёмах пищи',
			'watch.home.noMealsSemantics' => 'Сегодня нет записей о приёмах пищи',
			'watch.home.tapLog' => 'Нажмите «Записать», чтобы начать',
			'watch.home.removedFromQueue' => 'Приём пищи удалён из офлайн-очереди.',
			'watch.home.removedOffline' => 'Приём пищи удалён локально. Он синхронизируется, когда телефон подключится.',
			'watch.home.deleteFailed' => 'Не удалось удалить приём пищи',
			'watch.history.title' => 'Приёмы пищи за сегодня',
			'watch.history.refresh' => 'Обновить приёмы пищи',
			'watch.history.loadFailed' => 'Не удалось загрузить приёмы пищи',
			'watch.history.syncFailed' => 'Не удалось синхронизировать',
			'watch.history.emptyTitle' => 'Пока нет приёмов пищи',
			'watch.history.emptyMessage' => 'Запишите приём пищи на главном экране, чтобы он появился здесь.',
			'watch.favorites.title' => 'Избранное',
			'watch.favorites.refresh' => 'Обновить избранное',
			'watch.favorites.loadFailed' => 'Не удалось загрузить избранное',
			'watch.favorites.syncFailed' => 'Не удалось синхронизировать',
			'watch.favorites.emptyTitle' => 'Пока нет избранного',
			'watch.favorites.emptyMessage' => 'Помечайте блюда звёздочкой в приложении на телефоне, чтобы здесь логировать их одним нажатием.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} ккал. Нажмите, чтобы записать.',
			'watch.favorites.logged' => ({required Object name}) => '${name} добавлено!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} сохранено локально. Синхронизируется, когда телефон подключится.',
			'watch.favorites.saveFailed' => 'Не удалось сохранить приём пищи. Попробуйте ещё раз.',
			'watch.favorites.log' => 'Записать',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} ккал, записано в ${time}.',
			'watch.meal.longPressDelete' => 'Удерживайте для удаления.',
			'watch.meal.deleteTitle' => 'Удалить приём пищи?',
			'watch.voice.title' => 'Голосовой ввод приёма пищи',
			'watch.voice.processing' => 'Проверка приёма пищи…',
			'watch.voice.processingDescription' => 'Оценка порций и нутриентов',
			'watch.voice.listening' => 'Слушаю…',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Остановить запись',
			'watch.voice.start' => 'Нажмите, чтобы начать запись',
			'watch.voice.starting' => 'Запуск микрофона…',
			'watch.voice.prompt' => 'Нажмите, затем опишите приём пищи',
			'watch.voice.tapToRetry' => 'Нажмите, чтобы повторить',
			'watch.voice.example' => 'Попробуйте: «2 роти с далом»',
			'watch.voice.unavailable' => 'Голосовой ввод недоступен. Проверьте разрешение на микрофон в настройках часов.',
			'watch.voice.didNotStart' => 'Микрофон не запустился. Нажмите, чтобы повторить.',
			'watch.voice.startFailed' => 'Не удалось начать запись. Проверьте разрешения на микрофон.',
			'watch.voice.allowMicrophone' => 'Разрешите доступ к микрофону, чтобы записывать приёмы пищи голосом.',
			'watch.voice.needsConnection' => 'Распознавание голоса требует подключения. Нажмите, чтобы повторить.',
			'watch.voice.microphoneUnavailable' => 'Микрофон недоступен. Нажмите, чтобы повторить.',
			'watch.voice.microphoneBusy' => 'Микрофон занят. Подождите немного и повторите попытку.',
			'watch.voice.languageUnsupported' => 'Голосовой ввод не поддерживает язык часов.',
			'watch.voice.temporarilyBusy' => 'Голосовой ввод временно недоступен. Подождите немного и повторите.',
			'watch.voice.notRecognized' => 'Не расслышано. Нажмите на микрофон и попробуйте снова.',
			'watch.voice.noSpeech' => 'Речь не обнаружена. Нажмите на микрофон и попробуйте снова.',
			'watch.voice.analysisFailed' => 'Анализ не удался. Пожалуйста, попробуйте ещё раз.',
			'watch.voice.mealNotIdentified' => 'Не удалось распознать приём пищи. Попробуйте описать иначе.',
			'watch.result.title' => 'Детали приёма пищи',
			'watch.result.savedOffline' => 'Сохранено локально',
			'watch.result.logged' => 'Записано!',
			'watch.result.mealFound' => 'Приём пищи найден',
			'watch.result.estimatedEnergy' => 'Оценённая калорийность',
			'watch.result.logMeal' => 'Записать приём пищи',
			'watch.result.logging' => 'Сохранение…',
			'watch.result.logAnother' => 'Записать ещё один',
			'watch.result.goingBack' => 'Возврат…',
			'watch.result.savedOfflineMessage' => 'Приём пищи сохранён локально. Он синхронизируется, когда телефон подключится.',
			'watch.result.saveFailed' => 'Не удалось сохранить приём пищи. Попробуйте ещё раз.',
			'common.betaTag' => 'Бета',
			'common.close' => 'Закрыть',
			'common.kContinue' => 'Продолжить',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Нравится ${appLabel}?',
			'feedbackRating.yes' => 'Да, мне нравится',
			'feedbackRating.no' => 'Не очень',
			'feedbackRating.rateStepHeading' => 'Оцените в Play Store',
			'feedbackRating.emailStepHeading' => 'Отправьте отзыв по почте',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Быстрая оценка помогает другим найти ${appLabel} и поддерживает развитие. Оставите пару слов?',
			'feedbackRating.shareFeedbackViaEmail' => 'Ваш отзыв формирует дальнейшее развитие — мы читаем каждое сообщение. Хотите поделиться мыслями по электронной почте?',
			'feedbackRating.rateCta' => 'Оценить в Play Store',
			'feedbackRating.maybeLater' => 'Может позже',
			'feedbackRating.sendFeedback' => 'Отправить отзыв',
			'feedbackRating.noThanks' => 'Нет, спасибо',
			'feedbackRating.aboutUsDescription' => 'Создано с заботой небольшой командой. Мы ориентированы на приватность, простоту и помощь в формировании полезных привычек питания.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Интересно, кто стоит за ${appLabel}? Смотрите ',
			'feedbackRating.aboutUsLinkLabel' => 'О нас',
			'feedbackRating.thankYouMessage' => 'Спасибо! Мы спросим ещё раз позже.',
			'health.syncFailed' => 'Не удалось синхронизировать с Health Connect',
			'health.mealSynced' => 'Приём пищи синхронизирован с Health Connect',
			_ => null,
		};
	}
}
