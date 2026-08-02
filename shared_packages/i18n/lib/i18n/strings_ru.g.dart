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
	@override String get rateLimitExceeded => 'Вы сделали слишком много запросов. Пожалуйста, подождите немного и попробуйте снова.';
	@override String get networkError => 'Ошибка сети. Пожалуйста, проверьте подключение к интернету.';
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
	@override String get subtitle => 'Ваш персональный помощник по питанию на базе AI';
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
	@override String get noMeals => 'Нет записанных приёмов пищи';
	@override String get emptyMessage => 'Сфотографируйте последний приём пищи, чтобы записать его здесь.';
	@override String get today => 'Сегодня';
	@override String get yesterday => 'Вчера';
}

// Path: meal
class _TranslationsMealRu implements TranslationsMealEn {
	_TranslationsMealRu._(this._root);

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
	@override String get mealQuantity => 'Количество';
	@override String get mealQuantityHint => 'например, 1 миска, 2 ломтика';
	@override String get timeOfMeal => 'Время приёма';
	@override String get timeOfMealHint => 'Выберите время приёма пищи';
	@override String get mealType => 'Тип приёма';
	@override late final _TranslationsMealNutritionRu nutrition = _TranslationsMealNutritionRu._(_root);
	@override late final _TranslationsMealDeleteConfirmationRu deleteConfirmation = _TranslationsMealDeleteConfirmationRu._(_root);
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
	@override late final _TranslationsMealQuestionFlowRu questionFlow = _TranslationsMealQuestionFlowRu._(_root);
	@override late final _TranslationsMealAnalysisRu analysis = _TranslationsMealAnalysisRu._(_root);
	@override late final _TranslationsMealFeedbackRu feedback = _TranslationsMealFeedbackRu._(_root);
}

