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
	@override late final _TranslationsErrorsRu errors = _TranslationsErrorsRu._(_root);
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
	@override late final _TranslationsFeedbackRatingRu feedbackRating = _TranslationsFeedbackRatingRu._(_root);
	@override late final _TranslationsHealthRu health = _TranslationsHealthRu._(_root);
}

// Path: errors
class _TranslationsErrorsRu implements TranslationsErrorsEn {
	_TranslationsErrorsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Слишком много запросов. Пожалуйста, подождите немного и попробуйте снова.';
	@override String get networkError => 'Ошибка сети. Проверьте подключение к интернету.';
	@override String get unknownError => 'Что-то пошло не так. Пожалуйста, попробуйте позже.';
	@override String get loadingProfileData => 'Ошибка загрузки данных профиля';
	@override String get somethingWentWrong => 'Что-то пошло не так.';
	@override String get retry => 'Повторить';
}

// Path: onboarding
class _TranslationsOnboardingRu implements TranslationsOnboardingEn {
	_TranslationsOnboardingRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Добро пожаловать в ${appLabel}';
	@override String get subtitle => 'Ваш персональный помощник по питанию на базе ИИ';
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
	@override String get dashboard => 'Главная';
	@override String get history => 'История';
}

// Path: home
class _TranslationsHomeRu implements TranslationsHomeEn {
	_TranslationsHomeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryRu aiSummary = _TranslationsHomeAiSummaryRu._(_root);
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
	@override String get noMeals => 'Нет записей о приёмах пищи';
	@override String get emptyMessage => 'Сфотографируйте своё последнее блюдо, чтобы добавить его сюда.';
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
	@override String get mealName => 'Название блюда';
	@override String get mealNameHint => 'например: Яичница с тостом';
	@override String get mealQuantity => 'Количество';
	@override String get mealQuantityHint => 'например: 1 миска, 2 ломтика';
	@override String get timeOfMeal => 'Время приёма пищи';
	@override String get timeOfMealHint => 'Укажите время, когда вы ели';
	@override String get mealType => 'Тип приёма пищи';
	@override late final _TranslationsMealNutritionRu nutrition = _TranslationsMealNutritionRu._(_root);
	@override late final _TranslationsMealDeleteConfirmationRu deleteConfirmation = _TranslationsMealDeleteConfirmationRu._(_root);
	@override String get addedToLog => 'Блюдо добавлено в ваш журнал!';
	@override String couldNotAdd({required Object error}) => 'Не удалось добавить блюдо: ${error}';
	@override String get savedSuccessfully => 'Блюдо успешно добавлено!';
	@override String get updatedSuccessfully => 'Блюдо успешно обновлено!';
	@override String errorSaving({required Object error}) => 'Ошибка сохранения блюда: ${error}';
	@override String get removedFromFavorites => 'Удалено из избранного!';
	@override String get savedAsFavorite => 'Блюдо сохранено в избранное!';
	@override String get unfavorite => 'Убрать из избранного';
	@override String couldNotUpdateFavorite({required Object error}) => 'Не удалось обновить избранное: ${error}';
	@override String get feedbackThanks => 'Спасибо за отзыв!';
	@override String get reanalysisUpdated => 'Обновили анализ блюда на основе вашего отзыва.';
	@override String failedToProcess({required Object error}) => 'Не удалось обработать: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Не удалось обработать изображение: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Ошибка сжатия изображения: ${error}';
	@override String get failedToSave => 'Не удалось сохранить данные. Пожалуйста, попробуйте снова.';
	@override String get skip => 'Пропустить';
	@override late final _TranslationsMealVariationRu variation = _TranslationsMealVariationRu._(_root);
	@override late final _TranslationsMealAnalysisRu analysis = _TranslationsMealAnalysisRu._(_root);
	@override late final _TranslationsMealFeedbackRu feedback = _TranslationsMealFeedbackRu._(_root);
}

// Path: favorites
class _TranslationsFavoritesRu implements TranslationsFavoritesEn {
	_TranslationsFavoritesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Избранное';
	@override String get empty => 'Ещё нет избранных блюд.';
	@override String get searchPlaceholder => 'Поиск по избранным блюдам';
	@override String get searchEmptyTitle => 'Нет избранного по вашему запросу';
	@override String get searchEmptySubtitle => 'Попробуйте другое название блюда, количество или тип приёма пищи.';
	@override String get sortLabel => 'Сортировать избранное';
	@override String get undo => 'Отменить';
	@override String removed({required Object name}) => 'Удалено ${name} из избранного';
	@override late final _TranslationsFavoritesSortOptionsRu sortOptions = _TranslationsFavoritesSortOptionsRu._(_root);
}

// Path: profile
class _TranslationsProfileRu implements TranslationsProfileEn {
	_TranslationsProfileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профиль';
	@override String get noProfileData => 'Данные профиля не найдены';
	@override String get yourProfile => 'Ваш профиль';
	@override String get viewAndManage => 'Просматривайте и управляйте информацией о здоровье';
	@override late final _TranslationsProfileSectionsRu sections = _TranslationsProfileSectionsRu._(_root);
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
	@override late final _TranslationsProfileCalculatedValuesRu calculatedValues = _TranslationsProfileCalculatedValuesRu._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreRu implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оценка здоровья';
	@override String get whyThisScore => 'Почему такая оценка?';
	@override String get note => 'Эта оценка — приблизительная оценка ИИ на основе выявленных ингредиентов и питательной плотности. Всегда консультируйтесь со специалистом по вопросам питания.';
	@override String get unhealthy => 'Нездорово';
	@override String get healthy => 'Здорово';
	@override String get neutral => 'Нейтрально';
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
	@override String get metric => 'Метрические';
	@override String get imperial => 'Имперские';
	@override String get unitCm => 'см';
	@override String get unitFt => 'фут';
	@override String get unitKg => 'кг';
	@override String get unitLbs => 'фунт';
	@override String get metricCm => 'Метрические (см)';
	@override String get imperialFtIn => 'Имперские (фут/дюйм)';
	@override String get metricKg => 'Метрические (кг)';
	@override String get imperialLbs => 'Имперские (фунты)';
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
	@override late final _TranslationsSettingsExportMealHistoryRu exportMealHistory = _TranslationsSettingsExportMealHistoryRu._(_root);
	@override late final _TranslationsSettingsClearAllDataRu clearAllData = _TranslationsSettingsClearAllDataRu._(_root);
	@override late final _TranslationsSettingsDebugOptionsRu debugOptions = _TranslationsSettingsDebugOptionsRu._(_root);
	@override String get developerModeEnabled => 'Режим разработчика включён!';
	@override late final _TranslationsSettingsHealthConnectRu healthConnect = _TranslationsSettingsHealthConnectRu._(_root);
	@override late final _TranslationsSettingsAboutRu about = _TranslationsSettingsAboutRu._(_root);
	@override late final _TranslationsSettingsAppInfoRu appInfo = _TranslationsSettingsAppInfoRu._(_root);
}

// Path: reminders
class _TranslationsRemindersRu implements TranslationsRemindersEn {
	_TranslationsRemindersRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оставайтесь на курсе с напоминаниями';
	@override String get description => 'Получайте мягкие напоминания фиксировать приёмы пищи и сохранять последовательность на пути к целям в питании';
	@override String get notificationsEnabled => 'Уведомления включены';
	@override String get notificationsDisabled => 'Уведомления выключены';
	@override String get enabledSubtitle => 'Вы будете получать напоминания о приёмах пищи';
	@override String get disabledSubtitle => 'Включите уведомления, чтобы получать напоминания';
	@override String get mealReminders => 'Напоминания о приёмах пищи';
	@override String get breakfast => 'Завтрак';
	@override String get lunch => 'Обед';
	@override String get dinner => 'Ужин';
	@override String get snack => 'Перекус';
	@override String get unknown => 'Неизвестно';
	@override String get change => 'Изменить';
	@override String get enableNotifications => 'Включить уведомления';
	@override String get skipForNow => 'Пока пропустить';
	@override String get saveChanges => 'Сохранить изменения';
	@override String get enabledSuccessfully => 'Уведомления успешно включены!';
	@override String get permissionDenied => 'Разрешение на уведомления отклонено';
	@override String errorEnabling({required Object error}) => 'Ошибка включения уведомлений: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Ошибка завершения настройки: ${error}';
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
	@override String get signInWithGoogle => 'Войти через Google';
	@override String get signInFailed => 'Вход через Google не удался или был отменён.';
}

// Path: disclaimer
class _TranslationsDisclaimerRu implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Обратите внимание';
	@override late final _TranslationsDisclaimerSnapRu snap = _TranslationsDisclaimerSnapRu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateRu weightEstimate = _TranslationsDisclaimerWeightEstimateRu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsRu healthMetrics = _TranslationsDisclaimerHealthMetricsRu._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureRu calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureRu._(_root);
}

