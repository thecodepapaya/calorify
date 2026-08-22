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
class TranslationsPt extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsPt _root = this; // ignore: unused_field

	@override 
	TranslationsPt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPt(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Português (Portugal)';
	@override String get flag => '🇵🇹';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsPt errors = _TranslationsErrorsPt._(_root);
	@override late final _TranslationsOnboardingPt onboarding = _TranslationsOnboardingPt._(_root);
	@override late final _TranslationsTabsPt tabs = _TranslationsTabsPt._(_root);
	@override late final _TranslationsHomePt home = _TranslationsHomePt._(_root);
	@override late final _TranslationsHistoryPt history = _TranslationsHistoryPt._(_root);
	@override late final _TranslationsMealPt meal = _TranslationsMealPt._(_root);
	@override late final _TranslationsFavoritesPt favorites = _TranslationsFavoritesPt._(_root);
	@override late final _TranslationsProfilePt profile = _TranslationsProfilePt._(_root);
	@override late final _TranslationsHealthScorePt healthScore = _TranslationsHealthScorePt._(_root);
	@override late final _TranslationsEditProfilePt editProfile = _TranslationsEditProfilePt._(_root);
	@override late final _TranslationsSettingsPt settings = _TranslationsSettingsPt._(_root);
	@override late final _TranslationsRemindersPt reminders = _TranslationsRemindersPt._(_root);
	@override late final _TranslationsNotificationsPt notifications = _TranslationsNotificationsPt._(_root);
	@override late final _TranslationsLoginPt login = _TranslationsLoginPt._(_root);
	@override late final _TranslationsDisclaimerPt disclaimer = _TranslationsDisclaimerPt._(_root);
	@override late final _TranslationsLocalNutritionPhase4Pt localNutritionPhase4 = _TranslationsLocalNutritionPhase4Pt._(_root);
	@override late final _TranslationsCommonPt common = _TranslationsCommonPt._(_root);
	@override late final _TranslationsFeedbackRatingPt feedbackRating = _TranslationsFeedbackRatingPt._(_root);
	@override late final _TranslationsHealthPt health = _TranslationsHealthPt._(_root);
}

// Path: errors
class _TranslationsErrorsPt extends TranslationsErrorsEn {
	_TranslationsErrorsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Fez demasiados pedidos. Por favor, espere um momento antes de tentar novamente.';
	@override String get networkError => 'Erro de rede. Verifique a sua ligação à Internet.';
	@override String get unknownError => 'Algo correu mal. Por favor, tente novamente mais tarde.';
	@override String get loadingProfileData => 'Erro ao carregar os dados do perfil';
	@override String get somethingWentWrong => 'Algo correu mal.';
	@override String get retry => 'Tentar novamente';
}

// Path: onboarding
class _TranslationsOnboardingPt extends TranslationsOnboardingEn {
	_TranslationsOnboardingPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bem-vindo ao ${appLabel}';
	@override String get subtitle => 'O seu companheiro pessoal de nutrição potenciado por AI';
	@override String get getStarted => 'Começar';
	@override late final _TranslationsOnboardingFeaturesPt features = _TranslationsOnboardingFeaturesPt._(_root);
	@override late final _TranslationsOnboardingGenderPt gender = _TranslationsOnboardingGenderPt._(_root);
	@override late final _TranslationsOnboardingHeightPt height = _TranslationsOnboardingHeightPt._(_root);
	@override late final _TranslationsOnboardingWeightPt weight = _TranslationsOnboardingWeightPt._(_root);
	@override late final _TranslationsOnboardingAgePt age = _TranslationsOnboardingAgePt._(_root);
	@override late final _TranslationsOnboardingBmiScalePt bmiScale = _TranslationsOnboardingBmiScalePt._(_root);
	@override late final _TranslationsOnboardingWeightGoalPt weightGoal = _TranslationsOnboardingWeightGoalPt._(_root);
	@override late final _TranslationsOnboardingActivityLevelPt activityLevel = _TranslationsOnboardingActivityLevelPt._(_root);
	@override late final _TranslationsOnboardingHealthConnectPt healthConnect = _TranslationsOnboardingHealthConnectPt._(_root);
	@override late final _TranslationsOnboardingReinforcementPt reinforcement = _TranslationsOnboardingReinforcementPt._(_root);
}

// Path: tabs
class _TranslationsTabsPt extends TranslationsTabsEn {
	_TranslationsTabsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Painel';
	@override String get history => 'Histórico';
}

// Path: home
class _TranslationsHomePt extends TranslationsHomeEn {
	_TranslationsHomePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryPt aiSummary = _TranslationsHomeAiSummaryPt._(_root);
	@override late final _TranslationsHomeDailyGoalPt dailyGoal = _TranslationsHomeDailyGoalPt._(_root);
	@override late final _TranslationsHomeDailySummaryPt dailySummary = _TranslationsHomeDailySummaryPt._(_root);
	@override late final _TranslationsHomeIntakeProgressPt intakeProgress = _TranslationsHomeIntakeProgressPt._(_root);
	@override late final _TranslationsHomeIntakeHistoryPt intakeHistory = _TranslationsHomeIntakeHistoryPt._(_root);
	@override late final _TranslationsHomeMealLogPt mealLog = _TranslationsHomeMealLogPt._(_root);
	@override late final _TranslationsHomeMealDescriptionPt mealDescription = _TranslationsHomeMealDescriptionPt._(_root);
	@override late final _TranslationsHomeFavoriteMealsPt favoriteMeals = _TranslationsHomeFavoriteMealsPt._(_root);
	@override late final _TranslationsHomeMealSnapPt mealSnap = _TranslationsHomeMealSnapPt._(_root);
	@override late final _TranslationsHomeConnectHealthPt connectHealth = _TranslationsHomeConnectHealthPt._(_root);
}

// Path: history
class _TranslationsHistoryPt extends TranslationsHistoryEn {
	_TranslationsHistoryPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Nenhuma refeição registada';
	@override String get emptyMessage => 'Tire uma foto da sua última refeição para registar aqui.';
	@override String get today => 'Hoje';
	@override String get yesterday => 'Ontem';
}

// Path: meal
class _TranslationsMealPt extends TranslationsMealEn {
	_TranslationsMealPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Oh não!';
	@override String get delete => 'Eliminar';
	@override String get editMeal => 'Editar refeição';
	@override String get addMeal => 'Adicionar refeição';
	@override String get saveMeal => 'Guardar refeição';
	@override String get save => 'Guardar';
	@override String get mealName => 'Nome da refeição';
	@override String get mealNameHint => 'ex.: Ovos mexidos com torrada';
	@override String get nameRequired => 'Introduza um nome para a refeição antes de guardar.';
	@override String get mealQuantity => 'Quantidade da refeição';
	@override String get mealQuantityHint => 'ex.: 1 taça, 2 fatias';
	@override String get timeOfMeal => 'Hora da refeição';
	@override String get timeOfMealHint => 'Selecione a hora em que comeu a refeição';
	@override String get mealType => 'Tipo de refeição';
	@override late final _TranslationsMealNutritionPt nutrition = _TranslationsMealNutritionPt._(_root);
	@override late final _TranslationsMealDeleteConfirmationPt deleteConfirmation = _TranslationsMealDeleteConfirmationPt._(_root);
	@override String get addedToLog => 'Refeição adicionada ao seu registo!';
	@override String couldNotAdd({required Object error}) => 'Não foi possível adicionar a refeição: ${error}';
	@override String get savedSuccessfully => 'Refeição adicionada com sucesso!';
	@override String get updatedSuccessfully => 'Refeição atualizada com sucesso!';
	@override String errorSaving({required Object error}) => 'Erro ao guardar a refeição: ${error}';
	@override String get removedFromFavorites => 'Removido dos favoritos!';
	@override String get savedAsFavorite => 'Refeição guardada como favorita!';
	@override String get unfavorite => 'Remover dos favoritos';
	@override String couldNotUpdateFavorite({required Object error}) => 'Não foi possível atualizar o favorito: ${error}';
	@override String get feedbackThanks => 'Obrigado pelo feedback!';
	@override String get reanalysisUpdated => 'Análise da refeição atualizada com base no seu feedback.';
	@override String failedToProcess({required Object error}) => 'Falha ao processar: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Falha ao processar imagem: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Erro ao comprimir a imagem: ${error}';
	@override String get failedToSave => 'Falha ao guardar os dados. Por favor, tente novamente.';
	@override String get skip => 'Ignorar';
	@override late final _TranslationsMealQuestionFlowPt questionFlow = _TranslationsMealQuestionFlowPt._(_root);
	@override late final _TranslationsMealAnalysisPt analysis = _TranslationsMealAnalysisPt._(_root);
	@override late final _TranslationsMealLocalInferencePt localInference = _TranslationsMealLocalInferencePt._(_root);
	@override late final _TranslationsMealFeedbackPt feedback = _TranslationsMealFeedbackPt._(_root);
}

// Path: favorites
class _TranslationsFavoritesPt extends TranslationsFavoritesEn {
	_TranslationsFavoritesPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritos';
	@override String get empty => 'Ainda sem refeições favoritas.';
	@override String get searchPlaceholder => 'Pesquisar refeições favoritas';
	@override String get searchEmptyTitle => 'Nenhum favorito corresponde à pesquisa';
	@override String get searchEmptySubtitle => 'Tente outro nome de refeição, quantidade ou tipo de refeição.';
	@override String get sortLabel => 'Ordenar favoritos';
	@override String get undo => 'Anular';
	@override String removed({required Object name}) => 'Removido ${name} dos favoritos';
	@override late final _TranslationsFavoritesSortOptionsPt sortOptions = _TranslationsFavoritesSortOptionsPt._(_root);
}

// Path: profile
class _TranslationsProfilePt extends TranslationsProfileEn {
	_TranslationsProfilePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get noProfileData => 'Nenhum dado de perfil encontrado';
	@override String get yourProfile => 'O seu perfil';
	@override String get viewAndManage => 'Ver e gerir a sua informação de saúde';
	@override late final _TranslationsProfileSectionsPt sections = _TranslationsProfileSectionsPt._(_root);
	@override String get gender => 'Género';
	@override String get height => 'Altura';
	@override String get weight => 'Peso';
	@override String get age => 'Idade';
	@override String get weightGoal => 'Objetivo de peso';
	@override String get targetWeight => 'Peso alvo';
	@override String get activityLevel => 'Nível de atividade';
	@override String get healthMetrics => 'Métricas de saúde';
	@override String get notSet => 'Por definir';
	@override String get years => 'anos';
	@override String get updatedSuccessfully => 'Perfil atualizado com sucesso!';
	@override late final _TranslationsProfileCalculatedValuesPt calculatedValues = _TranslationsProfileCalculatedValuesPt._(_root);
}

// Path: healthScore
class _TranslationsHealthScorePt extends TranslationsHealthScoreEn {
	_TranslationsHealthScorePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pontuação de saúde';
	@override String get whyThisScore => 'Porquê esta pontuação?';
	@override String get note => 'Esta pontuação é uma estimativa por AI baseada nos ingredientes identificados e na densidade nutricional. Consulte sempre um profissional para aconselhamento dietético.';
	@override String get unhealthy => 'Não saudável';
	@override String get healthy => 'Saudável';
	@override String get neutral => 'Neutro';
}

// Path: editProfile
class _TranslationsEditProfilePt extends TranslationsEditProfileEn {
	_TranslationsEditProfilePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar perfil';
	@override late final _TranslationsEditProfileSectionsPt sections = _TranslationsEditProfileSectionsPt._(_root);
	@override String get gender => 'Género';
	@override String get dateOfBirth => 'Data de nascimento';
	@override String get height => 'Altura';
	@override String get weight => 'Peso';
	@override String get weightGoal => 'Objetivo de peso';
	@override String get activityLevel => 'Nível de atividade';
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
	@override late final _TranslationsEditProfileGendersPt genders = _TranslationsEditProfileGendersPt._(_root);
	@override late final _TranslationsEditProfileWeightGoalsPt weightGoals = _TranslationsEditProfileWeightGoalsPt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsPt activityLevels = _TranslationsEditProfileActivityLevelsPt._(_root);
}

