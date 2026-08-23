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
	@override late final _Translations$errors$es errors = _Translations$errors$es._(_root);
	@override late final _Translations$onboarding$es onboarding = _Translations$onboarding$es._(_root);
	@override late final _Translations$tabs$es tabs = _Translations$tabs$es._(_root);
	@override late final _Translations$home$es home = _Translations$home$es._(_root);
	@override late final _Translations$history$es history = _Translations$history$es._(_root);
	@override late final _Translations$meal$es meal = _Translations$meal$es._(_root);
	@override late final _Translations$favorites$es favorites = _Translations$favorites$es._(_root);
	@override late final _Translations$profile$es profile = _Translations$profile$es._(_root);
	@override late final _Translations$healthScore$es healthScore = _Translations$healthScore$es._(_root);
	@override late final _Translations$editProfile$es editProfile = _Translations$editProfile$es._(_root);
	@override late final _Translations$settings$es settings = _Translations$settings$es._(_root);
	@override late final _Translations$reminders$es reminders = _Translations$reminders$es._(_root);
	@override late final _Translations$notifications$es notifications = _Translations$notifications$es._(_root);
	@override late final _Translations$login$es login = _Translations$login$es._(_root);
	@override late final _Translations$disclaimer$es disclaimer = _Translations$disclaimer$es._(_root);
	@override late final _Translations$localNutritionPhase4$es localNutritionPhase4 = _Translations$localNutritionPhase4$es._(_root);
	@override late final _Translations$common$es common = _Translations$common$es._(_root);
	@override late final _Translations$feedbackRating$es feedbackRating = _Translations$feedbackRating$es._(_root);
	@override late final _Translations$health$es health = _Translations$health$es._(_root);
}

