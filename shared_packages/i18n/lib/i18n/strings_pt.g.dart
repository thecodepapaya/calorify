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
class TranslationsPt with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPt _root = this; // ignore: unused_field

	@override 
	TranslationsPt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPt(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Português';
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
	@override late final _TranslationsCommonPt common = _TranslationsCommonPt._(_root);
	@override late final _TranslationsFeedbackRatingPt feedbackRating = _TranslationsFeedbackRatingPt._(_root);
	@override late final _TranslationsHealthPt health = _TranslationsHealthPt._(_root);
}

// Path: errors
class _TranslationsErrorsPt implements TranslationsErrorsEn {
	_TranslationsErrorsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Erro ao carregar dados do perfil';
	@override String get somethingWentWrong => 'Algo deu errado.';
}

// Path: onboarding
class _TranslationsOnboardingPt implements TranslationsOnboardingEn {
	_TranslationsOnboardingPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bem-vindo ao ${appLabel}';
	@override String get subtitle => 'Seu companheiro pessoal de nutrição com tecnologia de IA';
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
class _TranslationsTabsPt implements TranslationsTabsEn {
	_TranslationsTabsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Painel';
	@override String get history => 'Histórico';
}

// Path: home
class _TranslationsHomePt implements TranslationsHomeEn {
	_TranslationsHomePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
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
class _TranslationsHistoryPt implements TranslationsHistoryEn {
	_TranslationsHistoryPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Nenhuma refeição registrada';
	@override String get emptyMessage => 'Tire uma foto da sua última refeição para registrar aqui.';
	@override String get today => 'Hoje';
	@override String get yesterday => 'Ontem';
}

// Path: meal
class _TranslationsMealPt implements TranslationsMealEn {
	_TranslationsMealPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Oh não!';
	@override String get delete => 'Excluir';
	@override String get editMeal => 'Editar Refeição';
	@override String get addMeal => 'Adicionar Refeição';
	@override String get saveMeal => 'Salvar Refeição';
	@override String get save => 'Salvar';
	@override String get mealName => 'Nome da Refeição';
	@override String get mealNameHint => 'Ex.: Ovos mexidos com torrada';
	@override String get mealQuantity => 'Quantidade da Refeição';
	@override String get mealQuantityHint => 'ex.: 1 tigela, 2 fatias';
	@override String get timeOfMeal => 'Hora da Refeição';
	@override String get timeOfMealHint => 'Selecione o horário em que teve sua refeição';
	@override String get mealType => 'Tipo de Refeição';
	@override late final _TranslationsMealNutritionPt nutrition = _TranslationsMealNutritionPt._(_root);
	@override late final _TranslationsMealDeleteConfirmationPt deleteConfirmation = _TranslationsMealDeleteConfirmationPt._(_root);
	@override String get addedToLog => 'Refeição adicionada ao seu registro!';
	@override String couldNotAdd({required Object error}) => 'Não foi possível adicionar a refeição: ${error}';
	@override String get savedSuccessfully => 'Refeição adicionada com sucesso!';
	@override String get updatedSuccessfully => 'Refeição atualizada com sucesso!';
	@override String errorSaving({required Object error}) => 'Erro ao salvar a refeição: ${error}';
	@override String get removedFromFavorites => 'Removido dos favoritos!';
	@override String get savedAsFavorite => 'Refeição salva como favorita!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Não foi possível atualizar o favorito: ${error}';
	@override String failedToProcess({required Object error}) => 'Falha ao processar: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Falha ao processar a imagem: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Erro ao comprimir a imagem: ${error}';
	@override String get failedToSave => 'Falha ao salvar os dados. Por favor, tente novamente.';
	@override String get skip => 'Pular';
	@override late final _TranslationsMealVariationPt variation = _TranslationsMealVariationPt._(_root);
}

// Path: favorites
class _TranslationsFavoritesPt implements TranslationsFavoritesEn {
	_TranslationsFavoritesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritos';
	@override String get empty => 'Ainda não há refeições favoritas.';
}

// Path: profile
class _TranslationsProfilePt implements TranslationsProfileEn {
	_TranslationsProfilePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get noProfileData => 'Nenhum dado de perfil encontrado';
	@override String get yourProfile => 'Seu Perfil';
	@override String get viewAndManage => 'Visualizar e gerenciar suas informações de saúde';
	@override late final _TranslationsProfileSectionsPt sections = _TranslationsProfileSectionsPt._(_root);
	@override String get gender => 'Gênero';
	@override String get height => 'Altura';
	@override String get weight => 'Peso';
	@override String get age => 'Idade';
	@override String get weightGoal => 'Objetivo de Peso';
	@override String get targetWeight => 'Peso Alvo';
	@override String get activityLevel => 'Nível de Atividade';
	@override String get healthMetrics => 'Métricas de Saúde';
	@override String get notSet => 'Não definido';
	@override String get years => 'anos';
	@override String get updatedSuccessfully => 'Perfil atualizado com sucesso!';
	@override late final _TranslationsProfileCalculatedValuesPt calculatedValues = _TranslationsProfileCalculatedValuesPt._(_root);
}

// Path: healthScore
class _TranslationsHealthScorePt implements TranslationsHealthScoreEn {
	_TranslationsHealthScorePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pontuação de Saúde';
	@override String get whyThisScore => 'Por que essa pontuação?';
	@override String get note => 'Essa pontuação é uma estimativa da IA com base nos ingredientes identificados e na densidade nutricional. Sempre consulte um profissional para obter conselhos dietéticos.';
	@override String get unhealthy => 'Não saudável';
	@override String get healthy => 'Saudável';
	@override String get neutral => 'Neutro';
}

// Path: editProfile
class _TranslationsEditProfilePt implements TranslationsEditProfileEn {
	_TranslationsEditProfilePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar Perfil';
	@override late final _TranslationsEditProfileSectionsPt sections = _TranslationsEditProfileSectionsPt._(_root);
	@override String get gender => 'Gênero';
	@override String get dateOfBirth => 'Data de Nascimento';
	@override String get height => 'Altura';
	@override String get weight => 'Peso';
	@override String get weightGoal => 'Objetivo de Peso';
	@override String get activityLevel => 'Nível de Atividade';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Métrico (cm)';
	@override String get imperialFtIn => 'Imperial (ft/polegada)';
	@override String get metricKg => 'Métrico (kg)';
	@override String get imperialLbs => 'Imperial (lbs)';
	@override late final _TranslationsEditProfileGendersPt genders = _TranslationsEditProfileGendersPt._(_root);
	@override late final _TranslationsEditProfileWeightGoalsPt weightGoals = _TranslationsEditProfileWeightGoalsPt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsPt activityLevels = _TranslationsEditProfileActivityLevelsPt._(_root);
}

// Path: settings
class _TranslationsSettingsPt implements TranslationsSettingsEn {
	_TranslationsSettingsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configurações';
	@override late final _TranslationsSettingsSectionsPt sections = _TranslationsSettingsSectionsPt._(_root);
	@override late final _TranslationsSettingsEditProfilePt editProfile = _TranslationsSettingsEditProfilePt._(_root);
	@override late final _TranslationsSettingsLanguagePt language = _TranslationsSettingsLanguagePt._(_root);
	@override late final _TranslationsSettingsHeightUnitPt heightUnit = _TranslationsSettingsHeightUnitPt._(_root);
	@override late final _TranslationsSettingsWeightUnitPt weightUnit = _TranslationsSettingsWeightUnitPt._(_root);
	@override late final _TranslationsSettingsMealRemindersPt mealReminders = _TranslationsSettingsMealRemindersPt._(_root);
	@override late final _TranslationsSettingsThemePt theme = _TranslationsSettingsThemePt._(_root);
	@override late final _TranslationsSettingsSendFeedbackPt sendFeedback = _TranslationsSettingsSendFeedbackPt._(_root);
	@override late final _TranslationsSettingsClearAllDataPt clearAllData = _TranslationsSettingsClearAllDataPt._(_root);
	@override late final _TranslationsSettingsDebugOptionsPt debugOptions = _TranslationsSettingsDebugOptionsPt._(_root);
	@override String get developerModeEnabled => 'Modo de desenvolvedor habilitado!';
	@override late final _TranslationsSettingsHealthConnectPt healthConnect = _TranslationsSettingsHealthConnectPt._(_root);
	@override late final _TranslationsSettingsAboutPt about = _TranslationsSettingsAboutPt._(_root);
	@override late final _TranslationsSettingsAppInfoPt appInfo = _TranslationsSettingsAppInfoPt._(_root);
}

// Path: reminders
class _TranslationsRemindersPt implements TranslationsRemindersEn {
	_TranslationsRemindersPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mantenha-se no caminho certo com lembretes';
	@override String get description => 'Receba lembretes gentis para registrar suas refeições e manter-se consistente com suas metas de nutrição';
	@override String get notificationsEnabled => 'Notificações Ativadas';
	@override String get notificationsDisabled => 'Notificações Desativadas';
	@override String get enabledSubtitle => 'Você receberá lembretes de refeição';
	@override String get disabledSubtitle => 'Ative as notificações para receber lembretes de refeição';
	@override String get mealReminders => 'Lembretes de Refeição';
	@override String get breakfast => 'Café da Manhã';
	@override String get lunch => 'Almoço';
	@override String get dinner => 'Jantar';
	@override String get snack => 'Lanche';
	@override String get unknown => 'Desconhecido';
	@override String get change => 'Alterar';
	@override String get enableNotifications => 'Ativar Notificações';
	@override String get skipForNow => 'Pular por agora';
	@override String get saveChanges => 'Salvar Alterações';
	@override String get enabledSuccessfully => 'Notificações ativadas com sucesso!';
	@override String get permissionDenied => 'Permissão de notificação negada';
	@override String errorEnabling({required Object error}) => 'Erro ao ativar notificações: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Erro ao finalizar configuração: ${error}';
}

// Path: notifications
class _TranslationsNotificationsPt implements TranslationsNotificationsEn {
	_TranslationsNotificationsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastPt breakfast = _TranslationsNotificationsBreakfastPt._(_root);
	@override late final _TranslationsNotificationsLunchPt lunch = _TranslationsNotificationsLunchPt._(_root);
	@override late final _TranslationsNotificationsDinnerPt dinner = _TranslationsNotificationsDinnerPt._(_root);
	@override late final _TranslationsNotificationsSnackPt snack = _TranslationsNotificationsSnackPt._(_root);
	@override late final _TranslationsNotificationsTestPt test = _TranslationsNotificationsTestPt._(_root);
}

// Path: login
class _TranslationsLoginPt implements TranslationsLoginEn {
	_TranslationsLoginPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Entrar';
	@override String get signInWithGoogle => 'Entrar com o Google';
	@override String get signInFailed => 'Falha ao fazer login com o Google ou foi cancelado.';
}

// Path: disclaimer
class _TranslationsDisclaimerPt implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Por favor, Note';
	@override late final _TranslationsDisclaimerSnapPt snap = _TranslationsDisclaimerSnapPt._(_root);
	@override late final _TranslationsDisclaimerWeightEstimatePt weightEstimate = _TranslationsDisclaimerWeightEstimatePt._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsPt healthMetrics = _TranslationsDisclaimerHealthMetricsPt._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditurePt calorieExpenditure = _TranslationsDisclaimerCalorieExpenditurePt._(_root);
}

// Path: common
class _TranslationsCommonPt implements TranslationsCommonEn {
	_TranslationsCommonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get close => 'Fechar';
	@override String get kContinue => 'Continuar';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingPt implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Você está gostando do ${appLabel}?';
	@override String get yes => 'Sim, estou gostando.';
	@override String get no => 'Na verdade, não.';
	@override String get rateStepHeading => 'Avaliar na Play Store';
	@override String get emailStepHeading => 'Enviar feedback por e-mail';
	@override String soloDevMessage({required Object appLabel}) => 'Uma avaliação rápida ajuda outras pessoas a encontrar ${appLabel} e mantém o desenvolvimento em andamento. Você poderia dedicar um momento para deixar uma avaliação?';
	@override String get shareFeedbackViaEmail => 'Seu feedback orienta os próximos passos — lemos todas as mensagens. Gostaria de compartilhar suas impressões por e-mail?';
	@override String get rateCta => 'Avaliar na Play Store';
	@override String get maybeLater => 'Talvez mais tarde';
	@override String get sendFeedback => 'Enviar feedback';
	@override String get noThanks => 'Não, obrigado';
	@override String get aboutUsDescription => 'Feito com carinho por uma pequena equipe. Priorizamos a privacidade, a simplicidade e ajudar você a desenvolver hábitos alimentares mais saudáveis.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Curioso para saber quem está por trás do ${appLabel}? Veja ';
	@override String get aboutUsLinkLabel => 'Sobre nós';
	@override String get thankYouMessage => 'Obrigado! Perguntaremos novamente mais tarde.';
}

// Path: health
class _TranslationsHealthPt implements TranslationsHealthEn {
	_TranslationsHealthPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Não foi possível sincronizar com o Health Connect';
	@override String get mealSynced => 'Refeição sincronizada com o Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesPt implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionPt foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionPt._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisPt aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisPt._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationPt healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationPt._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderPt implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual é o seu gênero?';
	@override String get description => 'O gênero nos ajuda a calcular com precisão sua taxa de metabolismo basal (TMB).';
	@override String get next => 'Próximo';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightPt implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual é a sua altura?';
	@override String get description => 'Sua altura nos ajuda a calcular seu IMC e necessidades energéticas com precisão.';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Imperial';
	@override String get next => 'Próximo';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightPt implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Qual é o seu peso atual?';
	@override String get currentDescription => 'Seu peso atual é essencial para personalizar suas metas diárias.';
	@override String get targetTitle => 'Qual é o seu peso desejado?';
	@override String get targetDescription => 'Definir um peso desejado nos ajuda a determinar seu plano de longo prazo.';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Imperial';
	@override String get next => 'Próximo';
}

// Path: onboarding.age
class _TranslationsOnboardingAgePt implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quando é seu aniversário?';
	@override String get description => 'Sua idade nos ajuda a calcular suas necessidades calóricas com precisão.';
	@override String get next => 'Próximo';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScalePt implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScalePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Abaixo do peso';
	@override String get healthy => 'Saudável';
	@override String get overweight => 'Acima do peso';
	@override String get obese => 'Obeso';
	@override late final _TranslationsOnboardingBmiScaleCategoriesPt categories = _TranslationsOnboardingBmiScaleCategoriesPt._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesPt messages = _TranslationsOnboardingBmiScaleMessagesPt._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalPt implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual é o seu objetivo?';
	@override String get description => 'Escolha o objetivo que melhor descreve o que você deseja alcançar';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelPt implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quão ativo você é?';
	@override String get description => 'Isso nos ajuda a calcular suas necessidades calóricas diárias com mais precisão';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectPt implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conecte-se com o Health Connect';
	@override String get description => 'Sincronize seus dados de saúde para melhores insights e rastreamento automático de calorias';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingPt automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingPt._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsPt progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsPt._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationPt seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationPt._(_root);
	@override String get connected => 'Health Connect Conectado';
	@override String get notConnected => 'Health Connect Não Conectado';
	@override String get setup => 'Configurar Health Connect';
	@override String get skipForNow => 'Pular por agora';
	@override String get statusConnected => 'Health Connect está conectado.';
	@override String get statusSuccess => 'Health Connect foi conectado com sucesso!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permissão negada. Por favor, habilite as permissões do Health Connect nas configurações do seu telefone para o ${appLabel}.';
	@override String statusError({required Object error}) => 'Erro ao configurar o Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementPt implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessPt trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessPt._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfilePt healthProfile = _TranslationsOnboardingReinforcementHealthProfilePt._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestylePt goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestylePt._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalPt implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Defina sua Meta Diária';
	@override String get titleSet => 'Sua Meta Diária';
	@override String get description => 'Pronto para iniciar sua jornada de bem-estar? Defina seu alvo calórico diário abaixo para dar início ao seu progresso.';
	@override String get descriptionSet => 'Seu rumo está definido! Este é seu alvo calórico diário para guiar você.';
	@override String get yourGoal => 'Sua Meta';
	@override String get goal => 'Meta';
	@override String get dailyCalories => 'Calorias diárias (kcal)';
	@override String get setGoal => 'Definir Meta';
	@override String get intake => 'Ingestão';
	@override String get burned => 'Queimadas';
	@override String get weightImpact => 'Impacto no Peso';
	@override String get estLoss => 'Est. perda de';
	@override String get estGain => 'Est. ganho de';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryPt implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Resumo Diário';
	@override String get calories => 'Calorias';
	@override String get carbs => 'Carboidratos';
	@override String get protein => 'Proteínas';
	@override String get fat => 'Gorduras';
	@override String get fiber => 'Fibras';
	@override String get grams => 'gramas';
	@override String get chartAccessibilityLabel => 'Gráfico de macronutrientes';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressPt implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Distribuição de Macronutrientes de Hoje';
	@override String get target => 'Meta';
	@override String get current => 'Atual';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryPt implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Histórico de Macronutrientes de 7 Dias';
	@override String get noHistoryYet => 'Sem histórico ainda';
	@override String get startLogging => 'Comece a registrar refeições para ver suas\ntendências de macronutrientes aqui';
}