// Path: settings
class _TranslationsSettingsPt extends TranslationsSettingsEn {
	_TranslationsSettingsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Definições';
	@override late final _TranslationsSettingsSectionsPt sections = _TranslationsSettingsSectionsPt._(_root);
	@override late final _TranslationsSettingsEditProfilePt editProfile = _TranslationsSettingsEditProfilePt._(_root);
	@override late final _TranslationsSettingsLanguagePt language = _TranslationsSettingsLanguagePt._(_root);
	@override late final _TranslationsSettingsHeightUnitPt heightUnit = _TranslationsSettingsHeightUnitPt._(_root);
	@override late final _TranslationsSettingsWeightUnitPt weightUnit = _TranslationsSettingsWeightUnitPt._(_root);
	@override late final _TranslationsSettingsMealRemindersPt mealReminders = _TranslationsSettingsMealRemindersPt._(_root);
	@override late final _TranslationsSettingsLocalInferencePt localInference = _TranslationsSettingsLocalInferencePt._(_root);
	@override late final _TranslationsSettingsThemePt theme = _TranslationsSettingsThemePt._(_root);
	@override late final _TranslationsSettingsSendFeedbackPt sendFeedback = _TranslationsSettingsSendFeedbackPt._(_root);
	@override late final _TranslationsSettingsExportMealHistoryPt exportMealHistory = _TranslationsSettingsExportMealHistoryPt._(_root);
	@override late final _TranslationsSettingsClearAllDataPt clearAllData = _TranslationsSettingsClearAllDataPt._(_root);
	@override late final _TranslationsSettingsDebugOptionsPt debugOptions = _TranslationsSettingsDebugOptionsPt._(_root);
	@override String get developerModeEnabled => 'Modo de desenvolvedor ativado!';
	@override late final _TranslationsSettingsHealthConnectPt healthConnect = _TranslationsSettingsHealthConnectPt._(_root);
	@override late final _TranslationsSettingsAboutPt about = _TranslationsSettingsAboutPt._(_root);
	@override late final _TranslationsSettingsAppInfoPt appInfo = _TranslationsSettingsAppInfoPt._(_root);
}

// Path: reminders
class _TranslationsRemindersPt extends TranslationsRemindersEn {
	_TranslationsRemindersPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mantenha-se no caminho com lembretes';
	@override String get description => 'Receba lembretes suaves para registar as suas refeições e manter a consistência nos seus objetivos nutricionais';
	@override String get notificationsEnabled => 'Notificações ativadas';
	@override String get notificationsDisabled => 'Notificações desativadas';
	@override String get enabledSubtitle => 'Receberá lembretes de refeições';
	@override String get disabledSubtitle => 'Ative as notificações para receber lembretes de refeições';
	@override String get mealReminders => 'Lembretes de refeições';
	@override String get breakfast => 'Pequeno-almoço';
	@override String get lunch => 'Almoço';
	@override String get dinner => 'Jantar';
	@override String get snack => 'Lanche';
	@override String get unknown => 'Desconhecido';
	@override String get change => 'Alterar';
	@override String get enableNotifications => 'Ativar notificações';
	@override String get skipForNow => 'Ignorar por agora';
	@override String get saveChanges => 'Guardar alterações';
	@override String get enabledSuccessfully => 'Notificações ativadas com sucesso!';
	@override String get permissionDenied => 'Permissão para notificações negada';
	@override String errorEnabling({required Object error}) => 'Erro ao ativar notificações: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Erro ao concluir a configuração: ${error}';
}

// Path: notifications
class _TranslationsNotificationsPt extends TranslationsNotificationsEn {
	_TranslationsNotificationsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastPt breakfast = _TranslationsNotificationsBreakfastPt._(_root);
	@override late final _TranslationsNotificationsLunchPt lunch = _TranslationsNotificationsLunchPt._(_root);
	@override late final _TranslationsNotificationsDinnerPt dinner = _TranslationsNotificationsDinnerPt._(_root);
	@override late final _TranslationsNotificationsSnackPt snack = _TranslationsNotificationsSnackPt._(_root);
	@override late final _TranslationsNotificationsTestPt test = _TranslationsNotificationsTestPt._(_root);
}

// Path: login
class _TranslationsLoginPt extends TranslationsLoginEn {
	_TranslationsLoginPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iniciar sessão';
	@override String get signInWithGoogle => 'Iniciar sessão com Google';
	@override String get signInFailed => 'O início de sessão com Google falhou ou foi cancelado.';
}

// Path: disclaimer
class _TranslationsDisclaimerPt extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Tenha em atenção';
	@override late final _TranslationsDisclaimerSnapPt snap = _TranslationsDisclaimerSnapPt._(_root);
	@override late final _TranslationsDisclaimerWeightEstimatePt weightEstimate = _TranslationsDisclaimerWeightEstimatePt._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsPt healthMetrics = _TranslationsDisclaimerHealthMetricsPt._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditurePt calorieExpenditure = _TranslationsDisclaimerCalorieExpenditurePt._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Pt extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'Nutrition matched from the downloaded USDA pack';
	@override String get nutritionCached => 'Nutrition matched from the on-device USDA cache';
	@override String get nutritionMixed => 'Nutrition combined from downloaded, cached, and remote USDA rows';
	@override String get calculationLocal => 'Calories and macros calculated on this device';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: downloaded USDA pack';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: on-device USDA cache';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: USDA row fetched through Calorify';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: deterministic nutrition constant';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · dataset ${datasetVersion}';
	@override String get portionSmaller => 'Smaller';
	@override String get portionEstimated => 'Estimated';
	@override String get portionLarger => 'Larger';
	@override String portionQuestion({required Object ingredient}) => 'Which portion was closest for ${ingredient}?';
	@override String get mealTypeQuestion => 'Which meal was this?';
	@override String get localNutritionTip => 'Calculated from verified local nutrition data.';
	@override String get offlineNutritionTitle => 'Download nutrition data';
	@override String get offlineNutritionSubtitle => 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.';
	@override String get offlineNutritionUnavailable => 'Local nutrition data is not available for this app release.';
	@override String get offlineNutritionNotDownloaded => 'No verified nutrition pack is downloaded.';
	@override String get offlineNutritionInstalling => 'Downloading and verifying nutrition data…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Pack ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} cached USDA rows · ${size}';
	@override String get offlineNutritionUpdate => 'Check for update';
	@override String get offlineNutritionClear => 'Clear local nutrition data';
	@override String get offlineNutritionClearTitle => 'Clear local nutrition data?';
	@override String get offlineNutritionClearBody => 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.';
	@override String get offlineNutritionClearConfirm => 'Clear data';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Could not download and verify local nutrition data: ${error}';
	@override String get offlineNutritionCleared => 'Local nutrition data cleared';
}

// Path: common
class _TranslationsCommonPt extends TranslationsCommonEn {
	_TranslationsCommonPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get close => 'Fechar';
	@override String get kContinue => 'Continuar';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingPt extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Está a gostar de ${appLabel}?';
	@override String get yes => 'Sim, estou a gostar';
	@override String get no => 'Não muito';
	@override String get rateStepHeading => 'Avaliar na Play Store';
	@override String get emailStepHeading => 'Enviar feedback por email';
	@override String soloDevMessage({required Object appLabel}) => 'Uma avaliação rápida ajuda outras pessoas a encontrar o ${appLabel} e mantém o desenvolvimento em andamento. Pode deixar uma avaliação rápida?';
	@override String get shareFeedbackViaEmail => 'O seu feedback molda o que vem a seguir — lemos todas as mensagens. Gostaria de partilhar os seus pensamentos por email?';
	@override String get rateCta => 'Avaliar na Play Store';
	@override String get maybeLater => 'Talvez mais tarde';
	@override String get sendFeedback => 'Enviar feedback';
	@override String get noThanks => 'Não, obrigado';
	@override String get aboutUsDescription => 'Feito com cuidado por uma pequena equipa. Estamos focados na privacidade, simplicidade e em ajudar a criar melhores hábitos alimentares.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Curioso sobre quem está por trás do ${appLabel}? Veja ';
	@override String get aboutUsLinkLabel => 'Sobre nós';
	@override String get thankYouMessage => 'Obrigado! Voltaremos a perguntar mais tarde.';
}

// Path: health
class _TranslationsHealthPt extends TranslationsHealthEn {
	_TranslationsHealthPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Não foi possível sincronizar com o Health Connect';
	@override String get mealSynced => 'Refeição sincronizada com o Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesPt extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionPt foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionPt._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisPt aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisPt._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationPt healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationPt._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderPt extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual é o seu género?';
	@override String get description => 'O género ajuda-nos a calcular com precisão a sua taxa metabólica basal (BMR).';
	@override String get next => 'Seguinte';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightPt extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual é a sua altura?';
	@override String get description => 'A sua altura ajuda-nos a calcular o seu BMI e necessidades energéticas com precisão.';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Imperial';
	@override String get next => 'Seguinte';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightPt extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Qual é o seu peso atual?';
	@override String get currentDescription => 'O seu peso atual é essencial para personalizar os seus objetivos diários.';
	@override String get targetTitle => 'Qual é o seu peso objetivo?';
	@override String get targetDescription => 'Definir um peso objetivo ajuda-nos a determinar o seu plano a longo prazo.';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Imperial';
	@override String get next => 'Seguinte';
}

// Path: onboarding.age
class _TranslationsOnboardingAgePt extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quando é o seu aniversário?';
	@override String get description => 'A sua idade ajuda-nos a calcular com precisão as suas necessidades calóricas.';
	@override String get next => 'Seguinte';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScalePt extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScalePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Abaixo';
	@override String get healthy => 'Saudável';
	@override String get overweight => 'Acima';
	@override String get obese => 'Obeso';
	@override late final _TranslationsOnboardingBmiScaleCategoriesPt categories = _TranslationsOnboardingBmiScaleCategoriesPt._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesPt messages = _TranslationsOnboardingBmiScaleMessagesPt._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalPt extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual é o seu objetivo?';
	@override String get description => 'Escolha o objetivo que melhor descreve o que pretende alcançar';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelPt extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quão ativo é?';
	@override String get description => 'Isto ajuda-nos a calcular as suas necessidades calóricas diárias com mais precisão';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectPt extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ligar ao Health Connect';
	@override String get description => 'Utilize as calorias queimadas no seu objetivo diário e, opcionalmente, partilhe refeições registadas com o Health Connect.';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingPt automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingPt._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsPt progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsPt._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationPt seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationPt._(_root);
	@override String get connected => 'Health Connect ligado';
	@override String get notConnected => 'Health Connect não ligado';
	@override String get setup => 'Configurar o Health Connect';
	@override String get skipForNow => 'Ignorar por agora';
	@override String get statusConnected => 'Health Connect está ligado.';
	@override String get statusSuccess => 'O Health Connect foi ligado com sucesso!';
	@override String get statusNotConnected => 'Escolha as funcionalidades do Health Connect que pretende ativar.';
	@override String get statusPartial => 'O Health Connect está parcialmente ligado. Ative a permissão restante para utilizar ambas as funcionalidades.';
	@override String get statusProviderUpdateRequired => 'Instale ou atualize o Health Connect para continuar.';
	@override String get statusUnavailable => 'O Health Connect não é suportado neste dispositivo.';
	@override String get installOrUpdate => 'Instalar ou atualizar';
	@override String get manageAccess => 'Gerir acesso';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permissão negada. Por favor, ative as permissões do Health Connect nas definições do seu telemóvel para ${appLabel}.';
	@override String statusError({required Object error}) => 'Erro ao configurar o Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementPt extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessPt trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessPt._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfilePt healthProfile = _TranslationsOnboardingReinforcementHealthProfilePt._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestylePt goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestylePt._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryPt extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O seu resumo AI';
	@override String get logMore => 'Registe mais refeições durante os próximos dias para obter os seus insights AI personalizados.';
	@override String get loading => 'A carregar o seu resumo...';
	@override String mealCount({required Object count}) => '${count} refeições registadas';
	@override String macroBalanceScore({required Object score}) => 'Pontuação de equilíbrio ${score}';
	@override String get topFoods => 'Alimentos principais';
	@override String get trendUp => 'Calorias a subir';
	@override String get trendDown => 'Calorias a descer';
	@override String get trendSteady => 'Calorias estáveis';
	@override String generatedAt({required Object time}) => 'Atualizado ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalPt extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Defina o seu objetivo diário';
	@override String get titleSet => 'O seu objetivo diário';
	@override String get description => 'Pronto para iniciar a sua jornada de bem‑estar? Defina abaixo o seu objetivo diário de calorias para começar a progredir.';
	@override String get descriptionSet => 'A sua bússola está definida! Este é o seu objetivo diário de calorias para o orientar.';
	@override String get yourGoal => 'O seu objetivo';
	@override String get goal => 'Objetivo';
	@override String get dailyCalories => 'Calorias diárias (kcal)';
	@override String get setGoal => 'Definir objetivo';
	@override String get intake => 'Ingestão';
	@override String get burned => 'Queimadas';
	@override String get weightImpact => 'Impacto no peso';
	@override String get estLoss => 'Perda estimada de';
	@override String get estGain => 'Ganho estimado de';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryPt extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Resumo diário';
	@override String get calories => 'Calorias';
	@override String get carbs => 'Hidratos de carbono';
	@override String get protein => 'Proteína';
	@override String get fat => 'Gordura';
	@override String get fiber => 'Fibra';
	@override String get grams => 'gramas';
	@override String get chartAccessibilityLabel => 'Gráfico de macronutrientes';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressPt extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Distribuição de macronutrientes de hoje';
	@override String get target => 'Meta';
	@override String get current => 'Atual';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryPt extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Histórico de macronutrientes (7 dias)';
	@override String get trendTitle => 'Tendência de hoje';
	@override String peakHour({required Object hour}) => 'Pico: ${hour}:00';
	@override String get noHistoryYet => 'Sem histórico ainda';
	@override String get startLogging => 'Comece a registar refeições para ver aqui as suas\ntendências de macronutrientes nos últimos 7 dias';
}

