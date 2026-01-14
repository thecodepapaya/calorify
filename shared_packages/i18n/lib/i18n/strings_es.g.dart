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
	@override late final _TranslationsErrorsEs errors = _TranslationsErrorsEs._(_root);
	@override late final _TranslationsDebugEs debug = _TranslationsDebugEs._(_root);
	@override late final _TranslationsHealthEs health = _TranslationsHealthEs._(_root);
}

// Path: onboarding
class _TranslationsOnboardingEs implements TranslationsOnboardingEn {
	_TranslationsOnboardingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bienvenido a ${appLabel}';
	@override String get subtitle => 'Tu compañero personal de nutrición impulsado por IA';
	@override String get getStarted => 'Comenzar';
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
	@override String get dashboard => 'Tablero';
	@override String get history => 'Historia';
}

// Path: home
class _TranslationsHomeEs implements TranslationsHomeEn {
	_TranslationsHomeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
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
	@override String get noMeals => 'No se han registrado comidas';
	@override String get emptyMessage => 'Captura una foto de tu última comida para registrarla aquí.';
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
	@override String get editMeal => 'Editar Comida';
	@override String get addMeal => 'Añadir Comida';
	@override String get saveMeal => 'Guardar Comida';
	@override String get save => 'Guardar';
	@override String get mealName => 'Nombre de la Comida';
	@override String get mealQuantity => 'Cantidad de la Comida';
	@override String get mealQuantityHint => 'ej., 1 tazón, 2 rebanadas';
	@override String get timeOfMeal => 'Hora de la Comida';
	@override String get timeOfMealHint => 'Selecciona la hora en que comiste';
	@override String get mealType => 'Tipo de Comida';
	@override late final _TranslationsMealNutritionEs nutrition = _TranslationsMealNutritionEs._(_root);
	@override late final _TranslationsMealDeleteConfirmationEs deleteConfirmation = _TranslationsMealDeleteConfirmationEs._(_root);
	@override String get addedToLog => '¡Comida añadida a tu registro!';
	@override String couldNotAdd({required Object error}) => 'No se pudo añadir la comida: ${error}';
	@override String get removedFromFavorites => '¡Eliminada de favoritos!';
	@override String get savedAsFavorite => '¡Comida guardada como favorita!';
	@override String couldNotUpdateFavorite({required Object error}) => 'No se pudo actualizar favorito: ${error}';
	@override String failedToProcess({required Object error}) => 'No se pudo procesar: ${error}';
	@override String failedToProcessImage({required Object error}) => 'No se pudo procesar la imagen: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Error al comprimir la imagen: ${error}';
	@override String get failedToSave => 'No se pudo guardar los datos. Por favor, inténtalo de nuevo.';
}

// Path: favorites
class _TranslationsFavoritesEs implements TranslationsFavoritesEn {
	_TranslationsFavoritesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritos';
	@override String get empty => 'Aún no hay comidas favoritas.';
}

// Path: profile
class _TranslationsProfileEs implements TranslationsProfileEn {
	_TranslationsProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get noProfileData => 'No se encontraron datos de perfil';
	@override String get yourProfile => 'Tu Perfil';
	@override String get viewAndManage => 'Ver y gestionar tu información de salud';
	@override late final _TranslationsProfileSectionsEs sections = _TranslationsProfileSectionsEs._(_root);
	@override String get gender => 'Género';
	@override String get height => 'Altura';
	@override String get weight => 'Peso';
	@override String get age => 'Edad';
	@override String get weightGoal => 'Objetivo de Peso';
	@override String get activityLevel => 'Nivel de Actividad';
	@override String get healthMetrics => 'Métricas de Salud';
	@override String get notSet => 'No establecido';
	@override String get years => 'años';
	@override String get updatedSuccessfully => '¡Perfil actualizado exitosamente!';
	@override late final _TranslationsProfileCalculatedValuesEs calculatedValues = _TranslationsProfileCalculatedValuesEs._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreEs implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Puntuación de Salud';
	@override String get whyThisScore => '¿Por qué esta puntuación?';
	@override String get note => 'Esta puntuación es una estimación de IA basada en los ingredientes identificados y la densidad nutricional. Siempre consulta a un profesional para obtener consejos dietéticos.';
	@override String get unhealthy => 'No Saludable';
	@override String get healthy => 'Saludable';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileEs implements TranslationsEditProfileEn {
	_TranslationsEditProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar Perfil';
	@override late final _TranslationsEditProfileSectionsEs sections = _TranslationsEditProfileSectionsEs._(_root);
	@override String get gender => 'Género';
	@override String get dateOfBirth => 'Fecha de Nacimiento';
	@override String get height => 'Altura';
	@override String get weight => 'Peso';
	@override String get weightGoal => 'Objetivo de Peso';
	@override String get activityLevel => 'Nivel de Actividad';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Imperial';
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
	@override String get title => 'Configuración';
	@override late final _TranslationsSettingsSectionsEs sections = _TranslationsSettingsSectionsEs._(_root);
	@override late final _TranslationsSettingsEditProfileEs editProfile = _TranslationsSettingsEditProfileEs._(_root);
	@override late final _TranslationsSettingsLanguageEs language = _TranslationsSettingsLanguageEs._(_root);
	@override late final _TranslationsSettingsHeightUnitEs heightUnit = _TranslationsSettingsHeightUnitEs._(_root);
	@override late final _TranslationsSettingsWeightUnitEs weightUnit = _TranslationsSettingsWeightUnitEs._(_root);
	@override late final _TranslationsSettingsMealRemindersEs mealReminders = _TranslationsSettingsMealRemindersEs._(_root);
	@override late final _TranslationsSettingsThemeEs theme = _TranslationsSettingsThemeEs._(_root);
	@override late final _TranslationsSettingsSendFeedbackEs sendFeedback = _TranslationsSettingsSendFeedbackEs._(_root);
	@override late final _TranslationsSettingsClearAllDataEs clearAllData = _TranslationsSettingsClearAllDataEs._(_root);
	@override late final _TranslationsSettingsDebugOptionsEs debugOptions = _TranslationsSettingsDebugOptionsEs._(_root);
	@override String get developerModeEnabled => '¡Modo de desarrollador habilitado!';
}

// Path: reminders
class _TranslationsRemindersEs implements TranslationsRemindersEn {
	_TranslationsRemindersEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mantente en el camino con los recordatorios';
	@override String get description => 'Recibe recordatorios suaves para registrar tus comidas y mantenerte constante con tus objetivos nutricionales';
	@override String get notificationsEnabled => 'Notificaciones Habilitadas';
	@override String get notificationsDisabled => 'Notificaciones Deshabilitadas';
	@override String get enabledSubtitle => 'Recibirás recordatorios de comidas';
	@override String get disabledSubtitle => 'Habilita las notificaciones para recibir recordatorios de comidas';
	@override String get mealReminders => 'Recordatorios de Comidas';
	@override String get breakfast => 'Desayuno';
	@override String get lunch => 'Almuerzo';
	@override String get dinner => 'Cena';
	@override String get snack => 'Merienda';
	@override String get unknown => 'Desconocido';
	@override String get change => 'Cambiar';
	@override String get enableNotifications => 'Habilitar Notificaciones';
	@override String get skipForNow => 'Omitir por ahora';
	@override String get saveChanges => 'Guardar Cambios';
	@override String get enabledSuccessfully => '¡Notificaciones habilitadas con éxito!';
	@override String get permissionDenied => 'Permiso de notificación denegado';
	@override String errorEnabling({required Object error}) => 'Error al habilitar notificaciones: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Error al completar la configuración: ${error}';
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
	@override String get title => 'Iniciar Sesión';
	@override String get signInWithGoogle => 'Iniciar sesión con Google';
	@override String get signInFailed => 'Fallo en el inicio de sesión de Google o fue cancelado.';
}

// Path: disclaimer
class _TranslationsDisclaimerEs implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Ten en cuenta';
	@override late final _TranslationsDisclaimerSnapEs snap = _TranslationsDisclaimerSnapEs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateEs weightEstimate = _TranslationsDisclaimerWeightEstimateEs._(_root);
}