// Path: favorites
class _TranslationsFavoritesRu implements TranslationsFavoritesEn {
	_TranslationsFavoritesRu._(this._root);

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
	@override String get viewAndManage => 'Просмотр и управление информацией о здоровье';
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
	@override String get title => 'Индекс здоровья';
	@override String get whyThisScore => 'Почему такой балл?';
	@override String get note => 'Этот показатель — оценка AI на основе распознанных ингредиентов и пищевой ценности. Всегда консультируйтесь со специалистом для персональных рекомендаций.';
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
	@override String get metric => 'Метрическая';
	@override String get imperial => 'Имперская';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Метрическая (cm)';
	@override String get imperialFtIn => 'Имперская (ft/in)';
	@override String get metricKg => 'Метрическая (kg)';
	@override String get imperialLbs => 'Имперская (lbs)';
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
class _TranslationsHealthRu implements TranslationsHealthEn {
	_TranslationsHealthRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Не удалось синхронизировать с Health Connect';
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
	@override String get title => 'Ваш пол?';
	@override String get description => 'Пол помогает точно рассчитать ваш базальный уровень обмена веществ (BMR).';
	@override String get next => 'Далее';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightRu implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Какой у вас рост?';
	@override String get description => 'Рост помогает точно рассчитать ваш BMI и потребности в энергии.';
	@override String get metric => 'Метрическая';
	@override String get imperial => 'Имперская';
	@override String get next => 'Далее';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightRu implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightRu._(this._root);

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
class _TranslationsOnboardingAgeRu implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Когда у вас день рождения?';
	@override String get description => 'Возраст помогает нам точно рассчитать вашу потребность в калориях.';
	@override String get next => 'Далее';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleRu implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Ниже';
	@override String get healthy => 'Здоровый';
	@override String get overweight => 'Выше';
	@override String get obese => 'Ожирение';
	@override late final _TranslationsOnboardingBmiScaleCategoriesRu categories = _TranslationsOnboardingBmiScaleCategoriesRu._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesRu messages = _TranslationsOnboardingBmiScaleMessagesRu._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalRu implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Какая у вас цель?';
	@override String get description => 'Выберите цель, которая лучше всего описывает то, чего вы хотите достичь';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelRu implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Насколько вы активны?';
	@override String get description => 'Это помогает точнее рассчитать ваши ежедневные потребности в калориях';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectRu implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Подключитесь к Health Connect';
	@override String get description => 'Синхронизируйте данные о здоровье для более точных сведений и автоматического учёта сожжённых калорий';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingRu automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingRu._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsRu progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsRu._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationRu seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationRu._(_root);
	@override String get connected => 'Health Connect подключён';
	@override String get notConnected => 'Health Connect не подключён';
	@override String get setup => 'Настроить Health Connect';
	@override String get skipForNow => 'Пропустить';
	@override String get statusConnected => 'Health Connect подключён.';
	@override String get statusSuccess => 'Health Connect успешно подключён!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Доступ запрещён. Пожалуйста, включите разрешения Health Connect в настройках телефона для ${appLabel}.';
	@override String statusError({required Object error}) => 'Ошибка при настройке Health Connect: ${error}';
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
class _TranslationsHomeDailyGoalRu implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalRu._(this._root);

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
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryRu implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryRu._(this._root);

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
class _TranslationsHomeIntakeProgressRu implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сегодняшнее распределение макроэлементов';
	@override String get target => 'Цель';
	@override String get current => 'Текущее';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryRu implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'История макроэлементов за 7 дней';
	@override String get trendTitle => 'Тенденция за сегодня';
	@override String peakHour({required Object hour}) => 'Пик: ${hour}:00';
	@override String get noHistoryYet => 'Пока нет данных';
	@override String get startLogging => 'Начните записывать приёмы пищи, чтобы увидеть\nтут 7‑дневные макро‑тенденции';
}

// Path: home.mealLog
class _TranslationsHomeMealLogRu implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Записи приёмов пищи';
	@override String get emptyMessage => 'Сфотографируйте последний приём пищи, чтобы записать его здесь.';
	@override String get noMealsToday => 'Сегодня приёмы пищи не зафиксированы';
	@override String get seeAllMeals => 'Посмотреть все приёмы';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionRu implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Быстро добавить с AI';
	@override String get description => 'Опишите приём пищи, и AI подготовит детали.';
	@override String get hint => 'например: На завтрак у меня была большая миска овсянки с бананом и порцией сывороточного протеина ...';
	@override String get analyzeMeal => 'Проанализировать блюдо';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsRu implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsRu._(this._root);

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
class _TranslationsHomeMealSnapRu implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapRu._(this._root);

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
class _TranslationsHomeConnectHealthRu implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Синхронизировать с Health Connect';
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
	@override String get title => 'Удалить приём';
	@override String get message => 'Вы уверены, что хотите удалить эту запись?';
	@override String get cancel => 'Отмена';
	@override String get delete => 'Удалить';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowRu implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Вопрос ${current} из ${total}';
	@override String get noQuestionsAvailable => 'Вопросов нет';
	@override String get next => 'Далее';
	@override String get continueLabel => 'Продолжить';
}

// Path: meal.analysis
class _TranslationsMealAnalysisRu implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisRu._(this._root);

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
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Совет: регулярность важнее идеала — регулярные записи показывают полезные закономерности.';
	@override String get offlineTip1 => 'Совет: для фото используйте естественный свет и вид сверху — это помогает точнее оценить порции.';
	@override String get offlineTip2 => 'Совет: указывайте напитки, соусы и масло для жарки — они часто добавляют калории, которые забывают учесть.';
	@override String get offlineTip3 => 'Совет: быстрая заметка о порции (1 миска, большой кофе) делает оценки значительно точнее.';
	@override String get offlineTip4 => 'Совет: запись после еды всё ещё формирует привычку; совершенство не обязательно.';
	@override String get offlineTip5 => 'Совет: указывайте способ приготовления, когда он сильно влияет на калории (жареное vs запечённое).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackRu implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackRu._(this._root);

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
class _TranslationsFavoritesSortOptionsRu implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Недавние';
	@override String get calories => 'Калории';
	@override String get alphabetical => 'A‑Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsRu implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ПРОФИЛЬ';
	@override String get basicInformation => 'ОСНОВНЫЕ ДАННЫЕ';
	@override String get goalsAndActivity => 'ЦЕЛИ И АКТИВНОСТЬ';
	@override String get calculatedValues => 'РАСЧЁТНЫЕ ПОКАЗАТЕЛИ';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesRu implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Суточная цель';
	@override String get calPerDay => 'cal/day';
	@override String get notAvailable => 'Н/Д';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsRu implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ЛИЧНЫЕ ДАННЫЕ';
	@override String get physicalMeasurements => 'ФИЗИЧЕСКИЕ ПОКАЗАТЕЛИ';
	@override String get goalsAndActivity => 'ЦЕЛИ И АКТИВНОСТЬ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersRu implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get male => 'Мужской';
	@override String get female => 'Женский';
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
	@override String get supportAndLegal => 'ПОДДЕРЖКА И ЮРИДИЧЕСКОЕ';
	@override String get about => 'О ПРОГРАММЕ';
	@override String get dangerZone => 'ОПАСНАЯ ЗОНА';
	@override String get developer => 'РАЗРАБОТЧИК';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileRu implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редактировать профиль';
	@override String get subtitle => 'Обновите личные данные';
}

