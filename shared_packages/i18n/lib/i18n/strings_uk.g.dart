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
class TranslationsUk extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsUk({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.uk,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <uk>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsUk _root = this; // ignore: unused_field

	@override 
	TranslationsUk $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsUk(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Українська';
	@override String get flag => '🇺🇦';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$uk errors = _Translations$errors$uk._(_root);
	@override late final _Translations$onboarding$uk onboarding = _Translations$onboarding$uk._(_root);
	@override late final _Translations$tabs$uk tabs = _Translations$tabs$uk._(_root);
	@override late final _Translations$home$uk home = _Translations$home$uk._(_root);
	@override late final _Translations$history$uk history = _Translations$history$uk._(_root);
	@override late final _Translations$meal$uk meal = _Translations$meal$uk._(_root);
	@override late final _Translations$favorites$uk favorites = _Translations$favorites$uk._(_root);
	@override late final _Translations$profile$uk profile = _Translations$profile$uk._(_root);
	@override late final _Translations$healthScore$uk healthScore = _Translations$healthScore$uk._(_root);
	@override late final _Translations$editProfile$uk editProfile = _Translations$editProfile$uk._(_root);
	@override late final _Translations$settings$uk settings = _Translations$settings$uk._(_root);
	@override late final _Translations$reminders$uk reminders = _Translations$reminders$uk._(_root);
	@override late final _Translations$notifications$uk notifications = _Translations$notifications$uk._(_root);
	@override late final _Translations$login$uk login = _Translations$login$uk._(_root);
	@override late final _Translations$disclaimer$uk disclaimer = _Translations$disclaimer$uk._(_root);
	@override late final _Translations$localNutritionPhase4$uk localNutritionPhase4 = _Translations$localNutritionPhase4$uk._(_root);
	@override late final _Translations$watch$uk watch = _Translations$watch$uk._(_root);
	@override late final _Translations$common$uk common = _Translations$common$uk._(_root);
	@override late final _Translations$feedbackRating$uk feedbackRating = _Translations$feedbackRating$uk._(_root);
	@override late final _Translations$health$uk health = _Translations$health$uk._(_root);
}

// Path: errors
class _Translations$errors$uk extends Translations$errors$en {
	_Translations$errors$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Ви зробили забагато запитів. Будь ласка, зачекайте трохи перед наступною спробою.';
	@override String get networkError => 'Помилка мережі. Будь ласка, перевірте інтернет-з\'єднання.';
	@override String get unknownError => 'Щось пішло не так. Спробуйте пізніше.';
	@override String get loadingProfileData => 'Помилка завантаження даних профілю';
	@override String get somethingWentWrong => 'Щось пішло не так.';
	@override String get retry => 'Спробувати ще раз';
}

// Path: onboarding
class _Translations$onboarding$uk extends Translations$onboarding$en {
	_Translations$onboarding$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Ласкаво просимо до ${appLabel}';
	@override String get subtitle => 'Ваш персональний супутник у харчуванні з підтримкою AI';
	@override String get getStarted => 'Почати';
	@override late final _Translations$onboarding$features$uk features = _Translations$onboarding$features$uk._(_root);
	@override late final _Translations$onboarding$gender$uk gender = _Translations$onboarding$gender$uk._(_root);
	@override late final _Translations$onboarding$height$uk height = _Translations$onboarding$height$uk._(_root);
	@override late final _Translations$onboarding$weight$uk weight = _Translations$onboarding$weight$uk._(_root);
	@override late final _Translations$onboarding$age$uk age = _Translations$onboarding$age$uk._(_root);
	@override late final _Translations$onboarding$bmiScale$uk bmiScale = _Translations$onboarding$bmiScale$uk._(_root);
	@override late final _Translations$onboarding$weightGoal$uk weightGoal = _Translations$onboarding$weightGoal$uk._(_root);
	@override late final _Translations$onboarding$activityLevel$uk activityLevel = _Translations$onboarding$activityLevel$uk._(_root);
	@override late final _Translations$onboarding$healthConnect$uk healthConnect = _Translations$onboarding$healthConnect$uk._(_root);
	@override late final _Translations$onboarding$reinforcement$uk reinforcement = _Translations$onboarding$reinforcement$uk._(_root);
}

// Path: tabs
class _Translations$tabs$uk extends Translations$tabs$en {
	_Translations$tabs$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Панель';
	@override String get history => 'Історія';
}

// Path: home
class _Translations$home$uk extends Translations$home$en {
	_Translations$home$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$uk aiSummary = _Translations$home$aiSummary$uk._(_root);
	@override late final _Translations$home$dailyGoal$uk dailyGoal = _Translations$home$dailyGoal$uk._(_root);
	@override late final _Translations$home$dailySummary$uk dailySummary = _Translations$home$dailySummary$uk._(_root);
	@override late final _Translations$home$intakeProgress$uk intakeProgress = _Translations$home$intakeProgress$uk._(_root);
	@override late final _Translations$home$intakeHistory$uk intakeHistory = _Translations$home$intakeHistory$uk._(_root);
	@override late final _Translations$home$mealLog$uk mealLog = _Translations$home$mealLog$uk._(_root);
	@override late final _Translations$home$mealDescription$uk mealDescription = _Translations$home$mealDescription$uk._(_root);
	@override late final _Translations$home$favoriteMeals$uk favoriteMeals = _Translations$home$favoriteMeals$uk._(_root);
	@override late final _Translations$home$mealSnap$uk mealSnap = _Translations$home$mealSnap$uk._(_root);
	@override late final _Translations$home$connectHealth$uk connectHealth = _Translations$home$connectHealth$uk._(_root);
}

// Path: history
class _Translations$history$uk extends Translations$history$en {
	_Translations$history$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Немає записаних страв';
	@override String get emptyMessage => 'Зробіть фото останньої страви, щоб записати її тут.';
	@override String get today => 'Сьогодні';
	@override String get yesterday => 'Вчора';
}

// Path: meal
class _Translations$meal$uk extends Translations$meal$en {
	_Translations$meal$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Ой!';
	@override String get delete => 'Видалити';
	@override String get editMeal => 'Редагувати страву';
	@override String get addMeal => 'Додати страву';
	@override String get saveMeal => 'Зберегти страву';
	@override String get save => 'Зберегти';
	@override String get mealName => 'Назва страви';
	@override String get mealNameHint => 'наприклад: Омлет з тостом';
	@override String get nameRequired => 'Введіть назву страви перед збереженням.';
	@override String get mealQuantity => 'Кількість';
	@override String get mealQuantityHint => 'наприклад: 1 миска, 2 шматки';
	@override String get timeOfMeal => 'Час прийому';
	@override String get timeOfMealHint => 'Виберіть час, коли ви їли';
	@override String get mealType => 'Тип страви';
	@override late final _Translations$meal$nutrition$uk nutrition = _Translations$meal$nutrition$uk._(_root);
	@override late final _Translations$meal$deleteConfirmation$uk deleteConfirmation = _Translations$meal$deleteConfirmation$uk._(_root);
	@override String get addedToLog => 'Страва додана до записів!';
	@override String couldNotAdd({required Object error}) => 'Не вдалося додати страву: ${error}';
	@override String get savedSuccessfully => 'Страва успішно додана!';
	@override String get updatedSuccessfully => 'Страву успішно оновлено!';
	@override String errorSaving({required Object error}) => 'Помилка при збереженні страви: ${error}';
	@override String get removedFromFavorites => 'Вилучено з улюблених!';
	@override String get savedAsFavorite => 'Страву збережено в улюблених!';
	@override String get unfavorite => 'Прибрати з улюблених';
	@override String couldNotUpdateFavorite({required Object error}) => 'Не вдалося оновити улюблене: ${error}';
	@override String get feedbackThanks => 'Дякуємо за відгук!';
	@override String get reanalysisUpdated => 'Аналіз страви оновлено на основі вашого відгуку.';
	@override String failedToProcess({required Object error}) => 'Не вдалося обробити: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Не вдалося обробити зображення: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Помилка стиснення зображення: ${error}';
	@override String get failedToSave => 'Не вдалося зберегти дані. Спробуйте ще раз.';
	@override String get skip => 'Пропустити';
	@override late final _Translations$meal$questionFlow$uk questionFlow = _Translations$meal$questionFlow$uk._(_root);
	@override late final _Translations$meal$analysis$uk analysis = _Translations$meal$analysis$uk._(_root);
	@override late final _Translations$meal$localInference$uk localInference = _Translations$meal$localInference$uk._(_root);
	@override late final _Translations$meal$feedback$uk feedback = _Translations$meal$feedback$uk._(_root);
}

// Path: favorites
class _Translations$favorites$uk extends Translations$favorites$en {
	_Translations$favorites$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Улюблене';
	@override String get empty => 'Улюблені страви відсутні.';
	@override String get searchPlaceholder => 'Пошук улюблених страв';
	@override String get searchEmptyTitle => 'За пошуком нічого не знайдено';
	@override String get searchEmptySubtitle => 'Спробуйте іншу назву страви, кількість або тип';
	@override String get sortLabel => 'Порядок сортування';
	@override String get undo => 'Скасувати';
	@override String removed({required Object name}) => 'Вилучено ${name} з улюблених';
	@override late final _Translations$favorites$sortOptions$uk sortOptions = _Translations$favorites$sortOptions$uk._(_root);
}

// Path: profile
class _Translations$profile$uk extends Translations$profile$en {
	_Translations$profile$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профіль';
	@override String get noProfileData => 'Дані профілю не знайдено';
	@override String get yourProfile => 'Ваш профіль';
	@override String get viewAndManage => 'Перегляд та керування інформацією про здоров\'я';
	@override late final _Translations$profile$sections$uk sections = _Translations$profile$sections$uk._(_root);
	@override String get gender => 'Стать';
	@override String get height => 'Зріст';
	@override String get weight => 'Вага';
	@override String get age => 'Вік';
	@override String get weightGoal => 'Мета по вазі';
	@override String get targetWeight => 'Цільова вага';
	@override String get activityLevel => 'Рівень активності';
	@override String get healthMetrics => 'Показники здоров\'я';
	@override String get notSet => 'Не встановлено';
	@override String get years => 'років';
	@override String get updatedSuccessfully => 'Профіль успішно оновлено!';
	@override late final _Translations$profile$calculatedValues$uk calculatedValues = _Translations$profile$calculatedValues$uk._(_root);
}

// Path: healthScore
class _Translations$healthScore$uk extends Translations$healthScore$en {
	_Translations$healthScore$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оцінка здоров\'я';
	@override String get whyThisScore => 'Чому така оцінка?';
	@override String get note => 'Ця оцінка — AI‑оцінка, побудована на виявлених інгредієнтах і поживній густині. Для дієтичних порад завжди консультуйтеся з фахівцем.';
	@override String get unhealthy => 'Нездорово';
	@override String get healthy => 'Здорово';
	@override String get neutral => 'Нейтрально';
}

// Path: editProfile
class _Translations$editProfile$uk extends Translations$editProfile$en {
	_Translations$editProfile$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редагувати профіль';
	@override late final _Translations$editProfile$sections$uk sections = _Translations$editProfile$sections$uk._(_root);
	@override String get gender => 'Стать';
	@override String get dateOfBirth => 'Дата народження';
	@override String get height => 'Зріст';
	@override String get weight => 'Вага';
	@override String get weightGoal => 'Мета по вазі';
	@override String get activityLevel => 'Рівень активності';
	@override String get metric => 'Метрична';
	@override String get imperial => 'Імперська';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'фунти';
	@override String get metricCm => 'Метрична (cm)';
	@override String get imperialFtIn => 'Імперська (ft/in)';
	@override String get metricKg => 'Метрична (kg)';
	@override String get imperialLbs => 'Імперська (lbs)';
	@override late final _Translations$editProfile$genders$uk genders = _Translations$editProfile$genders$uk._(_root);
	@override late final _Translations$editProfile$weightGoals$uk weightGoals = _Translations$editProfile$weightGoals$uk._(_root);
	@override late final _Translations$editProfile$activityLevels$uk activityLevels = _Translations$editProfile$activityLevels$uk._(_root);
}

// Path: settings
class _Translations$settings$uk extends Translations$settings$en {
	_Translations$settings$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Налаштування';
	@override late final _Translations$settings$sections$uk sections = _Translations$settings$sections$uk._(_root);
	@override late final _Translations$settings$editProfile$uk editProfile = _Translations$settings$editProfile$uk._(_root);
	@override late final _Translations$settings$language$uk language = _Translations$settings$language$uk._(_root);
	@override late final _Translations$settings$heightUnit$uk heightUnit = _Translations$settings$heightUnit$uk._(_root);
	@override late final _Translations$settings$weightUnit$uk weightUnit = _Translations$settings$weightUnit$uk._(_root);
	@override late final _Translations$settings$mealReminders$uk mealReminders = _Translations$settings$mealReminders$uk._(_root);
	@override late final _Translations$settings$localInference$uk localInference = _Translations$settings$localInference$uk._(_root);
	@override late final _Translations$settings$theme$uk theme = _Translations$settings$theme$uk._(_root);
	@override late final _Translations$settings$sendFeedback$uk sendFeedback = _Translations$settings$sendFeedback$uk._(_root);
	@override late final _Translations$settings$exportMealHistory$uk exportMealHistory = _Translations$settings$exportMealHistory$uk._(_root);
	@override late final _Translations$settings$clearAllData$uk clearAllData = _Translations$settings$clearAllData$uk._(_root);
	@override late final _Translations$settings$debugOptions$uk debugOptions = _Translations$settings$debugOptions$uk._(_root);
	@override String get developerModeEnabled => 'Режим розробника увімкнено!';
	@override late final _Translations$settings$healthConnect$uk healthConnect = _Translations$settings$healthConnect$uk._(_root);
	@override late final _Translations$settings$about$uk about = _Translations$settings$about$uk._(_root);
	@override late final _Translations$settings$appInfo$uk appInfo = _Translations$settings$appInfo$uk._(_root);
}

// Path: reminders
class _Translations$reminders$uk extends Translations$reminders$en {
	_Translations$reminders$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тримайтеся плану за допомогою нагадувань';
	@override String get description => 'Отримуйте м’які нагадування записувати прийоми їжі і залишатися послідовними у харчових цілях';
	@override String get notificationsEnabled => 'Сповіщення увімкнено';
	@override String get notificationsDisabled => 'Сповіщення вимкнено';
	@override String get enabledSubtitle => 'Ви будете отримувати нагадування про прийоми їжі';
	@override String get disabledSubtitle => 'Увімкніть сповіщення, щоб отримувати нагадування';
	@override String get mealReminders => 'Нагадування про їжу';
	@override String get breakfast => 'Сніданок';
	@override String get lunch => 'Обід';
	@override String get dinner => 'Вечеря';
	@override String get snack => 'Перекус';
	@override String get unknown => 'Невідомо';
	@override String get change => 'Змінити';
	@override String get enableNotifications => 'Увімкнути сповіщення';
	@override String get skipForNow => 'Пропустити зараз';
	@override String get saveChanges => 'Зберегти зміни';
	@override String get enabledSuccessfully => 'Сповіщення успішно увімкнено!';
	@override String get permissionDenied => 'Дозвіл на сповіщення відхилено';
	@override String errorEnabling({required Object error}) => 'Помилка увімкнення сповіщень: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Помилка завершення налаштування: ${error}';
}

// Path: notifications
class _Translations$notifications$uk extends Translations$notifications$en {
	_Translations$notifications$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$uk breakfast = _Translations$notifications$breakfast$uk._(_root);
	@override late final _Translations$notifications$lunch$uk lunch = _Translations$notifications$lunch$uk._(_root);
	@override late final _Translations$notifications$dinner$uk dinner = _Translations$notifications$dinner$uk._(_root);
	@override late final _Translations$notifications$snack$uk snack = _Translations$notifications$snack$uk._(_root);
	@override late final _Translations$notifications$test$uk test = _Translations$notifications$test$uk._(_root);
}

// Path: login
class _Translations$login$uk extends Translations$login$en {
	_Translations$login$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Увійти';
	@override String get signInWithGoogle => 'Увійти через Google';
	@override String get signInFailed => 'Вхід через Google не вдався або був скасований.';
}

// Path: disclaimer
class _Translations$disclaimer$uk extends Translations$disclaimer$en {
	_Translations$disclaimer$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Зверніть увагу';
	@override late final _Translations$disclaimer$snap$uk snap = _Translations$disclaimer$snap$uk._(_root);
	@override late final _Translations$disclaimer$weightEstimate$uk weightEstimate = _Translations$disclaimer$weightEstimate$uk._(_root);
	@override late final _Translations$disclaimer$healthMetrics$uk healthMetrics = _Translations$disclaimer$healthMetrics$uk._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$uk calorieExpenditure = _Translations$disclaimer$calorieExpenditure$uk._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$uk extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'Харчову цінність зіставлено із завантаженого пакета USDA';
	@override String get nutritionCached => 'Харчову цінність зіставлено з кешу USDA на пристрої';
	@override String get nutritionMixed => 'Харчову цінність об’єднано із завантажених, кешованих і віддалених рядків USDA';
	@override String get calculationLocal => 'Калорії та макронутрієнти розраховано на цьому пристрої';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: завантажений пакет USDA';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: кеш USDA на пристрої';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: рядок USDA, отриманий через Calorify';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: детермінована харчова константа';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · набір даних ${datasetVersion}';
	@override String get portionSmaller => 'Менша';
	@override String get portionEstimated => 'Орієнтовна';
	@override String get portionLarger => 'Більша';
	@override String portionQuestion({required Object ingredient}) => 'Яка порція була найближчою для ${ingredient}?';
	@override String get mealTypeQuestion => 'Який це був прийом їжі?';
	@override String get localNutritionTip => 'Розраховано за перевіреними локальними даними про харчування.';
	@override String get offlineNutritionTitle => 'Завантажити дані про харчування';
	@override String get offlineNutritionSubtitle => 'Використовуйте перевірені рядки USDA й детермінований розрахунок на цьому пристрої, коли охоплено всі інгредієнти.';
	@override String get offlineNutritionUnavailable => 'Локальні дані про харчування недоступні для цієї версії застосунку.';
	@override String get offlineNutritionNotDownloaded => 'Перевірений пакет даних про харчування не завантажено.';
	@override String get offlineNutritionInstalling => 'Завантаження та перевірка даних про харчування…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Пакет ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} кешованих рядків USDA · ${size}';
	@override String get offlineNutritionUpdate => 'Перевірити оновлення';
	@override String get offlineNutritionClear => 'Очистити локальні дані про харчування';
	@override String get offlineNutritionClearTitle => 'Очистити локальні дані про харчування?';
	@override String get offlineNutritionClearBody => 'Буде видалено завантажений пакет USDA і кеш пошуку. Записані прийоми їжі збережуть точний знімок харчової цінності, використаний під час збереження.';
	@override String get offlineNutritionClearConfirm => 'Очистити дані';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Не вдалося завантажити й перевірити локальні дані про харчування: ${error}';
	@override String get offlineNutritionCleared => 'Локальні дані про харчування очищено';
}

// Path: watch
class _Translations$watch$uk extends Translations$watch$en {
	_Translations$watch$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$uk common = _Translations$watch$common$uk._(_root);
	@override late final _Translations$watch$nutrition$uk nutrition = _Translations$watch$nutrition$uk._(_root);
	@override late final _Translations$watch$sync$uk sync = _Translations$watch$sync$uk._(_root);
	@override late final _Translations$watch$home$uk home = _Translations$watch$home$uk._(_root);
	@override late final _Translations$watch$history$uk history = _Translations$watch$history$uk._(_root);
	@override late final _Translations$watch$favorites$uk favorites = _Translations$watch$favorites$uk._(_root);
	@override late final _Translations$watch$meal$uk meal = _Translations$watch$meal$uk._(_root);
	@override late final _Translations$watch$voice$uk voice = _Translations$watch$voice$uk._(_root);
	@override late final _Translations$watch$result$uk result = _Translations$watch$result$uk._(_root);
}

// Path: common
class _Translations$common$uk extends Translations$common$en {
	_Translations$common$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Бета';
	@override String get close => 'Закрити';
	@override String get kContinue => 'Продовжити';
}

// Path: feedbackRating
class _Translations$feedbackRating$uk extends Translations$feedbackRating$en {
	_Translations$feedbackRating$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Подобається ${appLabel}?';
	@override String get yes => 'Так, мені подобається';
	@override String get no => 'Поки що ні';
	@override String get rateStepHeading => 'Оцініть в Play Store';
	@override String get emailStepHeading => 'Надіслати відгук електронною поштою';
	@override String soloDevMessage({required Object appLabel}) => 'Швидка оцінка допомагає іншим знайти ${appLabel} і підтримує розвиток. Чи не могли б ви залишити відгук?';
	@override String get shareFeedbackViaEmail => 'Ваш відгук формує подальший розвиток — ми читаємо кожне повідомлення. Хочете поділитися думками через email?';
	@override String get rateCta => 'Оцінити в Play Store';
	@override String get maybeLater => 'Можливо пізніше';
	@override String get sendFeedback => 'Надіслати відгук';
	@override String get noThanks => 'Ні, дякую';
	@override String get aboutUsDescription => 'Створено з душею маленькою командою. Ми орієнтовані на приватність, простоту та допомогу у формуванні кращих харчових звичок.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Цікавитесь, хто стоїть за ${appLabel}? Дивіться ';
	@override String get aboutUsLinkLabel => 'Про нас';
	@override String get thankYouMessage => 'Дякуємо! Ми запитаємо ще пізніше.';
}

// Path: health
class _Translations$health$uk extends Translations$health$en {
	_Translations$health$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Не вдалося синхронізувати з Health Connect';
	@override String get mealSynced => 'Страва синхронізована з Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$uk extends Translations$onboarding$features$en {
	_Translations$onboarding$features$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$uk foodRecognition = _Translations$onboarding$features$foodRecognition$uk._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$uk aiAnalysis = _Translations$onboarding$features$aiAnalysis$uk._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$uk healthIntegration = _Translations$onboarding$features$healthIntegration$uk._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$uk extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Яка у вас стать?';
	@override String get description => 'Стать допомагає нам точніше розрахувати ваш базальний метаболізм (BMR).';
	@override String get next => 'Далі';
}

// Path: onboarding.height
class _Translations$onboarding$height$uk extends Translations$onboarding$height$en {
	_Translations$onboarding$height$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Який у вас зріст?';
	@override String get description => 'Ваш зріст допомагає точно розрахувати BMI і енергетичні потреби.';
	@override String get metric => 'Метрична';
	@override String get imperial => 'Імперська';
	@override String get next => 'Далі';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$uk extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Яка ваша поточна вага?';
	@override String get currentDescription => 'Поточна вага потрібна для персоналізації ваших щоденних цілей.';
	@override String get targetTitle => 'Яка ваша цільова вага?';
	@override String get targetDescription => 'Встановлення цільової ваги допомагає визначити довгостроковий план.';
	@override String get metric => 'Метрична';
	@override String get imperial => 'Імперська';
	@override String get next => 'Далі';
}

// Path: onboarding.age
class _Translations$onboarding$age$uk extends Translations$onboarding$age$en {
	_Translations$onboarding$age$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Коли ваш день народження?';
	@override String get description => 'Ваш вік допомагає точно розрахувати потребу в калоріях.';
	@override String get next => 'Далі';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$uk extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Нижче норми';
	@override String get healthy => 'Здорова';
	@override String get overweight => 'Зайва вага';
	@override String get obese => 'Ожиріння';
	@override late final _Translations$onboarding$bmiScale$categories$uk categories = _Translations$onboarding$bmiScale$categories$uk._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$uk messages = _Translations$onboarding$bmiScale$messages$uk._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$uk extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Яка ваша мета?';
	@override String get description => 'Виберіть мету, яка найкраще описує, чого ви хочете досягти';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$uk extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Наскільки ви активні?';
	@override String get description => 'Це допоможе точніше розрахувати ваші щоденні потреби в калоріях';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$uk extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Підключіться до Health Connect';
	@override String get description => 'Синхронізуйте дані про здоров\'я для кращих інсайтів і автоматичного відстеження калорій';
	@override String get overviewDescription => 'Використовуйте спалені калорії в щоденній цілі та за бажанням діліться записаними прийомами їжі з Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$uk automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$uk._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$uk caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$uk._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$uk progressInsights = _Translations$onboarding$healthConnect$progressInsights$uk._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$uk shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$uk._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$uk seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$uk._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$uk userControl = _Translations$onboarding$healthConnect$userControl$uk._(_root);
	@override String get connected => 'Health Connect підключено';
	@override String get notConnected => 'Health Connect не підключено';
	@override String get setup => 'Налаштувати Health Connect';
	@override String get skipForNow => 'Пропустити зараз';
	@override String get statusConnected => 'Health Connect підключено.';
	@override String get statusSuccess => 'Health Connect успішно підключено!';
	@override String get statusNotConnected => 'Виберіть функції Health Connect, які потрібно ввімкнути.';
	@override String get statusPartial => 'Health Connect підключено частково. Надайте решту дозволів, щоб користуватися обома функціями.';
	@override String get statusProviderUpdateRequired => 'Установіть або оновіть Health Connect, щоб продовжити.';
	@override String get statusUnavailable => 'Health Connect не підтримується на цьому пристрої.';
	@override String get installOrUpdate => 'Установити або оновити';
	@override String get manageAccess => 'Керувати доступом';
	@override String statusPermissionDenied({required Object appLabel}) => 'Доступ заборонено. Будь ласка, увімкніть дозволи Health Connect у налаштуваннях телефону для ${appLabel}.';
	@override String statusError({required Object error}) => 'Помилка налаштування Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$uk extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$uk trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$uk._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$uk healthProfile = _Translations$onboarding$reinforcement$healthProfile$uk._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$uk goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$uk._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$uk extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваш AI-звіт';
	@override String get logMore => 'Заносьте більше страв найближчими днями, щоб отримати персоналізовані AI-інсайти.';
	@override String get loading => 'Завантаження звіту...';
	@override String mealCount({required Object count}) => '${count} записаних страв';
	@override String macroBalanceScore({required Object score}) => 'Баланс макро ${score}';
	@override String get topFoods => 'Топ продуктів';
	@override String get trendUp => 'Калорії зростають';
	@override String get trendDown => 'Калорії знижуються';
	@override String get trendSteady => 'Калорії стабільні';
	@override String generatedAt({required Object time}) => 'Оновлено ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$uk extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Встановіть щоденну мету';
	@override String get titleSet => 'Ваша щоденна мета';
	@override String get description => 'Готові розпочати шлях до кращого самопочуття? Встановіть щоденну калорійну ціль нижче, щоб розпочати прогрес.';
	@override String get descriptionSet => 'Ваш компас налаштовано! Це ваша щоденна калорійна ціль.';
	@override String get yourGoal => 'Ваша мета';
	@override String get goal => 'Мета';
	@override String get dailyCalories => 'Щоденні калорії (kcal)';
	@override String get setGoal => 'Встановити мету';
	@override String get intake => 'Спожито';
	@override String get burned => 'Витрачено';
	@override String get weightImpact => 'Вплив на вагу';
	@override String get estLoss => 'Прибл. втрата';
	@override String get estGain => 'Прибл. набір';
	@override String get kcal => 'ккал';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$uk extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Щоденний підсумок';
	@override String get calories => 'Калорії';
	@override String get carbs => 'Вуглеводи';
	@override String get protein => 'Білки';
	@override String get fat => 'Жири';
	@override String get fiber => 'Клітковина';
	@override String get grams => 'г';
	@override String get chartAccessibilityLabel => 'Діаграма макронутрієнтів';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$uk extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сьогоднішній розподіл макро';
	@override String get target => 'Ціль';
	@override String get current => 'Поточне';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$uk extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Історія макро за 7 днів';
	@override String get trendTitle => 'Сьогоднішня тенденція';
	@override String peakHour({required Object hour}) => 'Пік: ${hour}:00';
	@override String get noHistoryYet => 'Історія відсутня';
	@override String get startLogging => 'Почніть записувати страви, щоб бачити ваші\n7‑денні макро-тенденції тут';
}

// Path: home.mealLog
class _Translations$home$mealLog$uk extends Translations$home$mealLog$en {
	_Translations$home$mealLog$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Записані страви';
	@override String get emptyMessage => 'Зробіть фото останньої страви, щоб записати її тут.';
	@override String get noMealsToday => 'За сьогодні немає записів';
	@override String get seeAllMeals => 'Переглянути всі страви';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$uk extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Швидке додавання з AI';
	@override String get description => 'Опишіть страву, а AI подбає про деталі.';
	@override String get hint => 'наприклад: на сніданок я з\'їв велику миску вівсянки з порізаним бананом і ложкою сироваткового протеїну ...';
	@override String get analyzeMeal => 'Аналізувати страву';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$uk extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Улюблені страви';
	@override String get description => 'Швидко додайте одну з улюблених страв.';
	@override String get noFavorites => 'Улюблені страви відсутні.';
	@override String get addFavoriteHint => 'Натисніть зірку на страві, щоб додати її до улюблених.';
	@override String get seeAll => 'Переглянути всі';
	@override String get add => 'Додати';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$uk extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Зфотографуйте й відстежте страву';
	@override String get description => 'Використайте камеру, щоб сфотографувати їжу для AI‑аналізу.';
	@override String get openCamera => 'Відкрити камеру';
	@override String get gallery => 'Галерея';
	@override String get compressingPhoto => 'Оптимізація фото…';
	@override String get uploadingPhoto => 'Завантаження фото…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$uk extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Синхронізувати з Health Connect';
	@override String get description => 'Синхронізуйте дані про харчування з Health Connect';
	@override String get install => 'Встановити';
	@override String get dataUseDescription => 'Використовуйте спалені калорії у своїй цілі та діліться записаними прийомами їжі';
	@override String get installOrUpdate => 'Установити або оновити';
	@override String get connect => 'Підключити';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$uk extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Калорії';
	@override String get carbs => 'Вуглеводи (г)';
	@override String get protein => 'Білки (г)';
	@override String get fat => 'Жири (г)';
	@override String get fiber => 'Клітковина (г)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$uk extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Видалити страву';
	@override String get message => 'Ви впевнені, що хочете видалити цю запис про страву?';
	@override String get cancel => 'Скасувати';
	@override String get delete => 'Видалити';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$uk extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Питання ${current} з ${total}';
	@override String get noQuestionsAvailable => 'Питань немає';
	@override String get next => 'Далі';
	@override String get continueLabel => 'Продовжити';
}

// Path: meal.analysis
class _Translations$meal$analysis$uk extends Translations$meal$analysis$en {
	_Translations$meal$analysis$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Аналізуємо вашу страву';
	@override String get stepStarted => 'Початок…';
	@override String get stepDecomposition => 'Аналіз страви…';
	@override String get stepIngredients => 'Пошук інгредієнтів у базі…';
	@override String get stepUncertainty => 'Перевірка впевненості…';
	@override String get stepMealTypeQuestion => 'Майже готово…';
	@override String get stepResult => 'Завершення аналізу…';
	@override String get stepError => 'Щось пішло не так';
	@override String get stepDefault => 'Аналізуємо вашу страву…';
	@override String get progressUnderstand => 'Розуміння страви';
	@override String get progressMatch => 'Пошук поживності інгредієнтів';
	@override String get progressCheck => 'Перевірка порцій і точності';
	@override String get progressMealType => 'Визначення типу страви';
	@override String get progressFinish => 'Обчислення калорій та макро';
	@override String get detectedIngredientHeading => 'Інгредієнти, які ми знайшли';
	@override String ingredientsOverflow({required Object count}) => 'ще ${count}';
	@override String ingredientsLine({required Object count}) => 'виявлено ${count} інгредієнтів';
	@override String get ingredientsPending => 'Сканування інгредієнтів…';
	@override String mealPreviewDescription({required Object text}) => '«${text}»';
	@override String get offlineTip0 => 'Порада: Постійність важливіша за досконалість — регулярні записи виявляють суттєві закономірності.';
	@override String get offlineTip1 => 'Порада: Для фото природне світло і вид зверху допомагають точніше визначити порцію.';
	@override String get offlineTip2 => 'Порада: Згадуйте напої, соуси та олію — вони додають калорії, про які часто забувають.';
	@override String get offlineTip3 => 'Порада: Коротка примітка про порцію (1 миска, велика кава) значно покращує оцінки.';
	@override String get offlineTip4 => 'Порада: Запис після їжі все одно формує звичку; досконалість не обов\'язкова.';
	@override String get offlineTip5 => 'Порада: Вказуйте спосіб приготування, якщо він сильно впливає на калорії (смажене проти запеченого).';
}

// Path: meal.localInference
class _Translations$meal$localInference$uk extends Translations$meal$localInference$en {
	_Translations$meal$localInference$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Перевірте виявлені інгредієнти';
	@override String get reviewSubtitle => 'Ці дані були оброблені на вашому пристрої. Виправте назви або порції перед розрахунком харчової цінності.';
	@override String get mealName => 'Назва страви';
	@override String get ingredient => 'Інгредієнт';
	@override String get grams => 'Орієнтовна вага (г)';
	@override String get removeIngredient => 'Видалити інгредієнт';
	@override String get continueLabel => 'Продовжити';
	@override String get invalidProposal => 'Додайте принаймні один інгредієнт і вкажіть додатню кількість грамів.';
	@override String get localUnavailable => 'Аналіз на пристрої наразі недоступний.';
	@override String get calculationDetails => 'Як це було розраховано';
	@override String get interpretationLocal => 'Інгредієнти визначено на цьому пристрої';
	@override String get interpretationCloud => 'Інгредієнти визначено у хмарі';
	@override String get interpretationManual => 'Інгредієнти перевірені або відредаговані вами';
	@override String get nutritionRemote => 'Дані про поживність отримано з USDA через Calorify';
	@override String get nutritionFallback => 'Деякі значення поживності були оцінені віддалено';
	@override String get calculationServer => 'Калорії та макронутрієнти розраховані Calorify';
	@override String get fallbackUsed => 'Локальний аналіз було замінено хмарною обробкою';
	@override String get noRawContent => 'Діагностичні чеки не містять тексту вашої страви або фото.';
}

// Path: meal.feedback
class _Translations$meal$feedback$uk extends Translations$meal$feedback$en {
	_Translations$meal$feedback$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Що виглядає неправильно?';
	@override String get subtitle => 'Допоможіть покращити аналіз, вибравши одну або кілька проблем.';
	@override String get tellUsMore => 'Розкажіть більше';
	@override String get describeIncorrect => 'Опишіть, що було неточно';
	@override String get submit => 'Надіслати';
	@override String get issueFoodIdentification => 'Ідентифікація їжі';
	@override String get issuePortionSize => 'Розмір порції';
	@override String get issueCalorieDistribution => 'Розподіл калорій';
	@override String get issueMacrosWrong => 'Макроси невірні';
	@override String get issueMissingItems => 'Відсутні інгредієнти';
	@override String get issueExtraItems => 'Зайві інгредієнти';
	@override String get issueOther => 'Інше';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$uk extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Недавні';
	@override String get calories => 'Калорії';
	@override String get alphabetical => 'А‑Я';
}

// Path: profile.sections
class _Translations$profile$sections$uk extends Translations$profile$sections$en {
	_Translations$profile$sections$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ПРОФІЛЬ';
	@override String get basicInformation => 'ОСНОВНА ІНФОРМАЦІЯ';
	@override String get goalsAndActivity => 'ЦІЛІ ТА АКТИВНІСТЬ';
	@override String get calculatedValues => 'РОЗРАХОВАНІ ПОКАЗНИКИ';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$uk extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Щоденна мета';
	@override String get calPerDay => 'кал/добу';
	@override String get notAvailable => 'Н/Д';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$uk extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ОСОБИСТА ІНФОРМАЦІЯ';
	@override String get physicalMeasurements => 'ФІЗИЧНІ ПОКАЗНИКИ';
	@override String get goalsAndActivity => 'ЦІЛІ ТА АКТИВНІСТЬ';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$uk extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get male => 'Чоловік';
	@override String get female => 'Жінка';
	@override String get other => 'Інше';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$uk extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$uk loseWeight = _Translations$editProfile$weightGoals$loseWeight$uk._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$uk maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$uk._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$uk gainWeight = _Translations$editProfile$weightGoals$gainWeight$uk._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$uk extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$uk sedentary = _Translations$editProfile$activityLevels$sedentary$uk._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$uk lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$uk._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$uk moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$uk._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$uk veryActive = _Translations$editProfile$activityLevels$veryActive$uk._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$uk extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$uk._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$uk extends Translations$settings$sections$en {
	_Translations$settings$sections$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ПРОФІЛЬ';
	@override String get localization => 'ЛОКАЛІЗАЦІЯ';
	@override String get notifications => 'СПОВІЩЕННЯ';
	@override String get healthConnect => 'ІНТЕГРАЦІЯ HEALTH CONNECT';
	@override String get localInference => 'АНАЛІЗ НА ПРИСТРОЇ';
	@override String get supportAndLegal => 'ПІДТРИМКА ТА ПРАВО';
	@override String get about => 'ПРО ДОДАТОК';
	@override String get dangerZone => 'ОБЛАСТЬ РИЗИКУ';
	@override String get developer => 'РОЗРОБНИК';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$uk extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редагувати профіль';
	@override String get subtitle => 'Оновіть особисту інформацію';
}

// Path: settings.language
class _Translations$settings$language$uk extends Translations$settings$language$en {
	_Translations$settings$language$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Мова';
	@override String get subtitle => 'Оберіть бажану мову';
	@override String get searchHint => 'Пошук мов...';
	@override String get noResults => 'Результатів не знайдено';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$uk extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Одиниця для зросту';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$uk extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Одиниця для ваги';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$uk extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нагадування про їжу';
	@override String get subtitle => 'Тримайтеся плану з вчасними нагадуваннями';
}

// Path: settings.localInference
class _Translations$settings$localInference$uk extends Translations$settings$localInference$en {
	_Translations$settings$localInference$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Аналіз страв на пристрої';
	@override String get subtitle => 'Визначення підтримуваних страв за допомогою Gemini Nano перед розрахунком харчової цінності';
	@override String get unavailable => 'Недоступно на цьому пристрої';
	@override String get rolloutUnavailable => 'Відповідне обладнання знайдено, але ця функція не активована для цієї версії програми';
	@override String get modelSetup => 'Gemini Nano має завершити завантаження, перш ніж цю функцію можна буде увімкнути';
	@override String get useLocalTitle => 'Використовувати аналіз на пристрої';
	@override String get useLocalSubtitle => 'Додатково, вимкнено за замовчуванням. Результати можуть бути менш точними для складних страв.';
	@override String get disclosureTitle => 'Перш ніж увімкнути аналіз на пристрої';
	@override String get disclosureBody => 'Gemini Nano може ідентифікувати інгредієнти та оцінювати порції на підтримуваних пристроях Android. Ваші перевірені пропозиції інгредієнтів надсилаються до Calorify для уточнення даних USDA та розрахунків.';
	@override String get disclosureLimit1 => 'Складні страви, приховані інгредієнти та розміри порцій можуть бути визначені неправильно.';
	@override String get disclosureLimit2 => 'Модель може бути недоступною під час завантаження, бути зайнятою, працювати у фоновому режимі або мати обмеження пристрою.';
	@override String get disclosureLimit3 => 'Якщо локальне визначення не може бути завершене, ця бета-версія автоматично надсилає оригінальний опис вашої страви до Calorify для хмарного аналізу.';
	@override String get acknowledgement => 'Я розумію, що повинен перевіряти виявлені інгредієнти та порції.';
	@override String get enable => 'Підтвердити та увімкнути';
	@override String get cancel => 'Скасувати';
}

// Path: settings.theme
class _Translations$settings$theme$uk extends Translations$settings$theme$en {
	_Translations$settings$theme$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тема';
	@override String get light => 'Світла';
	@override String get dark => 'Темна';
	@override String get system => 'Система';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$uk extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Надіслати відгук';
	@override String subtitle({required Object appLabel}) => 'Допоможіть покращити ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel}: відгук про додаток';
	@override String get emailBodyPrefix => 'Будь ласка, залиште свій відгук нижче:';
	@override String get appVersion => 'Версія додатку';
	@override String get device => 'Пристрій';
	@override String get osVersion => 'Версія ОС';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$uk extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Експорт історії прийомів їжі';
	@override String get subtitle => 'Поділіться CSV з вашими записаними стравами';
	@override String get shareText => 'Експорт історії прийомів їжі з Calorify';
	@override String failed({required Object error}) => 'Не вдалося експортувати історію: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$uk extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Видалити всі дані';
	@override String get subtitle => 'Безповоротно видалити всю вашу інформацію';
	@override String get localOnlySubtitle => 'Видалити дані Calorify, збережені на цьому пристрої';
	@override String get confirmationTitle => 'Видалити всі дані?';
	@override String get confirmationMessage => 'Цю дію не можна скасувати. Всі ваші записані страви, улюблені та налаштування профілю будуть назавжди видалені.';
	@override String get localOnlyConfirmationMessage => 'Це назавжди видалить із пристрою записані прийоми їжі, вибране та налаштування профілю. Прийоми їжі, уже передані в Health Connect, і доступ до Health Connect керуються окремо в Налаштування > Health Connect.';
	@override String get cancel => 'Скасувати';
	@override String get clearEverything => 'Видалити все';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$uk extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Опції відладки';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$uk extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Перегляд та керування дозволами';
	@override late final _Translations$settings$healthConnect$unavailable$uk unavailable = _Translations$settings$healthConnect$unavailable$uk._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$uk updateRequired = _Translations$settings$healthConnect$updateRequired$uk._(_root);
	@override late final _Translations$settings$healthConnect$permissions$uk permissions = _Translations$settings$healthConnect$permissions$uk._(_root);
	@override String get managePermissions => 'Керувати дозволами';
	@override String get openSettings => 'Відкрити налаштування Health Connect';
	@override String get disconnect => 'Відключити Health Connect';
	@override String get disconnectConfirmationTitle => 'Відключити Health Connect?';
	@override String get disconnectConfirmationMessage => 'Calorify втратить доступ до Health Connect. Дані, уже записані там, не буде видалено.';
	@override String get disconnectConfirmationAction => 'Відключити';
	@override String get deleteSyncedMeals => 'Видалити прийоми їжі Calorify із Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Видалити синхронізовані прийоми їжі?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Видалити з Health Connect прийоми їжі, синхронізовані цією версією Calorify? Локальний журнал не зміниться. Старіші записи Calorify, можливо, доведеться видалити через розділ керування даними в Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Видалити синхронізовані прийоми їжі';
	@override String get deleteSyncedMealsSuccess => 'Прийоми їжі Calorify видалено з Health Connect.';
	@override String get deleteSyncedMealsFailed => 'Не вдалося видалити синхронізовані прийоми їжі. Спробуйте ще раз.';
	@override String get connectionPartial => 'Деякі функції Health Connect увімкнено.';
	@override String get connectionComplete => 'Обидві функції Health Connect увімкнено.';
	@override String get actionFailed => 'Не вдалося відкрити Health Connect. Спробуйте ще раз.';
	@override String get requestPermissions => 'Запитати дозволи';
	@override String get permissionRequestCancelledOrFailed => 'Запит дозволів був скасований або не вдався. Спробуйте ще раз або надайте дозволи вручну в налаштуваннях Health Connect.';
	@override String get permissionRequestFailed => 'Не вдалося запитати дозволи. Спробуйте ще раз або надайте дозволи вручну в налаштуваннях Health Connect.';
	@override String get requestingPermissions => 'Запит…';
}

// Path: settings.about
class _Translations$settings$about$uk extends Translations$settings$about$en {
	_Translations$settings$about$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Про додаток';
	@override String get tagline => 'Швидко, безкоштовно та з пріоритетом приватності для обізнаності про калорії';
	@override late final _Translations$settings$about$ourStory$uk ourStory = _Translations$settings$about$ourStory$uk._(_root);
	@override late final _Translations$settings$about$privacy$uk privacy = _Translations$settings$about$privacy$uk._(_root);
	@override late final _Translations$settings$about$developer$uk developer = _Translations$settings$about$developer$uk._(_root);
	@override late final _Translations$settings$about$feedback$uk feedback = _Translations$settings$about$feedback$uk._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$uk extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify, версія ${version}';
	@override String build({required Object buildNumber}) => 'Збірка ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$uk extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Час сніданку! 🍳';
	@override String get body => 'Не забудьте записати сніданок';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$uk extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Час обіду! 🥗';
	@override String get body => 'Час записати обід';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$uk extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Час вечері! 🍽️';
	@override String get body => 'Не забудьте записати вечерю';
}

// Path: notifications.snack
class _Translations$notifications$snack$uk extends Translations$notifications$snack$en {
	_Translations$notifications$snack$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Час перекусу! 🍎';
	@override String get body => 'Час для корисного перекусу';
}

// Path: notifications.test
class _Translations$notifications$test$uk extends Translations$notifications$test$en {
	_Translations$notifications$test$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тестове сповіщення';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$uk extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} надає приблизну інформацію про поживність. Точність залежить від ваших даних і варіацій страв. Використовуйте як орієнтир, а не остаточне джерело. Для персоналізованих порад зверніться до фахівця.';
	@override late final _Translations$disclaimer$snap$portionSize$uk portionSize = _Translations$disclaimer$snap$portionSize$uk._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$uk preparationMethods = _Translations$disclaimer$snap$preparationMethods$uk._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$uk ingredients = _Translations$disclaimer$snap$ingredients$uk._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$uk databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$uk._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$uk extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Про оцінку зміни ваги';
	@override String get description => 'Проєктована зміна ваги — це теоретична оцінка на основі простої моделі калорії в проти калорії з. Вона служить лише мотиваційним орієнтиром, а не прогнозом вашої фактичної ваги.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$uk calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$uk._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$uk biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$uk._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$uk waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$uk._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$uk professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$uk._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$uk extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get description => 'Ці показники допомагають зрозуміти енергетичні потреби вашого тіла і спрямувати ваші харчові цілі.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$uk bmr = _Translations$disclaimer$healthMetrics$bmr$uk._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$uk tdee = _Translations$disclaimer$healthMetrics$tdee$uk._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$uk dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$uk._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$uk extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оцінка витрат калорій';
	@override String get description => 'Коли дані Health Connect недоступні, ми оцінюємо сьогоднішні витрати калорій, використовуючи ваш BMR і рівень активності (TDEE), пропорційно пройденій частині доби.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$uk howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$uk._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$uk professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$uk._(_root);
}

// Path: watch.common
class _Translations$watch$common$uk extends Translations$watch$common$en {
	_Translations$watch$common$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get back => 'Назад';
	@override String get cancel => 'Скасувати';
	@override String get delete => 'Видалити';
	@override String get retry => 'Спробувати ще раз';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$uk extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Поживна речовина';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} г';
	@override String get protein => 'Білки';
	@override String get carbs => 'Вуглеводи';
	@override String get fat => 'Жири';
	@override String get fiber => 'Клітковина';
}

// Path: watch.sync
class _Translations$watch$sync$uk extends Translations$watch$sync$en {
	_Translations$watch$sync$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Синхронізувати з телефоном';
	@override String get syncing => 'Синхронізація…';
	@override String get synced => 'Синхронізовано';
	@override String get syncedJustNow => 'Щойно синхронізовано';
	@override String syncedMinutesAgo({required Object minutes}) => 'Синхронізовано ${minutes}хв тому';
	@override String get failed => 'Не вдалося синхронізувати';
	@override String get phoneDisconnected => 'Телефон відключено';
	@override String get tapToSync => 'Торкніться, щоб синхронізувати';
	@override String get refreshFailed => 'Не вдалось оновити. Перевірте телефон.';
	@override String get openPhone => 'Відкрийте Calorify на телефоні, потім торкніться «Оновити».';
}

// Path: watch.home
class _Translations$watch$home$uk extends Translations$watch$home$en {
	_Translations$watch$home$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get today => 'Сьогодні';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} калорій спожито з ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} понад мету';
	@override String remaining({required Object calories}) => '${calories} залишилось';
	@override String left({required Object calories}) => '${calories} залишилось';
	@override String goal({required Object calories}) => '${calories} kcal ціль';
	@override String get logMeal => 'Додати прийом їжі';
	@override String get todayMeals => 'Сьогоднішні прийоми їжі';
	@override String todayMealsCount({required Object count}) => 'Сьогоднішні прийоми їжі, ${count}';
	@override String viewMore({required Object count}) => 'Показати ще ${count}';
	@override String viewMoreSemantics({required Object count}) => '${count} ще прийомів їжі, торкніться, щоб побачити всі';
	@override String get noMeals => 'Немає зареєстрованих прийомів';
	@override String get noMealsSemantics => 'Сьогодні не зареєстровано прийомів їжі';
	@override String get tapLog => 'Торкніться «Додати», щоб почати';
	@override String get removedFromQueue => 'Прийом їжі видалено з черги офлайн.';
	@override String get removedOffline => 'Прийом їжі видалено офлайн. Він синхронізується, коли телефон з\'єднається.';
	@override String get deleteFailed => 'Не вдалося видалити прийом їжі';
}

// Path: watch.history
class _Translations$watch$history$uk extends Translations$watch$history$en {
	_Translations$watch$history$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сьогоднішні прийоми їжі';
	@override String get refresh => 'Оновити прийоми';
	@override String get loadFailed => 'Не вдалося завантажити прийоми їжі';
	@override String get syncFailed => 'Не вдалося синхронізувати';
	@override String get emptyTitle => 'Ще нема прийомів';
	@override String get emptyMessage => 'Додайте прийом їжі з Головної, щоб він відобразився тут.';
}

// Path: watch.favorites
class _Translations$watch$favorites$uk extends Translations$watch$favorites$en {
	_Translations$watch$favorites$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вибране';
	@override String get refresh => 'Оновити вибране';
	@override String get loadFailed => 'Не вдалося завантажити вибране';
	@override String get syncFailed => 'Не вдалося синхронізувати';
	@override String get emptyTitle => 'Ще нема вибраного';
	@override String get emptyMessage => 'Позначайте прийоми їжі зірочкою у телефонному додатку, щоб тут додавати одним дотиком.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} калорій. Торкніться, щоб додати.';
	@override String logged({required Object name}) => '${name} додано!';
	@override String savedOffline({required Object name}) => '${name} збережено офлайн. Синхронізується, коли телефон з\'єднається.';
	@override String get saveFailed => 'Не вдалося зберегти прийом їжі. Спробуйте ще раз.';
	@override String get log => 'Додати';
}

// Path: watch.meal
class _Translations$watch$meal$uk extends Translations$watch$meal$en {
	_Translations$watch$meal$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} калорій, додано о ${time}.';
	@override String get longPressDelete => 'Натисніть довго, щоб видалити.';
	@override String get deleteTitle => 'Видалити прийом їжі?';
}

