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
class TranslationsEs extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

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
	@override late final _TranslationsLocalNutritionPhase4Es localNutritionPhase4 = _TranslationsLocalNutritionPhase4Es._(_root);
	@override late final _TranslationsCommonEs common = _TranslationsCommonEs._(_root);
	@override late final _TranslationsFeedbackRatingEs feedbackRating = _TranslationsFeedbackRatingEs._(_root);
	@override late final _TranslationsHealthEs health = _TranslationsHealthEs._(_root);
}

// Path: errors
class _TranslationsErrorsEs extends TranslationsErrorsEn {
	_TranslationsErrorsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Has realizado demasiadas solicitudes. Espera un momento antes de intentarlo de nuevo.';
	@override String get networkError => 'Error de red. Por favor, verifica tu conexión a internet.';
	@override String get unknownError => 'Algo salió mal. Por favor, inténtalo de nuevo más tarde.';
	@override String get loadingProfileData => 'Error al cargar los datos del perfil';
	@override String get somethingWentWrong => 'Algo salió mal.';
	@override String get retry => 'Reintentar';
}

// Path: onboarding
class _TranslationsOnboardingEs extends TranslationsOnboardingEn {
	_TranslationsOnboardingEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bienvenido a ${appLabel}';
	@override String get subtitle => 'Tu compañero personal de nutrición potenciado por AI';
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
class _TranslationsTabsEs extends TranslationsTabsEn {
	_TranslationsTabsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Resumen';
	@override String get history => 'Historial';
}

// Path: home
class _TranslationsHomeEs extends TranslationsHomeEn {
	_TranslationsHomeEs._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _TranslationsHistoryEs extends TranslationsHistoryEn {
	_TranslationsHistoryEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'No hay comidas registradas';
	@override String get emptyMessage => 'Haz una foto de tu última comida para registrarla aquí.';
	@override String get today => 'Hoy';
	@override String get yesterday => 'Ayer';
}

// Path: meal
class _TranslationsMealEs extends TranslationsMealEn {
	_TranslationsMealEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get ohNo => '¡Vaya!';
	@override String get delete => 'Eliminar';
	@override String get editMeal => 'Editar comida';
	@override String get addMeal => 'Añadir comida';
	@override String get saveMeal => 'Guardar comida';
	@override String get save => 'Guardar';
	@override String get mealName => 'Nombre de la comida';
	@override String get mealNameHint => 'p.ej., Huevos revueltos con tostadas';
	@override String get nameRequired => 'Introduce un nombre para la comida antes de guardar.';
	@override String get mealQuantity => 'Cantidad de la comida';
	@override String get mealQuantityHint => 'p.ej., 1 bol, 2 rebanadas';
	@override String get timeOfMeal => 'Hora de la comida';
	@override String get timeOfMealHint => 'Selecciona la hora en que comiste';
	@override String get mealType => 'Tipo de comida';
	@override late final _TranslationsMealNutritionEs nutrition = _TranslationsMealNutritionEs._(_root);
	@override late final _TranslationsMealDeleteConfirmationEs deleteConfirmation = _TranslationsMealDeleteConfirmationEs._(_root);
	@override String get addedToLog => '¡Comida añadida a tu registro!';
	@override String couldNotAdd({required Object error}) => 'No se pudo añadir la comida: ${error}';
	@override String get savedSuccessfully => '¡Comida añadida con éxito!';
	@override String get updatedSuccessfully => '¡Comida actualizada con éxito!';
	@override String errorSaving({required Object error}) => 'Error al guardar la comida: ${error}';
	@override String get removedFromFavorites => '¡Eliminado de favoritos!';
	@override String get savedAsFavorite => '¡Comida guardada como favorita!';
	@override String get unfavorite => 'Quitar de favoritos';
	@override String couldNotUpdateFavorite({required Object error}) => 'No se pudo actualizar favorito: ${error}';
	@override String get feedbackThanks => '¡Gracias por la retroalimentación!';
	@override String get reanalysisUpdated => 'Se actualizó el análisis de la comida según tus comentarios.';
	@override String failedToProcess({required Object error}) => 'Error al procesar: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Error al procesar la imagen: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Error al comprimir la imagen: ${error}';
	@override String get failedToSave => 'Error al guardar los datos. Por favor, inténtalo de nuevo.';
	@override String get skip => 'Omitir';
	@override late final _TranslationsMealQuestionFlowEs questionFlow = _TranslationsMealQuestionFlowEs._(_root);
	@override late final _TranslationsMealAnalysisEs analysis = _TranslationsMealAnalysisEs._(_root);
	@override late final _TranslationsMealLocalInferenceEs localInference = _TranslationsMealLocalInferenceEs._(_root);
	@override late final _TranslationsMealFeedbackEs feedback = _TranslationsMealFeedbackEs._(_root);
}

// Path: favorites
class _TranslationsFavoritesEs extends TranslationsFavoritesEn {
	_TranslationsFavoritesEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritos';
	@override String get empty => 'Aún no hay comidas favoritas.';
	@override String get searchPlaceholder => 'Buscar comidas favoritas';
	@override String get searchEmptyTitle => 'Ningún favorito coincide con tu búsqueda';
	@override String get searchEmptySubtitle => 'Prueba con un nombre de comida, cantidad o tipo de comida diferente.';
	@override String get sortLabel => 'Ordenar favoritos';
	@override String get undo => 'Deshacer';
	@override String removed({required Object name}) => 'Se eliminó ${name} de favoritos';
	@override late final _TranslationsFavoritesSortOptionsEs sortOptions = _TranslationsFavoritesSortOptionsEs._(_root);
}

// Path: profile
class _TranslationsProfileEs extends TranslationsProfileEn {
	_TranslationsProfileEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get noProfileData => 'No se encontraron datos de perfil';
	@override String get yourProfile => 'Tu perfil';
	@override String get viewAndManage => 'Ver y administrar tu información de salud';
	@override late final _TranslationsProfileSectionsEs sections = _TranslationsProfileSectionsEs._(_root);
	@override String get gender => 'Género';
	@override String get height => 'Altura';
	@override String get weight => 'Peso';
	@override String get age => 'Edad';
	@override String get weightGoal => 'Objetivo de peso';
	@override String get targetWeight => 'Peso objetivo';
	@override String get activityLevel => 'Nivel de actividad';
	@override String get healthMetrics => 'Métricas de salud';
	@override String get notSet => 'No establecido';
	@override String get years => 'años';
	@override String get updatedSuccessfully => '¡Perfil actualizado con éxito!';
	@override late final _TranslationsProfileCalculatedValuesEs calculatedValues = _TranslationsProfileCalculatedValuesEs._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreEs extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Puntuación de salud';
	@override String get whyThisScore => '¿Por qué esta puntuación?';
	@override String get note => 'Esta puntuación es una estimación por AI basada en los ingredientes identificados y la densidad nutricional. Consulta siempre a un profesional para asesoramiento dietético.';
	@override String get unhealthy => 'Poco saludable';
	@override String get healthy => 'Saludable';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileEs extends TranslationsEditProfileEn {
	_TranslationsEditProfileEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar perfil';
	@override late final _TranslationsEditProfileSectionsEs sections = _TranslationsEditProfileSectionsEs._(_root);
	@override String get gender => 'Género';
	@override String get dateOfBirth => 'Fecha de nacimiento';
	@override String get height => 'Altura';
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
class _TranslationsSettingsEs extends TranslationsSettingsEn {
	_TranslationsSettingsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ajustes';
	@override late final _TranslationsSettingsSectionsEs sections = _TranslationsSettingsSectionsEs._(_root);
	@override late final _TranslationsSettingsEditProfileEs editProfile = _TranslationsSettingsEditProfileEs._(_root);
	@override late final _TranslationsSettingsLanguageEs language = _TranslationsSettingsLanguageEs._(_root);
	@override late final _TranslationsSettingsHeightUnitEs heightUnit = _TranslationsSettingsHeightUnitEs._(_root);
	@override late final _TranslationsSettingsWeightUnitEs weightUnit = _TranslationsSettingsWeightUnitEs._(_root);
	@override late final _TranslationsSettingsMealRemindersEs mealReminders = _TranslationsSettingsMealRemindersEs._(_root);
	@override late final _TranslationsSettingsLocalInferenceEs localInference = _TranslationsSettingsLocalInferenceEs._(_root);
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
class _TranslationsRemindersEs extends TranslationsRemindersEn {
	_TranslationsRemindersEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mantente al día con recordatorios';
	@override String get description => 'Recibe recordatorios suaves para registrar tus comidas y mantener la constancia con tus metas nutricionales';
	@override String get notificationsEnabled => 'Notificaciones activadas';
	@override String get notificationsDisabled => 'Notificaciones desactivadas';
	@override String get enabledSubtitle => 'Recibirás recordatorios de comidas';
	@override String get disabledSubtitle => 'Activa las notificaciones para recibir recordatorios de comidas';
	@override String get mealReminders => 'Recordatorios de comidas';
	@override String get breakfast => 'Desayuno';
	@override String get lunch => 'Almuerzo';
	@override String get dinner => 'Cena';
	@override String get snack => 'Merienda';
	@override String get unknown => 'Desconocido';
	@override String get change => 'Cambiar';
	@override String get enableNotifications => 'Activar notificaciones';
	@override String get skipForNow => 'Saltar por ahora';
	@override String get saveChanges => 'Guardar cambios';
	@override String get enabledSuccessfully => '¡Notificaciones activadas con éxito!';
	@override String get permissionDenied => 'Permiso de notificaciones denegado';
	@override String errorEnabling({required Object error}) => 'Error al activar notificaciones: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Error al completar la configuración: ${error}';
}

// Path: notifications
class _TranslationsNotificationsEs extends TranslationsNotificationsEn {
	_TranslationsNotificationsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastEs breakfast = _TranslationsNotificationsBreakfastEs._(_root);
	@override late final _TranslationsNotificationsLunchEs lunch = _TranslationsNotificationsLunchEs._(_root);
	@override late final _TranslationsNotificationsDinnerEs dinner = _TranslationsNotificationsDinnerEs._(_root);
	@override late final _TranslationsNotificationsSnackEs snack = _TranslationsNotificationsSnackEs._(_root);
	@override late final _TranslationsNotificationsTestEs test = _TranslationsNotificationsTestEs._(_root);
}

// Path: login
class _TranslationsLoginEs extends TranslationsLoginEn {
	_TranslationsLoginEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iniciar sesión';
	@override String get signInWithGoogle => 'Iniciar sesión con Google';
	@override String get signInFailed => 'El inicio de sesión con Google falló o fue cancelado.';
}

// Path: disclaimer
class _TranslationsDisclaimerEs extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Por favor ten en cuenta';
	@override late final _TranslationsDisclaimerSnapEs snap = _TranslationsDisclaimerSnapEs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateEs weightEstimate = _TranslationsDisclaimerWeightEstimateEs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsEs healthMetrics = _TranslationsDisclaimerHealthMetricsEs._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureEs calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureEs._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Es extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'Nutrición obtenida del paquete USDA descargado';
	@override String get nutritionCached => 'Nutrición obtenida de la caché USDA del dispositivo';
	@override String get nutritionMixed => 'Nutrición combinada de registros USDA descargados, almacenados en caché y remotos';
	@override String get calculationLocal => 'Calorías y macros calculados en este dispositivo';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: paquete USDA descargado';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: caché USDA del dispositivo';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: registro USDA obtenido mediante Calorify';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: constante nutricional determinista';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · conjunto de datos ${datasetVersion}';
	@override String get portionSmaller => 'Más pequeña';
	@override String get portionEstimated => 'Estimada';
	@override String get portionLarger => 'Más grande';
	@override String portionQuestion({required Object ingredient}) => '¿Qué porción se acercaba más para ${ingredient}?';
	@override String get mealTypeQuestion => '¿Qué comida era esta?';
	@override String get localNutritionTip => 'Calculado con datos nutricionales locales verificados.';
	@override String get offlineNutritionTitle => 'Descargar datos nutricionales';
	@override String get offlineNutritionSubtitle => 'Usa registros USDA verificados y cálculo determinista en este dispositivo cuando todos los ingredientes estén cubiertos.';
	@override String get offlineNutritionUnavailable => 'Los datos nutricionales locales no están disponibles para esta versión de la aplicación.';
	@override String get offlineNutritionNotDownloaded => 'No hay ningún paquete nutricional verificado descargado.';
	@override String get offlineNutritionInstalling => 'Descargando y verificando datos nutricionales…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Paquete ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} registros USDA en caché · ${size}';
	@override String get offlineNutritionUpdate => 'Buscar actualizaciones';
	@override String get offlineNutritionClear => 'Borrar datos nutricionales locales';
	@override String get offlineNutritionClearTitle => '¿Borrar los datos nutricionales locales?';
	@override String get offlineNutritionClearBody => 'Esto elimina el paquete USDA descargado y la caché de búsqueda. Las comidas registradas conservan la instantánea nutricional exacta utilizada al guardarlas.';
	@override String get offlineNutritionClearConfirm => 'Borrar datos';
	@override String offlineNutritionInstallFailed({required Object error}) => 'No se pudieron descargar y verificar los datos nutricionales locales: ${error}';
	@override String get offlineNutritionCleared => 'Datos nutricionales locales borrados';
}

// Path: common
class _TranslationsCommonEs extends TranslationsCommonEn {
	_TranslationsCommonEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get close => 'Cerrar';
	@override String get kContinue => 'Continuar';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingEs extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '¿Disfrutando ${appLabel}?';
	@override String get yes => 'Sí, me gusta';
	@override String get no => 'No mucho';
	@override String get rateStepHeading => 'Valorar en Play Store';
	@override String get emailStepHeading => 'Enviar comentarios por correo';
	@override String soloDevMessage({required Object appLabel}) => 'Una valoración rápida ayuda a otros a encontrar ${appLabel} y mantiene el desarrollo en marcha. ¿Tomarías un momento para dejar una?';
	@override String get shareFeedbackViaEmail => 'Tu retroalimentación da forma a lo que viene — leemos cada mensaje. ¿Te gustaría compartir tus ideas por correo?';
	@override String get rateCta => 'Valorar en Play Store';
	@override String get maybeLater => 'Quizá más tarde';
	@override String get sendFeedback => 'Enviar comentarios';
	@override String get noThanks => 'No, gracias';
	@override String get aboutUsDescription => 'Hecho con cuidado por un equipo pequeño. Nos enfocamos en privacidad, simplicidad y en ayudarte a construir mejores hábitos alimentarios.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '¿Curioso quién está detrás de ${appLabel}? Ver ';
	@override String get aboutUsLinkLabel => 'Acerca de nosotros';
	@override String get thankYouMessage => '¡Gracias! Te preguntaremos de nuevo otra vez.';
}

// Path: health
class _TranslationsHealthEs extends TranslationsHealthEn {
	_TranslationsHealthEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'No se pudo sincronizar con Health Connect';
	@override String get mealSynced => 'Comida sincronizada con Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesEs extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionEs foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionEs._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisEs aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisEs._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationEs healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationEs._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderEs extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cuál es tu género?';
	@override String get description => 'El género nos ayuda a calcular con precisión tu tasa metabólica basal (BMR).';
	@override String get next => 'Siguiente';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightEs extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cuánto mides?';
	@override String get description => 'Tu altura nos ayuda a calcular tu BMI y tus necesidades energéticas con precisión.';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Imperial';
	@override String get next => 'Siguiente';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightEs extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => '¿Cuál es tu peso actual?';
	@override String get currentDescription => 'Tu peso actual es esencial para personalizar tus metas diarias.';
	@override String get targetTitle => '¿Cuál es tu peso objetivo?';
	@override String get targetDescription => 'Establecer un peso objetivo nos ayuda a determinar tu plan a largo plazo.';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Imperial';
	@override String get next => 'Siguiente';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeEs extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cuándo es tu cumpleaños?';
	@override String get description => 'Tu edad nos ayuda a calcular tus necesidades calóricas con precisión.';
	@override String get next => 'Siguiente';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleEs extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Bajo';
	@override String get healthy => 'Saludable';
	@override String get overweight => 'Sobrepeso';
	@override String get obese => 'Obeso';
	@override late final _TranslationsOnboardingBmiScaleCategoriesEs categories = _TranslationsOnboardingBmiScaleCategoriesEs._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesEs messages = _TranslationsOnboardingBmiScaleMessagesEs._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalEs extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cuál es tu objetivo?';
	@override String get description => 'Elige la meta que mejor describa lo que quieres lograr';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelEs extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Qué tan activo eres?';
	@override String get description => 'Esto nos ayuda a calcular tus necesidades calóricas diarias con mayor precisión';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectEs extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conéctate con Health Connect';
	@override String get description => 'Sincroniza tus datos de salud para obtener mejores insights y seguimiento automático de calorías';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingEs automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingEs._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsEs progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsEs._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationEs seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationEs._(_root);
	@override String get connected => 'Health Connect conectado';
	@override String get notConnected => 'Health Connect no conectado';
	@override String get setup => 'Configurar Health Connect';
	@override String get skipForNow => 'Saltar por ahora';
	@override String get statusConnected => 'Health Connect está conectado.';
	@override String get statusSuccess => '¡Health Connect se ha conectado correctamente!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permiso denegado. Por favor, habilita los permisos de Health Connect desde los ajustes de tu teléfono para ${appLabel}.';
	@override String statusError({required Object error}) => 'Error al configurar Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementEs extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessEs trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessEs._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileEs healthProfile = _TranslationsOnboardingReinforcementHealthProfileEs._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleEs goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleEs._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryEs extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tu resumen por AI';
	@override String get logMore => 'Registra más comidas en los próximos días para obtener tus insights personalizados por AI.';
	@override String get loading => 'Cargando tu resumen...';
	@override String mealCount({required Object count}) => '${count} comidas registradas';
	@override String macroBalanceScore({required Object score}) => 'Puntuación de equilibrio ${score}';
	@override String get topFoods => 'Alimentos destacados';
	@override String get trendUp => 'Calorías en aumento';
	@override String get trendDown => 'Calorías en descenso';
	@override String get trendSteady => 'Calorías estables';
	@override String generatedAt({required Object time}) => 'Actualizado ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalEs extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Establece tu objetivo diario';
	@override String get titleSet => 'Tu objetivo diario';
	@override String get description => '¿Listo para comenzar tu camino de bienestar? Establece tu objetivo de calorías diarias abajo para impulsar tu progreso.';
	@override String get descriptionSet => '¡Tu rumbo está marcado! Este es tu objetivo calórico diario para guiarte.';
	@override String get yourGoal => 'Tu objetivo';
	@override String get goal => 'Meta';
	@override String get dailyCalories => 'Calorías diarias (kcal)';
	@override String get setGoal => 'Establecer objetivo';
	@override String get intake => 'Ingesta';
	@override String get burned => 'Quemadas';
	@override String get weightImpact => 'Impacto en el peso';
	@override String get estLoss => 'Pérdida estimada de';
	@override String get estGain => 'Ganancia estimada de';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryEs extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Resumen diario';
	@override String get calories => 'Calorías';
	@override String get carbs => 'Carbohidratos';
	@override String get protein => 'Proteínas';
	@override String get fat => 'Grasas';
	@override String get fiber => 'Fibra';
	@override String get grams => 'gramos';
	@override String get chartAccessibilityLabel => 'Gráfico de macronutrientes';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressEs extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Distribución de macros de hoy';
	@override String get target => 'Objetivo';
	@override String get current => 'Actual';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryEs extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Historial de macros 7 días';
	@override String get trendTitle => 'Tendencia de hoy';
	@override String peakHour({required Object hour}) => 'Pico: ${hour}:00';
	@override String get noHistoryYet => 'Sin historial todavía';
	@override String get startLogging => 'Empieza a registrar comidas para ver tus\ntendencias de macronutrientes de 7 días aquí';
}

// Path: home.mealLog
class _TranslationsHomeMealLogEs extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comidas registradas';
	@override String get emptyMessage => 'Haz una foto de tu última comida para registrarla aquí.';
	@override String get noMealsToday => 'No hay comidas registradas hoy';
	@override String get seeAllMeals => 'Ver todas las comidas';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionEs extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Añadir rápido con AI';
	@override String get description => 'Describe tu comida y deja que la AI se encargue de los detalles.';
	@override String get hint => 'p.ej. En el desayuno tomé un bol grande de avena con un plátano en rodajas y una cucharada de whey ...';
	@override String get analyzeMeal => 'Analizar comida';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsEs extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comidas favoritas';
	@override String get description => 'Añade rápidamente una de tus comidas favoritas.';
	@override String get noFavorites => 'Aún no hay comidas favoritas.';
	@override String get addFavoriteHint => 'Haz clic en la estrella de una comida para marcarla como favorita.';
	@override String get seeAll => 'Ver todas';
	@override String get add => 'Añadir';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapEs extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fotografía y registra tu comida';
	@override String get description => 'Usa la cámara para tomar una foto de tu comida y que la AI la analice.';
	@override String get openCamera => 'Abrir cámara';
	@override String get gallery => 'Galería';
	@override String get compressingPhoto => 'Optimizando foto…';
	@override String get uploadingPhoto => 'Subiendo foto…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthEs extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizar con Health Connect';
	@override String get description => 'Sincroniza tus datos de nutrición con Health Connect';
	@override String get install => 'Instalar';
	@override String get connect => 'Conectar';
}

// Path: meal.nutrition
class _TranslationsMealNutritionEs extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorías';
	@override String get carbs => 'Carbohidratos (g)';
	@override String get protein => 'Proteína (g)';
	@override String get fat => 'Grasa (g)';
	@override String get fiber => 'Fibra (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationEs extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eliminar comida';
	@override String get message => '¿Estás seguro de que quieres eliminar esta entrada de comida?';
	@override String get cancel => 'Cancelar';
	@override String get delete => 'Eliminar';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowEs extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Pregunta ${current} de ${total}';
	@override String get noQuestionsAvailable => 'No hay preguntas disponibles';
	@override String get next => 'Siguiente';
	@override String get continueLabel => 'Continuar';
}

// Path: meal.analysis
class _TranslationsMealAnalysisEs extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analizando tu comida';
	@override String get stepStarted => 'Iniciando…';
	@override String get stepDecomposition => 'Entendiendo tu comida…';
	@override String get stepIngredients => 'Relacionando ingredientes con datos nutricionales…';
	@override String get stepUncertainty => 'Comprobando la confianza…';
	@override String get stepMealTypeQuestion => 'Casi listo…';
	@override String get stepResult => 'Finalizando tu resultado…';
	@override String get stepError => 'Algo salió mal';
	@override String get stepDefault => 'Analizando tu comida…';
	@override String get progressUnderstand => 'Entendiendo tu comida';
	@override String get progressMatch => 'Buscando nutrición de ingredientes';
	@override String get progressCheck => 'Comprobando porciones y confianza';
	@override String get progressMealType => 'Eligiendo tipo de comida';
	@override String get progressFinish => 'Calculando calorías y macros';
	@override String get detectedIngredientHeading => 'Ingredientes que estamos detectando';
	@override String ingredientsOverflow({required Object count}) => '${count} más';
	@override String ingredientsLine({required Object count}) => '${count} ingredientes detectados';
	@override String get ingredientsPending => 'Escaneando ingredientes…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Consejo: La consistencia supera a la perfección — los registros regulares revelan los patrones que importan.';
	@override String get offlineTip1 => 'Consejo: Para fotos, la luz natural y una vista cenital ayudan con la precisión de la porción.';
	@override String get offlineTip2 => 'Consejo: Menciona bebidas, salsas y aceite de cocina—añaden calorías que a menudo se olvidan.';
	@override String get offlineTip3 => 'Consejo: Una nota rápida de porción (1 bol, café grande) afina mucho las estimaciones.';
	@override String get offlineTip4 => 'Consejo: Registrar después de la comida aún crea el hábito; la perfección es opcional.';
	@override String get offlineTip5 => 'Consejo: Di cómo se cocinó la comida cuando cambia mucho las calorías (frito vs horneado).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceEs extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Revisar ingredientes detectados';
	@override String get reviewSubtitle => 'Esto fue interpretado en tu dispositivo. Corrige los nombres o las porciones antes de calcular la nutrición.';
	@override String get mealName => 'Nombre de la comida';
	@override String get ingredient => 'Ingrediente';
	@override String get grams => 'Gramos estimados';
	@override String get removeIngredient => 'Eliminar ingrediente';
	@override String get continueLabel => 'Continuar';
	@override String get invalidProposal => 'Añade al menos un ingrediente y usa una cantidad de gramos positiva.';
	@override String get localUnavailable => 'El análisis en el dispositivo no está disponible en este momento.';
	@override String get calculationDetails => 'Cómo se calculó esto';
	@override String get interpretationLocal => 'Ingredientes interpretados en este dispositivo';
	@override String get interpretationCloud => 'Ingredientes interpretados en la nube';
	@override String get interpretationManual => 'Ingredientes revisados o editados por ti';
	@override String get nutritionRemote => 'Nutrición obtenida de USDA a través de Calorify';
	@override String get nutritionFallback => 'Algunos valores nutricionales se estimaron remotamente';
	@override String get calculationServer => 'Calorías y macros calculados por Calorify';
	@override String get fallbackUsed => 'El análisis local recurrió al procesamiento en la nube';
	@override String get noRawContent => 'Los recibos de diagnóstico no incluyen el texto ni la foto de tu comida.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackEs extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Qué está mal?';
	@override String get subtitle => 'Ayúdanos a mejorar el análisis seleccionando uno o más problemas.';
	@override String get tellUsMore => 'Cuéntanos más';
	@override String get describeIncorrect => 'Describe qué fue incorrecto';
	@override String get submit => 'Enviar';
	@override String get issueFoodIdentification => 'Identificación de alimentos';
	@override String get issuePortionSize => 'Tamaño de la porción';
	@override String get issueCalorieDistribution => 'Distribución de calorías';
	@override String get issueMacrosWrong => 'Macros incorrectos';
	@override String get issueMissingItems => 'Faltan elementos';
	@override String get issueExtraItems => 'Elementos extra';
	@override String get issueOther => 'Otro';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsEs extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Recientes';
	@override String get calories => 'Calorías';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsEs extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERFIL';
	@override String get basicInformation => 'INFORMACIÓN BÁSICA';
	@override String get goalsAndActivity => 'METAS Y ACTIVIDAD';
	@override String get calculatedValues => 'VALORES CALCULADOS';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesEs extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Objetivo diario';
	@override String get calPerDay => 'cal/día';
	@override String get notAvailable => 'N/D';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsEs extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMACIÓN PERSONAL';
	@override String get physicalMeasurements => 'MEDIDAS FÍSICAS';
	@override String get goalsAndActivity => 'METAS Y ACTIVIDAD';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersEs extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get male => 'Masculino';
	@override String get female => 'Femenino';
	@override String get other => 'Otro';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsEs extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightEs loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightEs._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightEs maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightEs._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightEs gainWeight = _TranslationsEditProfileWeightGoalsGainWeightEs._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsEs extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryEs sedentary = _TranslationsEditProfileActivityLevelsSedentaryEs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveEs lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveEs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveEs moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveEs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveEs veryActive = _TranslationsEditProfileActivityLevelsVeryActiveEs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveEs extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveEs._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsEs extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERFIL';
	@override String get localization => 'LOCALIZACIÓN';
	@override String get notifications => 'NOTIFICACIONES';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get localInference => 'ANÁLISIS EN EL DISPOSITIVO';
	@override String get supportAndLegal => 'SOPORTE Y LEGAL';
	@override String get about => 'ACERCA DE';
	@override String get dangerZone => 'ZONA DE RIESGO';
	@override String get developer => 'DESARROLLADOR';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileEs extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar perfil';
	@override String get subtitle => 'Actualiza tu información personal';
}

// Path: settings.language
class _TranslationsSettingsLanguageEs extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Idioma';
	@override String get subtitle => 'Elige tu idioma preferido';
	@override String get searchHint => 'Buscar idiomas...';
	@override String get noResults => 'No se encontraron resultados';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitEs extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidad de altura';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitEs extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidad de peso';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersEs extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recordatorios de comidas';
	@override String get subtitle => 'Mantente en camino con alertas oportunas';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceEs extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análisis de comidas en el dispositivo';
	@override String get subtitle => 'Interpreta comidas compatibles con Gemini Nano antes de calcular la nutrición';
	@override String get unavailable => 'No disponible en este dispositivo';
	@override String get rolloutUnavailable => 'Se encontró hardware compatible, pero esta función no está habilitada para esta versión de la aplicación';
	@override String get modelSetup => 'Gemini Nano debe terminar de descargarse antes de poder habilitar esto';
	@override String get useLocalTitle => 'Usar análisis en el dispositivo';
	@override String get useLocalSubtitle => 'Opcional y desactivado por defecto. Los resultados pueden ser menos fiables en comidas complejas.';
	@override String get disclosureTitle => 'Antes de habilitar el análisis en el dispositivo';
	@override String get disclosureBody => 'Gemini Nano puede identificar ingredientes y estimar porciones en dispositivos Android compatibles. Tu propuesta de ingredientes revisada se envía a Calorify para la validación nutricional de USDA y el cálculo.';
	@override String get disclosureLimit1 => 'Los platos complejos, los ingredientes ocultos y los tamaños de las porciones pueden identificarse incorrectamente.';
	@override String get disclosureLimit2 => 'Es posible que el modelo no esté disponible mientras se descarga, esté ocupado, en segundo plano o limitado por el dispositivo.';
	@override String get disclosureLimit3 => 'Si la interpretación local no puede finalizar, esta beta envía automáticamente la descripción original de tu comida a Calorify para su análisis en la nube.';
	@override String get acknowledgement => 'Entiendo que debo revisar los ingredientes y las porciones detectadas.';
	@override String get enable => 'Aceptar y habilitar';
	@override String get cancel => 'Cancelar';
}