// Path: home.mealLog
class _TranslationsHomeMealLogPt extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Refeições registadas';
	@override String get emptyMessage => 'Tire uma foto da sua última refeição para registar aqui.';
	@override String get noMealsToday => 'Nenhuma refeição registada hoje';
	@override String get seeAllMeals => 'Ver todas as refeições';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionPt extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adição rápida com AI';
	@override String get description => 'Descreva a sua refeição e deixe que a AI trate dos detalhes.';
	@override String get hint => 'ex.: No pequeno‑almoço comi uma taça grande de papas de aveia com uma banana às rodelas e uma dose de whey ...';
	@override String get analyzeMeal => 'Analisar refeição';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsPt extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Refeições favoritas';
	@override String get description => 'Adicione rapidamente uma das suas refeições favoritas.';
	@override String get noFavorites => 'Ainda não há refeições favoritas.';
	@override String get addFavoriteHint => 'Clique na estrela numa refeição para a marcar como favorita.';
	@override String get seeAll => 'Ver tudo';
	@override String get add => 'Adicionar';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapPt extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fotografe e registe a sua refeição';
	@override String get description => 'Use a câmara para tirar uma foto da sua comida para análise por AI.';
	@override String get openCamera => 'Abrir câmara';
	@override String get gallery => 'Galeria';
	@override String get compressingPhoto => 'A otimizar foto…';
	@override String get uploadingPhoto => 'A enviar foto…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthPt extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizar com Health Connect';
	@override String get description => 'Utilize as calorias queimadas no seu objetivo e partilhe refeições registadas';
	@override String get install => 'Instalar ou atualizar';
	@override String get connect => 'Ligar';
}

// Path: meal.nutrition
class _TranslationsMealNutritionPt extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorias';
	@override String get carbs => 'Hidratos de carbono (g)';
	@override String get protein => 'Proteína (g)';
	@override String get fat => 'Gordura (g)';
	@override String get fiber => 'Fibra (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationPt extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eliminar refeição';
	@override String get message => 'Tem a certeza de que pretende eliminar este registo de refeição?';
	@override String get cancel => 'Cancelar';
	@override String get delete => 'Eliminar';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowPt extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Pergunta ${current} de ${total}';
	@override String get noQuestionsAvailable => 'Nenhuma pergunta disponível';
	@override String get next => 'Seguinte';
	@override String get continueLabel => 'Continuar';
}

// Path: meal.analysis
class _TranslationsMealAnalysisPt extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'A analisar a sua refeição';
	@override String get stepStarted => 'A começar…';
	@override String get stepDecomposition => 'A compreender a sua refeição…';
	@override String get stepIngredients => 'A associar ingredientes aos dados nutricionais…';
	@override String get stepUncertainty => 'A verificar a confiança…';
	@override String get stepMealTypeQuestion => 'Quase lá…';
	@override String get stepResult => 'A finalizar o resultado…';
	@override String get stepError => 'Algo correu mal';
	@override String get stepDefault => 'A analisar a sua refeição…';
	@override String get progressUnderstand => 'A compreender a sua refeição';
	@override String get progressMatch => 'A procurar a nutrição dos ingredientes';
	@override String get progressCheck => 'A verificar porções e confiança';
	@override String get progressMealType => 'A escolher o tipo de refeição';
	@override String get progressFinish => 'A calcular calorias e macronutrientes';
	@override String get detectedIngredientHeading => 'Ingredientes detetados';
	@override String ingredientsOverflow({required Object count}) => '${count} mais';
	@override String ingredientsLine({required Object count}) => '${count} ingredientes detetados';
	@override String get ingredientsPending => 'A detetar ingredientes…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Dica: Consistência vence a perfeição — registos regulares revelam os padrões que importam.';
	@override String get offlineTip1 => 'Dica: Para fotografias, luz natural e uma vista de cima ajudam na precisão das porções.';
	@override String get offlineTip2 => 'Dica: Indique bebidas, molhos e óleo de cozinha — adicionam calorias que frequentemente se esquecem.';
	@override String get offlineTip3 => 'Dica: Uma nota rápida da porção (1 taça, café grande) torna as estimativas muito mais precisas.';
	@override String get offlineTip4 => 'Dica: Registar depois da refeição também cria o hábito; a perfeição é opcional.';
	@override String get offlineTip5 => 'Dica: Indique como foi cozinhado quando altera muito as calorias (frito vs assado).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferencePt extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferencePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Rever ingredientes detetados';
	@override String get reviewSubtitle => 'Isto foi interpretado no seu dispositivo. Corrija os nomes ou as porções antes de a nutrição ser calculada.';
	@override String get mealName => 'Nome da refeição';
	@override String get ingredient => 'Ingrediente';
	@override String get grams => 'Gramas estimadas';
	@override String get removeIngredient => 'Remover ingrediente';
	@override String get continueLabel => 'Continuar';
	@override String get invalidProposal => 'Adicione pelo menos um ingrediente e utilize uma quantidade de gramas positiva.';
	@override String get localUnavailable => 'A análise no dispositivo não está disponível de momento.';
	@override String get calculationDetails => 'Como isto foi calculado';
	@override String get interpretationLocal => 'Ingredientes interpretados neste dispositivo';
	@override String get interpretationCloud => 'Ingredientes interpretados na nuvem';
	@override String get interpretationManual => 'Ingredientes revistos ou editados por si';
	@override String get nutritionRemote => 'Nutrição obtida do USDA através do Calorify';
	@override String get nutritionFallback => 'Alguns valores nutricionais foram estimados remotamente';
	@override String get calculationServer => 'Calorias e macros calculadas pelo Calorify';
	@override String get fallbackUsed => 'A análise local recorreu ao processamento na nuvem';
	@override String get noRawContent => 'Os recibos de diagnóstico não incluem o texto ou a foto da sua refeição.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackPt extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O que está errado?';
	@override String get subtitle => 'Ajude-nos a melhorar a análise selecionando um ou mais problemas.';
	@override String get tellUsMore => 'Diga-nos mais';
	@override String get describeIncorrect => 'Descreva o que estava incorreto';
	@override String get submit => 'Enviar';
	@override String get issueFoodIdentification => 'Identificação do alimento';
	@override String get issuePortionSize => 'Tamanho da porção';
	@override String get issueCalorieDistribution => 'Distribuição de calorias';
	@override String get issueMacrosWrong => 'Macros incorretos';
	@override String get issueMissingItems => 'Itens em falta';
	@override String get issueExtraItems => 'Itens extra';
	@override String get issueOther => 'Outro';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsPt extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Recentes';
	@override String get calories => 'Calorias';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsPt extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERFIL';
	@override String get basicInformation => 'INFORMAÇÃO BÁSICA';
	@override String get goalsAndActivity => 'OBJETIVOS E ATIVIDADE';
	@override String get calculatedValues => 'VALORES CALCULADOS';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesPt extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Objetivo diário';
	@override String get calPerDay => 'cal/dia';
	@override String get notAvailable => 'N/D';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsPt extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMAÇÃO PESSOAL';
	@override String get physicalMeasurements => 'MEDIDAS FÍSICAS';
	@override String get goalsAndActivity => 'OBJETIVOS E ATIVIDADE';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersPt extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get male => 'Masculino';
	@override String get female => 'Feminino';
	@override String get other => 'Outro';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsPt extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightPt loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightPt._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightPt maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightPt._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightPt gainWeight = _TranslationsEditProfileWeightGoalsGainWeightPt._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsPt extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryPt sedentary = _TranslationsEditProfileActivityLevelsSedentaryPt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActivePt lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActivePt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActivePt moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActivePt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActivePt veryActive = _TranslationsEditProfileActivityLevelsVeryActivePt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActivePt extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActivePt._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsPt extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERFIL';
	@override String get localization => 'LOCALIZAÇÃO';
	@override String get notifications => 'NOTIFICAÇÕES';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get localInference => 'ANÁLISE NO DISPOSITIVO';
	@override String get supportAndLegal => 'SUPORTE & LEGAL';
	@override String get about => 'SOBRE';
	@override String get dangerZone => 'ZONA PERIGOSA';
	@override String get developer => 'DESENVOLVEDOR';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfilePt extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfilePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar Perfil';
	@override String get subtitle => 'Atualize as suas informações pessoais';
}

// Path: settings.language
class _TranslationsSettingsLanguagePt extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguagePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Idioma';
	@override String get subtitle => 'Escolha o seu idioma preferido';
	@override String get searchHint => 'Procurar idiomas...';
	@override String get noResults => 'Nenhum resultado encontrado';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitPt extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidade de altura';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitPt extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidade de peso';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersPt extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lembretes de refeições';
	@override String get subtitle => 'Mantenha-se em dia com alertas oportunos';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferencePt extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferencePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análise de refeições no dispositivo';
	@override String get subtitle => 'Interpretar refeições suportadas com Gemini Nano antes de a nutrição ser calculada';
	@override String get unavailable => 'Não disponível neste dispositivo';
	@override String get rolloutUnavailable => 'Hardware compatível encontrado, mas esta funcionalidade não está ativada para esta versão da app';
	@override String get modelSetup => 'O Gemini Nano precisa de terminar o download antes de isto poder ser ativado';
	@override String get useLocalTitle => 'Utilizar análise no dispositivo';
	@override String get useLocalSubtitle => 'Opcional e desativado por predefinição. Os resultados podem ser menos fiáveis para refeições complexas.';
	@override String get disclosureTitle => 'Antes de ativar a análise no dispositivo';
	@override String get disclosureBody => 'O Gemini Nano pode identificar ingredientes e estimar porções em dispositivos Android suportados. A proposta de ingredientes revista é enviada para o Calorify para a fundamentação nutricional do USDA e cálculo.';
	@override String get disclosureLimit1 => 'Pratos complexos, ingredientes ocultos e tamanhos de porções podem ser identificados incorretamente.';
	@override String get disclosureLimit2 => 'O modelo pode estar indisponível durante o download, ocupado, em segundo plano ou limitado pelo dispositivo.';
	@override String get disclosureLimit3 => 'Se a interpretação local não puder ser concluída, esta versão beta envia automaticamente a descrição original da sua refeição para o Calorify para análise na nuvem.';
	@override String get acknowledgement => 'Compreendo que devo rever os ingredientes e as porções detetados.';
	@override String get enable => 'Confirmar e ativar';
	@override String get cancel => 'Cancelar';
}