// Path: home.mealLog
class _TranslationsHomeMealLogPt implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Refeições Registradas';
	@override String get emptyMessage => 'Tire uma foto da sua última refeição para registrar aqui.';
	@override String get noMealsToday => 'Nenhuma refeição registrada hoje';
	@override String get seeAllMeals => 'Ver todas as refeições';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionPt implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adicionar Rápido com IA';
	@override String get description => 'Descreva sua refeição e deixe a IA cuidar dos detalhes.';
	@override String get hint => 'ex.: Para o café da manhã, eu comi uma tigela grande de aveia com uma banana fatiada e uma medida de whey ...';
	@override String get analyzeMeal => 'Analisar refeição';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsPt implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Refeições Favoritas';
	@override String get description => 'Adicione rapidamente uma de suas refeições favoritas.';
	@override String get noFavorites => 'Ainda não há refeições favoritas.';
	@override String get addFavoriteHint => 'Clique na estrela em uma refeição para marcá-la como favorita.';
	@override String get seeAll => 'Ver tudo';
	@override String get add => 'Adicionar';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapPt implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tire uma Foto e Rastreie Sua Refeição';
	@override String get description => 'Use sua câmera para tirar uma foto da sua comida para análise da IA.';
	@override String get openCamera => 'Abrir Câmera';
	@override String get gallery => 'Galeria';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthPt implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizar com o Health Connect';
	@override String get description => 'Sincronize seus dados de nutrição com o Health Connect';
	@override String get install => 'Instalar';
	@override String get connect => 'Conectar';
}