// Path: common
class _TranslationsCommonEs implements TranslationsCommonEn {
	_TranslationsCommonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get close => 'Cerrar';
	@override String get kContinue => 'Continuar';
}

// Path: errors
class _TranslationsErrorsEs implements TranslationsErrorsEn {
	_TranslationsErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Error al cargar datos del perfil';
	@override String get somethingWentWrong => 'Algo salió mal.';
}

// Path: debug
class _TranslationsDebugEs implements TranslationsDebugEn {
	_TranslationsDebugEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opciones de Depuración';
	@override late final _TranslationsDebugSectionsEs sections = _TranslationsDebugSectionsEs._(_root);
	@override String get showActiveNotifications => 'Mostrar Notificaciones Activas';
	@override String get scheduleTestNotification => 'Programar Notificación de Prueba (10s)';
	@override String get triggerBreakfastNotification => 'Activar Notificación de Desayuno';
	@override String get cancelAllNotifications => 'Cancelar Todas las Notificaciones';
	@override String get activeNotifications => 'Notificaciones Activas';
	@override String get noTitle => 'Sin Título';
	@override String get noBody => 'Sin Cuerpo';
	@override String get fetchTodaysSteps => 'Obtener Pasos de Hoy';
	@override String get fetchTodaysCalories => 'Obtener Calorías de Hoy';
	@override String get fetchLatestWeight => 'Obtener Último Peso';
	@override String get fetchLatestHeight => 'Obtener Última Altura';
	@override String get writeTestWeight => 'Escribir Peso de Prueba (70kg)';
	@override String get writeTestHeight => 'Escribir Altura de Prueba (175cm)';
	@override String get syncLast7Days => 'Sincronizar Últimos 7 Días';
	@override String get sync7DaysTitle => 'Sincronización de 7 Días';
	@override String get checkCurrentLocale => 'Verificar Localización Actual';
	@override String get currentLocale => 'Localización Actual';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Idioma: ${languageCode}\nPaís: ${countryCode}\nSistema de Unidades: ${unitSystem}';
	@override String get latestWeight => 'Último Peso';
	@override String get latestHeight => 'Última Altura';
	@override String get todaysCalories => 'Calorías de Hoy';
	@override String totalCaloriesBurned({required Object calories}) => 'Total de calorías quemadas: ${calories}';
	@override String syncSuccess({required Object count}) => 'Se sincronizaron exitosamente ${count} puntos de datos de Pasos, Calorías y Peso en los últimos 7 días.';
	@override String get noWeightData => 'No se encontraron datos de peso en los últimos 30 días.';
	@override String get noHeightData => 'No se encontraron datos de altura en el último año.';
	@override String get noCalorieData => 'No se encontraron datos de calorías para hoy.';
	@override String get weightWritten => 'Peso de prueba escrito con éxito (70kg).';
	@override String get weightWriteFailed => 'Fallo al escribir peso de prueba.';
	@override String get heightWritten => 'Altura de prueba escrita con éxito (175cm).';
	@override String get heightWriteFailed => 'Fallo al escribir altura de prueba.';
	@override String get noNotifications => 'No hay notificaciones activas.';
	@override String get testNotificationScheduled => 'Notificación de prueba programada para dentro de 10 segundos.';
	@override String get testNotificationBody => 'Esta es una notificación de prueba programada para dentro de 10 segundos.';
	@override String get breakfastNotificationTriggered => 'Notificación de desayuno activada.';
	@override String get allNotificationsCancelled => 'Se cancelaron todas las notificaciones.';
	@override String get fetchingData => 'Obteniendo datos de los últimos 7 días...';
	@override String id({required Object id}) => 'ID: ${id}';
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
	@override String get title => '¿Cuánto mides?';
	@override String get description => 'Tu altura nos ayuda a calcular con precisión tu IMC y tus necesidades energéticas.';
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
	@override String get targetDescription => 'Establecer un peso objetivo nos ayuda a determinar tu plan a largo plazo.';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Imperial';
	@override String get next => 'Siguiente';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeEs implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cuándo es tu cumpleaños?';
	@override String get description => 'Tu edad nos ayuda a calcular con precisión tus necesidades calóricas.';
	@override String get next => 'Siguiente';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleEs implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Bajo Peso';
	@override String get healthy => 'Peso Saludable';
	@override String get overweight => 'Sobrepeso';
	@override String get obese => 'Obeso';
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
	@override String get description => 'Esto nos ayuda a calcular tus necesidades calóricas diarias con mayor precisión';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectEs implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conéctate con Health Connect';
	@override String get description => 'Sincroniza tus datos de salud para obtener mejores insights y seguimiento automático de calorías';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingEs automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingEs._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsEs progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsEs._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationEs seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationEs._(_root);
	@override String get connected => 'Health Connect Conectado';
	@override String get notConnected => 'Health Connect No Conectado';
	@override String get setup => 'Configura Health Connect';
	@override String get skipForNow => 'Omitir por ahora';
	@override String get statusConnected => 'Health Connect está conectado.';
	@override String get statusSuccess => '¡Health Connect se ha conectado exitosamente!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permiso denegado. Por favor, habilita los permisos de Health Connect desde la configuración de tu teléfono para ${appLabel}.';
	@override String statusError({required Object error}) => 'Error configurando Health Connect: ${error}';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalEs implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Establece tu Objetivo Diario';
	@override String get titleSet => 'Tu Objetivo Diario';
	@override String get description => '¿Listo para embarcarte en tu viaje de bienestar? Establece tu objetivo calórico diario a continuación para iniciar tu progreso.';
	@override String get descriptionSet => '¡Tu brújula está ajustada! Este es tu objetivo calórico diario para guiarte.';
	@override String get yourGoal => 'Tu Objetivo';
	@override String get dailyCalories => 'Calorías diarias (kcal)';
	@override String get setGoal => 'Establecer Objetivo';
	@override String get intake => 'Ingesta';
	@override String get burned => 'Quemadas';
	@override String get weightImpact => 'Impacto en el Peso';
	@override String get estLoss => 'Pérdida estimada de';
	@override String get estGain => 'Aumento estimado de';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryEs implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Resumen Diario';
	@override String get calories => 'Calorías';
	@override String get carbs => 'Carbohidratos';
	@override String get protein => 'Proteínas';
	@override String get fat => 'Grasas';
	@override String get fiber => 'Fibra';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressEs implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'División de Macronutrientes de Hoy';
	@override String get target => 'Objetivo';
	@override String get current => 'Actual';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryEs implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Historial de Macronutrientes de 7 Días';
	@override String get noHistoryYet => 'Aún sin historial';
	@override String get startLogging => 'Comienza a registrar comidas para ver tus\ntendencias de macronutrientes de 7 días aquí';
}