// Path: settings.theme
class _TranslationsSettingsThemePt extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Claro';
	@override String get dark => 'Escuro';
	@override String get system => 'Sistema';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackPt extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Enviar Feedback';
	@override String subtitle({required Object appLabel}) => 'Ajude-nos a melhorar ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Feedback da app ${appLabel}';
	@override String get emailBodyPrefix => 'Por favor, deixe o seu feedback abaixo:';
	@override String get appVersion => 'Versão da app';
	@override String get device => 'Dispositivo';
	@override String get osVersion => 'Versão do SO';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryPt extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exportar histórico de refeições';
	@override String get subtitle => 'Partilhe um CSV das suas refeições registadas';
	@override String get shareText => 'Exportação do histórico de refeições do Calorify';
	@override String failed({required Object error}) => 'Não foi possível exportar o histórico de refeições: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataPt extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apagar Todos os Dados';
	@override String get subtitle => 'Eliminar os dados do Calorify armazenados neste dispositivo';
	@override String get confirmationTitle => 'Apagar todos os dados?';
	@override String get confirmationMessage => 'Isto elimina permanentemente deste dispositivo as refeições registadas, os favoritos e as definições de perfil. As refeições já partilhadas com o Health Connect e o acesso ao Health Connect são geridos separadamente em Definições > Health Connect.';
	@override String get cancel => 'Cancelar';
	@override String get clearEverything => 'Apagar tudo';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsPt extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opções de depuração';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectPt extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Ver e gerir permissões';
	@override late final _TranslationsSettingsHealthConnectUnavailablePt unavailable = _TranslationsSettingsHealthConnectUnavailablePt._(_root);
	@override late final _TranslationsSettingsHealthConnectUpdateRequiredPt updateRequired = _TranslationsSettingsHealthConnectUpdateRequiredPt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsPt permissions = _TranslationsSettingsHealthConnectPermissionsPt._(_root);
	@override String get managePermissions => 'Gerir Permissões';
	@override String get openSettings => 'Abrir definições do Health Connect';
	@override String get disconnect => 'Desligar o Health Connect';
	@override String get disconnectConfirmationTitle => 'Desligar o Health Connect?';
	@override String get disconnectConfirmationMessage => 'O Calorify perderá o acesso ao Health Connect. Os dados já gravados no Health Connect não serão eliminados.';
	@override String get disconnectConfirmationAction => 'Desligar';
	@override String get deleteSyncedMeals => 'Eliminar refeições do Calorify do Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Eliminar refeições sincronizadas?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Eliminar do Health Connect as refeições sincronizadas por esta versão do Calorify? O seu registo local de refeições não será alterado. Poderá ainda ser necessário remover entradas mais antigas do Calorify através de Gerir dados no Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Eliminar refeições sincronizadas';
	@override String get deleteSyncedMealsSuccess => 'As refeições do Calorify foram eliminadas do Health Connect.';
	@override String get deleteSyncedMealsFailed => 'Não foi possível eliminar as refeições sincronizadas. Tente novamente.';
	@override String get connectionPartial => 'Algumas funcionalidades do Health Connect estão ativadas.';
	@override String get connectionComplete => 'Ambas as funcionalidades do Health Connect estão ativadas.';
	@override String get actionFailed => 'Não foi possível abrir o Health Connect. Tente novamente.';
	@override String get requestPermissions => 'Solicitar Permissões';
	@override String get permissionRequestCancelledOrFailed => 'O pedido de permissões foi cancelado ou falhou. Por favor tente novamente ou conceda as permissões manualmente nas definições do Health Connect.';
	@override String get permissionRequestFailed => 'Não foi possível solicitar permissões. Por favor tente novamente ou conceda as permissões manualmente nas definições do Health Connect.';
	@override String get requestingPermissions => 'A solicitar...';
}

// Path: settings.about
class _TranslationsSettingsAboutPt extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobre';
	@override String get tagline => 'Consciência calórica rápida, gratuita e com foco na privacidade';
	@override late final _TranslationsSettingsAboutOurStoryPt ourStory = _TranslationsSettingsAboutOurStoryPt._(_root);
	@override late final _TranslationsSettingsAboutPrivacyPt privacy = _TranslationsSettingsAboutPrivacyPt._(_root);
	@override late final _TranslationsSettingsAboutDeveloperPt developer = _TranslationsSettingsAboutDeveloperPt._(_root);
	@override late final _TranslationsSettingsAboutFeedbackPt feedback = _TranslationsSettingsAboutFeedbackPt._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoPt extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastPt extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do pequeno‑almoço! 🍳';
	@override String get body => 'Não se esqueça de registar o seu pequeno‑almoço';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchPt extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do almoço! 🥗';
	@override String get body => 'É hora de registar o seu almoço';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerPt extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do jantar! 🍽️';
	@override String get body => 'Não se esqueça de registar o seu jantar';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackPt extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do lanche! 🍎';
	@override String get body => 'Hora de um lanche saudável';
}

// Path: notifications.test
class _TranslationsNotificationsTestPt extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificação de teste';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapPt extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} fornece informação nutricional estimada. A precisão depende do que indicar e das variações dos alimentos. Use como orientação, não como fonte definitiva. Consulte um profissional para aconselhamento dietético personalizado.';
	@override late final _TranslationsDisclaimerSnapPortionSizePt portionSize = _TranslationsDisclaimerSnapPortionSizePt._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsPt preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsPt._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsPt ingredients = _TranslationsDisclaimerSnapIngredientsPt._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsPt databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsPt._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimatePt extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimatePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobre a estimativa de peso';
	@override String get description => 'A projeção de alteração de peso é uma estimativa teórica baseada no modelo simples de calorias ingeridas vs. calorias gastas. Destina‑se apenas a orientação motivacional, não como previsão do seu peso real.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyPt calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyPt._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsPt biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsPt._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightPt waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightPt._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidancePt professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidancePt._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsPt extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get description => 'Estas métricas ajudam a compreender as necessidades energéticas do seu corpo e orientam os seus objetivos nutricionais.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrPt bmr = _TranslationsDisclaimerHealthMetricsBmrPt._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeePt tdee = _TranslationsDisclaimerHealthMetricsTdeePt._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalPt dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalPt._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditurePt extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditurePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimativa de Despesa Calórica';
	@override String get description => 'Quando os dados do Health Connect não estão disponíveis, estimamos as calorias gastas hoje usando a sua Taxa Metabólica Basal (BMR) e o nível de atividade (TDEE), ajustando para a parte do dia que já passou.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedPt howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedPt._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePt professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePt._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionPt extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconhecimento inteligente de alimentos';
	@override String get description => 'Tire uma foto e deixe a AI identificar a sua refeição';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisPt extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análise por AI';
	@override String get description => 'Obtenha informações nutricionais instantâneas a partir das suas descrições';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationPt extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integração com Health Connect';
	@override String get description => 'Conecte-se ao Health Connect para obter melhores informações';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesPt extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Abaixo do peso';
	@override String get healthyWeight => 'Peso saudável';
	@override String get overweight => 'Excesso de peso';
	@override String get obese => 'Obesidade';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesPt extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podemos ajudar a criar um plano saudável para atingir um peso equilibrado com refeições ricas em nutrientes.';
	@override String get healthy => 'Bom trabalho! Está numa faixa saudável. Vamos ajudar a manter a sua vitalidade e níveis de energia.';
	@override String overweight({required Object appLabel}) => '${appLabel} vai simplificar a sua jornada com acompanhamento por AI para o ajudar a atingir o seu objetivo confortavelmente.';
	@override String get obese => 'Estamos aqui para apoiar com orientação personalizada e estratégias sustentáveis para os seus objetivos de saúde.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingPt extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calorias queimadas';
	@override String get description => 'Leia o total de calorias queimadas hoje no Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsPt extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Partilhar refeições registadas';
	@override String get description => 'Grave no Health Connect as refeições que regista no Calorify';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationPt extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O controlo é seu';
	@override String get description => 'Escolha qualquer uma das permissões e altere o acesso a qualquer momento';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessPt extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Não está sozinho';
	@override String get genericMessage => 'A investigação mostra que o acompanhamento consistente é o principal preditor de sucesso a longo prazo.';
	@override String personalizedMessage({required Object gender, required Object age, required Object goal}) => 'Para um(a) ${gender} de ${age} anos que pretende ${goal}, o acompanhamento consistente é o preditor nº 1 de sucesso.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} torna isto 10x mais fácil do que fazê-lo manualmente.';
	@override String get getStartedTitle => 'Pronto para começar?';
	@override String get tipPhoto => 'Tire uma foto das suas refeições para análise instantânea';
	@override String get tipConsistency => 'Registe de forma consistente para ver progressos significativos';
	@override String get tipProgress => 'Registe o seu progresso diariamente para manter-se motivado';
	@override String get button => 'Vamos';
	@override String get defaultGender => 'indivíduo';
	@override String get defaultGoal => 'um você mais saudável';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfilePt extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfilePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O seu Perfil de Saúde';
	@override String bmiDescription({required Object bmi}) => 'Com base nas suas métricas, o seu BMI é ${bmi}.';
	@override String get finalizeDescription => 'Vamos finalizar o seu perfil para personalizar a sua experiência.';
	@override String get goalGain => 'ganhar';
	@override String get goalLose => 'perder';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Para atingir o seu objetivo, irá ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Está no seu peso alvo! Vamos ajudar a mantê-lo.';
	@override String get button => 'Vamos';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestylePt extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestylePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Excelente começo!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Deu o primeiro passo rumo a ${goalText}. Como é ${activityText}, ${appLabel} ajustará os seus objetivos para corresponder ao seu estilo de vida.';
	@override String get personalizedTargets => 'Objetivos calóricos personalizados';
	@override String get aiMealDetection => 'Deteção de refeições por AI';
	@override String get macroBreakdowns => 'Distribuição detalhada de macronutrientes';
	@override String get button => 'Vamos';
	@override String get defaultGoal => 'os seus objetivos';
	@override String get defaultActivity => 'ativo';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightPt extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perder Peso';
	@override String get description => 'Criar défice calórico para perder peso';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightPt extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Manter Peso';
	@override String get description => 'Manter o seu peso atual';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightPt extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ganhar Peso';
	@override String get description => 'Criar superávit calórico para ganhar peso';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryPt extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentário';
	@override String get description => 'Pouco ou nenhum exercício';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActivePt extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActivePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Pouco ativo';
	@override String get description => 'Exercício leve 1-3 dias/semana';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActivePt extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActivePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderadamente ativo';
	@override String get description => 'Exercício moderado 3-5 dias/semana';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActivePt extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActivePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Muito ativo';
	@override String get description => 'Exercício intenso 6-7 dias/semana';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActivePt extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActivePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extremamente ativo';
	@override String get description => 'Exercício muito intenso, trabalho físico';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailablePt extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailablePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect indisponível';
	@override String get description => 'O Health Connect não é suportado neste dispositivo.';
}

