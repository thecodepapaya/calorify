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
	@override late final _TranslationsErrorsUk errors = _TranslationsErrorsUk._(_root);
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
	@override late final _TranslationsHealthUk health = _TranslationsHealthUk._(_root);
}

// Path: errors
class _TranslationsErrorsUk implements TranslationsErrorsEn {
	_TranslationsErrorsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Занадто багато запитів. Будь ласка, зачекайте трохи й спробуйте знову.';
	@override String get networkError => 'Помилка мережі. Перевірте підключення до інтернету.';
	@override String get unknownError => 'Щось пішло не так. Спробуйте пізніше.';
	@override String get loadingProfileData => 'Помилка завантаження даних профілю';
	@override String get somethingWentWrong => 'Щось пішло не так.';
	@override String get retry => 'Спробувати знову';
}

// Path: onboarding
class _TranslationsOnboardingUk implements TranslationsOnboardingEn {
	_TranslationsOnboardingUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Ласкаво просимо до ${appLabel}';
	@override String get subtitle => 'Ваш персональний помічник з харчування на базі ШІ';
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
	@override String get dashboard => 'Головна';
	@override String get history => 'Історія';
}

// Path: home
class _TranslationsHomeUk implements TranslationsHomeEn {
	_TranslationsHomeUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryUk aiSummary = _TranslationsHomeAiSummaryUk._(_root);
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
	@override String get noMeals => 'Немає зафіксованих прийомів їжі';
	@override String get emptyMessage => 'Зробіть фото свого останнього прийому їжі, щоб додати його сюди.';
	@override String get today => 'Сьогодні';
	@override String get yesterday => 'Вчора';
}

// Path: meal
class _TranslationsMealUk implements TranslationsMealEn {
	_TranslationsMealUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Ой!';
	@override String get delete => 'Видалити';
	@override String get editMeal => 'Редагувати прийом';
	@override String get addMeal => 'Додати прийом';
	@override String get saveMeal => 'Зберегти прийом';
	@override String get save => 'Зберегти';
	@override String get mealName => 'Назва страви';
	@override String get mealNameHint => 'напр., яєшня зі скибочкою тосту';
	@override String get mealQuantity => 'Кількість/порція';
	@override String get mealQuantityHint => 'напр., 1 миска, 2 скибочки';
	@override String get timeOfMeal => 'Час прийому їжі';
	@override String get timeOfMealHint => 'Виберіть час, коли ви їли';
	@override String get mealType => 'Тип прийому їжі';
	@override late final _TranslationsMealNutritionUk nutrition = _TranslationsMealNutritionUk._(_root);
	@override late final _TranslationsMealDeleteConfirmationUk deleteConfirmation = _TranslationsMealDeleteConfirmationUk._(_root);
	@override String get addedToLog => 'Прийом їжі додано до вашого журналу!';
	@override String couldNotAdd({required Object error}) => 'Не вдалося додати прийом: ${error}';
	@override String get savedSuccessfully => 'Прийом успішно додано!';
	@override String get updatedSuccessfully => 'Прийом успішно оновлено!';
	@override String errorSaving({required Object error}) => 'Помилка збереження прийому: ${error}';
	@override String get removedFromFavorites => 'Видалено з обраного!';
	@override String get savedAsFavorite => 'Прийом збережено в обране!';
	@override String get unfavorite => 'Прибрати з обраного';
	@override String couldNotUpdateFavorite({required Object error}) => 'Не вдалося оновити обране: ${error}';
	@override String get feedbackThanks => 'Дякуємо за відгук!';
	@override String get reanalysisUpdated => 'Оновлено аналіз прийому на основі вашого відгуку.';
	@override String failedToProcess({required Object error}) => 'Не вдалося обробити: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Не вдалося обробити зображення: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Помилка оптимізації зображення: ${error}';
	@override String get failedToSave => 'Не вдалося зберегти дані. Спробуйте ще раз.';
	@override String get skip => 'Пропустити';
	@override late final _TranslationsMealVariationUk variation = _TranslationsMealVariationUk._(_root);
	@override late final _TranslationsMealAnalysisUk analysis = _TranslationsMealAnalysisUk._(_root);
	@override late final _TranslationsMealFeedbackUk feedback = _TranslationsMealFeedbackUk._(_root);
}

// Path: favorites
class _TranslationsFavoritesUk implements TranslationsFavoritesEn {
	_TranslationsFavoritesUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Обране';
	@override String get empty => 'Поки що немає обраних страв.';
	@override String get searchPlaceholder => 'Пошук в обраному';
	@override String get searchEmptyTitle => 'Немає відповідних обраних';
	@override String get searchEmptySubtitle => 'Спробуйте іншу назву страви, кількість або тип прийому.';
	@override String get sortLabel => 'Сортувати обране';
	@override String get undo => 'Скасувати';
	@override String removed({required Object name}) => 'Видалено ${name} з обраного';
	@override late final _TranslationsFavoritesSortOptionsUk sortOptions = _TranslationsFavoritesSortOptionsUk._(_root);
}

// Path: profile
class _TranslationsProfileUk implements TranslationsProfileEn {
	_TranslationsProfileUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профіль';
	@override String get noProfileData => 'Дані профілю не знайдені';
	@override String get yourProfile => 'Ваш профіль';
	@override String get viewAndManage => 'Переглядайте й керуйте інформацією про здоров’я';
	@override late final _TranslationsProfileSectionsUk sections = _TranslationsProfileSectionsUk._(_root);
	@override String get gender => 'Стать';
	@override String get height => 'Зріст';
	@override String get weight => 'Вага';
	@override String get age => 'Вік';
	@override String get weightGoal => 'Мета щодо ваги';
	@override String get targetWeight => 'Цільова вага';
	@override String get activityLevel => 'Рівень активності';
	@override String get healthMetrics => 'Показники здоров’я';
	@override String get notSet => 'Не встановлено';
	@override String get years => 'років';
	@override String get updatedSuccessfully => 'Профіль успішно оновлено!';
	@override late final _TranslationsProfileCalculatedValuesUk calculatedValues = _TranslationsProfileCalculatedValuesUk._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreUk implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оцінка здоровʼя';
	@override String get whyThisScore => 'Чому така оцінка?';
	@override String get note => 'Ця оцінка — орієнтовна оцінка ШІ на основі визначених інгредієнтів і поживної щільності. Завжди консультуйтеся з фахівцем щодо харчування.';
	@override String get unhealthy => 'Нездорово';
	@override String get healthy => 'Здорово';
	@override String get neutral => 'Нейтрально';
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
	@override String get weightGoal => 'Мета щодо ваги';
	@override String get activityLevel => 'Рівень активності';
	@override String get metric => 'Метрична';
	@override String get imperial => 'Імперська';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Метрична (cm)';
	@override String get imperialFtIn => 'Імперська (ft/in)';
	@override String get metricKg => 'Метрична (kg)';
	@override String get imperialLbs => 'Імперська (lbs)';
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
	@override late final _TranslationsSettingsExportMealHistoryUk exportMealHistory = _TranslationsSettingsExportMealHistoryUk._(_root);
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
	@override String get title => 'Залишайтеся на шляху з нагадуваннями';
	@override String get description => 'Отримуйте делікатні нагадування фіксувати прийоми й бути послідовними у харчуванні';
	@override String get notificationsEnabled => 'Сповіщення увімкнено';
	@override String get notificationsDisabled => 'Сповіщення вимкнено';
	@override String get enabledSubtitle => 'Ви отримуватимете нагадування про прийоми їжі';
	@override String get disabledSubtitle => 'Увімкніть сповіщення, щоб отримувати нагадування про прийоми їжі';
	@override String get mealReminders => 'Нагадування про прийоми їжі';
	@override String get breakfast => 'Сніданок';
	@override String get lunch => 'Обід';
	@override String get dinner => 'Вечеря';
	@override String get snack => 'Перекус';
	@override String get unknown => 'Невідомо';
	@override String get change => 'Змінити';
	@override String get enableNotifications => 'Увімкнути сповіщення';
	@override String get skipForNow => 'Поки що пропустити';
	@override String get saveChanges => 'Зберегти зміни';
	@override String get enabledSuccessfully => 'Сповіщення успішно увімкнено!';
	@override String get permissionDenied => 'Доступ до сповіщень заборонено';
	@override String errorEnabling({required Object error}) => 'Помилка під час увімкнення сповіщень: ${error}';
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
	@override String get title => 'Вхід';
	@override String get signInWithGoogle => 'Увійти через Google';
	@override String get signInFailed => 'Вхід через Google не вдався або був скасований.';
}