// Path: common
class _TranslationsCommonRu implements TranslationsCommonEn {
	_TranslationsCommonRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get close => 'Закрыть';
	@override String get kContinue => 'Продолжить';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingRu implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Нравится ${appLabel}?';
	@override String get yes => 'Да, мне нравится';
	@override String get no => 'Не очень';
	@override String get rateStepHeading => 'Оценить в Play Маркете';
	@override String get emailStepHeading => 'Отправить отзыв по email';
	@override String soloDevMessage({required Object appLabel}) => 'Быстрая оценка помогает другим найти ${appLabel} и поддерживает развитие. Вы уделите минутку?';
	@override String get shareFeedbackViaEmail => 'Ваши мысли задают направление — мы читаем каждое сообщение. Хотите поделиться отзывом по email?';
	@override String get rateCta => 'Оценить в Play Маркете';
	@override String get maybeLater => 'Может позже';
	@override String get sendFeedback => 'Отправить отзыв';
	@override String get noThanks => 'Нет, спасибо';
	@override String get aboutUsDescription => 'Сделано с заботой небольшой командой. Мы сосредоточены на приватности, простоте и формировании здоровых пищевых привычек.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Интересно, кто стоит за ${appLabel}? Смотрите ';
	@override String get aboutUsLinkLabel => 'О нас';
	@override String get thankYouMessage => 'Спасибо! Мы спросим в другой раз.';
}

// Path: health
class _TranslationsHealthRu implements TranslationsHealthEn {
	_TranslationsHealthRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Не удалось синхронизировать с Health Connect';
	@override String get mealSynced => 'Блюдо синхронизировано с Health Connect';
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
	@override String get title => 'Укажите ваш пол';
	@override String get description => 'Пол помогает нам точно рассчитать базовый обмен веществ (BMR).';
	@override String get next => 'Далее';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightRu implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Какой у вас рост?';
	@override String get description => 'Рост помогает точно рассчитать ваш ИМТ и потребности в энергии.';
	@override String get metric => 'Метрические';
	@override String get imperial => 'Имперские';
	@override String get next => 'Далее';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightRu implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Какой у вас текущий вес?';
	@override String get currentDescription => 'Текущий вес важен для персонализации ваших дневных целей.';
	@override String get targetTitle => 'Какой у вас целевой вес?';
	@override String get targetDescription => 'Целевой вес помогает определить долгосрочный план.';
	@override String get metric => 'Метрические';
	@override String get imperial => 'Имперские';
	@override String get next => 'Далее';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeRu implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Укажите дату рождения';
	@override String get description => 'Возраст помогает точно рассчитать ваши потребности в калориях.';
	@override String get next => 'Далее';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleRu implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Недовес';
	@override String get healthy => 'Норма';
	@override String get overweight => 'Избыток';
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
	@override String get description => 'Выберите цель, которая лучше всего описывает ваш результат';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelRu implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Насколько вы активны?';
	@override String get description => 'Это поможет точнее рассчитать вашу дневную потребность в калориях';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectRu implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Подключение к Health Connect';
	@override String get description => 'Синхронизируйте данные о здоровье для лучших инсайтов и автоматического учёта калорий';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingRu automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingRu._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsRu progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsRu._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationRu seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationRu._(_root);
	@override String get connected => 'Health Connect подключён';
	@override String get notConnected => 'Health Connect не подключён';
	@override String get setup => 'Настроить Health Connect';
	@override String get skipForNow => 'Пока пропустить';
	@override String get statusConnected => 'Health Connect подключён.';
	@override String get statusSuccess => 'Health Connect успешно подключён!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Доступ запрещён. Включите разрешения Health Connect в настройках телефона для ${appLabel}.';
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

// Path: home.aiSummary
class _TranslationsHomeAiSummaryRu implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваш AI‑саммари';
	@override String get logMore => 'Ведите больше записей в ближайшие дни, чтобы получить персональные инсайты от ИИ.';
	@override String get loading => 'Загружаем ваш саммари...';
	@override String mealCount({required Object count}) => 'Зарегистрировано приёмов пищи: ${count}';
	@override String macroBalanceScore({required Object score}) => 'Оценка баланса ${score}';
	@override String get topFoods => 'Топ продуктов';
	@override String get trendUp => 'Калории растут';
	@override String get trendDown => 'Калории снижаются';
	@override String get trendSteady => 'Калории стабильны';
	@override String generatedAt({required Object time}) => 'Обновлено ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalRu implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Установите дневную цель';
	@override String get titleSet => 'Ваша дневная цель';
	@override String get description => 'Готовы начать путь к благополучию? Установите суточную цель по калориям ниже, чтобы запустить прогресс.';
	@override String get descriptionSet => 'Ваш компас настроен! Это ваша ежедневная калорийная цель‑ориентир.';
	@override String get yourGoal => 'Ваша цель';
	@override String get goal => 'Цель';
	@override String get dailyCalories => 'Дневные калории (ккал)';
	@override String get setGoal => 'Установить цель';
	@override String get intake => 'Поступление';
	@override String get burned => 'Сожжено';
	@override String get weightImpact => 'Влияние на вес';
	@override String get estLoss => 'Оцениваемая потеря';
	@override String get estGain => 'Оцениваемый набор';
	@override String get kcal => 'ккал';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryRu implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Дневная сводка';
	@override String get calories => 'Калории';
	@override String get carbs => 'Углеводы';
	@override String get protein => 'Белки';
	@override String get fat => 'Жиры';
	@override String get fiber => 'Клетчатка';
	@override String get grams => 'граммы';
	@override String get chartAccessibilityLabel => 'Диаграмма макроэлементов';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressRu implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сегодняшнее распределение макро';
	@override String get target => 'Цель';
	@override String get current => 'Текущее';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryRu implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'История макро за 7 дней';
	@override String get trendTitle => 'Сегодняшний тренд';
	@override String peakHour({required Object hour}) => 'Пик: ${hour}:00';
	@override String get noHistoryYet => 'Истории пока нет';
	@override String get startLogging => 'Начните фиксировать приёмы пищи, чтобы увидеть здесь\n7‑дневные тренды макро';
}

// Path: home.mealLog
class _TranslationsHomeMealLogRu implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Записанные приёмы пищи';
	@override String get emptyMessage => 'Сфотографируйте своё последнее блюдо, чтобы добавить его сюда.';
	@override String get noMealsToday => 'Сегодня записей о приёмах пищи нет';
	@override String get seeAllMeals => 'Показать все блюда';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionRu implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Быстрое добавление с ИИ';
	@override String get description => 'Опишите приём пищи — ИИ сделает остальное.';
	@override String get hint => 'например: На завтрак у меня была большая миска овсянки с бананом и порцией сывороточного протеина ...';
	@override String get analyzeMeal => 'Анализировать';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsRu implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Избранные блюда';
	@override String get description => 'Быстро добавляйте любимые блюда.';
	@override String get noFavorites => 'Ещё нет избранных блюд.';
	@override String get addFavoriteHint => 'Нажмите звёздочку на блюде, чтобы добавить в избранное.';
	@override String get seeAll => 'Показать все';
	@override String get add => 'Добавить';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapRu implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сфотографируйте и отслеживайте блюдо';
	@override String get description => 'Используйте камеру, чтобы сделать снимок еды для анализа ИИ.';
	@override String get openCamera => 'Открыть камеру';
	@override String get gallery => 'Галерея';
	@override String get compressingPhoto => 'Оптимизация фото…';
	@override String get uploadingPhoto => 'Загрузка фото…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthRu implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Синхронизация с Health Connect';
	@override String get description => 'Синхронизируйте данные о питании с Health Connect';
	@override String get install => 'Установить';
	@override String get connect => 'Подключить';
}

// Path: meal.nutrition
class _TranslationsMealNutritionRu implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Калории';
	@override String get carbs => 'Углеводы (г)';
	@override String get protein => 'Белки (г)';
	@override String get fat => 'Жиры (г)';
	@override String get fiber => 'Клетчатка (г)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationRu implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Удалить приём пищи';
	@override String get message => 'Вы уверены, что хотите удалить эту запись?';
	@override String get cancel => 'Отмена';
	@override String get delete => 'Удалить';
}

// Path: meal.variation
class _TranslationsMealVariationRu implements TranslationsMealVariationEn {
	_TranslationsMealVariationRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Вопрос ${current} из ${total}';
	@override String get noVariationsAvailable => 'Доступных вариантов нет';
}