// Path: settings.healthConnect.updateRequired
class _TranslationsSettingsHealthConnectUpdateRequiredPt extends TranslationsSettingsHealthConnectUpdateRequiredEn {
	_TranslationsSettingsHealthConnectUpdateRequiredPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O Health Connect requer atenção';
	@override String get description => 'Instale ou atualize o Health Connect antes de gerir o acesso.';
	@override String get action => 'Instalar ou atualizar';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsPt extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permissões';
	@override String get description => 'As seguintes permissões são solicitadas para permitir a integração com o Health Connect:';
	@override String get granted => 'Concedido';
	@override String get notGranted => 'Não concedido';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPt caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadPt nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadPt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWritePt nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWritePt._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryPt extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'A nossa história';
	@override String content({required Object appLabel}) => '${appLabel} nasceu de uma frustração simples: a maioria das apps de contagem de calorias é excessivamente complicada, exige entradas manuais constantes, cobra taxas de subscrição elevadas ou compromete a privacidade.\n\nComo desenvolvedor solo, quis criar algo mais simples e justo — uma app que utilize AI para reduzir o esforço, mantenha-se rápida e gratuita de usar, e trate os seus dados de saúde com respeito.\n\n${appLabel} é a app que eu queria que existisse: sem contas, sem rastreamento, sem anúncios — apenas insights claros e práticos e os seus objetivos de saúde.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyPt extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'A sua privacidade importa';
	@override String get description => 'A privacidade não é um elemento secundário — é um princípio de design. Eis o que isso significa na prática:';
	@override String get noAccounts => 'Sem contas\nUse a app imediatamente. Sem registos, sem identidades.';
	@override String noTracking({required Object appLabel}) => 'Análises e diagnósticos limitados\n${appLabel} utiliza eventos básicos da app e diagnósticos de falhas para melhorar a fiabilidade. Os valores dos registos de saúde não são utilizados para publicidade nem vendidos.';
	@override String noAds({required Object appLabel}) => 'Sem anúncios por design\n${appLabel} foi concebido para funcionar sem anúncios ou monetização baseada em dados.';
	@override String get noDataSelling => 'Sem venda de dados\nOs seus dados de saúde nunca são vendidos nem partilhados com terceiros.';
	@override String get localStorage => 'Armazenamento local por defeito\nOs seus dados permanecem no seu dispositivo.';
	@override String get privacyPolicy => 'Política de Privacidade';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperPt extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desenvolvido por um único programador';
	@override String description({required Object appLabel}) => '${appLabel} é criado e mantido por um único programador focado em desenvolver software de saúde tranquilo e que respeita a privacidade.\n\nO feedback é lido pessoalmente e ajuda a orientar o rumo da app.';
	@override String get website => 'Site';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackPt extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Aprecia o ${appLabel}?';
	@override String description({required Object appLabel}) => 'O seu feedback ajuda a tornar o ${appLabel} melhor para todos.';
	@override String get rateApp => 'Avaliar na Play Store';
	@override String get sendFeedback => 'Enviar feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizePt extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tamanho da porção';
	@override String get description => 'A precisão das estimativas depende fortemente de avaliar corretamente o tamanho da porção.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsPt extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Métodos de preparação';
	@override String description({required Object appLabel}) => 'Os métodos de confeção podem alterar significativamente o conteúdo nutricional dos alimentos. As estimativas do ${appLabel} podem não refletir sempre essas variações.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsPt extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredientes';
	@override String get description => 'Pratos complexos com muitos ingredientes ocultos podem conduzir a estimativas menos precisas.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsPt extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitações da base de dados';
	@override String description({required Object appLabel}) => 'A base de dados de alimentos do ${appLabel} é extensa, mas pode não incluir todos os alimentos ou variações existentes.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyPt extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Precisão das calorias';
	@override String get description => 'Esta estimativa é tão precisa quanto o registo do seu consumo e despesa calórica. Um registo incorreto resultará numa projeção imprecisa.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsPt extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fatores biológicos';
	@override String description({required Object appLabel}) => 'A perda/ganho de peso real é influenciada pelo metabolismo, hormonas, sono, stress, hidratação e outros fatores individuais que o ${appLabel} não consegue medir.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightPt extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Peso da água e flutuações';
	@override String get description => 'O peso diário normal pode flutuar significativamente devido à retenção de água, digestão e horários. A estimativa não tem em conta essas variações diárias.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidancePt extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidancePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientação profissional';
	@override String get description => 'Não utilize esta estimativa para tomar decisões médicas. Consulte sempre um profissional de saúde ou nutricionista registado para aconselhamento personalizado de gestão de peso.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrPt extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Taxa Metabólica Basal (BMR) é o número de calorias que o seu corpo gasta em repouso para manter funções básicas como respirar e a circulação. O BMR depende da sua idade, sexo, altura e peso. Um BMR mais elevado significa que o seu corpo queima mais calorias em repouso, muitas vezes devido a maior massa muscular, idade mais jovem ou ser do sexo masculino. Um BMR mais baixo tipicamente indica menos massa muscular, idade mais avançada ou ser do sexo feminino.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeePt extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Despesas Energéticas Diárias Totais (TDEE) é o total de calorias que gasta por dia, incluindo o seu BMR mais as calorias gastas em atividade física e movimento diário. O TDEE depende do seu BMR e do nível de atividade. Um TDEE mais alto significa que queima mais calorias no total, geralmente por ser mais ativo ou ter um BMR mais elevado. Um TDEE mais baixo sugere menos atividade diária ou um BMR inferior.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalPt extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Objetivo Diário';
	@override String get description => 'O Objetivo Diário é a ingestão calórica recomendada com base no seu TDEE e objetivo de peso. Para perda de peso, consome menos calorias do que o seu TDEE. Para manutenção, iguala o seu TDEE. Para ganho de peso, consome mais calorias do que o seu TDEE. Isto ajuda a alcançar a alteração de peso desejada a um ritmo saudável.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedPt extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Como a estimativa é calculada';
	@override String get description => 'Calculamos o seu TDEE (com base no seu perfil) e multiplicamo‑lo pela fração do dia decorrido (horas + minutos) / 24 para estimar as calorias gastas até ao momento.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePt extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientação profissional';
	@override String get description => 'Não utilize esta estimativa para tomar decisões médicas. Consulte sempre um profissional de saúde ou nutricionista registado para aconselhamento personalizado de gestão de peso.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPt extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ler Calorias Totais Queimadas';
	@override String get description => 'Permite que a app leia as suas calorias totais queimadas a partir do Health Connect.';
	@override String get usage => 'Esta permissão é usada para mostrar a sua queima calórica diária na app, ajudando-o a compreender o seu gasto energético total ao longo do dia.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadPt extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadPt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ler Dados de Nutrição';
	@override String get description => 'Permite que a app leia dados de nutrição do Health Connect.';
	@override String get usage => 'Esta permissão permite que a app leia informações nutricionais que podem ter sido registadas por outras apps ligadas ao Health Connect, oferecendo uma visão abrangente da sua nutrição.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWritePt extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWritePt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gravar Dados de Nutrição';
	@override String get description => 'Permite que a app escreva dados de nutrição no Health Connect.';
	@override String get usage => 'Esta permissão permite que a app sincronize as suas refeições registadas com o Health Connect, tornando os seus dados nutricionais disponíveis para outras apps de saúde e fitness que utilize.';
}

