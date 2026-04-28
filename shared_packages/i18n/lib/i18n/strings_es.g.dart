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
class TranslationsEs with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Español';
	@override String get flag => '🇪🇸';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsEs errors = _TranslationsErrorsEs._(_root);
	@override late final _TranslationsOnboardingEs onboarding = _TranslationsOnboardingEs._(_root);
	@override late final _TranslationsTabsEs tabs = _TranslationsTabsEs._(_root);
	@override late final _TranslationsHomeEs home = _TranslationsHomeEs._(_root);
	@override late final _TranslationsHistoryEs history = _TranslationsHistoryEs._(_root);
	@override late final _TranslationsMealEs meal = _TranslationsMealEs._(_root);
	@override late final _TranslationsFavoritesEs favorites = _TranslationsFavoritesEs._(_root);
	@override late final _TranslationsProfileEs profile = _TranslationsProfileEs._(_root);
	@override late final _TranslationsHealthScoreEs healthScore = _TranslationsHealthScoreEs._(_root);
	@override late final _TranslationsEditProfileEs editProfile = _TranslationsEditProfileEs._(_root);
	@override late final _TranslationsSettingsEs settings = _TranslationsSettingsEs._(_root);
	@override late final _TranslationsRemindersEs reminders = _TranslationsRemindersEs._(_root);
	@override late final _TranslationsNotificationsEs notifications = _TranslationsNotificationsEs._(_root);
	@override late final _TranslationsLoginEs login = _TranslationsLoginEs._(_root);
	@override late final _TranslationsDisclaimerEs disclaimer = _TranslationsDisclaimerEs._(_root);
	@override late final _TranslationsCommonEs common = _TranslationsCommonEs._(_root);
	@override late final _TranslationsFeedbackRatingEs feedbackRating = _TranslationsFeedbackRatingEs._(_root);
	@override late final _TranslationsHealthEs health = _TranslationsHealthEs._(_root);
}

// Path: errors
class _TranslationsErrorsEs implements TranslationsErrorsEn {
	_TranslationsErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Has hecho demasiadas solicitudes. Espera un momento antes de intentarlo de nuevo.';
	@override String get networkError => 'Error de red. Comprueba tu conexión a internet.';
	@override String get unknownError => 'Algo salió mal. Inténtalo de nuevo más tarde.';
	@override String get loadingProfileData => 'Error al cargar los datos del perfil';
	@override String get somethingWentWrong => 'Algo salió mal.';
	@override String get retry => 'Reintentar';
}

// Path: onboarding
class _TranslationsOnboardingEs implements TranslationsOnboardingEn {
	_TranslationsOnboardingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bienvenido a ${appLabel}';
	@override String get subtitle => 'Tu compañero personal de nutrición impulsado por IA';
	@override String get getStarted => 'Empezar';
	@override late final _TranslationsOnboardingFeaturesEs features = _TranslationsOnboardingFeaturesEs._(_root);
	@override late final _TranslationsOnboardingGenderEs gender = _TranslationsOnboardingGenderEs._(_root);
	@override late final _TranslationsOnboardingHeightEs height = _TranslationsOnboardingHeightEs._(_root);
	@override late final _TranslationsOnboardingWeightEs weight = _TranslationsOnboardingWeightEs._(_root);
	@override late final _TranslationsOnboardingAgeEs age = _TranslationsOnboardingAgeEs._(_root);
	@override late final _TranslationsOnboardingBmiScaleEs bmiScale = _TranslationsOnboardingBmiScaleEs._(_root);
	@override late final _TranslationsOnboardingWeightGoalEs weightGoal = _TranslationsOnboardingWeightGoalEs._(_root);
	@override late final _TranslationsOnboardingActivityLevelEs activityLevel = _TranslationsOnboardingActivityLevelEs._(_root);
	@override late final _TranslationsOnboardingHealthConnectEs healthConnect = _TranslationsOnboardingHealthConnectEs._(_root);
	@override late final _TranslationsOnboardingReinforcementEs reinforcement = _TranslationsOnboardingReinforcementEs._(_root);
}

// Path: tabs
class _TranslationsTabsEs implements TranslationsTabsEn {
	_TranslationsTabsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Panel';
	@override String get history => 'Historial';
}

// Path: home
class _TranslationsHomeEs implements TranslationsHomeEn {
	_TranslationsHomeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryEs aiSummary = _TranslationsHomeAiSummaryEs._(_root);
	@override late final _TranslationsHomeDailyGoalEs dailyGoal = _TranslationsHomeDailyGoalEs._(_root);
	@override late final _TranslationsHomeDailySummaryEs dailySummary = _TranslationsHomeDailySummaryEs._(_root);
	@override late final _TranslationsHomeIntakeProgressEs intakeProgress = _TranslationsHomeIntakeProgressEs._(_root);
	@override late final _TranslationsHomeIntakeHistoryEs intakeHistory = _TranslationsHomeIntakeHistoryEs._(_root);
	@override late final _TranslationsHomeMealLogEs mealLog = _TranslationsHomeMealLogEs._(_root);
	@override late final _TranslationsHomeMealDescriptionEs mealDescription = _TranslationsHomeMealDescriptionEs._(_root);
	@override late final _TranslationsHomeFavoriteMealsEs favoriteMeals = _TranslationsHomeFavoriteMealsEs._(_root);
	@override late final _TranslationsHomeMealSnapEs mealSnap = _TranslationsHomeMealSnapEs._(_root);
	@override late final _TranslationsHomeConnectHealthEs connectHealth = _TranslationsHomeConnectHealthEs._(_root);
}

// Path: history
class _TranslationsHistoryEs implements TranslationsHistoryEn {
	_TranslationsHistoryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'No hay comidas registradas';
	@override String get emptyMessage => 'Toma una foto de tu última comida para registrarla aquí.';
	@override String get today => 'Hoy';
	@override String get yesterday => 'Ayer';
}

// Path: meal
class _TranslationsMealEs implements TranslationsMealEn {
	_TranslationsMealEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get ohNo => '¡Oh no!';
	@override String get delete => 'Eliminar';
	@override String get editMeal => 'Editar comida';
	@override String get addMeal => 'Añadir comida';
	@override String get saveMeal => 'Guardar comida';
	@override String get save => 'Guardar';
	@override String get mealName => 'Nombre de la comida';
	@override String get mealNameHint => 'p. ej., Huevos revueltos con tostadas';
	@override String get mealQuantity => 'Cantidad de la comida';
	@override String get mealQuantityHint => 'p. ej., 1 tazón, 2 rebanadas';
	@override String get timeOfMeal => 'Hora de la comida';
	@override String get timeOfMealHint => 'Selecciona la hora a la que comiste';
	@override String get mealType => 'Tipo de comida';
	@override late final _TranslationsMealNutritionEs nutrition = _TranslationsMealNutritionEs._(_root);
	@override late final _TranslationsMealDeleteConfirmationEs deleteConfirmation = _TranslationsMealDeleteConfirmationEs._(_root);
	@override String get addedToLog => '¡Comida añadida a tu registro!';
	@override String couldNotAdd({required Object error}) => 'No se pudo añadir la comida: ${error}';
	@override String get savedSuccessfully => '¡Comida añadida correctamente!';
	@override String get updatedSuccessfully => '¡Comida actualizada correctamente!';
	@override String errorSaving({required Object error}) => 'Error al guardar la comida: ${error}';
	@override String get removedFromFavorites => '¡Eliminado de favoritos!';
	@override String get savedAsFavorite => '¡Comida guardada como favorita!';
	@override String get unfavorite => 'Quitar de favoritos';
	@override String couldNotUpdateFavorite({required Object error}) => 'No se pudo actualizar el favorito: ${error}';
	@override String get feedbackThanks => '¡Gracias por tus comentarios!';
	@override String get reanalysisUpdated => 'Actualizamos el análisis de la comida según tus comentarios.';
	@override String failedToProcess({required Object error}) => 'No se pudo procesar: ${error}';
	@override String failedToProcessImage({required Object error}) => 'No se pudo procesar la imagen: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Error al comprimir la imagen: ${error}';
	@override String get failedToSave => 'No se pudieron guardar los datos. Inténtalo de nuevo.';
	@override String get skip => 'Omitir';
	@override late final _TranslationsMealVariationEs variation = _TranslationsMealVariationEs._(_root);
	@override late final _TranslationsMealAnalysisEs analysis = _TranslationsMealAnalysisEs._(_root);
	@override late final _TranslationsMealFeedbackEs feedback = _TranslationsMealFeedbackEs._(_root);
}

// Path: favorites
class _TranslationsFavoritesEs implements TranslationsFavoritesEn {
	_TranslationsFavoritesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritos';
	@override String get empty => 'Aún no hay comidas favoritas.';
	@override String get searchPlaceholder => 'Buscar comidas favoritas';
	@override String get searchEmptyTitle => 'No hay favoritos que coincidan con tu búsqueda';
	@override String get searchEmptySubtitle => 'Prueba con un nombre de comida, cantidad o tipo diferentes.';
	@override String get sortLabel => 'Ordenar favoritos';
	@override String get undo => 'Deshacer';
	@override String removed({required Object name}) => 'Se eliminó ${name} de favoritos';
	@override late final _TranslationsFavoritesSortOptionsEs sortOptions = _TranslationsFavoritesSortOptionsEs._(_root);
}