// Path: settings.theme
class _TranslationsSettingsThemeEs extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Claro';
	@override String get dark => 'Oscuro';
	@override String get system => 'Sistema';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackEs extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Enviar retroalimentación';
	@override String subtitle({required Object appLabel}) => 'Ayúdanos a mejorar ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Comentarios sobre ${appLabel}';
	@override String get emailBodyPrefix => 'Por favor, proporciona tu retroalimentación a continuación:';
	@override String get appVersion => 'Versión de la app';
	@override String get device => 'Dispositivo';
	@override String get osVersion => 'Versión del SO';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryEs extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exportar historial de comidas';
	@override String get subtitle => 'Compartir un CSV de tus comidas registradas';
	@override String get shareText => 'Tu exportación del historial de comidas de Calorify';
	@override String failed({required Object error}) => 'No se pudo exportar el historial de comidas: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataEs extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Borrar todos los datos';
	@override String get subtitle => 'Eliminar irreversiblemente toda tu información';
	@override String get confirmationTitle => '¿Borrar todos los datos?';
	@override String get confirmationMessage => 'Esta acción no se puede deshacer. Todas tus comidas registradas, favoritos y ajustes de perfil se eliminarán permanentemente.';
	@override String get cancel => 'Cancelar';
	@override String get clearEverything => 'Borrar todo';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsEs extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opciones de depuración';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectEs extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Ver y administrar permisos';
	@override late final _TranslationsSettingsHealthConnectUnavailableEs unavailable = _TranslationsSettingsHealthConnectUnavailableEs._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsEs permissions = _TranslationsSettingsHealthConnectPermissionsEs._(_root);
	@override String get managePermissions => 'Administrar permisos';
	@override String get openSettings => 'Abrir ajustes de Health Connect';
	@override String get requestPermissions => 'Solicitar permisos';
	@override String get permissionRequestCancelledOrFailed => 'La solicitud de permisos fue cancelada o falló. Por favor, inténtalo de nuevo o concede los permisos manualmente en los ajustes de Health Connect.';
	@override String get permissionRequestFailed => 'No se pudo solicitar permisos. Por favor, inténtalo de nuevo o concede los permisos manualmente en los ajustes de Health Connect.';
	@override String get requestingPermissions => 'Solicitando...';
}