// Path: disclaimer
class _TranslationsDisclaimerUk implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Зверніть увагу';
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
	@override String enjoyingQuestion({required Object appLabel}) => 'Подобається ${appLabel}?';
	@override String get yes => 'Так, мені подобається';
	@override String get no => 'Не дуже';
	@override String get rateStepHeading => 'Оцініть у Play Store';
	@override String get emailStepHeading => 'Надішліть відгук на ел. пошту';
	@override String soloDevMessage({required Object appLabel}) => 'Швидка оцінка допоможе іншим знайти ${appLabel} і підтримає подальшу розробку. Виділите хвильку, щоб залишити її?';
	@override String get shareFeedbackViaEmail => 'Ваш відгук формує майбутні оновлення — ми читаємо кожне повідомлення. Хочете поділитися думками електронною поштою?';
	@override String get rateCta => 'Оцінити в Play Store';
	@override String get maybeLater => 'Можливо пізніше';
	@override String get sendFeedback => 'Надіслати відгук';
	@override String get noThanks => 'Ні, дякую';
	@override String get aboutUsDescription => 'Створено з турботою невеликою командою. Ми зосереджені на приватності, простоті та допомозі у формуванні корисних харчових звичок.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Цікаво, хто стоїть за ${appLabel}? Перегляньте ';
	@override String get aboutUsLinkLabel => 'Про нас';
	@override String get thankYouMessage => 'Дякуємо! Запитаємо іншим разом.';
}

// Path: health
class _TranslationsHealthUk implements TranslationsHealthEn {
	_TranslationsHealthUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Не вдалося синхронізувати з Health Connect';
	@override String get mealSynced => 'Прийом їжі синхронізовано з Health Connect';
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
	@override String get description => 'Стать допомагає точно розрахувати базовий обмін (BMR).';
	@override String get next => 'Далі';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightUk implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Який у вас зріст?';
	@override String get description => 'Зріст допомагає точно розрахувати ІМТ і енергетичні потреби.';
	@override String get metric => 'Метрична';
	@override String get imperial => 'Імперська';
	@override String get next => 'Далі';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightUk implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightUk._(this._root);

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
class _TranslationsOnboardingAgeUk implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Коли у вас день народження?';
	@override String get description => 'Вік допомагає точно розрахувати вашу потребу в калоріях.';
	@override String get next => 'Далі';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleUk implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Недовага';
	@override String get healthy => 'Норма';
	@override String get overweight => 'Надмірна';
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
	@override String get description => 'Оберіть мету, яка найкраще описує бажаний результат';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelUk implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Наскільки ви активні?';
	@override String get description => 'Це допоможе точніше розрахувати вашу денну потребу в калоріях';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectUk implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Підключіться до Health Connect';
	@override String get description => 'Синхронізуйте дані про здоров’я для кращих інсайтів і автоматичного підрахунку калорій';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingUk automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingUk._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsUk progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsUk._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationUk seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationUk._(_root);
	@override String get connected => 'Health Connect підключено';
	@override String get notConnected => 'Health Connect не підключено';
	@override String get setup => 'Налаштувати Health Connect';
	@override String get skipForNow => 'Поки що пропустити';
	@override String get statusConnected => 'Health Connect підключено.';
	@override String get statusSuccess => 'Health Connect успішно підключено!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Доступ заборонено. Будь ласка, увімкніть дозволи Health Connect у налаштуваннях телефону для ${appLabel}.';
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

// Path: home.aiSummary
class _TranslationsHomeAiSummaryUk implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваш підсумок від ШІ';
	@override String get logMore => 'Протягом кількох наступних днів фіксуйте більше прийомів їжі, щоб отримати персоналізовані інсайти від ШІ.';
	@override String get loading => 'Завантаження підсумку...';
	@override String mealCount({required Object count}) => '${count} зафіксованих прийомів їжі';
	@override String macroBalanceScore({required Object score}) => 'Оцінка балансу ${score}';
	@override String get topFoods => 'Топ-страви';
	@override String get trendUp => 'Калорії зростають';
	@override String get trendDown => 'Калорії знижуються';
	@override String get trendSteady => 'Калорії стабільні';
	@override String generatedAt({required Object time}) => 'Оновлено ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalUk implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Встановіть свою денну ціль';
	@override String get titleSet => 'Ваша денна ціль';
	@override String get description => 'Готові вирушити у wellness-подорож? Задайте денну калорійну ціль нижче, щоб розпочати прогрес.';
	@override String get descriptionSet => 'Ваш компас налаштовано! Це ваша денна калорійна ціль-навігатор.';
	@override String get yourGoal => 'Ваша ціль';
	@override String get goal => 'Ціль';
	@override String get dailyCalories => 'Денні калорії (ккал)';
	@override String get setGoal => 'Встановити ціль';
	@override String get intake => 'Спожито';
	@override String get burned => 'Спалено';
	@override String get weightImpact => 'Вплив на вагу';
	@override String get estLoss => 'Оціночна втрата';
	@override String get estGain => 'Оціночний набір';
	@override String get kcal => 'ккал';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryUk implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Щоденний підсумок';
	@override String get calories => 'Калорії';
	@override String get carbs => 'Вуглеводи';
	@override String get protein => 'Білки';
	@override String get fat => 'Жири';
	@override String get fiber => 'Клітковина';
	@override String get grams => 'грамів';
	@override String get chartAccessibilityLabel => 'Діаграма макроелементів';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressUk implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сьогоднішній розподіл макроелементів';
	@override String get target => 'Ціль';
	@override String get current => 'Поточний';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryUk implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => '7-денна історія макросів';
	@override String get trendTitle => 'Сьогоднішній тренд';
	@override String peakHour({required Object hour}) => 'Пік: ${hour}:00';
	@override String get noHistoryYet => 'Поки що немає історії';
	@override String get startLogging => 'Почніть фіксувати прийоми їжі, щоб побачити тут\n7-денні тренди макроелементів';
}

// Path: home.mealLog
class _TranslationsHomeMealLogUk implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Зафіксовані прийоми';
	@override String get emptyMessage => 'Зробіть фото свого останнього прийому їжі, щоб додати його сюди.';
	@override String get noMealsToday => 'Сьогодні прийомів їжі не зафіксовано';
	@override String get seeAllMeals => 'Переглянути всі прийоми їжі';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionUk implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Швидке додавання за допомогою ШІ';
	@override String get description => 'Опишіть свою страву — ШІ подбає про деталі.';
	@override String get hint => 'наприклад: на сніданок я з’їв(ла) велику миску вівсянки з бананом і порцією сироваткового протеїну ...';
	@override String get analyzeMeal => 'Проаналізувати прийом';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsUk implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Обрані страви';
	@override String get description => 'Швидко додайте одну з улюблених страв.';
	@override String get noFavorites => 'Поки що немає обраних страв.';
	@override String get addFavoriteHint => 'Натисніть зірочку на страві, щоб позначити її як обрану.';
	@override String get seeAll => 'Переглянути всі';
	@override String get add => 'Додати';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapUk implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Знімайте й відстежуйте свій прийом';
	@override String get description => 'Скористайтеся камерою, щоб сфотографувати їжу для аналізу ШІ.';
	@override String get openCamera => 'Відкрити камеру';
	@override String get gallery => 'Галерея';
	@override String get compressingPhoto => 'Оптимізація фото…';
	@override String get uploadingPhoto => 'Завантаження фото…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthUk implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Синхронізація з Health Connect';
	@override String get description => 'Синхронізуйте харчові дані з Health Connect';
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
	@override String get protein => 'Білки (г)';
	@override String get fat => 'Жири (г)';
	@override String get fiber => 'Клітковина (г)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationUk implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Видалити прийом?';
	@override String get message => 'Ви впевнені, що хочете видалити цей запис прийому їжі?';
	@override String get cancel => 'Скасувати';
	@override String get delete => 'Видалити';
}

// Path: meal.variation
class _TranslationsMealVariationUk implements TranslationsMealVariationEn {
	_TranslationsMealVariationUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Питання ${current} із ${total}';
	@override String get noVariationsAvailable => 'Варіацій немає';
}

// Path: meal.analysis
class _TranslationsMealAnalysisUk implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Аналіз прийому їжі ШІ';
	@override String get reassurance => 'Зазвичай це займає кілька секунд.';
	@override String get stepStarted => 'Починаємо…';
	@override String get stepDecomposition => 'Розуміємо ваш прийом…';
	@override String get stepIngredients => 'Зіставляємо інгредієнти з базою харчової цінності…';
	@override String get stepUncertainty => 'Перевіряємо впевненість…';
	@override String get stepMealTypeQuestion => 'Майже готово…';
	@override String get stepResult => 'Фіналізуємо результат…';
	@override String get stepError => 'Щось пішло не так';
	@override String get stepDefault => 'Аналізуємо ваш прийом…';
	@override String get progressUnderstand => 'Аналіз';
	@override String get progressMatch => 'Відповідність';
	@override String get progressCheck => 'Перевірка';
	@override String get progressFinish => 'Завершення';
	@override String ingredientsLine({required Object count}) => 'Виявлено інгредієнтів: ${count}';
	@override String get ingredientsPending => 'Сканування інгредієнтів…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackUk implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Що виглядає неправильно?';
	@override String get subtitle => 'Допоможіть нам покращити аналіз, обравши одну або кілька проблем.';
	@override String get tellUsMore => 'Розкажіть більше';
	@override String get describeIncorrect => 'Опишіть, що було неправильно';
	@override String get submit => 'Надіслати';
	@override String get issueFoodIdentification => 'Розпізнавання їжі';
	@override String get issuePortionSize => 'Розмір порції';
	@override String get issueCalorieDistribution => 'Розподіл калорій';
	@override String get issueMacrosWrong => 'Макроелементи неправильні';
	@override String get issueMissingItems => 'Відсутні елементи';
	@override String get issueExtraItems => 'Зайві елементи';
	@override String get issueOther => 'Інше';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsUk implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Нещодавні';
	@override String get calories => 'Калорії';
	@override String get alphabetical => 'А-Я';
}