// Path: profile
class _TranslationsProfileEs implements TranslationsProfileEn {
	_TranslationsProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get noProfileData => 'No se encontraron datos de perfil';
	@override String get yourProfile => 'Tu perfil';
	@override String get viewAndManage => 'Consulta y gestiona tu información de salud';
	@override late final _TranslationsProfileSectionsEs sections = _TranslationsProfileSectionsEs._(_root);
	@override String get gender => 'Género';
	@override String get height => 'Estatura';
	@override String get weight => 'Peso';
	@override String get age => 'Edad';
	@override String get weightGoal => 'Objetivo de peso';
	@override String get targetWeight => 'Peso objetivo';
	@override String get activityLevel => 'Nivel de actividad';
	@override String get healthMetrics => 'Métricas de salud';
	@override String get notSet => 'No establecido';
	@override String get years => 'años';
	@override String get updatedSuccessfully => '¡Perfil actualizado correctamente!';
	@override late final _TranslationsProfileCalculatedValuesEs calculatedValues = _TranslationsProfileCalculatedValuesEs._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreEs implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Puntuación de salud';
	@override String get whyThisScore => '¿Por qué esta puntuación?';
	@override String get note => 'Esta puntuación es una estimación de la IA basada en los ingredientes identificados y la densidad nutricional. Consulta siempre a un profesional para recibir asesoramiento dietético.';
	@override String get unhealthy => 'Poco saludable';
	@override String get healthy => 'Saludable';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileEs implements TranslationsEditProfileEn {
	_TranslationsEditProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar perfil';
	@override late final _TranslationsEditProfileSectionsEs sections = _TranslationsEditProfileSectionsEs._(_root);
	@override String get gender => 'Género';
	@override String get dateOfBirth => 'Fecha de nacimiento';
	@override String get height => 'Estatura';
	@override String get weight => 'Peso';
	@override String get weightGoal => 'Objetivo de peso';
	@override String get activityLevel => 'Nivel de actividad';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Métrico (cm)';
	@override String get imperialFtIn => 'Imperial (ft/in)';
	@override String get metricKg => 'Métrico (kg)';
	@override String get imperialLbs => 'Imperial (lbs)';
	@override late final _TranslationsEditProfileGendersEs genders = _TranslationsEditProfileGendersEs._(_root);
	@override late final _TranslationsEditProfileWeightGoalsEs weightGoals = _TranslationsEditProfileWeightGoalsEs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsEs activityLevels = _TranslationsEditProfileActivityLevelsEs._(_root);
}

// Path: settings
class _TranslationsSettingsEs implements TranslationsSettingsEn {
	_TranslationsSettingsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ajustes';
	@override late final _TranslationsSettingsSectionsEs sections = _TranslationsSettingsSectionsEs._(_root);
	@override late final _TranslationsSettingsEditProfileEs editProfile = _TranslationsSettingsEditProfileEs._(_root);
	@override late final _TranslationsSettingsLanguageEs language = _TranslationsSettingsLanguageEs._(_root);
	@override late final _TranslationsSettingsHeightUnitEs heightUnit = _TranslationsSettingsHeightUnitEs._(_root);
	@override late final _TranslationsSettingsWeightUnitEs weightUnit = _TranslationsSettingsWeightUnitEs._(_root);
	@override late final _TranslationsSettingsMealRemindersEs mealReminders = _TranslationsSettingsMealRemindersEs._(_root);
	@override late final _TranslationsSettingsThemeEs theme = _TranslationsSettingsThemeEs._(_root);
	@override late final _TranslationsSettingsSendFeedbackEs sendFeedback = _TranslationsSettingsSendFeedbackEs._(_root);
	@override late final _TranslationsSettingsExportMealHistoryEs exportMealHistory = _TranslationsSettingsExportMealHistoryEs._(_root);
	@override late final _TranslationsSettingsClearAllDataEs clearAllData = _TranslationsSettingsClearAllDataEs._(_root);
	@override late final _TranslationsSettingsDebugOptionsEs debugOptions = _TranslationsSettingsDebugOptionsEs._(_root);
	@override String get developerModeEnabled => '¡Modo desarrollador activado!';
	@override late final _TranslationsSettingsHealthConnectEs healthConnect = _TranslationsSettingsHealthConnectEs._(_root);
	@override late final _TranslationsSettingsAboutEs about = _TranslationsSettingsAboutEs._(_root);
	@override late final _TranslationsSettingsAppInfoEs appInfo = _TranslationsSettingsAppInfoEs._(_root);
}

// Path: reminders
class _TranslationsRemindersEs implements TranslationsRemindersEn {
	_TranslationsRemindersEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mantente en el camino con recordatorios';
	@override String get description => 'Recibe recordatorios suaves para registrar tus comidas y mantener la constancia con tus objetivos de nutrición';
	@override String get notificationsEnabled => 'Notificaciones habilitadas';
	@override String get notificationsDisabled => 'Notificaciones deshabilitadas';
	@override String get enabledSubtitle => 'Recibirás recordatorios de comidas';
	@override String get disabledSubtitle => 'Habilita las notificaciones para recibir recordatorios de comidas';
	@override String get mealReminders => 'Recordatorios de comidas';
	@override String get breakfast => 'Desayuno';
	@override String get lunch => 'Almuerzo';
	@override String get dinner => 'Cena';
	@override String get snack => 'Snack';
	@override String get unknown => 'Desconocido';
	@override String get change => 'Cambiar';
	@override String get enableNotifications => 'Habilitar notificaciones';
	@override String get skipForNow => 'Saltar por ahora';
	@override String get saveChanges => 'Guardar cambios';
	@override String get enabledSuccessfully => '¡Notificaciones habilitadas correctamente!';
	@override String get permissionDenied => 'Permiso de notificaciones denegado';
	@override String errorEnabling({required Object error}) => 'Error al habilitar las notificaciones: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Error al finalizar la configuración: ${error}';
}

// Path: notifications
class _TranslationsNotificationsEs implements TranslationsNotificationsEn {
	_TranslationsNotificationsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastEs breakfast = _TranslationsNotificationsBreakfastEs._(_root);
	@override late final _TranslationsNotificationsLunchEs lunch = _TranslationsNotificationsLunchEs._(_root);
	@override late final _TranslationsNotificationsDinnerEs dinner = _TranslationsNotificationsDinnerEs._(_root);
	@override late final _TranslationsNotificationsSnackEs snack = _TranslationsNotificationsSnackEs._(_root);
	@override late final _TranslationsNotificationsTestEs test = _TranslationsNotificationsTestEs._(_root);
}

// Path: login
class _TranslationsLoginEs implements TranslationsLoginEn {
	_TranslationsLoginEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iniciar sesión';
	@override String get signInWithGoogle => 'Iniciar sesión con Google';
	@override String get signInFailed => 'El inicio de sesión con Google falló o se canceló.';
}

// Path: disclaimer
class _TranslationsDisclaimerEs implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Ten en cuenta';
	@override late final _TranslationsDisclaimerSnapEs snap = _TranslationsDisclaimerSnapEs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateEs weightEstimate = _TranslationsDisclaimerWeightEstimateEs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsEs healthMetrics = _TranslationsDisclaimerHealthMetricsEs._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureEs calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureEs._(_root);
}

// Path: common
class _TranslationsCommonEs implements TranslationsCommonEn {
	_TranslationsCommonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get close => 'Cerrar';
	@override String get kContinue => 'Continuar';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingEs implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '¿Disfrutas de ${appLabel}?';
	@override String get yes => 'Sí, me gusta';
	@override String get no => 'No mucho';
	@override String get rateStepHeading => 'Valorar en Play Store';
	@override String get emailStepHeading => 'Enviar comentarios por correo';
	@override String soloDevMessage({required Object appLabel}) => 'Una valoración rápida ayuda a otros a encontrar ${appLabel} y mantiene el desarrollo en marcha. ¿Te tomas un momento para dejar una?';
	@override String get shareFeedbackViaEmail => 'Tus comentarios marcan lo que viene después: leemos cada mensaje. ¿Quieres compartir tus ideas por correo?';
	@override String get rateCta => 'Valorar en Play Store';
	@override String get maybeLater => 'Quizás más tarde';
	@override String get sendFeedback => 'Enviar comentarios';
	@override String get noThanks => 'No, gracias';
	@override String get aboutUsDescription => 'Hecho con cariño por un equipo pequeño. Nos enfocamos en la privacidad, la simplicidad y en ayudarte a construir mejores hábitos alimenticios.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '¿Te preguntas quién está detrás de ${appLabel}? Mira ';
	@override String get aboutUsLinkLabel => 'Sobre nosotros';
	@override String get thankYouMessage => '¡Gracias! Te lo volveremos a preguntar en otro momento.';
}