// Path: settings.language
class _TranslationsSettingsLanguageRu implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Язык';
	@override String get subtitle => 'Выберите предпочитаемый язык';
	@override String get searchHint => 'Поиск языков...';
	@override String get noResults => 'Результаты не найдены';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitRu implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Единица роста';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitRu implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Единица веса';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersRu implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Напоминания о приёмах пищи';
	@override String get subtitle => 'Оставайтесь в графике с вовремя появляющимися уведомлениями';
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
	@override String emailSubject({required Object appLabel}) => '${appLabel}: отзыв о приложении';
	@override String get emailBodyPrefix => 'Пожалуйста, оставьте ваш отзыв ниже:';
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
	@override String get subtitle => 'Поделиться CSV с вашими записями';
	@override String get shareText => 'Экспорт истории приёмов пищи Calorify';
	@override String failed({required Object error}) => 'Не удалось экспортировать историю: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataRu implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Удалить все данные';
	@override String get subtitle => 'Безвозвратно удалить всю вашу информацию';
	@override String get confirmationTitle => 'Удалить все данные?';
	@override String get confirmationMessage => 'Это действие нельзя отменить. Все ваши записи, избранное и настройки профиля будут удалены навсегда.';
	@override String get cancel => 'Отмена';
	@override String get clearEverything => 'Удалить всё';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsRu implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Опции отладки';
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
	@override String get managePermissions => 'Управление разрешениями';
	@override String get openSettings => 'Открыть настройки Health Connect';
	@override String get requestPermissions => 'Запросить разрешения';
	@override String get permissionRequestCancelledOrFailed => 'Запрос разрешений был отменён или не удался. Пожалуйста, попробуйте снова или предоставьте разрешения вручную в настройках Health Connect.';
	@override String get permissionRequestFailed => 'Не удалось запросить разрешения. Пожалуйста, попробуйте снова или предоставьте разрешения вручную в настройках Health Connect.';
	@override String get requestingPermissions => 'Запрос разрешений...';
}