// Path: errors
class _Translations$errors$es extends Translations$errors$en {
	_Translations$errors$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$es extends Translations$onboarding$en {
	_Translations$onboarding$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bienvenido a ${appLabel}';
	@override String get subtitle => 'Tu compañero personal de nutrición potenciado por AI';
	@override String get getStarted => 'Comenzar';
	@override late final _Translations$onboarding$features$es features = _Translations$onboarding$features$es._(_root);
	@override late final _Translations$onboarding$gender$es gender = _Translations$onboarding$gender$es._(_root);
	@override late final _Translations$onboarding$height$es height = _Translations$onboarding$height$es._(_root);
	@override late final _Translations$onboarding$weight$es weight = _Translations$onboarding$weight$es._(_root);
	@override late final _Translations$onboarding$age$es age = _Translations$onboarding$age$es._(_root);
	@override late final _Translations$onboarding$bmiScale$es bmiScale = _Translations$onboarding$bmiScale$es._(_root);
	@override late final _Translations$onboarding$weightGoal$es weightGoal = _Translations$onboarding$weightGoal$es._(_root);
	@override late final _Translations$onboarding$activityLevel$es activityLevel = _Translations$onboarding$activityLevel$es._(_root);
	@override late final _Translations$onboarding$healthConnect$es healthConnect = _Translations$onboarding$healthConnect$es._(_root);
	@override late final _Translations$onboarding$reinforcement$es reinforcement = _Translations$onboarding$reinforcement$es._(_root);
}

// Path: tabs
class _Translations$tabs$es extends Translations$tabs$en {
	_Translations$tabs$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Resumen';
	@override String get history => 'Historial';
}

// Path: home
class _Translations$home$es extends Translations$home$en {
	_Translations$home$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$es aiSummary = _Translations$home$aiSummary$es._(_root);
	@override late final _Translations$home$dailyGoal$es dailyGoal = _Translations$home$dailyGoal$es._(_root);
	@override late final _Translations$home$dailySummary$es dailySummary = _Translations$home$dailySummary$es._(_root);
	@override late final _Translations$home$intakeProgress$es intakeProgress = _Translations$home$intakeProgress$es._(_root);
	@override late final _Translations$home$intakeHistory$es intakeHistory = _Translations$home$intakeHistory$es._(_root);
	@override late final _Translations$home$mealLog$es mealLog = _Translations$home$mealLog$es._(_root);
	@override late final _Translations$home$mealDescription$es mealDescription = _Translations$home$mealDescription$es._(_root);
	@override late final _Translations$home$favoriteMeals$es favoriteMeals = _Translations$home$favoriteMeals$es._(_root);
	@override late final _Translations$home$mealSnap$es mealSnap = _Translations$home$mealSnap$es._(_root);
	@override late final _Translations$home$connectHealth$es connectHealth = _Translations$home$connectHealth$es._(_root);
}

// Path: history
class _Translations$history$es extends Translations$history$en {
	_Translations$history$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'No hay comidas registradas';
	@override String get emptyMessage => 'Haz una foto de tu última comida para registrarla aquí.';
	@override String get today => 'Hoy';
	@override String get yesterday => 'Ayer';
}

// Path: meal
class _Translations$meal$es extends Translations$meal$en {
	_Translations$meal$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
	@override late final _Translations$meal$nutrition$es nutrition = _Translations$meal$nutrition$es._(_root);
	@override late final _Translations$meal$deleteConfirmation$es deleteConfirmation = _Translations$meal$deleteConfirmation$es._(_root);
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
	@override late final _Translations$meal$questionFlow$es questionFlow = _Translations$meal$questionFlow$es._(_root);
	@override late final _Translations$meal$analysis$es analysis = _Translations$meal$analysis$es._(_root);
	@override late final _Translations$meal$localInference$es localInference = _Translations$meal$localInference$es._(_root);
	@override late final _Translations$meal$feedback$es feedback = _Translations$meal$feedback$es._(_root);
}

// Path: favorites
class _Translations$favorites$es extends Translations$favorites$en {
	_Translations$favorites$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
	@override late final _Translations$favorites$sortOptions$es sortOptions = _Translations$favorites$sortOptions$es._(_root);
}

// Path: profile
class _Translations$profile$es extends Translations$profile$en {
	_Translations$profile$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get noProfileData => 'No se encontraron datos de perfil';
	@override String get yourProfile => 'Tu perfil';
	@override String get viewAndManage => 'Ver y administrar tu información de salud';
	@override late final _Translations$profile$sections$es sections = _Translations$profile$sections$es._(_root);
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
	@override late final _Translations$profile$calculatedValues$es calculatedValues = _Translations$profile$calculatedValues$es._(_root);
}

// Path: healthScore
class _Translations$healthScore$es extends Translations$healthScore$en {
	_Translations$healthScore$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Puntuación de salud';
	@override String get whyThisScore => '¿Por qué esta puntuación?';
	@override String get note => 'Esta puntuación es una estimación por AI basada en los ingredientes identificados y la densidad nutricional. Consulta siempre a un profesional para asesoramiento dietético.';
	@override String get unhealthy => 'Poco saludable';
	@override String get healthy => 'Saludable';
	@override String get neutral => 'Equilibrado';
}

// Path: editProfile
class _Translations$editProfile$es extends Translations$editProfile$en {
	_Translations$editProfile$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar perfil';
	@override late final _Translations$editProfile$sections$es sections = _Translations$editProfile$sections$es._(_root);
	@override String get gender => 'Género';
	@override String get dateOfBirth => 'Fecha de nacimiento';
	@override String get height => 'Altura';
	@override String get weight => 'Peso';
	@override String get weightGoal => 'Objetivo de peso';
	@override String get activityLevel => 'Nivel de actividad';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Sistema imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lb';
	@override String get metricCm => 'Métrico (cm)';
	@override String get imperialFtIn => 'Sistema imperial (pies/pulg)';
	@override String get metricKg => 'Métrico (kg)';
	@override String get imperialLbs => 'Sistema imperial (lb)';
	@override late final _Translations$editProfile$genders$es genders = _Translations$editProfile$genders$es._(_root);
	@override late final _Translations$editProfile$weightGoals$es weightGoals = _Translations$editProfile$weightGoals$es._(_root);
	@override late final _Translations$editProfile$activityLevels$es activityLevels = _Translations$editProfile$activityLevels$es._(_root);
}

// Path: settings
class _Translations$settings$es extends Translations$settings$en {
	_Translations$settings$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ajustes';
	@override late final _Translations$settings$sections$es sections = _Translations$settings$sections$es._(_root);
	@override late final _Translations$settings$editProfile$es editProfile = _Translations$settings$editProfile$es._(_root);
	@override late final _Translations$settings$language$es language = _Translations$settings$language$es._(_root);
	@override late final _Translations$settings$heightUnit$es heightUnit = _Translations$settings$heightUnit$es._(_root);
	@override late final _Translations$settings$weightUnit$es weightUnit = _Translations$settings$weightUnit$es._(_root);
	@override late final _Translations$settings$mealReminders$es mealReminders = _Translations$settings$mealReminders$es._(_root);
	@override late final _Translations$settings$localInference$es localInference = _Translations$settings$localInference$es._(_root);
	@override late final _Translations$settings$theme$es theme = _Translations$settings$theme$es._(_root);
	@override late final _Translations$settings$sendFeedback$es sendFeedback = _Translations$settings$sendFeedback$es._(_root);
	@override late final _Translations$settings$exportMealHistory$es exportMealHistory = _Translations$settings$exportMealHistory$es._(_root);
	@override late final _Translations$settings$clearAllData$es clearAllData = _Translations$settings$clearAllData$es._(_root);
	@override late final _Translations$settings$debugOptions$es debugOptions = _Translations$settings$debugOptions$es._(_root);
	@override String get developerModeEnabled => '¡Modo desarrollador activado!';
	@override late final _Translations$settings$healthConnect$es healthConnect = _Translations$settings$healthConnect$es._(_root);
	@override late final _Translations$settings$about$es about = _Translations$settings$about$es._(_root);
	@override late final _Translations$settings$appInfo$es appInfo = _Translations$settings$appInfo$es._(_root);
}

// Path: reminders
class _Translations$reminders$es extends Translations$reminders$en {
	_Translations$reminders$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$notifications$es extends Translations$notifications$en {
	_Translations$notifications$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$es breakfast = _Translations$notifications$breakfast$es._(_root);
	@override late final _Translations$notifications$lunch$es lunch = _Translations$notifications$lunch$es._(_root);
	@override late final _Translations$notifications$dinner$es dinner = _Translations$notifications$dinner$es._(_root);
	@override late final _Translations$notifications$snack$es snack = _Translations$notifications$snack$es._(_root);
	@override late final _Translations$notifications$test$es test = _Translations$notifications$test$es._(_root);
}

// Path: login
class _Translations$login$es extends Translations$login$en {
	_Translations$login$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iniciar sesión';
	@override String get signInWithGoogle => 'Iniciar sesión con Google';
	@override String get signInFailed => 'El inicio de sesión con Google falló o fue cancelado.';
}

// Path: disclaimer
class _Translations$disclaimer$es extends Translations$disclaimer$en {
	_Translations$disclaimer$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Por favor ten en cuenta';
	@override late final _Translations$disclaimer$snap$es snap = _Translations$disclaimer$snap$es._(_root);
	@override late final _Translations$disclaimer$weightEstimate$es weightEstimate = _Translations$disclaimer$weightEstimate$es._(_root);
	@override late final _Translations$disclaimer$healthMetrics$es healthMetrics = _Translations$disclaimer$healthMetrics$es._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$es calorieExpenditure = _Translations$disclaimer$calorieExpenditure$es._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$es extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$common$es extends Translations$common$en {
	_Translations$common$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get close => 'Cerrar';
	@override String get kContinue => 'Continuar';
}

// Path: feedbackRating
class _Translations$feedbackRating$es extends Translations$feedbackRating$en {
	_Translations$feedbackRating$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$health$es extends Translations$health$en {
	_Translations$health$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'No se pudo sincronizar con Health Connect';
	@override String get mealSynced => 'Comida sincronizada con Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$es extends Translations$onboarding$features$en {
	_Translations$onboarding$features$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$es foodRecognition = _Translations$onboarding$features$foodRecognition$es._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$es aiAnalysis = _Translations$onboarding$features$aiAnalysis$es._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$es healthIntegration = _Translations$onboarding$features$healthIntegration$es._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$es extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cuál es tu género?';
	@override String get description => 'El género nos ayuda a calcular con precisión tu tasa metabólica basal (BMR).';
	@override String get next => 'Siguiente';
}

// Path: onboarding.height
class _Translations$onboarding$height$es extends Translations$onboarding$height$en {
	_Translations$onboarding$height$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cuánto mides?';
	@override String get description => 'Tu altura nos ayuda a calcular tu BMI y tus necesidades energéticas con precisión.';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Sistema imperial';
	@override String get next => 'Siguiente';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$es extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => '¿Cuál es tu peso actual?';
	@override String get currentDescription => 'Tu peso actual es esencial para personalizar tus metas diarias.';
	@override String get targetTitle => '¿Cuál es tu peso objetivo?';
	@override String get targetDescription => 'Establecer un peso objetivo nos ayuda a determinar tu plan a largo plazo.';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Sistema imperial';
	@override String get next => 'Siguiente';
}

// Path: onboarding.age
class _Translations$onboarding$age$es extends Translations$onboarding$age$en {
	_Translations$onboarding$age$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cuándo es tu cumpleaños?';
	@override String get description => 'Tu edad nos ayuda a calcular tus necesidades calóricas con precisión.';
	@override String get next => 'Siguiente';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$es extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Bajo';
	@override String get healthy => 'Saludable';
	@override String get overweight => 'Sobrepeso';
	@override String get obese => 'Obeso';
	@override late final _Translations$onboarding$bmiScale$categories$es categories = _Translations$onboarding$bmiScale$categories$es._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$es messages = _Translations$onboarding$bmiScale$messages$es._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$es extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Cuál es tu objetivo?';
	@override String get description => 'Elige la meta que mejor describa lo que quieres lograr';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$es extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Qué tan activo eres?';
	@override String get description => 'Esto nos ayuda a calcular tus necesidades calóricas diarias con mayor precisión';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$es extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conéctate con Health Connect';
	@override String get description => 'Sincroniza tus datos de salud para obtener mejores insights y seguimiento automático de calorías';
	@override String get overviewDescription => 'Usa las calorías quemadas en tu objetivo diario y, si quieres, comparte las comidas registradas con Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$es automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$es._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$es caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$es._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$es progressInsights = _Translations$onboarding$healthConnect$progressInsights$es._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$es shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$es._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$es seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$es._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$es userControl = _Translations$onboarding$healthConnect$userControl$es._(_root);
	@override String get connected => 'Health Connect conectado';
	@override String get notConnected => 'Health Connect no conectado';
	@override String get setup => 'Configurar Health Connect';
	@override String get skipForNow => 'Saltar por ahora';
	@override String get statusConnected => 'Health Connect está conectado.';
	@override String get statusSuccess => '¡Health Connect se ha conectado correctamente!';
	@override String get statusNotConnected => 'Elige las funciones de Health Connect que quieres activar.';
	@override String get statusPartial => 'Health Connect está conectado parcialmente. Activa el permiso restante para usar ambas funciones.';
	@override String get statusProviderUpdateRequired => 'Instala o actualiza Health Connect para continuar.';
	@override String get statusUnavailable => 'Health Connect no es compatible con este dispositivo.';
	@override String get installOrUpdate => 'Instalar o actualizar';
	@override String get manageAccess => 'Administrar acceso';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permiso denegado. Por favor, habilita los permisos de Health Connect desde los ajustes de tu teléfono para ${appLabel}.';
	@override String statusError({required Object error}) => 'Error al configurar Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$es extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$es trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$es._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$es healthProfile = _Translations$onboarding$reinforcement$healthProfile$es._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$es goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$es._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$es extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$home$dailyGoal$es extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
	@override String get kcal => 'kilocalorías';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$es extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$home$intakeProgress$es extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Distribución de macros de hoy';
	@override String get target => 'Objetivo';
	@override String get current => 'Actual';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$es extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Historial de macros 7 días';
	@override String get trendTitle => 'Tendencia de hoy';
	@override String peakHour({required Object hour}) => 'Pico: ${hour}:00';
	@override String get noHistoryYet => 'Sin historial todavía';
	@override String get startLogging => 'Empieza a registrar comidas para ver tus\ntendencias de macronutrientes de 7 días aquí';
}

// Path: home.mealLog
class _Translations$home$mealLog$es extends Translations$home$mealLog$en {
	_Translations$home$mealLog$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comidas registradas';
	@override String get emptyMessage => 'Haz una foto de tu última comida para registrarla aquí.';
	@override String get noMealsToday => 'No hay comidas registradas hoy';
	@override String get seeAllMeals => 'Ver todas las comidas';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$es extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Añadir rápido con AI';
	@override String get description => 'Describe tu comida y deja que la AI se encargue de los detalles.';
	@override String get hint => 'p.ej. En el desayuno tomé un bol grande de avena con un plátano en rodajas y una cucharada de whey ...';
	@override String get analyzeMeal => 'Analizar comida';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$es extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$home$mealSnap$es extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$home$connectHealth$es extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizar con Health Connect';
	@override String get description => 'Sincroniza tus datos de nutrición con Health Connect';
	@override String get install => 'Instalar';
	@override String get dataUseDescription => 'Usa las calorías quemadas en tu objetivo y comparte las comidas registradas';
	@override String get installOrUpdate => 'Instalar o actualizar';
	@override String get connect => 'Conectar';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$es extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorías';
	@override String get carbs => 'Carbohidratos (g)';
	@override String get protein => 'Proteína (g)';
	@override String get fat => 'Grasa (g)';
	@override String get fiber => 'Fibra (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$es extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eliminar comida';
	@override String get message => '¿Estás seguro de que quieres eliminar esta entrada de comida?';
	@override String get cancel => 'Cancelar';
	@override String get delete => 'Eliminar';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$es extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Pregunta ${current} de ${total}';
	@override String get noQuestionsAvailable => 'No hay preguntas disponibles';
	@override String get next => 'Siguiente';
	@override String get continueLabel => 'Continuar';
}

// Path: meal.analysis
class _Translations$meal$analysis$es extends Translations$meal$analysis$en {
	_Translations$meal$analysis$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
	@override String mealPreviewDescription({required Object text}) => '«${text}»';
	@override String get offlineTip0 => 'Consejo: La consistencia supera a la perfección — los registros regulares revelan los patrones que importan.';
	@override String get offlineTip1 => 'Consejo: Para fotos, la luz natural y una vista cenital ayudan con la precisión de la porción.';
	@override String get offlineTip2 => 'Consejo: Menciona bebidas, salsas y aceite de cocina—añaden calorías que a menudo se olvidan.';
	@override String get offlineTip3 => 'Consejo: Una nota rápida de porción (1 bol, café grande) afina mucho las estimaciones.';
	@override String get offlineTip4 => 'Consejo: Registrar después de la comida aún crea el hábito; la perfección es opcional.';
	@override String get offlineTip5 => 'Consejo: Di cómo se cocinó la comida cuando cambia mucho las calorías (frito vs horneado).';
}

// Path: meal.localInference
class _Translations$meal$localInference$es extends Translations$meal$localInference$en {
	_Translations$meal$localInference$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$meal$feedback$es extends Translations$meal$feedback$en {
	_Translations$meal$feedback$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$favorites$sortOptions$es extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Recientes';
	@override String get calories => 'Calorías';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$es extends Translations$profile$sections$en {
	_Translations$profile$sections$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERFIL';
	@override String get basicInformation => 'INFORMACIÓN BÁSICA';
	@override String get goalsAndActivity => 'METAS Y ACTIVIDAD';
	@override String get calculatedValues => 'VALORES CALCULADOS';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$es extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Objetivo diario';
	@override String get calPerDay => 'cal/día';
	@override String get notAvailable => 'N/D';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$es extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMACIÓN PERSONAL';
	@override String get physicalMeasurements => 'MEDIDAS FÍSICAS';
	@override String get goalsAndActivity => 'METAS Y ACTIVIDAD';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$es extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get male => 'Masculino';
	@override String get female => 'Femenino';
	@override String get other => 'Otro';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$es extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$es loseWeight = _Translations$editProfile$weightGoals$loseWeight$es._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$es maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$es._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$es gainWeight = _Translations$editProfile$weightGoals$gainWeight$es._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$es extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$es sedentary = _Translations$editProfile$activityLevels$sedentary$es._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$es lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$es._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$es moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$es._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$es veryActive = _Translations$editProfile$activityLevels$veryActive$es._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$es extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$es._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$es extends Translations$settings$sections$en {
	_Translations$settings$sections$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERFIL';
	@override String get localization => 'LOCALIZACIÓN';
	@override String get notifications => 'NOTIFICACIONES';
	@override String get healthConnect => 'CONEXIÓN CON HEALTH CONNECT';
	@override String get localInference => 'ANÁLISIS EN EL DISPOSITIVO';
	@override String get supportAndLegal => 'SOPORTE Y LEGAL';
	@override String get about => 'ACERCA DE';
	@override String get dangerZone => 'ZONA DE RIESGO';
	@override String get developer => 'DESARROLLADOR';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$es extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar perfil';
	@override String get subtitle => 'Actualiza tu información personal';
}

// Path: settings.language
class _Translations$settings$language$es extends Translations$settings$language$en {
	_Translations$settings$language$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Idioma';
	@override String get subtitle => 'Elige tu idioma preferido';
	@override String get searchHint => 'Buscar idiomas...';
	@override String get noResults => 'No se encontraron resultados';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$es extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidad de altura';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$es extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidad de peso';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$es extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recordatorios de comidas';
	@override String get subtitle => 'Mantente en camino con alertas oportunas';
}

// Path: settings.localInference
class _Translations$settings$localInference$es extends Translations$settings$localInference$en {
	_Translations$settings$localInference$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$settings$theme$es extends Translations$settings$theme$en {
	_Translations$settings$theme$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Claro';
	@override String get dark => 'Oscuro';
	@override String get system => 'Sistema';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$es extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$settings$exportMealHistory$es extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exportar historial de comidas';
	@override String get subtitle => 'Compartir un CSV de tus comidas registradas';
	@override String get shareText => 'Tu exportación del historial de comidas de Calorify';
	@override String failed({required Object error}) => 'No se pudo exportar el historial de comidas: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$es extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get localOnlySubtitle => 'Eliminar los datos de Calorify guardados en este dispositivo';
	@override String get localOnlyConfirmationMessage => 'Esto elimina permanentemente de este dispositivo las comidas registradas, los favoritos y los ajustes del perfil. Las comidas ya compartidas con Health Connect y el acceso a Health Connect se administran por separado en Ajustes > Health Connect.';
	@override String get title => 'Borrar todos los datos';
	@override String get subtitle => 'Eliminar irreversiblemente toda tu información';
	@override String get confirmationTitle => '¿Borrar todos los datos?';
	@override String get confirmationMessage => 'Esta acción no se puede deshacer. Todas tus comidas registradas, favoritos y ajustes de perfil se eliminarán permanentemente.';
	@override String get cancel => 'Cancelar';
	@override String get clearEverything => 'Borrar todo';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$es extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opciones de depuración';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$es extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Ver y administrar permisos';
	@override late final _Translations$settings$healthConnect$unavailable$es unavailable = _Translations$settings$healthConnect$unavailable$es._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$es updateRequired = _Translations$settings$healthConnect$updateRequired$es._(_root);
	@override late final _Translations$settings$healthConnect$permissions$es permissions = _Translations$settings$healthConnect$permissions$es._(_root);
	@override String get managePermissions => 'Administrar permisos';
	@override String get openSettings => 'Abrir ajustes de Health Connect';
	@override String get disconnect => 'Desconectar Health Connect';
	@override String get disconnectConfirmationTitle => '¿Desconectar Health Connect?';
	@override String get disconnectConfirmationMessage => 'Calorify perderá el acceso a Health Connect. Los datos que ya estén guardados allí no se eliminarán.';
	@override String get disconnectConfirmationAction => 'Desconectar';
	@override String get deleteSyncedMeals => 'Eliminar las comidas de Calorify de Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => '¿Eliminar las comidas sincronizadas?';
	@override String get deleteSyncedMealsConfirmationMessage => '¿Quieres eliminar de Health Connect las comidas sincronizadas por esta versión de Calorify? Tu registro local de comidas no cambiará. Es posible que las entradas anteriores de Calorify aún deban eliminarse mediante Administrar datos en Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Eliminar comidas sincronizadas';
	@override String get deleteSyncedMealsSuccess => 'Las comidas de Calorify se eliminaron de Health Connect.';
	@override String get deleteSyncedMealsFailed => 'No se pudieron eliminar las comidas sincronizadas. Inténtalo de nuevo.';
	@override String get connectionPartial => 'Algunas funciones de Health Connect están activadas.';
	@override String get connectionComplete => 'Las dos funciones de Health Connect están activadas.';
	@override String get actionFailed => 'No se pudo abrir Health Connect. Inténtalo de nuevo.';
	@override String get requestPermissions => 'Solicitar permisos';
	@override String get permissionRequestCancelledOrFailed => 'La solicitud de permisos fue cancelada o falló. Por favor, inténtalo de nuevo o concede los permisos manualmente en los ajustes de Health Connect.';
	@override String get permissionRequestFailed => 'No se pudo solicitar permisos. Por favor, inténtalo de nuevo o concede los permisos manualmente en los ajustes de Health Connect.';
	@override String get requestingPermissions => 'Solicitando...';
}

// Path: settings.about
class _Translations$settings$about$es extends Translations$settings$about$en {
	_Translations$settings$about$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Acerca de';
	@override String get tagline => 'Rápido, gratis y con privacidad como prioridad';
	@override late final _Translations$settings$about$ourStory$es ourStory = _Translations$settings$about$ourStory$es._(_root);
	@override late final _Translations$settings$about$privacy$es privacy = _Translations$settings$about$privacy$es._(_root);
	@override late final _Translations$settings$about$developer$es developer = _Translations$settings$about$developer$es._(_root);
	@override late final _Translations$settings$about$feedback$es feedback = _Translations$settings$about$feedback$es._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$es extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify versión ${version}';
	@override String build({required Object buildNumber}) => 'Compilación ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$es extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora del desayuno! 🍳';
	@override String get body => 'No te olvides de registrar tu desayuno';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$es extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora del almuerzo! 🥗';
	@override String get body => 'Es hora de registrar tu almuerzo';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$es extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora de la cena! 🍽️';
	@override String get body => 'No te olvides de registrar tu cena';
}

// Path: notifications.snack
class _Translations$notifications$snack$es extends Translations$notifications$snack$en {
	_Translations$notifications$snack$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Hora de un snack! 🍎';
	@override String get body => 'Hora de un snack saludable';
}

// Path: notifications.test
class _Translations$notifications$test$es extends Translations$notifications$test$en {
	_Translations$notifications$test$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificación de prueba';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$es extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} ofrece información nutricional estimada. La precisión depende de tu entrada y de las variaciones de los alimentos. Úsalo como guía, no como fuente definitiva. Consulta a un profesional para asesoramiento dietético personalizado.';
	@override late final _Translations$disclaimer$snap$portionSize$es portionSize = _Translations$disclaimer$snap$portionSize$es._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$es preparationMethods = _Translations$disclaimer$snap$preparationMethods$es._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$es ingredients = _Translations$disclaimer$snap$ingredients$es._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$es databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$es._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$es extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobre la estimación de peso';
	@override String get description => 'El cambio de peso proyectado es una estimación teórica basada en el modelo simple de calorías entrantes vs. calorías gastadas. Está destinado solo como guía motivacional, no como predicción de tu peso real.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$es calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$es._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$es biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$es._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$es waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$es._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$es professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$es._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$es extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Estas métricas te ayudan a entender las necesidades energéticas de tu cuerpo y guiar tus objetivos nutricionales.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$es bmr = _Translations$disclaimer$healthMetrics$bmr$es._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$es tdee = _Translations$disclaimer$healthMetrics$tdee$es._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$es dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$es._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$es extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimación de gasto de calorías';
	@override String get description => 'Cuando los datos de Health Connect no están disponibles, estimamos las calorías quemadas del día usando tu BMR y nivel de actividad (TDEE), ajustadas por la fracción del día que ha pasado.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$es howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$es._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$es professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$es._(_root);
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$es extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconocimiento inteligente de alimentos';
	@override String get description => 'Toma una foto y deja que la AI identifique tu comida';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$es extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análisis por AI';
	@override String get description => 'Obtén datos nutricionales instantáneos a partir de tus descripciones';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$es extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integración con Health Connect';
	@override String get description => 'Conecta con Health Connect para obtener mejores insights';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$es extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Bajo peso';
	@override String get healthyWeight => 'Peso saludable';
	@override String get overweight => 'Sobrepeso';
	@override String get obese => 'Obesidad';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$es extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podemos ayudarte a crear un plan saludable para alcanzar un peso equilibrado con comidas ricas en nutrientes.';
	@override String get healthy => '¡Buen trabajo! Estás en un rango saludable. Te ayudaremos a mantener tu vitalidad y niveles de energía.';
	@override String overweight({required Object appLabel}) => '${appLabel} simplificará tu camino con seguimiento potenciado por AI para ayudarte a alcanzar tu objetivo con comodidad.';
	@override String get obese => 'Estamos aquí para apoyarte con orientación personalizada y estrategias sostenibles para tus metas de salud.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$es extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seguimiento automático de calorías';
	@override String get description => 'Registra las calorías quemadas desde tus apps de fitness';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$es extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calorías quemadas';
	@override String get description => 'Lee el total de calorías quemadas hoy desde Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$es extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Insights de progreso';
	@override String get description => 'Obtén insights detallados sobre tus tendencias de salud';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$es extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Compartir comidas registradas';
	@override String get description => 'Guarda en Health Connect las comidas que registras en Calorify';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$es extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integración sin complicaciones';
	@override String get description => 'Sincroniza datos desde tus apps de salud favoritas';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$es extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tú tienes el control';
	@override String get description => 'Elige cualquiera de los permisos y cambia el acceso cuando quieras';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$es extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$healthProfile$es extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$goalLifestyle$es extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$weightGoals$loseWeight$es extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perder peso';
	@override String get description => 'Crear un déficit calórico para perder peso';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$es extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mantener peso';
	@override String get description => 'Mantener tu peso actual';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$es extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ganar peso';
	@override String get description => 'Crear un superávit calórico para ganar peso';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$es extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentario';
	@override String get description => 'Poco o ningún ejercicio';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$es extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ligeramente activo';
	@override String get description => 'Ejercicio ligero 1-3 días/semana';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$es extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderadamente activo';
	@override String get description => 'Ejercicio moderado 3-5 días/semana';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$es extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Muy activo';
	@override String get description => 'Ejercicio intenso 6-7 días/semana';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$es extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extremadamente activo';
	@override String get description => 'Ejercicio muy intenso o trabajo físico';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$es extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get unsupportedDescription => 'Health Connect no es compatible con este dispositivo.';
	@override String get title => 'Health Connect no disponible';
	@override String get description => 'Health Connect no está disponible en este dispositivo. Por favor, instala Health Connect desde Play Store (Android 9+) o actualiza a Android 14+.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$es extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect requiere atención';
	@override String get description => 'Instala o actualiza Health Connect antes de administrar el acceso.';
	@override String get action => 'Instalar o actualizar';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$es extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permisos';
	@override String get description => 'Se solicitan los siguientes permisos para proporcionar la integración con Health Connect:';
	@override String get granted => 'Concedido';
	@override String get notGranted => 'No concedido';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$es caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$es._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$es nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$es._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$es nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$es._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$es extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nuestra historia';
	@override String content({required Object appLabel}) => '${appLabel} nació de una frustración simple: la mayoría de las apps de seguimiento de calorías son demasiado complicadas, requieren entradas manuales constantes, cobran suscripciones altas o comprometen la privacidad.\n\nComo desarrollador independiente, quería crear algo más simple y justo — una app que use AI para reducir el esfuerzo, que sea rápida y gratuita, y que trate tus datos de salud con respeto.\n\n${appLabel} es la app que desearía que existiera: sin cuentas, sin seguimiento, sin anuncios — solo insights claros y prácticos y tus metas de salud.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$es extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tu privacidad importa';
	@override String get description => 'La privacidad no es una idea secundaria — es un principio de diseño. Esto es lo que significa en la práctica:';
	@override String get noAccounts => 'Sin cuentas requeridas\nUsa la app de inmediato. Sin registros, sin identidades.';
	@override String noTracking({required Object appLabel}) => 'Sin seguimiento de comportamiento\n${appLabel} no monitorea tu actividad, no crea perfiles de uso ni te rastrea entre apps o sitios web.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Análisis y diagnósticos limitados\n${appLabel} usa eventos básicos de la aplicación y diagnósticos de fallos para mejorar la fiabilidad. Los valores de los registros de salud no se usan para publicidad ni se venden.';
	@override String noAds({required Object appLabel}) => 'Sin anuncios por diseño\n${appLabel} está construido para funcionar sin anuncios ni monetización basada en datos.';
	@override String get noDataSelling => 'Sin venta de datos\nTus datos de salud nunca se venden ni se comparten con terceros.';
	@override String get localStorage => 'Almacenamiento local primero\nTus datos permanecen en tu dispositivo.';
	@override String get privacyPolicy => 'Política de privacidad';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$es extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desarrollado por un desarrollador independiente';
	@override String description({required Object appLabel}) => '${appLabel} está creado y mantenido por un único desarrollador independiente enfocado en crear software de salud tranquilo y respetuoso con la privacidad.\n\nLos comentarios se leen personalmente y ayudan a dar forma a la dirección de la app.';
	@override String get website => 'Sitio web';
	@override String get email => 'Correo';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$es extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '¿Disfrutando ${appLabel}?';
	@override String description({required Object appLabel}) => 'Tu retroalimentación ayuda a hacer ${appLabel} mejor para todos.';
	@override String get rateApp => 'Valorar en Play Store';
	@override String get sendFeedback => 'Enviar retroalimentación';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$es extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tamaño de la porción';
	@override String get description => 'La precisión de las estimaciones depende en gran medida de tu evaluación correcta del tamaño de la porción.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$es extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Métodos de preparación';
	@override String description({required Object appLabel}) => 'Los métodos de cocción pueden alterar significativamente el contenido nutricional de los alimentos. Las estimaciones de ${appLabel} pueden no tener en cuenta siempre estas variaciones.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$es extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredientes';
	@override String get description => 'Platos complejos con muchos ingredientes ocultos pueden conducir a estimaciones menos precisas.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$es extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitaciones de la base de datos';
	@override String description({required Object appLabel}) => 'La base de datos de alimentos de ${appLabel} es extensa pero puede no incluir todos los alimentos o variaciones.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$es extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Precisión de las calorías';
	@override String get description => 'Esta estimación es tan precisa como tu registro de ingesta y gasto calórico. Un registro inexacto dará lugar a una proyección inexacta.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$es extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Factores biológicos';
	@override String description({required Object appLabel}) => 'La pérdida/ganancia de peso real está influenciada por metabolismo, hormonas, sueño, estrés, hidratación y otros factores individuales que ${appLabel} no puede medir.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$es extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Peso de agua y fluctuaciones';
	@override String get description => 'El peso diario normal puede fluctuar significativamente debido a retención de agua, digestión y horarios. La estimación no contempla estos cambios diarios.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$es extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientación profesional';
	@override String get description => 'No uses esta estimación para tomar decisiones médicas. Consulta siempre a un profesional de la salud o a un dietista registrado para consejos personalizados de manejo de peso.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$es extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'La tasa metabólica basal (BMR) es la cantidad de calorías que tu cuerpo quema en reposo para mantener funciones básicas como la respiración y la circulación. El BMR depende de tu edad, género, altura y peso. Un BMR más alto significa que tu cuerpo quema más calorías en reposo, a menudo debido a mayor masa muscular, menor edad o ser hombre. Un BMR más bajo suele indicar menos masa muscular, mayor edad o ser mujer.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$es extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'El gasto energético diario total (TDEE) es las calorías totales que quemas por día, incluyendo tu BMR más las calorías de la actividad física y el movimiento diario. El TDEE depende de tu BMR y nivel de actividad. Un TDEE más alto significa que quemas más calorías en general, generalmente por ser más activo o tener un BMR mayor. Un TDEE más bajo sugiere menos actividad diaria o un BMR más bajo.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$es extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Objetivo diario';
	@override String get description => 'El objetivo diario es tu ingesta calórica recomendada basada en tu TDEE y tu objetivo de peso. Para perder peso, consumes menos calorías que tu TDEE. Para mantener el peso, igualas tu TDEE. Para ganar peso, consumes más calorías que tu TDEE. Esto te ayuda a lograr el cambio de peso deseado a un ritmo saludable.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$es extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cómo se calcula la estimación';
	@override String get description => 'Calculamos tu TDEE (basado en tu perfil) y lo multiplicamos por la fracción del día transcurrida (horas + minutos) / 24 para estimar las calorías quemadas hasta ahora.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$es extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientación profesional';
	@override String get description => 'No uses esta estimación para tomar decisiones médicas. Consulta siempre a un profesional de la salud o a un dietista registrado para consejos personalizados de manejo de peso.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$es extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leer calorías totales quemadas';
	@override String get description => 'Permite a la app leer tus calorías totales quemadas desde Health Connect.';
	@override String get usage => 'Este permiso se utiliza para mostrar tu quema de calorías diaria en la app, ayudándote a entender tu gasto energético total durante el día.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$es extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$es._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leer datos de nutrición';
	@override String get description => 'Permite a la app leer datos de nutrición desde Health Connect.';
	@override String get usage => 'Este permiso permite que la app lea información nutricional que otros apps conectados a Health Connect hayan registrado, proporcionando una vista completa de tu nutrición.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$es extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$es._(TranslationsEs root) : this._root = root, super.internal(root);

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
			'onboarding.height.imperial' => 'Sistema imperial',
			'onboarding.height.next' => 'Siguiente',
			'onboarding.weight.currentTitle' => '¿Cuál es tu peso actual?',
			'onboarding.weight.currentDescription' => 'Tu peso actual es esencial para personalizar tus metas diarias.',
			'onboarding.weight.targetTitle' => '¿Cuál es tu peso objetivo?',
			'onboarding.weight.targetDescription' => 'Establecer un peso objetivo nos ayuda a determinar tu plan a largo plazo.',
			'onboarding.weight.metric' => 'Métrico',
			'onboarding.weight.imperial' => 'Sistema imperial',
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
			'onboarding.healthConnect.overviewDescription' => 'Usa las calorías quemadas en tu objetivo diario y, si quieres, comparte las comidas registradas con Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Seguimiento automático de calorías',
			'onboarding.healthConnect.automaticTracking.description' => 'Registra las calorías quemadas desde tus apps de fitness',
			'onboarding.healthConnect.caloriesBurned.title' => 'Calorías quemadas',
			'onboarding.healthConnect.caloriesBurned.description' => 'Lee el total de calorías quemadas hoy desde Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Insights de progreso',
			'onboarding.healthConnect.progressInsights.description' => 'Obtén insights detallados sobre tus tendencias de salud',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Compartir comidas registradas',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Guarda en Health Connect las comidas que registras en Calorify',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integración sin complicaciones',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sincroniza datos desde tus apps de salud favoritas',
			'onboarding.healthConnect.userControl.title' => 'Tú tienes el control',
			'onboarding.healthConnect.userControl.description' => 'Elige cualquiera de los permisos y cambia el acceso cuando quieras',
			'onboarding.healthConnect.connected' => 'Health Connect conectado',
			'onboarding.healthConnect.notConnected' => 'Health Connect no conectado',
			'onboarding.healthConnect.setup' => 'Configurar Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Saltar por ahora',
			'onboarding.healthConnect.statusConnected' => 'Health Connect está conectado.',
			'onboarding.healthConnect.statusSuccess' => '¡Health Connect se ha conectado correctamente!',
			'onboarding.healthConnect.statusNotConnected' => 'Elige las funciones de Health Connect que quieres activar.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect está conectado parcialmente. Activa el permiso restante para usar ambas funciones.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Instala o actualiza Health Connect para continuar.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect no es compatible con este dispositivo.',
			'onboarding.healthConnect.installOrUpdate' => 'Instalar o actualizar',
			'onboarding.healthConnect.manageAccess' => 'Administrar acceso',
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
			'home.dailyGoal.kcal' => 'kilocalorías',
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
			'home.connectHealth.dataUseDescription' => 'Usa las calorías quemadas en tu objetivo y comparte las comidas registradas',
			'home.connectHealth.installOrUpdate' => 'Instalar o actualizar',
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
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '«${text}»',
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
			'healthScore.neutral' => 'Equilibrado',
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
			'editProfile.imperial' => 'Sistema imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lb',
			'editProfile.metricCm' => 'Métrico (cm)',
			'editProfile.imperialFtIn' => 'Sistema imperial (pies/pulg)',
			'editProfile.metricKg' => 'Métrico (kg)',
			'editProfile.imperialLbs' => 'Sistema imperial (lb)',
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
			'settings.sections.healthConnect' => 'CONEXIÓN CON HEALTH CONNECT',
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
			'settings.clearAllData.localOnlySubtitle' => 'Eliminar los datos de Calorify guardados en este dispositivo',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Esto elimina permanentemente de este dispositivo las comidas registradas, los favoritos y los ajustes del perfil. Las comidas ya compartidas con Health Connect y el acceso a Health Connect se administran por separado en Ajustes > Health Connect.',
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
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect no es compatible con este dispositivo.',
			'settings.healthConnect.unavailable.title' => 'Health Connect no disponible',
			'settings.healthConnect.unavailable.description' => 'Health Connect no está disponible en este dispositivo. Por favor, instala Health Connect desde Play Store (Android 9+) o actualiza a Android 14+.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect requiere atención',
			'settings.healthConnect.updateRequired.description' => 'Instala o actualiza Health Connect antes de administrar el acceso.',
			'settings.healthConnect.updateRequired.action' => 'Instalar o actualizar',
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
			'settings.healthConnect.disconnect' => 'Desconectar Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => '¿Desconectar Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify perderá el acceso a Health Connect. Los datos que ya estén guardados allí no se eliminarán.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Desconectar',
			'settings.healthConnect.deleteSyncedMeals' => 'Eliminar las comidas de Calorify de Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => '¿Eliminar las comidas sincronizadas?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => '¿Quieres eliminar de Health Connect las comidas sincronizadas por esta versión de Calorify? Tu registro local de comidas no cambiará. Es posible que las entradas anteriores de Calorify aún deban eliminarse mediante Administrar datos en Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Eliminar comidas sincronizadas',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Las comidas de Calorify se eliminaron de Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'No se pudieron eliminar las comidas sincronizadas. Inténtalo de nuevo.',
			'settings.healthConnect.connectionPartial' => 'Algunas funciones de Health Connect están activadas.',
			'settings.healthConnect.connectionComplete' => 'Las dos funciones de Health Connect están activadas.',
			'settings.healthConnect.actionFailed' => 'No se pudo abrir Health Connect. Inténtalo de nuevo.',
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
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Análisis y diagnósticos limitados\n${appLabel} usa eventos básicos de la aplicación y diagnósticos de fallos para mejorar la fiabilidad. Los valores de los registros de salud no se usan para publicidad ni se venden.',
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
			'settings.appInfo.version' => ({required Object version}) => 'Calorify versión ${version}',
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
			_ => null,
		} ?? switch (path) {
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