// Path: health
class _TranslationsHealthEs implements TranslationsHealthEn {
	_TranslationsHealthEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'No se pudo sincronizar con Health Connect';
	@override String get mealSynced => 'Comida sincronizada con Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesEs implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionEs foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionEs._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisEs aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisEs._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationEs healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationEs._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderEs implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cuál es tu género?';
	@override String get description => 'El género nos ayuda a calcular con precisión tu tasa metabólica basal (TMB).';
	@override String get next => 'Siguiente';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightEs implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cuál es tu estatura?';
	@override String get description => 'Tu estatura nos ayuda a calcular tu IMC y tus necesidades energéticas con precisión.';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Imperial';
	@override String get next => 'Siguiente';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightEs implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => '¿Cuál es tu peso actual?';
	@override String get currentDescription => 'Tu peso actual es esencial para personalizar tus objetivos diarios.';
	@override String get targetTitle => '¿Cuál es tu peso objetivo?';
	@override String get targetDescription => 'Definir un peso objetivo nos ayuda a trazar tu plan a largo plazo.';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Imperial';
	@override String get next => 'Siguiente';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeEs implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cuál es tu fecha de nacimiento?';
	@override String get description => 'Tu edad nos ayuda a calcular con precisión tus necesidades de calorías.';
	@override String get next => 'Siguiente';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleEs implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Bajo';
	@override String get healthy => 'Saludable';
	@override String get overweight => 'Sobrepeso';
	@override String get obese => 'Obesidad';
	@override late final _TranslationsOnboardingBmiScaleCategoriesEs categories = _TranslationsOnboardingBmiScaleCategoriesEs._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesEs messages = _TranslationsOnboardingBmiScaleMessagesEs._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalEs implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cuál es tu objetivo?';
	@override String get description => 'Elige el objetivo que mejor describa lo que quieres lograr';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelEs implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Qué tan activo eres?';
	@override String get description => 'Esto nos ayuda a calcular con mayor precisión tus necesidades calóricas diarias';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectEs implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conéctate con Health Connect';
	@override String get description => 'Sincroniza tus datos de salud para mejores análisis y seguimiento automático de calorías';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingEs automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingEs._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsEs progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsEs._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationEs seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationEs._(_root);
	@override String get connected => 'Health Connect conectado';
	@override String get notConnected => 'Health Connect no conectado';
	@override String get setup => 'Configurar Health Connect';
	@override String get skipForNow => 'Saltar por ahora';
	@override String get statusConnected => 'Health Connect está conectado.';
	@override String get statusSuccess => '¡Health Connect se ha conectado correctamente!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permiso denegado. Activa los permisos de Health Connect desde los ajustes del teléfono para ${appLabel}.';
	@override String statusError({required Object error}) => 'Error al configurar Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementEs implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessEs trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessEs._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileEs healthProfile = _TranslationsOnboardingReinforcementHealthProfileEs._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleEs goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleEs._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryEs implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tu resumen con IA';
	@override String get logMore => 'Registra más comidas en los próximos días para obtener tus insights personalizados con IA.';
	@override String get loading => 'Cargando tu resumen...';
	@override String mealCount({required Object count}) => '${count} comidas registradas';
	@override String macroBalanceScore({required Object score}) => 'Puntuación de equilibrio ${score}';
	@override String get topFoods => 'Alimentos destacados';
	@override String get trendUp => 'Calorías en aumento';
	@override String get trendDown => 'Calorías a la baja';
	@override String get trendSteady => 'Calorías estables';
	@override String generatedAt({required Object time}) => 'Actualizado ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalEs implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configura tu objetivo diario';
	@override String get titleSet => 'Tu objetivo diario';
	@override String get description => '¿Listo para comenzar tu camino de bienestar? Establece abajo tu objetivo diario de calorías para impulsar tu progreso.';
	@override String get descriptionSet => '¡Tu brújula está lista! Este es tu objetivo diario de calorías para guiarte.';
	@override String get yourGoal => 'Tu objetivo';
	@override String get goal => 'Objetivo';
	@override String get dailyCalories => 'Calorías diarias (kcal)';
	@override String get setGoal => 'Establecer objetivo';
	@override String get intake => 'Ingeridas';
	@override String get burned => 'Quemadas';
	@override String get weightImpact => 'Impacto en el peso';
	@override String get estLoss => 'Pérdida estimada de';
	@override String get estGain => 'Aumento estimado de';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryEs implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Resumen diario';
	@override String get calories => 'Calorías';
	@override String get carbs => 'Carbohidratos';
	@override String get protein => 'Proteínas';
	@override String get fat => 'Grasas';
	@override String get fiber => 'Fibra';
	@override String get grams => 'gramos';
	@override String get chartAccessibilityLabel => 'Gráfico de macros';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressEs implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Distribución de macros de hoy';
	@override String get target => 'Objetivo';
	@override String get current => 'Actual';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryEs implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Historial de macros de 7 días';
	@override String get trendTitle => 'Tendencia de hoy';
	@override String peakHour({required Object hour}) => 'Pico: ${hour}:00';
	@override String get noHistoryYet => 'Aún no hay historial';
	@override String get startLogging => 'Empieza a registrar comidas para ver aquí tus\ntendencias de macros de 7 días';
}

// Path: home.mealLog
class _TranslationsHomeMealLogEs implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comidas registradas';
	@override String get emptyMessage => 'Toma una foto de tu última comida para registrarla aquí.';
	@override String get noMealsToday => 'No hay comidas registradas hoy';
	@override String get seeAllMeals => 'Ver todas las comidas';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionEs implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Añadir rápido con IA';
	@override String get description => 'Describe tu comida y deja que la IA se encargue de los detalles.';
	@override String get hint => 'p. ej., En el desayuno tomé un tazón grande de avena con un plátano en rodajas y una cucharada de suero ...';
	@override String get analyzeMeal => 'Analizar comida';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsEs implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comidas favoritas';
	@override String get description => 'Añade rápidamente una de tus comidas favoritas.';
	@override String get noFavorites => 'Aún no hay comidas favoritas.';
	@override String get addFavoriteHint => 'Pulsa la estrella en una comida para marcarla como favorita.';
	@override String get seeAll => 'Ver todo';
	@override String get add => 'Añadir';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapEs implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Haz una foto y registra tu comida';
	@override String get description => 'Usa tu cámara para tomar una foto de tu comida y que la IA la analice.';
	@override String get openCamera => 'Abrir cámara';
	@override String get gallery => 'Galería';
	@override String get compressingPhoto => 'Optimizando la foto…';
	@override String get uploadingPhoto => 'Subiendo foto…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthEs implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincroniza con Health Connect';
	@override String get description => 'Sincroniza tus datos de nutrición con Health Connect';
	@override String get install => 'Instalar';
	@override String get connect => 'Conectar';
}

// Path: meal.nutrition
class _TranslationsMealNutritionEs implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorías';
	@override String get carbs => 'Carbohidratos (g)';
	@override String get protein => 'Proteínas (g)';
	@override String get fat => 'Grasas (g)';
	@override String get fiber => 'Fibra (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationEs implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eliminar comida';
	@override String get message => '¿Seguro que quieres eliminar este registro de comida?';
	@override String get cancel => 'Cancelar';
	@override String get delete => 'Eliminar';
}

// Path: meal.variation
class _TranslationsMealVariationEs implements TranslationsMealVariationEn {
	_TranslationsMealVariationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Pregunta ${current} de ${total}';
	@override String get noVariationsAvailable => 'No hay variaciones disponibles';
}

// Path: meal.analysis
class _TranslationsMealAnalysisEs implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análisis de comida con IA';
	@override String get reassurance => 'Esto suele tardar unos segundos.';
	@override String get stepStarted => 'Comenzando…';
	@override String get stepDecomposition => 'Entendiendo tu comida…';
	@override String get stepIngredients => 'Relacionando ingredientes con datos nutricionales…';
	@override String get stepUncertainty => 'Comprobando la confianza…';
	@override String get stepMealTypeQuestion => 'Casi listo…';
	@override String get stepResult => 'Finalizando tu resultado…';
	@override String get stepError => 'Algo salió mal';
	@override String get stepDefault => 'Analizando tu comida…';
	@override String get progressUnderstand => 'Entender';
	@override String get progressMatch => 'Relacionar';
	@override String get progressCheck => 'Comprobar';
	@override String get progressFinish => 'Finalizar';
	@override String ingredientsLine({required Object count}) => '${count} ingredientes detectados';
	@override String get ingredientsPending => 'Analizando ingredientes…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackEs implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Qué se ve mal?';
	@override String get subtitle => 'Ayúdanos a mejorar el análisis seleccionando uno o más problemas.';
	@override String get tellUsMore => 'Cuéntanos más';
	@override String get describeIncorrect => 'Describe qué estaba incorrecto';
	@override String get submit => 'Enviar';
	@override String get issueFoodIdentification => 'Identificación del alimento';
	@override String get issuePortionSize => 'Tamaño de la porción';
	@override String get issueCalorieDistribution => 'Distribución de calorías';
	@override String get issueMacrosWrong => 'Macros incorrectos';
	@override String get issueMissingItems => 'Elementos faltantes';
	@override String get issueExtraItems => 'Elementos de más';
	@override String get issueOther => 'Otro';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsEs implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Recientes';
	@override String get calories => 'Calorías';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsEs implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERFIL';
	@override String get basicInformation => 'INFORMACIÓN BÁSICA';
	@override String get goalsAndActivity => 'OBJETIVOS Y ACTIVIDAD';
	@override String get calculatedValues => 'VALORES CALCULADOS';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesEs implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'TMB';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Objetivo diario';
	@override String get calPerDay => 'cal/día';
	@override String get notAvailable => 'N/D';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsEs implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMACIÓN PERSONAL';
	@override String get physicalMeasurements => 'MEDIDAS FÍSICAS';
	@override String get goalsAndActivity => 'OBJETIVOS Y ACTIVIDAD';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersEs implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get male => 'Hombre';
	@override String get female => 'Mujer';
	@override String get other => 'Otro';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsEs implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightEs loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightEs._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightEs maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightEs._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightEs gainWeight = _TranslationsEditProfileWeightGoalsGainWeightEs._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsEs implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryEs sedentary = _TranslationsEditProfileActivityLevelsSedentaryEs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveEs lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveEs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveEs moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveEs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveEs veryActive = _TranslationsEditProfileActivityLevelsVeryActiveEs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveEs extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveEs._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsEs implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERFIL';
	@override String get localization => 'LOCALIZACIÓN';
	@override String get notifications => 'NOTIFICACIONES';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'SOPORTE Y LEGAL';
	@override String get about => 'ACERCA DE';
	@override String get dangerZone => 'ZONA DE PELIGRO';
	@override String get developer => 'DESARROLLADOR';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileEs implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar perfil';
	@override String get subtitle => 'Actualiza tu información personal';
}

// Path: settings.language
class _TranslationsSettingsLanguageEs implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Idioma';
	@override String get subtitle => 'Elige tu idioma preferido';
	@override String get searchHint => 'Buscar idiomas...';
	@override String get noResults => 'No se encontraron resultados';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitEs implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidad de estatura';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitEs implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidad de peso';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersEs implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recordatorios de comidas';
	@override String get subtitle => 'Mantente al día con alertas oportunas';
}

// Path: settings.theme
class _TranslationsSettingsThemeEs implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Claro';
	@override String get dark => 'Oscuro';
	@override String get system => 'Sistema';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackEs implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Enviar comentarios';
	@override String subtitle({required Object appLabel}) => 'Ayúdanos a mejorar ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Comentarios sobre ${appLabel}';
	@override String get emailBodyPrefix => 'Por favor, escribe tus comentarios a continuación:';
	@override String get appVersion => 'Versión de la app';
	@override String get device => 'Dispositivo';
	@override String get osVersion => 'Versión del SO';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryEs implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exportar historial de comidas';
	@override String get subtitle => 'Comparte un CSV de tus comidas registradas';
	@override String get shareText => 'Tu exportación del historial de comidas de Calorify';
	@override String failed({required Object error}) => 'No se pudo exportar el historial de comidas: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataEs implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Borrar todos los datos';
	@override String get subtitle => 'Elimina de forma irreversible toda tu información';
	@override String get confirmationTitle => '¿Borrar todos los datos?';
	@override String get confirmationMessage => 'Esta acción no se puede deshacer. Todas tus comidas, favoritos y ajustes de perfil se eliminarán permanentemente.';
	@override String get cancel => 'Cancelar';
	@override String get clearEverything => 'Borrar todo';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsEs implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opciones de depuración';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectEs implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Ver y gestionar permisos';
	@override late final _TranslationsSettingsHealthConnectUnavailableEs unavailable = _TranslationsSettingsHealthConnectUnavailableEs._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsEs permissions = _TranslationsSettingsHealthConnectPermissionsEs._(_root);
	@override String get managePermissions => 'Gestionar permisos';
	@override String get openSettings => 'Abrir ajustes de Health Connect';
	@override String get requestPermissions => 'Solicitar permisos';
	@override String get permissionRequestCancelledOrFailed => 'La solicitud de permisos se canceló o falló. Inténtalo de nuevo o concédelos manualmente en los ajustes de Health Connect.';
	@override String get permissionRequestFailed => 'No se pueden solicitar permisos. Inténtalo de nuevo o concédelos manualmente en los ajustes de Health Connect.';
	@override String get requestingPermissions => 'Solicitando...';
}