// Path: settings.about
class _TranslationsSettingsAboutRu implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'О программе';
	@override String get tagline => 'Быстро, бесплатно и с приоритетом приватности';
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
	@override String get body => 'Не забудьте зафиксировать завтрак';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchRu implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время обеда! 🥗';
	@override String get body => 'Пора зафиксировать обед';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerRu implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Время ужина! 🍽️';
	@override String get body => 'Не забудьте зафиксировать ужин';
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
	@override String description({required Object appLabel}) => '${appLabel} предоставляет оценочные данные о питании. Точность зависит от вашего ввода и вариаций пищи. Используйте как ориентир, а не как окончательный источник. Для персональных рекомендаций обратитесь к специалисту.';
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
	@override String get title => 'Оценка изменения веса';
	@override String get description => 'Прогноз изменения веса — теоретическая оценка, основанная на простой модели «калории внутрь vs калории наружу». Он предназначен для мотивации, а не как предсказание реального веса.';
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
	@override String get description => 'Эти показатели помогают понять потребности организма в энергии и направляют ваши цели по питанию.';
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
	@override String get description => 'Когда данные Health Connect недоступны, мы оцениваем сожжённые сегодня калории, используя ваш BMR и уровень активности (TDEE), масштабируя по доле дня, которая прошла.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedRu howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedRu._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRu professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRu._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionRu implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Умное распознавание еды';
	@override String get description => 'Сделайте фото — AI определит ваше блюдо';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisRu implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI‑анализ';
	@override String get description => 'Мгновенные данные о питании по вашему описанию';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationRu implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Интеграция с Health Connect';
	@override String get description => 'Подключитесь к Health Connect для более точных данных';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesRu implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Недостаточный вес';
	@override String get healthyWeight => 'Здоровый вес';
	@override String get overweight => 'Избыточный вес';
	@override String get obese => 'Ожирение';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesRu implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Мы поможем составить план для достижения сбалансированного веса с питательными блюдами.';
	@override String get healthy => 'Отлично! Вы в здоровом диапазоне. Мы поможем сохранить вашу энергию и самочувствие.';
	@override String overweight({required Object appLabel}) => '${appLabel} упростит ваше путешествие с помощью AI‑отслеживания, чтобы вы комфортно дошли до цели.';
	@override String get obese => 'Мы поддержим вас персональными рекомендациями и устойчивыми стратегиями для ваших целей по здоровью.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingRu implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Автоматическое отслеживание калорий';
	@override String get description => 'Отслеживайте сожжённые калории из фитнес‑приложений';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsRu implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Аналитика прогресса';
	@override String get description => 'Получайте подробные сведения о тенденциях вашего здоровья';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationRu implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Бесшовная интеграция';
	@override String get description => 'Синхронизируйте данные из любимых приложений для здоровья';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessRu implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessRu._(this._root);

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
class _TranslationsOnboardingReinforcementHealthProfileRu implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileRu._(this._root);

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
class _TranslationsOnboardingReinforcementGoalLifestyleRu implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleRu._(this._root);

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
	@override String get description => 'Поддерживать текущий вес';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightRu implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Набрать вес';
	@override String get description => 'Создать излишек калорий для набора веса';
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
	@override String get description => 'Лёгкие упражнения 1–3 дня в неделю';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveRu implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Умеренно активный';
	@override String get description => 'Умеренные упражнения 3–5 дней в неделю';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveRu implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Очень активный';
	@override String get description => 'Интенсивные тренировки 6–7 дней в неделю';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveRu implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Чрезвычайно активный';
	@override String get description => 'Очень тяжёлая физическая работа или тренировки';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableRu implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect недоступен';
	@override String get description => 'Health Connect недоступен на этом устройстве. Установите Health Connect из Play Store (Android 9+) или обновите до Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsRu implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Разрешения';
	@override String get description => 'Запрашиваются следующие разрешения для интеграции с Health Connect:';
	@override String get granted => 'Разрешено';
	@override String get notGranted => 'Не разрешено';
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
	@override String content({required Object appLabel}) => '${appLabel} родился из простой фрустрации: большинство приложений для подсчёта калорий либо слишком сложны, требуют постоянного ручного ввода, берут высокую плату за подписку, либо нарушают приватность.\n\nКак одиночный разработчик, я хотел создать что‑то проще и честнее — приложение, которое использует AI, чтобы снизить усилия, остаётся быстрым и бесплатным, и уважительно относится к вашим данным о здоровье.\n\n${appLabel} — это приложение, которого мне хотелось бы: без аккаунтов, без отслеживания, без рекламы — только понятные, практичные выводы и ваши цели по здоровью.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyRu implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваша приватность важна';
	@override String get description => 'Приватность — не второстепенная мысль, а принцип проектирования. Это означает следующее:';
	@override String get noAccounts => 'Без аккаунтов\nИспользуйте приложение сразу. Никаких регистрации и идентичностей.';
	@override String noTracking({required Object appLabel}) => 'Без слежки за поведением\n${appLabel} не отслеживает вашу активность, не строит профили использования и не отслеживает вас между приложениями или сайтами.';
	@override String noAds({required Object appLabel}) => 'Без рекламы по дизайну\n${appLabel} создан работать без рекламы и монетизации на основе данных.';
	@override String get noDataSelling => 'Без продажи данных\nВаши данные о здоровье никогда не продаются и не передаются третьим лицам.';
	@override String get localStorage => 'Приоритет локального хранения\nВаши данные остаются на вашем устройстве.';
	@override String get privacyPolicy => 'Политика конфиденциальности';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperRu implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Создано одним разработчиком';
	@override String description({required Object appLabel}) => '${appLabel} создаётся и поддерживается одним разработчиком, который делает акцент на спокойном, уважающем приватность ПО для здоровья.\n\nОтзывы читаются лично и помогают формировать развитие приложения.';
	@override String get website => 'Вебсайт';
	@override String get email => 'Электронная почта';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackRu implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Понравился ${appLabel}?';
	@override String description({required Object appLabel}) => 'Ваш отзыв помогает сделать ${appLabel} лучше для всех.';
	@override String get rateApp => 'Оценить в Play Store';
	@override String get sendFeedback => 'Отправить отзыв';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeRu implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Размер порции';
	@override String get description => 'Точность оценок в значительной мере зависит от правильной оценки вами размера порции.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsRu implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Методы приготовления';
	@override String description({required Object appLabel}) => 'Методы приготовления могут существенно менять питательную ценность. Оценки ${appLabel} не всегда учитывают все эти вариации.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsRu implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ингредиенты';
	@override String get description => 'Сложные блюда с множеством скрытых ингредиентов могут давать менее точные оценки.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsRu implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ограничения базы данных';
	@override String description({required Object appLabel}) => 'База продуктов ${appLabel} обширна, но может не содержать каждой отдельной позиции или её вариаций.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyRu implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Точность калорий';
	@override String get description => 'Эта оценка точна лишь настолько, насколько точны ваши записи о потреблении и расходе калорий. Неточные записи дадут неточный прогноз.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsRu implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Биологические факторы';
	@override String description({required Object appLabel}) => 'Реальная потеря/набор веса зависит от метаболизма, гормонов, сна, стресса, гидратации и других индивидуальных факторов, которые ${appLabel} не может измерить.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightRu implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Водный вес и колебания';
	@override String get description => 'Нормальный ежедневный вес может значительно колебаться из‑за удержания воды, переваривания и времени измерения. Оценка не учитывает эти ежедневные изменения.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRu implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профессиональная консультация';
	@override String get description => 'Не используйте эту оценку для медицинских решений. Всегда консультируйтесь с врачом или диетологом для персональных рекомендаций.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrRu implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Базальный уровень метаболизма (BMR) — это количество калорий, которое ваше тело сжигает в покое для поддержания базовых функций: дыхание, кровообращение и т.д. BMR зависит от возраста, пола, роста и веса. Более высокий BMR обычно означает, что тело сжигает больше калорий в покое (чаще за счёт большей мышечной массы, молодого возраста или мужского пола). Более низкий BMR чаще указывает на меньшую мышечную массу, более зрелый возраст или женский пол.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeRu implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Полная суточная энергетическая потребность (TDEE) — это общее количество калорий, которое вы сжигаете в день, включая BMR, физическую активность и повседневную активность. TDEE зависит от BMR и уровня активности. Более высокий TDEE означает больший общий расход калорий, обычно из‑за активности или более высокого BMR. Более низкий TDEE говорит о меньшей активности или более низком BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalRu implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Суточная цель';
	@override String get description => 'Суточная цель — рекомендованный объём калорий в день на основе вашего TDEE и цели по весу. Для похудения вы потребляете меньше калорий, чем ваш TDEE. Для поддержания — примерно равное количество. Для набора — больше калорий, чем ваш TDEE. Это помогает достичь желаемого изменения веса в здоровом темпе.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedRu implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Как рассчитывается оценка';
	@override String get description => 'Мы вычисляем ваш TDEE (на основе профиля) и умножаем на долю прошедшего дня (часы + минуты) / 24, чтобы оценить, сколько калорий вы сожгли на данный момент.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRu implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профессиональная консультация';
	@override String get description => 'Не используйте эту оценку для медицинских решений. Всегда консультируйтесь с врачом или диетологом для персональных рекомендаций по управлению весом.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRu implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Чтение общего числа сожжённых калорий';
	@override String get description => 'Позволяет приложению читать ваши общие сожжённые калории из Health Connect.';
	@override String get usage => 'Это разрешение используется для отображения ежедневного сожжённого количества калорий в приложении, помогая понять общий расход энергии за день.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadRu implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Чтение данных о питании';
	@override String get description => 'Позволяет приложению читать данные о питании из Health Connect.';
	@override String get usage => 'Это разрешение позволяет приложению получать информацию о питании, которую могли записать другие приложения, подключённые к Health Connect, для полного обзора вашего питания.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteRu implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteRu._(this._root);

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
			'onboarding.healthConnect.description' => 'Синхронизируйте данные о здоровье для более точных сведений и автоматического учёта сожжённых калорий',
			'onboarding.healthConnect.automaticTracking.title' => 'Автоматическое отслеживание калорий',
			'onboarding.healthConnect.automaticTracking.description' => 'Отслеживайте сожжённые калории из фитнес‑приложений',
			'onboarding.healthConnect.progressInsights.title' => 'Аналитика прогресса',
			'onboarding.healthConnect.progressInsights.description' => 'Получайте подробные сведения о тенденциях вашего здоровья',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Бесшовная интеграция',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Синхронизируйте данные из любимых приложений для здоровья',
			'onboarding.healthConnect.connected' => 'Health Connect подключён',
			'onboarding.healthConnect.notConnected' => 'Health Connect не подключён',
			'onboarding.healthConnect.setup' => 'Настроить Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Пропустить',
			'onboarding.healthConnect.statusConnected' => 'Health Connect подключён.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect успешно подключён!',
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
			'home.dailyGoal.kcal' => 'kcal',
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
			'home.connectHealth.description' => 'Синхронизируйте данные о питании с Health Connect',
			'home.connectHealth.install' => 'Установить',
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
			'meal.analysis.title' => 'Анализируем ваше блюдо',
			'meal.analysis.stepStarted' => 'Начинаем…',
			'meal.analysis.stepDecomposition' => 'Разбираем блюдо…',
			'meal.analysis.stepIngredients' => 'Сопоставляем ингредиенты с данными о питании…',
			'meal.analysis.stepUncertainty' => 'Проверяем уверенность…',
			'meal.analysis.stepMealTypeQuestion' => 'Почти готово…',
			'meal.analysis.stepResult' => 'Формируем результат…',
			'meal.analysis.stepError' => 'Что‑то пошло не так',
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
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Совет: регулярность важнее идеала — регулярные записи показывают полезные закономерности.',
			'meal.analysis.offlineTip1' => 'Совет: для фото используйте естественный свет и вид сверху — это помогает точнее оценить порции.',
			'meal.analysis.offlineTip2' => 'Совет: указывайте напитки, соусы и масло для жарки — они часто добавляют калории, которые забывают учесть.',
			'meal.analysis.offlineTip3' => 'Совет: быстрая заметка о порции (1 миска, большой кофе) делает оценки значительно точнее.',
			'meal.analysis.offlineTip4' => 'Совет: запись после еды всё ещё формирует привычку; совершенство не обязательно.',
			'meal.analysis.offlineTip5' => 'Совет: указывайте способ приготовления, когда он сильно влияет на калории (жареное vs запечённое).',
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
			'profile.calculatedValues.calPerDay' => 'cal/day',
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
			'editProfile.unitLbs' => 'lbs',
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
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
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
			'settings.clearAllData.subtitle' => 'Безвозвратно удалить всю вашу информацию',
			'settings.clearAllData.confirmationTitle' => 'Удалить все данные?',
			'settings.clearAllData.confirmationMessage' => 'Это действие нельзя отменить. Все ваши записи, избранное и настройки профиля будут удалены навсегда.',
			'settings.clearAllData.cancel' => 'Отмена',
			'settings.clearAllData.clearEverything' => 'Удалить всё',
			'settings.debugOptions.title' => 'Опции отладки',
			'settings.developerModeEnabled' => 'Режим разработчика включён!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Просмотр и управление разрешениями',
			'settings.healthConnect.unavailable.title' => 'Health Connect недоступен',
			'settings.healthConnect.unavailable.description' => 'Health Connect недоступен на этом устройстве. Установите Health Connect из Play Store (Android 9+) или обновите до Android 14+.',
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
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Без слежки за поведением\n${appLabel} не отслеживает вашу активность, не строит профили использования и не отслеживает вас между приложениями или сайтами.',
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
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
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