// Path: meal.nutrition
class _TranslationsMealNutritionPt implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorias';
	@override String get carbs => 'Carboidratos (g)';
	@override String get protein => 'Proteínas (g)';
	@override String get fat => 'Gorduras (g)';
	@override String get fiber => 'Fibras (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationPt implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Excluir Refeição';
	@override String get message => 'Tem certeza de que deseja excluir este registro de refeição?';
	@override String get cancel => 'Cancelar';
	@override String get delete => 'Excluir';
}

// Path: meal.variation
class _TranslationsMealVariationPt implements TranslationsMealVariationEn {
	_TranslationsMealVariationPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Pergunta ${current} de ${total}';
	@override String get noVariationsAvailable => 'Não há variações disponíveis';
}

// Path: profile.sections
class _TranslationsProfileSectionsPt implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERFIL';
	@override String get basicInformation => 'INFORMAÇÕES BÁSICAS';
	@override String get goalsAndActivity => 'METAS E ATIVIDADE';
	@override String get calculatedValues => 'VALORES CALCULADOS';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesPt implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'TMB';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Meta Diária';
	@override String get calPerDay => 'cal/dia';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsPt implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMAÇÕES PESSOAIS';
	@override String get physicalMeasurements => 'MEDIDAS FÍSICAS';
	@override String get goalsAndActivity => 'METAS E ATIVIDADE';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersPt implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get male => 'Masculino';
	@override String get female => 'Feminino';
	@override String get other => 'Outro';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsPt implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightPt loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightPt._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightPt maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightPt._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightPt gainWeight = _TranslationsEditProfileWeightGoalsGainWeightPt._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsPt implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryPt sedentary = _TranslationsEditProfileActivityLevelsSedentaryPt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActivePt lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActivePt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActivePt moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActivePt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActivePt veryActive = _TranslationsEditProfileActivityLevelsVeryActivePt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActivePt extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActivePt._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsPt implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERFIL';
	@override String get localization => 'LOCALIZAÇÃO';
	@override String get notifications => 'NOTIFICAÇÕES';
	@override String get healthConnect => 'CONEXÃO DE SAÚDE';
	@override String get supportAndLegal => 'SUPORTE E LEGAL';
	@override String get about => 'SOBRE';
	@override String get dangerZone => 'ZONA PERIGOSA';
	@override String get developer => 'DESENVOLVEDOR';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfilePt implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfilePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar Perfil';
	@override String get subtitle => 'Atualize suas informações pessoais';
}

// Path: settings.language
class _TranslationsSettingsLanguagePt implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguagePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Idioma';
	@override String get subtitle => 'Escolha seu idioma preferido';
	@override String get searchHint => 'Pesquisar idiomas...';
	@override String get noResults => 'Nenhum resultado encontrado';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitPt implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidade de Altura';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitPt implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidade de Peso';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersPt implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lembretes de Refeição';
	@override String get subtitle => 'Mantenha-se no caminho certo com alertas pontuais';
}

// Path: settings.theme
class _TranslationsSettingsThemePt implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Claro';
	@override String get dark => 'Escuro';
	@override String get system => 'Sistema';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackPt implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Enviar Feedback';
	@override String subtitle({required Object appLabel}) => 'Ajude-nos a melhorar o ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Feedback do Aplicativo ${appLabel}';
	@override String get emailBodyPrefix => 'Por favor, forneça seu feedback abaixo:';
	@override String get appVersion => 'Versão do Aplicativo';
	@override String get device => 'Dispositivo';
	@override String get osVersion => 'Versão do SO';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataPt implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limpar Todos os Dados';
	@override String get subtitle => 'Excluir irreversivelmente todas as suas informações';
	@override String get confirmationTitle => 'Limpar Todos os Dados?';
	@override String get confirmationMessage => 'Esta ação não pode ser desfeita. Todas as suas refeições registradas, favoritos e configurações de perfil serão excluídos permanentemente.';
	@override String get cancel => 'Cancelar';
	@override String get clearEverything => 'Limpar Tudo';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsPt implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opções de Depuração';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectPt implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conexão de Saúde';
	@override String get subtitle => 'Visualize e gerencie permissões';
	@override late final _TranslationsSettingsHealthConnectUnavailablePt unavailable = _TranslationsSettingsHealthConnectUnavailablePt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsPt permissions = _TranslationsSettingsHealthConnectPermissionsPt._(_root);
	@override String get managePermissions => 'Gerenciar Permissões';
	@override String get openSettings => 'Abrir Configurações do Health Connect';
	@override String get requestPermissions => 'Solicitar Permissões';
	@override String get permissionRequestCancelledOrFailed => 'A solicitação de permissões foi cancelada ou falhou. Tente novamente ou conceda as permissões manualmente nas configurações do Health Connect.';
	@override String get permissionRequestFailed => 'Não foi possível solicitar permissões. Tente novamente ou conceda as permissões manualmente nas configurações do Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutPt implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobre';
	@override String get tagline => 'Consciência de calorias rápida, gratuita e com foco em privacidade';
	@override late final _TranslationsSettingsAboutOurStoryPt ourStory = _TranslationsSettingsAboutOurStoryPt._(_root);
	@override late final _TranslationsSettingsAboutPrivacyPt privacy = _TranslationsSettingsAboutPrivacyPt._(_root);
	@override late final _TranslationsSettingsAboutDeveloperPt developer = _TranslationsSettingsAboutDeveloperPt._(_root);
	@override late final _TranslationsSettingsAboutFeedbackPt feedback = _TranslationsSettingsAboutFeedbackPt._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoPt implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Compilação ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastPt implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do Café da Manhã! 🍳';
	@override String get body => 'Não se esqueça de registrar seu café da manhã';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchPt implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do Almoço! 🥗';
	@override String get body => 'Hora de registrar seu almoço';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerPt implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do Jantar! 🍽️';
	@override String get body => 'Não se esqueça de registrar seu jantar';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackPt implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do Lanche! 🍎';
	@override String get body => 'Hora de um lanche saudável';
}