// Path: settings.about
class _TranslationsSettingsAboutEs implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Acerca de';
	@override String get tagline => 'Conciencia calórica rápida, gratuita y con la privacidad primero';
	@override late final _TranslationsSettingsAboutOurStoryEs ourStory = _TranslationsSettingsAboutOurStoryEs._(_root);
	@override late final _TranslationsSettingsAboutPrivacyEs privacy = _TranslationsSettingsAboutPrivacyEs._(_root);
	@override late final _TranslationsSettingsAboutDeveloperEs developer = _TranslationsSettingsAboutDeveloperEs._(_root);
	@override late final _TranslationsSettingsAboutFeedbackEs feedback = _TranslationsSettingsAboutFeedbackEs._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoEs implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Compilación ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastEs implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora del desayuno! 🍳';
	@override String get body => 'No olvides registrar tu desayuno';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchEs implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora del almuerzo! 🥗';
	@override String get body => 'Es momento de registrar tu almuerzo';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerEs implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora de la cena! 🍽️';
	@override String get body => 'No olvides registrar tu cena';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackEs implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora del snack! 🍎';
	@override String get body => 'Es momento de un snack saludable';
}

// Path: notifications.test
class _TranslationsNotificationsTestEs implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificación de prueba';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapEs implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} proporciona información nutricional estimada. La precisión depende de tus datos y de las variaciones de los alimentos. Úsala como guía, no como fuente definitiva. Consulta a un profesional para recibir asesoramiento dietético personalizado.';
	@override late final _TranslationsDisclaimerSnapPortionSizeEs portionSize = _TranslationsDisclaimerSnapPortionSizeEs._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsEs preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsEs._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsEs ingredients = _TranslationsDisclaimerSnapIngredientsEs._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsEs databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsEs._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateEs implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Acerca de la estimación de peso';
	@override String get description => 'El cambio de peso proyectado es una estimación teórica basada en el modelo simple de calorías ingeridas vs. calorías gastadas. Está pensada solo como una guía motivacional, no como una predicción de tu peso real.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyEs calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyEs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsEs biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsEs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightEs waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightEs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEs professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEs._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsEs implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Estas métricas te ayudan a entender las necesidades energéticas de tu cuerpo y a guiar tus objetivos de nutrición.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrEs bmr = _TranslationsDisclaimerHealthMetricsBmrEs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeEs tdee = _TranslationsDisclaimerHealthMetricsTdeeEs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalEs dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalEs._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureEs implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimación de gasto calórico';
	@override String get description => 'Cuando no hay datos de Health Connect, estimamos las calorías quemadas hoy usando tu Tasa Metabólica Basal (TMB) y nivel de actividad (TDEE), ajustadas a la porción del día transcurrida.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedEs howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedEs._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEs professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEs._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionEs implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconocimiento inteligente de comida';
	@override String get description => 'Toma una foto y deja que la IA identifique tu comida';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisEs implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análisis con IA';
	@override String get description => 'Obtén al instante datos nutricionales a partir de tus descripciones';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationEs implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integración con Health Connect';
	@override String get description => 'Conéctate con Health Connect para obtener mejores análisis';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesEs implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Bajo peso';
	@override String get healthyWeight => 'Peso saludable';
	@override String get overweight => 'Sobrepeso';
	@override String get obese => 'Obesidad';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesEs implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podemos ayudarte a crear un plan saludable para alcanzar un peso equilibrado con comidas ricas en nutrientes.';
	@override String get healthy => '¡Excelente! Estás en un rango saludable. Te ayudaremos a mantener tu vitalidad y niveles de energía.';
	@override String overweight({required Object appLabel}) => '${appLabel} simplificará tu camino con seguimiento impulsado por IA para ayudarte a alcanzar tu objetivo con comodidad.';
	@override String get obese => 'Estamos aquí para apoyarte con orientación personalizada y estrategias sostenibles para tus metas de salud.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingEs implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seguimiento automático de calorías';
	@override String get description => 'Registra calorías quemadas desde tus apps de fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsEs implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Información sobre tu progreso';
	@override String get description => 'Obtén análisis detallados de tus tendencias de salud';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationEs implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integración sin fricciones';
	@override String get description => 'Sincroniza datos de tus apps de salud favoritas';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessEs implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No estás solo';
	@override String get genericMessage => 'Las investigaciones muestran que el seguimiento constante es el principal factor de éxito a largo plazo.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Para una persona de ${age} años (${gender}) que desea ${goal}, el seguimiento constante es el principal predictor de éxito.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} lo hace 10 veces más fácil que hacerlo manualmente.';
	@override String get getStartedTitle => '¿Listo para empezar?';
	@override String get tipPhoto => 'Toma una foto de tus comidas para un análisis instantáneo';
	@override String get tipConsistency => 'Registra de forma constante para ver un progreso significativo';
	@override String get tipProgress => 'Controla tu progreso a diario para mantener la motivación';
	@override String get button => '¡Vamos!';
	@override String get defaultGender => 'persona';
	@override String get defaultGoal => 'una versión más saludable de ti';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileEs implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tu perfil de salud';
	@override String bmiDescription({required Object bmi}) => 'Según tus métricas, tu IMC es ${bmi}.';
	@override String get finalizeDescription => 'Vamos a finalizar tu perfil para personalizar tu experiencia.';
	@override String get goalGain => 'ganar';
	@override String get goalLose => 'perder';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Para alcanzar tu objetivo, deberás ${direction} ${diff} ${unit}.';
	@override String get goalReached => '¡Estás en tu peso objetivo! Te ayudaremos a mantenerlo.';
	@override String get button => '¡Vamos!';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleEs implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Excelente comienzo!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Has dado el primer paso hacia ${goalText}. Dado que estás ${activityText}, ${appLabel} ajustará tus objetivos para que se adapten a tu estilo de vida.';
	@override String get personalizedTargets => 'Objetivos de calorías personalizados';
	@override String get aiMealDetection => 'Detección de comidas con IA';
	@override String get macroBreakdowns => 'Desgloses detallados de macronutrientes';
	@override String get button => 'Empezar';
	@override String get defaultGoal => 'tus objetivos';
	@override String get defaultActivity => 'activo';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightEs implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perder peso';
	@override String get description => 'Crea un déficit calórico para perder peso';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightEs implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mantener peso';
	@override String get description => 'Mantén tu peso actual';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightEs implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ganar peso';
	@override String get description => 'Crea un superávit calórico para ganar peso';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryEs implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentario';
	@override String get description => 'Poco o ningún ejercicio';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveEs implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ligeramente activo';
	@override String get description => 'Ejercicio ligero 1-3 días/semana';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveEs implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderadamente activo';
	@override String get description => 'Ejercicio moderado 3-5 días/semana';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveEs implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Muy activo';
	@override String get description => 'Ejercicio intenso 6-7 días/semana';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveEs implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extremadamente activo';
	@override String get description => 'Ejercicio muy intenso, trabajo físico';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableEs implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect no disponible';
	@override String get description => 'Health Connect no está disponible en este dispositivo. Instala Health Connect desde Play Store (Android 9+) o actualiza a Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsEs implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permisos';
	@override String get description => 'Se solicitan los siguientes permisos para proporcionar la integración con Health Connect:';
	@override String get granted => 'Concedido';
	@override String get notGranted => 'No concedido';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEs caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEs._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadEs nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadEs._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteEs nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteEs._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryEs implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nuestra historia';
	@override String content({required Object appLabel}) => '${appLabel} nació de una frustración sencilla: la mayoría de apps de conteo de calorías son demasiado complicadas, exigen entrada manual constante, cobran suscripciones altas o comprometen tu privacidad.\n\nComo desarrollador en solitario, quise crear algo más simple y justo: una app que use IA para reducir el esfuerzo, que sea rápida y gratuita, y que trate tus datos de salud con respeto.\n\n${appLabel} es la app que me hubiese gustado que existiera: sin cuentas, sin rastreo, sin anuncios; solo información clara y práctica y tus objetivos de salud.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyEs implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tu privacidad importa';
	@override String get description => 'La privacidad no es una idea secundaria: es un principio de diseño. Esto es lo que significa en la práctica:';
	@override String get noAccounts => 'Sin cuentas\nUsa la app de inmediato. Sin registros ni identidades.';
	@override String noTracking({required Object appLabel}) => 'Sin rastreo de comportamiento\n${appLabel} no supervisa tu actividad, no crea perfiles de uso ni te rastrea en apps o sitios web.';
	@override String noAds({required Object appLabel}) => 'Sin anuncios por diseño\n${appLabel} está creada para funcionar sin anuncios ni monetización basada en datos.';
	@override String get noDataSelling => 'Sin venta de datos\nTus datos de salud nunca se venden ni comparten con terceros.';
	@override String get localStorage => 'Almacenamiento local primero\nTus datos se quedan en tu dispositivo.';
	@override String get privacyPolicy => 'Política de privacidad';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperEs implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Creada por un desarrollador en solitario';
	@override String description({required Object appLabel}) => '${appLabel} está construida y mantenida por un único desarrollador centrado en crear software de salud sereno y respetuoso con la privacidad.\n\nLeemos personalmente tus comentarios y ayudan a definir la dirección de la app.';
	@override String get website => 'Sitio web';
	@override String get email => 'Correo';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackEs implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '¿Disfrutas de ${appLabel}?';
	@override String description({required Object appLabel}) => 'Tus comentarios ayudan a que ${appLabel} mejore para todos.';
	@override String get rateApp => 'Valorar en Play Store';
	@override String get sendFeedback => 'Enviar comentarios';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeEs implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tamaño de la porción';
	@override String get description => 'La precisión de las estimaciones depende en gran medida de tu correcta valoración del tamaño de la porción.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsEs implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Métodos de preparación';
	@override String description({required Object appLabel}) => 'Los métodos de cocción pueden alterar significativamente el contenido nutricional de los alimentos. Las estimaciones de ${appLabel} pueden no reflejar siempre estas variaciones.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsEs implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredientes';
	@override String get description => 'Los platos complejos con muchos ingredientes ocultos pueden dar lugar a estimaciones menos precisas.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsEs implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitaciones de la base de datos';
	@override String description({required Object appLabel}) => 'La base de datos de alimentos de ${appLabel} es amplia, pero puede que no incluya todos los alimentos o variaciones existentes.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyEs implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Precisión de calorías';
	@override String get description => 'Esta estimación es tan precisa como tu registro de calorías ingeridas y gastadas. Un registro inexacto producirá una proyección inexacta.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsEs implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Factores biológicos';
	@override String description({required Object appLabel}) => 'La pérdida/ganancia de peso real está influida por metabolismo, hormonas, sueño, estrés, hidratación y otros factores individuales que ${appLabel} no puede medir.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightEs implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Agua y fluctuaciones de peso';
	@override String get description => 'El peso diario normal puede fluctuar significativamente por retención de agua, digestión y horarios. La estimación no tiene en cuenta estos cambios diarios.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEs implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientación profesional';
	@override String get description => 'No uses esta estimación para tomar decisiones médicas. Consulta siempre a un profesional de la salud o dietista registrado para un manejo de peso personalizado.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrEs implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'TMB';
	@override String get description => 'La Tasa Metabólica Basal (TMB) es la cantidad de calorías que tu cuerpo quema en reposo para mantener funciones básicas como la respiración y la circulación. La TMB depende de tu edad, género, estatura y peso. Una TMB más alta significa que tu cuerpo quema más calorías en reposo, a menudo por mayor masa muscular, menor edad o ser hombre. Una TMB más baja suele indicar menor masa muscular, mayor edad o ser mujer.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeEs implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'El Gasto Energético Diario Total (TDEE) es el total de calorías que quemas al día, incluyendo tu TMB más las calorías de la actividad física y el movimiento diario. El TDEE depende de tu TMB y tu nivel de actividad. Un TDEE más alto significa que quemas más calorías en general, normalmente por ser más activo o tener una TMB más alta. Un TDEE más bajo sugiere menos actividad diaria o una TMB menor.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalEs implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Objetivo diario';
	@override String get description => 'El objetivo diario es tu ingesta recomendada de calorías según tu TDEE y tu objetivo de peso. Para perder peso, consumes menos calorías que tu TDEE. Para mantener, igualas tu TDEE. Para ganar peso, consumes más que tu TDEE. Esto te ayuda a lograr el cambio deseado de peso a un ritmo saludable.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedEs implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cómo se calcula la estimación';
	@override String get description => 'Calculamos tu TDEE (según tu perfil) y lo multiplicamos por la fracción del día transcurrido (horas + minutos) / 24 para estimar las calorías quemadas hasta el momento.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEs implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientación profesional';
	@override String get description => 'No uses esta estimación para tomar decisiones médicas. Consulta siempre a un profesional de la salud o dietista registrado para un consejo personalizado.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEs implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leer calorías totales quemadas';
	@override String get description => 'Permite que la app lea tus calorías totales quemadas desde Health Connect.';
	@override String get usage => 'Este permiso se usa para mostrar tu gasto calórico diario en la app, ayudándote a entender tu gasto energético total a lo largo del día.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadEs implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leer datos de nutrición';
	@override String get description => 'Permite que la app lea datos de nutrición desde Health Connect.';
	@override String get usage => 'Este permiso permite que la app lea información de nutrición que pueda haber sido registrada por otras apps conectadas a Health Connect, ofreciendo una visión integral de tu nutrición.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteEs implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Escribir datos de nutrición';
	@override String get description => 'Permite que la app escriba datos de nutrición en Health Connect.';
	@override String get usage => 'Este permiso permite que la app sincronice tus comidas registradas con Health Connect, poniendo tus datos de nutrición a disposición de otras apps de salud y fitness que utilices.';
}