// Path: home.mealLog
class _TranslationsHomeMealLogEs implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comidas Registradas';
	@override String get emptyMessage => 'Captura una foto de tu última comida para registrarla aquí.';
	@override String get noMealsToday => 'No se han registrado comidas para hoy';
	@override String get seeAllMeals => 'Ver todas las comidas';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionEs implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Añadir Rápidamente con IA';
	@override String get description => 'Describe tu comida y deja que la IA se ocupe de los detalles.';
	@override String get hint => 'ej. Para el desayuno, tuve un tazón grande de avena con un plátano en rodajas y una cucharada de proteína de suero...';
	@override String get analyzeMeal => 'Analizar comida';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsEs implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comidas Favoritas';
	@override String get description => 'Añade rápidamente una de tus comidas favoritas.';
	@override String get noFavorites => 'Aún no tienes comidas favoritas.';
	@override String get addFavoriteHint => 'Haz clic en la estrella de una comida para marcarla como favorita.';
	@override String get seeAll => 'Ver todas';
	@override String get add => 'Añadir';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapEs implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Captura y Rastrea Tu Comida';
	@override String get description => 'Usa tu cámara para tomar una foto de tu comida para análisis de IA.';
	@override String get openCamera => 'Abrir Cámara';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthEs implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizar con Health Connect';
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
	@override String get title => 'Eliminar Comida';
	@override String get message => '¿Estás seguro de que deseas eliminar esta entrada de comida?';
	@override String get cancel => 'Cancelar';
	@override String get delete => 'Eliminar';
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
	@override String get dailyGoal => 'Objetivo Diario';
	@override String get calPerDay => 'cal/día';
	@override String get notAvailable => 'N/A';
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
	@override String get supportAndLegal => 'SOPORTE Y LEGAL';
	@override String get dangerZone => 'ZONA DE PELIGRO';
	@override String get developer => 'DESARROLLADOR';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileEs implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar Perfil';
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
	@override String get title => 'Unidad de Altura';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitEs implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidad de Peso';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersEs implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recordatorios de Comidas';
	@override String get subtitle => 'Mantente en el camino con alertas oportunas';
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
	@override String get title => 'Enviar Comentarios';
	@override String subtitle({required Object appLabel}) => 'Ayúdanos a mejorar ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Comentarios sobre la aplicación ${appLabel}';
	@override String get emailBodyPrefix => 'Por favor, proporciona tus comentarios a continuación:';
	@override String get appVersion => 'Versión de la App';
	@override String get device => 'Dispositivo';
	@override String get osVersion => 'Versión del SO';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataEs implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Borrar Todos los Datos';
	@override String get subtitle => 'Eliminar de forma irreversible toda tu información';
	@override String get confirmationTitle => '¿Borrar Todos los Datos?';
	@override String get confirmationMessage => 'Esta acción no se puede deshacer. Todas tus comidas registradas, favoritas y configuraciones de perfil se eliminarán permanentemente.';
	@override String get cancel => 'Cancelar';
	@override String get clearEverything => 'Borrar Todo';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsEs implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opciones de Depuración';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastEs implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora del Desayuno! 🍳';
	@override String get body => 'No olvides registrar tu desayuno';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchEs implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora del Almuerzo! 🥗';
	@override String get body => 'Es hora de registrar tu almuerzo';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerEs implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora de la Cena! 🍽️';
	@override String get body => 'No olvides registrar tu cena';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackEs implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora de la Merienda! 🍎';
	@override String get body => 'Es momento de una merienda saludable';
}