// Path: profile.sections
class _TranslationsProfileSectionsUk implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ПРОФІЛЬ';
	@override String get basicInformation => 'ОСНОВНА ІНФОРМАЦІЯ';
	@override String get goalsAndActivity => 'ЦІЛІ ТА АКТИВНІСТЬ';
	@override String get calculatedValues => 'РОЗРАХОВАНІ ЗНАЧЕННЯ';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesUk implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Денна ціль';
	@override String get calPerDay => 'ккал/день';
	@override String get notAvailable => 'Н/Д';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsUk implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ОСОБИСТА ІНФОРМАЦІЯ';
	@override String get physicalMeasurements => 'ФІЗИЧНІ ПОКАЗНИКИ';
	@override String get goalsAndActivity => 'ЦІЛІ ТА АКТИВНІСТЬ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersUk implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get male => 'Чоловіча';
	@override String get female => 'Жіноча';
	@override String get other => 'Інше';
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
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'ПІДТРИМКА ТА ПРАВО';
	@override String get about => 'ПРО ДОДАТОК';
	@override String get dangerZone => 'НЕБЕЗПЕЧНА ЗОНА';
	@override String get developer => 'РОЗРОБНИК';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileUk implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редагувати профіль';
	@override String get subtitle => 'Оновіть свою особисту інформацію';
}

// Path: settings.language
class _TranslationsSettingsLanguageUk implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Мова';
	@override String get subtitle => 'Оберіть бажану мову';
	@override String get searchHint => 'Пошук мов...';
	@override String get noResults => 'Нічого не знайдено';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitUk implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Одиниця зросту';
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
	@override String get title => 'Нагадування про прийоми їжі';
	@override String get subtitle => 'Будьте на шляху завдяки вчасним сповіщенням';
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
	@override String emailSubject({required Object appLabel}) => 'Відгук про ${appLabel}';
	@override String get emailBodyPrefix => 'Будь ласка, залиште свій відгук нижче:';
	@override String get appVersion => 'Версія додатка';
	@override String get device => 'Пристрій';
	@override String get osVersion => 'Версія ОС';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryUk implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Експорт історії прийомів';
	@override String get subtitle => 'Поділіться CSV-файлом ваших зафіксованих прийомів їжі';
	@override String get shareText => 'Експорт історії ваших прийомів їжі Calorify';
	@override String failed({required Object error}) => 'Не вдалося експортувати історію прийомів їжі: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataUk implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Очистити всі дані';
	@override String get subtitle => 'Безповоротно видалити всю вашу інформацію';
	@override String get confirmationTitle => 'Очистити всі дані?';
	@override String get confirmationMessage => 'Цю дію не можна скасувати. Усі ваші зафіксовані прийоми, обране та налаштування профілю буде назавжди видалено.';
	@override String get cancel => 'Скасувати';
	@override String get clearEverything => 'Видалити все';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsUk implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Параметри налагодження';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectUk implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Перегляд і керування дозволами';
	@override late final _TranslationsSettingsHealthConnectUnavailableUk unavailable = _TranslationsSettingsHealthConnectUnavailableUk._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsUk permissions = _TranslationsSettingsHealthConnectPermissionsUk._(_root);
	@override String get managePermissions => 'Керувати дозволами';
	@override String get openSettings => 'Відкрити налаштування Health Connect';
	@override String get requestPermissions => 'Запросити дозволи';
	@override String get permissionRequestCancelledOrFailed => 'Запит на дозволи було скасовано або не вдався. Спробуйте знову або надайте дозволи вручну в налаштуваннях Health Connect.';
	@override String get permissionRequestFailed => 'Не вдалося запросити дозволи. Спробуйте знову або надайте дозволи вручну в налаштуваннях Health Connect.';
	@override String get requestingPermissions => 'Запит...';
}