// Path: meal.analysis
class _TranslationsMealAnalysisRu implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Анализ блюда ИИ';
	@override String get reassurance => 'Обычно это занимает несколько секунд.';
	@override String get stepStarted => 'Начинаем…';
	@override String get stepDecomposition => 'Понимаем ваше блюдо…';
	@override String get stepIngredients => 'Сопоставляем ингредиенты с базой питания…';
	@override String get stepUncertainty => 'Оцениваем уверенность…';
	@override String get stepMealTypeQuestion => 'Почти готово…';
	@override String get stepResult => 'Финализируем результат…';
	@override String get stepError => 'Что-то пошло не так';
	@override String get stepDefault => 'Анализируем ваше блюдо…';
	@override String get progressUnderstand => 'Понять';
	@override String get progressMatch => 'Сопоставить';
	@override String get progressCheck => 'Проверить';
	@override String get progressFinish => 'Завершить';
	@override String ingredientsLine({required Object count}) => 'Обнаружено ${count} ингредиентов';
	@override String get ingredientsPending => 'Сканирование ингредиентов…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackRu implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

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
class _TranslationsFavoritesSortOptionsRu implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Недавние';
	@override String get calories => 'Калории';
	@override String get alphabetical => 'А-Я';
}

// Path: profile.sections
class _TranslationsProfileSectionsRu implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ПРОФИЛЬ';
	@override String get basicInformation => 'ОСНОВНАЯ ИНФОРМАЦИЯ';
	@override String get goalsAndActivity => 'ЦЕЛИ И АКТИВНОСТЬ';
	@override String get calculatedValues => 'РАССЧИТАННЫЕ ЗНАЧЕНИЯ';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesRu implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Дневная цель';
	@override String get calPerDay => 'ккал/день';
	@override String get notAvailable => 'н/д';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsRu implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ЛИЧНАЯ ИНФОРМАЦИЯ';
	@override String get physicalMeasurements => 'ФИЗИЧЕСКИЕ ПОКАЗАТЕЛИ';
	@override String get goalsAndActivity => 'ЦЕЛИ И АКТИВНОСТЬ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersRu implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get male => 'Мужчина';
	@override String get female => 'Женщина';
	@override String get other => 'Другое';
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
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'ПОДДЕРЖКА И ПРАВО';
	@override String get about => 'О ПРИЛОЖЕНИИ';
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
	@override String get subtitle => 'Выберите предпочтительный язык';
	@override String get searchHint => 'Поиск языков...';
	@override String get noResults => 'Ничего не найдено';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitRu implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Единицы роста';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitRu implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Единицы веса';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersRu implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Напоминания о приёмах пищи';
	@override String get subtitle => 'Оставайтесь на курсе с своевременными напоминаниями';
}

// Path: settings.theme
class _TranslationsSettingsThemeRu implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тема';
	@override String get light => 'Светлая';
	@override String get dark => 'Тёмная';
	@override String get system => 'Системная';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackRu implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Отправить отзыв';
	@override String subtitle({required Object appLabel}) => 'Помогите улучшить ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Отзыв о приложении ${appLabel}';
	@override String get emailBodyPrefix => 'Пожалуйста, напишите ваш отзыв ниже:';
	@override String get appVersion => 'Версия приложения';
	@override String get device => 'Устройство';
	@override String get osVersion => 'Версия ОС';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryRu implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Экспорт истории приёмов пищи';
	@override String get subtitle => 'Поделитесь CSV со своими записями';
	@override String get shareText => 'Экспорт истории приёмов пищи Calorify';
	@override String failed({required Object error}) => 'Не удалось экспортировать историю приёмов пищи: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataRu implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Очистить все данные';
	@override String get subtitle => 'Необратимо удалить всю вашу информацию';
	@override String get confirmationTitle => 'Очистить все данные?';
	@override String get confirmationMessage => 'Это действие необратимо. Все ваши записи, избранное и настройки профиля будут удалены навсегда.';
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

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectRu implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Просмотр и управление разрешениями';
	@override late final _TranslationsSettingsHealthConnectUnavailableRu unavailable = _TranslationsSettingsHealthConnectUnavailableRu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsRu permissions = _TranslationsSettingsHealthConnectPermissionsRu._(_root);
	@override String get managePermissions => 'Управлять разрешениями';
	@override String get openSettings => 'Открыть настройки Health Connect';
	@override String get requestPermissions => 'Запросить разрешения';
	@override String get permissionRequestCancelledOrFailed => 'Запрос разрешений отменён или завершился неудачей. Повторите попытку или предоставьте разрешения вручную в настройках Health Connect.';
	@override String get permissionRequestFailed => 'Не удалось запросить разрешения. Повторите попытку или предоставьте разрешения вручную в настройках Health Connect.';
	@override String get requestingPermissions => 'Запрос...';
}