// Path: notifications.test
class _TranslationsNotificationsTestEs implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificación de Prueba';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapEs implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} proporciona información nutricional estimada. La precisión depende de tu entrada y las variaciones de los alimentos. Úsalo como una guía, no como una fuente definitiva. Consulta a un profesional para obtener consejos dietéticos personalizados.';
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
	@override String get title => 'Acerca de la Estimación de Peso';
	@override String get description => 'El cambio de peso proyectado es una estimación teórica basada en el modelo simple de calorías ingresadas vs. calorías gastadas. Está destinado solo para orientación motivacional, no como predicción de tu peso real.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyEs calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyEs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsEs biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsEs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightEs waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightEs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEs professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEs._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsEs implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Notificaciones';
	@override String get healthConnect => 'Health Connect';
	@override String get appInfo => 'Información de la App';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionEs implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconocimiento Inteligente de Alimentos';
	@override String get description => 'Toma una foto y deja que la IA identifique tu comida';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisEs implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análisis de IA';
	@override String get description => 'Obtén datos nutricionales instantáneos a partir de tus descripciones';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationEs implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integración de Salud';
	@override String get description => 'Conéctate con Health Connect para obtener mejores insights';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesEs implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Bajo Peso';
	@override String get healthyWeight => 'Peso Saludable';
	@override String get overweight => 'Sobrepeso';
	@override String get obese => 'Obeso';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesEs implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podemos ayudarte a construir un plan saludable para alcanzar un peso equilibrado con comidas ricas en nutrientes.';
	@override String get healthy => '¡Gran trabajo! Estás en un rango saludable. Te ayudaremos a mantener tu vitalidad y niveles de energía.';
	@override String overweight({required Object appLabel}) => '${appLabel} simplificará tu viaje con un seguimiento impulsado por IA para ayudarte a alcanzar tus objetivos de manera cómoda.';
	@override String get obese => 'Estamos aquí para apoyarte con orientación personalizada y estrategias sostenibles para tus objetivos de salud.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingEs implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seguimiento Automático de Calorías';
	@override String get description => 'Rastrea las calorías consumidas desde tus aplicaciones de fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsEs implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Insights de Progreso';
	@override String get description => 'Obtén insights detallados sobre tus tendencias de salud';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationEs implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integración Sin Problemas';
	@override String get description => 'Sincroniza datos de tus aplicaciones de salud favoritas';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessEs implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No Estás Solo';
	@override String get genericMessage => 'Las investigaciones muestran que el seguimiento constante es el predictor número 1 del éxito a largo plazo.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Para un ${age} años ${gender} que busca ${goal}, el seguimiento constante es el predictor número 1 del éxito.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} lo hace 10 veces más fácil que hacerlo manualmente.';
	@override String get getStartedTitle => '¿Listo para comenzar?';
	@override String get tipPhoto => 'Toma una foto de tus comidas para un análisis instantáneo';
	@override String get tipConsistency => 'Registra tus comidas de manera constante para ver un progreso significativo';
	@override String get tipProgress => 'Rastrea tu progreso diariamente para mantenerte motivado';
	@override String get button => 'Vamos';
	@override String get defaultGender => 'individuo';
	@override String get defaultGoal => 'tú más saludable';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileEs implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tu Perfil de Salud';
	@override String bmiDescription({required Object bmi}) => 'Basado en tus métricas, tu IMC es ${bmi}.';
	@override String get finalizeDescription => 'Finalicemos tu perfil para personalizar tu experiencia.';
	@override String get goalGain => 'aumentar';
	@override String get goalLose => 'perder';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Para alcanzar tu objetivo, necesitas ${direction} ${diff} ${unit}.';
	@override String get goalReached => '¡Estás en tu peso objetivo! Te ayudaremos a mantenerlo.';
	@override String get button => 'Vamos';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleEs implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Gran Comienzo!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Has dado el primer paso hacia ${goalText}. Dado que estás ${activityText}, ${appLabel} ajustará tus objetivos para que coincidan con tu estilo de vida.';
	@override String get personalizedTargets => 'Objetivos calóricos personalizados';
	@override String get aiMealDetection => 'Detección de comidas impulsada por IA';
	@override String get macroBreakdowns => 'Desgloses detallados de macronutrientes';
	@override String get button => 'Vamos';
	@override String get defaultGoal => 'tus objetivos';
	@override String get defaultActivity => 'activo';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightEs implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perder Peso';
	@override String get description => 'Crea un déficit calórico para perder peso';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightEs implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mantener Peso';
	@override String get description => 'Mantén tu peso actual';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightEs implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Aumentar Peso';
	@override String get description => 'Crea un superávit calórico para aumentar de peso';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryEs implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentario';
	@override String get description => 'Poca o ninguna actividad física';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveEs implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Levemente Activo';
	@override String get description => 'Ejercicio ligero 1-3 días/semana';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveEs implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderadamente Activo';
	@override String get description => 'Ejercicio moderado 3-5 días/semana';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveEs implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Muy Activo';
	@override String get description => 'Ejercicio intenso 6-7 días/semana';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveEs implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extremadamente Activo';
	@override String get description => 'Ejercicio muy intenso, trabajo físico';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeEs implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tamaño de Porción';
	@override String get description => 'La precisión de las estimaciones depende en gran medida de tu correcta evaluación del tamaño de la porción.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsEs implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Métodos de Preparación';
	@override String description({required Object appLabel}) => 'Los métodos de cocción pueden alterar significativamente el contenido nutricional de los alimentos. Las estimaciones de ${appLabel} pueden no tener en cuenta siempre estas variaciones.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsEs implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredientes';
	@override String get description => 'Los platos complejos con muchos ingredientes ocultos pueden llevar a estimaciones menos precisas.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsEs implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitaciones de la Base de Datos';
	@override String description({required Object appLabel}) => 'La base de datos de alimentos de ${appLabel} es extensa, pero puede no incluir cada alimento o variación individual.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyEs implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Precisión Calórica';
	@override String get description => 'Esta estimación es tan precisa como tu seguimiento de la ingesta y gasto de calorías. Un registro inexacto resultará en una proyección inexacta.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsEs implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Factores Biológicos';
	@override String description({required Object appLabel}) => 'La pérdida/aumento de peso real está influenciada por el metabolismo, hormonas, sueño, estrés, hidratación y otros factores individuales que ${appLabel} no puede medir.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightEs implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Peso del Agua y Fluctuaciones';
	@override String get description => 'El peso diario normal puede fluctuar significativamente debido a la retención de agua, digestión y timing. La estimación no toma en cuenta estos cambios diarios.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEs implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientación Profesional';
	@override String get description => 'No utilices esta estimación para tomar decisiones médicas. Siempre consulta a un profesional de la salud o dietista registrado para asesoría personalizada sobre gestión de peso.';
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
			'onboarding.welcome' => ({required Object appLabel}) => 'Bienvenido a ${appLabel}',
			'onboarding.subtitle' => 'Tu compañero personal de nutrición impulsado por IA',
			'onboarding.getStarted' => 'Comenzar',
			'onboarding.features.foodRecognition.title' => 'Reconocimiento Inteligente de Alimentos',
			'onboarding.features.foodRecognition.description' => 'Toma una foto y deja que la IA identifique tu comida',
			'onboarding.features.aiAnalysis.title' => 'Análisis de IA',
			'onboarding.features.aiAnalysis.description' => 'Obtén datos nutricionales instantáneos a partir de tus descripciones',
			'onboarding.features.healthIntegration.title' => 'Integración de Salud',
			'onboarding.features.healthIntegration.description' => 'Conéctate con Health Connect para obtener mejores insights',
			'onboarding.gender.title' => '¿Cuál es tu género?',
			'onboarding.gender.description' => 'El género nos ayuda a calcular con precisión tu tasa metabólica basal (TMB).',
			'onboarding.gender.next' => 'Siguiente',
			'onboarding.height.title' => '¿Cuánto mides?',
			'onboarding.height.description' => 'Tu altura nos ayuda a calcular con precisión tu IMC y tus necesidades energéticas.',
			'onboarding.height.metric' => 'Métrico',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Siguiente',
			'onboarding.weight.currentTitle' => '¿Cuál es tu peso actual?',
			'onboarding.weight.currentDescription' => 'Tu peso actual es esencial para personalizar tus objetivos diarios.',
			'onboarding.weight.targetTitle' => '¿Cuál es tu peso objetivo?',
			'onboarding.weight.targetDescription' => 'Establecer un peso objetivo nos ayuda a determinar tu plan a largo plazo.',
			'onboarding.weight.metric' => 'Métrico',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Siguiente',
			'onboarding.age.title' => '¿Cuándo es tu cumpleaños?',
			'onboarding.age.description' => 'Tu edad nos ayuda a calcular con precisión tus necesidades calóricas.',
			'onboarding.age.next' => 'Siguiente',
			'onboarding.bmiScale.underweight' => 'Bajo Peso',
			'onboarding.bmiScale.healthy' => 'Peso Saludable',
			'onboarding.bmiScale.overweight' => 'Sobrepeso',
			'onboarding.bmiScale.obese' => 'Obeso',
			'onboarding.bmiScale.categories.underweight' => 'Bajo Peso',
			'onboarding.bmiScale.categories.healthyWeight' => 'Peso Saludable',
			'onboarding.bmiScale.categories.overweight' => 'Sobrepeso',
			'onboarding.bmiScale.categories.obese' => 'Obeso',
			'onboarding.bmiScale.messages.underweight' => 'Podemos ayudarte a construir un plan saludable para alcanzar un peso equilibrado con comidas ricas en nutrientes.',
			'onboarding.bmiScale.messages.healthy' => '¡Gran trabajo! Estás en un rango saludable. Te ayudaremos a mantener tu vitalidad y niveles de energía.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} simplificará tu viaje con un seguimiento impulsado por IA para ayudarte a alcanzar tus objetivos de manera cómoda.',
			'onboarding.bmiScale.messages.obese' => 'Estamos aquí para apoyarte con orientación personalizada y estrategias sostenibles para tus objetivos de salud.',
			'onboarding.weightGoal.title' => '¿Cuál es tu objetivo?',
			'onboarding.weightGoal.description' => 'Elige el objetivo que mejor describa lo que quieres lograr',
			'onboarding.activityLevel.title' => '¿Qué tan activo eres?',
			'onboarding.activityLevel.description' => 'Esto nos ayuda a calcular tus necesidades calóricas diarias con mayor precisión',
			'onboarding.healthConnect.title' => 'Conéctate con Health Connect',
			'onboarding.healthConnect.description' => 'Sincroniza tus datos de salud para obtener mejores insights y seguimiento automático de calorías',
			'onboarding.healthConnect.automaticTracking.title' => 'Seguimiento Automático de Calorías',
			'onboarding.healthConnect.automaticTracking.description' => 'Rastrea las calorías consumidas desde tus aplicaciones de fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Insights de Progreso',
			'onboarding.healthConnect.progressInsights.description' => 'Obtén insights detallados sobre tus tendencias de salud',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integración Sin Problemas',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sincroniza datos de tus aplicaciones de salud favoritas',
			'onboarding.healthConnect.connected' => 'Health Connect Conectado',
			'onboarding.healthConnect.notConnected' => 'Health Connect No Conectado',
			'onboarding.healthConnect.setup' => 'Configura Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Omitir por ahora',
			'onboarding.healthConnect.statusConnected' => 'Health Connect está conectado.',
			'onboarding.healthConnect.statusSuccess' => '¡Health Connect se ha conectado exitosamente!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permiso denegado. Por favor, habilita los permisos de Health Connect desde la configuración de tu teléfono para ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Error configurando Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'No Estás Solo',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Las investigaciones muestran que el seguimiento constante es el predictor número 1 del éxito a largo plazo.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Para un ${age} años ${gender} que busca ${goal}, el seguimiento constante es el predictor número 1 del éxito.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} lo hace 10 veces más fácil que hacerlo manualmente.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '¿Listo para comenzar?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Toma una foto de tus comidas para un análisis instantáneo',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Registra tus comidas de manera constante para ver un progreso significativo',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Rastrea tu progreso diariamente para mantenerte motivado',
			'onboarding.reinforcement.trackingSuccess.button' => 'Vamos',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individuo',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'tú más saludable',
			'onboarding.reinforcement.healthProfile.title' => 'Tu Perfil de Salud',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Basado en tus métricas, tu IMC es ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Finalicemos tu perfil para personalizar tu experiencia.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'aumentar',
			'onboarding.reinforcement.healthProfile.goalLose' => 'perder',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Para alcanzar tu objetivo, necesitas ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => '¡Estás en tu peso objetivo! Te ayudaremos a mantenerlo.',
			'onboarding.reinforcement.healthProfile.button' => 'Vamos',
			'onboarding.reinforcement.goalLifestyle.title' => '¡Gran Comienzo!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Has dado el primer paso hacia ${goalText}. Dado que estás ${activityText}, ${appLabel} ajustará tus objetivos para que coincidan con tu estilo de vida.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Objetivos calóricos personalizados',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Detección de comidas impulsada por IA',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Desgloses detallados de macronutrientes',
			'onboarding.reinforcement.goalLifestyle.button' => 'Vamos',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'tus objetivos',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'activo',
			'tabs.dashboard' => 'Tablero',
			'tabs.history' => 'Historia',
			'home.dailyGoal.title' => 'Establece tu Objetivo Diario',
			'home.dailyGoal.titleSet' => 'Tu Objetivo Diario',
			'home.dailyGoal.description' => '¿Listo para embarcarte en tu viaje de bienestar? Establece tu objetivo calórico diario a continuación para iniciar tu progreso.',
			'home.dailyGoal.descriptionSet' => '¡Tu brújula está ajustada! Este es tu objetivo calórico diario para guiarte.',
			'home.dailyGoal.yourGoal' => 'Tu Objetivo',
			'home.dailyGoal.dailyCalories' => 'Calorías diarias (kcal)',
			'home.dailyGoal.setGoal' => 'Establecer Objetivo',
			'home.dailyGoal.intake' => 'Ingesta',
			'home.dailyGoal.burned' => 'Quemadas',
			'home.dailyGoal.weightImpact' => 'Impacto en el Peso',
			'home.dailyGoal.estLoss' => 'Pérdida estimada de',
			'home.dailyGoal.estGain' => 'Aumento estimado de',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Resumen Diario',
			'home.dailySummary.calories' => 'Calorías',
			'home.dailySummary.carbs' => 'Carbohidratos',
			'home.dailySummary.protein' => 'Proteínas',
			'home.dailySummary.fat' => 'Grasas',
			'home.dailySummary.fiber' => 'Fibra',
			'home.intakeProgress.title' => 'División de Macronutrientes de Hoy',
			'home.intakeProgress.target' => 'Objetivo',
			'home.intakeProgress.current' => 'Actual',
			'home.intakeHistory.title' => 'Historial de Macronutrientes de 7 Días',
			'home.intakeHistory.noHistoryYet' => 'Aún sin historial',
			'home.intakeHistory.startLogging' => 'Comienza a registrar comidas para ver tus\ntendencias de macronutrientes de 7 días aquí',
			'home.mealLog.title' => 'Comidas Registradas',
			'home.mealLog.emptyMessage' => 'Captura una foto de tu última comida para registrarla aquí.',
			'home.mealLog.noMealsToday' => 'No se han registrado comidas para hoy',
			'home.mealLog.seeAllMeals' => 'Ver todas las comidas',
			'home.mealDescription.title' => 'Añadir Rápidamente con IA',
			'home.mealDescription.description' => 'Describe tu comida y deja que la IA se ocupe de los detalles.',
			'home.mealDescription.hint' => 'ej. Para el desayuno, tuve un tazón grande de avena con un plátano en rodajas y una cucharada de proteína de suero...',
			'home.mealDescription.analyzeMeal' => 'Analizar comida',
			'home.favoriteMeals.title' => 'Comidas Favoritas',
			'home.favoriteMeals.description' => 'Añade rápidamente una de tus comidas favoritas.',
			'home.favoriteMeals.noFavorites' => 'Aún no tienes comidas favoritas.',
			'home.favoriteMeals.addFavoriteHint' => 'Haz clic en la estrella de una comida para marcarla como favorita.',
			'home.favoriteMeals.seeAll' => 'Ver todas',
			'home.favoriteMeals.add' => 'Añadir',
			'home.mealSnap.title' => 'Captura y Rastrea Tu Comida',
			'home.mealSnap.description' => 'Usa tu cámara para tomar una foto de tu comida para análisis de IA.',
			'home.mealSnap.openCamera' => 'Abrir Cámara',
			'home.connectHealth.title' => 'Sincronizar con Health Connect',
			'home.connectHealth.description' => 'Sincroniza tus datos de nutrición con Health Connect',
			'home.connectHealth.install' => 'Instalar',
			'home.connectHealth.connect' => 'Conectar',
			'history.noMeals' => 'No se han registrado comidas',
			'history.emptyMessage' => 'Captura una foto de tu última comida para registrarla aquí.',
			'history.today' => 'Hoy',
			'history.yesterday' => 'Ayer',
			'meal.ohNo' => '¡Oh no!',
			'meal.delete' => 'Eliminar',
			'meal.editMeal' => 'Editar Comida',
			'meal.addMeal' => 'Añadir Comida',
			'meal.saveMeal' => 'Guardar Comida',
			'meal.save' => 'Guardar',
			'meal.mealName' => 'Nombre de la Comida',
			'meal.mealQuantity' => 'Cantidad de la Comida',
			'meal.mealQuantityHint' => 'ej., 1 tazón, 2 rebanadas',
			'meal.timeOfMeal' => 'Hora de la Comida',
			'meal.timeOfMealHint' => 'Selecciona la hora en que comiste',
			'meal.mealType' => 'Tipo de Comida',
			'meal.nutrition.calories' => 'Calorías',
			'meal.nutrition.carbs' => 'Carbohidratos (g)',
			'meal.nutrition.protein' => 'Proteínas (g)',
			'meal.nutrition.fat' => 'Grasas (g)',
			'meal.nutrition.fiber' => 'Fibra (g)',
			'meal.deleteConfirmation.title' => 'Eliminar Comida',
			'meal.deleteConfirmation.message' => '¿Estás seguro de que deseas eliminar esta entrada de comida?',
			'meal.deleteConfirmation.cancel' => 'Cancelar',
			'meal.deleteConfirmation.delete' => 'Eliminar',
			'meal.addedToLog' => '¡Comida añadida a tu registro!',
			'meal.couldNotAdd' => ({required Object error}) => 'No se pudo añadir la comida: ${error}',
			'meal.removedFromFavorites' => '¡Eliminada de favoritos!',
			'meal.savedAsFavorite' => '¡Comida guardada como favorita!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'No se pudo actualizar favorito: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'No se pudo procesar: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'No se pudo procesar la imagen: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Error al comprimir la imagen: ${error}',
			'meal.failedToSave' => 'No se pudo guardar los datos. Por favor, inténtalo de nuevo.',
			'favorites.title' => 'Favoritos',
			'favorites.empty' => 'Aún no hay comidas favoritas.',
			'profile.title' => 'Perfil',
			'profile.noProfileData' => 'No se encontraron datos de perfil',
			'profile.yourProfile' => 'Tu Perfil',
			'profile.viewAndManage' => 'Ver y gestionar tu información de salud',
			'profile.sections.profile' => 'PERFIL',
			'profile.sections.basicInformation' => 'INFORMACIÓN BÁSICA',
			'profile.sections.goalsAndActivity' => 'OBJETIVOS Y ACTIVIDAD',
			'profile.sections.calculatedValues' => 'VALORES CALCULADOS',
			'profile.gender' => 'Género',
			'profile.height' => 'Altura',
			'profile.weight' => 'Peso',
			'profile.age' => 'Edad',
			'profile.weightGoal' => 'Objetivo de Peso',
			'profile.activityLevel' => 'Nivel de Actividad',
			'profile.healthMetrics' => 'Métricas de Salud',
			'profile.notSet' => 'No establecido',
			'profile.years' => 'años',
			'profile.updatedSuccessfully' => '¡Perfil actualizado exitosamente!',
			'profile.calculatedValues.bmr' => 'TMB',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Objetivo Diario',
			'profile.calculatedValues.calPerDay' => 'cal/día',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Puntuación de Salud',
			'healthScore.whyThisScore' => '¿Por qué esta puntuación?',
			'healthScore.note' => 'Esta puntuación es una estimación de IA basada en los ingredientes identificados y la densidad nutricional. Siempre consulta a un profesional para obtener consejos dietéticos.',
			'healthScore.unhealthy' => 'No Saludable',
			'healthScore.healthy' => 'Saludable',
			'healthScore.neutral' => 'Neutral',
			'editProfile.title' => 'Editar Perfil',
			'editProfile.sections.personalInformation' => 'INFORMACIÓN PERSONAL',
			'editProfile.sections.physicalMeasurements' => 'MEDIDAS FÍSICAS',
			'editProfile.sections.goalsAndActivity' => 'OBJETIVOS Y ACTIVIDAD',
			'editProfile.gender' => 'Género',
			'editProfile.dateOfBirth' => 'Fecha de Nacimiento',
			'editProfile.height' => 'Altura',
			'editProfile.weight' => 'Peso',
			'editProfile.weightGoal' => 'Objetivo de Peso',
			'editProfile.activityLevel' => 'Nivel de Actividad',
			'editProfile.metric' => 'Métrico',
			'editProfile.imperial' => 'Imperial',
			'editProfile.metricCm' => 'Métrico (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Métrico (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Hombre',
			'editProfile.genders.female' => 'Mujer',
			'editProfile.genders.other' => 'Otro',
			'editProfile.weightGoals.loseWeight.name' => 'Perder Peso',
			'editProfile.weightGoals.loseWeight.description' => 'Crea un déficit calórico para perder peso',
			'editProfile.weightGoals.maintainWeight.name' => 'Mantener Peso',
			'editProfile.weightGoals.maintainWeight.description' => 'Mantén tu peso actual',
			'editProfile.weightGoals.gainWeight.name' => 'Aumentar Peso',
			'editProfile.weightGoals.gainWeight.description' => 'Crea un superávit calórico para aumentar de peso',
			'editProfile.activityLevels.sedentary.name' => 'Sedentario',
			'editProfile.activityLevels.sedentary.description' => 'Poca o ninguna actividad física',
			'editProfile.activityLevels.lightlyActive.name' => 'Levemente Activo',
			'editProfile.activityLevels.lightlyActive.description' => 'Ejercicio ligero 1-3 días/semana',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderadamente Activo',
			'editProfile.activityLevels.moderatelyActive.description' => 'Ejercicio moderado 3-5 días/semana',
			'editProfile.activityLevels.veryActive.name' => 'Muy Activo',
			'editProfile.activityLevels.veryActive.description' => 'Ejercicio intenso 6-7 días/semana',
			'editProfile.activityLevels.extremelyActive.name' => 'Extremadamente Activo',
			'editProfile.activityLevels.extremelyActive.description' => 'Ejercicio muy intenso, trabajo físico',
			'settings.title' => 'Configuración',
			'settings.sections.profile' => 'PERFIL',
			'settings.sections.localization' => 'LOCALIZACIÓN',
			'settings.sections.notifications' => 'NOTIFICACIONES',
			'settings.sections.supportAndLegal' => 'SOPORTE Y LEGAL',
			'settings.sections.dangerZone' => 'ZONA DE PELIGRO',
			'settings.sections.developer' => 'DESARROLLADOR',
			'settings.editProfile.title' => 'Editar Perfil',
			'settings.editProfile.subtitle' => 'Actualiza tu información personal',
			'settings.language.title' => 'Idioma',
			'settings.language.subtitle' => 'Elige tu idioma preferido',
			'settings.language.searchHint' => 'Buscar idiomas...',
			'settings.language.noResults' => 'No se encontraron resultados',
			'settings.heightUnit.title' => 'Unidad de Altura',
			'settings.weightUnit.title' => 'Unidad de Peso',
			'settings.mealReminders.title' => 'Recordatorios de Comidas',
			'settings.mealReminders.subtitle' => 'Mantente en el camino con alertas oportunas',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Claro',
			'settings.theme.dark' => 'Oscuro',
			'settings.theme.system' => 'Sistema',
			'settings.sendFeedback.title' => 'Enviar Comentarios',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Ayúdanos a mejorar ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Comentarios sobre la aplicación ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Por favor, proporciona tus comentarios a continuación:',
			'settings.sendFeedback.appVersion' => 'Versión de la App',
			'settings.sendFeedback.device' => 'Dispositivo',
			'settings.sendFeedback.osVersion' => 'Versión del SO',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Borrar Todos los Datos',
			'settings.clearAllData.subtitle' => 'Eliminar de forma irreversible toda tu información',
			'settings.clearAllData.confirmationTitle' => '¿Borrar Todos los Datos?',
			'settings.clearAllData.confirmationMessage' => 'Esta acción no se puede deshacer. Todas tus comidas registradas, favoritas y configuraciones de perfil se eliminarán permanentemente.',
			'settings.clearAllData.cancel' => 'Cancelar',
			'settings.clearAllData.clearEverything' => 'Borrar Todo',
			'settings.debugOptions.title' => 'Opciones de Depuración',
			'settings.developerModeEnabled' => '¡Modo de desarrollador habilitado!',
			'reminders.title' => 'Mantente en el camino con los recordatorios',
			'reminders.description' => 'Recibe recordatorios suaves para registrar tus comidas y mantenerte constante con tus objetivos nutricionales',
			'reminders.notificationsEnabled' => 'Notificaciones Habilitadas',
			'reminders.notificationsDisabled' => 'Notificaciones Deshabilitadas',
			'reminders.enabledSubtitle' => 'Recibirás recordatorios de comidas',
			'reminders.disabledSubtitle' => 'Habilita las notificaciones para recibir recordatorios de comidas',
			'reminders.mealReminders' => 'Recordatorios de Comidas',
			'reminders.breakfast' => 'Desayuno',
			'reminders.lunch' => 'Almuerzo',
			'reminders.dinner' => 'Cena',
			'reminders.snack' => 'Merienda',
			'reminders.unknown' => 'Desconocido',
			'reminders.change' => 'Cambiar',
			'reminders.enableNotifications' => 'Habilitar Notificaciones',
			'reminders.skipForNow' => 'Omitir por ahora',
			'reminders.saveChanges' => 'Guardar Cambios',
			'reminders.enabledSuccessfully' => '¡Notificaciones habilitadas con éxito!',
			'reminders.permissionDenied' => 'Permiso de notificación denegado',
			'reminders.errorEnabling' => ({required Object error}) => 'Error al habilitar notificaciones: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Error al completar la configuración: ${error}',
			'notifications.breakfast.title' => '¡Hora del Desayuno! 🍳',
			'notifications.breakfast.body' => 'No olvides registrar tu desayuno',
			'notifications.lunch.title' => '¡Hora del Almuerzo! 🥗',
			'notifications.lunch.body' => 'Es hora de registrar tu almuerzo',
			'notifications.dinner.title' => '¡Hora de la Cena! 🍽️',
			'notifications.dinner.body' => 'No olvides registrar tu cena',
			'notifications.snack.title' => '¡Hora de la Merienda! 🍎',
			'notifications.snack.body' => 'Es momento de una merienda saludable',
			'notifications.test.title' => 'Notificación de Prueba',
			'login.title' => 'Iniciar Sesión',
			'login.signInWithGoogle' => 'Iniciar sesión con Google',
			'login.signInFailed' => 'Fallo en el inicio de sesión de Google o fue cancelado.',
			'disclaimer.pleaseNote' => 'Ten en cuenta',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} proporciona información nutricional estimada. La precisión depende de tu entrada y las variaciones de los alimentos. Úsalo como una guía, no como una fuente definitiva. Consulta a un profesional para obtener consejos dietéticos personalizados.',
			'disclaimer.snap.portionSize.title' => 'Tamaño de Porción',
			'disclaimer.snap.portionSize.description' => 'La precisión de las estimaciones depende en gran medida de tu correcta evaluación del tamaño de la porción.',
			'disclaimer.snap.preparationMethods.title' => 'Métodos de Preparación',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Los métodos de cocción pueden alterar significativamente el contenido nutricional de los alimentos. Las estimaciones de ${appLabel} pueden no tener en cuenta siempre estas variaciones.',
			'disclaimer.snap.ingredients.title' => 'Ingredientes',
			'disclaimer.snap.ingredients.description' => 'Los platos complejos con muchos ingredientes ocultos pueden llevar a estimaciones menos precisas.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitaciones de la Base de Datos',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'La base de datos de alimentos de ${appLabel} es extensa, pero puede no incluir cada alimento o variación individual.',
			'disclaimer.weightEstimate.title' => 'Acerca de la Estimación de Peso',
			'disclaimer.weightEstimate.description' => 'El cambio de peso proyectado es una estimación teórica basada en el modelo simple de calorías ingresadas vs. calorías gastadas. Está destinado solo para orientación motivacional, no como predicción de tu peso real.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Precisión Calórica',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Esta estimación es tan precisa como tu seguimiento de la ingesta y gasto de calorías. Un registro inexacto resultará en una proyección inexacta.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Factores Biológicos',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'La pérdida/aumento de peso real está influenciada por el metabolismo, hormonas, sueño, estrés, hidratación y otros factores individuales que ${appLabel} no puede medir.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Peso del Agua y Fluctuaciones',
			'disclaimer.weightEstimate.waterWeight.description' => 'El peso diario normal puede fluctuar significativamente debido a la retención de agua, digestión y timing. La estimación no toma en cuenta estos cambios diarios.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Orientación Profesional',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'No utilices esta estimación para tomar decisiones médicas. Siempre consulta a un profesional de la salud o dietista registrado para asesoría personalizada sobre gestión de peso.',
			'common.close' => 'Cerrar',
			'common.kContinue' => 'Continuar',
			'errors.loadingProfileData' => 'Error al cargar datos del perfil',
			'errors.somethingWentWrong' => 'Algo salió mal.',
			'debug.title' => 'Opciones de Depuración',
			'debug.sections.notifications' => 'Notificaciones',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.appInfo' => 'Información de la App',
			'debug.showActiveNotifications' => 'Mostrar Notificaciones Activas',
			'debug.scheduleTestNotification' => 'Programar Notificación de Prueba (10s)',
			'debug.triggerBreakfastNotification' => 'Activar Notificación de Desayuno',
			'debug.cancelAllNotifications' => 'Cancelar Todas las Notificaciones',
			'debug.activeNotifications' => 'Notificaciones Activas',
			'debug.noTitle' => 'Sin Título',
			'debug.noBody' => 'Sin Cuerpo',
			'debug.fetchTodaysSteps' => 'Obtener Pasos de Hoy',
			'debug.fetchTodaysCalories' => 'Obtener Calorías de Hoy',
			'debug.fetchLatestWeight' => 'Obtener Último Peso',
			'debug.fetchLatestHeight' => 'Obtener Última Altura',
			'debug.writeTestWeight' => 'Escribir Peso de Prueba (70kg)',
			'debug.writeTestHeight' => 'Escribir Altura de Prueba (175cm)',
			'debug.syncLast7Days' => 'Sincronizar Últimos 7 Días',
			'debug.sync7DaysTitle' => 'Sincronización de 7 Días',
			'debug.checkCurrentLocale' => 'Verificar Localización Actual',
			'debug.currentLocale' => 'Localización Actual',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Idioma: ${languageCode}\nPaís: ${countryCode}\nSistema de Unidades: ${unitSystem}',
			'debug.latestWeight' => 'Último Peso',
			'debug.latestHeight' => 'Última Altura',
			'debug.todaysCalories' => 'Calorías de Hoy',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Total de calorías quemadas: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Se sincronizaron exitosamente ${count} puntos de datos de Pasos, Calorías y Peso en los últimos 7 días.',
			'debug.noWeightData' => 'No se encontraron datos de peso en los últimos 30 días.',
			'debug.noHeightData' => 'No se encontraron datos de altura en el último año.',
			'debug.noCalorieData' => 'No se encontraron datos de calorías para hoy.',
			'debug.weightWritten' => 'Peso de prueba escrito con éxito (70kg).',
			'debug.weightWriteFailed' => 'Fallo al escribir peso de prueba.',
			'debug.heightWritten' => 'Altura de prueba escrita con éxito (175cm).',
			'debug.heightWriteFailed' => 'Fallo al escribir altura de prueba.',
			'debug.noNotifications' => 'No hay notificaciones activas.',
			'debug.testNotificationScheduled' => 'Notificación de prueba programada para dentro de 10 segundos.',
			'debug.testNotificationBody' => 'Esta es una notificación de prueba programada para dentro de 10 segundos.',
			'debug.breakfastNotificationTriggered' => 'Notificación de desayuno activada.',
			'debug.allNotificationsCancelled' => 'Se cancelaron todas las notificaciones.',
			'debug.fetchingData' => 'Obteniendo datos de los últimos 7 días...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'No se pudo sincronizar con Health Connect',
			'health.mealSynced' => 'Comida sincronizada con Health Connect',
			_ => null,
		};
	}
}