// Path: notifications.test
class _TranslationsNotificationsTestPt implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificação de Teste';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapPt implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} fornece informações nutricionais estimadas. A precisão depende da sua entrada e das variações dos alimentos. Use como um guia, não como uma fonte definitiva. Consulte um profissional para obter conselhos dietéticos personalizados.';
	@override late final _TranslationsDisclaimerSnapPortionSizePt portionSize = _TranslationsDisclaimerSnapPortionSizePt._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsPt preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsPt._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsPt ingredients = _TranslationsDisclaimerSnapIngredientsPt._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsPt databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsPt._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimatePt implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimatePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobre a Estimativa de Peso';
	@override String get description => 'A mudança de peso projetada é uma estimativa teórica baseada no simples modelo de calorias ingeridas vs. calorias queimadas. É destinada apenas para orientação motivacional, não como previsão do seu peso real.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyPt calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyPt._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsPt biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsPt._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightPt waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightPt._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidancePt professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidancePt._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsPt implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get description => 'Essas métricas ajudam você a entender as necessidades energéticas do seu corpo e orientam suas metas nutricionais.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrPt bmr = _TranslationsDisclaimerHealthMetricsBmrPt._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeePt tdee = _TranslationsDisclaimerHealthMetricsTdeePt._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalPt dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalPt._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditurePt implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditurePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimativa de gasto calórico';
	@override String get description => 'Quando os dados do Health Connect não estão disponíveis, estimamos as calorias gastas hoje usando sua Taxa Metabólica Basal (BMR) e seu nível de atividade (TDEE), ajustando para a parte do dia que já passou.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedPt howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedPt._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePt professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePt._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionPt implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconhecimento Inteligente de Alimentos';
	@override String get description => 'Tire uma foto e deixe a IA identificar sua refeição';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisPt implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análise por IA';
	@override String get description => 'Obtenha fatos nutricionais instantâneos a partir de suas descrições';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationPt implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integração com Saúde';
	@override String get description => 'Conecte-se ao Health Connect para obter melhores insights';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesPt implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Abaixo do peso';
	@override String get healthyWeight => 'Peso saudável';
	@override String get overweight => 'Acima do peso';
	@override String get obese => 'Obeso';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesPt implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podemos ajudá-lo a construir um plano saudável para alcançar um peso equilibrado com refeições ricas em nutrientes.';
	@override String get healthy => 'Ótimo trabalho! Você está em uma faixa saudável. Vamos ajudá-lo a manter sua vitalidade e níveis de energia.';
	@override String overweight({required Object appLabel}) => '${appLabel} simplificará sua jornada com rastreamento impulsionado por IA para ajudá-lo a alcançar seu objetivo com conforto.';
	@override String get obese => 'Estamos aqui para apoiá-lo com orientações personalizadas e estratégias sustentáveis para suas metas de saúde.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingPt implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rastreamento Automático de Calorias';
	@override String get description => 'Rastreie as calorias queimadas a partir de seus aplicativos de fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsPt implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Insights de Progresso';
	@override String get description => 'Obtenha insights detalhados sobre suas tendências de saúde';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationPt implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integração Sem Costura';
	@override String get description => 'Sincronize dados dos seus aplicativos de saúde favoritos';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessPt implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Você Não Está Sozinho';
	@override String get genericMessage => 'Pesquisas mostram que o rastreamento consistente é o principal indicador de sucesso a longo prazo.';
	@override String personalizedMessage({required Object gender, required Object age, required Object goal}) => 'Para um(a) ${gender} de ${age} anos buscando ${goal}, o rastreamento consistente é o principal indicador de sucesso.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} torna 10 vezes mais fácil do que fazer isso manualmente.';
	@override String get getStartedTitle => 'Pronto para começar?';
	@override String get tipPhoto => 'Tire uma foto das suas refeições para uma análise instantânea';
	@override String get tipConsistency => 'Registre seus dados com consistência para ver avanços significativos';
	@override String get tipProgress => 'Acompanhe seu progresso diariamente para se manter motivado';
	@override String get button => 'Vamos lá';
	@override String get defaultGender => 'indivíduo';
	@override String get defaultGoal => 'você mais saudável';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfilePt implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfilePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seu Perfil de Saúde';
	@override String bmiDescription({required Object bmi}) => 'Com base em suas métricas, seu IMC é ${bmi}.';
	@override String get finalizeDescription => 'Vamos finalizar seu perfil para personalizar sua experiência.';
	@override String get goalGain => 'ganhar';
	@override String get goalLose => 'perder';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Para alcançar seu objetivo, você precisa ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Você está no seu peso desejado! Vamos ajudá-lo a mantê-lo.';
	@override String get button => 'Vamos lá';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestylePt implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestylePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Excelente Começo!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Você deu o primeiro passo em direção a ${goalText}. Como você está ${activityText}, ${appLabel} ajustará suas metas para combinar com seu estilo de vida.';
	@override String get personalizedTargets => 'Metas calóricas personalizadas';
	@override String get aiMealDetection => 'Detecção de refeição empoderada por IA';
	@override String get macroBreakdowns => 'Distribuições detalhadas de macronutrientes';
	@override String get button => 'Vamos lá';
	@override String get defaultGoal => 'suas metas';
	@override String get defaultActivity => 'ativo';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightPt implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perder Peso';
	@override String get description => 'Crie um déficit calórico para perder peso';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightPt implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Manter Peso';
	@override String get description => 'Mantenha seu peso atual';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightPt implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ganhar Peso';
	@override String get description => 'Crie um superávit calórico para ganhar peso';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryPt implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentário';
	@override String get description => 'Pouco ou nenhum exercício';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActivePt implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActivePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Levemente Ativo';
	@override String get description => 'Exercício leve 1-3 dias/semana';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActivePt implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActivePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderadamente Ativo';
	@override String get description => 'Exercício moderado 3-5 dias/semana';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActivePt implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActivePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Muito Ativo';
	@override String get description => 'Exercício intenso 6-7 dias/semana';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActivePt implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActivePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extremamente Ativo';
	@override String get description => 'Exercício muito intenso, trabalho físico';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailablePt implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailablePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect Indisponível';
	@override String get description => 'O Health Connect não está disponível neste dispositivo. Instale o Health Connect pela Play Store (Android 9+) ou atualize para o Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsPt implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permissões';
	@override String get description => 'As seguintes permissões são solicitadas para oferecer integração com a Conexão de Saúde:';
	@override String get granted => 'Concedido';
	@override String get notGranted => 'Não Concedido';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPt caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadPt nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadPt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWritePt nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWritePt._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryPt implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nossa História';
	@override String content({required Object appLabel}) => '${appLabel} nasceu de uma frustração simples: a maioria dos aplicativos de rastreamento de calorias é excessivamente complicada, exige entrada manual constante, cobra altas taxas de assinatura ou compromete a privacidade.\n\nComo um desenvolvedor independente, queria criar algo mais simples e justo — um aplicativo que use IA para reduzir o esforço, que permaneça rápido e gratuito e que trate seus dados de saúde com respeito.\n\n${appLabel} é o aplicativo que eu gostaria que existisse: sem contas, sem rastreamento, sem anúncios — apenas insights claros e práticos e suas metas de saúde.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyPt implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sua Privacidade Importa';
	@override String get description => 'A privacidade não é uma reflexão tardia — é um princípio de design. Veja o que isso significa na prática:';
	@override String get noAccounts => 'Sem contas necessárias\nUse o aplicativo imediatamente. Sem cadastros, sem identidades.';
	@override String noTracking({required Object appLabel}) => 'Sem rastreamento comportamental\n${appLabel} não monitora sua atividade, não cria perfis de uso e não rastreia você em aplicativos ou sites.';
	@override String noAds({required Object appLabel}) => 'Sem anúncios por design\n${appLabel} foi criado para funcionar sem anúncios ou monetização baseada em dados.';
	@override String get noDataSelling => 'Sem venda de dados\nSeus dados de saúde nunca são vendidos ou compartilhados com terceiros.';
	@override String get localStorage => 'Armazenamento local\nSeus dados permanecem em seu dispositivo.';
	@override String get privacyPolicy => 'Política de Privacidade';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperPt implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desenvolvido por um Desenvolvedor Independente';
	@override String description({required Object appLabel}) => '${appLabel} é construído e mantido por um único desenvolvedor independente focado em criar software de saúde que respeita a privacidade.\n\nO feedback é lido pessoalmente e ajuda a moldar a direção do aplicativo.';
	@override String get website => 'Site';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackPt implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Gostando do ${appLabel}?';
	@override String description({required Object appLabel}) => 'Seu feedback ajuda a tornar o ${appLabel} melhor para todos.';
	@override String get rateApp => 'Avaliar na Play Store';
	@override String get sendFeedback => 'Enviar Feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizePt implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tamanho da Porção';
	@override String get description => 'A precisão das estimativas depende fortemente da sua avaliação correta do tamanho da porção.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsPt implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Métodos de Preparação';
	@override String description({required Object appLabel}) => 'Os métodos de cocção podem alterar significativamente o conteúdo nutricional dos alimentos. As estimativas do ${appLabel} podem não considerar sempre essas variações.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsPt implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredientes';
	@override String get description => 'Pratos complexos com muitos ingredientes ocultos podem levar a estimativas menos precisas.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsPt implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitações do Banco de Dados';
	@override String description({required Object appLabel}) => 'O banco de dados de alimentos do ${appLabel} é extenso, mas pode não incluir todos os itens ou variações alimentares.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyPt implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Precisão das Calorias';
	@override String get description => 'Esta estimativa é tão precisa quanto sua ingestão calórica e despesa rastreadas. Registros imprecisos resultarão em uma projeção imprecisa.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsPt implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fatores Biológicos';
	@override String description({required Object appLabel}) => 'A perda/aumento de peso real é influenciada pelo metabolismo, hormônios, sono, estresse, hidratação e outros fatores individuais que o ${appLabel} não pode medir.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightPt implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Peso de Água & Flutuações';
	@override String get description => 'O peso diário normal pode flutuar significativamente devido à retenção de água, digestão e horário. A estimativa não leva em conta essas mudanças diárias.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidancePt implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidancePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientação Profissional';
	@override String get description => 'Não utilize esta estimativa para tomar decisões médicas. Sempre consulte um profissional de saúde ou nutricionista registrado para obter conselhos personalizados sobre gerenciamento de peso.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrPt implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'TMB';
	@override String get description => 'A Taxa Metabólica Basal (TMB) é o número de calorias que seu corpo queima em repouso para manter funções básicas como respiração e circulação. A TMB depende da sua idade, gênero, altura e peso. Uma TMB mais alta significa que seu corpo queima naturalmente mais calorias em repouso, geralmente devido a mais massa muscular, idade mais jovem ou ser masculino. Uma TMB mais baixa normalmente indica menos massa muscular, idade mais avançada ou ser feminino.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeePt implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'O Gasto Energético Diário Total (TDEE) é o total de calorias que você queima por dia, incluindo sua GEB mais calorias de atividade física e movimento diário. O TDEE depende da sua GEB e nível de atividade. Um TDEE mais alto significa que você queima mais calorias no total, geralmente por ser mais ativo ou ter uma GEB maior. Um TDEE mais baixo sugere menos atividade diária ou uma GEB menor.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalPt implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Meta Diária';
	@override String get description => 'A Meta Diária é sua ingestão calórica recomendada com base no seu TDEE e meta de peso. Para perda de peso, você consome menos calorias do que seu TDEE. Para manutenção do peso, você iguala seu TDEE. Para ganho de peso, você consome mais calorias do que seu TDEE. Isso ajuda você a alcançar a mudança de peso desejada de maneira saudável.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedPt implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Como a estimativa é calculada';
	@override String get description => 'Calculamos seu TDEE (com base no seu perfil) e multiplicamos pela fração do dia que já passou (horas + minutos) / 24 para estimar as calorias gastas até agora.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePt implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientação profissional';
	@override String get description => 'Não use esta estimativa para tomar decisões médicas. Consulte sempre um profissional de saúde ou um nutricionista registrado para obter orientação personalizada sobre manejo/controle de peso.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPt implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ler Calorias Totais Queimadas';
	@override String get description => 'Permite que o aplicativo leia suas calorias totais queimadas da Conexão de Saúde.';
	@override String get usage => 'Essa permissão é utilizada para exibir a queima calórica diária no aplicativo, ajudando você a entender seu gasto energético total ao longo do dia.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadPt implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ler Dados de Nutrição';
	@override String get description => 'Permite que o aplicativo leia dados de nutrição da Conexão de Saúde.';
	@override String get usage => 'Essa permissão permite que o aplicativo leia informações nutricionais que podem ter sido registradas por outros aplicativos conectados à Conexão de Saúde, proporcionando uma visão abrangente da sua nutrição.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWritePt implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWritePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Registrar Dados de Nutrição';
	@override String get description => 'Permite que o aplicativo registre dados de nutrição na Conexão de Saúde.';
	@override String get usage => 'Essa permissão permite que o aplicativo sincronize suas refeições registradas com a Conexão de Saúde, tornando seus dados de nutrição disponíveis para outros aplicativos de saúde e fitness que você utiliza.';
}