// Path: settings.about
class _TranslationsSettingsAboutUk implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Про додаток';
	@override String get tagline => 'Швидкий, безкоштовний і з пріоритетом приватності контроль калорій';
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
	@override String get body => 'Не забудьте зафіксувати свій сніданок';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchUk implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Час обіду! 🥗';
	@override String get body => 'Пора зафіксувати свій обід';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerUk implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Час вечері! 🍽️';
	@override String get body => 'Не забудьте зафіксувати свою вечерю';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackUk implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Час перекусу! 🍎';
	@override String get body => 'Час для корисного перекусу';
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
	@override String description({required Object appLabel}) => '${appLabel} надає орієнтовну інформацію про харчову цінність. Точність залежить від ваших даних і варіацій страв. Використовуйте як підказку, а не остаточне джерело. Для персональних порад звертайтеся до фахівця.';
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
	@override String get title => 'Про оцінку зміни ваги';
	@override String get description => 'Прогнозована зміна ваги — теоретична оцінка на основі моделі «спожиті калорії проти витрачених». Це лише мотиваційний орієнтир, а не передбачення вашої фактичної ваги.';
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
	@override String get description => 'Ці показники допомагають зрозуміти енергетичні потреби організму та формують ваші харчові цілі.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrUk bmr = _TranslationsDisclaimerHealthMetricsBmrUk._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeUk tdee = _TranslationsDisclaimerHealthMetricsTdeeUk._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalUk dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalUk._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureUk implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оцінка витрати калорій';
	@override String get description => 'Коли дані Health Connect недоступні, ми оцінюємо сьогоднішні витрати калорій, використовуючи ваш базовий обмін (BMR) і рівень активності (TDEE), масштабуючи їх на частину дня, що минула.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedUk howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedUk._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUk professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUk._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionUk implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Розумне розпізнавання їжі';
	@override String get description => 'Зробіть фото — ШІ розпізнає вашу страву';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisUk implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Аналіз ШІ';
	@override String get description => 'Миттєві дані про харчову цінність з ваших описів';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationUk implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Інтеграція зі здоров\'ям';
	@override String get description => 'Підключіться до Health Connect для кращих інсайтів';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesUk implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Недостатня вага';
	@override String get healthyWeight => 'Нормальна вага';
	@override String get overweight => 'Надмірна вага';
	@override String get obese => 'Ожиріння';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesUk implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Ми допоможемо скласти здоровий план, щоб досягти збалансованої ваги з поживними стравами.';
	@override String get healthy => 'Чудова робота! Ви в здоровому діапазоні. Ми допоможемо підтримувати енергійність і життєвий тонус.';
	@override String overweight({required Object appLabel}) => '${appLabel} спростить ваш шлях: відстеження на базі ШІ допоможе комфортно досягти мети.';
	@override String get obese => 'Ми поруч, аби підтримати вас персональними порадами та сталими стратегіями для ваших цілей здоров\'я.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingUk implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Автоматичне відстеження калорій';
	@override String get description => 'Відстежуйте спалені калорії з ваших фітнес-додатків';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsUk implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Інсайти про прогрес';
	@override String get description => 'Отримуйте детальні інсайти щодо тенденцій вашого здоров’я';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationUk implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Безшовна інтеграція';
	@override String get description => 'Синхронізуйте дані з улюблених додатків про здоров’я';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessUk implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ви не самі';
	@override String get genericMessage => 'Дослідження показують, що послідовне відстеження — №1 предиктор довгострокового успіху.';
	@override String personalizedMessage({required Object gender, required Object age, required Object goal}) => 'Для ${gender} віком ${age} років із метою ${goal} послідовність у відстеженні — головний предиктор успіху.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} робить це у 10 разів простіше, ніж вручну.';
	@override String get getStartedTitle => 'Готові розпочати?';
	@override String get tipPhoto => 'Фотографуйте свої страви для миттєвого аналізу';
	@override String get tipConsistency => 'Фіксуйте регулярно, щоб бачити відчутний прогрес';
	@override String get tipProgress => 'Щодня відстежуйте прогрес — це мотивує';
	@override String get button => 'Вперед';
	@override String get defaultGender => 'людина';
	@override String get defaultGoal => 'здоровішу версію себе';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileUk implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваш профіль здоровʼя';
	@override String bmiDescription({required Object bmi}) => 'Виходячи з ваших параметрів, ваш ІМТ: ${bmi}.';
	@override String get finalizeDescription => 'Завершімо налаштування профілю, щоб персоналізувати ваш досвід.';
	@override String get goalGain => 'набирати';
	@override String get goalLose => 'знижувати';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Щоб досягти мети, вам потрібно ${direction} на ${diff} ${unit}.';
	@override String get goalReached => 'Ви на цільовій вазі! Ми допоможемо її підтримувати.';
	@override String get button => 'Вперед';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleUk implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Чудовий старт!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Ви зробили перший крок до ${goalText}. Оскільки ви ${activityText}, ${appLabel} скоригує цілі під ваш стиль життя.';
	@override String get personalizedTargets => 'Персоналізовані калорійні цілі';
	@override String get aiMealDetection => 'Визначення страв за допомогою ШІ';
	@override String get macroBreakdowns => 'Детальний розподіл макроелементів';
	@override String get button => 'Вперед';
	@override String get defaultGoal => 'ваших цілей';
	@override String get defaultActivity => 'активні';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightUk implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Схуднути';
	@override String get description => 'Створити дефіцит калорій для зниження ваги';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightUk implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Підтримувати вагу';
	@override String get description => 'Підтримувати вашу поточну вагу';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightUk implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Набрати вагу';
	@override String get description => 'Створити профіцит калорій для набору ваги';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryUk implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Малорухливий(а)';
	@override String get description => 'Мало або відсутність вправ';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveUk implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Невисока активність';
	@override String get description => 'Легкі вправи 1–3 дні/тиждень';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveUk implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Помірна активність';
	@override String get description => 'Помірні вправи 3–5 днів/тиждень';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveUk implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Висока активність';
	@override String get description => 'Інтенсивні вправи 6–7 днів/тиждень';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveUk implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get name => 'Дуже висока активність';
	@override String get description => 'Дуже інтенсивні вправи, фізична робота';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableUk implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect недоступний';
	@override String get description => 'Health Connect недоступний на цьому пристрої. Встановіть Health Connect з Play Store (Android 9+) або оновіть до Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsUk implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Дозволи';
	@override String get description => 'Для інтеграції з Health Connect потрібні такі дозволи:';
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
	@override String content({required Object appLabel}) => '${appLabel} народився з простої фрустрації: більшість додатків для підрахунку калорій або надто складні, або вимагають постійного ручного введення, коштують дорого за підписку чи нехтують приватністю.\n\nЯк сольний розробник, я хотів створити щось простіше й чесніше — додаток, який завдяки ШІ зменшує зусилля, залишається швидким і безкоштовним та поважає ваші дані про здоров’я.\n\n${appLabel} — це додаток, якого мені бракувало: без акаунтів, без стеження, без реклами — лише чіткі, практичні інсайти та ваші цілі щодо здоров’я.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyUk implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваша приватність має значення';
	@override String get description => 'Приватність — не другорядна річ, а принцип дизайну. Ось що це означає на практиці:';
	@override String get noAccounts => 'Без облікових записів\nКористуйтеся додатком одразу. Жодних реєстрацій, жодних ідентифікацій.';
	@override String noTracking({required Object appLabel}) => 'Без поведінкового стеження\n${appLabel} не відстежує вашу активність, не створює профілі використання та не стежить за вами в інших додатках або на сайтах.';
	@override String noAds({required Object appLabel}) => 'Без реклами за задумом\n${appLabel} створено так, щоб працювати без реклами та монетизації на основі даних.';
	@override String get noDataSelling => 'Без продажу даних\nВаші дані про здоров’я ніколи не продаються та не передаються третім сторонам.';
	@override String get localStorage => 'Локальне зберігання насамперед\nВаші дані залишаються на вашому пристрої.';
	@override String get privacyPolicy => 'Політика конфіденційності';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperUk implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Створено сольним розробником';
	@override String description({required Object appLabel}) => '${appLabel} створює та підтримує один розробник, зосереджений на спокійному, приватному софті для здоров’я.\n\nВідгуки читаються особисто й допомагають формувати розвиток додатка.';
	@override String get website => 'Вебсайт';
	@override String get email => 'Ел. пошта';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackUk implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Подобається ${appLabel}?';
	@override String description({required Object appLabel}) => 'Ваш відгук допомагає робити ${appLabel} кращим для всіх.';
	@override String get rateApp => 'Оцініть у Play Store';
	@override String get sendFeedback => 'Надіслати відгук';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeUk implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Розмір порції';
	@override String get description => 'Точність оцінок значною мірою залежить від правильного визначення вами розміру порції.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsUk implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Способи приготування';
	@override String description({required Object appLabel}) => 'Способи готування можуть суттєво змінювати харчову цінність. Оцінки ${appLabel} можуть не завжди враховувати ці відмінності.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsUk implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Інгредієнти';
	@override String get description => 'Складні страви з багатьма прихованими інгредієнтами можуть зменшувати точність оцінок.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsUk implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Обмеження бази даних';
	@override String description({required Object appLabel}) => 'База даних ${appLabel} велика, але може не містити кожну страву або її варіації.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyUk implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Точність калорій';
	@override String get description => 'Точність оцінки дорівнює точності ваших записів про спожиті та витрачені калорії. Неточні записи призведуть до неточного прогнозу.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsUk implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Біологічні фактори';
	@override String description({required Object appLabel}) => 'Реальне схуднення/набір залежать від метаболізму, гормонів, сну, стресу, гідратації та інших індивідуальних чинників, які ${appLabel} не вимірює.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightUk implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вода в організмі та коливання';
	@override String get description => 'Нормальна денна вага може суттєво коливатися через затримку води, травлення й час вимірювання. Оцінка цього не враховує.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceUk implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Поради фахівця';
	@override String get description => 'Не використовуйте цю оцінку для медичних рішень. Завжди консультуйтеся з лікарем або дієтологом щодо персонального управління вагою.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrUk implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) — це кількість калорій, які ваше тіло спалює у стані спокою для підтримки базових функцій, як-от дихання і кровообіг. BMR залежить від віку, статі, зросту та ваги. Вищий BMR означає, що тіло природно спалює більше калорій у спокої (часто через більшу м’язову масу, молодший вік або чоловічу стать). Нижчий BMR зазвичай свідчить про меншу м’язову масу, старший вік або жіночу стать.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeUk implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) — це загальна кількість калорій, які ви спалюєте за добу: ваш BMR плюс калорії від фізичної активності та повсякденного руху. TDEE залежить від BMR і рівня активності. Вищий TDEE означає більше спалених калорій загалом (зазвичай через більшу активність або вищий BMR). Нижчий TDEE свідчить про меншу щоденну активність або нижчий BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalUk implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Денна ціль';
	@override String get description => 'Денна ціль — рекомендована денна норма калорій на основі вашого TDEE та мети щодо ваги. Для схуднення споживайте менше калорій, ніж ваш TDEE. Для підтримки ваги — приблизно на рівні TDEE. Для набору ваги — більше, ніж TDEE. Це допомагає змінювати вагу здоровими темпами.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedUk implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Як розраховується оцінка';
	@override String get description => 'Ми обчислюємо ваш TDEE (на основі профілю) і множимо його на частку доби, що минула (години + хвилини) / 24, щоб оцінити вже спалені калорії.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUk implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Поради фахівця';
	@override String get description => 'Не використовуйте цю оцінку для медичних рішень. Завжди консультуйтеся з лікарем або дієтологом щодо персональних порад.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedUk implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Читати загальні спалені калорії';
	@override String get description => 'Дозволяє додатку читати ваші загальні спалені калорії з Health Connect.';
	@override String get usage => 'Цей дозвіл використовується для відображення ваших щоденних витрат калорій у додатку, щоб ви розуміли загальні енергозатрати протягом дня.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadUk implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Читати дані про харчування';
	@override String get description => 'Дозволяє додатку читати харчові дані з Health Connect.';
	@override String get usage => 'Цей дозвіл дозволяє додатку читати інформацію про харчування, яку могли зафіксувати інші додатки, підключені до Health Connect, забезпечуючи повну картину вашого харчування.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteUk implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteUk._(this._root);

	final TranslationsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Записувати дані про харчування';
	@override String get description => 'Дозволяє додатку записувати харчові дані в Health Connect.';
	@override String get usage => 'Цей дозвіл дозволяє синхронізувати ваші зафіксовані прийоми з Health Connect, роблячи дані про харчування доступними для інших додатків здоров’я та фітнесу.';
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
			'errors.rateLimitExceeded' => 'Занадто багато запитів. Будь ласка, зачекайте трохи й спробуйте знову.',
			'errors.networkError' => 'Помилка мережі. Перевірте підключення до інтернету.',
			'errors.unknownError' => 'Щось пішло не так. Спробуйте пізніше.',
			'errors.loadingProfileData' => 'Помилка завантаження даних профілю',
			'errors.somethingWentWrong' => 'Щось пішло не так.',
			'errors.retry' => 'Спробувати знову',
			'onboarding.welcome' => ({required Object appLabel}) => 'Ласкаво просимо до ${appLabel}',
			'onboarding.subtitle' => 'Ваш персональний помічник з харчування на базі ШІ',
			'onboarding.getStarted' => 'Розпочати',
			'onboarding.features.foodRecognition.title' => 'Розумне розпізнавання їжі',
			'onboarding.features.foodRecognition.description' => 'Зробіть фото — ШІ розпізнає вашу страву',
			'onboarding.features.aiAnalysis.title' => 'Аналіз ШІ',
			'onboarding.features.aiAnalysis.description' => 'Миттєві дані про харчову цінність з ваших описів',
			'onboarding.features.healthIntegration.title' => 'Інтеграція зі здоров\'ям',
			'onboarding.features.healthIntegration.description' => 'Підключіться до Health Connect для кращих інсайтів',
			'onboarding.gender.title' => 'Яка ваша стать?',
			'onboarding.gender.description' => 'Стать допомагає точно розрахувати базовий обмін (BMR).',
			'onboarding.gender.next' => 'Далі',
			'onboarding.height.title' => 'Який у вас зріст?',
			'onboarding.height.description' => 'Зріст допомагає точно розрахувати ІМТ і енергетичні потреби.',
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
			'onboarding.age.title' => 'Коли у вас день народження?',
			'onboarding.age.description' => 'Вік допомагає точно розрахувати вашу потребу в калоріях.',
			'onboarding.age.next' => 'Далі',
			'onboarding.bmiScale.underweight' => 'Недовага',
			'onboarding.bmiScale.healthy' => 'Норма',
			'onboarding.bmiScale.overweight' => 'Надмірна',
			'onboarding.bmiScale.obese' => 'Ожиріння',
			'onboarding.bmiScale.categories.underweight' => 'Недостатня вага',
			'onboarding.bmiScale.categories.healthyWeight' => 'Нормальна вага',
			'onboarding.bmiScale.categories.overweight' => 'Надмірна вага',
			'onboarding.bmiScale.categories.obese' => 'Ожиріння',
			'onboarding.bmiScale.messages.underweight' => 'Ми допоможемо скласти здоровий план, щоб досягти збалансованої ваги з поживними стравами.',
			'onboarding.bmiScale.messages.healthy' => 'Чудова робота! Ви в здоровому діапазоні. Ми допоможемо підтримувати енергійність і життєвий тонус.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} спростить ваш шлях: відстеження на базі ШІ допоможе комфортно досягти мети.',
			'onboarding.bmiScale.messages.obese' => 'Ми поруч, аби підтримати вас персональними порадами та сталими стратегіями для ваших цілей здоров\'я.',
			'onboarding.weightGoal.title' => 'Яка ваша мета?',
			'onboarding.weightGoal.description' => 'Оберіть мету, яка найкраще описує бажаний результат',
			'onboarding.activityLevel.title' => 'Наскільки ви активні?',
			'onboarding.activityLevel.description' => 'Це допоможе точніше розрахувати вашу денну потребу в калоріях',
			'onboarding.healthConnect.title' => 'Підключіться до Health Connect',
			'onboarding.healthConnect.description' => 'Синхронізуйте дані про здоров’я для кращих інсайтів і автоматичного підрахунку калорій',
			'onboarding.healthConnect.automaticTracking.title' => 'Автоматичне відстеження калорій',
			'onboarding.healthConnect.automaticTracking.description' => 'Відстежуйте спалені калорії з ваших фітнес-додатків',
			'onboarding.healthConnect.progressInsights.title' => 'Інсайти про прогрес',
			'onboarding.healthConnect.progressInsights.description' => 'Отримуйте детальні інсайти щодо тенденцій вашого здоров’я',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Безшовна інтеграція',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Синхронізуйте дані з улюблених додатків про здоров’я',
			'onboarding.healthConnect.connected' => 'Health Connect підключено',
			'onboarding.healthConnect.notConnected' => 'Health Connect не підключено',
			'onboarding.healthConnect.setup' => 'Налаштувати Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Поки що пропустити',
			'onboarding.healthConnect.statusConnected' => 'Health Connect підключено.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect успішно підключено!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Доступ заборонено. Будь ласка, увімкніть дозволи Health Connect у налаштуваннях телефону для ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Помилка налаштування Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Ви не самі',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Дослідження показують, що послідовне відстеження — №1 предиктор довгострокового успіху.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object gender, required Object age, required Object goal}) => 'Для ${gender} віком ${age} років із метою ${goal} послідовність у відстеженні — головний предиктор успіху.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} робить це у 10 разів простіше, ніж вручну.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Готові розпочати?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Фотографуйте свої страви для миттєвого аналізу',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Фіксуйте регулярно, щоб бачити відчутний прогрес',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Щодня відстежуйте прогрес — це мотивує',
			'onboarding.reinforcement.trackingSuccess.button' => 'Вперед',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'людина',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'здоровішу версію себе',
			'onboarding.reinforcement.healthProfile.title' => 'Ваш профіль здоровʼя',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Виходячи з ваших параметрів, ваш ІМТ: ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Завершімо налаштування профілю, щоб персоналізувати ваш досвід.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'набирати',
			'onboarding.reinforcement.healthProfile.goalLose' => 'знижувати',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Щоб досягти мети, вам потрібно ${direction} на ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Ви на цільовій вазі! Ми допоможемо її підтримувати.',
			'onboarding.reinforcement.healthProfile.button' => 'Вперед',
			'onboarding.reinforcement.goalLifestyle.title' => 'Чудовий старт!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Ви зробили перший крок до ${goalText}. Оскільки ви ${activityText}, ${appLabel} скоригує цілі під ваш стиль життя.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Персоналізовані калорійні цілі',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Визначення страв за допомогою ШІ',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Детальний розподіл макроелементів',
			'onboarding.reinforcement.goalLifestyle.button' => 'Вперед',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'ваших цілей',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'активні',
			'tabs.dashboard' => 'Головна',
			'tabs.history' => 'Історія',
			'home.aiSummary.title' => 'Ваш підсумок від ШІ',
			'home.aiSummary.logMore' => 'Протягом кількох наступних днів фіксуйте більше прийомів їжі, щоб отримати персоналізовані інсайти від ШІ.',
			'home.aiSummary.loading' => 'Завантаження підсумку...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} зафіксованих прийомів їжі',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Оцінка балансу ${score}',
			'home.aiSummary.topFoods' => 'Топ-страви',
			'home.aiSummary.trendUp' => 'Калорії зростають',
			'home.aiSummary.trendDown' => 'Калорії знижуються',
			'home.aiSummary.trendSteady' => 'Калорії стабільні',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Оновлено ${time}',
			'home.dailyGoal.title' => 'Встановіть свою денну ціль',
			'home.dailyGoal.titleSet' => 'Ваша денна ціль',
			'home.dailyGoal.description' => 'Готові вирушити у wellness-подорож? Задайте денну калорійну ціль нижче, щоб розпочати прогрес.',
			'home.dailyGoal.descriptionSet' => 'Ваш компас налаштовано! Це ваша денна калорійна ціль-навігатор.',
			'home.dailyGoal.yourGoal' => 'Ваша ціль',
			'home.dailyGoal.goal' => 'Ціль',
			'home.dailyGoal.dailyCalories' => 'Денні калорії (ккал)',
			'home.dailyGoal.setGoal' => 'Встановити ціль',
			'home.dailyGoal.intake' => 'Спожито',
			'home.dailyGoal.burned' => 'Спалено',
			'home.dailyGoal.weightImpact' => 'Вплив на вагу',
			'home.dailyGoal.estLoss' => 'Оціночна втрата',
			'home.dailyGoal.estGain' => 'Оціночний набір',
			'home.dailyGoal.kcal' => 'ккал',
			'home.dailySummary.title' => 'Щоденний підсумок',
			'home.dailySummary.calories' => 'Калорії',
			'home.dailySummary.carbs' => 'Вуглеводи',
			'home.dailySummary.protein' => 'Білки',
			'home.dailySummary.fat' => 'Жири',
			'home.dailySummary.fiber' => 'Клітковина',
			'home.dailySummary.grams' => 'грамів',
			'home.dailySummary.chartAccessibilityLabel' => 'Діаграма макроелементів',
			'home.intakeProgress.title' => 'Сьогоднішній розподіл макроелементів',
			'home.intakeProgress.target' => 'Ціль',
			'home.intakeProgress.current' => 'Поточний',
			'home.intakeHistory.title' => '7-денна історія макросів',
			'home.intakeHistory.trendTitle' => 'Сьогоднішній тренд',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Пік: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Поки що немає історії',
			'home.intakeHistory.startLogging' => 'Почніть фіксувати прийоми їжі, щоб побачити тут\n7-денні тренди макроелементів',
			'home.mealLog.title' => 'Зафіксовані прийоми',
			'home.mealLog.emptyMessage' => 'Зробіть фото свого останнього прийому їжі, щоб додати його сюди.',
			'home.mealLog.noMealsToday' => 'Сьогодні прийомів їжі не зафіксовано',
			'home.mealLog.seeAllMeals' => 'Переглянути всі прийоми їжі',
			'home.mealDescription.title' => 'Швидке додавання за допомогою ШІ',
			'home.mealDescription.description' => 'Опишіть свою страву — ШІ подбає про деталі.',
			'home.mealDescription.hint' => 'наприклад: на сніданок я з’їв(ла) велику миску вівсянки з бананом і порцією сироваткового протеїну ...',
			'home.mealDescription.analyzeMeal' => 'Проаналізувати прийом',
			'home.favoriteMeals.title' => 'Обрані страви',
			'home.favoriteMeals.description' => 'Швидко додайте одну з улюблених страв.',
			'home.favoriteMeals.noFavorites' => 'Поки що немає обраних страв.',
			'home.favoriteMeals.addFavoriteHint' => 'Натисніть зірочку на страві, щоб позначити її як обрану.',
			'home.favoriteMeals.seeAll' => 'Переглянути всі',
			'home.favoriteMeals.add' => 'Додати',
			'home.mealSnap.title' => 'Знімайте й відстежуйте свій прийом',
			'home.mealSnap.description' => 'Скористайтеся камерою, щоб сфотографувати їжу для аналізу ШІ.',
			'home.mealSnap.openCamera' => 'Відкрити камеру',
			'home.mealSnap.gallery' => 'Галерея',
			'home.mealSnap.compressingPhoto' => 'Оптимізація фото…',
			'home.mealSnap.uploadingPhoto' => 'Завантаження фото…',
			'home.connectHealth.title' => 'Синхронізація з Health Connect',
			'home.connectHealth.description' => 'Синхронізуйте харчові дані з Health Connect',
			'home.connectHealth.install' => 'Встановити',
			'home.connectHealth.connect' => 'Підключити',
			'history.noMeals' => 'Немає зафіксованих прийомів їжі',
			'history.emptyMessage' => 'Зробіть фото свого останнього прийому їжі, щоб додати його сюди.',
			'history.today' => 'Сьогодні',
			'history.yesterday' => 'Вчора',
			'meal.ohNo' => 'Ой!',
			'meal.delete' => 'Видалити',
			'meal.editMeal' => 'Редагувати прийом',
			'meal.addMeal' => 'Додати прийом',
			'meal.saveMeal' => 'Зберегти прийом',
			'meal.save' => 'Зберегти',
			'meal.mealName' => 'Назва страви',
			'meal.mealNameHint' => 'напр., яєшня зі скибочкою тосту',
			'meal.mealQuantity' => 'Кількість/порція',
			'meal.mealQuantityHint' => 'напр., 1 миска, 2 скибочки',
			'meal.timeOfMeal' => 'Час прийому їжі',
			'meal.timeOfMealHint' => 'Виберіть час, коли ви їли',
			'meal.mealType' => 'Тип прийому їжі',
			'meal.nutrition.calories' => 'Калорії',
			'meal.nutrition.carbs' => 'Вуглеводи (г)',
			'meal.nutrition.protein' => 'Білки (г)',
			'meal.nutrition.fat' => 'Жири (г)',
			'meal.nutrition.fiber' => 'Клітковина (г)',
			'meal.deleteConfirmation.title' => 'Видалити прийом?',
			'meal.deleteConfirmation.message' => 'Ви впевнені, що хочете видалити цей запис прийому їжі?',
			'meal.deleteConfirmation.cancel' => 'Скасувати',
			'meal.deleteConfirmation.delete' => 'Видалити',
			'meal.addedToLog' => 'Прийом їжі додано до вашого журналу!',
			'meal.couldNotAdd' => ({required Object error}) => 'Не вдалося додати прийом: ${error}',
			'meal.savedSuccessfully' => 'Прийом успішно додано!',
			'meal.updatedSuccessfully' => 'Прийом успішно оновлено!',
			'meal.errorSaving' => ({required Object error}) => 'Помилка збереження прийому: ${error}',
			'meal.removedFromFavorites' => 'Видалено з обраного!',
			'meal.savedAsFavorite' => 'Прийом збережено в обране!',
			'meal.unfavorite' => 'Прибрати з обраного',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Не вдалося оновити обране: ${error}',
			'meal.feedbackThanks' => 'Дякуємо за відгук!',
			'meal.reanalysisUpdated' => 'Оновлено аналіз прийому на основі вашого відгуку.',
			'meal.failedToProcess' => ({required Object error}) => 'Не вдалося обробити: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Не вдалося обробити зображення: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Помилка оптимізації зображення: ${error}',
			'meal.failedToSave' => 'Не вдалося зберегти дані. Спробуйте ще раз.',
			'meal.skip' => 'Пропустити',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Питання ${current} із ${total}',
			'meal.variation.noVariationsAvailable' => 'Варіацій немає',
			'meal.analysis.title' => 'Аналіз прийому їжі ШІ',
			'meal.analysis.reassurance' => 'Зазвичай це займає кілька секунд.',
			'meal.analysis.stepStarted' => 'Починаємо…',
			'meal.analysis.stepDecomposition' => 'Розуміємо ваш прийом…',
			'meal.analysis.stepIngredients' => 'Зіставляємо інгредієнти з базою харчової цінності…',
			'meal.analysis.stepUncertainty' => 'Перевіряємо впевненість…',
			'meal.analysis.stepMealTypeQuestion' => 'Майже готово…',
			'meal.analysis.stepResult' => 'Фіналізуємо результат…',
			'meal.analysis.stepError' => 'Щось пішло не так',
			'meal.analysis.stepDefault' => 'Аналізуємо ваш прийом…',
			'meal.analysis.progressUnderstand' => 'Аналіз',
			'meal.analysis.progressMatch' => 'Відповідність',
			'meal.analysis.progressCheck' => 'Перевірка',
			'meal.analysis.progressFinish' => 'Завершення',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'Виявлено інгредієнтів: ${count}',
			'meal.analysis.ingredientsPending' => 'Сканування інгредієнтів…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'Що виглядає неправильно?',
			'meal.feedback.subtitle' => 'Допоможіть нам покращити аналіз, обравши одну або кілька проблем.',
			'meal.feedback.tellUsMore' => 'Розкажіть більше',
			'meal.feedback.describeIncorrect' => 'Опишіть, що було неправильно',
			'meal.feedback.submit' => 'Надіслати',
			'meal.feedback.issueFoodIdentification' => 'Розпізнавання їжі',
			'meal.feedback.issuePortionSize' => 'Розмір порції',
			'meal.feedback.issueCalorieDistribution' => 'Розподіл калорій',
			'meal.feedback.issueMacrosWrong' => 'Макроелементи неправильні',
			'meal.feedback.issueMissingItems' => 'Відсутні елементи',
			'meal.feedback.issueExtraItems' => 'Зайві елементи',
			'meal.feedback.issueOther' => 'Інше',
			'favorites.title' => 'Обране',
			'favorites.empty' => 'Поки що немає обраних страв.',
			'favorites.searchPlaceholder' => 'Пошук в обраному',
			'favorites.searchEmptyTitle' => 'Немає відповідних обраних',
			'favorites.searchEmptySubtitle' => 'Спробуйте іншу назву страви, кількість або тип прийому.',
			'favorites.sortLabel' => 'Сортувати обране',
			'favorites.undo' => 'Скасувати',
			'favorites.removed' => ({required Object name}) => 'Видалено ${name} з обраного',
			'favorites.sortOptions.recent' => 'Нещодавні',
			'favorites.sortOptions.calories' => 'Калорії',
			'favorites.sortOptions.alphabetical' => 'А-Я',
			'profile.title' => 'Профіль',
			'profile.noProfileData' => 'Дані профілю не знайдені',
			'profile.yourProfile' => 'Ваш профіль',
			'profile.viewAndManage' => 'Переглядайте й керуйте інформацією про здоров’я',
			'profile.sections.profile' => 'ПРОФІЛЬ',
			'profile.sections.basicInformation' => 'ОСНОВНА ІНФОРМАЦІЯ',
			'profile.sections.goalsAndActivity' => 'ЦІЛІ ТА АКТИВНІСТЬ',
			'profile.sections.calculatedValues' => 'РОЗРАХОВАНІ ЗНАЧЕННЯ',
			'profile.gender' => 'Стать',
			'profile.height' => 'Зріст',
			'profile.weight' => 'Вага',
			'profile.age' => 'Вік',
			'profile.weightGoal' => 'Мета щодо ваги',
			'profile.targetWeight' => 'Цільова вага',
			'profile.activityLevel' => 'Рівень активності',
			'profile.healthMetrics' => 'Показники здоров’я',
			'profile.notSet' => 'Не встановлено',
			'profile.years' => 'років',
			'profile.updatedSuccessfully' => 'Профіль успішно оновлено!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Денна ціль',
			'profile.calculatedValues.calPerDay' => 'ккал/день',
			'profile.calculatedValues.notAvailable' => 'Н/Д',
			'healthScore.title' => 'Оцінка здоровʼя',
			'healthScore.whyThisScore' => 'Чому така оцінка?',
			'healthScore.note' => 'Ця оцінка — орієнтовна оцінка ШІ на основі визначених інгредієнтів і поживної щільності. Завжди консультуйтеся з фахівцем щодо харчування.',
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
			'editProfile.weightGoal' => 'Мета щодо ваги',
			'editProfile.activityLevel' => 'Рівень активності',
			'editProfile.metric' => 'Метрична',
			'editProfile.imperial' => 'Імперська',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Метрична (cm)',
			'editProfile.imperialFtIn' => 'Імперська (ft/in)',
			'editProfile.metricKg' => 'Метрична (kg)',
			'editProfile.imperialLbs' => 'Імперська (lbs)',
			'editProfile.genders.male' => 'Чоловіча',
			'editProfile.genders.female' => 'Жіноча',
			'editProfile.genders.other' => 'Інше',
			'editProfile.weightGoals.loseWeight.name' => 'Схуднути',
			'editProfile.weightGoals.loseWeight.description' => 'Створити дефіцит калорій для зниження ваги',
			'editProfile.weightGoals.maintainWeight.name' => 'Підтримувати вагу',
			'editProfile.weightGoals.maintainWeight.description' => 'Підтримувати вашу поточну вагу',
			'editProfile.weightGoals.gainWeight.name' => 'Набрати вагу',
			'editProfile.weightGoals.gainWeight.description' => 'Створити профіцит калорій для набору ваги',
			'editProfile.activityLevels.sedentary.name' => 'Малорухливий(а)',
			'editProfile.activityLevels.sedentary.description' => 'Мало або відсутність вправ',
			'editProfile.activityLevels.lightlyActive.name' => 'Невисока активність',
			'editProfile.activityLevels.lightlyActive.description' => 'Легкі вправи 1–3 дні/тиждень',
			'editProfile.activityLevels.moderatelyActive.name' => 'Помірна активність',
			'editProfile.activityLevels.moderatelyActive.description' => 'Помірні вправи 3–5 днів/тиждень',
			'editProfile.activityLevels.veryActive.name' => 'Висока активність',
			'editProfile.activityLevels.veryActive.description' => 'Інтенсивні вправи 6–7 днів/тиждень',
			'editProfile.activityLevels.extremelyActive.name' => 'Дуже висока активність',
			'editProfile.activityLevels.extremelyActive.description' => 'Дуже інтенсивні вправи, фізична робота',
			'settings.title' => 'Налаштування',
			'settings.sections.profile' => 'ПРОФІЛЬ',
			'settings.sections.localization' => 'ЛОКАЛІЗАЦІЯ',
			'settings.sections.notifications' => 'СПОВІЩЕННЯ',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'ПІДТРИМКА ТА ПРАВО',
			'settings.sections.about' => 'ПРО ДОДАТОК',
			'settings.sections.dangerZone' => 'НЕБЕЗПЕЧНА ЗОНА',
			'settings.sections.developer' => 'РОЗРОБНИК',
			'settings.editProfile.title' => 'Редагувати профіль',
			'settings.editProfile.subtitle' => 'Оновіть свою особисту інформацію',
			'settings.language.title' => 'Мова',
			'settings.language.subtitle' => 'Оберіть бажану мову',
			'settings.language.searchHint' => 'Пошук мов...',
			'settings.language.noResults' => 'Нічого не знайдено',
			'settings.heightUnit.title' => 'Одиниця зросту',
			'settings.weightUnit.title' => 'Одиниця ваги',
			'settings.mealReminders.title' => 'Нагадування про прийоми їжі',
			'settings.mealReminders.subtitle' => 'Будьте на шляху завдяки вчасним сповіщенням',
			'settings.theme.title' => 'Тема',
			'settings.theme.light' => 'Світла',
			'settings.theme.dark' => 'Темна',
			'settings.theme.system' => 'Системна',
			'settings.sendFeedback.title' => 'Надіслати відгук',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Допоможіть нам покращити ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Відгук про ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Будь ласка, залиште свій відгук нижче:',
			'settings.sendFeedback.appVersion' => 'Версія додатка',
			'settings.sendFeedback.device' => 'Пристрій',
			'settings.sendFeedback.osVersion' => 'Версія ОС',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Експорт історії прийомів',
			'settings.exportMealHistory.subtitle' => 'Поділіться CSV-файлом ваших зафіксованих прийомів їжі',
			'settings.exportMealHistory.shareText' => 'Експорт історії ваших прийомів їжі Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Не вдалося експортувати історію прийомів їжі: ${error}',
			'settings.clearAllData.title' => 'Очистити всі дані',
			'settings.clearAllData.subtitle' => 'Безповоротно видалити всю вашу інформацію',
			'settings.clearAllData.confirmationTitle' => 'Очистити всі дані?',
			'settings.clearAllData.confirmationMessage' => 'Цю дію не можна скасувати. Усі ваші зафіксовані прийоми, обране та налаштування профілю буде назавжди видалено.',
			'settings.clearAllData.cancel' => 'Скасувати',
			'settings.clearAllData.clearEverything' => 'Видалити все',
			'settings.debugOptions.title' => 'Параметри налагодження',
			'settings.developerModeEnabled' => 'Режим розробника увімкнено!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Перегляд і керування дозволами',
			'settings.healthConnect.unavailable.title' => 'Health Connect недоступний',
			'settings.healthConnect.unavailable.description' => 'Health Connect недоступний на цьому пристрої. Встановіть Health Connect з Play Store (Android 9+) або оновіть до Android 14+.',
			'settings.healthConnect.permissions.title' => 'Дозволи',
			'settings.healthConnect.permissions.description' => 'Для інтеграції з Health Connect потрібні такі дозволи:',
			'settings.healthConnect.permissions.granted' => 'Надано',
			'settings.healthConnect.permissions.notGranted' => 'Не надано',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Читати загальні спалені калорії',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Дозволяє додатку читати ваші загальні спалені калорії з Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Цей дозвіл використовується для відображення ваших щоденних витрат калорій у додатку, щоб ви розуміли загальні енергозатрати протягом дня.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Читати дані про харчування',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Дозволяє додатку читати харчові дані з Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Цей дозвіл дозволяє додатку читати інформацію про харчування, яку могли зафіксувати інші додатки, підключені до Health Connect, забезпечуючи повну картину вашого харчування.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Записувати дані про харчування',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Дозволяє додатку записувати харчові дані в Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Цей дозвіл дозволяє синхронізувати ваші зафіксовані прийоми з Health Connect, роблячи дані про харчування доступними для інших додатків здоров’я та фітнесу.',
			'settings.healthConnect.managePermissions' => 'Керувати дозволами',
			'settings.healthConnect.openSettings' => 'Відкрити налаштування Health Connect',
			'settings.healthConnect.requestPermissions' => 'Запросити дозволи',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Запит на дозволи було скасовано або не вдався. Спробуйте знову або надайте дозволи вручну в налаштуваннях Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Не вдалося запросити дозволи. Спробуйте знову або надайте дозволи вручну в налаштуваннях Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Запит...',
			'settings.about.title' => 'Про додаток',
			'settings.about.tagline' => 'Швидкий, безкоштовний і з пріоритетом приватності контроль калорій',
			'settings.about.ourStory.title' => 'Наша історія',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} народився з простої фрустрації: більшість додатків для підрахунку калорій або надто складні, або вимагають постійного ручного введення, коштують дорого за підписку чи нехтують приватністю.\n\nЯк сольний розробник, я хотів створити щось простіше й чесніше — додаток, який завдяки ШІ зменшує зусилля, залишається швидким і безкоштовним та поважає ваші дані про здоров’я.\n\n${appLabel} — це додаток, якого мені бракувало: без акаунтів, без стеження, без реклами — лише чіткі, практичні інсайти та ваші цілі щодо здоров’я.',
			'settings.about.privacy.title' => 'Ваша приватність має значення',
			'settings.about.privacy.description' => 'Приватність — не другорядна річ, а принцип дизайну. Ось що це означає на практиці:',
			'settings.about.privacy.noAccounts' => 'Без облікових записів\nКористуйтеся додатком одразу. Жодних реєстрацій, жодних ідентифікацій.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Без поведінкового стеження\n${appLabel} не відстежує вашу активність, не створює профілі використання та не стежить за вами в інших додатках або на сайтах.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Без реклами за задумом\n${appLabel} створено так, щоб працювати без реклами та монетизації на основі даних.',
			'settings.about.privacy.noDataSelling' => 'Без продажу даних\nВаші дані про здоров’я ніколи не продаються та не передаються третім сторонам.',
			'settings.about.privacy.localStorage' => 'Локальне зберігання насамперед\nВаші дані залишаються на вашому пристрої.',
			'settings.about.privacy.privacyPolicy' => 'Політика конфіденційності',
			'settings.about.developer.title' => 'Створено сольним розробником',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} створює та підтримує один розробник, зосереджений на спокійному, приватному софті для здоров’я.\n\nВідгуки читаються особисто й допомагають формувати розвиток додатка.',
			'settings.about.developer.website' => 'Вебсайт',
			'settings.about.developer.email' => 'Ел. пошта',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Подобається ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Ваш відгук допомагає робити ${appLabel} кращим для всіх.',
			'settings.about.feedback.rateApp' => 'Оцініть у Play Store',
			'settings.about.feedback.sendFeedback' => 'Надіслати відгук',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Збірка ${buildNumber}',
			'reminders.title' => 'Залишайтеся на шляху з нагадуваннями',
			'reminders.description' => 'Отримуйте делікатні нагадування фіксувати прийоми й бути послідовними у харчуванні',
			'reminders.notificationsEnabled' => 'Сповіщення увімкнено',
			'reminders.notificationsDisabled' => 'Сповіщення вимкнено',
			'reminders.enabledSubtitle' => 'Ви отримуватимете нагадування про прийоми їжі',
			'reminders.disabledSubtitle' => 'Увімкніть сповіщення, щоб отримувати нагадування про прийоми їжі',
			'reminders.mealReminders' => 'Нагадування про прийоми їжі',
			'reminders.breakfast' => 'Сніданок',
			'reminders.lunch' => 'Обід',
			'reminders.dinner' => 'Вечеря',
			'reminders.snack' => 'Перекус',
			'reminders.unknown' => 'Невідомо',
			'reminders.change' => 'Змінити',
			'reminders.enableNotifications' => 'Увімкнути сповіщення',
			'reminders.skipForNow' => 'Поки що пропустити',
			'reminders.saveChanges' => 'Зберегти зміни',
			'reminders.enabledSuccessfully' => 'Сповіщення успішно увімкнено!',
			'reminders.permissionDenied' => 'Доступ до сповіщень заборонено',
			'reminders.errorEnabling' => ({required Object error}) => 'Помилка під час увімкнення сповіщень: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Помилка під час завершення налаштування: ${error}',
			'notifications.breakfast.title' => 'Час сніданку! 🍳',
			'notifications.breakfast.body' => 'Не забудьте зафіксувати свій сніданок',
			'notifications.lunch.title' => 'Час обіду! 🥗',
			'notifications.lunch.body' => 'Пора зафіксувати свій обід',
			'notifications.dinner.title' => 'Час вечері! 🍽️',
			'notifications.dinner.body' => 'Не забудьте зафіксувати свою вечерю',
			'notifications.snack.title' => 'Час перекусу! 🍎',
			'notifications.snack.body' => 'Час для корисного перекусу',
			'notifications.test.title' => 'Тестове сповіщення',
			'login.title' => 'Вхід',
			'login.signInWithGoogle' => 'Увійти через Google',
			'login.signInFailed' => 'Вхід через Google не вдався або був скасований.',
			'disclaimer.pleaseNote' => 'Зверніть увагу',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} надає орієнтовну інформацію про харчову цінність. Точність залежить від ваших даних і варіацій страв. Використовуйте як підказку, а не остаточне джерело. Для персональних порад звертайтеся до фахівця.',
			'disclaimer.snap.portionSize.title' => 'Розмір порції',
			'disclaimer.snap.portionSize.description' => 'Точність оцінок значною мірою залежить від правильного визначення вами розміру порції.',
			'disclaimer.snap.preparationMethods.title' => 'Способи приготування',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Способи готування можуть суттєво змінювати харчову цінність. Оцінки ${appLabel} можуть не завжди враховувати ці відмінності.',
			'disclaimer.snap.ingredients.title' => 'Інгредієнти',
			'disclaimer.snap.ingredients.description' => 'Складні страви з багатьма прихованими інгредієнтами можуть зменшувати точність оцінок.',
			'disclaimer.snap.databaseLimitations.title' => 'Обмеження бази даних',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'База даних ${appLabel} велика, але може не містити кожну страву або її варіації.',
			'disclaimer.weightEstimate.title' => 'Про оцінку зміни ваги',
			'disclaimer.weightEstimate.description' => 'Прогнозована зміна ваги — теоретична оцінка на основі моделі «спожиті калорії проти витрачених». Це лише мотиваційний орієнтир, а не передбачення вашої фактичної ваги.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Точність калорій',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Точність оцінки дорівнює точності ваших записів про спожиті та витрачені калорії. Неточні записи призведуть до неточного прогнозу.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Біологічні фактори',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Реальне схуднення/набір залежать від метаболізму, гормонів, сну, стресу, гідратації та інших індивідуальних чинників, які ${appLabel} не вимірює.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Вода в організмі та коливання',
			'disclaimer.weightEstimate.waterWeight.description' => 'Нормальна денна вага може суттєво коливатися через затримку води, травлення й час вимірювання. Оцінка цього не враховує.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Поради фахівця',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Не використовуйте цю оцінку для медичних рішень. Завжди консультуйтеся з лікарем або дієтологом щодо персонального управління вагою.',
			'disclaimer.healthMetrics.description' => 'Ці показники допомагають зрозуміти енергетичні потреби організму та формують ваші харчові цілі.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) — це кількість калорій, які ваше тіло спалює у стані спокою для підтримки базових функцій, як-от дихання і кровообіг. BMR залежить від віку, статі, зросту та ваги. Вищий BMR означає, що тіло природно спалює більше калорій у спокої (часто через більшу м’язову масу, молодший вік або чоловічу стать). Нижчий BMR зазвичай свідчить про меншу м’язову масу, старший вік або жіночу стать.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) — це загальна кількість калорій, які ви спалюєте за добу: ваш BMR плюс калорії від фізичної активності та повсякденного руху. TDEE залежить від BMR і рівня активності. Вищий TDEE означає більше спалених калорій загалом (зазвичай через більшу активність або вищий BMR). Нижчий TDEE свідчить про меншу щоденну активність або нижчий BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Денна ціль',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Денна ціль — рекомендована денна норма калорій на основі вашого TDEE та мети щодо ваги. Для схуднення споживайте менше калорій, ніж ваш TDEE. Для підтримки ваги — приблизно на рівні TDEE. Для набору ваги — більше, ніж TDEE. Це допомагає змінювати вагу здоровими темпами.',
			'disclaimer.calorieExpenditure.title' => 'Оцінка витрати калорій',
			'disclaimer.calorieExpenditure.description' => 'Коли дані Health Connect недоступні, ми оцінюємо сьогоднішні витрати калорій, використовуючи ваш базовий обмін (BMR) і рівень активності (TDEE), масштабуючи їх на частину дня, що минула.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Як розраховується оцінка',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Ми обчислюємо ваш TDEE (на основі профілю) і множимо його на частку доби, що минула (години + хвилини) / 24, щоб оцінити вже спалені калорії.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Поради фахівця',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Не використовуйте цю оцінку для медичних рішень. Завжди консультуйтеся з лікарем або дієтологом щодо персональних порад.',
			'common.close' => 'Закрити',
			'common.kContinue' => 'Продовжити',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Подобається ${appLabel}?',
			'feedbackRating.yes' => 'Так, мені подобається',
			'feedbackRating.no' => 'Не дуже',
			'feedbackRating.rateStepHeading' => 'Оцініть у Play Store',
			'feedbackRating.emailStepHeading' => 'Надішліть відгук на ел. пошту',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Швидка оцінка допоможе іншим знайти ${appLabel} і підтримає подальшу розробку. Виділите хвильку, щоб залишити її?',
			'feedbackRating.shareFeedbackViaEmail' => 'Ваш відгук формує майбутні оновлення — ми читаємо кожне повідомлення. Хочете поділитися думками електронною поштою?',
			'feedbackRating.rateCta' => 'Оцінити в Play Store',
			'feedbackRating.maybeLater' => 'Можливо пізніше',
			'feedbackRating.sendFeedback' => 'Надіслати відгук',
			'feedbackRating.noThanks' => 'Ні, дякую',
			'feedbackRating.aboutUsDescription' => 'Створено з турботою невеликою командою. Ми зосереджені на приватності, простоті та допомозі у формуванні корисних харчових звичок.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Цікаво, хто стоїть за ${appLabel}? Перегляньте ',
			'feedbackRating.aboutUsLinkLabel' => 'Про нас',
			'feedbackRating.thankYouMessage' => 'Дякуємо! Запитаємо іншим разом.',
			'health.syncFailed' => 'Не вдалося синхронізувати з Health Connect',
			'health.mealSynced' => 'Прийом їжі синхронізовано з Health Connect',
			_ => null,
		};
	}
}