/// The flat map containing all translations for locale <es>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Español',
			'flag' => '🇪🇸',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Has hecho demasiadas solicitudes. Espera un momento antes de intentarlo de nuevo.',
			'errors.networkError' => 'Error de red. Comprueba tu conexión a internet.',
			'errors.unknownError' => 'Algo salió mal. Inténtalo de nuevo más tarde.',
			'errors.loadingProfileData' => 'Error al cargar los datos del perfil',
			'errors.somethingWentWrong' => 'Algo salió mal.',
			'errors.retry' => 'Reintentar',
			'onboarding.welcome' => ({required Object appLabel}) => 'Bienvenido a ${appLabel}',
			'onboarding.subtitle' => 'Tu compañero personal de nutrición impulsado por IA',
			'onboarding.getStarted' => 'Empezar',
			'onboarding.features.foodRecognition.title' => 'Reconocimiento inteligente de comida',
			'onboarding.features.foodRecognition.description' => 'Toma una foto y deja que la IA identifique tu comida',
			'onboarding.features.aiAnalysis.title' => 'Análisis con IA',
			'onboarding.features.aiAnalysis.description' => 'Obtén al instante datos nutricionales a partir de tus descripciones',
			'onboarding.features.healthIntegration.title' => 'Integración con Health Connect',
			'onboarding.features.healthIntegration.description' => 'Conéctate con Health Connect para obtener mejores análisis',
			'onboarding.gender.title' => '¿Cuál es tu género?',
			'onboarding.gender.description' => 'El género nos ayuda a calcular con precisión tu tasa metabólica basal (TMB).',
			'onboarding.gender.next' => 'Siguiente',
			'onboarding.height.title' => '¿Cuál es tu estatura?',
			'onboarding.height.description' => 'Tu estatura nos ayuda a calcular tu IMC y tus necesidades energéticas con precisión.',
			'onboarding.height.metric' => 'Métrico',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Siguiente',
			'onboarding.weight.currentTitle' => '¿Cuál es tu peso actual?',
			'onboarding.weight.currentDescription' => 'Tu peso actual es esencial para personalizar tus objetivos diarios.',
			'onboarding.weight.targetTitle' => '¿Cuál es tu peso objetivo?',
			'onboarding.weight.targetDescription' => 'Definir un peso objetivo nos ayuda a trazar tu plan a largo plazo.',
			'onboarding.weight.metric' => 'Métrico',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Siguiente',
			'onboarding.age.title' => '¿Cuál es tu fecha de nacimiento?',
			'onboarding.age.description' => 'Tu edad nos ayuda a calcular con precisión tus necesidades de calorías.',
			'onboarding.age.next' => 'Siguiente',
			'onboarding.bmiScale.underweight' => 'Bajo',
			'onboarding.bmiScale.healthy' => 'Saludable',
			'onboarding.bmiScale.overweight' => 'Sobrepeso',
			'onboarding.bmiScale.obese' => 'Obesidad',
			'onboarding.bmiScale.categories.underweight' => 'Bajo peso',
			'onboarding.bmiScale.categories.healthyWeight' => 'Peso saludable',
			'onboarding.bmiScale.categories.overweight' => 'Sobrepeso',
			'onboarding.bmiScale.categories.obese' => 'Obesidad',
			'onboarding.bmiScale.messages.underweight' => 'Podemos ayudarte a crear un plan saludable para alcanzar un peso equilibrado con comidas ricas en nutrientes.',
			'onboarding.bmiScale.messages.healthy' => '¡Excelente! Estás en un rango saludable. Te ayudaremos a mantener tu vitalidad y niveles de energía.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} simplificará tu camino con seguimiento impulsado por IA para ayudarte a alcanzar tu objetivo con comodidad.',
			'onboarding.bmiScale.messages.obese' => 'Estamos aquí para apoyarte con orientación personalizada y estrategias sostenibles para tus metas de salud.',
			'onboarding.weightGoal.title' => '¿Cuál es tu objetivo?',
			'onboarding.weightGoal.description' => 'Elige el objetivo que mejor describa lo que quieres lograr',
			'onboarding.activityLevel.title' => '¿Qué tan activo eres?',
			'onboarding.activityLevel.description' => 'Esto nos ayuda a calcular con mayor precisión tus necesidades calóricas diarias',
			'onboarding.healthConnect.title' => 'Conéctate con Health Connect',
			'onboarding.healthConnect.description' => 'Sincroniza tus datos de salud para mejores análisis y seguimiento automático de calorías',
			'onboarding.healthConnect.automaticTracking.title' => 'Seguimiento automático de calorías',
			'onboarding.healthConnect.automaticTracking.description' => 'Registra calorías quemadas desde tus apps de fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Información sobre tu progreso',
			'onboarding.healthConnect.progressInsights.description' => 'Obtén análisis detallados de tus tendencias de salud',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integración sin fricciones',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sincroniza datos de tus apps de salud favoritas',
			'onboarding.healthConnect.connected' => 'Health Connect conectado',
			'onboarding.healthConnect.notConnected' => 'Health Connect no conectado',
			'onboarding.healthConnect.setup' => 'Configurar Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Saltar por ahora',
			'onboarding.healthConnect.statusConnected' => 'Health Connect está conectado.',
			'onboarding.healthConnect.statusSuccess' => '¡Health Connect se ha conectado correctamente!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permiso denegado. Activa los permisos de Health Connect desde los ajustes del teléfono para ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Error al configurar Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'No estás solo',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Las investigaciones muestran que el seguimiento constante es el principal factor de éxito a largo plazo.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Para una persona de ${age} años (${gender}) que desea ${goal}, el seguimiento constante es el principal predictor de éxito.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} lo hace 10 veces más fácil que hacerlo manualmente.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '¿Listo para empezar?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Toma una foto de tus comidas para un análisis instantáneo',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Registra de forma constante para ver un progreso significativo',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Controla tu progreso a diario para mantener la motivación',
			'onboarding.reinforcement.trackingSuccess.button' => '¡Vamos!',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'persona',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'una versión más saludable de ti',
			'onboarding.reinforcement.healthProfile.title' => 'Tu perfil de salud',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Según tus métricas, tu IMC es ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Vamos a finalizar tu perfil para personalizar tu experiencia.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'ganar',
			'onboarding.reinforcement.healthProfile.goalLose' => 'perder',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Para alcanzar tu objetivo, deberás ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => '¡Estás en tu peso objetivo! Te ayudaremos a mantenerlo.',
			'onboarding.reinforcement.healthProfile.button' => '¡Vamos!',
			'onboarding.reinforcement.goalLifestyle.title' => '¡Excelente comienzo!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Has dado el primer paso hacia ${goalText}. Dado que estás ${activityText}, ${appLabel} ajustará tus objetivos para que se adapten a tu estilo de vida.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Objetivos de calorías personalizados',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Detección de comidas con IA',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Desgloses detallados de macronutrientes',
			'onboarding.reinforcement.goalLifestyle.button' => 'Empezar',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'tus objetivos',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'activo',
			'tabs.dashboard' => 'Panel',
			'tabs.history' => 'Historial',
			'home.aiSummary.title' => 'Tu resumen con IA',
			'home.aiSummary.logMore' => 'Registra más comidas en los próximos días para obtener tus insights personalizados con IA.',
			'home.aiSummary.loading' => 'Cargando tu resumen...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} comidas registradas',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Puntuación de equilibrio ${score}',
			'home.aiSummary.topFoods' => 'Alimentos destacados',
			'home.aiSummary.trendUp' => 'Calorías en aumento',
			'home.aiSummary.trendDown' => 'Calorías a la baja',
			'home.aiSummary.trendSteady' => 'Calorías estables',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Actualizado ${time}',
			'home.dailyGoal.title' => 'Configura tu objetivo diario',
			'home.dailyGoal.titleSet' => 'Tu objetivo diario',
			'home.dailyGoal.description' => '¿Listo para comenzar tu camino de bienestar? Establece abajo tu objetivo diario de calorías para impulsar tu progreso.',
			'home.dailyGoal.descriptionSet' => '¡Tu brújula está lista! Este es tu objetivo diario de calorías para guiarte.',
			'home.dailyGoal.yourGoal' => 'Tu objetivo',
			'home.dailyGoal.goal' => 'Objetivo',
			'home.dailyGoal.dailyCalories' => 'Calorías diarias (kcal)',
			'home.dailyGoal.setGoal' => 'Establecer objetivo',
			'home.dailyGoal.intake' => 'Ingeridas',
			'home.dailyGoal.burned' => 'Quemadas',
			'home.dailyGoal.weightImpact' => 'Impacto en el peso',
			'home.dailyGoal.estLoss' => 'Pérdida estimada de',
			'home.dailyGoal.estGain' => 'Aumento estimado de',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Resumen diario',
			'home.dailySummary.calories' => 'Calorías',
			'home.dailySummary.carbs' => 'Carbohidratos',
			'home.dailySummary.protein' => 'Proteínas',
			'home.dailySummary.fat' => 'Grasas',
			'home.dailySummary.fiber' => 'Fibra',
			'home.dailySummary.grams' => 'gramos',
			'home.dailySummary.chartAccessibilityLabel' => 'Gráfico de macros',
			'home.intakeProgress.title' => 'Distribución de macros de hoy',
			'home.intakeProgress.target' => 'Objetivo',
			'home.intakeProgress.current' => 'Actual',
			'home.intakeHistory.title' => 'Historial de macros de 7 días',
			'home.intakeHistory.trendTitle' => 'Tendencia de hoy',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Pico: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Aún no hay historial',
			'home.intakeHistory.startLogging' => 'Empieza a registrar comidas para ver aquí tus\ntendencias de macros de 7 días',
			'home.mealLog.title' => 'Comidas registradas',
			'home.mealLog.emptyMessage' => 'Toma una foto de tu última comida para registrarla aquí.',
			'home.mealLog.noMealsToday' => 'No hay comidas registradas hoy',
			'home.mealLog.seeAllMeals' => 'Ver todas las comidas',
			'home.mealDescription.title' => 'Añadir rápido con IA',
			'home.mealDescription.description' => 'Describe tu comida y deja que la IA se encargue de los detalles.',
			'home.mealDescription.hint' => 'p. ej., En el desayuno tomé un tazón grande de avena con un plátano en rodajas y una cucharada de suero ...',
			'home.mealDescription.analyzeMeal' => 'Analizar comida',
			'home.favoriteMeals.title' => 'Comidas favoritas',
			'home.favoriteMeals.description' => 'Añade rápidamente una de tus comidas favoritas.',
			'home.favoriteMeals.noFavorites' => 'Aún no hay comidas favoritas.',
			'home.favoriteMeals.addFavoriteHint' => 'Pulsa la estrella en una comida para marcarla como favorita.',
			'home.favoriteMeals.seeAll' => 'Ver todo',
			'home.favoriteMeals.add' => 'Añadir',
			'home.mealSnap.title' => 'Haz una foto y registra tu comida',
			'home.mealSnap.description' => 'Usa tu cámara para tomar una foto de tu comida y que la IA la analice.',
			'home.mealSnap.openCamera' => 'Abrir cámara',
			'home.mealSnap.gallery' => 'Galería',
			'home.mealSnap.compressingPhoto' => 'Optimizando la foto…',
			'home.mealSnap.uploadingPhoto' => 'Subiendo foto…',
			'home.connectHealth.title' => 'Sincroniza con Health Connect',
			'home.connectHealth.description' => 'Sincroniza tus datos de nutrición con Health Connect',
			'home.connectHealth.install' => 'Instalar',
			'home.connectHealth.connect' => 'Conectar',
			'history.noMeals' => 'No hay comidas registradas',
			'history.emptyMessage' => 'Toma una foto de tu última comida para registrarla aquí.',
			'history.today' => 'Hoy',
			'history.yesterday' => 'Ayer',
			'meal.ohNo' => '¡Oh no!',
			'meal.delete' => 'Eliminar',
			'meal.editMeal' => 'Editar comida',
			'meal.addMeal' => 'Añadir comida',
			'meal.saveMeal' => 'Guardar comida',
			'meal.save' => 'Guardar',
			'meal.mealName' => 'Nombre de la comida',
			'meal.mealNameHint' => 'p. ej., Huevos revueltos con tostadas',
			'meal.mealQuantity' => 'Cantidad de la comida',
			'meal.mealQuantityHint' => 'p. ej., 1 tazón, 2 rebanadas',
			'meal.timeOfMeal' => 'Hora de la comida',
			'meal.timeOfMealHint' => 'Selecciona la hora a la que comiste',
			'meal.mealType' => 'Tipo de comida',
			'meal.nutrition.calories' => 'Calorías',
			'meal.nutrition.carbs' => 'Carbohidratos (g)',
			'meal.nutrition.protein' => 'Proteínas (g)',
			'meal.nutrition.fat' => 'Grasas (g)',
			'meal.nutrition.fiber' => 'Fibra (g)',
			'meal.deleteConfirmation.title' => 'Eliminar comida',
			'meal.deleteConfirmation.message' => '¿Seguro que quieres eliminar este registro de comida?',
			'meal.deleteConfirmation.cancel' => 'Cancelar',
			'meal.deleteConfirmation.delete' => 'Eliminar',
			'meal.addedToLog' => '¡Comida añadida a tu registro!',
			'meal.couldNotAdd' => ({required Object error}) => 'No se pudo añadir la comida: ${error}',
			'meal.savedSuccessfully' => '¡Comida añadida correctamente!',
			'meal.updatedSuccessfully' => '¡Comida actualizada correctamente!',
			'meal.errorSaving' => ({required Object error}) => 'Error al guardar la comida: ${error}',
			'meal.removedFromFavorites' => '¡Eliminado de favoritos!',
			'meal.savedAsFavorite' => '¡Comida guardada como favorita!',
			'meal.unfavorite' => 'Quitar de favoritos',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'No se pudo actualizar el favorito: ${error}',
			'meal.feedbackThanks' => '¡Gracias por tus comentarios!',
			'meal.reanalysisUpdated' => 'Actualizamos el análisis de la comida según tus comentarios.',
			'meal.failedToProcess' => ({required Object error}) => 'No se pudo procesar: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'No se pudo procesar la imagen: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Error al comprimir la imagen: ${error}',
			'meal.failedToSave' => 'No se pudieron guardar los datos. Inténtalo de nuevo.',
			'meal.skip' => 'Omitir',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Pregunta ${current} de ${total}',
			'meal.variation.noVariationsAvailable' => 'No hay variaciones disponibles',
			'meal.analysis.title' => 'Análisis de comida con IA',
			'meal.analysis.reassurance' => 'Esto suele tardar unos segundos.',
			'meal.analysis.stepStarted' => 'Comenzando…',
			'meal.analysis.stepDecomposition' => 'Entendiendo tu comida…',
			'meal.analysis.stepIngredients' => 'Relacionando ingredientes con datos nutricionales…',
			'meal.analysis.stepUncertainty' => 'Comprobando la confianza…',
			'meal.analysis.stepMealTypeQuestion' => 'Casi listo…',
			'meal.analysis.stepResult' => 'Finalizando tu resultado…',
			'meal.analysis.stepError' => 'Algo salió mal',
			'meal.analysis.stepDefault' => 'Analizando tu comida…',
			'meal.analysis.progressUnderstand' => 'Entender',
			'meal.analysis.progressMatch' => 'Relacionar',
			'meal.analysis.progressCheck' => 'Comprobar',
			'meal.analysis.progressFinish' => 'Finalizar',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredientes detectados',
			'meal.analysis.ingredientsPending' => 'Analizando ingredientes…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => '¿Qué se ve mal?',
			'meal.feedback.subtitle' => 'Ayúdanos a mejorar el análisis seleccionando uno o más problemas.',
			'meal.feedback.tellUsMore' => 'Cuéntanos más',
			'meal.feedback.describeIncorrect' => 'Describe qué estaba incorrecto',
			'meal.feedback.submit' => 'Enviar',
			'meal.feedback.issueFoodIdentification' => 'Identificación del alimento',
			'meal.feedback.issuePortionSize' => 'Tamaño de la porción',
			'meal.feedback.issueCalorieDistribution' => 'Distribución de calorías',
			'meal.feedback.issueMacrosWrong' => 'Macros incorrectos',
			'meal.feedback.issueMissingItems' => 'Elementos faltantes',
			'meal.feedback.issueExtraItems' => 'Elementos de más',
			'meal.feedback.issueOther' => 'Otro',
			'favorites.title' => 'Favoritos',
			'favorites.empty' => 'Aún no hay comidas favoritas.',
			'favorites.searchPlaceholder' => 'Buscar comidas favoritas',
			'favorites.searchEmptyTitle' => 'No hay favoritos que coincidan con tu búsqueda',
			'favorites.searchEmptySubtitle' => 'Prueba con un nombre de comida, cantidad o tipo diferentes.',
			'favorites.sortLabel' => 'Ordenar favoritos',
			'favorites.undo' => 'Deshacer',
			'favorites.removed' => ({required Object name}) => 'Se eliminó ${name} de favoritos',
			'favorites.sortOptions.recent' => 'Recientes',
			'favorites.sortOptions.calories' => 'Calorías',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Perfil',
			'profile.noProfileData' => 'No se encontraron datos de perfil',
			'profile.yourProfile' => 'Tu perfil',
			'profile.viewAndManage' => 'Consulta y gestiona tu información de salud',
			'profile.sections.profile' => 'PERFIL',
			'profile.sections.basicInformation' => 'INFORMACIÓN BÁSICA',
			'profile.sections.goalsAndActivity' => 'OBJETIVOS Y ACTIVIDAD',
			'profile.sections.calculatedValues' => 'VALORES CALCULADOS',
			'profile.gender' => 'Género',
			'profile.height' => 'Estatura',
			'profile.weight' => 'Peso',
			'profile.age' => 'Edad',
			'profile.weightGoal' => 'Objetivo de peso',
			'profile.targetWeight' => 'Peso objetivo',
			'profile.activityLevel' => 'Nivel de actividad',
			'profile.healthMetrics' => 'Métricas de salud',
			'profile.notSet' => 'No establecido',
			'profile.years' => 'años',
			'profile.updatedSuccessfully' => '¡Perfil actualizado correctamente!',
			'profile.calculatedValues.bmr' => 'TMB',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Objetivo diario',
			'profile.calculatedValues.calPerDay' => 'cal/día',
			'profile.calculatedValues.notAvailable' => 'N/D',
			'healthScore.title' => 'Puntuación de salud',
			'healthScore.whyThisScore' => '¿Por qué esta puntuación?',
			'healthScore.note' => 'Esta puntuación es una estimación de la IA basada en los ingredientes identificados y la densidad nutricional. Consulta siempre a un profesional para recibir asesoramiento dietético.',
			'healthScore.unhealthy' => 'Poco saludable',
			'healthScore.healthy' => 'Saludable',
			'healthScore.neutral' => 'Neutral',
			'editProfile.title' => 'Editar perfil',
			'editProfile.sections.personalInformation' => 'INFORMACIÓN PERSONAL',
			'editProfile.sections.physicalMeasurements' => 'MEDIDAS FÍSICAS',
			'editProfile.sections.goalsAndActivity' => 'OBJETIVOS Y ACTIVIDAD',
			'editProfile.gender' => 'Género',
			'editProfile.dateOfBirth' => 'Fecha de nacimiento',
			'editProfile.height' => 'Estatura',
			'editProfile.weight' => 'Peso',
			'editProfile.weightGoal' => 'Objetivo de peso',
			'editProfile.activityLevel' => 'Nivel de actividad',
			'editProfile.metric' => 'Métrico',
			'editProfile.imperial' => 'Imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Métrico (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Métrico (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Hombre',
			'editProfile.genders.female' => 'Mujer',
			'editProfile.genders.other' => 'Otro',
			'editProfile.weightGoals.loseWeight.name' => 'Perder peso',
			'editProfile.weightGoals.loseWeight.description' => 'Crea un déficit calórico para perder peso',
			'editProfile.weightGoals.maintainWeight.name' => 'Mantener peso',
			'editProfile.weightGoals.maintainWeight.description' => 'Mantén tu peso actual',
			'editProfile.weightGoals.gainWeight.name' => 'Ganar peso',
			'editProfile.weightGoals.gainWeight.description' => 'Crea un superávit calórico para ganar peso',
			'editProfile.activityLevels.sedentary.name' => 'Sedentario',
			'editProfile.activityLevels.sedentary.description' => 'Poco o ningún ejercicio',
			'editProfile.activityLevels.lightlyActive.name' => 'Ligeramente activo',
			'editProfile.activityLevels.lightlyActive.description' => 'Ejercicio ligero 1-3 días/semana',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderadamente activo',
			'editProfile.activityLevels.moderatelyActive.description' => 'Ejercicio moderado 3-5 días/semana',
			'editProfile.activityLevels.veryActive.name' => 'Muy activo',
			'editProfile.activityLevels.veryActive.description' => 'Ejercicio intenso 6-7 días/semana',
			'editProfile.activityLevels.extremelyActive.name' => 'Extremadamente activo',
			'editProfile.activityLevels.extremelyActive.description' => 'Ejercicio muy intenso, trabajo físico',
			'settings.title' => 'Ajustes',
			'settings.sections.profile' => 'PERFIL',
			'settings.sections.localization' => 'LOCALIZACIÓN',
			'settings.sections.notifications' => 'NOTIFICACIONES',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SOPORTE Y LEGAL',
			'settings.sections.about' => 'ACERCA DE',
			'settings.sections.dangerZone' => 'ZONA DE PELIGRO',
			'settings.sections.developer' => 'DESARROLLADOR',
			'settings.editProfile.title' => 'Editar perfil',
			'settings.editProfile.subtitle' => 'Actualiza tu información personal',
			'settings.language.title' => 'Idioma',
			'settings.language.subtitle' => 'Elige tu idioma preferido',
			'settings.language.searchHint' => 'Buscar idiomas...',
			'settings.language.noResults' => 'No se encontraron resultados',
			'settings.heightUnit.title' => 'Unidad de estatura',
			'settings.weightUnit.title' => 'Unidad de peso',
			'settings.mealReminders.title' => 'Recordatorios de comidas',
			'settings.mealReminders.subtitle' => 'Mantente al día con alertas oportunas',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Claro',
			'settings.theme.dark' => 'Oscuro',
			'settings.theme.system' => 'Sistema',
			'settings.sendFeedback.title' => 'Enviar comentarios',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Ayúdanos a mejorar ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Comentarios sobre ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Por favor, escribe tus comentarios a continuación:',
			'settings.sendFeedback.appVersion' => 'Versión de la app',
			'settings.sendFeedback.device' => 'Dispositivo',
			'settings.sendFeedback.osVersion' => 'Versión del SO',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Exportar historial de comidas',
			'settings.exportMealHistory.subtitle' => 'Comparte un CSV de tus comidas registradas',
			'settings.exportMealHistory.shareText' => 'Tu exportación del historial de comidas de Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'No se pudo exportar el historial de comidas: ${error}',
			'settings.clearAllData.title' => 'Borrar todos los datos',
			'settings.clearAllData.subtitle' => 'Elimina de forma irreversible toda tu información',
			'settings.clearAllData.confirmationTitle' => '¿Borrar todos los datos?',
			'settings.clearAllData.confirmationMessage' => 'Esta acción no se puede deshacer. Todas tus comidas, favoritos y ajustes de perfil se eliminarán permanentemente.',
			'settings.clearAllData.cancel' => 'Cancelar',
			'settings.clearAllData.clearEverything' => 'Borrar todo',
			'settings.debugOptions.title' => 'Opciones de depuración',
			'settings.developerModeEnabled' => '¡Modo desarrollador activado!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Ver y gestionar permisos',
			'settings.healthConnect.unavailable.title' => 'Health Connect no disponible',
			'settings.healthConnect.unavailable.description' => 'Health Connect no está disponible en este dispositivo. Instala Health Connect desde Play Store (Android 9+) o actualiza a Android 14+.',
			'settings.healthConnect.permissions.title' => 'Permisos',
			'settings.healthConnect.permissions.description' => 'Se solicitan los siguientes permisos para proporcionar la integración con Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Concedido',
			'settings.healthConnect.permissions.notGranted' => 'No concedido',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Leer calorías totales quemadas',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Permite que la app lea tus calorías totales quemadas desde Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Este permiso se usa para mostrar tu gasto calórico diario en la app, ayudándote a entender tu gasto energético total a lo largo del día.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Leer datos de nutrición',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Permite que la app lea datos de nutrición desde Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Este permiso permite que la app lea información de nutrición que pueda haber sido registrada por otras apps conectadas a Health Connect, ofreciendo una visión integral de tu nutrición.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Escribir datos de nutrición',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Permite que la app escriba datos de nutrición en Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Este permiso permite que la app sincronice tus comidas registradas con Health Connect, poniendo tus datos de nutrición a disposición de otras apps de salud y fitness que utilices.',
			'settings.healthConnect.managePermissions' => 'Gestionar permisos',
			'settings.healthConnect.openSettings' => 'Abrir ajustes de Health Connect',
			'settings.healthConnect.requestPermissions' => 'Solicitar permisos',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'La solicitud de permisos se canceló o falló. Inténtalo de nuevo o concédelos manualmente en los ajustes de Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'No se pueden solicitar permisos. Inténtalo de nuevo o concédelos manualmente en los ajustes de Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Solicitando...',
			'settings.about.title' => 'Acerca de',
			'settings.about.tagline' => 'Conciencia calórica rápida, gratuita y con la privacidad primero',
			'settings.about.ourStory.title' => 'Nuestra historia',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} nació de una frustración sencilla: la mayoría de apps de conteo de calorías son demasiado complicadas, exigen entrada manual constante, cobran suscripciones altas o comprometen tu privacidad.\n\nComo desarrollador en solitario, quise crear algo más simple y justo: una app que use IA para reducir el esfuerzo, que sea rápida y gratuita, y que trate tus datos de salud con respeto.\n\n${appLabel} es la app que me hubiese gustado que existiera: sin cuentas, sin rastreo, sin anuncios; solo información clara y práctica y tus objetivos de salud.',
			'settings.about.privacy.title' => 'Tu privacidad importa',
			'settings.about.privacy.description' => 'La privacidad no es una idea secundaria: es un principio de diseño. Esto es lo que significa en la práctica:',
			'settings.about.privacy.noAccounts' => 'Sin cuentas\nUsa la app de inmediato. Sin registros ni identidades.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Sin rastreo de comportamiento\n${appLabel} no supervisa tu actividad, no crea perfiles de uso ni te rastrea en apps o sitios web.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Sin anuncios por diseño\n${appLabel} está creada para funcionar sin anuncios ni monetización basada en datos.',
			'settings.about.privacy.noDataSelling' => 'Sin venta de datos\nTus datos de salud nunca se venden ni comparten con terceros.',
			'settings.about.privacy.localStorage' => 'Almacenamiento local primero\nTus datos se quedan en tu dispositivo.',
			'settings.about.privacy.privacyPolicy' => 'Política de privacidad',
			'settings.about.developer.title' => 'Creada por un desarrollador en solitario',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} está construida y mantenida por un único desarrollador centrado en crear software de salud sereno y respetuoso con la privacidad.\n\nLeemos personalmente tus comentarios y ayudan a definir la dirección de la app.',
			'settings.about.developer.website' => 'Sitio web',
			'settings.about.developer.email' => 'Correo',
			'settings.about.feedback.title' => ({required Object appLabel}) => '¿Disfrutas de ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Tus comentarios ayudan a que ${appLabel} mejore para todos.',
			'settings.about.feedback.rateApp' => 'Valorar en Play Store',
			'settings.about.feedback.sendFeedback' => 'Enviar comentarios',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Compilación ${buildNumber}',
			'reminders.title' => 'Mantente en el camino con recordatorios',
			'reminders.description' => 'Recibe recordatorios suaves para registrar tus comidas y mantener la constancia con tus objetivos de nutrición',
			'reminders.notificationsEnabled' => 'Notificaciones habilitadas',
			'reminders.notificationsDisabled' => 'Notificaciones deshabilitadas',
			'reminders.enabledSubtitle' => 'Recibirás recordatorios de comidas',
			'reminders.disabledSubtitle' => 'Habilita las notificaciones para recibir recordatorios de comidas',
			'reminders.mealReminders' => 'Recordatorios de comidas',
			'reminders.breakfast' => 'Desayuno',
			'reminders.lunch' => 'Almuerzo',
			'reminders.dinner' => 'Cena',
			'reminders.snack' => 'Snack',
			'reminders.unknown' => 'Desconocido',
			'reminders.change' => 'Cambiar',
			'reminders.enableNotifications' => 'Habilitar notificaciones',
			'reminders.skipForNow' => 'Saltar por ahora',
			'reminders.saveChanges' => 'Guardar cambios',
			'reminders.enabledSuccessfully' => '¡Notificaciones habilitadas correctamente!',
			'reminders.permissionDenied' => 'Permiso de notificaciones denegado',
			'reminders.errorEnabling' => ({required Object error}) => 'Error al habilitar las notificaciones: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Error al finalizar la configuración: ${error}',
			'notifications.breakfast.title' => '¡Hora del desayuno! 🍳',
			'notifications.breakfast.body' => 'No olvides registrar tu desayuno',
			'notifications.lunch.title' => '¡Hora del almuerzo! 🥗',
			'notifications.lunch.body' => 'Es momento de registrar tu almuerzo',
			'notifications.dinner.title' => '¡Hora de la cena! 🍽️',
			'notifications.dinner.body' => 'No olvides registrar tu cena',
			'notifications.snack.title' => '¡Hora del snack! 🍎',
			'notifications.snack.body' => 'Es momento de un snack saludable',
			'notifications.test.title' => 'Notificación de prueba',
			'login.title' => 'Iniciar sesión',
			'login.signInWithGoogle' => 'Iniciar sesión con Google',
			'login.signInFailed' => 'El inicio de sesión con Google falló o se canceló.',
			'disclaimer.pleaseNote' => 'Ten en cuenta',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} proporciona información nutricional estimada. La precisión depende de tus datos y de las variaciones de los alimentos. Úsala como guía, no como fuente definitiva. Consulta a un profesional para recibir asesoramiento dietético personalizado.',
			'disclaimer.snap.portionSize.title' => 'Tamaño de la porción',
			'disclaimer.snap.portionSize.description' => 'La precisión de las estimaciones depende en gran medida de tu correcta valoración del tamaño de la porción.',
			'disclaimer.snap.preparationMethods.title' => 'Métodos de preparación',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Los métodos de cocción pueden alterar significativamente el contenido nutricional de los alimentos. Las estimaciones de ${appLabel} pueden no reflejar siempre estas variaciones.',
			'disclaimer.snap.ingredients.title' => 'Ingredientes',
			'disclaimer.snap.ingredients.description' => 'Los platos complejos con muchos ingredientes ocultos pueden dar lugar a estimaciones menos precisas.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitaciones de la base de datos',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'La base de datos de alimentos de ${appLabel} es amplia, pero puede que no incluya todos los alimentos o variaciones existentes.',
			'disclaimer.weightEstimate.title' => 'Acerca de la estimación de peso',
			'disclaimer.weightEstimate.description' => 'El cambio de peso proyectado es una estimación teórica basada en el modelo simple de calorías ingeridas vs. calorías gastadas. Está pensada solo como una guía motivacional, no como una predicción de tu peso real.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Precisión de calorías',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Esta estimación es tan precisa como tu registro de calorías ingeridas y gastadas. Un registro inexacto producirá una proyección inexacta.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Factores biológicos',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'La pérdida/ganancia de peso real está influida por metabolismo, hormonas, sueño, estrés, hidratación y otros factores individuales que ${appLabel} no puede medir.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Agua y fluctuaciones de peso',
			'disclaimer.weightEstimate.waterWeight.description' => 'El peso diario normal puede fluctuar significativamente por retención de agua, digestión y horarios. La estimación no tiene en cuenta estos cambios diarios.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Orientación profesional',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'No uses esta estimación para tomar decisiones médicas. Consulta siempre a un profesional de la salud o dietista registrado para un manejo de peso personalizado.',
			'disclaimer.healthMetrics.description' => 'Estas métricas te ayudan a entender las necesidades energéticas de tu cuerpo y a guiar tus objetivos de nutrición.',
			'disclaimer.healthMetrics.bmr.title' => 'TMB',
			'disclaimer.healthMetrics.bmr.description' => 'La Tasa Metabólica Basal (TMB) es la cantidad de calorías que tu cuerpo quema en reposo para mantener funciones básicas como la respiración y la circulación. La TMB depende de tu edad, género, estatura y peso. Una TMB más alta significa que tu cuerpo quema más calorías en reposo, a menudo por mayor masa muscular, menor edad o ser hombre. Una TMB más baja suele indicar menor masa muscular, mayor edad o ser mujer.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'El Gasto Energético Diario Total (TDEE) es el total de calorías que quemas al día, incluyendo tu TMB más las calorías de la actividad física y el movimiento diario. El TDEE depende de tu TMB y tu nivel de actividad. Un TDEE más alto significa que quemas más calorías en general, normalmente por ser más activo o tener una TMB más alta. Un TDEE más bajo sugiere menos actividad diaria o una TMB menor.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Objetivo diario',
			'disclaimer.healthMetrics.dailyGoal.description' => 'El objetivo diario es tu ingesta recomendada de calorías según tu TDEE y tu objetivo de peso. Para perder peso, consumes menos calorías que tu TDEE. Para mantener, igualas tu TDEE. Para ganar peso, consumes más que tu TDEE. Esto te ayuda a lograr el cambio deseado de peso a un ritmo saludable.',
			'disclaimer.calorieExpenditure.title' => 'Estimación de gasto calórico',
			'disclaimer.calorieExpenditure.description' => 'Cuando no hay datos de Health Connect, estimamos las calorías quemadas hoy usando tu Tasa Metabólica Basal (TMB) y nivel de actividad (TDEE), ajustadas a la porción del día transcurrida.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Cómo se calcula la estimación',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Calculamos tu TDEE (según tu perfil) y lo multiplicamos por la fracción del día transcurrido (horas + minutos) / 24 para estimar las calorías quemadas hasta el momento.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Orientación profesional',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'No uses esta estimación para tomar decisiones médicas. Consulta siempre a un profesional de la salud o dietista registrado para un consejo personalizado.',
			'common.close' => 'Cerrar',
			'common.kContinue' => 'Continuar',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '¿Disfrutas de ${appLabel}?',
			'feedbackRating.yes' => 'Sí, me gusta',
			'feedbackRating.no' => 'No mucho',
			'feedbackRating.rateStepHeading' => 'Valorar en Play Store',
			'feedbackRating.emailStepHeading' => 'Enviar comentarios por correo',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Una valoración rápida ayuda a otros a encontrar ${appLabel} y mantiene el desarrollo en marcha. ¿Te tomas un momento para dejar una?',
			'feedbackRating.shareFeedbackViaEmail' => 'Tus comentarios marcan lo que viene después: leemos cada mensaje. ¿Quieres compartir tus ideas por correo?',
			'feedbackRating.rateCta' => 'Valorar en Play Store',
			'feedbackRating.maybeLater' => 'Quizás más tarde',
			'feedbackRating.sendFeedback' => 'Enviar comentarios',
			'feedbackRating.noThanks' => 'No, gracias',
			'feedbackRating.aboutUsDescription' => 'Hecho con cariño por un equipo pequeño. Nos enfocamos en la privacidad, la simplicidad y en ayudarte a construir mejores hábitos alimenticios.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '¿Te preguntas quién está detrás de ${appLabel}? Mira ',
			'feedbackRating.aboutUsLinkLabel' => 'Sobre nosotros',
			'feedbackRating.thankYouMessage' => '¡Gracias! Te lo volveremos a preguntar en otro momento.',
			'health.syncFailed' => 'No se pudo sincronizar con Health Connect',
			'health.mealSynced' => 'Comida sincronizada con Health Connect',
			_ => null,
		};
	}
}