/// The flat map containing all translations for locale <pt>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Português',
			'flag' => '🇵🇹',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.loadingProfileData' => 'Erro ao carregar dados do perfil',
			'errors.somethingWentWrong' => 'Algo deu errado.',
			'onboarding.welcome' => ({required Object appLabel}) => 'Bem-vindo ao ${appLabel}',
			'onboarding.subtitle' => 'Seu companheiro pessoal de nutrição com tecnologia de IA',
			'onboarding.getStarted' => 'Começar',
			'onboarding.features.foodRecognition.title' => 'Reconhecimento Inteligente de Alimentos',
			'onboarding.features.foodRecognition.description' => 'Tire uma foto e deixe a IA identificar sua refeição',
			'onboarding.features.aiAnalysis.title' => 'Análise por IA',
			'onboarding.features.aiAnalysis.description' => 'Obtenha fatos nutricionais instantâneos a partir de suas descrições',
			'onboarding.features.healthIntegration.title' => 'Integração com Saúde',
			'onboarding.features.healthIntegration.description' => 'Conecte-se ao Health Connect para obter melhores insights',
			'onboarding.gender.title' => 'Qual é o seu gênero?',
			'onboarding.gender.description' => 'O gênero nos ajuda a calcular com precisão sua taxa de metabolismo basal (TMB).',
			'onboarding.gender.next' => 'Próximo',
			'onboarding.height.title' => 'Qual é a sua altura?',
			'onboarding.height.description' => 'Sua altura nos ajuda a calcular seu IMC e necessidades energéticas com precisão.',
			'onboarding.height.metric' => 'Métrico',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Próximo',
			'onboarding.weight.currentTitle' => 'Qual é o seu peso atual?',
			'onboarding.weight.currentDescription' => 'Seu peso atual é essencial para personalizar suas metas diárias.',
			'onboarding.weight.targetTitle' => 'Qual é o seu peso desejado?',
			'onboarding.weight.targetDescription' => 'Definir um peso desejado nos ajuda a determinar seu plano de longo prazo.',
			'onboarding.weight.metric' => 'Métrico',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Próximo',
			'onboarding.age.title' => 'Quando é seu aniversário?',
			'onboarding.age.description' => 'Sua idade nos ajuda a calcular suas necessidades calóricas com precisão.',
			'onboarding.age.next' => 'Próximo',
			'onboarding.bmiScale.underweight' => 'Abaixo do peso',
			'onboarding.bmiScale.healthy' => 'Saudável',
			'onboarding.bmiScale.overweight' => 'Acima do peso',
			'onboarding.bmiScale.obese' => 'Obeso',
			'onboarding.bmiScale.categories.underweight' => 'Abaixo do peso',
			'onboarding.bmiScale.categories.healthyWeight' => 'Peso saudável',
			'onboarding.bmiScale.categories.overweight' => 'Acima do peso',
			'onboarding.bmiScale.categories.obese' => 'Obeso',
			'onboarding.bmiScale.messages.underweight' => 'Podemos ajudá-lo a construir um plano saudável para alcançar um peso equilibrado com refeições ricas em nutrientes.',
			'onboarding.bmiScale.messages.healthy' => 'Ótimo trabalho! Você está em uma faixa saudável. Vamos ajudá-lo a manter sua vitalidade e níveis de energia.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} simplificará sua jornada com rastreamento impulsionado por IA para ajudá-lo a alcançar seu objetivo com conforto.',
			'onboarding.bmiScale.messages.obese' => 'Estamos aqui para apoiá-lo com orientações personalizadas e estratégias sustentáveis para suas metas de saúde.',
			'onboarding.weightGoal.title' => 'Qual é o seu objetivo?',
			'onboarding.weightGoal.description' => 'Escolha o objetivo que melhor descreve o que você deseja alcançar',
			'onboarding.activityLevel.title' => 'Quão ativo você é?',
			'onboarding.activityLevel.description' => 'Isso nos ajuda a calcular suas necessidades calóricas diárias com mais precisão',
			'onboarding.healthConnect.title' => 'Conecte-se com o Health Connect',
			'onboarding.healthConnect.description' => 'Sincronize seus dados de saúde para melhores insights e rastreamento automático de calorias',
			'onboarding.healthConnect.automaticTracking.title' => 'Rastreamento Automático de Calorias',
			'onboarding.healthConnect.automaticTracking.description' => 'Rastreie as calorias queimadas a partir de seus aplicativos de fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Insights de Progresso',
			'onboarding.healthConnect.progressInsights.description' => 'Obtenha insights detalhados sobre suas tendências de saúde',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integração Sem Costura',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sincronize dados dos seus aplicativos de saúde favoritos',
			'onboarding.healthConnect.connected' => 'Health Connect Conectado',
			'onboarding.healthConnect.notConnected' => 'Health Connect Não Conectado',
			'onboarding.healthConnect.setup' => 'Configurar Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Pular por agora',
			'onboarding.healthConnect.statusConnected' => 'Health Connect está conectado.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect foi conectado com sucesso!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permissão negada. Por favor, habilite as permissões do Health Connect nas configurações do seu telefone para o ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Erro ao configurar o Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Você Não Está Sozinho',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Pesquisas mostram que o rastreamento consistente é o principal indicador de sucesso a longo prazo.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object gender, required Object age, required Object goal}) => 'Para um(a) ${gender} de ${age} anos buscando ${goal}, o rastreamento consistente é o principal indicador de sucesso.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} torna 10 vezes mais fácil do que fazer isso manualmente.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Pronto para começar?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Tire uma foto das suas refeições para uma análise instantânea',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Registre seus dados com consistência para ver avanços significativos',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Acompanhe seu progresso diariamente para se manter motivado',
			'onboarding.reinforcement.trackingSuccess.button' => 'Vamos lá',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'indivíduo',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'você mais saudável',
			'onboarding.reinforcement.healthProfile.title' => 'Seu Perfil de Saúde',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Com base em suas métricas, seu IMC é ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Vamos finalizar seu perfil para personalizar sua experiência.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'ganhar',
			'onboarding.reinforcement.healthProfile.goalLose' => 'perder',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Para alcançar seu objetivo, você precisa ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Você está no seu peso desejado! Vamos ajudá-lo a mantê-lo.',
			'onboarding.reinforcement.healthProfile.button' => 'Vamos lá',
			'onboarding.reinforcement.goalLifestyle.title' => 'Excelente Começo!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Você deu o primeiro passo em direção a ${goalText}. Como você está ${activityText}, ${appLabel} ajustará suas metas para combinar com seu estilo de vida.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Metas calóricas personalizadas',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Detecção de refeição empoderada por IA',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Distribuições detalhadas de macronutrientes',
			'onboarding.reinforcement.goalLifestyle.button' => 'Vamos lá',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'suas metas',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'ativo',
			'tabs.dashboard' => 'Painel',
			'tabs.history' => 'Histórico',
			'home.dailyGoal.title' => 'Defina sua Meta Diária',
			'home.dailyGoal.titleSet' => 'Sua Meta Diária',
			'home.dailyGoal.description' => 'Pronto para iniciar sua jornada de bem-estar? Defina seu alvo calórico diário abaixo para dar início ao seu progresso.',
			'home.dailyGoal.descriptionSet' => 'Seu rumo está definido! Este é seu alvo calórico diário para guiar você.',
			'home.dailyGoal.yourGoal' => 'Sua Meta',
			'home.dailyGoal.goal' => 'Meta',
			'home.dailyGoal.dailyCalories' => 'Calorias diárias (kcal)',
			'home.dailyGoal.setGoal' => 'Definir Meta',
			'home.dailyGoal.intake' => 'Ingestão',
			'home.dailyGoal.burned' => 'Queimadas',
			'home.dailyGoal.weightImpact' => 'Impacto no Peso',
			'home.dailyGoal.estLoss' => 'Est. perda de',
			'home.dailyGoal.estGain' => 'Est. ganho de',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Resumo Diário',
			'home.dailySummary.calories' => 'Calorias',
			'home.dailySummary.carbs' => 'Carboidratos',
			'home.dailySummary.protein' => 'Proteínas',
			'home.dailySummary.fat' => 'Gorduras',
			'home.dailySummary.fiber' => 'Fibras',
			'home.dailySummary.grams' => 'gramas',
			'home.dailySummary.chartAccessibilityLabel' => 'Gráfico de macronutrientes',
			'home.intakeProgress.title' => 'Distribuição de Macronutrientes de Hoje',
			'home.intakeProgress.target' => 'Meta',
			'home.intakeProgress.current' => 'Atual',
			'home.intakeHistory.title' => 'Histórico de Macronutrientes de 7 Dias',
			'home.intakeHistory.noHistoryYet' => 'Sem histórico ainda',
			'home.intakeHistory.startLogging' => 'Comece a registrar refeições para ver suas\ntendências de macronutrientes aqui',
			'home.mealLog.title' => 'Refeições Registradas',
			'home.mealLog.emptyMessage' => 'Tire uma foto da sua última refeição para registrar aqui.',
			'home.mealLog.noMealsToday' => 'Nenhuma refeição registrada hoje',
			'home.mealLog.seeAllMeals' => 'Ver todas as refeições',
			'home.mealDescription.title' => 'Adicionar Rápido com IA',
			'home.mealDescription.description' => 'Descreva sua refeição e deixe a IA cuidar dos detalhes.',
			'home.mealDescription.hint' => 'ex.: Para o café da manhã, eu comi uma tigela grande de aveia com uma banana fatiada e uma medida de whey ...',
			'home.mealDescription.analyzeMeal' => 'Analisar refeição',
			'home.favoriteMeals.title' => 'Refeições Favoritas',
			'home.favoriteMeals.description' => 'Adicione rapidamente uma de suas refeições favoritas.',
			'home.favoriteMeals.noFavorites' => 'Ainda não há refeições favoritas.',
			'home.favoriteMeals.addFavoriteHint' => 'Clique na estrela em uma refeição para marcá-la como favorita.',
			'home.favoriteMeals.seeAll' => 'Ver tudo',
			'home.favoriteMeals.add' => 'Adicionar',
			'home.mealSnap.title' => 'Tire uma Foto e Rastreie Sua Refeição',
			'home.mealSnap.description' => 'Use sua câmera para tirar uma foto da sua comida para análise da IA.',
			'home.mealSnap.openCamera' => 'Abrir Câmera',
			'home.mealSnap.gallery' => 'Galeria',
			'home.connectHealth.title' => 'Sincronizar com o Health Connect',
			'home.connectHealth.description' => 'Sincronize seus dados de nutrição com o Health Connect',
			'home.connectHealth.install' => 'Instalar',
			'home.connectHealth.connect' => 'Conectar',
			'history.noMeals' => 'Nenhuma refeição registrada',
			'history.emptyMessage' => 'Tire uma foto da sua última refeição para registrar aqui.',
			'history.today' => 'Hoje',
			'history.yesterday' => 'Ontem',
			'meal.ohNo' => 'Oh não!',
			'meal.delete' => 'Excluir',
			'meal.editMeal' => 'Editar Refeição',
			'meal.addMeal' => 'Adicionar Refeição',
			'meal.saveMeal' => 'Salvar Refeição',
			'meal.save' => 'Salvar',
			'meal.mealName' => 'Nome da Refeição',
			'meal.mealNameHint' => 'Ex.: Ovos mexidos com torrada',
			'meal.mealQuantity' => 'Quantidade da Refeição',
			'meal.mealQuantityHint' => 'ex.: 1 tigela, 2 fatias',
			'meal.timeOfMeal' => 'Hora da Refeição',
			'meal.timeOfMealHint' => 'Selecione o horário em que teve sua refeição',
			'meal.mealType' => 'Tipo de Refeição',
			'meal.nutrition.calories' => 'Calorias',
			'meal.nutrition.carbs' => 'Carboidratos (g)',
			'meal.nutrition.protein' => 'Proteínas (g)',
			'meal.nutrition.fat' => 'Gorduras (g)',
			'meal.nutrition.fiber' => 'Fibras (g)',
			'meal.deleteConfirmation.title' => 'Excluir Refeição',
			'meal.deleteConfirmation.message' => 'Tem certeza de que deseja excluir este registro de refeição?',
			'meal.deleteConfirmation.cancel' => 'Cancelar',
			'meal.deleteConfirmation.delete' => 'Excluir',
			'meal.addedToLog' => 'Refeição adicionada ao seu registro!',
			'meal.couldNotAdd' => ({required Object error}) => 'Não foi possível adicionar a refeição: ${error}',
			'meal.savedSuccessfully' => 'Refeição adicionada com sucesso!',
			'meal.updatedSuccessfully' => 'Refeição atualizada com sucesso!',
			'meal.errorSaving' => ({required Object error}) => 'Erro ao salvar a refeição: ${error}',
			'meal.removedFromFavorites' => 'Removido dos favoritos!',
			'meal.savedAsFavorite' => 'Refeição salva como favorita!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Não foi possível atualizar o favorito: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Falha ao processar: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Falha ao processar a imagem: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Erro ao comprimir a imagem: ${error}',
			'meal.failedToSave' => 'Falha ao salvar os dados. Por favor, tente novamente.',
			'meal.skip' => 'Pular',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Pergunta ${current} de ${total}',
			'meal.variation.noVariationsAvailable' => 'Não há variações disponíveis',
			'favorites.title' => 'Favoritos',
			'favorites.empty' => 'Ainda não há refeições favoritas.',
			'profile.title' => 'Perfil',
			'profile.noProfileData' => 'Nenhum dado de perfil encontrado',
			'profile.yourProfile' => 'Seu Perfil',
			'profile.viewAndManage' => 'Visualizar e gerenciar suas informações de saúde',
			'profile.sections.profile' => 'PERFIL',
			'profile.sections.basicInformation' => 'INFORMAÇÕES BÁSICAS',
			'profile.sections.goalsAndActivity' => 'METAS E ATIVIDADE',
			'profile.sections.calculatedValues' => 'VALORES CALCULADOS',
			'profile.gender' => 'Gênero',
			'profile.height' => 'Altura',
			'profile.weight' => 'Peso',
			'profile.age' => 'Idade',
			'profile.weightGoal' => 'Objetivo de Peso',
			'profile.targetWeight' => 'Peso Alvo',
			'profile.activityLevel' => 'Nível de Atividade',
			'profile.healthMetrics' => 'Métricas de Saúde',
			'profile.notSet' => 'Não definido',
			'profile.years' => 'anos',
			'profile.updatedSuccessfully' => 'Perfil atualizado com sucesso!',
			'profile.calculatedValues.bmr' => 'TMB',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Meta Diária',
			'profile.calculatedValues.calPerDay' => 'cal/dia',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Pontuação de Saúde',
			'healthScore.whyThisScore' => 'Por que essa pontuação?',
			'healthScore.note' => 'Essa pontuação é uma estimativa da IA com base nos ingredientes identificados e na densidade nutricional. Sempre consulte um profissional para obter conselhos dietéticos.',
			'healthScore.unhealthy' => 'Não saudável',
			'healthScore.healthy' => 'Saudável',
			'healthScore.neutral' => 'Neutro',
			'editProfile.title' => 'Editar Perfil',
			'editProfile.sections.personalInformation' => 'INFORMAÇÕES PESSOAIS',
			'editProfile.sections.physicalMeasurements' => 'MEDIDAS FÍSICAS',
			'editProfile.sections.goalsAndActivity' => 'METAS E ATIVIDADE',
			'editProfile.gender' => 'Gênero',
			'editProfile.dateOfBirth' => 'Data de Nascimento',
			'editProfile.height' => 'Altura',
			'editProfile.weight' => 'Peso',
			'editProfile.weightGoal' => 'Objetivo de Peso',
			'editProfile.activityLevel' => 'Nível de Atividade',
			'editProfile.metric' => 'Métrico',
			'editProfile.imperial' => 'Imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Métrico (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/polegada)',
			'editProfile.metricKg' => 'Métrico (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Masculino',
			'editProfile.genders.female' => 'Feminino',
			'editProfile.genders.other' => 'Outro',
			'editProfile.weightGoals.loseWeight.name' => 'Perder Peso',
			'editProfile.weightGoals.loseWeight.description' => 'Crie um déficit calórico para perder peso',
			'editProfile.weightGoals.maintainWeight.name' => 'Manter Peso',
			'editProfile.weightGoals.maintainWeight.description' => 'Mantenha seu peso atual',
			'editProfile.weightGoals.gainWeight.name' => 'Ganhar Peso',
			'editProfile.weightGoals.gainWeight.description' => 'Crie um superávit calórico para ganhar peso',
			'editProfile.activityLevels.sedentary.name' => 'Sedentário',
			'editProfile.activityLevels.sedentary.description' => 'Pouco ou nenhum exercício',
			'editProfile.activityLevels.lightlyActive.name' => 'Levemente Ativo',
			'editProfile.activityLevels.lightlyActive.description' => 'Exercício leve 1-3 dias/semana',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderadamente Ativo',
			'editProfile.activityLevels.moderatelyActive.description' => 'Exercício moderado 3-5 dias/semana',
			'editProfile.activityLevels.veryActive.name' => 'Muito Ativo',
			'editProfile.activityLevels.veryActive.description' => 'Exercício intenso 6-7 dias/semana',
			'editProfile.activityLevels.extremelyActive.name' => 'Extremamente Ativo',
			'editProfile.activityLevels.extremelyActive.description' => 'Exercício muito intenso, trabalho físico',
			'settings.title' => 'Configurações',
			'settings.sections.profile' => 'PERFIL',
			'settings.sections.localization' => 'LOCALIZAÇÃO',
			'settings.sections.notifications' => 'NOTIFICAÇÕES',
			'settings.sections.healthConnect' => 'CONEXÃO DE SAÚDE',
			'settings.sections.supportAndLegal' => 'SUPORTE E LEGAL',
			'settings.sections.about' => 'SOBRE',
			'settings.sections.dangerZone' => 'ZONA PERIGOSA',
			'settings.sections.developer' => 'DESENVOLVEDOR',
			'settings.editProfile.title' => 'Editar Perfil',
			'settings.editProfile.subtitle' => 'Atualize suas informações pessoais',
			'settings.language.title' => 'Idioma',
			'settings.language.subtitle' => 'Escolha seu idioma preferido',
			'settings.language.searchHint' => 'Pesquisar idiomas...',
			'settings.language.noResults' => 'Nenhum resultado encontrado',
			'settings.heightUnit.title' => 'Unidade de Altura',
			'settings.weightUnit.title' => 'Unidade de Peso',
			'settings.mealReminders.title' => 'Lembretes de Refeição',
			'settings.mealReminders.subtitle' => 'Mantenha-se no caminho certo com alertas pontuais',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Claro',
			'settings.theme.dark' => 'Escuro',
			'settings.theme.system' => 'Sistema',
			'settings.sendFeedback.title' => 'Enviar Feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Ajude-nos a melhorar o ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback do Aplicativo ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Por favor, forneça seu feedback abaixo:',
			'settings.sendFeedback.appVersion' => 'Versão do Aplicativo',
			'settings.sendFeedback.device' => 'Dispositivo',
			'settings.sendFeedback.osVersion' => 'Versão do SO',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Limpar Todos os Dados',
			'settings.clearAllData.subtitle' => 'Excluir irreversivelmente todas as suas informações',
			'settings.clearAllData.confirmationTitle' => 'Limpar Todos os Dados?',
			'settings.clearAllData.confirmationMessage' => 'Esta ação não pode ser desfeita. Todas as suas refeições registradas, favoritos e configurações de perfil serão excluídos permanentemente.',
			'settings.clearAllData.cancel' => 'Cancelar',
			'settings.clearAllData.clearEverything' => 'Limpar Tudo',
			'settings.debugOptions.title' => 'Opções de Depuração',
			'settings.developerModeEnabled' => 'Modo de desenvolvedor habilitado!',
			'settings.healthConnect.title' => 'Conexão de Saúde',
			'settings.healthConnect.subtitle' => 'Visualize e gerencie permissões',
			'settings.healthConnect.unavailable.title' => 'Health Connect Indisponível',
			'settings.healthConnect.unavailable.description' => 'O Health Connect não está disponível neste dispositivo. Instale o Health Connect pela Play Store (Android 9+) ou atualize para o Android 14+.',
			'settings.healthConnect.permissions.title' => 'Permissões',
			'settings.healthConnect.permissions.description' => 'As seguintes permissões são solicitadas para oferecer integração com a Conexão de Saúde:',
			'settings.healthConnect.permissions.granted' => 'Concedido',
			'settings.healthConnect.permissions.notGranted' => 'Não Concedido',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Ler Calorias Totais Queimadas',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Permite que o aplicativo leia suas calorias totais queimadas da Conexão de Saúde.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Essa permissão é utilizada para exibir a queima calórica diária no aplicativo, ajudando você a entender seu gasto energético total ao longo do dia.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Ler Dados de Nutrição',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Permite que o aplicativo leia dados de nutrição da Conexão de Saúde.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Essa permissão permite que o aplicativo leia informações nutricionais que podem ter sido registradas por outros aplicativos conectados à Conexão de Saúde, proporcionando uma visão abrangente da sua nutrição.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Registrar Dados de Nutrição',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Permite que o aplicativo registre dados de nutrição na Conexão de Saúde.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Essa permissão permite que o aplicativo sincronize suas refeições registradas com a Conexão de Saúde, tornando seus dados de nutrição disponíveis para outros aplicativos de saúde e fitness que você utiliza.',
			'settings.healthConnect.managePermissions' => 'Gerenciar Permissões',
			'settings.healthConnect.openSettings' => 'Abrir Configurações do Health Connect',
			'settings.healthConnect.requestPermissions' => 'Solicitar Permissões',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'A solicitação de permissões foi cancelada ou falhou. Tente novamente ou conceda as permissões manualmente nas configurações do Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Não foi possível solicitar permissões. Tente novamente ou conceda as permissões manualmente nas configurações do Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Sobre',
			'settings.about.tagline' => 'Consciência de calorias rápida, gratuita e com foco em privacidade',
			'settings.about.ourStory.title' => 'Nossa História',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} nasceu de uma frustração simples: a maioria dos aplicativos de rastreamento de calorias é excessivamente complicada, exige entrada manual constante, cobra altas taxas de assinatura ou compromete a privacidade.\n\nComo um desenvolvedor independente, queria criar algo mais simples e justo — um aplicativo que use IA para reduzir o esforço, que permaneça rápido e gratuito e que trate seus dados de saúde com respeito.\n\n${appLabel} é o aplicativo que eu gostaria que existisse: sem contas, sem rastreamento, sem anúncios — apenas insights claros e práticos e suas metas de saúde.',
			'settings.about.privacy.title' => 'Sua Privacidade Importa',
			'settings.about.privacy.description' => 'A privacidade não é uma reflexão tardia — é um princípio de design. Veja o que isso significa na prática:',
			'settings.about.privacy.noAccounts' => 'Sem contas necessárias\nUse o aplicativo imediatamente. Sem cadastros, sem identidades.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Sem rastreamento comportamental\n${appLabel} não monitora sua atividade, não cria perfis de uso e não rastreia você em aplicativos ou sites.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Sem anúncios por design\n${appLabel} foi criado para funcionar sem anúncios ou monetização baseada em dados.',
			'settings.about.privacy.noDataSelling' => 'Sem venda de dados\nSeus dados de saúde nunca são vendidos ou compartilhados com terceiros.',
			'settings.about.privacy.localStorage' => 'Armazenamento local\nSeus dados permanecem em seu dispositivo.',
			'settings.about.privacy.privacyPolicy' => 'Política de Privacidade',
			'settings.about.developer.title' => 'Desenvolvido por um Desenvolvedor Independente',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} é construído e mantido por um único desenvolvedor independente focado em criar software de saúde que respeita a privacidade.\n\nO feedback é lido pessoalmente e ajuda a moldar a direção do aplicativo.',
			'settings.about.developer.website' => 'Site',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Gostando do ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Seu feedback ajuda a tornar o ${appLabel} melhor para todos.',
			'settings.about.feedback.rateApp' => 'Avaliar na Play Store',
			'settings.about.feedback.sendFeedback' => 'Enviar Feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Compilação ${buildNumber}',
			'reminders.title' => 'Mantenha-se no caminho certo com lembretes',
			'reminders.description' => 'Receba lembretes gentis para registrar suas refeições e manter-se consistente com suas metas de nutrição',
			'reminders.notificationsEnabled' => 'Notificações Ativadas',
			'reminders.notificationsDisabled' => 'Notificações Desativadas',
			'reminders.enabledSubtitle' => 'Você receberá lembretes de refeição',
			'reminders.disabledSubtitle' => 'Ative as notificações para receber lembretes de refeição',
			'reminders.mealReminders' => 'Lembretes de Refeição',
			'reminders.breakfast' => 'Café da Manhã',
			'reminders.lunch' => 'Almoço',
			'reminders.dinner' => 'Jantar',
			'reminders.snack' => 'Lanche',
			'reminders.unknown' => 'Desconhecido',
			'reminders.change' => 'Alterar',
			'reminders.enableNotifications' => 'Ativar Notificações',
			'reminders.skipForNow' => 'Pular por agora',
			'reminders.saveChanges' => 'Salvar Alterações',
			'reminders.enabledSuccessfully' => 'Notificações ativadas com sucesso!',
			'reminders.permissionDenied' => 'Permissão de notificação negada',
			'reminders.errorEnabling' => ({required Object error}) => 'Erro ao ativar notificações: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Erro ao finalizar configuração: ${error}',
			'notifications.breakfast.title' => 'Hora do Café da Manhã! 🍳',
			'notifications.breakfast.body' => 'Não se esqueça de registrar seu café da manhã',
			'notifications.lunch.title' => 'Hora do Almoço! 🥗',
			'notifications.lunch.body' => 'Hora de registrar seu almoço',
			'notifications.dinner.title' => 'Hora do Jantar! 🍽️',
			'notifications.dinner.body' => 'Não se esqueça de registrar seu jantar',
			'notifications.snack.title' => 'Hora do Lanche! 🍎',
			'notifications.snack.body' => 'Hora de um lanche saudável',
			'notifications.test.title' => 'Notificação de Teste',
			'login.title' => 'Entrar',
			'login.signInWithGoogle' => 'Entrar com o Google',
			'login.signInFailed' => 'Falha ao fazer login com o Google ou foi cancelado.',
			'disclaimer.pleaseNote' => 'Por favor, Note',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} fornece informações nutricionais estimadas. A precisão depende da sua entrada e das variações dos alimentos. Use como um guia, não como uma fonte definitiva. Consulte um profissional para obter conselhos dietéticos personalizados.',
			'disclaimer.snap.portionSize.title' => 'Tamanho da Porção',
			'disclaimer.snap.portionSize.description' => 'A precisão das estimativas depende fortemente da sua avaliação correta do tamanho da porção.',
			'disclaimer.snap.preparationMethods.title' => 'Métodos de Preparação',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Os métodos de cocção podem alterar significativamente o conteúdo nutricional dos alimentos. As estimativas do ${appLabel} podem não considerar sempre essas variações.',
			'disclaimer.snap.ingredients.title' => 'Ingredientes',
			'disclaimer.snap.ingredients.description' => 'Pratos complexos com muitos ingredientes ocultos podem levar a estimativas menos precisas.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitações do Banco de Dados',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'O banco de dados de alimentos do ${appLabel} é extenso, mas pode não incluir todos os itens ou variações alimentares.',
			'disclaimer.weightEstimate.title' => 'Sobre a Estimativa de Peso',
			'disclaimer.weightEstimate.description' => 'A mudança de peso projetada é uma estimativa teórica baseada no simples modelo de calorias ingeridas vs. calorias queimadas. É destinada apenas para orientação motivacional, não como previsão do seu peso real.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Precisão das Calorias',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Esta estimativa é tão precisa quanto sua ingestão calórica e despesa rastreadas. Registros imprecisos resultarão em uma projeção imprecisa.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Fatores Biológicos',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'A perda/aumento de peso real é influenciada pelo metabolismo, hormônios, sono, estresse, hidratação e outros fatores individuais que o ${appLabel} não pode medir.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Peso de Água & Flutuações',
			'disclaimer.weightEstimate.waterWeight.description' => 'O peso diário normal pode flutuar significativamente devido à retenção de água, digestão e horário. A estimativa não leva em conta essas mudanças diárias.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Orientação Profissional',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Não utilize esta estimativa para tomar decisões médicas. Sempre consulte um profissional de saúde ou nutricionista registrado para obter conselhos personalizados sobre gerenciamento de peso.',
			'disclaimer.healthMetrics.description' => 'Essas métricas ajudam você a entender as necessidades energéticas do seu corpo e orientam suas metas nutricionais.',
			'disclaimer.healthMetrics.bmr.title' => 'TMB',
			'disclaimer.healthMetrics.bmr.description' => 'A Taxa Metabólica Basal (TMB) é o número de calorias que seu corpo queima em repouso para manter funções básicas como respiração e circulação. A TMB depende da sua idade, gênero, altura e peso. Uma TMB mais alta significa que seu corpo queima naturalmente mais calorias em repouso, geralmente devido a mais massa muscular, idade mais jovem ou ser masculino. Uma TMB mais baixa normalmente indica menos massa muscular, idade mais avançada ou ser feminino.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'O Gasto Energético Diário Total (TDEE) é o total de calorias que você queima por dia, incluindo sua GEB mais calorias de atividade física e movimento diário. O TDEE depende da sua GEB e nível de atividade. Um TDEE mais alto significa que você queima mais calorias no total, geralmente por ser mais ativo ou ter uma GEB maior. Um TDEE mais baixo sugere menos atividade diária ou uma GEB menor.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Meta Diária',
			'disclaimer.healthMetrics.dailyGoal.description' => 'A Meta Diária é sua ingestão calórica recomendada com base no seu TDEE e meta de peso. Para perda de peso, você consome menos calorias do que seu TDEE. Para manutenção do peso, você iguala seu TDEE. Para ganho de peso, você consome mais calorias do que seu TDEE. Isso ajuda você a alcançar a mudança de peso desejada de maneira saudável.',
			'disclaimer.calorieExpenditure.title' => 'Estimativa de gasto calórico',
			'disclaimer.calorieExpenditure.description' => 'Quando os dados do Health Connect não estão disponíveis, estimamos as calorias gastas hoje usando sua Taxa Metabólica Basal (BMR) e seu nível de atividade (TDEE), ajustando para a parte do dia que já passou.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Como a estimativa é calculada',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Calculamos seu TDEE (com base no seu perfil) e multiplicamos pela fração do dia que já passou (horas + minutos) / 24 para estimar as calorias gastas até agora.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Orientação profissional',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Não use esta estimativa para tomar decisões médicas. Consulte sempre um profissional de saúde ou um nutricionista registrado para obter orientação personalizada sobre manejo/controle de peso.',
			'common.close' => 'Fechar',
			'common.kContinue' => 'Continuar',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Você está gostando do ${appLabel}?',
			'feedbackRating.yes' => 'Sim, estou gostando.',
			'feedbackRating.no' => 'Na verdade, não.',
			'feedbackRating.rateStepHeading' => 'Avaliar na Play Store',
			'feedbackRating.emailStepHeading' => 'Enviar feedback por e-mail',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Uma avaliação rápida ajuda outras pessoas a encontrar ${appLabel} e mantém o desenvolvimento em andamento. Você poderia dedicar um momento para deixar uma avaliação?',
			'feedbackRating.shareFeedbackViaEmail' => 'Seu feedback orienta os próximos passos — lemos todas as mensagens. Gostaria de compartilhar suas impressões por e-mail?',
			'feedbackRating.rateCta' => 'Avaliar na Play Store',
			'feedbackRating.maybeLater' => 'Talvez mais tarde',
			'feedbackRating.sendFeedback' => 'Enviar feedback',
			'feedbackRating.noThanks' => 'Não, obrigado',
			'feedbackRating.aboutUsDescription' => 'Feito com carinho por uma pequena equipe. Priorizamos a privacidade, a simplicidade e ajudar você a desenvolver hábitos alimentares mais saudáveis.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Curioso para saber quem está por trás do ${appLabel}? Veja ',
			'feedbackRating.aboutUsLinkLabel' => 'Sobre nós',
			'feedbackRating.thankYouMessage' => 'Obrigado! Perguntaremos novamente mais tarde.',
			'health.syncFailed' => 'Não foi possível sincronizar com o Health Connect',
			'health.mealSynced' => 'Refeição sincronizada com o Health Connect',
			_ => null,
		};
	}
}