/// The flat map containing all translations for locale <pt>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Português (Portugal)',
			'flag' => '🇵🇹',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Fez demasiados pedidos. Por favor, espere um momento antes de tentar novamente.',
			'errors.networkError' => 'Erro de rede. Verifique a sua ligação à Internet.',
			'errors.unknownError' => 'Algo correu mal. Por favor, tente novamente mais tarde.',
			'errors.loadingProfileData' => 'Erro ao carregar os dados do perfil',
			'errors.somethingWentWrong' => 'Algo correu mal.',
			'errors.retry' => 'Tentar novamente',
			'onboarding.welcome' => ({required Object appLabel}) => 'Bem-vindo ao ${appLabel}',
			'onboarding.subtitle' => 'O seu companheiro pessoal de nutrição potenciado por AI',
			'onboarding.getStarted' => 'Começar',
			'onboarding.features.foodRecognition.title' => 'Reconhecimento inteligente de alimentos',
			'onboarding.features.foodRecognition.description' => 'Tire uma foto e deixe a AI identificar a sua refeição',
			'onboarding.features.aiAnalysis.title' => 'Análise por AI',
			'onboarding.features.aiAnalysis.description' => 'Obtenha informações nutricionais instantâneas a partir das suas descrições',
			'onboarding.features.healthIntegration.title' => 'Integração com Health Connect',
			'onboarding.features.healthIntegration.description' => 'Conecte-se ao Health Connect para obter melhores informações',
			'onboarding.gender.title' => 'Qual é o seu género?',
			'onboarding.gender.description' => 'O género ajuda-nos a calcular com precisão a sua taxa metabólica basal (BMR).',
			'onboarding.gender.next' => 'Seguinte',
			'onboarding.height.title' => 'Qual é a sua altura?',
			'onboarding.height.description' => 'A sua altura ajuda-nos a calcular o seu BMI e necessidades energéticas com precisão.',
			'onboarding.height.metric' => 'Métrico',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Seguinte',
			'onboarding.weight.currentTitle' => 'Qual é o seu peso atual?',
			'onboarding.weight.currentDescription' => 'O seu peso atual é essencial para personalizar os seus objetivos diários.',
			'onboarding.weight.targetTitle' => 'Qual é o seu peso objetivo?',
			'onboarding.weight.targetDescription' => 'Definir um peso objetivo ajuda-nos a determinar o seu plano a longo prazo.',
			'onboarding.weight.metric' => 'Métrico',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Seguinte',
			'onboarding.age.title' => 'Quando é o seu aniversário?',
			'onboarding.age.description' => 'A sua idade ajuda-nos a calcular com precisão as suas necessidades calóricas.',
			'onboarding.age.next' => 'Seguinte',
			'onboarding.bmiScale.underweight' => 'Abaixo',
			'onboarding.bmiScale.healthy' => 'Saudável',
			'onboarding.bmiScale.overweight' => 'Acima',
			'onboarding.bmiScale.obese' => 'Obeso',
			'onboarding.bmiScale.categories.underweight' => 'Abaixo do peso',
			'onboarding.bmiScale.categories.healthyWeight' => 'Peso saudável',
			'onboarding.bmiScale.categories.overweight' => 'Excesso de peso',
			'onboarding.bmiScale.categories.obese' => 'Obesidade',
			'onboarding.bmiScale.messages.underweight' => 'Podemos ajudar a criar um plano saudável para atingir um peso equilibrado com refeições ricas em nutrientes.',
			'onboarding.bmiScale.messages.healthy' => 'Bom trabalho! Está numa faixa saudável. Vamos ajudar a manter a sua vitalidade e níveis de energia.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} vai simplificar a sua jornada com acompanhamento por AI para o ajudar a atingir o seu objetivo confortavelmente.',
			'onboarding.bmiScale.messages.obese' => 'Estamos aqui para apoiar com orientação personalizada e estratégias sustentáveis para os seus objetivos de saúde.',
			'onboarding.weightGoal.title' => 'Qual é o seu objetivo?',
			'onboarding.weightGoal.description' => 'Escolha o objetivo que melhor descreve o que pretende alcançar',
			'onboarding.activityLevel.title' => 'Quão ativo é?',
			'onboarding.activityLevel.description' => 'Isto ajuda-nos a calcular as suas necessidades calóricas diárias com mais precisão',
			'onboarding.healthConnect.title' => 'Ligar ao Health Connect',
			'onboarding.healthConnect.description' => 'Utilize as calorias queimadas no seu objetivo diário e, opcionalmente, partilhe refeições registadas com o Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Calorias queimadas',
			'onboarding.healthConnect.automaticTracking.description' => 'Leia o total de calorias queimadas hoje no Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Partilhar refeições registadas',
			'onboarding.healthConnect.progressInsights.description' => 'Grave no Health Connect as refeições que regista no Calorify',
			'onboarding.healthConnect.seamlessIntegration.title' => 'O controlo é seu',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Escolha qualquer uma das permissões e altere o acesso a qualquer momento',
			'onboarding.healthConnect.connected' => 'Health Connect ligado',
			'onboarding.healthConnect.notConnected' => 'Health Connect não ligado',
			'onboarding.healthConnect.setup' => 'Configurar o Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Ignorar por agora',
			'onboarding.healthConnect.statusConnected' => 'Health Connect está ligado.',
			'onboarding.healthConnect.statusSuccess' => 'O Health Connect foi ligado com sucesso!',
			'onboarding.healthConnect.statusNotConnected' => 'Escolha as funcionalidades do Health Connect que pretende ativar.',
			'onboarding.healthConnect.statusPartial' => 'O Health Connect está parcialmente ligado. Ative a permissão restante para utilizar ambas as funcionalidades.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Instale ou atualize o Health Connect para continuar.',
			'onboarding.healthConnect.statusUnavailable' => 'O Health Connect não é suportado neste dispositivo.',
			'onboarding.healthConnect.installOrUpdate' => 'Instalar ou atualizar',
			'onboarding.healthConnect.manageAccess' => 'Gerir acesso',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permissão negada. Por favor, ative as permissões do Health Connect nas definições do seu telemóvel para ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Erro ao configurar o Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Não está sozinho',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'A investigação mostra que o acompanhamento consistente é o principal preditor de sucesso a longo prazo.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object gender, required Object age, required Object goal}) => 'Para um(a) ${gender} de ${age} anos que pretende ${goal}, o acompanhamento consistente é o preditor nº 1 de sucesso.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} torna isto 10x mais fácil do que fazê-lo manualmente.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Pronto para começar?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Tire uma foto das suas refeições para análise instantânea',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Registe de forma consistente para ver progressos significativos',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Registe o seu progresso diariamente para manter-se motivado',
			'onboarding.reinforcement.trackingSuccess.button' => 'Vamos',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'indivíduo',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'um você mais saudável',
			'onboarding.reinforcement.healthProfile.title' => 'O seu Perfil de Saúde',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Com base nas suas métricas, o seu BMI é ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Vamos finalizar o seu perfil para personalizar a sua experiência.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'ganhar',
			'onboarding.reinforcement.healthProfile.goalLose' => 'perder',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Para atingir o seu objetivo, irá ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Está no seu peso alvo! Vamos ajudar a mantê-lo.',
			'onboarding.reinforcement.healthProfile.button' => 'Vamos',
			'onboarding.reinforcement.goalLifestyle.title' => 'Excelente começo!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Deu o primeiro passo rumo a ${goalText}. Como é ${activityText}, ${appLabel} ajustará os seus objetivos para corresponder ao seu estilo de vida.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Objetivos calóricos personalizados',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Deteção de refeições por AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Distribuição detalhada de macronutrientes',
			'onboarding.reinforcement.goalLifestyle.button' => 'Vamos',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'os seus objetivos',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'ativo',
			'tabs.dashboard' => 'Painel',
			'tabs.history' => 'Histórico',
			'home.aiSummary.title' => 'O seu resumo AI',
			'home.aiSummary.logMore' => 'Registe mais refeições durante os próximos dias para obter os seus insights AI personalizados.',
			'home.aiSummary.loading' => 'A carregar o seu resumo...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} refeições registadas',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Pontuação de equilíbrio ${score}',
			'home.aiSummary.topFoods' => 'Alimentos principais',
			'home.aiSummary.trendUp' => 'Calorias a subir',
			'home.aiSummary.trendDown' => 'Calorias a descer',
			'home.aiSummary.trendSteady' => 'Calorias estáveis',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Atualizado ${time}',
			'home.dailyGoal.title' => 'Defina o seu objetivo diário',
			'home.dailyGoal.titleSet' => 'O seu objetivo diário',
			'home.dailyGoal.description' => 'Pronto para iniciar a sua jornada de bem‑estar? Defina abaixo o seu objetivo diário de calorias para começar a progredir.',
			'home.dailyGoal.descriptionSet' => 'A sua bússola está definida! Este é o seu objetivo diário de calorias para o orientar.',
			'home.dailyGoal.yourGoal' => 'O seu objetivo',
			'home.dailyGoal.goal' => 'Objetivo',
			'home.dailyGoal.dailyCalories' => 'Calorias diárias (kcal)',
			'home.dailyGoal.setGoal' => 'Definir objetivo',
			'home.dailyGoal.intake' => 'Ingestão',
			'home.dailyGoal.burned' => 'Queimadas',
			'home.dailyGoal.weightImpact' => 'Impacto no peso',
			'home.dailyGoal.estLoss' => 'Perda estimada de',
			'home.dailyGoal.estGain' => 'Ganho estimado de',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Resumo diário',
			'home.dailySummary.calories' => 'Calorias',
			'home.dailySummary.carbs' => 'Hidratos de carbono',
			'home.dailySummary.protein' => 'Proteína',
			'home.dailySummary.fat' => 'Gordura',
			'home.dailySummary.fiber' => 'Fibra',
			'home.dailySummary.grams' => 'gramas',
			'home.dailySummary.chartAccessibilityLabel' => 'Gráfico de macronutrientes',
			'home.intakeProgress.title' => 'Distribuição de macronutrientes de hoje',
			'home.intakeProgress.target' => 'Meta',
			'home.intakeProgress.current' => 'Atual',
			'home.intakeHistory.title' => 'Histórico de macronutrientes (7 dias)',
			'home.intakeHistory.trendTitle' => 'Tendência de hoje',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Pico: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Sem histórico ainda',
			'home.intakeHistory.startLogging' => 'Comece a registar refeições para ver aqui as suas\ntendências de macronutrientes nos últimos 7 dias',
			'home.mealLog.title' => 'Refeições registadas',
			'home.mealLog.emptyMessage' => 'Tire uma foto da sua última refeição para registar aqui.',
			'home.mealLog.noMealsToday' => 'Nenhuma refeição registada hoje',
			'home.mealLog.seeAllMeals' => 'Ver todas as refeições',
			'home.mealDescription.title' => 'Adição rápida com AI',
			'home.mealDescription.description' => 'Descreva a sua refeição e deixe que a AI trate dos detalhes.',
			'home.mealDescription.hint' => 'ex.: No pequeno‑almoço comi uma taça grande de papas de aveia com uma banana às rodelas e uma dose de whey ...',
			'home.mealDescription.analyzeMeal' => 'Analisar refeição',
			'home.favoriteMeals.title' => 'Refeições favoritas',
			'home.favoriteMeals.description' => 'Adicione rapidamente uma das suas refeições favoritas.',
			'home.favoriteMeals.noFavorites' => 'Ainda não há refeições favoritas.',
			'home.favoriteMeals.addFavoriteHint' => 'Clique na estrela numa refeição para a marcar como favorita.',
			'home.favoriteMeals.seeAll' => 'Ver tudo',
			'home.favoriteMeals.add' => 'Adicionar',
			'home.mealSnap.title' => 'Fotografe e registe a sua refeição',
			'home.mealSnap.description' => 'Use a câmara para tirar uma foto da sua comida para análise por AI.',
			'home.mealSnap.openCamera' => 'Abrir câmara',
			'home.mealSnap.gallery' => 'Galeria',
			'home.mealSnap.compressingPhoto' => 'A otimizar foto…',
			'home.mealSnap.uploadingPhoto' => 'A enviar foto…',
			'home.connectHealth.title' => 'Sincronizar com Health Connect',
			'home.connectHealth.description' => 'Utilize as calorias queimadas no seu objetivo e partilhe refeições registadas',
			'home.connectHealth.install' => 'Instalar ou atualizar',
			'home.connectHealth.connect' => 'Ligar',
			'history.noMeals' => 'Nenhuma refeição registada',
			'history.emptyMessage' => 'Tire uma foto da sua última refeição para registar aqui.',
			'history.today' => 'Hoje',
			'history.yesterday' => 'Ontem',
			'meal.ohNo' => 'Oh não!',
			'meal.delete' => 'Eliminar',
			'meal.editMeal' => 'Editar refeição',
			'meal.addMeal' => 'Adicionar refeição',
			'meal.saveMeal' => 'Guardar refeição',
			'meal.save' => 'Guardar',
			'meal.mealName' => 'Nome da refeição',
			'meal.mealNameHint' => 'ex.: Ovos mexidos com torrada',
			'meal.nameRequired' => 'Introduza um nome para a refeição antes de guardar.',
			'meal.mealQuantity' => 'Quantidade da refeição',
			'meal.mealQuantityHint' => 'ex.: 1 taça, 2 fatias',
			'meal.timeOfMeal' => 'Hora da refeição',
			'meal.timeOfMealHint' => 'Selecione a hora em que comeu a refeição',
			'meal.mealType' => 'Tipo de refeição',
			'meal.nutrition.calories' => 'Calorias',
			'meal.nutrition.carbs' => 'Hidratos de carbono (g)',
			'meal.nutrition.protein' => 'Proteína (g)',
			'meal.nutrition.fat' => 'Gordura (g)',
			'meal.nutrition.fiber' => 'Fibra (g)',
			'meal.deleteConfirmation.title' => 'Eliminar refeição',
			'meal.deleteConfirmation.message' => 'Tem a certeza de que pretende eliminar este registo de refeição?',
			'meal.deleteConfirmation.cancel' => 'Cancelar',
			'meal.deleteConfirmation.delete' => 'Eliminar',
			'meal.addedToLog' => 'Refeição adicionada ao seu registo!',
			'meal.couldNotAdd' => ({required Object error}) => 'Não foi possível adicionar a refeição: ${error}',
			'meal.savedSuccessfully' => 'Refeição adicionada com sucesso!',
			'meal.updatedSuccessfully' => 'Refeição atualizada com sucesso!',
			'meal.errorSaving' => ({required Object error}) => 'Erro ao guardar a refeição: ${error}',
			'meal.removedFromFavorites' => 'Removido dos favoritos!',
			'meal.savedAsFavorite' => 'Refeição guardada como favorita!',
			'meal.unfavorite' => 'Remover dos favoritos',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Não foi possível atualizar o favorito: ${error}',
			'meal.feedbackThanks' => 'Obrigado pelo feedback!',
			'meal.reanalysisUpdated' => 'Análise da refeição atualizada com base no seu feedback.',
			'meal.failedToProcess' => ({required Object error}) => 'Falha ao processar: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Falha ao processar imagem: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Erro ao comprimir a imagem: ${error}',
			'meal.failedToSave' => 'Falha ao guardar os dados. Por favor, tente novamente.',
			'meal.skip' => 'Ignorar',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Pergunta ${current} de ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Nenhuma pergunta disponível',
			'meal.questionFlow.next' => 'Seguinte',
			'meal.questionFlow.continueLabel' => 'Continuar',
			'meal.analysis.title' => 'A analisar a sua refeição',
			'meal.analysis.stepStarted' => 'A começar…',
			'meal.analysis.stepDecomposition' => 'A compreender a sua refeição…',
			'meal.analysis.stepIngredients' => 'A associar ingredientes aos dados nutricionais…',
			'meal.analysis.stepUncertainty' => 'A verificar a confiança…',
			'meal.analysis.stepMealTypeQuestion' => 'Quase lá…',
			'meal.analysis.stepResult' => 'A finalizar o resultado…',
			'meal.analysis.stepError' => 'Algo correu mal',
			'meal.analysis.stepDefault' => 'A analisar a sua refeição…',
			'meal.analysis.progressUnderstand' => 'A compreender a sua refeição',
			'meal.analysis.progressMatch' => 'A procurar a nutrição dos ingredientes',
			'meal.analysis.progressCheck' => 'A verificar porções e confiança',
			'meal.analysis.progressMealType' => 'A escolher o tipo de refeição',
			'meal.analysis.progressFinish' => 'A calcular calorias e macronutrientes',
			'meal.analysis.detectedIngredientHeading' => 'Ingredientes detetados',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} mais',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredientes detetados',
			'meal.analysis.ingredientsPending' => 'A detetar ingredientes…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Dica: Consistência vence a perfeição — registos regulares revelam os padrões que importam.',
			'meal.analysis.offlineTip1' => 'Dica: Para fotografias, luz natural e uma vista de cima ajudam na precisão das porções.',
			'meal.analysis.offlineTip2' => 'Dica: Indique bebidas, molhos e óleo de cozinha — adicionam calorias que frequentemente se esquecem.',
			'meal.analysis.offlineTip3' => 'Dica: Uma nota rápida da porção (1 taça, café grande) torna as estimativas muito mais precisas.',
			'meal.analysis.offlineTip4' => 'Dica: Registar depois da refeição também cria o hábito; a perfeição é opcional.',
			'meal.analysis.offlineTip5' => 'Dica: Indique como foi cozinhado quando altera muito as calorias (frito vs assado).',
			'meal.localInference.reviewTitle' => 'Rever ingredientes detetados',
			'meal.localInference.reviewSubtitle' => 'Isto foi interpretado no seu dispositivo. Corrija os nomes ou as porções antes de a nutrição ser calculada.',
			'meal.localInference.mealName' => 'Nome da refeição',
			'meal.localInference.ingredient' => 'Ingrediente',
			'meal.localInference.grams' => 'Gramas estimadas',
			'meal.localInference.removeIngredient' => 'Remover ingrediente',
			'meal.localInference.continueLabel' => 'Continuar',
			'meal.localInference.invalidProposal' => 'Adicione pelo menos um ingrediente e utilize uma quantidade de gramas positiva.',
			'meal.localInference.localUnavailable' => 'A análise no dispositivo não está disponível de momento.',
			'meal.localInference.calculationDetails' => 'Como isto foi calculado',
			'meal.localInference.interpretationLocal' => 'Ingredientes interpretados neste dispositivo',
			'meal.localInference.interpretationCloud' => 'Ingredientes interpretados na nuvem',
			'meal.localInference.interpretationManual' => 'Ingredientes revistos ou editados por si',
			'meal.localInference.nutritionRemote' => 'Nutrição obtida do USDA através do Calorify',
			'meal.localInference.nutritionFallback' => 'Alguns valores nutricionais foram estimados remotamente',
			'meal.localInference.calculationServer' => 'Calorias e macros calculadas pelo Calorify',
			'meal.localInference.fallbackUsed' => 'A análise local recorreu ao processamento na nuvem',
			'meal.localInference.noRawContent' => 'Os recibos de diagnóstico não incluem o texto ou a foto da sua refeição.',
			'meal.feedback.title' => 'O que está errado?',
			'meal.feedback.subtitle' => 'Ajude-nos a melhorar a análise selecionando um ou mais problemas.',
			'meal.feedback.tellUsMore' => 'Diga-nos mais',
			'meal.feedback.describeIncorrect' => 'Descreva o que estava incorreto',
			'meal.feedback.submit' => 'Enviar',
			'meal.feedback.issueFoodIdentification' => 'Identificação do alimento',
			'meal.feedback.issuePortionSize' => 'Tamanho da porção',
			'meal.feedback.issueCalorieDistribution' => 'Distribuição de calorias',
			'meal.feedback.issueMacrosWrong' => 'Macros incorretos',
			'meal.feedback.issueMissingItems' => 'Itens em falta',
			'meal.feedback.issueExtraItems' => 'Itens extra',
			'meal.feedback.issueOther' => 'Outro',
			'favorites.title' => 'Favoritos',
			'favorites.empty' => 'Ainda sem refeições favoritas.',
			'favorites.searchPlaceholder' => 'Pesquisar refeições favoritas',
			'favorites.searchEmptyTitle' => 'Nenhum favorito corresponde à pesquisa',
			'favorites.searchEmptySubtitle' => 'Tente outro nome de refeição, quantidade ou tipo de refeição.',
			'favorites.sortLabel' => 'Ordenar favoritos',
			'favorites.undo' => 'Anular',
			'favorites.removed' => ({required Object name}) => 'Removido ${name} dos favoritos',
			'favorites.sortOptions.recent' => 'Recentes',
			'favorites.sortOptions.calories' => 'Calorias',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Perfil',
			'profile.noProfileData' => 'Nenhum dado de perfil encontrado',
			'profile.yourProfile' => 'O seu perfil',
			'profile.viewAndManage' => 'Ver e gerir a sua informação de saúde',
			'profile.sections.profile' => 'PERFIL',
			'profile.sections.basicInformation' => 'INFORMAÇÃO BÁSICA',
			'profile.sections.goalsAndActivity' => 'OBJETIVOS E ATIVIDADE',
			'profile.sections.calculatedValues' => 'VALORES CALCULADOS',
			'profile.gender' => 'Género',
			'profile.height' => 'Altura',
			'profile.weight' => 'Peso',
			'profile.age' => 'Idade',
			'profile.weightGoal' => 'Objetivo de peso',
			'profile.targetWeight' => 'Peso alvo',
			'profile.activityLevel' => 'Nível de atividade',
			'profile.healthMetrics' => 'Métricas de saúde',
			'profile.notSet' => 'Por definir',
			'profile.years' => 'anos',
			'profile.updatedSuccessfully' => 'Perfil atualizado com sucesso!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Objetivo diário',
			'profile.calculatedValues.calPerDay' => 'cal/dia',
			'profile.calculatedValues.notAvailable' => 'N/D',
			'healthScore.title' => 'Pontuação de saúde',
			'healthScore.whyThisScore' => 'Porquê esta pontuação?',
			'healthScore.note' => 'Esta pontuação é uma estimativa por AI baseada nos ingredientes identificados e na densidade nutricional. Consulte sempre um profissional para aconselhamento dietético.',
			'healthScore.unhealthy' => 'Não saudável',
			'healthScore.healthy' => 'Saudável',
			'healthScore.neutral' => 'Neutro',
			'editProfile.title' => 'Editar perfil',
			'editProfile.sections.personalInformation' => 'INFORMAÇÃO PESSOAL',
			'editProfile.sections.physicalMeasurements' => 'MEDIDAS FÍSICAS',
			'editProfile.sections.goalsAndActivity' => 'OBJETIVOS E ATIVIDADE',
			'editProfile.gender' => 'Género',
			'editProfile.dateOfBirth' => 'Data de nascimento',
			'editProfile.height' => 'Altura',
			'editProfile.weight' => 'Peso',
			'editProfile.weightGoal' => 'Objetivo de peso',
			'editProfile.activityLevel' => 'Nível de atividade',
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
			'editProfile.genders.female' => 'Feminino',
			'editProfile.genders.other' => 'Outro',
			'editProfile.weightGoals.loseWeight.name' => 'Perder Peso',
			'editProfile.weightGoals.loseWeight.description' => 'Criar défice calórico para perder peso',
			'editProfile.weightGoals.maintainWeight.name' => 'Manter Peso',
			'editProfile.weightGoals.maintainWeight.description' => 'Manter o seu peso atual',
			'editProfile.weightGoals.gainWeight.name' => 'Ganhar Peso',
			'editProfile.weightGoals.gainWeight.description' => 'Criar superávit calórico para ganhar peso',
			'editProfile.activityLevels.sedentary.name' => 'Sedentário',
			'editProfile.activityLevels.sedentary.description' => 'Pouco ou nenhum exercício',
			'editProfile.activityLevels.lightlyActive.name' => 'Pouco ativo',
			'editProfile.activityLevels.lightlyActive.description' => 'Exercício leve 1-3 dias/semana',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderadamente ativo',
			'editProfile.activityLevels.moderatelyActive.description' => 'Exercício moderado 3-5 dias/semana',
			'editProfile.activityLevels.veryActive.name' => 'Muito ativo',
			'editProfile.activityLevels.veryActive.description' => 'Exercício intenso 6-7 dias/semana',
			'editProfile.activityLevels.extremelyActive.name' => 'Extremamente ativo',
			'editProfile.activityLevels.extremelyActive.description' => 'Exercício muito intenso, trabalho físico',
			'settings.title' => 'Definições',
			'settings.sections.profile' => 'PERFIL',
			'settings.sections.localization' => 'LOCALIZAÇÃO',
			'settings.sections.notifications' => 'NOTIFICAÇÕES',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.localInference' => 'ANÁLISE NO DISPOSITIVO',
			'settings.sections.supportAndLegal' => 'SUPORTE & LEGAL',
			'settings.sections.about' => 'SOBRE',
			'settings.sections.dangerZone' => 'ZONA PERIGOSA',
			'settings.sections.developer' => 'DESENVOLVEDOR',
			'settings.editProfile.title' => 'Editar Perfil',
			'settings.editProfile.subtitle' => 'Atualize as suas informações pessoais',
			'settings.language.title' => 'Idioma',
			'settings.language.subtitle' => 'Escolha o seu idioma preferido',
			'settings.language.searchHint' => 'Procurar idiomas...',
			'settings.language.noResults' => 'Nenhum resultado encontrado',
			'settings.heightUnit.title' => 'Unidade de altura',
			'settings.weightUnit.title' => 'Unidade de peso',
			'settings.mealReminders.title' => 'Lembretes de refeições',
			'settings.mealReminders.subtitle' => 'Mantenha-se em dia com alertas oportunos',
			'settings.localInference.title' => 'Análise de refeições no dispositivo',
			'settings.localInference.subtitle' => 'Interpretar refeições suportadas com Gemini Nano antes de a nutrição ser calculada',
			'settings.localInference.unavailable' => 'Não disponível neste dispositivo',
			'settings.localInference.rolloutUnavailable' => 'Hardware compatível encontrado, mas esta funcionalidade não está ativada para esta versão da app',
			'settings.localInference.modelSetup' => 'O Gemini Nano precisa de terminar o download antes de isto poder ser ativado',
			'settings.localInference.useLocalTitle' => 'Utilizar análise no dispositivo',
			'settings.localInference.useLocalSubtitle' => 'Opcional e desativado por predefinição. Os resultados podem ser menos fiáveis para refeições complexas.',
			'settings.localInference.disclosureTitle' => 'Antes de ativar a análise no dispositivo',
			'settings.localInference.disclosureBody' => 'O Gemini Nano pode identificar ingredientes e estimar porções em dispositivos Android suportados. A proposta de ingredientes revista é enviada para o Calorify para a fundamentação nutricional do USDA e cálculo.',
			'settings.localInference.disclosureLimit1' => 'Pratos complexos, ingredientes ocultos e tamanhos de porções podem ser identificados incorretamente.',
			'settings.localInference.disclosureLimit2' => 'O modelo pode estar indisponível durante o download, ocupado, em segundo plano ou limitado pelo dispositivo.',
			'settings.localInference.disclosureLimit3' => 'Se a interpretação local não puder ser concluída, esta versão beta envia automaticamente a descrição original da sua refeição para o Calorify para análise na nuvem.',
			'settings.localInference.acknowledgement' => 'Compreendo que devo rever os ingredientes e as porções detetados.',
			'settings.localInference.enable' => 'Confirmar e ativar',
			'settings.localInference.cancel' => 'Cancelar',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Claro',
			'settings.theme.dark' => 'Escuro',
			'settings.theme.system' => 'Sistema',
			'settings.sendFeedback.title' => 'Enviar Feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Ajude-nos a melhorar ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback da app ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Por favor, deixe o seu feedback abaixo:',
			'settings.sendFeedback.appVersion' => 'Versão da app',
			'settings.sendFeedback.device' => 'Dispositivo',
			'settings.sendFeedback.osVersion' => 'Versão do SO',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Exportar histórico de refeições',
			'settings.exportMealHistory.subtitle' => 'Partilhe um CSV das suas refeições registadas',
			'settings.exportMealHistory.shareText' => 'Exportação do histórico de refeições do Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Não foi possível exportar o histórico de refeições: ${error}',
			'settings.clearAllData.title' => 'Apagar Todos os Dados',
			'settings.clearAllData.subtitle' => 'Eliminar os dados do Calorify armazenados neste dispositivo',
			'settings.clearAllData.confirmationTitle' => 'Apagar todos os dados?',
			'settings.clearAllData.confirmationMessage' => 'Isto elimina permanentemente deste dispositivo as refeições registadas, os favoritos e as definições de perfil. As refeições já partilhadas com o Health Connect e o acesso ao Health Connect são geridos separadamente em Definições > Health Connect.',
			'settings.clearAllData.cancel' => 'Cancelar',
			'settings.clearAllData.clearEverything' => 'Apagar tudo',
			'settings.debugOptions.title' => 'Opções de depuração',
			'settings.developerModeEnabled' => 'Modo de desenvolvedor ativado!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Ver e gerir permissões',
			'settings.healthConnect.unavailable.title' => 'Health Connect indisponível',
			'settings.healthConnect.unavailable.description' => 'O Health Connect não é suportado neste dispositivo.',
			'settings.healthConnect.updateRequired.title' => 'O Health Connect requer atenção',
			'settings.healthConnect.updateRequired.description' => 'Instale ou atualize o Health Connect antes de gerir o acesso.',
			'settings.healthConnect.updateRequired.action' => 'Instalar ou atualizar',
			'settings.healthConnect.permissions.title' => 'Permissões',
			'settings.healthConnect.permissions.description' => 'As seguintes permissões são solicitadas para permitir a integração com o Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Concedido',
			'settings.healthConnect.permissions.notGranted' => 'Não concedido',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Ler Calorias Totais Queimadas',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Permite que a app leia as suas calorias totais queimadas a partir do Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Esta permissão é usada para mostrar a sua queima calórica diária na app, ajudando-o a compreender o seu gasto energético total ao longo do dia.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Ler Dados de Nutrição',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Permite que a app leia dados de nutrição do Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Esta permissão permite que a app leia informações nutricionais que podem ter sido registadas por outras apps ligadas ao Health Connect, oferecendo uma visão abrangente da sua nutrição.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Gravar Dados de Nutrição',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Permite que a app escreva dados de nutrição no Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Esta permissão permite que a app sincronize as suas refeições registadas com o Health Connect, tornando os seus dados nutricionais disponíveis para outras apps de saúde e fitness que utilize.',
			'settings.healthConnect.managePermissions' => 'Gerir Permissões',
			'settings.healthConnect.openSettings' => 'Abrir definições do Health Connect',
			'settings.healthConnect.disconnect' => 'Desligar o Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Desligar o Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'O Calorify perderá o acesso ao Health Connect. Os dados já gravados no Health Connect não serão eliminados.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Desligar',
			'settings.healthConnect.deleteSyncedMeals' => 'Eliminar refeições do Calorify do Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Eliminar refeições sincronizadas?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Eliminar do Health Connect as refeições sincronizadas por esta versão do Calorify? O seu registo local de refeições não será alterado. Poderá ainda ser necessário remover entradas mais antigas do Calorify através de Gerir dados no Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Eliminar refeições sincronizadas',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'As refeições do Calorify foram eliminadas do Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Não foi possível eliminar as refeições sincronizadas. Tente novamente.',
			'settings.healthConnect.connectionPartial' => 'Algumas funcionalidades do Health Connect estão ativadas.',
			'settings.healthConnect.connectionComplete' => 'Ambas as funcionalidades do Health Connect estão ativadas.',
			'settings.healthConnect.actionFailed' => 'Não foi possível abrir o Health Connect. Tente novamente.',
			'settings.healthConnect.requestPermissions' => 'Solicitar Permissões',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'O pedido de permissões foi cancelado ou falhou. Por favor tente novamente ou conceda as permissões manualmente nas definições do Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Não foi possível solicitar permissões. Por favor tente novamente ou conceda as permissões manualmente nas definições do Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'A solicitar...',
			'settings.about.title' => 'Sobre',
			'settings.about.tagline' => 'Consciência calórica rápida, gratuita e com foco na privacidade',
			'settings.about.ourStory.title' => 'A nossa história',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} nasceu de uma frustração simples: a maioria das apps de contagem de calorias é excessivamente complicada, exige entradas manuais constantes, cobra taxas de subscrição elevadas ou compromete a privacidade.\n\nComo desenvolvedor solo, quis criar algo mais simples e justo — uma app que utilize AI para reduzir o esforço, mantenha-se rápida e gratuita de usar, e trate os seus dados de saúde com respeito.\n\n${appLabel} é a app que eu queria que existisse: sem contas, sem rastreamento, sem anúncios — apenas insights claros e práticos e os seus objetivos de saúde.',
			'settings.about.privacy.title' => 'A sua privacidade importa',
			'settings.about.privacy.description' => 'A privacidade não é um elemento secundário — é um princípio de design. Eis o que isso significa na prática:',
			'settings.about.privacy.noAccounts' => 'Sem contas\nUse a app imediatamente. Sem registos, sem identidades.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Análises e diagnósticos limitados\n${appLabel} utiliza eventos básicos da app e diagnósticos de falhas para melhorar a fiabilidade. Os valores dos registos de saúde não são utilizados para publicidade nem vendidos.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Sem anúncios por design\n${appLabel} foi concebido para funcionar sem anúncios ou monetização baseada em dados.',
			'settings.about.privacy.noDataSelling' => 'Sem venda de dados\nOs seus dados de saúde nunca são vendidos nem partilhados com terceiros.',
			'settings.about.privacy.localStorage' => 'Armazenamento local por defeito\nOs seus dados permanecem no seu dispositivo.',
			'settings.about.privacy.privacyPolicy' => 'Política de Privacidade',
			'settings.about.developer.title' => 'Desenvolvido por um único programador',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} é criado e mantido por um único programador focado em desenvolver software de saúde tranquilo e que respeita a privacidade.\n\nO feedback é lido pessoalmente e ajuda a orientar o rumo da app.',
			'settings.about.developer.website' => 'Site',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Aprecia o ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'O seu feedback ajuda a tornar o ${appLabel} melhor para todos.',
			'settings.about.feedback.rateApp' => 'Avaliar na Play Store',
			'settings.about.feedback.sendFeedback' => 'Enviar feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Mantenha-se no caminho com lembretes',
			'reminders.description' => 'Receba lembretes suaves para registar as suas refeições e manter a consistência nos seus objetivos nutricionais',
			'reminders.notificationsEnabled' => 'Notificações ativadas',
			'reminders.notificationsDisabled' => 'Notificações desativadas',
			'reminders.enabledSubtitle' => 'Receberá lembretes de refeições',
			'reminders.disabledSubtitle' => 'Ative as notificações para receber lembretes de refeições',
			'reminders.mealReminders' => 'Lembretes de refeições',
			'reminders.breakfast' => 'Pequeno-almoço',
			'reminders.lunch' => 'Almoço',
			'reminders.dinner' => 'Jantar',
			'reminders.snack' => 'Lanche',
			'reminders.unknown' => 'Desconhecido',
			'reminders.change' => 'Alterar',
			'reminders.enableNotifications' => 'Ativar notificações',
			'reminders.skipForNow' => 'Ignorar por agora',
			'reminders.saveChanges' => 'Guardar alterações',
			'reminders.enabledSuccessfully' => 'Notificações ativadas com sucesso!',
			'reminders.permissionDenied' => 'Permissão para notificações negada',
			'reminders.errorEnabling' => ({required Object error}) => 'Erro ao ativar notificações: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Erro ao concluir a configuração: ${error}',
			'notifications.breakfast.title' => 'Hora do pequeno‑almoço! 🍳',
			'notifications.breakfast.body' => 'Não se esqueça de registar o seu pequeno‑almoço',
			'notifications.lunch.title' => 'Hora do almoço! 🥗',
			'notifications.lunch.body' => 'É hora de registar o seu almoço',
			'notifications.dinner.title' => 'Hora do jantar! 🍽️',
			'notifications.dinner.body' => 'Não se esqueça de registar o seu jantar',
			'notifications.snack.title' => 'Hora do lanche! 🍎',
			'notifications.snack.body' => 'Hora de um lanche saudável',
			'notifications.test.title' => 'Notificação de teste',
			'login.title' => 'Iniciar sessão',
			'login.signInWithGoogle' => 'Iniciar sessão com Google',
			'login.signInFailed' => 'O início de sessão com Google falhou ou foi cancelado.',
			'disclaimer.pleaseNote' => 'Tenha em atenção',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} fornece informação nutricional estimada. A precisão depende do que indicar e das variações dos alimentos. Use como orientação, não como fonte definitiva. Consulte um profissional para aconselhamento dietético personalizado.',
			'disclaimer.snap.portionSize.title' => 'Tamanho da porção',
			'disclaimer.snap.portionSize.description' => 'A precisão das estimativas depende fortemente de avaliar corretamente o tamanho da porção.',
			'disclaimer.snap.preparationMethods.title' => 'Métodos de preparação',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Os métodos de confeção podem alterar significativamente o conteúdo nutricional dos alimentos. As estimativas do ${appLabel} podem não refletir sempre essas variações.',
			'disclaimer.snap.ingredients.title' => 'Ingredientes',
			'disclaimer.snap.ingredients.description' => 'Pratos complexos com muitos ingredientes ocultos podem conduzir a estimativas menos precisas.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitações da base de dados',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'A base de dados de alimentos do ${appLabel} é extensa, mas pode não incluir todos os alimentos ou variações existentes.',
			'disclaimer.weightEstimate.title' => 'Sobre a estimativa de peso',
			_ => null,
		} ?? switch (path) {
			'disclaimer.weightEstimate.description' => 'A projeção de alteração de peso é uma estimativa teórica baseada no modelo simples de calorias ingeridas vs. calorias gastas. Destina‑se apenas a orientação motivacional, não como previsão do seu peso real.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Precisão das calorias',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Esta estimativa é tão precisa quanto o registo do seu consumo e despesa calórica. Um registo incorreto resultará numa projeção imprecisa.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Fatores biológicos',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'A perda/ganho de peso real é influenciada pelo metabolismo, hormonas, sono, stress, hidratação e outros fatores individuais que o ${appLabel} não consegue medir.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Peso da água e flutuações',
			'disclaimer.weightEstimate.waterWeight.description' => 'O peso diário normal pode flutuar significativamente devido à retenção de água, digestão e horários. A estimativa não tem em conta essas variações diárias.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Orientação profissional',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Não utilize esta estimativa para tomar decisões médicas. Consulte sempre um profissional de saúde ou nutricionista registado para aconselhamento personalizado de gestão de peso.',
			'disclaimer.healthMetrics.description' => 'Estas métricas ajudam a compreender as necessidades energéticas do seu corpo e orientam os seus objetivos nutricionais.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Taxa Metabólica Basal (BMR) é o número de calorias que o seu corpo gasta em repouso para manter funções básicas como respirar e a circulação. O BMR depende da sua idade, sexo, altura e peso. Um BMR mais elevado significa que o seu corpo queima mais calorias em repouso, muitas vezes devido a maior massa muscular, idade mais jovem ou ser do sexo masculino. Um BMR mais baixo tipicamente indica menos massa muscular, idade mais avançada ou ser do sexo feminino.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Despesas Energéticas Diárias Totais (TDEE) é o total de calorias que gasta por dia, incluindo o seu BMR mais as calorias gastas em atividade física e movimento diário. O TDEE depende do seu BMR e do nível de atividade. Um TDEE mais alto significa que queima mais calorias no total, geralmente por ser mais ativo ou ter um BMR mais elevado. Um TDEE mais baixo sugere menos atividade diária ou um BMR inferior.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Objetivo Diário',
			'disclaimer.healthMetrics.dailyGoal.description' => 'O Objetivo Diário é a ingestão calórica recomendada com base no seu TDEE e objetivo de peso. Para perda de peso, consome menos calorias do que o seu TDEE. Para manutenção, iguala o seu TDEE. Para ganho de peso, consome mais calorias do que o seu TDEE. Isto ajuda a alcançar a alteração de peso desejada a um ritmo saudável.',
			'disclaimer.calorieExpenditure.title' => 'Estimativa de Despesa Calórica',
			'disclaimer.calorieExpenditure.description' => 'Quando os dados do Health Connect não estão disponíveis, estimamos as calorias gastas hoje usando a sua Taxa Metabólica Basal (BMR) e o nível de atividade (TDEE), ajustando para a parte do dia que já passou.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Como a estimativa é calculada',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Calculamos o seu TDEE (com base no seu perfil) e multiplicamo‑lo pela fração do dia decorrido (horas + minutos) / 24 para estimar as calorias gastas até ao momento.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Orientação profissional',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Não utilize esta estimativa para tomar decisões médicas. Consulte sempre um profissional de saúde ou nutricionista registado para aconselhamento personalizado de gestão de peso.',
			'localNutritionPhase4.nutritionBundled' => 'Nutrition matched from the downloaded USDA pack',
			'localNutritionPhase4.nutritionCached' => 'Nutrition matched from the on-device USDA cache',
			'localNutritionPhase4.nutritionMixed' => 'Nutrition combined from downloaded, cached, and remote USDA rows',
			'localNutritionPhase4.calculationLocal' => 'Calories and macros calculated on this device',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: downloaded USDA pack',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: on-device USDA cache',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: USDA row fetched through Calorify',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: deterministic nutrition constant',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · dataset ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Smaller',
			'localNutritionPhase4.portionEstimated' => 'Estimated',
			'localNutritionPhase4.portionLarger' => 'Larger',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Which portion was closest for ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Which meal was this?',
			'localNutritionPhase4.localNutritionTip' => 'Calculated from verified local nutrition data.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Download nutrition data',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Local nutrition data is not available for this app release.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'No verified nutrition pack is downloaded.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Downloading and verifying nutrition data…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Pack ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} cached USDA rows · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Check for update',
			'localNutritionPhase4.offlineNutritionClear' => 'Clear local nutrition data',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Clear local nutrition data?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Clear data',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Could not download and verify local nutrition data: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Local nutrition data cleared',
			'common.close' => 'Fechar',
			'common.kContinue' => 'Continuar',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Está a gostar de ${appLabel}?',
			'feedbackRating.yes' => 'Sim, estou a gostar',
			'feedbackRating.no' => 'Não muito',
			'feedbackRating.rateStepHeading' => 'Avaliar na Play Store',
			'feedbackRating.emailStepHeading' => 'Enviar feedback por email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Uma avaliação rápida ajuda outras pessoas a encontrar o ${appLabel} e mantém o desenvolvimento em andamento. Pode deixar uma avaliação rápida?',
			'feedbackRating.shareFeedbackViaEmail' => 'O seu feedback molda o que vem a seguir — lemos todas as mensagens. Gostaria de partilhar os seus pensamentos por email?',
			'feedbackRating.rateCta' => 'Avaliar na Play Store',
			'feedbackRating.maybeLater' => 'Talvez mais tarde',
			'feedbackRating.sendFeedback' => 'Enviar feedback',
			'feedbackRating.noThanks' => 'Não, obrigado',
			'feedbackRating.aboutUsDescription' => 'Feito com cuidado por uma pequena equipa. Estamos focados na privacidade, simplicidade e em ajudar a criar melhores hábitos alimentares.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Curioso sobre quem está por trás do ${appLabel}? Veja ',
			'feedbackRating.aboutUsLinkLabel' => 'Sobre nós',
			'feedbackRating.thankYouMessage' => 'Obrigado! Voltaremos a perguntar mais tarde.',
			'health.syncFailed' => 'Não foi possível sincronizar com o Health Connect',
			'health.mealSynced' => 'Refeição sincronizada com o Health Connect',
			_ => null,
		};
	}
}