// Path: settings.about
class _TranslationsSettingsAboutRu implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'О приложении';
	@override String get tagline => 'Быстро, бесплатно и с приоритетом приватности — для осознанного контроля калорий';
	@override late final _TranslationsSettingsAboutOurStoryRu ourStory = _TranslationsSettingsAboutOurStoryRu._(_root);
	@override late final _TranslationsSettingsAboutPrivacyRu privacy = _TranslationsSettingsAboutPrivacyRu._(_root);
	@override late final _TranslationsSettingsAboutDeveloperRu developer = _TranslationsSettingsAboutDeveloperRu._(_root);
	@override late final _TranslationsSettingsAboutFeedbackRu feedback = _TranslationsSettingsAboutFeedbackRu._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoRu implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Сборка ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastRu implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время завтрака! 🍳';
	@override String get body => 'Не забудьте записать завтрак';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchRu implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время обеда! 🥗';
	@override String get body => 'Пора записать обед';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerRu implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время ужина! 🍽️';
	@override String get body => 'Не забудьте записать ужин';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackRu implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время перекуса! 🍎';
	@override String get body => 'Пора для полезного перекуса';
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
	@override String description({required Object appLabel}) => '${appLabel} предоставляет примерные данные о питательности. Точность зависит от вашего ввода и вариаций блюд. Используйте как ориентир, а не окончательный источник. За персональными рекомендациями обращайтесь к специалисту.';
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
	@override String get title => 'Об оценке изменения веса';
	@override String get description => 'Прогноз изменения веса — теоретическая оценка на основе модели «калории в — калории из». Это мотивационный ориентир, а не точное предсказание.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyRu calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyRu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsRu biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsRu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightRu waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightRu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRu professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRu._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsRu implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get description => 'Эти показатели помогают понять энергетические потребности организма и настраивать цели в питании.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrRu bmr = _TranslationsDisclaimerHealthMetricsBmrRu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeRu tdee = _TranslationsDisclaimerHealthMetricsTdeeRu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalRu dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalRu._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureRu implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оценка расхода калорий';
	@override String get description => 'Когда данные Health Connect недоступны, мы оцениваем сегодняшние сожжённые калории по вашему BMR и уровню активности (TDEE), масштабируя под прошедшую часть дня.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedRu howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedRu._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRu professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRu._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionRu implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Умное распознавание блюд';
	@override String get description => 'Сделайте фото, и ИИ определит ваш приём пищи';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisRu implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Анализ ИИ';
	@override String get description => 'Получайте мгновенные данные о питательности по вашим описаниям';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationRu implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Интеграция со здоровьем';
	@override String get description => 'Подключите Health Connect для более точных инсайтов';
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
	@override String get underweight => 'Мы поможем вам выстроить здоровый план для достижения сбалансированного веса с питательными блюдами.';
	@override String get healthy => 'Отличная работа! Вы в здоровом диапазоне. Мы поможем поддерживать энергию и бодрость.';
	@override String overweight({required Object appLabel}) => '${appLabel} упростит путь благодаря ИИ-отслеживанию и поможет комфортно достичь вашей цели.';
	@override String get obese => 'Мы поддержим вас персональными рекомендациями и устойчивыми стратегиями для ваших целей здоровья.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingRu implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Автоматический учёт калорий';
	@override String get description => 'Учитывайте сожжённые калории из фитнес‑приложений';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsRu implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Аналитика прогресса';
	@override String get description => 'Получайте подробные инсайты о динамике здоровья';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationRu implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Бесшовная интеграция';
	@override String get description => 'Синхронизируйте данные из любимых приложений о здоровье';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessRu implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вы не одни';
	@override String get genericMessage => 'Исследования показывают: регулярный учёт — главный предиктор долгосрочного успеха.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Для ${age}-летнего(ней) ${gender}, стремящегося(ей) ${goal}, регулярный учёт — главный предиктор успеха.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} делает это в 10 раз проще, чем вручную.';
	@override String get getStartedTitle => 'Готовы начать?';
	@override String get tipPhoto => 'Фотографируйте приёмы пищи для мгновенного анализа';
	@override String get tipConsistency => 'Фиксируйте регулярно, чтобы видеть значимый прогресс';
	@override String get tipProgress => 'Отслеживайте прогресс ежедневно, чтобы сохранять мотивацию';
	@override String get button => 'Поехали';
	@override String get defaultGender => 'человека';
	@override String get defaultGoal => 'стать здоровее';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileRu implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваш профиль здоровья';
	@override String bmiDescription({required Object bmi}) => 'Согласно вашим данным, ваш ИМТ: ${bmi}.';
	@override String get finalizeDescription => 'Давайте завершим профиль, чтобы персонализировать ваш опыт.';
	@override String get goalGain => 'набрать';
	@override String get goalLose => 'сбросить';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Чтобы достичь цели, вам нужно ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Вы на целевом весе! Мы поможем его поддерживать.';
	@override String get button => 'Поехали';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleRu implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Отличное начало!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Вы сделали первый шаг к ${goalText}. Так как вы ${activityText}, ${appLabel} скорректирует цели под ваш образ жизни.';
	@override String get personalizedTargets => 'Персональные калорийные цели';
	@override String get aiMealDetection => 'Определение блюд с помощью ИИ';
	@override String get macroBreakdowns => 'Детальная разбивка макронутриентов';
	@override String get button => 'Поехали';
	@override String get defaultGoal => 'вашим целям';
	@override String get defaultActivity => 'активны';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightRu implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Похудеть';
	@override String get description => 'Создать дефицит калорий для снижения веса';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightRu implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Поддерживать вес';
	@override String get description => 'Сохранять текущий вес';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightRu implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Набрать вес';
	@override String get description => 'Создать профицит калорий для набора веса';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryRu implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Сидячий образ';
	@override String get description => 'Мало или нет упражнений';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveRu implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Небольшая активность';
	@override String get description => 'Лёгкие тренировки 1–3 дня/неделю';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveRu implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Умеренная активность';
	@override String get description => 'Умеренные тренировки 3–5 дней/неделю';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveRu implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Высокая активность';
	@override String get description => 'Интенсивные тренировки 6–7 дней/неделю';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveRu implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Чрезвычайная активность';
	@override String get description => 'Очень тяжёлые тренировки, физическая работа';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableRu implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect недоступен';
	@override String get description => 'Health Connect недоступен на этом устройстве. Установите Health Connect из Play Маркета (Android 9+) или обновитесь до Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsRu implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Разрешения';
	@override String get description => 'Для интеграции с Health Connect требуются следующие разрешения:';
	@override String get granted => 'Предоставлено';
	@override String get notGranted => 'Не предоставлено';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRu caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadRu nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadRu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteRu nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteRu._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryRu implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Наша история';
	@override String content({required Object appLabel}) => '${appLabel} родился из простой проблемы: большинство приложений для учёта калорий слишком сложны, требуют постоянного ручного ввода, берут высокую подписку или жертвуют приватностью.\n\nКак независимый разработчик, я хотел создать что-то проще и честнее — приложение, которое использует ИИ, чтобы снизить усилия, остаётся быстрым и бесплатным, и с уважением относится к вашим данным о здоровье.\n\n${appLabel} — это приложение, которого мне не хватало: без аккаунтов, без трекинга, без рекламы — только ясные, практичные инсайты и ваши цели здоровья.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyRu implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваша приватность важна';
	@override String get description => 'Приватность — не дополнение, а принцип дизайна. Вот что это означает на практике:';
	@override String get noAccounts => 'Аккаунты не требуются\nПользуйтесь приложением сразу. Без регистрации и идентификации.';
	@override String noTracking({required Object appLabel}) => 'Без поведенческого слежения\n${appLabel} не отслеживает вашу активность, не строит профили и не следит за вами в приложениях или на сайтах.';
	@override String noAds({required Object appLabel}) => 'Без рекламы по умолчанию\n${appLabel} создан без рекламы и монетизации на основе данных.';
	@override String get noDataSelling => 'Без продажи данных\nВаши данные о здоровье никогда не продаются и не передаются третьим лицам.';
	@override String get localStorage => 'Локальное хранение в приоритете\nВаши данные остаются на вашем устройстве.';
	@override String get privacyPolicy => 'Политика конфиденциальности';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperRu implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Создано одним разработчиком';
	@override String description({required Object appLabel}) => '${appLabel} разработано и поддерживается одним разработчиком, сосредоточенным на спокойном, уважающем приватность софте для здоровья.\n\nОбратную связь я читаю лично — она помогает формировать будущее приложения.';
	@override String get website => 'Сайт';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackRu implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Нравится ${appLabel}?';
	@override String description({required Object appLabel}) => 'Ваш отзыв помогает сделать ${appLabel} лучше для всех.';
	@override String get rateApp => 'Оценить в Play Маркете';
	@override String get sendFeedback => 'Отправить отзыв';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeRu implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Размер порции';
	@override String get description => 'Точность оценок сильно зависит от правильной оценки размера порции.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsRu implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Способ приготовления';
	@override String description({required Object appLabel}) => 'Методы готовки могут значительно изменять пищевую ценность. Оценки ${appLabel} могут учитывать это не всегда.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsRu implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ингредиенты';
	@override String get description => 'Сложные блюда со скрытыми ингредиентами могут приводить к менее точным оценкам.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsRu implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ограничения базы данных';
	@override String description({required Object appLabel}) => 'База продуктов ${appLabel} обширна, но может содержать не все продукты и вариации.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyRu implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Точность калорий';
	@override String get description => 'Оценка настолько точна, насколько точны ваши данные о потреблении и расходе калорий. Неверный учёт приведёт к неточному прогнозу.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsRu implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Биологические факторы';
	@override String description({required Object appLabel}) => 'Реальная динамика веса зависит от метаболизма, гормонов, сна, стресса, гидратации и других индивидуальных факторов, которые ${appLabel} не измеряет.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightRu implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вода и колебания';
	@override String get description => 'Дневной вес может заметно колебаться из‑за задержки воды, пищеварения и времени суток. Оценка это не учитывает.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRu implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профессиональные рекомендации';
	@override String get description => 'Не используйте эту оценку для медицинских решений. Всегда консультируйтесь с врачом или диетологом по персональному управлению весом.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrRu implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Базовый обмен веществ (BMR) — это количество калорий, которое ваш организм сжигает в покое для базовых функций, таких как дыхание и кровообращение. BMR зависит от возраста, пола, роста и веса. Более высокий BMR означает, что в покое вы сжигаете больше калорий — чаще из‑за большего объёма мышц, меньшего возраста или мужского пола. Более низкий BMR обычно указывает на меньшую мышечную массу, больший возраст или женский пол.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeRu implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Суточные энергозатраты (TDEE) — это общее количество калорий, сжигаемых за день: BMR плюс активность и повседневное движение. TDEE зависит от BMR и уровня активности. Более высокий TDEE — больше калорий сжигается в целом (вы более активны или выше BMR). Низкий TDEE — меньше активности или ниже BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalRu implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Дневная цель';
	@override String get description => 'Дневная цель — рекомендуемое потребление калорий на основе вашего TDEE и цели по весу. Для снижения веса — меньше TDEE, для поддержания — около TDEE, для набора — больше TDEE. Это помогает двигаться к цели здоровым темпом.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedRu implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Как считается оценка';
	@override String get description => 'Мы вычисляем ваш TDEE (по профилю) и умножаем на долю прошедшего дня (часы + минуты) / 24, чтобы оценить уже сожжённые калории.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRu implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профессиональные рекомендации';
	@override String get description => 'Не используйте эту оценку для медицинских решений. Всегда консультируйтесь с врачом или диетологом за персональными рекомендациями.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRu implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Чтение общего калоража, сожжённого за день';
	@override String get description => 'Позволяет приложению читать общее количество сожжённых калорий из Health Connect.';
	@override String get usage => 'Разрешение используется для отображения вашего дневного расхода калорий в приложении, чтобы помочь понять суммарные энергозатраты за день.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadRu implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Чтение данных о питании';
	@override String get description => 'Позволяет приложению читать данные о питании из Health Connect.';
	@override String get usage => 'Это разрешение позволяет читать информацию о питании, записанную другими приложениями, подключёнными к Health Connect, для комплексного обзора вашего рациона.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteRu implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Запись данных о питании';
	@override String get description => 'Позволяет приложению записывать данные о питании в Health Connect.';
	@override String get usage => 'Это разрешение позволяет синхронизировать ваши записанные блюда с Health Connect, делая данные о питании доступными в других ваших приложениях для здоровья и фитнеса.';
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
			'errors.rateLimitExceeded' => 'Слишком много запросов. Пожалуйста, подождите немного и попробуйте снова.',
			'errors.networkError' => 'Ошибка сети. Проверьте подключение к интернету.',
			'errors.unknownError' => 'Что-то пошло не так. Пожалуйста, попробуйте позже.',
			'errors.loadingProfileData' => 'Ошибка загрузки данных профиля',
			'errors.somethingWentWrong' => 'Что-то пошло не так.',
			'errors.retry' => 'Повторить',
			'onboarding.welcome' => ({required Object appLabel}) => 'Добро пожаловать в ${appLabel}',
			'onboarding.subtitle' => 'Ваш персональный помощник по питанию на базе ИИ',
			'onboarding.getStarted' => 'Начать',
			'onboarding.features.foodRecognition.title' => 'Умное распознавание блюд',
			'onboarding.features.foodRecognition.description' => 'Сделайте фото, и ИИ определит ваш приём пищи',
			'onboarding.features.aiAnalysis.title' => 'Анализ ИИ',
			'onboarding.features.aiAnalysis.description' => 'Получайте мгновенные данные о питательности по вашим описаниям',
			'onboarding.features.healthIntegration.title' => 'Интеграция со здоровьем',
			'onboarding.features.healthIntegration.description' => 'Подключите Health Connect для более точных инсайтов',
			'onboarding.gender.title' => 'Укажите ваш пол',
			'onboarding.gender.description' => 'Пол помогает нам точно рассчитать базовый обмен веществ (BMR).',
			'onboarding.gender.next' => 'Далее',
			'onboarding.height.title' => 'Какой у вас рост?',
			'onboarding.height.description' => 'Рост помогает точно рассчитать ваш ИМТ и потребности в энергии.',
			'onboarding.height.metric' => 'Метрические',
			'onboarding.height.imperial' => 'Имперские',
			'onboarding.height.next' => 'Далее',
			'onboarding.weight.currentTitle' => 'Какой у вас текущий вес?',
			'onboarding.weight.currentDescription' => 'Текущий вес важен для персонализации ваших дневных целей.',
			'onboarding.weight.targetTitle' => 'Какой у вас целевой вес?',
			'onboarding.weight.targetDescription' => 'Целевой вес помогает определить долгосрочный план.',
			'onboarding.weight.metric' => 'Метрические',
			'onboarding.weight.imperial' => 'Имперские',
			'onboarding.weight.next' => 'Далее',
			'onboarding.age.title' => 'Укажите дату рождения',
			'onboarding.age.description' => 'Возраст помогает точно рассчитать ваши потребности в калориях.',
			'onboarding.age.next' => 'Далее',
			'onboarding.bmiScale.underweight' => 'Недовес',
			'onboarding.bmiScale.healthy' => 'Норма',
			'onboarding.bmiScale.overweight' => 'Избыток',
			'onboarding.bmiScale.obese' => 'Ожирение',
			'onboarding.bmiScale.categories.underweight' => 'Недовес',
			'onboarding.bmiScale.categories.healthyWeight' => 'Здоровый вес',
			'onboarding.bmiScale.categories.overweight' => 'Избыточный вес',
			'onboarding.bmiScale.categories.obese' => 'Ожирение',
			'onboarding.bmiScale.messages.underweight' => 'Мы поможем вам выстроить здоровый план для достижения сбалансированного веса с питательными блюдами.',
			'onboarding.bmiScale.messages.healthy' => 'Отличная работа! Вы в здоровом диапазоне. Мы поможем поддерживать энергию и бодрость.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} упростит путь благодаря ИИ-отслеживанию и поможет комфортно достичь вашей цели.',
			'onboarding.bmiScale.messages.obese' => 'Мы поддержим вас персональными рекомендациями и устойчивыми стратегиями для ваших целей здоровья.',
			'onboarding.weightGoal.title' => 'Какова ваша цель?',
			'onboarding.weightGoal.description' => 'Выберите цель, которая лучше всего описывает ваш результат',
			'onboarding.activityLevel.title' => 'Насколько вы активны?',
			'onboarding.activityLevel.description' => 'Это поможет точнее рассчитать вашу дневную потребность в калориях',
			'onboarding.healthConnect.title' => 'Подключение к Health Connect',
			'onboarding.healthConnect.description' => 'Синхронизируйте данные о здоровье для лучших инсайтов и автоматического учёта калорий',
			'onboarding.healthConnect.automaticTracking.title' => 'Автоматический учёт калорий',
			'onboarding.healthConnect.automaticTracking.description' => 'Учитывайте сожжённые калории из фитнес‑приложений',
			'onboarding.healthConnect.progressInsights.title' => 'Аналитика прогресса',
			'onboarding.healthConnect.progressInsights.description' => 'Получайте подробные инсайты о динамике здоровья',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Бесшовная интеграция',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Синхронизируйте данные из любимых приложений о здоровье',
			'onboarding.healthConnect.connected' => 'Health Connect подключён',
			'onboarding.healthConnect.notConnected' => 'Health Connect не подключён',
			'onboarding.healthConnect.setup' => 'Настроить Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Пока пропустить',
			'onboarding.healthConnect.statusConnected' => 'Health Connect подключён.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect успешно подключён!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Доступ запрещён. Включите разрешения Health Connect в настройках телефона для ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Ошибка настройки Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Вы не одни',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Исследования показывают: регулярный учёт — главный предиктор долгосрочного успеха.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Для ${age}-летнего(ней) ${gender}, стремящегося(ей) ${goal}, регулярный учёт — главный предиктор успеха.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} делает это в 10 раз проще, чем вручную.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Готовы начать?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Фотографируйте приёмы пищи для мгновенного анализа',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Фиксируйте регулярно, чтобы видеть значимый прогресс',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Отслеживайте прогресс ежедневно, чтобы сохранять мотивацию',
			'onboarding.reinforcement.trackingSuccess.button' => 'Поехали',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'человека',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'стать здоровее',
			'onboarding.reinforcement.healthProfile.title' => 'Ваш профиль здоровья',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Согласно вашим данным, ваш ИМТ: ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Давайте завершим профиль, чтобы персонализировать ваш опыт.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'набрать',
			'onboarding.reinforcement.healthProfile.goalLose' => 'сбросить',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Чтобы достичь цели, вам нужно ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Вы на целевом весе! Мы поможем его поддерживать.',
			'onboarding.reinforcement.healthProfile.button' => 'Поехали',
			'onboarding.reinforcement.goalLifestyle.title' => 'Отличное начало!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Вы сделали первый шаг к ${goalText}. Так как вы ${activityText}, ${appLabel} скорректирует цели под ваш образ жизни.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Персональные калорийные цели',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Определение блюд с помощью ИИ',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Детальная разбивка макронутриентов',
			'onboarding.reinforcement.goalLifestyle.button' => 'Поехали',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'вашим целям',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'активны',
			'tabs.dashboard' => 'Главная',
			'tabs.history' => 'История',
			'home.aiSummary.title' => 'Ваш AI‑саммари',
			'home.aiSummary.logMore' => 'Ведите больше записей в ближайшие дни, чтобы получить персональные инсайты от ИИ.',
			'home.aiSummary.loading' => 'Загружаем ваш саммари...',
			'home.aiSummary.mealCount' => ({required Object count}) => 'Зарегистрировано приёмов пищи: ${count}',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Оценка баланса ${score}',
			'home.aiSummary.topFoods' => 'Топ продуктов',
			'home.aiSummary.trendUp' => 'Калории растут',
			'home.aiSummary.trendDown' => 'Калории снижаются',
			'home.aiSummary.trendSteady' => 'Калории стабильны',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Обновлено ${time}',
			'home.dailyGoal.title' => 'Установите дневную цель',
			'home.dailyGoal.titleSet' => 'Ваша дневная цель',
			'home.dailyGoal.description' => 'Готовы начать путь к благополучию? Установите суточную цель по калориям ниже, чтобы запустить прогресс.',
			'home.dailyGoal.descriptionSet' => 'Ваш компас настроен! Это ваша ежедневная калорийная цель‑ориентир.',
			'home.dailyGoal.yourGoal' => 'Ваша цель',
			'home.dailyGoal.goal' => 'Цель',
			'home.dailyGoal.dailyCalories' => 'Дневные калории (ккал)',
			'home.dailyGoal.setGoal' => 'Установить цель',
			'home.dailyGoal.intake' => 'Поступление',
			'home.dailyGoal.burned' => 'Сожжено',
			'home.dailyGoal.weightImpact' => 'Влияние на вес',
			'home.dailyGoal.estLoss' => 'Оцениваемая потеря',
			'home.dailyGoal.estGain' => 'Оцениваемый набор',
			'home.dailyGoal.kcal' => 'ккал',
			'home.dailySummary.title' => 'Дневная сводка',
			'home.dailySummary.calories' => 'Калории',
			'home.dailySummary.carbs' => 'Углеводы',
			'home.dailySummary.protein' => 'Белки',
			'home.dailySummary.fat' => 'Жиры',
			'home.dailySummary.fiber' => 'Клетчатка',
			'home.dailySummary.grams' => 'граммы',
			'home.dailySummary.chartAccessibilityLabel' => 'Диаграмма макроэлементов',
			'home.intakeProgress.title' => 'Сегодняшнее распределение макро',
			'home.intakeProgress.target' => 'Цель',
			'home.intakeProgress.current' => 'Текущее',
			'home.intakeHistory.title' => 'История макро за 7 дней',
			'home.intakeHistory.trendTitle' => 'Сегодняшний тренд',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Пик: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Истории пока нет',
			'home.intakeHistory.startLogging' => 'Начните фиксировать приёмы пищи, чтобы увидеть здесь\n7‑дневные тренды макро',
			'home.mealLog.title' => 'Записанные приёмы пищи',
			'home.mealLog.emptyMessage' => 'Сфотографируйте своё последнее блюдо, чтобы добавить его сюда.',
			'home.mealLog.noMealsToday' => 'Сегодня записей о приёмах пищи нет',
			'home.mealLog.seeAllMeals' => 'Показать все блюда',
			'home.mealDescription.title' => 'Быстрое добавление с ИИ',
			'home.mealDescription.description' => 'Опишите приём пищи — ИИ сделает остальное.',
			'home.mealDescription.hint' => 'например: На завтрак у меня была большая миска овсянки с бананом и порцией сывороточного протеина ...',
			'home.mealDescription.analyzeMeal' => 'Анализировать',
			'home.favoriteMeals.title' => 'Избранные блюда',
			'home.favoriteMeals.description' => 'Быстро добавляйте любимые блюда.',
			'home.favoriteMeals.noFavorites' => 'Ещё нет избранных блюд.',
			'home.favoriteMeals.addFavoriteHint' => 'Нажмите звёздочку на блюде, чтобы добавить в избранное.',
			'home.favoriteMeals.seeAll' => 'Показать все',
			'home.favoriteMeals.add' => 'Добавить',
			'home.mealSnap.title' => 'Сфотографируйте и отслеживайте блюдо',
			'home.mealSnap.description' => 'Используйте камеру, чтобы сделать снимок еды для анализа ИИ.',
			'home.mealSnap.openCamera' => 'Открыть камеру',
			'home.mealSnap.gallery' => 'Галерея',
			'home.mealSnap.compressingPhoto' => 'Оптимизация фото…',
			'home.mealSnap.uploadingPhoto' => 'Загрузка фото…',
			'home.connectHealth.title' => 'Синхронизация с Health Connect',
			'home.connectHealth.description' => 'Синхронизируйте данные о питании с Health Connect',
			'home.connectHealth.install' => 'Установить',
			'home.connectHealth.connect' => 'Подключить',
			'history.noMeals' => 'Нет записей о приёмах пищи',
			'history.emptyMessage' => 'Сфотографируйте своё последнее блюдо, чтобы добавить его сюда.',
			'history.today' => 'Сегодня',
			'history.yesterday' => 'Вчера',
			'meal.ohNo' => 'О нет!',
			'meal.delete' => 'Удалить',
			'meal.editMeal' => 'Редактировать приём пищи',
			'meal.addMeal' => 'Добавить приём пищи',
			'meal.saveMeal' => 'Сохранить приём пищи',
			'meal.save' => 'Сохранить',
			'meal.mealName' => 'Название блюда',
			'meal.mealNameHint' => 'например: Яичница с тостом',
			'meal.mealQuantity' => 'Количество',
			'meal.mealQuantityHint' => 'например: 1 миска, 2 ломтика',
			'meal.timeOfMeal' => 'Время приёма пищи',
			'meal.timeOfMealHint' => 'Укажите время, когда вы ели',
			'meal.mealType' => 'Тип приёма пищи',
			'meal.nutrition.calories' => 'Калории',
			'meal.nutrition.carbs' => 'Углеводы (г)',
			'meal.nutrition.protein' => 'Белки (г)',
			'meal.nutrition.fat' => 'Жиры (г)',
			'meal.nutrition.fiber' => 'Клетчатка (г)',
			'meal.deleteConfirmation.title' => 'Удалить приём пищи',
			'meal.deleteConfirmation.message' => 'Вы уверены, что хотите удалить эту запись?',
			'meal.deleteConfirmation.cancel' => 'Отмена',
			'meal.deleteConfirmation.delete' => 'Удалить',
			'meal.addedToLog' => 'Блюдо добавлено в ваш журнал!',
			'meal.couldNotAdd' => ({required Object error}) => 'Не удалось добавить блюдо: ${error}',
			'meal.savedSuccessfully' => 'Блюдо успешно добавлено!',
			'meal.updatedSuccessfully' => 'Блюдо успешно обновлено!',
			'meal.errorSaving' => ({required Object error}) => 'Ошибка сохранения блюда: ${error}',
			'meal.removedFromFavorites' => 'Удалено из избранного!',
			'meal.savedAsFavorite' => 'Блюдо сохранено в избранное!',
			'meal.unfavorite' => 'Убрать из избранного',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Не удалось обновить избранное: ${error}',
			'meal.feedbackThanks' => 'Спасибо за отзыв!',
			'meal.reanalysisUpdated' => 'Обновили анализ блюда на основе вашего отзыва.',
			'meal.failedToProcess' => ({required Object error}) => 'Не удалось обработать: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Не удалось обработать изображение: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Ошибка сжатия изображения: ${error}',
			'meal.failedToSave' => 'Не удалось сохранить данные. Пожалуйста, попробуйте снова.',
			'meal.skip' => 'Пропустить',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Вопрос ${current} из ${total}',
			'meal.variation.noVariationsAvailable' => 'Доступных вариантов нет',
			'meal.analysis.title' => 'Анализ блюда ИИ',
			'meal.analysis.reassurance' => 'Обычно это занимает несколько секунд.',
			'meal.analysis.stepStarted' => 'Начинаем…',
			'meal.analysis.stepDecomposition' => 'Понимаем ваше блюдо…',
			'meal.analysis.stepIngredients' => 'Сопоставляем ингредиенты с базой питания…',
			'meal.analysis.stepUncertainty' => 'Оцениваем уверенность…',
			'meal.analysis.stepMealTypeQuestion' => 'Почти готово…',
			'meal.analysis.stepResult' => 'Финализируем результат…',
			'meal.analysis.stepError' => 'Что-то пошло не так',
			'meal.analysis.stepDefault' => 'Анализируем ваше блюдо…',
			'meal.analysis.progressUnderstand' => 'Понять',
			'meal.analysis.progressMatch' => 'Сопоставить',
			'meal.analysis.progressCheck' => 'Проверить',
			'meal.analysis.progressFinish' => 'Завершить',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'Обнаружено ${count} ингредиентов',
			'meal.analysis.ingredientsPending' => 'Сканирование ингредиентов…',
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
			'favorites.title' => 'Избранное',
			'favorites.empty' => 'Ещё нет избранных блюд.',
			'favorites.searchPlaceholder' => 'Поиск по избранным блюдам',
			'favorites.searchEmptyTitle' => 'Нет избранного по вашему запросу',
			'favorites.searchEmptySubtitle' => 'Попробуйте другое название блюда, количество или тип приёма пищи.',
			'favorites.sortLabel' => 'Сортировать избранное',
			'favorites.undo' => 'Отменить',
			'favorites.removed' => ({required Object name}) => 'Удалено ${name} из избранного',
			'favorites.sortOptions.recent' => 'Недавние',
			'favorites.sortOptions.calories' => 'Калории',
			'favorites.sortOptions.alphabetical' => 'А-Я',
			'profile.title' => 'Профиль',
			'profile.noProfileData' => 'Данные профиля не найдены',
			'profile.yourProfile' => 'Ваш профиль',
			'profile.viewAndManage' => 'Просматривайте и управляйте информацией о здоровье',
			'profile.sections.profile' => 'ПРОФИЛЬ',
			'profile.sections.basicInformation' => 'ОСНОВНАЯ ИНФОРМАЦИЯ',
			'profile.sections.goalsAndActivity' => 'ЦЕЛИ И АКТИВНОСТЬ',
			'profile.sections.calculatedValues' => 'РАССЧИТАННЫЕ ЗНАЧЕНИЯ',
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
			'profile.calculatedValues.dailyGoal' => 'Дневная цель',
			'profile.calculatedValues.calPerDay' => 'ккал/день',
			'profile.calculatedValues.notAvailable' => 'н/д',
			'healthScore.title' => 'Оценка здоровья',
			'healthScore.whyThisScore' => 'Почему такая оценка?',
			'healthScore.note' => 'Эта оценка — приблизительная оценка ИИ на основе выявленных ингредиентов и питательной плотности. Всегда консультируйтесь со специалистом по вопросам питания.',
			'healthScore.unhealthy' => 'Нездорово',
			'healthScore.healthy' => 'Здорово',
			'healthScore.neutral' => 'Нейтрально',
			'editProfile.title' => 'Редактировать профиль',
			'editProfile.sections.personalInformation' => 'ЛИЧНАЯ ИНФОРМАЦИЯ',
			'editProfile.sections.physicalMeasurements' => 'ФИЗИЧЕСКИЕ ПОКАЗАТЕЛИ',
			'editProfile.sections.goalsAndActivity' => 'ЦЕЛИ И АКТИВНОСТЬ',
			'editProfile.gender' => 'Пол',
			'editProfile.dateOfBirth' => 'Дата рождения',
			'editProfile.height' => 'Рост',
			'editProfile.weight' => 'Вес',
			'editProfile.weightGoal' => 'Цель по весу',
			'editProfile.activityLevel' => 'Уровень активности',
			'editProfile.metric' => 'Метрические',
			'editProfile.imperial' => 'Имперские',
			'editProfile.unitCm' => 'см',
			'editProfile.unitFt' => 'фут',
			'editProfile.unitKg' => 'кг',
			'editProfile.unitLbs' => 'фунт',
			'editProfile.metricCm' => 'Метрические (см)',
			'editProfile.imperialFtIn' => 'Имперские (фут/дюйм)',
			'editProfile.metricKg' => 'Метрические (кг)',
			'editProfile.imperialLbs' => 'Имперские (фунты)',
			'editProfile.genders.male' => 'Мужчина',
			'editProfile.genders.female' => 'Женщина',
			'editProfile.genders.other' => 'Другое',
			'editProfile.weightGoals.loseWeight.name' => 'Похудеть',
			'editProfile.weightGoals.loseWeight.description' => 'Создать дефицит калорий для снижения веса',
			'editProfile.weightGoals.maintainWeight.name' => 'Поддерживать вес',
			'editProfile.weightGoals.maintainWeight.description' => 'Сохранять текущий вес',
			'editProfile.weightGoals.gainWeight.name' => 'Набрать вес',
			'editProfile.weightGoals.gainWeight.description' => 'Создать профицит калорий для набора веса',
			'editProfile.activityLevels.sedentary.name' => 'Сидячий образ',
			'editProfile.activityLevels.sedentary.description' => 'Мало или нет упражнений',
			'editProfile.activityLevels.lightlyActive.name' => 'Небольшая активность',
			'editProfile.activityLevels.lightlyActive.description' => 'Лёгкие тренировки 1–3 дня/неделю',
			'editProfile.activityLevels.moderatelyActive.name' => 'Умеренная активность',
			'editProfile.activityLevels.moderatelyActive.description' => 'Умеренные тренировки 3–5 дней/неделю',
			'editProfile.activityLevels.veryActive.name' => 'Высокая активность',
			'editProfile.activityLevels.veryActive.description' => 'Интенсивные тренировки 6–7 дней/неделю',
			'editProfile.activityLevels.extremelyActive.name' => 'Чрезвычайная активность',
			'editProfile.activityLevels.extremelyActive.description' => 'Очень тяжёлые тренировки, физическая работа',
			'settings.title' => 'Настройки',
			'settings.sections.profile' => 'ПРОФИЛЬ',
			'settings.sections.localization' => 'ЛОКАЛИЗАЦИЯ',
			'settings.sections.notifications' => 'УВЕДОМЛЕНИЯ',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'ПОДДЕРЖКА И ПРАВО',
			'settings.sections.about' => 'О ПРИЛОЖЕНИИ',
			'settings.sections.dangerZone' => 'ОПАСНАЯ ЗОНА',
			'settings.sections.developer' => 'РАЗРАБОТЧИК',
			'settings.editProfile.title' => 'Редактировать профиль',
			'settings.editProfile.subtitle' => 'Обновите вашу личную информацию',
			'settings.language.title' => 'Язык',
			'settings.language.subtitle' => 'Выберите предпочтительный язык',
			'settings.language.searchHint' => 'Поиск языков...',
			'settings.language.noResults' => 'Ничего не найдено',
			'settings.heightUnit.title' => 'Единицы роста',
			'settings.weightUnit.title' => 'Единицы веса',
			'settings.mealReminders.title' => 'Напоминания о приёмах пищи',
			'settings.mealReminders.subtitle' => 'Оставайтесь на курсе с своевременными напоминаниями',
			'settings.theme.title' => 'Тема',
			'settings.theme.light' => 'Светлая',
			'settings.theme.dark' => 'Тёмная',
			'settings.theme.system' => 'Системная',
			'settings.sendFeedback.title' => 'Отправить отзыв',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Помогите улучшить ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Отзыв о приложении ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Пожалуйста, напишите ваш отзыв ниже:',
			'settings.sendFeedback.appVersion' => 'Версия приложения',
			'settings.sendFeedback.device' => 'Устройство',
			'settings.sendFeedback.osVersion' => 'Версия ОС',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Экспорт истории приёмов пищи',
			'settings.exportMealHistory.subtitle' => 'Поделитесь CSV со своими записями',
			'settings.exportMealHistory.shareText' => 'Экспорт истории приёмов пищи Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Не удалось экспортировать историю приёмов пищи: ${error}',
			'settings.clearAllData.title' => 'Очистить все данные',
			'settings.clearAllData.subtitle' => 'Необратимо удалить всю вашу информацию',
			'settings.clearAllData.confirmationTitle' => 'Очистить все данные?',
			'settings.clearAllData.confirmationMessage' => 'Это действие необратимо. Все ваши записи, избранное и настройки профиля будут удалены навсегда.',
			'settings.clearAllData.cancel' => 'Отмена',
			'settings.clearAllData.clearEverything' => 'Удалить всё',
			'settings.debugOptions.title' => 'Параметры отладки',
			'settings.developerModeEnabled' => 'Режим разработчика включён!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Просмотр и управление разрешениями',
			'settings.healthConnect.unavailable.title' => 'Health Connect недоступен',
			'settings.healthConnect.unavailable.description' => 'Health Connect недоступен на этом устройстве. Установите Health Connect из Play Маркета (Android 9+) или обновитесь до Android 14+.',
			'settings.healthConnect.permissions.title' => 'Разрешения',
			'settings.healthConnect.permissions.description' => 'Для интеграции с Health Connect требуются следующие разрешения:',
			'settings.healthConnect.permissions.granted' => 'Предоставлено',
			'settings.healthConnect.permissions.notGranted' => 'Не предоставлено',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Чтение общего калоража, сожжённого за день',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Позволяет приложению читать общее количество сожжённых калорий из Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Разрешение используется для отображения вашего дневного расхода калорий в приложении, чтобы помочь понять суммарные энергозатраты за день.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Чтение данных о питании',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Позволяет приложению читать данные о питании из Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Это разрешение позволяет читать информацию о питании, записанную другими приложениями, подключёнными к Health Connect, для комплексного обзора вашего рациона.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Запись данных о питании',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Позволяет приложению записывать данные о питании в Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Это разрешение позволяет синхронизировать ваши записанные блюда с Health Connect, делая данные о питании доступными в других ваших приложениях для здоровья и фитнеса.',
			'settings.healthConnect.managePermissions' => 'Управлять разрешениями',
			'settings.healthConnect.openSettings' => 'Открыть настройки Health Connect',
			'settings.healthConnect.requestPermissions' => 'Запросить разрешения',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Запрос разрешений отменён или завершился неудачей. Повторите попытку или предоставьте разрешения вручную в настройках Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Не удалось запросить разрешения. Повторите попытку или предоставьте разрешения вручную в настройках Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Запрос...',
			'settings.about.title' => 'О приложении',
			'settings.about.tagline' => 'Быстро, бесплатно и с приоритетом приватности — для осознанного контроля калорий',
			'settings.about.ourStory.title' => 'Наша история',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} родился из простой проблемы: большинство приложений для учёта калорий слишком сложны, требуют постоянного ручного ввода, берут высокую подписку или жертвуют приватностью.\n\nКак независимый разработчик, я хотел создать что-то проще и честнее — приложение, которое использует ИИ, чтобы снизить усилия, остаётся быстрым и бесплатным, и с уважением относится к вашим данным о здоровье.\n\n${appLabel} — это приложение, которого мне не хватало: без аккаунтов, без трекинга, без рекламы — только ясные, практичные инсайты и ваши цели здоровья.',
			'settings.about.privacy.title' => 'Ваша приватность важна',
			'settings.about.privacy.description' => 'Приватность — не дополнение, а принцип дизайна. Вот что это означает на практике:',
			'settings.about.privacy.noAccounts' => 'Аккаунты не требуются\nПользуйтесь приложением сразу. Без регистрации и идентификации.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Без поведенческого слежения\n${appLabel} не отслеживает вашу активность, не строит профили и не следит за вами в приложениях или на сайтах.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Без рекламы по умолчанию\n${appLabel} создан без рекламы и монетизации на основе данных.',
			'settings.about.privacy.noDataSelling' => 'Без продажи данных\nВаши данные о здоровье никогда не продаются и не передаются третьим лицам.',
			'settings.about.privacy.localStorage' => 'Локальное хранение в приоритете\nВаши данные остаются на вашем устройстве.',
			'settings.about.privacy.privacyPolicy' => 'Политика конфиденциальности',
			'settings.about.developer.title' => 'Создано одним разработчиком',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} разработано и поддерживается одним разработчиком, сосредоточенным на спокойном, уважающем приватность софте для здоровья.\n\nОбратную связь я читаю лично — она помогает формировать будущее приложения.',
			'settings.about.developer.website' => 'Сайт',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Нравится ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Ваш отзыв помогает сделать ${appLabel} лучше для всех.',
			'settings.about.feedback.rateApp' => 'Оценить в Play Маркете',
			'settings.about.feedback.sendFeedback' => 'Отправить отзыв',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Сборка ${buildNumber}',
			'reminders.title' => 'Оставайтесь на курсе с напоминаниями',
			'reminders.description' => 'Получайте мягкие напоминания фиксировать приёмы пищи и сохранять последовательность на пути к целям в питании',
			'reminders.notificationsEnabled' => 'Уведомления включены',
			'reminders.notificationsDisabled' => 'Уведомления выключены',
			'reminders.enabledSubtitle' => 'Вы будете получать напоминания о приёмах пищи',
			'reminders.disabledSubtitle' => 'Включите уведомления, чтобы получать напоминания',
			'reminders.mealReminders' => 'Напоминания о приёмах пищи',
			'reminders.breakfast' => 'Завтрак',
			'reminders.lunch' => 'Обед',
			'reminders.dinner' => 'Ужин',
			'reminders.snack' => 'Перекус',
			'reminders.unknown' => 'Неизвестно',
			'reminders.change' => 'Изменить',
			'reminders.enableNotifications' => 'Включить уведомления',
			'reminders.skipForNow' => 'Пока пропустить',
			'reminders.saveChanges' => 'Сохранить изменения',
			'reminders.enabledSuccessfully' => 'Уведомления успешно включены!',
			'reminders.permissionDenied' => 'Разрешение на уведомления отклонено',
			'reminders.errorEnabling' => ({required Object error}) => 'Ошибка включения уведомлений: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Ошибка завершения настройки: ${error}',
			'notifications.breakfast.title' => 'Время завтрака! 🍳',
			'notifications.breakfast.body' => 'Не забудьте записать завтрак',
			'notifications.lunch.title' => 'Время обеда! 🥗',
			'notifications.lunch.body' => 'Пора записать обед',
			'notifications.dinner.title' => 'Время ужина! 🍽️',
			'notifications.dinner.body' => 'Не забудьте записать ужин',
			'notifications.snack.title' => 'Время перекуса! 🍎',
			'notifications.snack.body' => 'Пора для полезного перекуса',
			'notifications.test.title' => 'Тестовое уведомление',
			'login.title' => 'Вход',
			'login.signInWithGoogle' => 'Войти через Google',
			'login.signInFailed' => 'Вход через Google не удался или был отменён.',
			'disclaimer.pleaseNote' => 'Обратите внимание',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} предоставляет примерные данные о питательности. Точность зависит от вашего ввода и вариаций блюд. Используйте как ориентир, а не окончательный источник. За персональными рекомендациями обращайтесь к специалисту.',
			'disclaimer.snap.portionSize.title' => 'Размер порции',
			'disclaimer.snap.portionSize.description' => 'Точность оценок сильно зависит от правильной оценки размера порции.',
			'disclaimer.snap.preparationMethods.title' => 'Способ приготовления',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Методы готовки могут значительно изменять пищевую ценность. Оценки ${appLabel} могут учитывать это не всегда.',
			'disclaimer.snap.ingredients.title' => 'Ингредиенты',
			'disclaimer.snap.ingredients.description' => 'Сложные блюда со скрытыми ингредиентами могут приводить к менее точным оценкам.',
			'disclaimer.snap.databaseLimitations.title' => 'Ограничения базы данных',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'База продуктов ${appLabel} обширна, но может содержать не все продукты и вариации.',
			'disclaimer.weightEstimate.title' => 'Об оценке изменения веса',
			'disclaimer.weightEstimate.description' => 'Прогноз изменения веса — теоретическая оценка на основе модели «калории в — калории из». Это мотивационный ориентир, а не точное предсказание.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Точность калорий',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Оценка настолько точна, насколько точны ваши данные о потреблении и расходе калорий. Неверный учёт приведёт к неточному прогнозу.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Биологические факторы',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Реальная динамика веса зависит от метаболизма, гормонов, сна, стресса, гидратации и других индивидуальных факторов, которые ${appLabel} не измеряет.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Вода и колебания',
			'disclaimer.weightEstimate.waterWeight.description' => 'Дневной вес может заметно колебаться из‑за задержки воды, пищеварения и времени суток. Оценка это не учитывает.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Профессиональные рекомендации',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Не используйте эту оценку для медицинских решений. Всегда консультируйтесь с врачом или диетологом по персональному управлению весом.',
			'disclaimer.healthMetrics.description' => 'Эти показатели помогают понять энергетические потребности организма и настраивать цели в питании.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Базовый обмен веществ (BMR) — это количество калорий, которое ваш организм сжигает в покое для базовых функций, таких как дыхание и кровообращение. BMR зависит от возраста, пола, роста и веса. Более высокий BMR означает, что в покое вы сжигаете больше калорий — чаще из‑за большего объёма мышц, меньшего возраста или мужского пола. Более низкий BMR обычно указывает на меньшую мышечную массу, больший возраст или женский пол.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Суточные энергозатраты (TDEE) — это общее количество калорий, сжигаемых за день: BMR плюс активность и повседневное движение. TDEE зависит от BMR и уровня активности. Более высокий TDEE — больше калорий сжигается в целом (вы более активны или выше BMR). Низкий TDEE — меньше активности или ниже BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Дневная цель',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Дневная цель — рекомендуемое потребление калорий на основе вашего TDEE и цели по весу. Для снижения веса — меньше TDEE, для поддержания — около TDEE, для набора — больше TDEE. Это помогает двигаться к цели здоровым темпом.',
			'disclaimer.calorieExpenditure.title' => 'Оценка расхода калорий',
			'disclaimer.calorieExpenditure.description' => 'Когда данные Health Connect недоступны, мы оцениваем сегодняшние сожжённые калории по вашему BMR и уровню активности (TDEE), масштабируя под прошедшую часть дня.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Как считается оценка',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Мы вычисляем ваш TDEE (по профилю) и умножаем на долю прошедшего дня (часы + минуты) / 24, чтобы оценить уже сожжённые калории.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Профессиональные рекомендации',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Не используйте эту оценку для медицинских решений. Всегда консультируйтесь с врачом или диетологом за персональными рекомендациями.',
			'common.close' => 'Закрыть',
			'common.kContinue' => 'Продолжить',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Нравится ${appLabel}?',
			'feedbackRating.yes' => 'Да, мне нравится',
			'feedbackRating.no' => 'Не очень',
			'feedbackRating.rateStepHeading' => 'Оценить в Play Маркете',
			'feedbackRating.emailStepHeading' => 'Отправить отзыв по email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Быстрая оценка помогает другим найти ${appLabel} и поддерживает развитие. Вы уделите минутку?',
			'feedbackRating.shareFeedbackViaEmail' => 'Ваши мысли задают направление — мы читаем каждое сообщение. Хотите поделиться отзывом по email?',
			'feedbackRating.rateCta' => 'Оценить в Play Маркете',
			'feedbackRating.maybeLater' => 'Может позже',
			'feedbackRating.sendFeedback' => 'Отправить отзыв',
			'feedbackRating.noThanks' => 'Нет, спасибо',
			'feedbackRating.aboutUsDescription' => 'Сделано с заботой небольшой командой. Мы сосредоточены на приватности, простоте и формировании здоровых пищевых привычек.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Интересно, кто стоит за ${appLabel}? Смотрите ',
			'feedbackRating.aboutUsLinkLabel' => 'О нас',
			'feedbackRating.thankYouMessage' => 'Спасибо! Мы спросим в другой раз.',
			'health.syncFailed' => 'Не удалось синхронизировать с Health Connect',
			'health.mealSynced' => 'Блюдо синхронизировано с Health Connect',
			_ => null,
		};
	}
}