// Path: settings.about
class _TranslationsSettingsAboutEs extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Acerca de';
	@override String get tagline => 'Rápido, gratis y con privacidad como prioridad';
	@override late final _TranslationsSettingsAboutOurStoryEs ourStory = _TranslationsSettingsAboutOurStoryEs._(_root);
	@override late final _TranslationsSettingsAboutPrivacyEs privacy = _TranslationsSettingsAboutPrivacyEs._(_root);
	@override late final _TranslationsSettingsAboutDeveloperEs developer = _TranslationsSettingsAboutDeveloperEs._(_root);
	@override late final _TranslationsSettingsAboutFeedbackEs feedback = _TranslationsSettingsAboutFeedbackEs._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoEs extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Compilación ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastEs extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora del desayuno! 🍳';
	@override String get body => 'No te olvides de registrar tu desayuno';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchEs extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora del almuerzo! 🥗';
	@override String get body => 'Es hora de registrar tu almuerzo';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerEs extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora de la cena! 🍽️';
	@override String get body => 'No te olvides de registrar tu cena';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackEs extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora de un snack! 🍎';
	@override String get body => 'Hora de un snack saludable';
}

// Path: notifications.test
class _TranslationsNotificationsTestEs extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificación de prueba';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapEs extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} ofrece información nutricional estimada. La precisión depende de tu entrada y de las variaciones de los alimentos. Úsalo como guía, no como fuente definitiva. Consulta a un profesional para asesoramiento dietético personalizado.';
	@override late final _TranslationsDisclaimerSnapPortionSizeEs portionSize = _TranslationsDisclaimerSnapPortionSizeEs._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsEs preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsEs._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsEs ingredients = _TranslationsDisclaimerSnapIngredientsEs._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsEs databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsEs._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateEs extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobre la estimación de peso';
	@override String get description => 'El cambio de peso proyectado es una estimación teórica basada en el modelo simple de calorías entrantes vs. calorías gastadas. Está destinado solo como guía motivacional, no como predicción de tu peso real.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyEs calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyEs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsEs biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsEs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightEs waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightEs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEs professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEs._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsEs extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Estas métricas te ayudan a entender las necesidades energéticas de tu cuerpo y guiar tus objetivos nutricionales.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrEs bmr = _TranslationsDisclaimerHealthMetricsBmrEs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeEs tdee = _TranslationsDisclaimerHealthMetricsTdeeEs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalEs dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalEs._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureEs extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimación de gasto de calorías';
	@override String get description => 'Cuando los datos de Health Connect no están disponibles, estimamos las calorías quemadas del día usando tu BMR y nivel de actividad (TDEE), ajustadas por la fracción del día que ha pasado.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedEs howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedEs._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEs professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEs._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionEs extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconocimiento inteligente de alimentos';
	@override String get description => 'Toma una foto y deja que la AI identifique tu comida';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisEs extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análisis por AI';
	@override String get description => 'Obtén datos nutricionales instantáneos a partir de tus descripciones';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationEs extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integración con Health Connect';
	@override String get description => 'Conecta con Health Connect para obtener mejores insights';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesEs extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Bajo peso';
	@override String get healthyWeight => 'Peso saludable';
	@override String get overweight => 'Sobrepeso';
	@override String get obese => 'Obesidad';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesEs extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podemos ayudarte a crear un plan saludable para alcanzar un peso equilibrado con comidas ricas en nutrientes.';
	@override String get healthy => '¡Buen trabajo! Estás en un rango saludable. Te ayudaremos a mantener tu vitalidad y niveles de energía.';
	@override String overweight({required Object appLabel}) => '${appLabel} simplificará tu camino con seguimiento potenciado por AI para ayudarte a alcanzar tu objetivo con comodidad.';
	@override String get obese => 'Estamos aquí para apoyarte con orientación personalizada y estrategias sostenibles para tus metas de salud.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingEs extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seguimiento automático de calorías';
	@override String get description => 'Registra las calorías quemadas desde tus apps de fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsEs extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Insights de progreso';
	@override String get description => 'Obtén insights detallados sobre tus tendencias de salud';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationEs extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integración sin complicaciones';
	@override String get description => 'Sincroniza datos desde tus apps de salud favoritas';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessEs extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No estás solo';
	@override String get genericMessage => 'La investigación muestra que el seguimiento constante es el predictor número 1 de éxito a largo plazo.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Para una persona de ${age} años ${gender} que quiere ${goal}, el seguimiento constante es el predictor número 1 de éxito.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} lo hace 10x más fácil que hacerlo manualmente.';
	@override String get getStartedTitle => '¿Listo para comenzar?';
	@override String get tipPhoto => 'Toma una foto de tus comidas para análisis instantáneo';
	@override String get tipConsistency => 'Registra con constancia para ver progreso significativo';
	@override String get tipProgress => 'Registra tu progreso diariamente para mantener la motivación';
	@override String get button => 'Vamos';
	@override String get defaultGender => 'persona';
	@override String get defaultGoal => 'una versión más saludable de ti';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileEs extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tu perfil de salud';
	@override String bmiDescription({required Object bmi}) => 'Según tus métricas, tu BMI es ${bmi}.';
	@override String get finalizeDescription => 'Finalicemos tu perfil para personalizar tu experiencia.';
	@override String get goalGain => 'ganar';
	@override String get goalLose => 'perder';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Para alcanzar tu objetivo, vas a ${direction} ${diff} ${unit}.';
	@override String get goalReached => '¡Estás en tu peso objetivo! Te ayudaremos a mantenerlo.';
	@override String get button => 'Vamos';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleEs extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Excelente comienzo!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Has dado el primer paso hacia ${goalText}. Como eres ${activityText}, ${appLabel} ajustará tus objetivos para coincidir con tu estilo de vida.';
	@override String get personalizedTargets => 'Objetivos calóricos personalizados';
	@override String get aiMealDetection => 'Detección de comidas potenciada por AI';
	@override String get macroBreakdowns => 'Desglose detallado de macronutrientes';
	@override String get button => 'Vamos';
	@override String get defaultGoal => 'tus metas';
	@override String get defaultActivity => 'activo';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightEs extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perder peso';
	@override String get description => 'Crear un déficit calórico para perder peso';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightEs extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mantener peso';
	@override String get description => 'Mantener tu peso actual';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightEs extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ganar peso';
	@override String get description => 'Crear un superávit calórico para ganar peso';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryEs extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentario';
	@override String get description => 'Poco o ningún ejercicio';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveEs extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ligeramente activo';
	@override String get description => 'Ejercicio ligero 1-3 días/semana';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveEs extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderadamente activo';
	@override String get description => 'Ejercicio moderado 3-5 días/semana';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveEs extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Muy activo';
	@override String get description => 'Ejercicio intenso 6-7 días/semana';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveEs extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extremadamente activo';
	@override String get description => 'Ejercicio muy intenso o trabajo físico';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableEs extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect no disponible';
	@override String get description => 'Health Connect no está disponible en este dispositivo. Por favor, instala Health Connect desde Play Store (Android 9+) o actualiza a Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsEs extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsEs._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsAboutOurStoryEs extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nuestra historia';
	@override String content({required Object appLabel}) => '${appLabel} nació de una frustración simple: la mayoría de las apps de seguimiento de calorías son demasiado complicadas, requieren entradas manuales constantes, cobran suscripciones altas o comprometen la privacidad.\n\nComo desarrollador independiente, quería crear algo más simple y justo — una app que use AI para reducir el esfuerzo, que sea rápida y gratuita, y que trate tus datos de salud con respeto.\n\n${appLabel} es la app que desearía que existiera: sin cuentas, sin seguimiento, sin anuncios — solo insights claros y prácticos y tus metas de salud.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyEs extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tu privacidad importa';
	@override String get description => 'La privacidad no es una idea secundaria — es un principio de diseño. Esto es lo que significa en la práctica:';
	@override String get noAccounts => 'Sin cuentas requeridas\nUsa la app de inmediato. Sin registros, sin identidades.';
	@override String noTracking({required Object appLabel}) => 'Sin seguimiento de comportamiento\n${appLabel} no monitorea tu actividad, no crea perfiles de uso ni te rastrea entre apps o sitios web.';
	@override String noAds({required Object appLabel}) => 'Sin anuncios por diseño\n${appLabel} está construido para funcionar sin anuncios ni monetización basada en datos.';
	@override String get noDataSelling => 'Sin venta de datos\nTus datos de salud nunca se venden ni se comparten con terceros.';
	@override String get localStorage => 'Almacenamiento local primero\nTus datos permanecen en tu dispositivo.';
	@override String get privacyPolicy => 'Política de privacidad';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperEs extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desarrollado por un desarrollador independiente';
	@override String description({required Object appLabel}) => '${appLabel} está creado y mantenido por un único desarrollador independiente enfocado en crear software de salud tranquilo y respetuoso con la privacidad.\n\nLos comentarios se leen personalmente y ayudan a dar forma a la dirección de la app.';
	@override String get website => 'Sitio web';
	@override String get email => 'Correo';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackEs extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '¿Disfrutando ${appLabel}?';
	@override String description({required Object appLabel}) => 'Tu retroalimentación ayuda a hacer ${appLabel} mejor para todos.';
	@override String get rateApp => 'Valorar en Play Store';
	@override String get sendFeedback => 'Enviar retroalimentación';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeEs extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tamaño de la porción';
	@override String get description => 'La precisión de las estimaciones depende en gran medida de tu evaluación correcta del tamaño de la porción.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsEs extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Métodos de preparación';
	@override String description({required Object appLabel}) => 'Los métodos de cocción pueden alterar significativamente el contenido nutricional de los alimentos. Las estimaciones de ${appLabel} pueden no tener en cuenta siempre estas variaciones.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsEs extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredientes';
	@override String get description => 'Platos complejos con muchos ingredientes ocultos pueden conducir a estimaciones menos precisas.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsEs extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitaciones de la base de datos';
	@override String description({required Object appLabel}) => 'La base de datos de alimentos de ${appLabel} es extensa pero puede no incluir todos los alimentos o variaciones.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyEs extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Precisión de las calorías';
	@override String get description => 'Esta estimación es tan precisa como tu registro de ingesta y gasto calórico. Un registro inexacto dará lugar a una proyección inexacta.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsEs extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Factores biológicos';
	@override String description({required Object appLabel}) => 'La pérdida/ganancia de peso real está influenciada por metabolismo, hormonas, sueño, estrés, hidratación y otros factores individuales que ${appLabel} no puede medir.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightEs extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Peso de agua y fluctuaciones';
	@override String get description => 'El peso diario normal puede fluctuar significativamente debido a retención de agua, digestión y horarios. La estimación no contempla estos cambios diarios.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEs extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientación profesional';
	@override String get description => 'No uses esta estimación para tomar decisiones médicas. Consulta siempre a un profesional de la salud o a un dietista registrado para consejos personalizados de manejo de peso.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrEs extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'La tasa metabólica basal (BMR) es la cantidad de calorías que tu cuerpo quema en reposo para mantener funciones básicas como la respiración y la circulación. El BMR depende de tu edad, género, altura y peso. Un BMR más alto significa que tu cuerpo quema más calorías en reposo, a menudo debido a mayor masa muscular, menor edad o ser hombre. Un BMR más bajo suele indicar menos masa muscular, mayor edad o ser mujer.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeEs extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'El gasto energético diario total (TDEE) es las calorías totales que quemas por día, incluyendo tu BMR más las calorías de la actividad física y el movimiento diario. El TDEE depende de tu BMR y nivel de actividad. Un TDEE más alto significa que quemas más calorías en general, generalmente por ser más activo o tener un BMR mayor. Un TDEE más bajo sugiere menos actividad diaria o un BMR más bajo.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalEs extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Objetivo diario';
	@override String get description => 'El objetivo diario es tu ingesta calórica recomendada basada en tu TDEE y tu objetivo de peso. Para perder peso, consumes menos calorías que tu TDEE. Para mantener el peso, igualas tu TDEE. Para ganar peso, consumes más calorías que tu TDEE. Esto te ayuda a lograr el cambio de peso deseado a un ritmo saludable.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedEs extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cómo se calcula la estimación';
	@override String get description => 'Calculamos tu TDEE (basado en tu perfil) y lo multiplicamos por la fracción del día transcurrida (horas + minutos) / 24 para estimar las calorías quemadas hasta ahora.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEs extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientación profesional';
	@override String get description => 'No uses esta estimación para tomar decisiones médicas. Consulta siempre a un profesional de la salud o a un dietista registrado para consejos personalizados de manejo de peso.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEs extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leer calorías totales quemadas';
	@override String get description => 'Permite a la app leer tus calorías totales quemadas desde Health Connect.';
	@override String get usage => 'Este permiso se utiliza para mostrar tu quema de calorías diaria en la app, ayudándote a entender tu gasto energético total durante el día.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadEs extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leer datos de nutrición';
	@override String get description => 'Permite a la app leer datos de nutrición desde Health Connect.';
	@override String get usage => 'Este permiso permite que la app lea información nutricional que otros apps conectados a Health Connect hayan registrado, proporcionando una vista completa de tu nutrición.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteEs extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Escribir datos de nutrición';
	@override String get description => 'Permite a la app escribir datos de nutrición en Health Connect.';
	@override String get usage => 'Este permiso permite que la app sincronice tus comidas registradas a Health Connect, haciendo que tu información nutricional esté disponible para otras apps de salud y fitness que uses.';
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
			'errors.rateLimitExceeded' => 'Has realizado demasiadas solicitudes. Espera un momento antes de intentarlo de nuevo.',
			'errors.networkError' => 'Error de red. Por favor, verifica tu conexión a internet.',
			'errors.unknownError' => 'Algo salió mal. Por favor, inténtalo de nuevo más tarde.',
			'errors.loadingProfileData' => 'Error al cargar los datos del perfil',
			'errors.somethingWentWrong' => 'Algo salió mal.',
			'errors.retry' => 'Reintentar',
			'onboarding.welcome' => ({required Object appLabel}) => 'Bienvenido a ${appLabel}',
			'onboarding.subtitle' => 'Tu compañero personal de nutrición potenciado por AI',
			'onboarding.getStarted' => 'Comenzar',
			'onboarding.features.foodRecognition.title' => 'Reconocimiento inteligente de alimentos',
			'onboarding.features.foodRecognition.description' => 'Toma una foto y deja que la AI identifique tu comida',
			'onboarding.features.aiAnalysis.title' => 'Análisis por AI',
			'onboarding.features.aiAnalysis.description' => 'Obtén datos nutricionales instantáneos a partir de tus descripciones',
			'onboarding.features.healthIntegration.title' => 'Integración con Health Connect',
			'onboarding.features.healthIntegration.description' => 'Conecta con Health Connect para obtener mejores insights',
			'onboarding.gender.title' => '¿Cuál es tu género?',
			'onboarding.gender.description' => 'El género nos ayuda a calcular con precisión tu tasa metabólica basal (BMR).',
			'onboarding.gender.next' => 'Siguiente',
			'onboarding.height.title' => '¿Cuánto mides?',
			'onboarding.height.description' => 'Tu altura nos ayuda a calcular tu BMI y tus necesidades energéticas con precisión.',
			'onboarding.height.metric' => 'Métrico',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Siguiente',
			'onboarding.weight.currentTitle' => '¿Cuál es tu peso actual?',
			'onboarding.weight.currentDescription' => 'Tu peso actual es esencial para personalizar tus metas diarias.',
			'onboarding.weight.targetTitle' => '¿Cuál es tu peso objetivo?',
			'onboarding.weight.targetDescription' => 'Establecer un peso objetivo nos ayuda a determinar tu plan a largo plazo.',
			'onboarding.weight.metric' => 'Métrico',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Siguiente',
			'onboarding.age.title' => '¿Cuándo es tu cumpleaños?',
			'onboarding.age.description' => 'Tu edad nos ayuda a calcular tus necesidades calóricas con precisión.',
			'onboarding.age.next' => 'Siguiente',
			'onboarding.bmiScale.underweight' => 'Bajo',
			'onboarding.bmiScale.healthy' => 'Saludable',
			'onboarding.bmiScale.overweight' => 'Sobrepeso',
			'onboarding.bmiScale.obese' => 'Obeso',
			'onboarding.bmiScale.categories.underweight' => 'Bajo peso',
			'onboarding.bmiScale.categories.healthyWeight' => 'Peso saludable',
			'onboarding.bmiScale.categories.overweight' => 'Sobrepeso',
			'onboarding.bmiScale.categories.obese' => 'Obesidad',
			'onboarding.bmiScale.messages.underweight' => 'Podemos ayudarte a crear un plan saludable para alcanzar un peso equilibrado con comidas ricas en nutrientes.',
			'onboarding.bmiScale.messages.healthy' => '¡Buen trabajo! Estás en un rango saludable. Te ayudaremos a mantener tu vitalidad y niveles de energía.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} simplificará tu camino con seguimiento potenciado por AI para ayudarte a alcanzar tu objetivo con comodidad.',
			'onboarding.bmiScale.messages.obese' => 'Estamos aquí para apoyarte con orientación personalizada y estrategias sostenibles para tus metas de salud.',
			'onboarding.weightGoal.title' => '¿Cuál es tu objetivo?',
			'onboarding.weightGoal.description' => 'Elige la meta que mejor describa lo que quieres lograr',
			'onboarding.activityLevel.title' => '¿Qué tan activo eres?',
			'onboarding.activityLevel.description' => 'Esto nos ayuda a calcular tus necesidades calóricas diarias con mayor precisión',
			'onboarding.healthConnect.title' => 'Conéctate con Health Connect',
			'onboarding.healthConnect.description' => 'Sincroniza tus datos de salud para obtener mejores insights y seguimiento automático de calorías',
			'onboarding.healthConnect.automaticTracking.title' => 'Seguimiento automático de calorías',
			'onboarding.healthConnect.automaticTracking.description' => 'Registra las calorías quemadas desde tus apps de fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Insights de progreso',
			'onboarding.healthConnect.progressInsights.description' => 'Obtén insights detallados sobre tus tendencias de salud',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integración sin complicaciones',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sincroniza datos desde tus apps de salud favoritas',
			'onboarding.healthConnect.connected' => 'Health Connect conectado',
			'onboarding.healthConnect.notConnected' => 'Health Connect no conectado',
			'onboarding.healthConnect.setup' => 'Configurar Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Saltar por ahora',
			'onboarding.healthConnect.statusConnected' => 'Health Connect está conectado.',
			'onboarding.healthConnect.statusSuccess' => '¡Health Connect se ha conectado correctamente!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permiso denegado. Por favor, habilita los permisos de Health Connect desde los ajustes de tu teléfono para ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Error al configurar Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'No estás solo',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'La investigación muestra que el seguimiento constante es el predictor número 1 de éxito a largo plazo.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Para una persona de ${age} años ${gender} que quiere ${goal}, el seguimiento constante es el predictor número 1 de éxito.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} lo hace 10x más fácil que hacerlo manualmente.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '¿Listo para comenzar?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Toma una foto de tus comidas para análisis instantáneo',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Registra con constancia para ver progreso significativo',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Registra tu progreso diariamente para mantener la motivación',
			'onboarding.reinforcement.trackingSuccess.button' => 'Vamos',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'persona',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'una versión más saludable de ti',
			'onboarding.reinforcement.healthProfile.title' => 'Tu perfil de salud',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Según tus métricas, tu BMI es ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Finalicemos tu perfil para personalizar tu experiencia.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'ganar',
			'onboarding.reinforcement.healthProfile.goalLose' => 'perder',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Para alcanzar tu objetivo, vas a ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => '¡Estás en tu peso objetivo! Te ayudaremos a mantenerlo.',
			'onboarding.reinforcement.healthProfile.button' => 'Vamos',
			'onboarding.reinforcement.goalLifestyle.title' => '¡Excelente comienzo!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Has dado el primer paso hacia ${goalText}. Como eres ${activityText}, ${appLabel} ajustará tus objetivos para coincidir con tu estilo de vida.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Objetivos calóricos personalizados',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Detección de comidas potenciada por AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Desglose detallado de macronutrientes',
			'onboarding.reinforcement.goalLifestyle.button' => 'Vamos',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'tus metas',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'activo',
			'tabs.dashboard' => 'Resumen',
			'tabs.history' => 'Historial',
			'home.aiSummary.title' => 'Tu resumen por AI',
			'home.aiSummary.logMore' => 'Registra más comidas en los próximos días para obtener tus insights personalizados por AI.',
			'home.aiSummary.loading' => 'Cargando tu resumen...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} comidas registradas',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Puntuación de equilibrio ${score}',
			'home.aiSummary.topFoods' => 'Alimentos destacados',
			'home.aiSummary.trendUp' => 'Calorías en aumento',
			'home.aiSummary.trendDown' => 'Calorías en descenso',
			'home.aiSummary.trendSteady' => 'Calorías estables',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Actualizado ${time}',
			'home.dailyGoal.title' => 'Establece tu objetivo diario',
			'home.dailyGoal.titleSet' => 'Tu objetivo diario',
			'home.dailyGoal.description' => '¿Listo para comenzar tu camino de bienestar? Establece tu objetivo de calorías diarias abajo para impulsar tu progreso.',
			'home.dailyGoal.descriptionSet' => '¡Tu rumbo está marcado! Este es tu objetivo calórico diario para guiarte.',
			'home.dailyGoal.yourGoal' => 'Tu objetivo',
			'home.dailyGoal.goal' => 'Meta',
			'home.dailyGoal.dailyCalories' => 'Calorías diarias (kcal)',
			'home.dailyGoal.setGoal' => 'Establecer objetivo',
			'home.dailyGoal.intake' => 'Ingesta',
			'home.dailyGoal.burned' => 'Quemadas',
			'home.dailyGoal.weightImpact' => 'Impacto en el peso',
			'home.dailyGoal.estLoss' => 'Pérdida estimada de',
			'home.dailyGoal.estGain' => 'Ganancia estimada de',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Resumen diario',
			'home.dailySummary.calories' => 'Calorías',
			'home.dailySummary.carbs' => 'Carbohidratos',
			'home.dailySummary.protein' => 'Proteínas',
			'home.dailySummary.fat' => 'Grasas',
			'home.dailySummary.fiber' => 'Fibra',
			'home.dailySummary.grams' => 'gramos',
			'home.dailySummary.chartAccessibilityLabel' => 'Gráfico de macronutrientes',
			'home.intakeProgress.title' => 'Distribución de macros de hoy',
			'home.intakeProgress.target' => 'Objetivo',
			'home.intakeProgress.current' => 'Actual',
			'home.intakeHistory.title' => 'Historial de macros 7 días',
			'home.intakeHistory.trendTitle' => 'Tendencia de hoy',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Pico: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Sin historial todavía',
			'home.intakeHistory.startLogging' => 'Empieza a registrar comidas para ver tus\ntendencias de macronutrientes de 7 días aquí',
			'home.mealLog.title' => 'Comidas registradas',
			'home.mealLog.emptyMessage' => 'Haz una foto de tu última comida para registrarla aquí.',
			'home.mealLog.noMealsToday' => 'No hay comidas registradas hoy',
			'home.mealLog.seeAllMeals' => 'Ver todas las comidas',
			'home.mealDescription.title' => 'Añadir rápido con AI',
			'home.mealDescription.description' => 'Describe tu comida y deja que la AI se encargue de los detalles.',
			'home.mealDescription.hint' => 'p.ej. En el desayuno tomé un bol grande de avena con un plátano en rodajas y una cucharada de whey ...',
			'home.mealDescription.analyzeMeal' => 'Analizar comida',
			'home.favoriteMeals.title' => 'Comidas favoritas',
			'home.favoriteMeals.description' => 'Añade rápidamente una de tus comidas favoritas.',
			'home.favoriteMeals.noFavorites' => 'Aún no hay comidas favoritas.',
			'home.favoriteMeals.addFavoriteHint' => 'Haz clic en la estrella de una comida para marcarla como favorita.',
			'home.favoriteMeals.seeAll' => 'Ver todas',
			'home.favoriteMeals.add' => 'Añadir',
			'home.mealSnap.title' => 'Fotografía y registra tu comida',
			'home.mealSnap.description' => 'Usa la cámara para tomar una foto de tu comida y que la AI la analice.',
			'home.mealSnap.openCamera' => 'Abrir cámara',
			'home.mealSnap.gallery' => 'Galería',
			'home.mealSnap.compressingPhoto' => 'Optimizando foto…',
			'home.mealSnap.uploadingPhoto' => 'Subiendo foto…',
			'home.connectHealth.title' => 'Sincronizar con Health Connect',
			'home.connectHealth.description' => 'Sincroniza tus datos de nutrición con Health Connect',
			'home.connectHealth.install' => 'Instalar',
			'home.connectHealth.connect' => 'Conectar',
			'history.noMeals' => 'No hay comidas registradas',
			'history.emptyMessage' => 'Haz una foto de tu última comida para registrarla aquí.',
			'history.today' => 'Hoy',
			'history.yesterday' => 'Ayer',
			'meal.ohNo' => '¡Vaya!',
			'meal.delete' => 'Eliminar',
			'meal.editMeal' => 'Editar comida',
			'meal.addMeal' => 'Añadir comida',
			'meal.saveMeal' => 'Guardar comida',
			'meal.save' => 'Guardar',
			'meal.mealName' => 'Nombre de la comida',
			'meal.mealNameHint' => 'p.ej., Huevos revueltos con tostadas',
			'meal.nameRequired' => 'Introduce un nombre para la comida antes de guardar.',
			'meal.mealQuantity' => 'Cantidad de la comida',
			'meal.mealQuantityHint' => 'p.ej., 1 bol, 2 rebanadas',
			'meal.timeOfMeal' => 'Hora de la comida',
			'meal.timeOfMealHint' => 'Selecciona la hora en que comiste',
			'meal.mealType' => 'Tipo de comida',
			'meal.nutrition.calories' => 'Calorías',
			'meal.nutrition.carbs' => 'Carbohidratos (g)',
			'meal.nutrition.protein' => 'Proteína (g)',
			'meal.nutrition.fat' => 'Grasa (g)',
			'meal.nutrition.fiber' => 'Fibra (g)',
			'meal.deleteConfirmation.title' => 'Eliminar comida',
			'meal.deleteConfirmation.message' => '¿Estás seguro de que quieres eliminar esta entrada de comida?',
			'meal.deleteConfirmation.cancel' => 'Cancelar',
			'meal.deleteConfirmation.delete' => 'Eliminar',
			'meal.addedToLog' => '¡Comida añadida a tu registro!',
			'meal.couldNotAdd' => ({required Object error}) => 'No se pudo añadir la comida: ${error}',
			'meal.savedSuccessfully' => '¡Comida añadida con éxito!',
			'meal.updatedSuccessfully' => '¡Comida actualizada con éxito!',
			'meal.errorSaving' => ({required Object error}) => 'Error al guardar la comida: ${error}',
			'meal.removedFromFavorites' => '¡Eliminado de favoritos!',
			'meal.savedAsFavorite' => '¡Comida guardada como favorita!',
			'meal.unfavorite' => 'Quitar de favoritos',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'No se pudo actualizar favorito: ${error}',
			'meal.feedbackThanks' => '¡Gracias por la retroalimentación!',
			'meal.reanalysisUpdated' => 'Se actualizó el análisis de la comida según tus comentarios.',
			'meal.failedToProcess' => ({required Object error}) => 'Error al procesar: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Error al procesar la imagen: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Error al comprimir la imagen: ${error}',
			'meal.failedToSave' => 'Error al guardar los datos. Por favor, inténtalo de nuevo.',
			'meal.skip' => 'Omitir',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Pregunta ${current} de ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'No hay preguntas disponibles',
			'meal.questionFlow.next' => 'Siguiente',
			'meal.questionFlow.continueLabel' => 'Continuar',
			'meal.analysis.title' => 'Analizando tu comida',
			'meal.analysis.stepStarted' => 'Iniciando…',
			'meal.analysis.stepDecomposition' => 'Entendiendo tu comida…',
			'meal.analysis.stepIngredients' => 'Relacionando ingredientes con datos nutricionales…',
			'meal.analysis.stepUncertainty' => 'Comprobando la confianza…',
			'meal.analysis.stepMealTypeQuestion' => 'Casi listo…',
			'meal.analysis.stepResult' => 'Finalizando tu resultado…',
			'meal.analysis.stepError' => 'Algo salió mal',
			'meal.analysis.stepDefault' => 'Analizando tu comida…',
			'meal.analysis.progressUnderstand' => 'Entendiendo tu comida',
			'meal.analysis.progressMatch' => 'Buscando nutrición de ingredientes',
			'meal.analysis.progressCheck' => 'Comprobando porciones y confianza',
			'meal.analysis.progressMealType' => 'Eligiendo tipo de comida',
			'meal.analysis.progressFinish' => 'Calculando calorías y macros',
			'meal.analysis.detectedIngredientHeading' => 'Ingredientes que estamos detectando',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} más',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredientes detectados',
			'meal.analysis.ingredientsPending' => 'Escaneando ingredientes…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Consejo: La consistencia supera a la perfección — los registros regulares revelan los patrones que importan.',
			'meal.analysis.offlineTip1' => 'Consejo: Para fotos, la luz natural y una vista cenital ayudan con la precisión de la porción.',
			'meal.analysis.offlineTip2' => 'Consejo: Menciona bebidas, salsas y aceite de cocina—añaden calorías que a menudo se olvidan.',
			'meal.analysis.offlineTip3' => 'Consejo: Una nota rápida de porción (1 bol, café grande) afina mucho las estimaciones.',
			'meal.analysis.offlineTip4' => 'Consejo: Registrar después de la comida aún crea el hábito; la perfección es opcional.',
			'meal.analysis.offlineTip5' => 'Consejo: Di cómo se cocinó la comida cuando cambia mucho las calorías (frito vs horneado).',
			'meal.localInference.reviewTitle' => 'Revisar ingredientes detectados',
			'meal.localInference.reviewSubtitle' => 'Esto fue interpretado en tu dispositivo. Corrige los nombres o las porciones antes de calcular la nutrición.',
			'meal.localInference.mealName' => 'Nombre de la comida',
			'meal.localInference.ingredient' => 'Ingrediente',
			'meal.localInference.grams' => 'Gramos estimados',
			'meal.localInference.removeIngredient' => 'Eliminar ingrediente',
			'meal.localInference.continueLabel' => 'Continuar',
			'meal.localInference.invalidProposal' => 'Añade al menos un ingrediente y usa una cantidad de gramos positiva.',
			'meal.localInference.localUnavailable' => 'El análisis en el dispositivo no está disponible en este momento.',
			'meal.localInference.calculationDetails' => 'Cómo se calculó esto',
			'meal.localInference.interpretationLocal' => 'Ingredientes interpretados en este dispositivo',
			'meal.localInference.interpretationCloud' => 'Ingredientes interpretados en la nube',
			'meal.localInference.interpretationManual' => 'Ingredientes revisados o editados por ti',
			'meal.localInference.nutritionRemote' => 'Nutrición obtenida de USDA a través de Calorify',
			'meal.localInference.nutritionFallback' => 'Algunos valores nutricionales se estimaron remotamente',
			'meal.localInference.calculationServer' => 'Calorías y macros calculados por Calorify',
			'meal.localInference.fallbackUsed' => 'El análisis local recurrió al procesamiento en la nube',
			'meal.localInference.noRawContent' => 'Los recibos de diagnóstico no incluyen el texto ni la foto de tu comida.',
			'meal.feedback.title' => '¿Qué está mal?',
			'meal.feedback.subtitle' => 'Ayúdanos a mejorar el análisis seleccionando uno o más problemas.',
			'meal.feedback.tellUsMore' => 'Cuéntanos más',
			'meal.feedback.describeIncorrect' => 'Describe qué fue incorrecto',
			'meal.feedback.submit' => 'Enviar',
			'meal.feedback.issueFoodIdentification' => 'Identificación de alimentos',
			'meal.feedback.issuePortionSize' => 'Tamaño de la porción',
			'meal.feedback.issueCalorieDistribution' => 'Distribución de calorías',
			'meal.feedback.issueMacrosWrong' => 'Macros incorrectos',
			'meal.feedback.issueMissingItems' => 'Faltan elementos',
			'meal.feedback.issueExtraItems' => 'Elementos extra',
			'meal.feedback.issueOther' => 'Otro',
			'favorites.title' => 'Favoritos',
			'favorites.empty' => 'Aún no hay comidas favoritas.',
			'favorites.searchPlaceholder' => 'Buscar comidas favoritas',
			'favorites.searchEmptyTitle' => 'Ningún favorito coincide con tu búsqueda',
			'favorites.searchEmptySubtitle' => 'Prueba con un nombre de comida, cantidad o tipo de comida diferente.',
			'favorites.sortLabel' => 'Ordenar favoritos',
			'favorites.undo' => 'Deshacer',
			'favorites.removed' => ({required Object name}) => 'Se eliminó ${name} de favoritos',
			'favorites.sortOptions.recent' => 'Recientes',
			'favorites.sortOptions.calories' => 'Calorías',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Perfil',
			'profile.noProfileData' => 'No se encontraron datos de perfil',
			'profile.yourProfile' => 'Tu perfil',
			'profile.viewAndManage' => 'Ver y administrar tu información de salud',
			'profile.sections.profile' => 'PERFIL',
			'profile.sections.basicInformation' => 'INFORMACIÓN BÁSICA',
			'profile.sections.goalsAndActivity' => 'METAS Y ACTIVIDAD',
			'profile.sections.calculatedValues' => 'VALORES CALCULADOS',
			'profile.gender' => 'Género',
			'profile.height' => 'Altura',
			'profile.weight' => 'Peso',
			'profile.age' => 'Edad',
			'profile.weightGoal' => 'Objetivo de peso',
			'profile.targetWeight' => 'Peso objetivo',
			'profile.activityLevel' => 'Nivel de actividad',
			'profile.healthMetrics' => 'Métricas de salud',
			'profile.notSet' => 'No establecido',
			'profile.years' => 'años',
			'profile.updatedSuccessfully' => '¡Perfil actualizado con éxito!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Objetivo diario',
			'profile.calculatedValues.calPerDay' => 'cal/día',
			'profile.calculatedValues.notAvailable' => 'N/D',
			'healthScore.title' => 'Puntuación de salud',
			'healthScore.whyThisScore' => '¿Por qué esta puntuación?',
			'healthScore.note' => 'Esta puntuación es una estimación por AI basada en los ingredientes identificados y la densidad nutricional. Consulta siempre a un profesional para asesoramiento dietético.',
			'healthScore.unhealthy' => 'Poco saludable',
			'healthScore.healthy' => 'Saludable',
			'healthScore.neutral' => 'Neutral',
			'editProfile.title' => 'Editar perfil',
			'editProfile.sections.personalInformation' => 'INFORMACIÓN PERSONAL',
			'editProfile.sections.physicalMeasurements' => 'MEDIDAS FÍSICAS',
			'editProfile.sections.goalsAndActivity' => 'METAS Y ACTIVIDAD',
			'editProfile.gender' => 'Género',
			'editProfile.dateOfBirth' => 'Fecha de nacimiento',
			'editProfile.height' => 'Altura',
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
			'editProfile.genders.male' => 'Masculino',
			'editProfile.genders.female' => 'Femenino',
			'editProfile.genders.other' => 'Otro',
			'editProfile.weightGoals.loseWeight.name' => 'Perder peso',
			'editProfile.weightGoals.loseWeight.description' => 'Crear un déficit calórico para perder peso',
			'editProfile.weightGoals.maintainWeight.name' => 'Mantener peso',
			'editProfile.weightGoals.maintainWeight.description' => 'Mantener tu peso actual',
			'editProfile.weightGoals.gainWeight.name' => 'Ganar peso',
			'editProfile.weightGoals.gainWeight.description' => 'Crear un superávit calórico para ganar peso',
			'editProfile.activityLevels.sedentary.name' => 'Sedentario',
			'editProfile.activityLevels.sedentary.description' => 'Poco o ningún ejercicio',
			'editProfile.activityLevels.lightlyActive.name' => 'Ligeramente activo',
			'editProfile.activityLevels.lightlyActive.description' => 'Ejercicio ligero 1-3 días/semana',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderadamente activo',
			'editProfile.activityLevels.moderatelyActive.description' => 'Ejercicio moderado 3-5 días/semana',
			'editProfile.activityLevels.veryActive.name' => 'Muy activo',
			'editProfile.activityLevels.veryActive.description' => 'Ejercicio intenso 6-7 días/semana',
			'editProfile.activityLevels.extremelyActive.name' => 'Extremadamente activo',
			'editProfile.activityLevels.extremelyActive.description' => 'Ejercicio muy intenso o trabajo físico',
			'settings.title' => 'Ajustes',
			'settings.sections.profile' => 'PERFIL',
			'settings.sections.localization' => 'LOCALIZACIÓN',
			'settings.sections.notifications' => 'NOTIFICACIONES',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.localInference' => 'ANÁLISIS EN EL DISPOSITIVO',
			'settings.sections.supportAndLegal' => 'SOPORTE Y LEGAL',
			'settings.sections.about' => 'ACERCA DE',
			'settings.sections.dangerZone' => 'ZONA DE RIESGO',
			'settings.sections.developer' => 'DESARROLLADOR',
			'settings.editProfile.title' => 'Editar perfil',
			'settings.editProfile.subtitle' => 'Actualiza tu información personal',
			'settings.language.title' => 'Idioma',
			'settings.language.subtitle' => 'Elige tu idioma preferido',
			'settings.language.searchHint' => 'Buscar idiomas...',
			'settings.language.noResults' => 'No se encontraron resultados',
			'settings.heightUnit.title' => 'Unidad de altura',
			'settings.weightUnit.title' => 'Unidad de peso',
			'settings.mealReminders.title' => 'Recordatorios de comidas',
			'settings.mealReminders.subtitle' => 'Mantente en camino con alertas oportunas',
			'settings.localInference.title' => 'Análisis de comidas en el dispositivo',
			'settings.localInference.subtitle' => 'Interpreta comidas compatibles con Gemini Nano antes de calcular la nutrición',
			'settings.localInference.unavailable' => 'No disponible en este dispositivo',
			'settings.localInference.rolloutUnavailable' => 'Se encontró hardware compatible, pero esta función no está habilitada para esta versión de la aplicación',
			'settings.localInference.modelSetup' => 'Gemini Nano debe terminar de descargarse antes de poder habilitar esto',
			'settings.localInference.useLocalTitle' => 'Usar análisis en el dispositivo',
			'settings.localInference.useLocalSubtitle' => 'Opcional y desactivado por defecto. Los resultados pueden ser menos fiables en comidas complejas.',
			'settings.localInference.disclosureTitle' => 'Antes de habilitar el análisis en el dispositivo',
			'settings.localInference.disclosureBody' => 'Gemini Nano puede identificar ingredientes y estimar porciones en dispositivos Android compatibles. Tu propuesta de ingredientes revisada se envía a Calorify para la validación nutricional de USDA y el cálculo.',
			'settings.localInference.disclosureLimit1' => 'Los platos complejos, los ingredientes ocultos y los tamaños de las porciones pueden identificarse incorrectamente.',
			'settings.localInference.disclosureLimit2' => 'Es posible que el modelo no esté disponible mientras se descarga, esté ocupado, en segundo plano o limitado por el dispositivo.',
			'settings.localInference.disclosureLimit3' => 'Si la interpretación local no puede finalizar, esta beta envía automáticamente la descripción original de tu comida a Calorify para su análisis en la nube.',
			'settings.localInference.acknowledgement' => 'Entiendo que debo revisar los ingredientes y las porciones detectadas.',
			'settings.localInference.enable' => 'Aceptar y habilitar',
			'settings.localInference.cancel' => 'Cancelar',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Claro',
			'settings.theme.dark' => 'Oscuro',
			'settings.theme.system' => 'Sistema',
			'settings.sendFeedback.title' => 'Enviar retroalimentación',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Ayúdanos a mejorar ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Comentarios sobre ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Por favor, proporciona tu retroalimentación a continuación:',
			'settings.sendFeedback.appVersion' => 'Versión de la app',
			'settings.sendFeedback.device' => 'Dispositivo',
			'settings.sendFeedback.osVersion' => 'Versión del SO',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Exportar historial de comidas',
			'settings.exportMealHistory.subtitle' => 'Compartir un CSV de tus comidas registradas',
			'settings.exportMealHistory.shareText' => 'Tu exportación del historial de comidas de Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'No se pudo exportar el historial de comidas: ${error}',
			'settings.clearAllData.title' => 'Borrar todos los datos',
			'settings.clearAllData.subtitle' => 'Eliminar irreversiblemente toda tu información',
			'settings.clearAllData.confirmationTitle' => '¿Borrar todos los datos?',
			'settings.clearAllData.confirmationMessage' => 'Esta acción no se puede deshacer. Todas tus comidas registradas, favoritos y ajustes de perfil se eliminarán permanentemente.',
			'settings.clearAllData.cancel' => 'Cancelar',
			'settings.clearAllData.clearEverything' => 'Borrar todo',
			'settings.debugOptions.title' => 'Opciones de depuración',
			'settings.developerModeEnabled' => '¡Modo desarrollador activado!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Ver y administrar permisos',
			'settings.healthConnect.unavailable.title' => 'Health Connect no disponible',
			'settings.healthConnect.unavailable.description' => 'Health Connect no está disponible en este dispositivo. Por favor, instala Health Connect desde Play Store (Android 9+) o actualiza a Android 14+.',
			'settings.healthConnect.permissions.title' => 'Permisos',
			'settings.healthConnect.permissions.description' => 'Se solicitan los siguientes permisos para proporcionar la integración con Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Concedido',
			'settings.healthConnect.permissions.notGranted' => 'No concedido',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Leer calorías totales quemadas',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Permite a la app leer tus calorías totales quemadas desde Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Este permiso se utiliza para mostrar tu quema de calorías diaria en la app, ayudándote a entender tu gasto energético total durante el día.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Leer datos de nutrición',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Permite a la app leer datos de nutrición desde Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Este permiso permite que la app lea información nutricional que otros apps conectados a Health Connect hayan registrado, proporcionando una vista completa de tu nutrición.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Escribir datos de nutrición',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Permite a la app escribir datos de nutrición en Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Este permiso permite que la app sincronice tus comidas registradas a Health Connect, haciendo que tu información nutricional esté disponible para otras apps de salud y fitness que uses.',
			'settings.healthConnect.managePermissions' => 'Administrar permisos',
			'settings.healthConnect.openSettings' => 'Abrir ajustes de Health Connect',
			'settings.healthConnect.requestPermissions' => 'Solicitar permisos',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'La solicitud de permisos fue cancelada o falló. Por favor, inténtalo de nuevo o concede los permisos manualmente en los ajustes de Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'No se pudo solicitar permisos. Por favor, inténtalo de nuevo o concede los permisos manualmente en los ajustes de Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Solicitando...',
			'settings.about.title' => 'Acerca de',
			'settings.about.tagline' => 'Rápido, gratis y con privacidad como prioridad',
			'settings.about.ourStory.title' => 'Nuestra historia',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} nació de una frustración simple: la mayoría de las apps de seguimiento de calorías son demasiado complicadas, requieren entradas manuales constantes, cobran suscripciones altas o comprometen la privacidad.\n\nComo desarrollador independiente, quería crear algo más simple y justo — una app que use AI para reducir el esfuerzo, que sea rápida y gratuita, y que trate tus datos de salud con respeto.\n\n${appLabel} es la app que desearía que existiera: sin cuentas, sin seguimiento, sin anuncios — solo insights claros y prácticos y tus metas de salud.',
			'settings.about.privacy.title' => 'Tu privacidad importa',
			'settings.about.privacy.description' => 'La privacidad no es una idea secundaria — es un principio de diseño. Esto es lo que significa en la práctica:',
			'settings.about.privacy.noAccounts' => 'Sin cuentas requeridas\nUsa la app de inmediato. Sin registros, sin identidades.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Sin seguimiento de comportamiento\n${appLabel} no monitorea tu actividad, no crea perfiles de uso ni te rastrea entre apps o sitios web.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Sin anuncios por diseño\n${appLabel} está construido para funcionar sin anuncios ni monetización basada en datos.',
			'settings.about.privacy.noDataSelling' => 'Sin venta de datos\nTus datos de salud nunca se venden ni se comparten con terceros.',
			'settings.about.privacy.localStorage' => 'Almacenamiento local primero\nTus datos permanecen en tu dispositivo.',
			'settings.about.privacy.privacyPolicy' => 'Política de privacidad',
			'settings.about.developer.title' => 'Desarrollado por un desarrollador independiente',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} está creado y mantenido por un único desarrollador independiente enfocado en crear software de salud tranquilo y respetuoso con la privacidad.\n\nLos comentarios se leen personalmente y ayudan a dar forma a la dirección de la app.',
			'settings.about.developer.website' => 'Sitio web',
			'settings.about.developer.email' => 'Correo',
			'settings.about.feedback.title' => ({required Object appLabel}) => '¿Disfrutando ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Tu retroalimentación ayuda a hacer ${appLabel} mejor para todos.',
			'settings.about.feedback.rateApp' => 'Valorar en Play Store',
			'settings.about.feedback.sendFeedback' => 'Enviar retroalimentación',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Compilación ${buildNumber}',
			'reminders.title' => 'Mantente al día con recordatorios',
			'reminders.description' => 'Recibe recordatorios suaves para registrar tus comidas y mantener la constancia con tus metas nutricionales',
			'reminders.notificationsEnabled' => 'Notificaciones activadas',
			'reminders.notificationsDisabled' => 'Notificaciones desactivadas',
			'reminders.enabledSubtitle' => 'Recibirás recordatorios de comidas',
			'reminders.disabledSubtitle' => 'Activa las notificaciones para recibir recordatorios de comidas',
			'reminders.mealReminders' => 'Recordatorios de comidas',
			'reminders.breakfast' => 'Desayuno',
			'reminders.lunch' => 'Almuerzo',
			'reminders.dinner' => 'Cena',
			'reminders.snack' => 'Merienda',
			'reminders.unknown' => 'Desconocido',
			'reminders.change' => 'Cambiar',
			'reminders.enableNotifications' => 'Activar notificaciones',
			'reminders.skipForNow' => 'Saltar por ahora',
			'reminders.saveChanges' => 'Guardar cambios',
			'reminders.enabledSuccessfully' => '¡Notificaciones activadas con éxito!',
			'reminders.permissionDenied' => 'Permiso de notificaciones denegado',
			'reminders.errorEnabling' => ({required Object error}) => 'Error al activar notificaciones: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Error al completar la configuración: ${error}',
			'notifications.breakfast.title' => '¡Hora del desayuno! 🍳',
			'notifications.breakfast.body' => 'No te olvides de registrar tu desayuno',
			'notifications.lunch.title' => '¡Hora del almuerzo! 🥗',
			'notifications.lunch.body' => 'Es hora de registrar tu almuerzo',
			'notifications.dinner.title' => '¡Hora de la cena! 🍽️',
			'notifications.dinner.body' => 'No te olvides de registrar tu cena',
			'notifications.snack.title' => '¡Hora de un snack! 🍎',
			'notifications.snack.body' => 'Hora de un snack saludable',
			'notifications.test.title' => 'Notificación de prueba',
			'login.title' => 'Iniciar sesión',
			'login.signInWithGoogle' => 'Iniciar sesión con Google',
			'login.signInFailed' => 'El inicio de sesión con Google falló o fue cancelado.',
			'disclaimer.pleaseNote' => 'Por favor ten en cuenta',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} ofrece información nutricional estimada. La precisión depende de tu entrada y de las variaciones de los alimentos. Úsalo como guía, no como fuente definitiva. Consulta a un profesional para asesoramiento dietético personalizado.',
			'disclaimer.snap.portionSize.title' => 'Tamaño de la porción',
			'disclaimer.snap.portionSize.description' => 'La precisión de las estimaciones depende en gran medida de tu evaluación correcta del tamaño de la porción.',
			'disclaimer.snap.preparationMethods.title' => 'Métodos de preparación',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Los métodos de cocción pueden alterar significativamente el contenido nutricional de los alimentos. Las estimaciones de ${appLabel} pueden no tener en cuenta siempre estas variaciones.',
			'disclaimer.snap.ingredients.title' => 'Ingredientes',
			'disclaimer.snap.ingredients.description' => 'Platos complejos con muchos ingredientes ocultos pueden conducir a estimaciones menos precisas.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitaciones de la base de datos',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'La base de datos de alimentos de ${appLabel} es extensa pero puede no incluir todos los alimentos o variaciones.',
			'disclaimer.weightEstimate.title' => 'Sobre la estimación de peso',
			'disclaimer.weightEstimate.description' => 'El cambio de peso proyectado es una estimación teórica basada en el modelo simple de calorías entrantes vs. calorías gastadas. Está destinado solo como guía motivacional, no como predicción de tu peso real.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Precisión de las calorías',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Esta estimación es tan precisa como tu registro de ingesta y gasto calórico. Un registro inexacto dará lugar a una proyección inexacta.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Factores biológicos',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'La pérdida/ganancia de peso real está influenciada por metabolismo, hormonas, sueño, estrés, hidratación y otros factores individuales que ${appLabel} no puede medir.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Peso de agua y fluctuaciones',
			'disclaimer.weightEstimate.waterWeight.description' => 'El peso diario normal puede fluctuar significativamente debido a retención de agua, digestión y horarios. La estimación no contempla estos cambios diarios.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Orientación profesional',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'No uses esta estimación para tomar decisiones médicas. Consulta siempre a un profesional de la salud o a un dietista registrado para consejos personalizados de manejo de peso.',
			'disclaimer.healthMetrics.description' => 'Estas métricas te ayudan a entender las necesidades energéticas de tu cuerpo y guiar tus objetivos nutricionales.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'La tasa metabólica basal (BMR) es la cantidad de calorías que tu cuerpo quema en reposo para mantener funciones básicas como la respiración y la circulación. El BMR depende de tu edad, género, altura y peso. Un BMR más alto significa que tu cuerpo quema más calorías en reposo, a menudo debido a mayor masa muscular, menor edad o ser hombre. Un BMR más bajo suele indicar menos masa muscular, mayor edad o ser mujer.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'El gasto energético diario total (TDEE) es las calorías totales que quemas por día, incluyendo tu BMR más las calorías de la actividad física y el movimiento diario. El TDEE depende de tu BMR y nivel de actividad. Un TDEE más alto significa que quemas más calorías en general, generalmente por ser más activo o tener un BMR mayor. Un TDEE más bajo sugiere menos actividad diaria o un BMR más bajo.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Objetivo diario',
			'disclaimer.healthMetrics.dailyGoal.description' => 'El objetivo diario es tu ingesta calórica recomendada basada en tu TDEE y tu objetivo de peso. Para perder peso, consumes menos calorías que tu TDEE. Para mantener el peso, igualas tu TDEE. Para ganar peso, consumes más calorías que tu TDEE. Esto te ayuda a lograr el cambio de peso deseado a un ritmo saludable.',
			'disclaimer.calorieExpenditure.title' => 'Estimación de gasto de calorías',
			'disclaimer.calorieExpenditure.description' => 'Cuando los datos de Health Connect no están disponibles, estimamos las calorías quemadas del día usando tu BMR y nivel de actividad (TDEE), ajustadas por la fracción del día que ha pasado.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Cómo se calcula la estimación',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Calculamos tu TDEE (basado en tu perfil) y lo multiplicamos por la fracción del día transcurrida (horas + minutos) / 24 para estimar las calorías quemadas hasta ahora.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Orientación profesional',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'No uses esta estimación para tomar decisiones médicas. Consulta siempre a un profesional de la salud o a un dietista registrado para consejos personalizados de manejo de peso.',
			_ => null,
		} ?? switch (path) {
			'localNutritionPhase4.nutritionBundled' => 'Nutrición obtenida del paquete USDA descargado',
			'localNutritionPhase4.nutritionCached' => 'Nutrición obtenida de la caché USDA del dispositivo',
			'localNutritionPhase4.nutritionMixed' => 'Nutrición combinada de registros USDA descargados, almacenados en caché y remotos',
			'localNutritionPhase4.calculationLocal' => 'Calorías y macros calculados en este dispositivo',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: paquete USDA descargado',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: caché USDA del dispositivo',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: registro USDA obtenido mediante Calorify',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: constante nutricional determinista',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · conjunto de datos ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Más pequeña',
			'localNutritionPhase4.portionEstimated' => 'Estimada',
			'localNutritionPhase4.portionLarger' => 'Más grande',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => '¿Qué porción se acercaba más para ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => '¿Qué comida era esta?',
			'localNutritionPhase4.localNutritionTip' => 'Calculado con datos nutricionales locales verificados.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Descargar datos nutricionales',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Usa registros USDA verificados y cálculo determinista en este dispositivo cuando todos los ingredientes estén cubiertos.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Los datos nutricionales locales no están disponibles para esta versión de la aplicación.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'No hay ningún paquete nutricional verificado descargado.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Descargando y verificando datos nutricionales…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Paquete ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} registros USDA en caché · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Buscar actualizaciones',
			'localNutritionPhase4.offlineNutritionClear' => 'Borrar datos nutricionales locales',
			'localNutritionPhase4.offlineNutritionClearTitle' => '¿Borrar los datos nutricionales locales?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Esto elimina el paquete USDA descargado y la caché de búsqueda. Las comidas registradas conservan la instantánea nutricional exacta utilizada al guardarlas.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Borrar datos',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'No se pudieron descargar y verificar los datos nutricionales locales: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Datos nutricionales locales borrados',
			'common.close' => 'Cerrar',
			'common.kContinue' => 'Continuar',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '¿Disfrutando ${appLabel}?',
			'feedbackRating.yes' => 'Sí, me gusta',
			'feedbackRating.no' => 'No mucho',
			'feedbackRating.rateStepHeading' => 'Valorar en Play Store',
			'feedbackRating.emailStepHeading' => 'Enviar comentarios por correo',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Una valoración rápida ayuda a otros a encontrar ${appLabel} y mantiene el desarrollo en marcha. ¿Tomarías un momento para dejar una?',
			'feedbackRating.shareFeedbackViaEmail' => 'Tu retroalimentación da forma a lo que viene — leemos cada mensaje. ¿Te gustaría compartir tus ideas por correo?',
			'feedbackRating.rateCta' => 'Valorar en Play Store',
			'feedbackRating.maybeLater' => 'Quizá más tarde',
			'feedbackRating.sendFeedback' => 'Enviar comentarios',
			'feedbackRating.noThanks' => 'No, gracias',
			'feedbackRating.aboutUsDescription' => 'Hecho con cuidado por un equipo pequeño. Nos enfocamos en privacidad, simplicidad y en ayudarte a construir mejores hábitos alimentarios.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '¿Curioso quién está detrás de ${appLabel}? Ver ',
			'feedbackRating.aboutUsLinkLabel' => 'Acerca de nosotros',
			'feedbackRating.thankYouMessage' => '¡Gracias! Te preguntaremos de nuevo otra vez.',
			'health.syncFailed' => 'No se pudo sincronizar con Health Connect',
			'health.mealSynced' => 'Comida sincronizada con Health Connect',
			_ => null,
		};
	}
}