// Path: watch.voice
class _Translations$watch$voice$uk extends Translations$watch$voice$en {
	_Translations$watch$voice$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Голосовий запис прийому їжі';
	@override String get processing => 'Аналізую прийом…';
	@override String get processingDescription => 'Оцінка порцій і харчової цінності';
	@override String get listening => 'Слухаю';
	@override String secondsLeft({required Object seconds}) => '${seconds}с';
	@override String get stop => 'Зупинити запис';
	@override String get start => 'Торкніться, щоб почати запис';
	@override String get starting => 'Запускаю мікрофон…';
	@override String get prompt => 'Торкніться, потім опишіть свій прийом їжі';
	@override String get tapToRetry => 'Торкніться, щоб спробувати ще раз';
	@override String get example => 'Спробуйте «2 роти з далом»';
	@override String get unavailable => 'Голосовий ввід недоступний. Перевірте дозволи на мікрофон у налаштуваннях годинника.';
	@override String get didNotStart => 'Мікрофон не запустився. Торкніться, щоб спробувати ще раз.';
	@override String get startFailed => 'Не вдалося розпочати запис. Перевірте дозволи на мікрофон.';
	@override String get allowMicrophone => 'Дозвольте доступ до мікрофона, щоб записувати прийоми голосом.';
	@override String get needsConnection => 'Розпізнавання голосу потребує підключення. Торкніться, щоб спробувати ще раз.';
	@override String get microphoneUnavailable => 'Мікрофон недоступний. Торкніться, щоб спробувати ще раз.';
	@override String get microphoneBusy => 'Мікрофон зайнятий. Зачекайте і спробуйте ще раз.';
	@override String get languageUnsupported => 'Голосовий ввід не підтримує мову годинника.';
	@override String get temporarilyBusy => 'Голосовий ввід тимчасово недоступний. Зачекайте і спробуйте ще раз.';
	@override String get notRecognized => 'Не розпізнано. Торкніться мікрофона і спробуйте ще раз.';
	@override String get noSpeech => 'Голос не виявлено. Торкніться мікрофона, щоб спробувати ще раз.';
	@override String get analysisFailed => 'Аналіз не вдався. Спробуйте ще раз.';
	@override String get mealNotIdentified => 'Не вдалося визначити прийом їжі. Спробуйте описати інакше.';
}

// Path: watch.result
class _Translations$watch$result$uk extends Translations$watch$result$en {
	_Translations$watch$result$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Деталі прийому їжі';
	@override String get savedOffline => 'Збережено офлайн';
	@override String get logged => 'Додано!';
	@override String get mealFound => 'Прийом їжі знайдено';
	@override String get estimatedEnergy => 'Орієнтовна енергія';
	@override String get logMeal => 'Додати прийом їжі';
	@override String get logging => 'Збереження…';
	@override String get logAnother => 'Додати ще один';
	@override String get goingBack => 'Повертаюся…';
	@override String get savedOfflineMessage => 'Прийом їжі збережено офлайн. Він синхронізується, коли телефон з\'єднається.';
	@override String get saveFailed => 'Не вдалося зберегти прийом їжі. Спробуйте ще раз.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$uk extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Розумне розпізнавання їжі';
	@override String get description => 'Зробіть фото — AI ідентифікує вашу страву';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$uk extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-аналіз';
	@override String get description => 'Отримуйте миттєву інформацію про поживну цінність за описом';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$uk extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Інтеграція зі Health Connect';
	@override String get description => 'Підключіться до Health Connect для кращих інсайтів';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$uk extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Недостатня вага';
	@override String get healthyWeight => 'Здорова вага';
	@override String get overweight => 'Зайва вага';
	@override String get obese => 'Ожиріння';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$uk extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Ми допоможемо скласти здоровий план, щоб досягти збалансованої ваги за допомогою поживних страв.';
	@override String get healthy => 'Чудово! Ви у здоровому діапазоні. Ми допоможемо зберегти вашу життєвість та енергію.';
	@override String overweight({required Object appLabel}) => '${appLabel} спростить вашу дорогу за допомогою AI‑відстеження, щоб ви комфортно досягли цілі.';
	@override String get obese => 'Ми поруч, щоб підтримати вас персональними порадами та стійкими стратегіями для ваших цілей зі здоров\'я.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$uk extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Автоматичне відстеження калорій';
	@override String get description => 'Відстежуйте витрачені калорії з ваших фітнес‑додатків';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$uk extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Спалені калорії';
	@override String get description => 'Зчитувати загальну кількість спалених сьогодні калорій із Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$uk extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Інсайти прогресу';
	@override String get description => 'Отримуйте детальні інсайти про тенденції вашого здоров\'я';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$uk extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ділитися записаними прийомами їжі';
	@override String get description => 'Записувати прийоми їжі з Calorify у Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$uk extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Безшовна інтеграція';
	@override String get description => 'Синхронізуйте дані з улюблених додатків для здоров\'я';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$uk extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ви все контролюєте';
	@override String get description => 'Виберіть потрібний дозвіл і змінюйте доступ у будь-який час';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$uk extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ви не самі';
	@override String get genericMessage => 'Дослідження показують, що регулярне відстеження — найсильніший прогноз довгострокового успіху.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Для ${age}-річного ${gender}, який прагне ${goal}, регулярне відстеження — найкращий показник успіху.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} робить це у 10 разів легше, ніж вручну.';
	@override String get getStartedTitle => 'Готові почати?';
	@override String get tipPhoto => 'Зробіть фото страв для миттєвого аналізу';
	@override String get tipConsistency => 'Записуйте регулярно, щоб бачити реальний прогрес';
	@override String get tipProgress => 'Щоденно відстежуйте прогрес, щоб залишатися мотивованими';
	@override String get button => 'Почнемо';
	@override String get defaultGender => 'особа';
	@override String get defaultGoal => 'здоровіший ви';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$uk extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваш профіль здоров\'я';
	@override String bmiDescription({required Object bmi}) => 'За вашими даними, ваш BMI становить ${bmi}.';
	@override String get finalizeDescription => 'Завершимо налаштування профілю, щоб персоналізувати досвід.';
	@override String get goalGain => 'набрати';
	@override String get goalLose => 'скинути';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Щоб досягти мети, ви ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Ви досягли цільової ваги! Ми допоможемо її підтримувати.';
	@override String get button => 'Почнемо';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$uk extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Відмінний початок!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Ви зробили перший крок до ${goalText}. Оскільки ви ${activityText}, ${appLabel} відкоригує цілі під ваш спосіб життя.';
	@override String get personalizedTargets => 'Персоналізовані цілі по калоріях';
	@override String get aiMealDetection => 'Виявлення страв на основі AI';
	@override String get macroBreakdowns => 'Докладний розподіл макронутрієнтів';
	@override String get button => 'Почнемо';
	@override String get defaultGoal => 'ваші цілі';
	@override String get defaultActivity => 'активні';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$uk extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Схуднути';
	@override String get description => 'Створити дефіцит калорій для втрати ваги';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$uk extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Підтримувати вагу';
	@override String get description => 'Підтримувати поточну вагу';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$uk extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Набрати вагу';
	@override String get description => 'Створити надлишок калорій для набору ваги';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$uk extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Малоактивний';
	@override String get description => 'Мало або взагалі немає вправ';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$uk extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Легко активний';
	@override String get description => 'Легкі вправи 1-3 дні/тиждень';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$uk extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Помірно активний';
	@override String get description => 'Помірні вправи 3-5 днів/тиждень';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$uk extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Дуже активний';
	@override String get description => 'Інтенсивні вправи 6-7 днів/тиждень';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$uk extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Надмірно активний';
	@override String get description => 'Дуже важкі вправи, фізична робота';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$uk extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect недоступний';
	@override String get description => 'Health Connect недоступний на цьому пристрої. Будь ласка, встановіть Health Connect з Play Store (Android 9+) або оновіть до Android 14+.';
	@override String get unsupportedDescription => 'Health Connect не підтримується на цьому пристрої.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$uk extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect потребує уваги';
	@override String get description => 'Установіть або оновіть Health Connect, перш ніж керувати доступом.';
	@override String get action => 'Установити або оновити';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$uk extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Дозволи';
	@override String get description => 'Запитуються наступні дозволи для інтеграції з Health Connect:';
	@override String get granted => 'Надано';
	@override String get notGranted => 'Не надано';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$uk caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$uk._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$uk nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$uk._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$uk nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$uk._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$uk extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Наша історія';
	@override String content({required Object appLabel}) => '${appLabel} з\'явився через просте розчарування: більшість додатків для відстеження калорій або надто складні, або вимагають постійного ручного введення, або стягують високі підписки, або порушують приватність.\n\nЯк сольний розробник, я хотів створити щось простіше й чесніше — додаток, що використовує AI для зменшення зусиль, залишається швидким і безкоштовним у використанні та поважає ваші дані про здоров\'я.\n\n${appLabel} — це додаток, який я хотів би мати: без акаунтів, без трекінгу, без реклами — лише чіткі, практичні інсайти і ваші цілі щодо здоров\'я.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$uk extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваша приватність важлива';
	@override String get description => 'Приватність — не додатковий фактор, а принцип дизайну. Ось що це означає на практиці:';
	@override String get noAccounts => 'Без акаунтів\nВикористовуйте додаток одразу. Без реєстрації, без профілів.';
	@override String noTracking({required Object appLabel}) => 'Без відстеження поведінки\n${appLabel} не відстежує вашу активність, не формує профілі використання і не стежить за вами в інших додатках чи на сайтах.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Обмежена аналітика й діагностика\n${appLabel} використовує базові події застосунку та діагностику збоїв для підвищення надійності. Значення медичних записів не використовуються для реклами й не продаються.';
	@override String noAds({required Object appLabel}) => 'Без реклами за дизайном\n${appLabel} створено для роботи без реклами та монетизації на основі даних.';
	@override String get noDataSelling => 'Без продажу даних\nВаші дані про здоров\'я ніколи не продаються і не передаються третім сторонам.';
	@override String get localStorage => 'Переважно локальне зберігання\nВаші дані залишаються на пристрої.';
	@override String get privacyPolicy => 'Політика приватності';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$uk extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Розроблено сольним розробником';
	@override String description({required Object appLabel}) => '${appLabel} створено і підтримується одним розробником, який прагне робити спокійний софт для здоров\'я, що поважає приватність.\n\nВідгуки читаються особисто і допомагають формувати напрямок розвитку додатку.';
	@override String get website => 'Вебсайт';
	@override String get email => 'Електронна пошта';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$uk extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Подобається ${appLabel}?';
	@override String description({required Object appLabel}) => 'Ваш відгук допомагає зробити ${appLabel} кращим для всіх.';
	@override String get rateApp => 'Оцінити в Play Store';
	@override String get sendFeedback => 'Надіслати відгук';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$uk extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Розмір порції';
	@override String get description => 'Точність оцінок значною мірою залежить від правильної оцінки розміру порції.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$uk extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Способи приготування';
	@override String description({required Object appLabel}) => 'Спосіб приготування може істотно змінювати поживний склад їжі. Оцінки ${appLabel} не завжди враховують ці відмінності.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$uk extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Інгредієнти';
	@override String get description => 'Складні страви з багатьма прихованими інгредієнтами можуть призводити до менш точних оцінок.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$uk extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Обмеження бази даних';
	@override String description({required Object appLabel}) => 'База продуктів ${appLabel} обширна, але може не містити кожен окремий продукт чи варіацію.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$uk extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Точність калорій';
	@override String get description => 'Ця оцінка є настільки точною, наскільки точні ваші записи про споживання й витрати калорій. Неточні записи призведуть до неточного прогнозу.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$uk extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Біологічні фактори';
	@override String description({required Object appLabel}) => 'Фактична втрата чи набір ваги залежить від метаболізму, гормонів, сну, стресу, гідратації та інших індивідуальних факторів, які ${appLabel} не може виміряти.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$uk extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Водна вага та коливання';
	@override String get description => 'Нормальна щоденна вага може значно коливатися через затримку води, процеси травлення та час вимірювання. Оцінка не враховує ці щоденні зміни.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$uk extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Поради фахівця';
	@override String get description => 'Не використовуйте цю оцінку для медичних рішень. Завжди консультуйтеся з медичним фахівцем або зареєстрованим дієтологом щодо персоналізованого керування вагою.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$uk extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) — це кількість калорій, які ваше тіло витрачає у стані спокою для підтримки базових функцій, таких як дихання та кровообіг. BMR залежить від вашого віку, статі, зросту й ваги. Вищий BMR означає, що тіло природно спалює більше калорій у спокої, часто через більшу м\'язову масу, молодший вік або чоловічу стать. Нижчий BMR зазвичай вказує на меншу м\'язову масу, старший вік або жіночу стать.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$uk extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) — це загальна кількість калорій, які ви витрачаєте за день, включно з BMR та калоріями від фізичної активності і руху. TDEE залежить від вашого BMR і рівня активності. Вищий TDEE означає, що ви витрачаєте більше калорій загалом, зазвичай через вищу активність або більший BMR. Нижчий TDEE свідчить про меншу щоденну активність або нижчий BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$uk extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Щоденна мета';
	@override String get description => 'Daily Goal — це рекомендована щоденна кількість калорій на основі вашого TDEE і мети по вазі. Для втрати ваги ви споживаєте менше калорій, ніж ваш TDEE. Для підтримання — відповідаєте TDEE. Для набору — споживаєте більше калорій, ніж ваш TDEE. Це допомагає досягти бажаної зміни ваги у здоровому темпі.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$uk extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Як розраховується оцінка';
	@override String get description => 'Ми обчислюємо ваш TDEE (на основі профілю) і множимо його на частку доби, що пройшла (години + хвилини) / 24, щоб оцінити витрачені до цього моменту калорії.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$uk extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Поради фахівця';
	@override String get description => 'Не використовуйте цю оцінку для медичних рішень. Завжди консультуйтеся з медичним фахівцем або зареєстрованим дієтологом щодо персоналізованого керування вагою.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$uk extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Читати загальні витрачені калорії';
	@override String get description => 'Дозволяє додатку читати загальну кількість витрачених калорій з Health Connect.';
	@override String get usage => 'Цей дозвіл використовується для відображення щоденного витрачання калорій у додатку, що допомагає зрозуміти загальні витрати енергії за день.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$uk extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Читати дані про харчування';
	@override String get description => 'Дозволяє додатку читати дані про харчування з Health Connect.';
	@override String get usage => 'Цей дозвіл дозволяє читати інформацію про харчування, яку могли записати інші додатки, підключені до Health Connect, забезпечуючи повніший огляд вашого харчування.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$uk extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$uk._(TranslationsUk root) : this._root = root, super.internal(root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Записувати дані про харчування';
	@override String get description => 'Дозволяє додатку записувати дані про харчування в Health Connect.';
	@override String get usage => 'Цей дозвіл дозволяє синхронізувати ваші записані страви з Health Connect, роблячи дані про харчування доступними іншим додаткам для здоров\'я та фітнесу.';
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
			'errors.rateLimitExceeded' => 'Ви зробили забагато запитів. Будь ласка, зачекайте трохи перед наступною спробою.',
			'errors.networkError' => 'Помилка мережі. Будь ласка, перевірте інтернет-з\'єднання.',
			'errors.unknownError' => 'Щось пішло не так. Спробуйте пізніше.',
			'errors.loadingProfileData' => 'Помилка завантаження даних профілю',
			'errors.somethingWentWrong' => 'Щось пішло не так.',
			'errors.retry' => 'Спробувати ще раз',
			'onboarding.welcome' => ({required Object appLabel}) => 'Ласкаво просимо до ${appLabel}',
			'onboarding.subtitle' => 'Ваш персональний супутник у харчуванні з підтримкою AI',
			'onboarding.getStarted' => 'Почати',
			'onboarding.features.foodRecognition.title' => 'Розумне розпізнавання їжі',
			'onboarding.features.foodRecognition.description' => 'Зробіть фото — AI ідентифікує вашу страву',
			'onboarding.features.aiAnalysis.title' => 'AI-аналіз',
			'onboarding.features.aiAnalysis.description' => 'Отримуйте миттєву інформацію про поживну цінність за описом',
			'onboarding.features.healthIntegration.title' => 'Інтеграція зі Health Connect',
			'onboarding.features.healthIntegration.description' => 'Підключіться до Health Connect для кращих інсайтів',
			'onboarding.gender.title' => 'Яка у вас стать?',
			'onboarding.gender.description' => 'Стать допомагає нам точніше розрахувати ваш базальний метаболізм (BMR).',
			'onboarding.gender.next' => 'Далі',
			'onboarding.height.title' => 'Який у вас зріст?',
			'onboarding.height.description' => 'Ваш зріст допомагає точно розрахувати BMI і енергетичні потреби.',
			'onboarding.height.metric' => 'Метрична',
			'onboarding.height.imperial' => 'Імперська',
			'onboarding.height.next' => 'Далі',
			'onboarding.weight.currentTitle' => 'Яка ваша поточна вага?',
			'onboarding.weight.currentDescription' => 'Поточна вага потрібна для персоналізації ваших щоденних цілей.',
			'onboarding.weight.targetTitle' => 'Яка ваша цільова вага?',
			'onboarding.weight.targetDescription' => 'Встановлення цільової ваги допомагає визначити довгостроковий план.',
			'onboarding.weight.metric' => 'Метрична',
			'onboarding.weight.imperial' => 'Імперська',
			'onboarding.weight.next' => 'Далі',
			'onboarding.age.title' => 'Коли ваш день народження?',
			'onboarding.age.description' => 'Ваш вік допомагає точно розрахувати потребу в калоріях.',
			'onboarding.age.next' => 'Далі',
			'onboarding.bmiScale.underweight' => 'Нижче норми',
			'onboarding.bmiScale.healthy' => 'Здорова',
			'onboarding.bmiScale.overweight' => 'Зайва вага',
			'onboarding.bmiScale.obese' => 'Ожиріння',
			'onboarding.bmiScale.categories.underweight' => 'Недостатня вага',
			'onboarding.bmiScale.categories.healthyWeight' => 'Здорова вага',
			'onboarding.bmiScale.categories.overweight' => 'Зайва вага',
			'onboarding.bmiScale.categories.obese' => 'Ожиріння',
			'onboarding.bmiScale.messages.underweight' => 'Ми допоможемо скласти здоровий план, щоб досягти збалансованої ваги за допомогою поживних страв.',
			'onboarding.bmiScale.messages.healthy' => 'Чудово! Ви у здоровому діапазоні. Ми допоможемо зберегти вашу життєвість та енергію.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} спростить вашу дорогу за допомогою AI‑відстеження, щоб ви комфортно досягли цілі.',
			'onboarding.bmiScale.messages.obese' => 'Ми поруч, щоб підтримати вас персональними порадами та стійкими стратегіями для ваших цілей зі здоров\'я.',
			'onboarding.weightGoal.title' => 'Яка ваша мета?',
			'onboarding.weightGoal.description' => 'Виберіть мету, яка найкраще описує, чого ви хочете досягти',
			'onboarding.activityLevel.title' => 'Наскільки ви активні?',
			'onboarding.activityLevel.description' => 'Це допоможе точніше розрахувати ваші щоденні потреби в калоріях',
			'onboarding.healthConnect.title' => 'Підключіться до Health Connect',
			'onboarding.healthConnect.description' => 'Синхронізуйте дані про здоров\'я для кращих інсайтів і автоматичного відстеження калорій',
			'onboarding.healthConnect.overviewDescription' => 'Використовуйте спалені калорії в щоденній цілі та за бажанням діліться записаними прийомами їжі з Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Автоматичне відстеження калорій',
			'onboarding.healthConnect.automaticTracking.description' => 'Відстежуйте витрачені калорії з ваших фітнес‑додатків',
			'onboarding.healthConnect.caloriesBurned.title' => 'Спалені калорії',
			'onboarding.healthConnect.caloriesBurned.description' => 'Зчитувати загальну кількість спалених сьогодні калорій із Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Інсайти прогресу',
			'onboarding.healthConnect.progressInsights.description' => 'Отримуйте детальні інсайти про тенденції вашого здоров\'я',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Ділитися записаними прийомами їжі',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Записувати прийоми їжі з Calorify у Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Безшовна інтеграція',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Синхронізуйте дані з улюблених додатків для здоров\'я',
			'onboarding.healthConnect.userControl.title' => 'Ви все контролюєте',
			'onboarding.healthConnect.userControl.description' => 'Виберіть потрібний дозвіл і змінюйте доступ у будь-який час',
			'onboarding.healthConnect.connected' => 'Health Connect підключено',
			'onboarding.healthConnect.notConnected' => 'Health Connect не підключено',
			'onboarding.healthConnect.setup' => 'Налаштувати Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Пропустити зараз',
			'onboarding.healthConnect.statusConnected' => 'Health Connect підключено.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect успішно підключено!',
			'onboarding.healthConnect.statusNotConnected' => 'Виберіть функції Health Connect, які потрібно ввімкнути.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect підключено частково. Надайте решту дозволів, щоб користуватися обома функціями.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Установіть або оновіть Health Connect, щоб продовжити.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect не підтримується на цьому пристрої.',
			'onboarding.healthConnect.installOrUpdate' => 'Установити або оновити',
			'onboarding.healthConnect.manageAccess' => 'Керувати доступом',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Доступ заборонено. Будь ласка, увімкніть дозволи Health Connect у налаштуваннях телефону для ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Помилка налаштування Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Ви не самі',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Дослідження показують, що регулярне відстеження — найсильніший прогноз довгострокового успіху.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Для ${age}-річного ${gender}, який прагне ${goal}, регулярне відстеження — найкращий показник успіху.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} робить це у 10 разів легше, ніж вручну.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Готові почати?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Зробіть фото страв для миттєвого аналізу',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Записуйте регулярно, щоб бачити реальний прогрес',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Щоденно відстежуйте прогрес, щоб залишатися мотивованими',
			'onboarding.reinforcement.trackingSuccess.button' => 'Почнемо',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'особа',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'здоровіший ви',
			'onboarding.reinforcement.healthProfile.title' => 'Ваш профіль здоров\'я',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'За вашими даними, ваш BMI становить ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Завершимо налаштування профілю, щоб персоналізувати досвід.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'набрати',
			'onboarding.reinforcement.healthProfile.goalLose' => 'скинути',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Щоб досягти мети, ви ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Ви досягли цільової ваги! Ми допоможемо її підтримувати.',
			'onboarding.reinforcement.healthProfile.button' => 'Почнемо',
			'onboarding.reinforcement.goalLifestyle.title' => 'Відмінний початок!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Ви зробили перший крок до ${goalText}. Оскільки ви ${activityText}, ${appLabel} відкоригує цілі під ваш спосіб життя.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Персоналізовані цілі по калоріях',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Виявлення страв на основі AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Докладний розподіл макронутрієнтів',
			'onboarding.reinforcement.goalLifestyle.button' => 'Почнемо',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'ваші цілі',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'активні',
			'tabs.dashboard' => 'Панель',
			'tabs.history' => 'Історія',
			'home.aiSummary.title' => 'Ваш AI-звіт',
			'home.aiSummary.logMore' => 'Заносьте більше страв найближчими днями, щоб отримати персоналізовані AI-інсайти.',
			'home.aiSummary.loading' => 'Завантаження звіту...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} записаних страв',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Баланс макро ${score}',
			'home.aiSummary.topFoods' => 'Топ продуктів',
			'home.aiSummary.trendUp' => 'Калорії зростають',
			'home.aiSummary.trendDown' => 'Калорії знижуються',
			'home.aiSummary.trendSteady' => 'Калорії стабільні',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Оновлено ${time}',
			'home.dailyGoal.title' => 'Встановіть щоденну мету',
			'home.dailyGoal.titleSet' => 'Ваша щоденна мета',
			'home.dailyGoal.description' => 'Готові розпочати шлях до кращого самопочуття? Встановіть щоденну калорійну ціль нижче, щоб розпочати прогрес.',
			'home.dailyGoal.descriptionSet' => 'Ваш компас налаштовано! Це ваша щоденна калорійна ціль.',
			'home.dailyGoal.yourGoal' => 'Ваша мета',
			'home.dailyGoal.goal' => 'Мета',
			'home.dailyGoal.dailyCalories' => 'Щоденні калорії (kcal)',
			'home.dailyGoal.setGoal' => 'Встановити мету',
			'home.dailyGoal.intake' => 'Спожито',
			'home.dailyGoal.burned' => 'Витрачено',
			'home.dailyGoal.weightImpact' => 'Вплив на вагу',
			'home.dailyGoal.estLoss' => 'Прибл. втрата',
			'home.dailyGoal.estGain' => 'Прибл. набір',
			'home.dailyGoal.kcal' => 'ккал',
			'home.dailySummary.title' => 'Щоденний підсумок',
			'home.dailySummary.calories' => 'Калорії',
			'home.dailySummary.carbs' => 'Вуглеводи',
			'home.dailySummary.protein' => 'Білки',
			'home.dailySummary.fat' => 'Жири',
			'home.dailySummary.fiber' => 'Клітковина',
			'home.dailySummary.grams' => 'г',
			'home.dailySummary.chartAccessibilityLabel' => 'Діаграма макронутрієнтів',
			'home.intakeProgress.title' => 'Сьогоднішній розподіл макро',
			'home.intakeProgress.target' => 'Ціль',
			'home.intakeProgress.current' => 'Поточне',
			'home.intakeHistory.title' => 'Історія макро за 7 днів',
			'home.intakeHistory.trendTitle' => 'Сьогоднішня тенденція',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Пік: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Історія відсутня',
			'home.intakeHistory.startLogging' => 'Почніть записувати страви, щоб бачити ваші\n7‑денні макро-тенденції тут',
			'home.mealLog.title' => 'Записані страви',
			'home.mealLog.emptyMessage' => 'Зробіть фото останньої страви, щоб записати її тут.',
			'home.mealLog.noMealsToday' => 'За сьогодні немає записів',
			'home.mealLog.seeAllMeals' => 'Переглянути всі страви',
			'home.mealDescription.title' => 'Швидке додавання з AI',
			'home.mealDescription.description' => 'Опишіть страву, а AI подбає про деталі.',
			'home.mealDescription.hint' => 'наприклад: на сніданок я з\'їв велику миску вівсянки з порізаним бананом і ложкою сироваткового протеїну ...',
			'home.mealDescription.analyzeMeal' => 'Аналізувати страву',
			'home.favoriteMeals.title' => 'Улюблені страви',
			'home.favoriteMeals.description' => 'Швидко додайте одну з улюблених страв.',
			'home.favoriteMeals.noFavorites' => 'Улюблені страви відсутні.',
			'home.favoriteMeals.addFavoriteHint' => 'Натисніть зірку на страві, щоб додати її до улюблених.',
			'home.favoriteMeals.seeAll' => 'Переглянути всі',
			'home.favoriteMeals.add' => 'Додати',
			'home.mealSnap.title' => 'Зфотографуйте й відстежте страву',
			'home.mealSnap.description' => 'Використайте камеру, щоб сфотографувати їжу для AI‑аналізу.',
			'home.mealSnap.openCamera' => 'Відкрити камеру',
			'home.mealSnap.gallery' => 'Галерея',
			'home.mealSnap.compressingPhoto' => 'Оптимізація фото…',
			'home.mealSnap.uploadingPhoto' => 'Завантаження фото…',
			'home.connectHealth.title' => 'Синхронізувати з Health Connect',
			'home.connectHealth.description' => 'Синхронізуйте дані про харчування з Health Connect',
			'home.connectHealth.install' => 'Встановити',
			'home.connectHealth.dataUseDescription' => 'Використовуйте спалені калорії у своїй цілі та діліться записаними прийомами їжі',
			'home.connectHealth.installOrUpdate' => 'Установити або оновити',
			'home.connectHealth.connect' => 'Підключити',
			'history.noMeals' => 'Немає записаних страв',
			'history.emptyMessage' => 'Зробіть фото останньої страви, щоб записати її тут.',
			'history.today' => 'Сьогодні',
			'history.yesterday' => 'Вчора',
			'meal.ohNo' => 'Ой!',
			'meal.delete' => 'Видалити',
			'meal.editMeal' => 'Редагувати страву',
			'meal.addMeal' => 'Додати страву',
			'meal.saveMeal' => 'Зберегти страву',
			'meal.save' => 'Зберегти',
			'meal.mealName' => 'Назва страви',
			'meal.mealNameHint' => 'наприклад: Омлет з тостом',
			'meal.nameRequired' => 'Введіть назву страви перед збереженням.',
			'meal.mealQuantity' => 'Кількість',
			'meal.mealQuantityHint' => 'наприклад: 1 миска, 2 шматки',
			'meal.timeOfMeal' => 'Час прийому',
			'meal.timeOfMealHint' => 'Виберіть час, коли ви їли',
			'meal.mealType' => 'Тип страви',
			'meal.nutrition.calories' => 'Калорії',
			'meal.nutrition.carbs' => 'Вуглеводи (г)',
			'meal.nutrition.protein' => 'Білки (г)',
			'meal.nutrition.fat' => 'Жири (г)',
			'meal.nutrition.fiber' => 'Клітковина (г)',
			'meal.deleteConfirmation.title' => 'Видалити страву',
			'meal.deleteConfirmation.message' => 'Ви впевнені, що хочете видалити цю запис про страву?',
			'meal.deleteConfirmation.cancel' => 'Скасувати',
			'meal.deleteConfirmation.delete' => 'Видалити',
			'meal.addedToLog' => 'Страва додана до записів!',
			'meal.couldNotAdd' => ({required Object error}) => 'Не вдалося додати страву: ${error}',
			'meal.savedSuccessfully' => 'Страва успішно додана!',
			'meal.updatedSuccessfully' => 'Страву успішно оновлено!',
			'meal.errorSaving' => ({required Object error}) => 'Помилка при збереженні страви: ${error}',
			'meal.removedFromFavorites' => 'Вилучено з улюблених!',
			'meal.savedAsFavorite' => 'Страву збережено в улюблених!',
			'meal.unfavorite' => 'Прибрати з улюблених',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Не вдалося оновити улюблене: ${error}',
			'meal.feedbackThanks' => 'Дякуємо за відгук!',
			'meal.reanalysisUpdated' => 'Аналіз страви оновлено на основі вашого відгуку.',
			'meal.failedToProcess' => ({required Object error}) => 'Не вдалося обробити: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Не вдалося обробити зображення: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Помилка стиснення зображення: ${error}',
			'meal.failedToSave' => 'Не вдалося зберегти дані. Спробуйте ще раз.',
			'meal.skip' => 'Пропустити',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Питання ${current} з ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Питань немає',
			'meal.questionFlow.next' => 'Далі',
			'meal.questionFlow.continueLabel' => 'Продовжити',
			'meal.analysis.title' => 'Аналізуємо вашу страву',
			'meal.analysis.stepStarted' => 'Початок…',
			'meal.analysis.stepDecomposition' => 'Аналіз страви…',
			'meal.analysis.stepIngredients' => 'Пошук інгредієнтів у базі…',
			'meal.analysis.stepUncertainty' => 'Перевірка впевненості…',
			'meal.analysis.stepMealTypeQuestion' => 'Майже готово…',
			'meal.analysis.stepResult' => 'Завершення аналізу…',
			'meal.analysis.stepError' => 'Щось пішло не так',
			'meal.analysis.stepDefault' => 'Аналізуємо вашу страву…',
			'meal.analysis.progressUnderstand' => 'Розуміння страви',
			'meal.analysis.progressMatch' => 'Пошук поживності інгредієнтів',
			'meal.analysis.progressCheck' => 'Перевірка порцій і точності',
			'meal.analysis.progressMealType' => 'Визначення типу страви',
			'meal.analysis.progressFinish' => 'Обчислення калорій та макро',
			'meal.analysis.detectedIngredientHeading' => 'Інгредієнти, які ми знайшли',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => 'ще ${count}',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'виявлено ${count} інгредієнтів',
			'meal.analysis.ingredientsPending' => 'Сканування інгредієнтів…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '«${text}»',
			'meal.analysis.offlineTip0' => 'Порада: Постійність важливіша за досконалість — регулярні записи виявляють суттєві закономірності.',
			'meal.analysis.offlineTip1' => 'Порада: Для фото природне світло і вид зверху допомагають точніше визначити порцію.',
			'meal.analysis.offlineTip2' => 'Порада: Згадуйте напої, соуси та олію — вони додають калорії, про які часто забувають.',
			'meal.analysis.offlineTip3' => 'Порада: Коротка примітка про порцію (1 миска, велика кава) значно покращує оцінки.',
			'meal.analysis.offlineTip4' => 'Порада: Запис після їжі все одно формує звичку; досконалість не обов\'язкова.',
			'meal.analysis.offlineTip5' => 'Порада: Вказуйте спосіб приготування, якщо він сильно впливає на калорії (смажене проти запеченого).',
			'meal.localInference.reviewTitle' => 'Перевірте виявлені інгредієнти',
			'meal.localInference.reviewSubtitle' => 'Ці дані були оброблені на вашому пристрої. Виправте назви або порції перед розрахунком харчової цінності.',
			'meal.localInference.mealName' => 'Назва страви',
			'meal.localInference.ingredient' => 'Інгредієнт',
			'meal.localInference.grams' => 'Орієнтовна вага (г)',
			'meal.localInference.removeIngredient' => 'Видалити інгредієнт',
			'meal.localInference.continueLabel' => 'Продовжити',
			'meal.localInference.invalidProposal' => 'Додайте принаймні один інгредієнт і вкажіть додатню кількість грамів.',
			'meal.localInference.localUnavailable' => 'Аналіз на пристрої наразі недоступний.',
			'meal.localInference.calculationDetails' => 'Як це було розраховано',
			'meal.localInference.interpretationLocal' => 'Інгредієнти визначено на цьому пристрої',
			'meal.localInference.interpretationCloud' => 'Інгредієнти визначено у хмарі',
			'meal.localInference.interpretationManual' => 'Інгредієнти перевірені або відредаговані вами',
			'meal.localInference.nutritionRemote' => 'Дані про поживність отримано з USDA через Calorify',
			'meal.localInference.nutritionFallback' => 'Деякі значення поживності були оцінені віддалено',
			'meal.localInference.calculationServer' => 'Калорії та макронутрієнти розраховані Calorify',
			'meal.localInference.fallbackUsed' => 'Локальний аналіз було замінено хмарною обробкою',
			'meal.localInference.noRawContent' => 'Діагностичні чеки не містять тексту вашої страви або фото.',
			'meal.feedback.title' => 'Що виглядає неправильно?',
			'meal.feedback.subtitle' => 'Допоможіть покращити аналіз, вибравши одну або кілька проблем.',
			'meal.feedback.tellUsMore' => 'Розкажіть більше',
			'meal.feedback.describeIncorrect' => 'Опишіть, що було неточно',
			'meal.feedback.submit' => 'Надіслати',
			'meal.feedback.issueFoodIdentification' => 'Ідентифікація їжі',
			'meal.feedback.issuePortionSize' => 'Розмір порції',
			'meal.feedback.issueCalorieDistribution' => 'Розподіл калорій',
			'meal.feedback.issueMacrosWrong' => 'Макроси невірні',
			'meal.feedback.issueMissingItems' => 'Відсутні інгредієнти',
			'meal.feedback.issueExtraItems' => 'Зайві інгредієнти',
			'meal.feedback.issueOther' => 'Інше',
			'favorites.title' => 'Улюблене',
			'favorites.empty' => 'Улюблені страви відсутні.',
			'favorites.searchPlaceholder' => 'Пошук улюблених страв',
			'favorites.searchEmptyTitle' => 'За пошуком нічого не знайдено',
			'favorites.searchEmptySubtitle' => 'Спробуйте іншу назву страви, кількість або тип',
			'favorites.sortLabel' => 'Порядок сортування',
			'favorites.undo' => 'Скасувати',
			'favorites.removed' => ({required Object name}) => 'Вилучено ${name} з улюблених',
			'favorites.sortOptions.recent' => 'Недавні',
			'favorites.sortOptions.calories' => 'Калорії',
			'favorites.sortOptions.alphabetical' => 'А‑Я',
			'profile.title' => 'Профіль',
			'profile.noProfileData' => 'Дані профілю не знайдено',
			'profile.yourProfile' => 'Ваш профіль',
			'profile.viewAndManage' => 'Перегляд та керування інформацією про здоров\'я',
			'profile.sections.profile' => 'ПРОФІЛЬ',
			'profile.sections.basicInformation' => 'ОСНОВНА ІНФОРМАЦІЯ',
			'profile.sections.goalsAndActivity' => 'ЦІЛІ ТА АКТИВНІСТЬ',
			'profile.sections.calculatedValues' => 'РОЗРАХОВАНІ ПОКАЗНИКИ',
			'profile.gender' => 'Стать',
			'profile.height' => 'Зріст',
			'profile.weight' => 'Вага',
			'profile.age' => 'Вік',
			'profile.weightGoal' => 'Мета по вазі',
			'profile.targetWeight' => 'Цільова вага',
			'profile.activityLevel' => 'Рівень активності',
			'profile.healthMetrics' => 'Показники здоров\'я',
			'profile.notSet' => 'Не встановлено',
			'profile.years' => 'років',
			'profile.updatedSuccessfully' => 'Профіль успішно оновлено!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Щоденна мета',
			'profile.calculatedValues.calPerDay' => 'кал/добу',
			'profile.calculatedValues.notAvailable' => 'Н/Д',
			'healthScore.title' => 'Оцінка здоров\'я',
			'healthScore.whyThisScore' => 'Чому така оцінка?',
			'healthScore.note' => 'Ця оцінка — AI‑оцінка, побудована на виявлених інгредієнтах і поживній густині. Для дієтичних порад завжди консультуйтеся з фахівцем.',
			'healthScore.unhealthy' => 'Нездорово',
			'healthScore.healthy' => 'Здорово',
			'healthScore.neutral' => 'Нейтрально',
			'editProfile.title' => 'Редагувати профіль',
			'editProfile.sections.personalInformation' => 'ОСОБИСТА ІНФОРМАЦІЯ',
			'editProfile.sections.physicalMeasurements' => 'ФІЗИЧНІ ПОКАЗНИКИ',
			'editProfile.sections.goalsAndActivity' => 'ЦІЛІ ТА АКТИВНІСТЬ',
			'editProfile.gender' => 'Стать',
			'editProfile.dateOfBirth' => 'Дата народження',
			'editProfile.height' => 'Зріст',
			'editProfile.weight' => 'Вага',
			'editProfile.weightGoal' => 'Мета по вазі',
			'editProfile.activityLevel' => 'Рівень активності',
			'editProfile.metric' => 'Метрична',
			'editProfile.imperial' => 'Імперська',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'фунти',
			'editProfile.metricCm' => 'Метрична (cm)',
			'editProfile.imperialFtIn' => 'Імперська (ft/in)',
			'editProfile.metricKg' => 'Метрична (kg)',
			'editProfile.imperialLbs' => 'Імперська (lbs)',
			'editProfile.genders.male' => 'Чоловік',
			'editProfile.genders.female' => 'Жінка',
			'editProfile.genders.other' => 'Інше',
			'editProfile.weightGoals.loseWeight.name' => 'Схуднути',
			'editProfile.weightGoals.loseWeight.description' => 'Створити дефіцит калорій для втрати ваги',
			'editProfile.weightGoals.maintainWeight.name' => 'Підтримувати вагу',
			'editProfile.weightGoals.maintainWeight.description' => 'Підтримувати поточну вагу',
			'editProfile.weightGoals.gainWeight.name' => 'Набрати вагу',
			'editProfile.weightGoals.gainWeight.description' => 'Створити надлишок калорій для набору ваги',
			'editProfile.activityLevels.sedentary.name' => 'Малоактивний',
			'editProfile.activityLevels.sedentary.description' => 'Мало або взагалі немає вправ',
			'editProfile.activityLevels.lightlyActive.name' => 'Легко активний',
			'editProfile.activityLevels.lightlyActive.description' => 'Легкі вправи 1-3 дні/тиждень',
			'editProfile.activityLevels.moderatelyActive.name' => 'Помірно активний',
			'editProfile.activityLevels.moderatelyActive.description' => 'Помірні вправи 3-5 днів/тиждень',
			'editProfile.activityLevels.veryActive.name' => 'Дуже активний',
			'editProfile.activityLevels.veryActive.description' => 'Інтенсивні вправи 6-7 днів/тиждень',
			'editProfile.activityLevels.extremelyActive.name' => 'Надмірно активний',
			'editProfile.activityLevels.extremelyActive.description' => 'Дуже важкі вправи, фізична робота',
			'settings.title' => 'Налаштування',
			'settings.sections.profile' => 'ПРОФІЛЬ',
			'settings.sections.localization' => 'ЛОКАЛІЗАЦІЯ',
			'settings.sections.notifications' => 'СПОВІЩЕННЯ',
			'settings.sections.healthConnect' => 'ІНТЕГРАЦІЯ HEALTH CONNECT',
			'settings.sections.localInference' => 'АНАЛІЗ НА ПРИСТРОЇ',
			'settings.sections.supportAndLegal' => 'ПІДТРИМКА ТА ПРАВО',
			'settings.sections.about' => 'ПРО ДОДАТОК',
			'settings.sections.dangerZone' => 'ОБЛАСТЬ РИЗИКУ',
			'settings.sections.developer' => 'РОЗРОБНИК',
			'settings.editProfile.title' => 'Редагувати профіль',
			'settings.editProfile.subtitle' => 'Оновіть особисту інформацію',
			'settings.language.title' => 'Мова',
			'settings.language.subtitle' => 'Оберіть бажану мову',
			'settings.language.searchHint' => 'Пошук мов...',
			'settings.language.noResults' => 'Результатів не знайдено',
			'settings.heightUnit.title' => 'Одиниця для зросту',
			'settings.weightUnit.title' => 'Одиниця для ваги',
			'settings.mealReminders.title' => 'Нагадування про їжу',
			'settings.mealReminders.subtitle' => 'Тримайтеся плану з вчасними нагадуваннями',
			'settings.localInference.title' => 'Аналіз страв на пристрої',
			'settings.localInference.subtitle' => 'Визначення підтримуваних страв за допомогою Gemini Nano перед розрахунком харчової цінності',
			'settings.localInference.unavailable' => 'Недоступно на цьому пристрої',
			'settings.localInference.rolloutUnavailable' => 'Відповідне обладнання знайдено, але ця функція не активована для цієї версії програми',
			'settings.localInference.modelSetup' => 'Gemini Nano має завершити завантаження, перш ніж цю функцію можна буде увімкнути',
			'settings.localInference.useLocalTitle' => 'Використовувати аналіз на пристрої',
			'settings.localInference.useLocalSubtitle' => 'Додатково, вимкнено за замовчуванням. Результати можуть бути менш точними для складних страв.',
			'settings.localInference.disclosureTitle' => 'Перш ніж увімкнути аналіз на пристрої',
			'settings.localInference.disclosureBody' => 'Gemini Nano може ідентифікувати інгредієнти та оцінювати порції на підтримуваних пристроях Android. Ваші перевірені пропозиції інгредієнтів надсилаються до Calorify для уточнення даних USDA та розрахунків.',
			'settings.localInference.disclosureLimit1' => 'Складні страви, приховані інгредієнти та розміри порцій можуть бути визначені неправильно.',
			'settings.localInference.disclosureLimit2' => 'Модель може бути недоступною під час завантаження, бути зайнятою, працювати у фоновому режимі або мати обмеження пристрою.',
			'settings.localInference.disclosureLimit3' => 'Якщо локальне визначення не може бути завершене, ця бета-версія автоматично надсилає оригінальний опис вашої страви до Calorify для хмарного аналізу.',
			'settings.localInference.acknowledgement' => 'Я розумію, що повинен перевіряти виявлені інгредієнти та порції.',
			'settings.localInference.enable' => 'Підтвердити та увімкнути',
			'settings.localInference.cancel' => 'Скасувати',
			'settings.theme.title' => 'Тема',
			'settings.theme.light' => 'Світла',
			'settings.theme.dark' => 'Темна',
			'settings.theme.system' => 'Система',
			'settings.sendFeedback.title' => 'Надіслати відгук',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Допоможіть покращити ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel}: відгук про додаток',
			'settings.sendFeedback.emailBodyPrefix' => 'Будь ласка, залиште свій відгук нижче:',
			'settings.sendFeedback.appVersion' => 'Версія додатку',
			'settings.sendFeedback.device' => 'Пристрій',
			'settings.sendFeedback.osVersion' => 'Версія ОС',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Експорт історії прийомів їжі',
			'settings.exportMealHistory.subtitle' => 'Поділіться CSV з вашими записаними стравами',
			'settings.exportMealHistory.shareText' => 'Експорт історії прийомів їжі з Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Не вдалося експортувати історію: ${error}',
			'settings.clearAllData.title' => 'Видалити всі дані',
			'settings.clearAllData.subtitle' => 'Безповоротно видалити всю вашу інформацію',
			'settings.clearAllData.localOnlySubtitle' => 'Видалити дані Calorify, збережені на цьому пристрої',
			'settings.clearAllData.confirmationTitle' => 'Видалити всі дані?',
			'settings.clearAllData.confirmationMessage' => 'Цю дію не можна скасувати. Всі ваші записані страви, улюблені та налаштування профілю будуть назавжди видалені.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Це назавжди видалить із пристрою записані прийоми їжі, вибране та налаштування профілю. Прийоми їжі, уже передані в Health Connect, і доступ до Health Connect керуються окремо в Налаштування > Health Connect.',
			'settings.clearAllData.cancel' => 'Скасувати',
			'settings.clearAllData.clearEverything' => 'Видалити все',
			'settings.debugOptions.title' => 'Опції відладки',
			'settings.developerModeEnabled' => 'Режим розробника увімкнено!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Перегляд та керування дозволами',
			'settings.healthConnect.unavailable.title' => 'Health Connect недоступний',
			'settings.healthConnect.unavailable.description' => 'Health Connect недоступний на цьому пристрої. Будь ласка, встановіть Health Connect з Play Store (Android 9+) або оновіть до Android 14+.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect не підтримується на цьому пристрої.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect потребує уваги',
			'settings.healthConnect.updateRequired.description' => 'Установіть або оновіть Health Connect, перш ніж керувати доступом.',
			'settings.healthConnect.updateRequired.action' => 'Установити або оновити',
			'settings.healthConnect.permissions.title' => 'Дозволи',
			'settings.healthConnect.permissions.description' => 'Запитуються наступні дозволи для інтеграції з Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Надано',
			'settings.healthConnect.permissions.notGranted' => 'Не надано',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Читати загальні витрачені калорії',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Дозволяє додатку читати загальну кількість витрачених калорій з Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Цей дозвіл використовується для відображення щоденного витрачання калорій у додатку, що допомагає зрозуміти загальні витрати енергії за день.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Читати дані про харчування',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Дозволяє додатку читати дані про харчування з Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Цей дозвіл дозволяє читати інформацію про харчування, яку могли записати інші додатки, підключені до Health Connect, забезпечуючи повніший огляд вашого харчування.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Записувати дані про харчування',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Дозволяє додатку записувати дані про харчування в Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Цей дозвіл дозволяє синхронізувати ваші записані страви з Health Connect, роблячи дані про харчування доступними іншим додаткам для здоров\'я та фітнесу.',
			'settings.healthConnect.managePermissions' => 'Керувати дозволами',
			'settings.healthConnect.openSettings' => 'Відкрити налаштування Health Connect',
			'settings.healthConnect.disconnect' => 'Відключити Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Відключити Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify втратить доступ до Health Connect. Дані, уже записані там, не буде видалено.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Відключити',
			'settings.healthConnect.deleteSyncedMeals' => 'Видалити прийоми їжі Calorify із Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Видалити синхронізовані прийоми їжі?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Видалити з Health Connect прийоми їжі, синхронізовані цією версією Calorify? Локальний журнал не зміниться. Старіші записи Calorify, можливо, доведеться видалити через розділ керування даними в Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Видалити синхронізовані прийоми їжі',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Прийоми їжі Calorify видалено з Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Не вдалося видалити синхронізовані прийоми їжі. Спробуйте ще раз.',
			'settings.healthConnect.connectionPartial' => 'Деякі функції Health Connect увімкнено.',
			'settings.healthConnect.connectionComplete' => 'Обидві функції Health Connect увімкнено.',
			'settings.healthConnect.actionFailed' => 'Не вдалося відкрити Health Connect. Спробуйте ще раз.',
			'settings.healthConnect.requestPermissions' => 'Запитати дозволи',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Запит дозволів був скасований або не вдався. Спробуйте ще раз або надайте дозволи вручну в налаштуваннях Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Не вдалося запитати дозволи. Спробуйте ще раз або надайте дозволи вручну в налаштуваннях Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Запит…',
			'settings.about.title' => 'Про додаток',
			'settings.about.tagline' => 'Швидко, безкоштовно та з пріоритетом приватності для обізнаності про калорії',
			'settings.about.ourStory.title' => 'Наша історія',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} з\'явився через просте розчарування: більшість додатків для відстеження калорій або надто складні, або вимагають постійного ручного введення, або стягують високі підписки, або порушують приватність.\n\nЯк сольний розробник, я хотів створити щось простіше й чесніше — додаток, що використовує AI для зменшення зусиль, залишається швидким і безкоштовним у використанні та поважає ваші дані про здоров\'я.\n\n${appLabel} — це додаток, який я хотів би мати: без акаунтів, без трекінгу, без реклами — лише чіткі, практичні інсайти і ваші цілі щодо здоров\'я.',
			'settings.about.privacy.title' => 'Ваша приватність важлива',
			'settings.about.privacy.description' => 'Приватність — не додатковий фактор, а принцип дизайну. Ось що це означає на практиці:',
			'settings.about.privacy.noAccounts' => 'Без акаунтів\nВикористовуйте додаток одразу. Без реєстрації, без профілів.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Без відстеження поведінки\n${appLabel} не відстежує вашу активність, не формує профілі використання і не стежить за вами в інших додатках чи на сайтах.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Обмежена аналітика й діагностика\n${appLabel} використовує базові події застосунку та діагностику збоїв для підвищення надійності. Значення медичних записів не використовуються для реклами й не продаються.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Без реклами за дизайном\n${appLabel} створено для роботи без реклами та монетизації на основі даних.',
			'settings.about.privacy.noDataSelling' => 'Без продажу даних\nВаші дані про здоров\'я ніколи не продаються і не передаються третім сторонам.',
			'settings.about.privacy.localStorage' => 'Переважно локальне зберігання\nВаші дані залишаються на пристрої.',
			'settings.about.privacy.privacyPolicy' => 'Політика приватності',
			'settings.about.developer.title' => 'Розроблено сольним розробником',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} створено і підтримується одним розробником, який прагне робити спокійний софт для здоров\'я, що поважає приватність.\n\nВідгуки читаються особисто і допомагають формувати напрямок розвитку додатку.',
			'settings.about.developer.website' => 'Вебсайт',
			'settings.about.developer.email' => 'Електронна пошта',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Подобається ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Ваш відгук допомагає зробити ${appLabel} кращим для всіх.',
			'settings.about.feedback.rateApp' => 'Оцінити в Play Store',
			'settings.about.feedback.sendFeedback' => 'Надіслати відгук',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify, версія ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Збірка ${buildNumber}',
			'reminders.title' => 'Тримайтеся плану за допомогою нагадувань',
			'reminders.description' => 'Отримуйте м’які нагадування записувати прийоми їжі і залишатися послідовними у харчових цілях',
			'reminders.notificationsEnabled' => 'Сповіщення увімкнено',
			'reminders.notificationsDisabled' => 'Сповіщення вимкнено',
			'reminders.enabledSubtitle' => 'Ви будете отримувати нагадування про прийоми їжі',
			'reminders.disabledSubtitle' => 'Увімкніть сповіщення, щоб отримувати нагадування',
			'reminders.mealReminders' => 'Нагадування про їжу',
			'reminders.breakfast' => 'Сніданок',
			'reminders.lunch' => 'Обід',
			'reminders.dinner' => 'Вечеря',
			'reminders.snack' => 'Перекус',
			'reminders.unknown' => 'Невідомо',
			'reminders.change' => 'Змінити',
			'reminders.enableNotifications' => 'Увімкнути сповіщення',
			'reminders.skipForNow' => 'Пропустити зараз',
			'reminders.saveChanges' => 'Зберегти зміни',
			'reminders.enabledSuccessfully' => 'Сповіщення успішно увімкнено!',
			'reminders.permissionDenied' => 'Дозвіл на сповіщення відхилено',
			'reminders.errorEnabling' => ({required Object error}) => 'Помилка увімкнення сповіщень: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Помилка завершення налаштування: ${error}',
			'notifications.breakfast.title' => 'Час сніданку! 🍳',
			'notifications.breakfast.body' => 'Не забудьте записати сніданок',
			'notifications.lunch.title' => 'Час обіду! 🥗',
			'notifications.lunch.body' => 'Час записати обід',
			'notifications.dinner.title' => 'Час вечері! 🍽️',
			'notifications.dinner.body' => 'Не забудьте записати вечерю',
			'notifications.snack.title' => 'Час перекусу! 🍎',
			'notifications.snack.body' => 'Час для корисного перекусу',
			'notifications.test.title' => 'Тестове сповіщення',
			'login.title' => 'Увійти',
			_ => null,
		} ?? switch (path) {
			'login.signInWithGoogle' => 'Увійти через Google',
			'login.signInFailed' => 'Вхід через Google не вдався або був скасований.',
			'disclaimer.pleaseNote' => 'Зверніть увагу',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} надає приблизну інформацію про поживність. Точність залежить від ваших даних і варіацій страв. Використовуйте як орієнтир, а не остаточне джерело. Для персоналізованих порад зверніться до фахівця.',
			'disclaimer.snap.portionSize.title' => 'Розмір порції',
			'disclaimer.snap.portionSize.description' => 'Точність оцінок значною мірою залежить від правильної оцінки розміру порції.',
			'disclaimer.snap.preparationMethods.title' => 'Способи приготування',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Спосіб приготування може істотно змінювати поживний склад їжі. Оцінки ${appLabel} не завжди враховують ці відмінності.',
			'disclaimer.snap.ingredients.title' => 'Інгредієнти',
			'disclaimer.snap.ingredients.description' => 'Складні страви з багатьма прихованими інгредієнтами можуть призводити до менш точних оцінок.',
			'disclaimer.snap.databaseLimitations.title' => 'Обмеження бази даних',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'База продуктів ${appLabel} обширна, але може не містити кожен окремий продукт чи варіацію.',
			'disclaimer.weightEstimate.title' => 'Про оцінку зміни ваги',
			'disclaimer.weightEstimate.description' => 'Проєктована зміна ваги — це теоретична оцінка на основі простої моделі калорії в проти калорії з. Вона служить лише мотиваційним орієнтиром, а не прогнозом вашої фактичної ваги.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Точність калорій',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Ця оцінка є настільки точною, наскільки точні ваші записи про споживання й витрати калорій. Неточні записи призведуть до неточного прогнозу.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Біологічні фактори',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Фактична втрата чи набір ваги залежить від метаболізму, гормонів, сну, стресу, гідратації та інших індивідуальних факторів, які ${appLabel} не може виміряти.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Водна вага та коливання',
			'disclaimer.weightEstimate.waterWeight.description' => 'Нормальна щоденна вага може значно коливатися через затримку води, процеси травлення та час вимірювання. Оцінка не враховує ці щоденні зміни.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Поради фахівця',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Не використовуйте цю оцінку для медичних рішень. Завжди консультуйтеся з медичним фахівцем або зареєстрованим дієтологом щодо персоналізованого керування вагою.',
			'disclaimer.healthMetrics.description' => 'Ці показники допомагають зрозуміти енергетичні потреби вашого тіла і спрямувати ваші харчові цілі.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) — це кількість калорій, які ваше тіло витрачає у стані спокою для підтримки базових функцій, таких як дихання та кровообіг. BMR залежить від вашого віку, статі, зросту й ваги. Вищий BMR означає, що тіло природно спалює більше калорій у спокої, часто через більшу м\'язову масу, молодший вік або чоловічу стать. Нижчий BMR зазвичай вказує на меншу м\'язову масу, старший вік або жіночу стать.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) — це загальна кількість калорій, які ви витрачаєте за день, включно з BMR та калоріями від фізичної активності і руху. TDEE залежить від вашого BMR і рівня активності. Вищий TDEE означає, що ви витрачаєте більше калорій загалом, зазвичай через вищу активність або більший BMR. Нижчий TDEE свідчить про меншу щоденну активність або нижчий BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Щоденна мета',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Daily Goal — це рекомендована щоденна кількість калорій на основі вашого TDEE і мети по вазі. Для втрати ваги ви споживаєте менше калорій, ніж ваш TDEE. Для підтримання — відповідаєте TDEE. Для набору — споживаєте більше калорій, ніж ваш TDEE. Це допомагає досягти бажаної зміни ваги у здоровому темпі.',
			'disclaimer.calorieExpenditure.title' => 'Оцінка витрат калорій',
			'disclaimer.calorieExpenditure.description' => 'Коли дані Health Connect недоступні, ми оцінюємо сьогоднішні витрати калорій, використовуючи ваш BMR і рівень активності (TDEE), пропорційно пройденій частині доби.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Як розраховується оцінка',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Ми обчислюємо ваш TDEE (на основі профілю) і множимо його на частку доби, що пройшла (години + хвилини) / 24, щоб оцінити витрачені до цього моменту калорії.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Поради фахівця',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Не використовуйте цю оцінку для медичних рішень. Завжди консультуйтеся з медичним фахівцем або зареєстрованим дієтологом щодо персоналізованого керування вагою.',
			'localNutritionPhase4.nutritionBundled' => 'Харчову цінність зіставлено із завантаженого пакета USDA',
			'localNutritionPhase4.nutritionCached' => 'Харчову цінність зіставлено з кешу USDA на пристрої',
			'localNutritionPhase4.nutritionMixed' => 'Харчову цінність об’єднано із завантажених, кешованих і віддалених рядків USDA',
			'localNutritionPhase4.calculationLocal' => 'Калорії та макронутрієнти розраховано на цьому пристрої',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: завантажений пакет USDA',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: кеш USDA на пристрої',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: рядок USDA, отриманий через Calorify',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: детермінована харчова константа',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · набір даних ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Менша',
			'localNutritionPhase4.portionEstimated' => 'Орієнтовна',
			'localNutritionPhase4.portionLarger' => 'Більша',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Яка порція була найближчою для ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Який це був прийом їжі?',
			'localNutritionPhase4.localNutritionTip' => 'Розраховано за перевіреними локальними даними про харчування.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Завантажити дані про харчування',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Використовуйте перевірені рядки USDA й детермінований розрахунок на цьому пристрої, коли охоплено всі інгредієнти.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Локальні дані про харчування недоступні для цієї версії застосунку.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Перевірений пакет даних про харчування не завантажено.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Завантаження та перевірка даних про харчування…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Пакет ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} кешованих рядків USDA · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Перевірити оновлення',
			'localNutritionPhase4.offlineNutritionClear' => 'Очистити локальні дані про харчування',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Очистити локальні дані про харчування?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Буде видалено завантажений пакет USDA і кеш пошуку. Записані прийоми їжі збережуть точний знімок харчової цінності, використаний під час збереження.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Очистити дані',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Не вдалося завантажити й перевірити локальні дані про харчування: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Локальні дані про харчування очищено',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Назад',
			'watch.common.cancel' => 'Скасувати',
			'watch.common.delete' => 'Видалити',
			'watch.common.retry' => 'Спробувати ще раз',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Поживна речовина',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} г',
			'watch.nutrition.protein' => 'Білки',
			'watch.nutrition.carbs' => 'Вуглеводи',
			'watch.nutrition.fat' => 'Жири',
			'watch.nutrition.fiber' => 'Клітковина',
			'watch.sync.syncWithPhone' => 'Синхронізувати з телефоном',
			'watch.sync.syncing' => 'Синхронізація…',
			'watch.sync.synced' => 'Синхронізовано',
			'watch.sync.syncedJustNow' => 'Щойно синхронізовано',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Синхронізовано ${minutes}хв тому',
			'watch.sync.failed' => 'Не вдалося синхронізувати',
			'watch.sync.phoneDisconnected' => 'Телефон відключено',
			'watch.sync.tapToSync' => 'Торкніться, щоб синхронізувати',
			'watch.sync.refreshFailed' => 'Не вдалось оновити. Перевірте телефон.',
			'watch.sync.openPhone' => 'Відкрийте Calorify на телефоні, потім торкніться «Оновити».',
			'watch.home.today' => 'Сьогодні',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} калорій спожито з ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} понад мету',
			'watch.home.remaining' => ({required Object calories}) => '${calories} залишилось',
			'watch.home.left' => ({required Object calories}) => '${calories} залишилось',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal ціль',
			'watch.home.logMeal' => 'Додати прийом їжі',
			'watch.home.todayMeals' => 'Сьогоднішні прийоми їжі',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Сьогоднішні прийоми їжі, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Показати ще ${count}',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} ще прийомів їжі, торкніться, щоб побачити всі',
			'watch.home.noMeals' => 'Немає зареєстрованих прийомів',
			'watch.home.noMealsSemantics' => 'Сьогодні не зареєстровано прийомів їжі',
			'watch.home.tapLog' => 'Торкніться «Додати», щоб почати',
			'watch.home.removedFromQueue' => 'Прийом їжі видалено з черги офлайн.',
			'watch.home.removedOffline' => 'Прийом їжі видалено офлайн. Він синхронізується, коли телефон з\'єднається.',
			'watch.home.deleteFailed' => 'Не вдалося видалити прийом їжі',
			'watch.history.title' => 'Сьогоднішні прийоми їжі',
			'watch.history.refresh' => 'Оновити прийоми',
			'watch.history.loadFailed' => 'Не вдалося завантажити прийоми їжі',
			'watch.history.syncFailed' => 'Не вдалося синхронізувати',
			'watch.history.emptyTitle' => 'Ще нема прийомів',
			'watch.history.emptyMessage' => 'Додайте прийом їжі з Головної, щоб він відобразився тут.',
			'watch.favorites.title' => 'Вибране',
			'watch.favorites.refresh' => 'Оновити вибране',
			'watch.favorites.loadFailed' => 'Не вдалося завантажити вибране',
			'watch.favorites.syncFailed' => 'Не вдалося синхронізувати',
			'watch.favorites.emptyTitle' => 'Ще нема вибраного',
			'watch.favorites.emptyMessage' => 'Позначайте прийоми їжі зірочкою у телефонному додатку, щоб тут додавати одним дотиком.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} калорій. Торкніться, щоб додати.',
			'watch.favorites.logged' => ({required Object name}) => '${name} додано!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} збережено офлайн. Синхронізується, коли телефон з\'єднається.',
			'watch.favorites.saveFailed' => 'Не вдалося зберегти прийом їжі. Спробуйте ще раз.',
			'watch.favorites.log' => 'Додати',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} калорій, додано о ${time}.',
			'watch.meal.longPressDelete' => 'Натисніть довго, щоб видалити.',
			'watch.meal.deleteTitle' => 'Видалити прийом їжі?',
			'watch.voice.title' => 'Голосовий запис прийому їжі',
			'watch.voice.processing' => 'Аналізую прийом…',
			'watch.voice.processingDescription' => 'Оцінка порцій і харчової цінності',
			'watch.voice.listening' => 'Слухаю',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}с',
			'watch.voice.stop' => 'Зупинити запис',
			'watch.voice.start' => 'Торкніться, щоб почати запис',
			'watch.voice.starting' => 'Запускаю мікрофон…',
			'watch.voice.prompt' => 'Торкніться, потім опишіть свій прийом їжі',
			'watch.voice.tapToRetry' => 'Торкніться, щоб спробувати ще раз',
			'watch.voice.example' => 'Спробуйте «2 роти з далом»',
			'watch.voice.unavailable' => 'Голосовий ввід недоступний. Перевірте дозволи на мікрофон у налаштуваннях годинника.',
			'watch.voice.didNotStart' => 'Мікрофон не запустився. Торкніться, щоб спробувати ще раз.',
			'watch.voice.startFailed' => 'Не вдалося розпочати запис. Перевірте дозволи на мікрофон.',
			'watch.voice.allowMicrophone' => 'Дозвольте доступ до мікрофона, щоб записувати прийоми голосом.',
			'watch.voice.needsConnection' => 'Розпізнавання голосу потребує підключення. Торкніться, щоб спробувати ще раз.',
			'watch.voice.microphoneUnavailable' => 'Мікрофон недоступний. Торкніться, щоб спробувати ще раз.',
			'watch.voice.microphoneBusy' => 'Мікрофон зайнятий. Зачекайте і спробуйте ще раз.',
			'watch.voice.languageUnsupported' => 'Голосовий ввід не підтримує мову годинника.',
			'watch.voice.temporarilyBusy' => 'Голосовий ввід тимчасово недоступний. Зачекайте і спробуйте ще раз.',
			'watch.voice.notRecognized' => 'Не розпізнано. Торкніться мікрофона і спробуйте ще раз.',
			'watch.voice.noSpeech' => 'Голос не виявлено. Торкніться мікрофона, щоб спробувати ще раз.',
			'watch.voice.analysisFailed' => 'Аналіз не вдався. Спробуйте ще раз.',
			'watch.voice.mealNotIdentified' => 'Не вдалося визначити прийом їжі. Спробуйте описати інакше.',
			'watch.result.title' => 'Деталі прийому їжі',
			'watch.result.savedOffline' => 'Збережено офлайн',
			'watch.result.logged' => 'Додано!',
			'watch.result.mealFound' => 'Прийом їжі знайдено',
			'watch.result.estimatedEnergy' => 'Орієнтовна енергія',
			'watch.result.logMeal' => 'Додати прийом їжі',
			'watch.result.logging' => 'Збереження…',
			'watch.result.logAnother' => 'Додати ще один',
			'watch.result.goingBack' => 'Повертаюся…',
			'watch.result.savedOfflineMessage' => 'Прийом їжі збережено офлайн. Він синхронізується, коли телефон з\'єднається.',
			'watch.result.saveFailed' => 'Не вдалося зберегти прийом їжі. Спробуйте ще раз.',
			'common.betaTag' => 'Бета',
			'common.close' => 'Закрити',
			'common.kContinue' => 'Продовжити',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Подобається ${appLabel}?',
			'feedbackRating.yes' => 'Так, мені подобається',
			'feedbackRating.no' => 'Поки що ні',
			'feedbackRating.rateStepHeading' => 'Оцініть в Play Store',
			'feedbackRating.emailStepHeading' => 'Надіслати відгук електронною поштою',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Швидка оцінка допомагає іншим знайти ${appLabel} і підтримує розвиток. Чи не могли б ви залишити відгук?',
			'feedbackRating.shareFeedbackViaEmail' => 'Ваш відгук формує подальший розвиток — ми читаємо кожне повідомлення. Хочете поділитися думками через email?',
			'feedbackRating.rateCta' => 'Оцінити в Play Store',
			'feedbackRating.maybeLater' => 'Можливо пізніше',
			'feedbackRating.sendFeedback' => 'Надіслати відгук',
			'feedbackRating.noThanks' => 'Ні, дякую',
			'feedbackRating.aboutUsDescription' => 'Створено з душею маленькою командою. Ми орієнтовані на приватність, простоту та допомогу у формуванні кращих харчових звичок.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Цікавитесь, хто стоїть за ${appLabel}? Дивіться ',
			'feedbackRating.aboutUsLinkLabel' => 'Про нас',
			'feedbackRating.thankYouMessage' => 'Дякуємо! Ми запитаємо ще пізніше.',
			'health.syncFailed' => 'Не вдалося синхронізувати з Health Connect',
			'health.mealSynced' => 'Страва синхронізована з Health Connect',
			_ => null,
		};
	}
}
