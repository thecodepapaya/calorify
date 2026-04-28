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
	@override String get language => 'Português (Brasil)';
	@override String get flag => '🇧🇷';
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
	@override String get rateLimitExceeded => 'Você fez muitas solicitações. Aguarde um momento antes de tentar novamente.';
	@override String get networkError => 'Erro de rede. Verifique sua conexão com a internet.';
	@override String get unknownError => 'Algo deu errado. Tente novamente mais tarde.';
	@override String get loadingProfileData => 'Erro ao carregar os dados do perfil';
	@override String get somethingWentWrong => 'Algo deu errado.';
	@override String get retry => 'Tentar novamente';
}

// Path: onboarding
class _TranslationsOnboardingPt implements TranslationsOnboardingEn {
	_TranslationsOnboardingPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bem-vindo ao ${appLabel}';
	@override String get subtitle => 'Seu companheiro pessoal de nutrição com IA';
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
	@override String get ohNo => 'Ah, não!';
	@override String get delete => 'Excluir';
	@override String get editMeal => 'Editar refeição';
	@override String get addMeal => 'Adicionar refeição';
	@override String get saveMeal => 'Salvar refeição';
	@override String get save => 'Salvar';
	@override String get mealName => 'Nome da refeição';
	@override String get mealNameHint => 'ex.: Ovos mexidos com torrada';
	@override String get mealQuantity => 'Quantidade da refeição';
	@override String get mealQuantityHint => 'ex.: 1 tigela, 2 fatias';
	@override String get timeOfMeal => 'Horário da refeição';
	@override String get timeOfMealHint => 'Selecione o horário em que você fez sua refeição';
	@override String get mealType => 'Tipo de refeição';
	@override late final _TranslationsMealNutritionPt nutrition = _TranslationsMealNutritionPt._(_root);
	@override late final _TranslationsMealDeleteConfirmationPt deleteConfirmation = _TranslationsMealDeleteConfirmationPt._(_root);
	@override String get addedToLog => 'Refeição adicionada ao seu diário!';
	@override String couldNotAdd({required Object error}) => 'Não foi possível adicionar a refeição: ${error}';
	@override String get savedSuccessfully => 'Refeição adicionada com sucesso!';
	@override String get updatedSuccessfully => 'Refeição atualizada com sucesso!';
	@override String errorSaving({required Object error}) => 'Erro ao salvar a refeição: ${error}';
	@override String get removedFromFavorites => 'Removido dos favoritos!';
	@override String get savedAsFavorite => 'Refeição salva como favorita!';
	@override String get unfavorite => 'Remover dos favoritos';
	@override String couldNotUpdateFavorite({required Object error}) => 'Não foi possível atualizar favorito: ${error}';
	@override String get feedbackThanks => 'Obrigado pelo feedback!';
	@override String get reanalysisUpdated => 'Atualizamos a análise da refeição com base no seu feedback.';
	@override String failedToProcess({required Object error}) => 'Falha ao processar: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Falha ao processar a imagem: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Erro ao comprimir a imagem: ${error}';
	@override String get failedToSave => 'Falha ao salvar os dados. Tente novamente.';
	@override String get skip => 'Pular';
	@override late final _TranslationsMealVariationPt variation = _TranslationsMealVariationPt._(_root);
	@override late final _TranslationsMealAnalysisPt analysis = _TranslationsMealAnalysisPt._(_root);
	@override late final _TranslationsMealFeedbackPt feedback = _TranslationsMealFeedbackPt._(_root);
}

// Path: favorites
class _TranslationsFavoritesPt implements TranslationsFavoritesEn {
	_TranslationsFavoritesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritos';
	@override String get empty => 'Ainda não há refeições favoritas.';
	@override String get searchPlaceholder => 'Pesquisar refeições favoritas';
	@override String get searchEmptyTitle => 'Nenhum favorito corresponde à sua busca';
	@override String get searchEmptySubtitle => 'Tente um nome de refeição, quantidade ou tipo de refeição diferente.';
	@override String get sortLabel => 'Ordenar favoritos';
	@override String get undo => 'Desfazer';
	@override String removed({required Object name}) => '${name} removido dos favoritos';
	@override late final _TranslationsFavoritesSortOptionsPt sortOptions = _TranslationsFavoritesSortOptionsPt._(_root);
}

// Path: profile
class _TranslationsProfilePt implements TranslationsProfileEn {
	_TranslationsProfilePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get noProfileData => 'Nenhum dado de perfil encontrado';
	@override String get yourProfile => 'Seu perfil';
	@override String get viewAndManage => 'Veja e gerencie suas informações de saúde';
	@override late final _TranslationsProfileSectionsPt sections = _TranslationsProfileSectionsPt._(_root);
	@override String get gender => 'Gênero';
	@override String get height => 'Altura';
	@override String get weight => 'Peso';
	@override String get age => 'Idade';
	@override String get weightGoal => 'Meta de peso';
	@override String get targetWeight => 'Peso alvo';
	@override String get activityLevel => 'Nível de atividade';
	@override String get healthMetrics => 'Métricas de saúde';
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
	@override String get note => 'Esta pontuação é uma estimativa por IA com base nos ingredientes identificados e na densidade nutricional. Sempre consulte um profissional para aconselhamento dietético.';
	@override String get unhealthy => 'Não saudável';
	@override String get healthy => 'Saudável';
	@override String get neutral => 'Neutro';
}

// Path: editProfile
class _TranslationsEditProfilePt implements TranslationsEditProfileEn {
	_TranslationsEditProfilePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar perfil';
	@override late final _TranslationsEditProfileSectionsPt sections = _TranslationsEditProfileSectionsPt._(_root);
	@override String get gender => 'Gênero';
	@override String get dateOfBirth => 'Data de nascimento';
	@override String get height => 'Altura';
	@override String get weight => 'Peso';
	@override String get weightGoal => 'Meta de peso';
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
	@override late final _TranslationsSettingsExportMealHistoryPt exportMealHistory = _TranslationsSettingsExportMealHistoryPt._(_root);
	@override late final _TranslationsSettingsClearAllDataPt clearAllData = _TranslationsSettingsClearAllDataPt._(_root);
	@override late final _TranslationsSettingsDebugOptionsPt debugOptions = _TranslationsSettingsDebugOptionsPt._(_root);
	@override String get developerModeEnabled => 'Modo desenvolvedor ativado!';
	@override late final _TranslationsSettingsHealthConnectPt healthConnect = _TranslationsSettingsHealthConnectPt._(_root);
	@override late final _TranslationsSettingsAboutPt about = _TranslationsSettingsAboutPt._(_root);
	@override late final _TranslationsSettingsAppInfoPt appInfo = _TranslationsSettingsAppInfoPt._(_root);
}

// Path: reminders
class _TranslationsRemindersPt implements TranslationsRemindersEn {
	_TranslationsRemindersPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mantenha-se no caminho com lembretes';
	@override String get description => 'Receba lembretes gentis para registrar suas refeições e manter a consistência com suas metas de nutrição';
	@override String get notificationsEnabled => 'Notificações ativadas';
	@override String get notificationsDisabled => 'Notificações desativadas';
	@override String get enabledSubtitle => 'Você receberá lembretes de refeição';
	@override String get disabledSubtitle => 'Ative as notificações para receber lembretes de refeição';
	@override String get mealReminders => 'Lembretes de refeições';
	@override String get breakfast => 'Café da manhã';
	@override String get lunch => 'Almoço';
	@override String get dinner => 'Jantar';
	@override String get snack => 'Lanche';
	@override String get unknown => 'Desconhecido';
	@override String get change => 'Alterar';
	@override String get enableNotifications => 'Ativar notificações';
	@override String get skipForNow => 'Pular por enquanto';
	@override String get saveChanges => 'Salvar alterações';
	@override String get enabledSuccessfully => 'Notificações ativadas com sucesso!';
	@override String get permissionDenied => 'Permissão de notificação negada';
	@override String errorEnabling({required Object error}) => 'Erro ao ativar notificações: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Erro ao concluir a configuração: ${error}';
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
	@override String get signInWithGoogle => 'Fazer login com o Google';
	@override String get signInFailed => 'Falha no login do Google ou cancelado.';
}

// Path: disclaimer
class _TranslationsDisclaimerPt implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Atenção';
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
	@override String enjoyingQuestion({required Object appLabel}) => 'Curtindo o ${appLabel}?';
	@override String get yes => 'Sim, estou gostando';
	@override String get no => 'Na verdade, não';
	@override String get rateStepHeading => 'Avaliar na Play Store';
	@override String get emailStepHeading => 'Enviar feedback por e-mail';
	@override String soloDevMessage({required Object appLabel}) => 'Uma avaliação rápida ajuda outras pessoas a encontrarem o ${appLabel} e mantém o desenvolvimento ativo. Você pode deixar uma agora?';
	@override String get shareFeedbackViaEmail => 'Seu feedback define os próximos passos — nós lemos todas as mensagens. Gostaria de compartilhar suas ideias por e-mail?';
	@override String get rateCta => 'Avaliar na Play Store';
	@override String get maybeLater => 'Talvez mais tarde';
	@override String get sendFeedback => 'Enviar feedback';
	@override String get noThanks => 'Não, obrigado';
	@override String get aboutUsDescription => 'Feito com cuidado por uma pequena equipe. Nós focamos em privacidade, simplicidade e em ajudar você a construir hábitos alimentares melhores.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Curioso para saber quem está por trás do ${appLabel}? Veja ';
	@override String get aboutUsLinkLabel => 'Sobre nós';
	@override String get thankYouMessage => 'Obrigado! Perguntaremos novamente outra hora.';
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
	@override String get description => 'O gênero nos ajuda a calcular com precisão sua Taxa Metabólica Basal (BMR).';
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
	@override String get targetTitle => 'Qual é o seu peso alvo?';
	@override String get targetDescription => 'Definir um peso objetivo nos ajuda a determinar seu plano de longo prazo.';
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
	@override String get underweight => 'Abaixo';
	@override String get healthy => 'Saudável';
	@override String get overweight => 'Acima';
	@override String get obese => 'Obeso';
	@override late final _TranslationsOnboardingBmiScaleCategoriesPt categories = _TranslationsOnboardingBmiScaleCategoriesPt._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesPt messages = _TranslationsOnboardingBmiScaleMessagesPt._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalPt implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual é a sua meta?';
	@override String get description => 'Escolha a meta que melhor descreve o que você quer alcançar';
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
	@override String get title => 'Conectar ao Health Connect';
	@override String get description => 'Sincronize seus dados de saúde para melhores insights e acompanhamento automático de calorias';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingPt automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingPt._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsPt progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsPt._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationPt seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationPt._(_root);
	@override String get connected => 'Health Connect conectado';
	@override String get notConnected => 'Health Connect não conectado';
	@override String get setup => 'Configurar Health Connect';
	@override String get skipForNow => 'Pular por enquanto';
	@override String get statusConnected => 'O Health Connect está conectado.';
	@override String get statusSuccess => 'O Health Connect foi conectado com sucesso!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permissão negada. Ative as permissões do Health Connect nas configurações do seu telefone para ${appLabel}.';
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

// Path: home.aiSummary
class _TranslationsHomeAiSummaryPt implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seu resumo com IA';
	@override String get logMore => 'Registre mais refeições nos próximos dias para obter seus insights personalizados por IA.';
	@override String get loading => 'Carregando seu resumo...';
	@override String mealCount({required Object count}) => '${count} refeições registradas';
	@override String macroBalanceScore({required Object score}) => 'Pontuação de equilíbrio ${score}';
	@override String get topFoods => 'Principais alimentos';
	@override String get trendUp => 'Calorias em alta';
	@override String get trendDown => 'Calorias em baixa';
	@override String get trendSteady => 'Calorias estáveis';
	@override String generatedAt({required Object time}) => 'Atualizado ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalPt implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Defina sua meta diária';
	@override String get titleSet => 'Sua meta diária';
	@override String get description => 'Pronto para começar sua jornada de bem-estar? Defina abaixo sua meta diária de calorias para dar o pontapé inicial.';
	@override String get descriptionSet => 'Sua bússola está ajustada! Esta é sua meta diária de calorias para guiar você.';
	@override String get yourGoal => 'Sua meta';
	@override String get goal => 'Meta';
	@override String get dailyCalories => 'Calorias diárias (kcal)';
	@override String get setGoal => 'Definir meta';
	@override String get intake => 'Ingestão';
	@override String get burned => 'Queimadas';
	@override String get weightImpact => 'Impacto no peso';
	@override String get estLoss => 'Perda estimada de';
	@override String get estGain => 'Ganho estimado de';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryPt implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Resumo diário';
	@override String get calories => 'Calorias';
	@override String get carbs => 'Carboidratos';
	@override String get protein => 'Proteínas';
	@override String get fat => 'Gorduras';
	@override String get fiber => 'Fibras';
	@override String get grams => 'gramas';
	@override String get chartAccessibilityLabel => 'Gráfico de macros';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressPt implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Divisão de macros de hoje';
	@override String get target => 'Meta';
	@override String get current => 'Atual';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryPt implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Histórico de macros de 7 dias';
	@override String get trendTitle => 'Tendência de hoje';
	@override String peakHour({required Object hour}) => 'Pico: ${hour}:00';
	@override String get noHistoryYet => 'Ainda não há histórico';
	@override String get startLogging => 'Comece a registrar refeições para ver suas\ntendências de macros de 7 dias aqui';
}

// Path: home.mealLog
class _TranslationsHomeMealLogPt implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Refeições registradas';
	@override String get emptyMessage => 'Tire uma foto da sua última refeição para registrar aqui.';
	@override String get noMealsToday => 'Nenhuma refeição registrada hoje';
	@override String get seeAllMeals => 'Ver todas as refeições';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionPt implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adição rápida com IA';
	@override String get description => 'Descreva sua refeição e deixe a IA cuidar dos detalhes.';
	@override String get hint => 'ex.: No café da manhã comi uma tigela grande de aveia com uma banana fatiada e uma dose de whey ...';
	@override String get analyzeMeal => 'Analisar refeição';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsPt implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Refeições favoritas';
	@override String get description => 'Adicione rapidamente uma das suas refeições favoritas.';
	@override String get noFavorites => 'Ainda não há refeições favoritas.';
	@override String get addFavoriteHint => 'Toque na estrela em uma refeição para marcá-la como favorita.';
	@override String get seeAll => 'Ver todas';
	@override String get add => 'Adicionar';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapPt implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fotografe e acompanhe sua refeição';
	@override String get description => 'Use a câmera para tirar uma foto do seu prato para análise por IA.';
	@override String get openCamera => 'Abrir câmera';
	@override String get gallery => 'Galeria';
	@override String get compressingPhoto => 'Otimizando a foto…';
	@override String get uploadingPhoto => 'Enviando foto…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthPt implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizar com Health Connect';
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
	@override String get title => 'Excluir refeição';
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
	@override String get noVariationsAvailable => 'Nenhuma variação disponível';
}

// Path: meal.analysis
class _TranslationsMealAnalysisPt implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análise da refeição por IA';
	@override String get reassurance => 'Isso geralmente leva alguns segundos.';
	@override String get stepStarted => 'Iniciando…';
	@override String get stepDecomposition => 'Entendendo sua refeição…';
	@override String get stepIngredients => 'Relacionando ingredientes aos dados nutricionais…';
	@override String get stepUncertainty => 'Verificando a confiança…';
	@override String get stepMealTypeQuestion => 'Quase lá…';
	@override String get stepResult => 'Finalizando seu resultado…';
	@override String get stepError => 'Algo deu errado';
	@override String get stepDefault => 'Analisando sua refeição…';
	@override String get progressUnderstand => 'Entender';
	@override String get progressMatch => 'Relacionar';
	@override String get progressCheck => 'Verificar';
	@override String get progressFinish => 'Concluir';
	@override String ingredientsLine({required Object count}) => '${count} ingredientes detectados';
	@override String get ingredientsPending => 'Analisando ingredientes…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackPt implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O que parece errado?';
	@override String get subtitle => 'Ajude-nos a melhorar a análise selecionando um ou mais problemas.';
	@override String get tellUsMore => 'Conte-nos mais';
	@override String get describeIncorrect => 'Descreva o que estava incorreto';
	@override String get submit => 'Enviar';
	@override String get issueFoodIdentification => 'Identificação do alimento';
	@override String get issuePortionSize => 'Tamanho da porção';
	@override String get issueCalorieDistribution => 'Distribuição de calorias';
	@override String get issueMacrosWrong => 'Macros incorretos';
	@override String get issueMissingItems => 'Itens em falta';
	@override String get issueExtraItems => 'Itens em excesso';
	@override String get issueOther => 'Outro';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsPt implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Recentes';
	@override String get calories => 'Calorias';
	@override String get alphabetical => 'A-Z';
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
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Meta diária';
	@override String get calPerDay => 'cal/dia';
	@override String get notAvailable => 'N/D';
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
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'SUPORTE E LEGAL';
	@override String get about => 'SOBRE';
	@override String get dangerZone => 'ZONA DE RISCO';
	@override String get developer => 'DESENVOLVEDOR';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfilePt implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfilePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar perfil';
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
	@override String get title => 'Unidade de altura';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitPt implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidade de peso';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersPt implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lembretes de refeições';
	@override String get subtitle => 'Mantenha-se no caminho com alertas oportunos';
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
	@override String get title => 'Enviar feedback';
	@override String subtitle({required Object appLabel}) => 'Ajude a melhorar o ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Feedback do app ${appLabel}';
	@override String get emailBodyPrefix => 'Forneça seu feedback abaixo:';
	@override String get appVersion => 'Versão do app';
	@override String get device => 'Dispositivo';
	@override String get osVersion => 'Versão do SO';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryPt implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exportar histórico de refeições';
	@override String get subtitle => 'Compartilhe um CSV das suas refeições registradas';
	@override String get shareText => 'Seu export do histórico de refeições do Calorify';
	@override String failed({required Object error}) => 'Não foi possível exportar o histórico de refeições: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataPt implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limpar todos os dados';
	@override String get subtitle => 'Exclua irreversivelmente todas as suas informações';
	@override String get confirmationTitle => 'Limpar todos os dados?';
	@override String get confirmationMessage => 'Esta ação não pode ser desfeita. Todas as suas refeições registradas, favoritos e configurações de perfil serão excluídos permanentemente.';
	@override String get cancel => 'Cancelar';
	@override String get clearEverything => 'Limpar tudo';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsPt implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opções de depuração';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectPt implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Veja e gerencie permissões';
	@override late final _TranslationsSettingsHealthConnectUnavailablePt unavailable = _TranslationsSettingsHealthConnectUnavailablePt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsPt permissions = _TranslationsSettingsHealthConnectPermissionsPt._(_root);
	@override String get managePermissions => 'Gerenciar permissões';
	@override String get openSettings => 'Abrir configurações do Health Connect';
	@override String get requestPermissions => 'Solicitar permissões';
	@override String get permissionRequestCancelledOrFailed => 'A solicitação de permissão foi cancelada ou falhou. Tente novamente ou conceda as permissões manualmente nas configurações do Health Connect.';
	@override String get permissionRequestFailed => 'Não foi possível solicitar as permissões. Tente novamente ou conceda as permissões manualmente nas configurações do Health Connect.';
	@override String get requestingPermissions => 'Solicitando...';
}

// Path: settings.about
class _TranslationsSettingsAboutPt implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobre';
	@override String get tagline => 'Consciência calórica rápida, gratuita e com privacidade em primeiro lugar';
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
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastPt implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do café da manhã! 🍳';
	@override String get body => 'Não se esqueça de registrar seu café da manhã';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchPt implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do almoço! 🥗';
	@override String get body => 'Hora de registrar seu almoço';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerPt implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do jantar! 🍽️';
	@override String get body => 'Não se esqueça de registrar seu jantar';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackPt implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do lanche! 🍎';
	@override String get body => 'Hora de um lanche saudável';
}

// Path: notifications.test
class _TranslationsNotificationsTestPt implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificação de teste';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapPt implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} fornece informações nutricionais estimadas. A precisão depende do que você informa e das variações dos alimentos. Use como guia, não como fonte definitiva. Consulte um profissional para aconselhamento dietético personalizado.';
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
	@override String get title => 'Sobre a estimativa de peso';
	@override String get description => 'A mudança de peso projetada é uma estimativa teórica baseada no modelo simples de calorias ingeridas versus calorias gastas. Ela serve apenas como motivação, não como previsão do seu peso real.';
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
	@override String get description => 'Essas métricas ajudam você a entender as necessidades energéticas do seu corpo e a orientar suas metas de nutrição.';
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
	@override String get description => 'Quando os dados do Health Connect não estão disponíveis, estimamos as calorias queimadas hoje usando sua Taxa Metabólica Basal (BMR) e seu nível de atividade (TDEE), ajustados para a fração do dia que já passou.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedPt howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedPt._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePt professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePt._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionPt implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconhecimento inteligente de alimentos';
	@override String get description => 'Tire uma foto e deixe a IA identificar sua refeição';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisPt implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análise por IA';
	@override String get description => 'Obtenha informações nutricionais instantâneas a partir das suas descrições';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationPt implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integração com Health Connect';
	@override String get description => 'Conecte-se ao Health Connect para melhores insights';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesPt implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Abaixo do peso';
	@override String get healthyWeight => 'Peso saudável';
	@override String get overweight => 'Acima do peso';
	@override String get obese => 'Obesidade';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesPt implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podemos ajudar você a construir um plano saudável para alcançar um peso equilibrado com refeições ricas em nutrientes.';
	@override String get healthy => 'Ótimo trabalho! Você está em uma faixa saudável. Vamos ajudar a manter sua vitalidade e energia.';
	@override String overweight({required Object appLabel}) => '${appLabel} vai simplificar sua jornada com acompanhamento por IA para ajudar você a alcançar sua meta com conforto.';
	@override String get obese => 'Estamos aqui para apoiar você com orientação personalizada e estratégias sustentáveis para suas metas de saúde.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingPt implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Acompanhamento automático de calorias';
	@override String get description => 'Acompanhe as calorias queimadas dos seus apps de fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsPt implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Insights de progresso';
	@override String get description => 'Obtenha insights detalhados sobre suas tendências de saúde';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationPt implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integração perfeita';
	@override String get description => 'Sincronize dados dos seus apps de saúde favoritos';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessPt implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Você não está sozinho(a)';
	@override String get genericMessage => 'Pesquisas mostram que o registro consistente é o principal indicador de sucesso no longo prazo.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Para uma pessoa de ${age} anos (${gender}) que busca ${goal}, o acompanhamento consistente é o principal indicador de sucesso.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} torna isso 10x mais fácil do que fazer manualmente.';
	@override String get getStartedTitle => 'Pronto para começar?';
	@override String get tipPhoto => 'Tire fotos das suas refeições para análise instantânea';
	@override String get tipConsistency => 'Registre com consistência para ver progresso significativo';
	@override String get tipProgress => 'Acompanhe seu progresso diariamente para manter a motivação';
	@override String get button => 'Vamos lá';
	@override String get defaultGender => 'pessoa';
	@override String get defaultGoal => 'uma versão mais saudável de você';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfilePt implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfilePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seu perfil de saúde';
	@override String bmiDescription({required Object bmi}) => 'Com base nas suas métricas, seu IMC é ${bmi}.';
	@override String get finalizeDescription => 'Vamos finalizar seu perfil para personalizar sua experiência.';
	@override String get goalGain => 'ganhar';
	@override String get goalLose => 'perder';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Para alcançar sua meta, você vai ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Você está no seu peso alvo! Vamos ajudar você a mantê-lo.';
	@override String get button => 'Vamos lá';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestylePt implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestylePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Excelente começo!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Você deu o primeiro passo em direção a ${goalText}. Como você é ${activityText}, ${appLabel} ajustará suas metas para combinar com seu estilo de vida.';
	@override String get personalizedTargets => 'Metas de calorias personalizadas';
	@override String get aiMealDetection => 'Detecção de refeições por IA';
	@override String get macroBreakdowns => 'Detalhamento de macronutrientes';
	@override String get button => 'Vamos lá';
	@override String get defaultGoal => 'seus objetivos';
	@override String get defaultActivity => 'ativo';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightPt implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perder peso';
	@override String get description => 'Crie um déficit calórico para perder peso';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightPt implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Manter o peso';
	@override String get description => 'Mantenha seu peso atual';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightPt implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ganhar peso';
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
	@override String get name => 'Levemente ativo';
	@override String get description => 'Exercício leve 1-3 dias/semana';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActivePt implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActivePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderadamente ativo';
	@override String get description => 'Exercício moderado 3-5 dias/semana';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActivePt implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActivePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Muito ativo';
	@override String get description => 'Exercício intenso 6-7 dias/semana';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActivePt implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActivePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extremamente ativo';
	@override String get description => 'Exercício muito intenso, trabalho físico';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailablePt implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailablePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect indisponível';
	@override String get description => 'O Health Connect não está disponível neste dispositivo. Instale o Health Connect pela Play Store (Android 9+) ou atualize para Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsPt implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permissões';
	@override String get description => 'As seguintes permissões são solicitadas para fornecer integração com o Health Connect:';
	@override String get granted => 'Concedido';
	@override String get notGranted => 'Não concedido';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPt caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadPt nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadPt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWritePt nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWritePt._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryPt implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nossa história';
	@override String content({required Object appLabel}) => '${appLabel} nasceu de uma frustração simples: a maioria dos apps de contagem de calorias é excessivamente complicada, exige entrada manual constante, cobra assinaturas caras ou compromete a privacidade.\n\nComo desenvolvedor solo, quis construir algo mais simples e justo — um app que usa IA para reduzir o esforço, permanece rápido e gratuito, e trata seus dados de saúde com respeito.\n\n${appLabel} é o app que eu gostaria que existisse: sem contas, sem rastreamento, sem anúncios — apenas insights claros e práticos e suas metas de saúde.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyPt implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sua privacidade importa';
	@override String get description => 'Privacidade não é um pensamento tardio — é um princípio de design. Veja o que isso significa na prática:';
	@override String get noAccounts => 'Sem contas necessárias\nUse o app imediatamente. Sem cadastros, sem identidades.';
	@override String noTracking({required Object appLabel}) => 'Sem rastreamento comportamental\n${appLabel} não monitora sua atividade, não cria perfis de uso nem o rastreia em aplicativos ou sites.';
	@override String noAds({required Object appLabel}) => 'Sem anúncios por princípio\n${appLabel} foi desenvolvido para funcionar sem anúncios ou monetização baseada em dados.';
	@override String get noDataSelling => 'Sem venda de dados\nSeus dados de saúde nunca são vendidos nem compartilhados com terceiros.';
	@override String get localStorage => 'Armazenamento local em primeiro lugar\nSeus dados permanecem no seu dispositivo.';
	@override String get privacyPolicy => 'Política de Privacidade';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperPt implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Criado por um desenvolvedor solo';
	@override String description({required Object appLabel}) => '${appLabel} é desenvolvido e mantido por um único desenvolvedor solo focado em criar software de saúde calmo e que respeita a privacidade.\n\nO feedback é lido pessoalmente e ajuda a moldar o rumo do app.';
	@override String get website => 'Site';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackPt implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Curtindo o ${appLabel}?';
	@override String description({required Object appLabel}) => 'Seu feedback ajuda a tornar o ${appLabel} melhor para todos.';
	@override String get rateApp => 'Avaliar na Play Store';
	@override String get sendFeedback => 'Enviar feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizePt implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tamanho da porção';
	@override String get description => 'A precisão das estimativas depende fortemente da sua avaliação correta do tamanho da porção.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsPt implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Métodos de preparo';
	@override String description({required Object appLabel}) => 'Os métodos de cozimento podem alterar significativamente o conteúdo nutricional dos alimentos. As estimativas do ${appLabel} podem nem sempre considerar essas variações.';
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
	@override String get title => 'Limitações do banco de dados';
	@override String description({required Object appLabel}) => 'O banco de dados de alimentos do ${appLabel} é extenso, mas pode não incluir todos os itens ou variações de alimentos.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyPt implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Precisão das calorias';
	@override String get description => 'Essa estimativa é tão precisa quanto o registro da sua ingestão e do seu gasto de calorias. Registros imprecisos resultarão em projeções imprecisas.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsPt implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fatores biológicos';
	@override String description({required Object appLabel}) => 'A perda/ganho de peso real é influenciada por metabolismo, hormônios, sono, estresse, hidratação e outros fatores individuais que o ${appLabel} não consegue medir.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightPt implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Peso de água e flutuações';
	@override String get description => 'O peso diário normal pode variar significativamente devido à retenção de água, digestão e horários. A estimativa não considera essas mudanças diárias.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidancePt implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidancePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientação profissional';
	@override String get description => 'Não use esta estimativa para tomar decisões médicas. Sempre consulte um profissional de saúde ou nutricionista para aconselhamento personalizado de controle de peso.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrPt implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'A Taxa Metabólica Basal (BMR) é o número de calorias que seu corpo queima em repouso para manter funções básicas como respiração e circulação. A BMR depende da sua idade, gênero, altura e peso. Uma BMR mais alta significa que seu corpo queima naturalmente mais calorias em repouso, geralmente por ter mais massa muscular, ser mais jovem ou masculino. Uma BMR mais baixa geralmente indica menos massa muscular, idade mais avançada ou ser feminino.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeePt implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'O Gasto Energético Diário Total (TDEE) é o total de calorias que você queima por dia, incluindo sua BMR mais as calorias da atividade física e do movimento diário. O TDEE depende da sua BMR e do seu nível de atividade. Um TDEE mais alto significa que você queima mais calorias no total, geralmente por ser mais ativo ou ter uma BMR mais alta. Um TDEE mais baixo sugere menos atividade diária ou uma BMR mais baixa.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalPt implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Meta diária';
	@override String get description => 'A Meta diária é sua ingestão calórica recomendada com base no seu TDEE e na sua meta de peso. Para perder peso, você consome menos calorias do que seu TDEE. Para manter o peso, você iguala seu TDEE. Para ganhar peso, você consome mais calorias do que seu TDEE. Isso ajuda você a alcançar a mudança de peso desejada em um ritmo saudável.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedPt implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Como a estimativa é calculada';
	@override String get description => 'Calculamos seu TDEE (com base no seu perfil) e multiplicamos pela fração do dia decorrida (horas + minutos) / 24 para estimar as calorias queimadas até agora.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePt implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidancePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientação profissional';
	@override String get description => 'Não use esta estimativa para tomar decisões médicas. Sempre consulte um profissional de saúde ou nutricionista para aconselhamento personalizado.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPt implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ler calorias totais queimadas';
	@override String get description => 'Permite que o app leia suas calorias totais queimadas do Health Connect.';
	@override String get usage => 'Essa permissão é usada para exibir seu gasto calórico diário no app, ajudando você a entender seu gasto energético total ao longo do dia.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadPt implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ler dados de nutrição';
	@override String get description => 'Permite que o app leia dados de nutrição do Health Connect.';
	@override String get usage => 'Essa permissão permite que o app leia informações de nutrição que podem ter sido registradas por outros apps conectados ao Health Connect, oferecendo uma visão abrangente da sua nutrição.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWritePt implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWritePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gravar dados de nutrição';
	@override String get description => 'Permite que o app grave dados de nutrição no Health Connect.';
	@override String get usage => 'Essa permissão permite que o app sincronize suas refeições registradas com o Health Connect, tornando seus dados de nutrição disponíveis para outros apps de saúde e fitness que você usa.';
}

/// The flat map containing all translations for locale <pt>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Português (Brasil)',
			'flag' => '🇧🇷',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Você fez muitas solicitações. Aguarde um momento antes de tentar novamente.',
			'errors.networkError' => 'Erro de rede. Verifique sua conexão com a internet.',
			'errors.unknownError' => 'Algo deu errado. Tente novamente mais tarde.',
			'errors.loadingProfileData' => 'Erro ao carregar os dados do perfil',
			'errors.somethingWentWrong' => 'Algo deu errado.',
			'errors.retry' => 'Tentar novamente',
			'onboarding.welcome' => ({required Object appLabel}) => 'Bem-vindo ao ${appLabel}',
			'onboarding.subtitle' => 'Seu companheiro pessoal de nutrição com IA',
			'onboarding.getStarted' => 'Começar',
			'onboarding.features.foodRecognition.title' => 'Reconhecimento inteligente de alimentos',
			'onboarding.features.foodRecognition.description' => 'Tire uma foto e deixe a IA identificar sua refeição',
			'onboarding.features.aiAnalysis.title' => 'Análise por IA',
			'onboarding.features.aiAnalysis.description' => 'Obtenha informações nutricionais instantâneas a partir das suas descrições',
			'onboarding.features.healthIntegration.title' => 'Integração com Health Connect',
			'onboarding.features.healthIntegration.description' => 'Conecte-se ao Health Connect para melhores insights',
			'onboarding.gender.title' => 'Qual é o seu gênero?',
			'onboarding.gender.description' => 'O gênero nos ajuda a calcular com precisão sua Taxa Metabólica Basal (BMR).',
			'onboarding.gender.next' => 'Próximo',
			'onboarding.height.title' => 'Qual é a sua altura?',
			'onboarding.height.description' => 'Sua altura nos ajuda a calcular seu IMC e necessidades energéticas com precisão.',
			'onboarding.height.metric' => 'Métrico',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Próximo',
			'onboarding.weight.currentTitle' => 'Qual é o seu peso atual?',
			'onboarding.weight.currentDescription' => 'Seu peso atual é essencial para personalizar suas metas diárias.',
			'onboarding.weight.targetTitle' => 'Qual é o seu peso alvo?',
			'onboarding.weight.targetDescription' => 'Definir um peso objetivo nos ajuda a determinar seu plano de longo prazo.',
			'onboarding.weight.metric' => 'Métrico',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Próximo',
			'onboarding.age.title' => 'Quando é seu aniversário?',
			'onboarding.age.description' => 'Sua idade nos ajuda a calcular suas necessidades calóricas com precisão.',
			'onboarding.age.next' => 'Próximo',
			'onboarding.bmiScale.underweight' => 'Abaixo',
			'onboarding.bmiScale.healthy' => 'Saudável',
			'onboarding.bmiScale.overweight' => 'Acima',
			'onboarding.bmiScale.obese' => 'Obeso',
			'onboarding.bmiScale.categories.underweight' => 'Abaixo do peso',
			'onboarding.bmiScale.categories.healthyWeight' => 'Peso saudável',
			'onboarding.bmiScale.categories.overweight' => 'Acima do peso',
			'onboarding.bmiScale.categories.obese' => 'Obesidade',
			'onboarding.bmiScale.messages.underweight' => 'Podemos ajudar você a construir um plano saudável para alcançar um peso equilibrado com refeições ricas em nutrientes.',
			'onboarding.bmiScale.messages.healthy' => 'Ótimo trabalho! Você está em uma faixa saudável. Vamos ajudar a manter sua vitalidade e energia.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} vai simplificar sua jornada com acompanhamento por IA para ajudar você a alcançar sua meta com conforto.',
			'onboarding.bmiScale.messages.obese' => 'Estamos aqui para apoiar você com orientação personalizada e estratégias sustentáveis para suas metas de saúde.',
			'onboarding.weightGoal.title' => 'Qual é a sua meta?',
			'onboarding.weightGoal.description' => 'Escolha a meta que melhor descreve o que você quer alcançar',
			'onboarding.activityLevel.title' => 'Quão ativo você é?',
			'onboarding.activityLevel.description' => 'Isso nos ajuda a calcular suas necessidades calóricas diárias com mais precisão',
			'onboarding.healthConnect.title' => 'Conectar ao Health Connect',
			'onboarding.healthConnect.description' => 'Sincronize seus dados de saúde para melhores insights e acompanhamento automático de calorias',
			'onboarding.healthConnect.automaticTracking.title' => 'Acompanhamento automático de calorias',
			'onboarding.healthConnect.automaticTracking.description' => 'Acompanhe as calorias queimadas dos seus apps de fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Insights de progresso',
			'onboarding.healthConnect.progressInsights.description' => 'Obtenha insights detalhados sobre suas tendências de saúde',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integração perfeita',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sincronize dados dos seus apps de saúde favoritos',
			'onboarding.healthConnect.connected' => 'Health Connect conectado',
			'onboarding.healthConnect.notConnected' => 'Health Connect não conectado',
			'onboarding.healthConnect.setup' => 'Configurar Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Pular por enquanto',
			'onboarding.healthConnect.statusConnected' => 'O Health Connect está conectado.',
			'onboarding.healthConnect.statusSuccess' => 'O Health Connect foi conectado com sucesso!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permissão negada. Ative as permissões do Health Connect nas configurações do seu telefone para ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Erro ao configurar o Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Você não está sozinho(a)',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Pesquisas mostram que o registro consistente é o principal indicador de sucesso no longo prazo.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Para uma pessoa de ${age} anos (${gender}) que busca ${goal}, o acompanhamento consistente é o principal indicador de sucesso.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} torna isso 10x mais fácil do que fazer manualmente.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Pronto para começar?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Tire fotos das suas refeições para análise instantânea',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Registre com consistência para ver progresso significativo',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Acompanhe seu progresso diariamente para manter a motivação',
			'onboarding.reinforcement.trackingSuccess.button' => 'Vamos lá',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'pessoa',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'uma versão mais saudável de você',
			'onboarding.reinforcement.healthProfile.title' => 'Seu perfil de saúde',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Com base nas suas métricas, seu IMC é ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Vamos finalizar seu perfil para personalizar sua experiência.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'ganhar',
			'onboarding.reinforcement.healthProfile.goalLose' => 'perder',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Para alcançar sua meta, você vai ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Você está no seu peso alvo! Vamos ajudar você a mantê-lo.',
			'onboarding.reinforcement.healthProfile.button' => 'Vamos lá',
			'onboarding.reinforcement.goalLifestyle.title' => 'Excelente começo!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Você deu o primeiro passo em direção a ${goalText}. Como você é ${activityText}, ${appLabel} ajustará suas metas para combinar com seu estilo de vida.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Metas de calorias personalizadas',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Detecção de refeições por IA',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detalhamento de macronutrientes',
			'onboarding.reinforcement.goalLifestyle.button' => 'Vamos lá',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'seus objetivos',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'ativo',
			'tabs.dashboard' => 'Painel',
			'tabs.history' => 'Histórico',
			'home.aiSummary.title' => 'Seu resumo com IA',
			'home.aiSummary.logMore' => 'Registre mais refeições nos próximos dias para obter seus insights personalizados por IA.',
			'home.aiSummary.loading' => 'Carregando seu resumo...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} refeições registradas',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Pontuação de equilíbrio ${score}',
			'home.aiSummary.topFoods' => 'Principais alimentos',
			'home.aiSummary.trendUp' => 'Calorias em alta',
			'home.aiSummary.trendDown' => 'Calorias em baixa',
			'home.aiSummary.trendSteady' => 'Calorias estáveis',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Atualizado ${time}',
			'home.dailyGoal.title' => 'Defina sua meta diária',
			'home.dailyGoal.titleSet' => 'Sua meta diária',
			'home.dailyGoal.description' => 'Pronto para começar sua jornada de bem-estar? Defina abaixo sua meta diária de calorias para dar o pontapé inicial.',
			'home.dailyGoal.descriptionSet' => 'Sua bússola está ajustada! Esta é sua meta diária de calorias para guiar você.',
			'home.dailyGoal.yourGoal' => 'Sua meta',
			'home.dailyGoal.goal' => 'Meta',
			'home.dailyGoal.dailyCalories' => 'Calorias diárias (kcal)',
			'home.dailyGoal.setGoal' => 'Definir meta',
			'home.dailyGoal.intake' => 'Ingestão',
			'home.dailyGoal.burned' => 'Queimadas',
			'home.dailyGoal.weightImpact' => 'Impacto no peso',
			'home.dailyGoal.estLoss' => 'Perda estimada de',
			'home.dailyGoal.estGain' => 'Ganho estimado de',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Resumo diário',
			'home.dailySummary.calories' => 'Calorias',
			'home.dailySummary.carbs' => 'Carboidratos',
			'home.dailySummary.protein' => 'Proteínas',
			'home.dailySummary.fat' => 'Gorduras',
			'home.dailySummary.fiber' => 'Fibras',
			'home.dailySummary.grams' => 'gramas',
			'home.dailySummary.chartAccessibilityLabel' => 'Gráfico de macros',
			'home.intakeProgress.title' => 'Divisão de macros de hoje',
			'home.intakeProgress.target' => 'Meta',
			'home.intakeProgress.current' => 'Atual',
			'home.intakeHistory.title' => 'Histórico de macros de 7 dias',
			'home.intakeHistory.trendTitle' => 'Tendência de hoje',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Pico: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Ainda não há histórico',
			'home.intakeHistory.startLogging' => 'Comece a registrar refeições para ver suas\ntendências de macros de 7 dias aqui',
			'home.mealLog.title' => 'Refeições registradas',
			'home.mealLog.emptyMessage' => 'Tire uma foto da sua última refeição para registrar aqui.',
			'home.mealLog.noMealsToday' => 'Nenhuma refeição registrada hoje',
			'home.mealLog.seeAllMeals' => 'Ver todas as refeições',
			'home.mealDescription.title' => 'Adição rápida com IA',
			'home.mealDescription.description' => 'Descreva sua refeição e deixe a IA cuidar dos detalhes.',
			'home.mealDescription.hint' => 'ex.: No café da manhã comi uma tigela grande de aveia com uma banana fatiada e uma dose de whey ...',
			'home.mealDescription.analyzeMeal' => 'Analisar refeição',
			'home.favoriteMeals.title' => 'Refeições favoritas',
			'home.favoriteMeals.description' => 'Adicione rapidamente uma das suas refeições favoritas.',
			'home.favoriteMeals.noFavorites' => 'Ainda não há refeições favoritas.',
			'home.favoriteMeals.addFavoriteHint' => 'Toque na estrela em uma refeição para marcá-la como favorita.',
			'home.favoriteMeals.seeAll' => 'Ver todas',
			'home.favoriteMeals.add' => 'Adicionar',
			'home.mealSnap.title' => 'Fotografe e acompanhe sua refeição',
			'home.mealSnap.description' => 'Use a câmera para tirar uma foto do seu prato para análise por IA.',
			'home.mealSnap.openCamera' => 'Abrir câmera',
			'home.mealSnap.gallery' => 'Galeria',
			'home.mealSnap.compressingPhoto' => 'Otimizando a foto…',
			'home.mealSnap.uploadingPhoto' => 'Enviando foto…',
			'home.connectHealth.title' => 'Sincronizar com Health Connect',
			'home.connectHealth.description' => 'Sincronize seus dados de nutrição com o Health Connect',
			'home.connectHealth.install' => 'Instalar',
			'home.connectHealth.connect' => 'Conectar',
			'history.noMeals' => 'Nenhuma refeição registrada',
			'history.emptyMessage' => 'Tire uma foto da sua última refeição para registrar aqui.',
			'history.today' => 'Hoje',
			'history.yesterday' => 'Ontem',
			'meal.ohNo' => 'Ah, não!',
			'meal.delete' => 'Excluir',
			'meal.editMeal' => 'Editar refeição',
			'meal.addMeal' => 'Adicionar refeição',
			'meal.saveMeal' => 'Salvar refeição',
			'meal.save' => 'Salvar',
			'meal.mealName' => 'Nome da refeição',
			'meal.mealNameHint' => 'ex.: Ovos mexidos com torrada',
			'meal.mealQuantity' => 'Quantidade da refeição',
			'meal.mealQuantityHint' => 'ex.: 1 tigela, 2 fatias',
			'meal.timeOfMeal' => 'Horário da refeição',
			'meal.timeOfMealHint' => 'Selecione o horário em que você fez sua refeição',
			'meal.mealType' => 'Tipo de refeição',
			'meal.nutrition.calories' => 'Calorias',
			'meal.nutrition.carbs' => 'Carboidratos (g)',
			'meal.nutrition.protein' => 'Proteínas (g)',
			'meal.nutrition.fat' => 'Gorduras (g)',
			'meal.nutrition.fiber' => 'Fibras (g)',
			'meal.deleteConfirmation.title' => 'Excluir refeição',
			'meal.deleteConfirmation.message' => 'Tem certeza de que deseja excluir este registro de refeição?',
			'meal.deleteConfirmation.cancel' => 'Cancelar',
			'meal.deleteConfirmation.delete' => 'Excluir',
			'meal.addedToLog' => 'Refeição adicionada ao seu diário!',
			'meal.couldNotAdd' => ({required Object error}) => 'Não foi possível adicionar a refeição: ${error}',
			'meal.savedSuccessfully' => 'Refeição adicionada com sucesso!',
			'meal.updatedSuccessfully' => 'Refeição atualizada com sucesso!',
			'meal.errorSaving' => ({required Object error}) => 'Erro ao salvar a refeição: ${error}',
			'meal.removedFromFavorites' => 'Removido dos favoritos!',
			'meal.savedAsFavorite' => 'Refeição salva como favorita!',
			'meal.unfavorite' => 'Remover dos favoritos',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Não foi possível atualizar favorito: ${error}',
			'meal.feedbackThanks' => 'Obrigado pelo feedback!',
			'meal.reanalysisUpdated' => 'Atualizamos a análise da refeição com base no seu feedback.',
			'meal.failedToProcess' => ({required Object error}) => 'Falha ao processar: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Falha ao processar a imagem: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Erro ao comprimir a imagem: ${error}',
			'meal.failedToSave' => 'Falha ao salvar os dados. Tente novamente.',
			'meal.skip' => 'Pular',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Pergunta ${current} de ${total}',
			'meal.variation.noVariationsAvailable' => 'Nenhuma variação disponível',
			'meal.analysis.title' => 'Análise da refeição por IA',
			'meal.analysis.reassurance' => 'Isso geralmente leva alguns segundos.',
			'meal.analysis.stepStarted' => 'Iniciando…',
			'meal.analysis.stepDecomposition' => 'Entendendo sua refeição…',
			'meal.analysis.stepIngredients' => 'Relacionando ingredientes aos dados nutricionais…',
			'meal.analysis.stepUncertainty' => 'Verificando a confiança…',
			'meal.analysis.stepMealTypeQuestion' => 'Quase lá…',
			'meal.analysis.stepResult' => 'Finalizando seu resultado…',
			'meal.analysis.stepError' => 'Algo deu errado',
			'meal.analysis.stepDefault' => 'Analisando sua refeição…',
			'meal.analysis.progressUnderstand' => 'Entender',
			'meal.analysis.progressMatch' => 'Relacionar',
			'meal.analysis.progressCheck' => 'Verificar',
			'meal.analysis.progressFinish' => 'Concluir',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredientes detectados',
			'meal.analysis.ingredientsPending' => 'Analisando ingredientes…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'O que parece errado?',
			'meal.feedback.subtitle' => 'Ajude-nos a melhorar a análise selecionando um ou mais problemas.',
			'meal.feedback.tellUsMore' => 'Conte-nos mais',
			'meal.feedback.describeIncorrect' => 'Descreva o que estava incorreto',
			'meal.feedback.submit' => 'Enviar',
			'meal.feedback.issueFoodIdentification' => 'Identificação do alimento',
			'meal.feedback.issuePortionSize' => 'Tamanho da porção',
			'meal.feedback.issueCalorieDistribution' => 'Distribuição de calorias',
			'meal.feedback.issueMacrosWrong' => 'Macros incorretos',
			'meal.feedback.issueMissingItems' => 'Itens em falta',
			'meal.feedback.issueExtraItems' => 'Itens em excesso',
			'meal.feedback.issueOther' => 'Outro',
			'favorites.title' => 'Favoritos',
			'favorites.empty' => 'Ainda não há refeições favoritas.',
			'favorites.searchPlaceholder' => 'Pesquisar refeições favoritas',
			'favorites.searchEmptyTitle' => 'Nenhum favorito corresponde à sua busca',
			'favorites.searchEmptySubtitle' => 'Tente um nome de refeição, quantidade ou tipo de refeição diferente.',
			'favorites.sortLabel' => 'Ordenar favoritos',
			'favorites.undo' => 'Desfazer',
			'favorites.removed' => ({required Object name}) => '${name} removido dos favoritos',
			'favorites.sortOptions.recent' => 'Recentes',
			'favorites.sortOptions.calories' => 'Calorias',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Perfil',
			'profile.noProfileData' => 'Nenhum dado de perfil encontrado',
			'profile.yourProfile' => 'Seu perfil',
			'profile.viewAndManage' => 'Veja e gerencie suas informações de saúde',
			'profile.sections.profile' => 'PERFIL',
			'profile.sections.basicInformation' => 'INFORMAÇÕES BÁSICAS',
			'profile.sections.goalsAndActivity' => 'METAS E ATIVIDADE',
			'profile.sections.calculatedValues' => 'VALORES CALCULADOS',
			'profile.gender' => 'Gênero',
			'profile.height' => 'Altura',
			'profile.weight' => 'Peso',
			'profile.age' => 'Idade',
			'profile.weightGoal' => 'Meta de peso',
			'profile.targetWeight' => 'Peso alvo',
			'profile.activityLevel' => 'Nível de atividade',
			'profile.healthMetrics' => 'Métricas de saúde',
			'profile.notSet' => 'Não definido',
			'profile.years' => 'anos',
			'profile.updatedSuccessfully' => 'Perfil atualizado com sucesso!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Meta diária',
			'profile.calculatedValues.calPerDay' => 'cal/dia',
			'profile.calculatedValues.notAvailable' => 'N/D',
			'healthScore.title' => 'Pontuação de Saúde',
			'healthScore.whyThisScore' => 'Por que essa pontuação?',
			'healthScore.note' => 'Esta pontuação é uma estimativa por IA com base nos ingredientes identificados e na densidade nutricional. Sempre consulte um profissional para aconselhamento dietético.',
			'healthScore.unhealthy' => 'Não saudável',
			'healthScore.healthy' => 'Saudável',
			'healthScore.neutral' => 'Neutro',
			'editProfile.title' => 'Editar perfil',
			'editProfile.sections.personalInformation' => 'INFORMAÇÕES PESSOAIS',
			'editProfile.sections.physicalMeasurements' => 'MEDIDAS FÍSICAS',
			'editProfile.sections.goalsAndActivity' => 'METAS E ATIVIDADE',
			'editProfile.gender' => 'Gênero',
			'editProfile.dateOfBirth' => 'Data de nascimento',
			'editProfile.height' => 'Altura',
			'editProfile.weight' => 'Peso',
			'editProfile.weightGoal' => 'Meta de peso',
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
			'editProfile.weightGoals.loseWeight.name' => 'Perder peso',
			'editProfile.weightGoals.loseWeight.description' => 'Crie um déficit calórico para perder peso',
			'editProfile.weightGoals.maintainWeight.name' => 'Manter o peso',
			'editProfile.weightGoals.maintainWeight.description' => 'Mantenha seu peso atual',
			'editProfile.weightGoals.gainWeight.name' => 'Ganhar peso',
			'editProfile.weightGoals.gainWeight.description' => 'Crie um superávit calórico para ganhar peso',
			'editProfile.activityLevels.sedentary.name' => 'Sedentário',
			'editProfile.activityLevels.sedentary.description' => 'Pouco ou nenhum exercício',
			'editProfile.activityLevels.lightlyActive.name' => 'Levemente ativo',
			'editProfile.activityLevels.lightlyActive.description' => 'Exercício leve 1-3 dias/semana',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderadamente ativo',
			'editProfile.activityLevels.moderatelyActive.description' => 'Exercício moderado 3-5 dias/semana',
			'editProfile.activityLevels.veryActive.name' => 'Muito ativo',
			'editProfile.activityLevels.veryActive.description' => 'Exercício intenso 6-7 dias/semana',
			'editProfile.activityLevels.extremelyActive.name' => 'Extremamente ativo',
			'editProfile.activityLevels.extremelyActive.description' => 'Exercício muito intenso, trabalho físico',
			'settings.title' => 'Configurações',
			'settings.sections.profile' => 'PERFIL',
			'settings.sections.localization' => 'LOCALIZAÇÃO',
			'settings.sections.notifications' => 'NOTIFICAÇÕES',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SUPORTE E LEGAL',
			'settings.sections.about' => 'SOBRE',
			'settings.sections.dangerZone' => 'ZONA DE RISCO',
			'settings.sections.developer' => 'DESENVOLVEDOR',
			'settings.editProfile.title' => 'Editar perfil',
			'settings.editProfile.subtitle' => 'Atualize suas informações pessoais',
			'settings.language.title' => 'Idioma',
			'settings.language.subtitle' => 'Escolha seu idioma preferido',
			'settings.language.searchHint' => 'Pesquisar idiomas...',
			'settings.language.noResults' => 'Nenhum resultado encontrado',
			'settings.heightUnit.title' => 'Unidade de altura',
			'settings.weightUnit.title' => 'Unidade de peso',
			'settings.mealReminders.title' => 'Lembretes de refeições',
			'settings.mealReminders.subtitle' => 'Mantenha-se no caminho com alertas oportunos',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Claro',
			'settings.theme.dark' => 'Escuro',
			'settings.theme.system' => 'Sistema',
			'settings.sendFeedback.title' => 'Enviar feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Ajude a melhorar o ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback do app ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Forneça seu feedback abaixo:',
			'settings.sendFeedback.appVersion' => 'Versão do app',
			'settings.sendFeedback.device' => 'Dispositivo',
			'settings.sendFeedback.osVersion' => 'Versão do SO',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Exportar histórico de refeições',
			'settings.exportMealHistory.subtitle' => 'Compartilhe um CSV das suas refeições registradas',
			'settings.exportMealHistory.shareText' => 'Seu export do histórico de refeições do Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Não foi possível exportar o histórico de refeições: ${error}',
			'settings.clearAllData.title' => 'Limpar todos os dados',
			'settings.clearAllData.subtitle' => 'Exclua irreversivelmente todas as suas informações',
			'settings.clearAllData.confirmationTitle' => 'Limpar todos os dados?',
			'settings.clearAllData.confirmationMessage' => 'Esta ação não pode ser desfeita. Todas as suas refeições registradas, favoritos e configurações de perfil serão excluídos permanentemente.',
			'settings.clearAllData.cancel' => 'Cancelar',
			'settings.clearAllData.clearEverything' => 'Limpar tudo',
			'settings.debugOptions.title' => 'Opções de depuração',
			'settings.developerModeEnabled' => 'Modo desenvolvedor ativado!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Veja e gerencie permissões',
			'settings.healthConnect.unavailable.title' => 'Health Connect indisponível',
			'settings.healthConnect.unavailable.description' => 'O Health Connect não está disponível neste dispositivo. Instale o Health Connect pela Play Store (Android 9+) ou atualize para Android 14+.',
			'settings.healthConnect.permissions.title' => 'Permissões',
			'settings.healthConnect.permissions.description' => 'As seguintes permissões são solicitadas para fornecer integração com o Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Concedido',
			'settings.healthConnect.permissions.notGranted' => 'Não concedido',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Ler calorias totais queimadas',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Permite que o app leia suas calorias totais queimadas do Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Essa permissão é usada para exibir seu gasto calórico diário no app, ajudando você a entender seu gasto energético total ao longo do dia.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Ler dados de nutrição',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Permite que o app leia dados de nutrição do Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Essa permissão permite que o app leia informações de nutrição que podem ter sido registradas por outros apps conectados ao Health Connect, oferecendo uma visão abrangente da sua nutrição.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Gravar dados de nutrição',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Permite que o app grave dados de nutrição no Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Essa permissão permite que o app sincronize suas refeições registradas com o Health Connect, tornando seus dados de nutrição disponíveis para outros apps de saúde e fitness que você usa.',
			'settings.healthConnect.managePermissions' => 'Gerenciar permissões',
			'settings.healthConnect.openSettings' => 'Abrir configurações do Health Connect',
			'settings.healthConnect.requestPermissions' => 'Solicitar permissões',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'A solicitação de permissão foi cancelada ou falhou. Tente novamente ou conceda as permissões manualmente nas configurações do Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Não foi possível solicitar as permissões. Tente novamente ou conceda as permissões manualmente nas configurações do Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Solicitando...',
			'settings.about.title' => 'Sobre',
			'settings.about.tagline' => 'Consciência calórica rápida, gratuita e com privacidade em primeiro lugar',
			'settings.about.ourStory.title' => 'Nossa história',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} nasceu de uma frustração simples: a maioria dos apps de contagem de calorias é excessivamente complicada, exige entrada manual constante, cobra assinaturas caras ou compromete a privacidade.\n\nComo desenvolvedor solo, quis construir algo mais simples e justo — um app que usa IA para reduzir o esforço, permanece rápido e gratuito, e trata seus dados de saúde com respeito.\n\n${appLabel} é o app que eu gostaria que existisse: sem contas, sem rastreamento, sem anúncios — apenas insights claros e práticos e suas metas de saúde.',
			'settings.about.privacy.title' => 'Sua privacidade importa',
			'settings.about.privacy.description' => 'Privacidade não é um pensamento tardio — é um princípio de design. Veja o que isso significa na prática:',
			'settings.about.privacy.noAccounts' => 'Sem contas necessárias\nUse o app imediatamente. Sem cadastros, sem identidades.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Sem rastreamento comportamental\n${appLabel} não monitora sua atividade, não cria perfis de uso nem o rastreia em aplicativos ou sites.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Sem anúncios por princípio\n${appLabel} foi desenvolvido para funcionar sem anúncios ou monetização baseada em dados.',
			'settings.about.privacy.noDataSelling' => 'Sem venda de dados\nSeus dados de saúde nunca são vendidos nem compartilhados com terceiros.',
			'settings.about.privacy.localStorage' => 'Armazenamento local em primeiro lugar\nSeus dados permanecem no seu dispositivo.',
			'settings.about.privacy.privacyPolicy' => 'Política de Privacidade',
			'settings.about.developer.title' => 'Criado por um desenvolvedor solo',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} é desenvolvido e mantido por um único desenvolvedor solo focado em criar software de saúde calmo e que respeita a privacidade.\n\nO feedback é lido pessoalmente e ajuda a moldar o rumo do app.',
			'settings.about.developer.website' => 'Site',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Curtindo o ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Seu feedback ajuda a tornar o ${appLabel} melhor para todos.',
			'settings.about.feedback.rateApp' => 'Avaliar na Play Store',
			'settings.about.feedback.sendFeedback' => 'Enviar feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Mantenha-se no caminho com lembretes',
			'reminders.description' => 'Receba lembretes gentis para registrar suas refeições e manter a consistência com suas metas de nutrição',
			'reminders.notificationsEnabled' => 'Notificações ativadas',
			'reminders.notificationsDisabled' => 'Notificações desativadas',
			'reminders.enabledSubtitle' => 'Você receberá lembretes de refeição',
			'reminders.disabledSubtitle' => 'Ative as notificações para receber lembretes de refeição',
			'reminders.mealReminders' => 'Lembretes de refeições',
			'reminders.breakfast' => 'Café da manhã',
			'reminders.lunch' => 'Almoço',
			'reminders.dinner' => 'Jantar',
			'reminders.snack' => 'Lanche',
			'reminders.unknown' => 'Desconhecido',
			'reminders.change' => 'Alterar',
			'reminders.enableNotifications' => 'Ativar notificações',
			'reminders.skipForNow' => 'Pular por enquanto',
			'reminders.saveChanges' => 'Salvar alterações',
			'reminders.enabledSuccessfully' => 'Notificações ativadas com sucesso!',
			'reminders.permissionDenied' => 'Permissão de notificação negada',
			'reminders.errorEnabling' => ({required Object error}) => 'Erro ao ativar notificações: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Erro ao concluir a configuração: ${error}',
			'notifications.breakfast.title' => 'Hora do café da manhã! 🍳',
			'notifications.breakfast.body' => 'Não se esqueça de registrar seu café da manhã',
			'notifications.lunch.title' => 'Hora do almoço! 🥗',
			'notifications.lunch.body' => 'Hora de registrar seu almoço',
			'notifications.dinner.title' => 'Hora do jantar! 🍽️',
			'notifications.dinner.body' => 'Não se esqueça de registrar seu jantar',
			'notifications.snack.title' => 'Hora do lanche! 🍎',
			'notifications.snack.body' => 'Hora de um lanche saudável',
			'notifications.test.title' => 'Notificação de teste',
			'login.title' => 'Entrar',
			'login.signInWithGoogle' => 'Fazer login com o Google',
			'login.signInFailed' => 'Falha no login do Google ou cancelado.',
			'disclaimer.pleaseNote' => 'Atenção',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} fornece informações nutricionais estimadas. A precisão depende do que você informa e das variações dos alimentos. Use como guia, não como fonte definitiva. Consulte um profissional para aconselhamento dietético personalizado.',
			'disclaimer.snap.portionSize.title' => 'Tamanho da porção',
			'disclaimer.snap.portionSize.description' => 'A precisão das estimativas depende fortemente da sua avaliação correta do tamanho da porção.',
			'disclaimer.snap.preparationMethods.title' => 'Métodos de preparo',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Os métodos de cozimento podem alterar significativamente o conteúdo nutricional dos alimentos. As estimativas do ${appLabel} podem nem sempre considerar essas variações.',
			'disclaimer.snap.ingredients.title' => 'Ingredientes',
			'disclaimer.snap.ingredients.description' => 'Pratos complexos com muitos ingredientes ocultos podem levar a estimativas menos precisas.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitações do banco de dados',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'O banco de dados de alimentos do ${appLabel} é extenso, mas pode não incluir todos os itens ou variações de alimentos.',
			'disclaimer.weightEstimate.title' => 'Sobre a estimativa de peso',
			'disclaimer.weightEstimate.description' => 'A mudança de peso projetada é uma estimativa teórica baseada no modelo simples de calorias ingeridas versus calorias gastas. Ela serve apenas como motivação, não como previsão do seu peso real.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Precisão das calorias',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Essa estimativa é tão precisa quanto o registro da sua ingestão e do seu gasto de calorias. Registros imprecisos resultarão em projeções imprecisas.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Fatores biológicos',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'A perda/ganho de peso real é influenciada por metabolismo, hormônios, sono, estresse, hidratação e outros fatores individuais que o ${appLabel} não consegue medir.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Peso de água e flutuações',
			'disclaimer.weightEstimate.waterWeight.description' => 'O peso diário normal pode variar significativamente devido à retenção de água, digestão e horários. A estimativa não considera essas mudanças diárias.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Orientação profissional',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Não use esta estimativa para tomar decisões médicas. Sempre consulte um profissional de saúde ou nutricionista para aconselhamento personalizado de controle de peso.',
			'disclaimer.healthMetrics.description' => 'Essas métricas ajudam você a entender as necessidades energéticas do seu corpo e a orientar suas metas de nutrição.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'A Taxa Metabólica Basal (BMR) é o número de calorias que seu corpo queima em repouso para manter funções básicas como respiração e circulação. A BMR depende da sua idade, gênero, altura e peso. Uma BMR mais alta significa que seu corpo queima naturalmente mais calorias em repouso, geralmente por ter mais massa muscular, ser mais jovem ou masculino. Uma BMR mais baixa geralmente indica menos massa muscular, idade mais avançada ou ser feminino.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'O Gasto Energético Diário Total (TDEE) é o total de calorias que você queima por dia, incluindo sua BMR mais as calorias da atividade física e do movimento diário. O TDEE depende da sua BMR e do seu nível de atividade. Um TDEE mais alto significa que você queima mais calorias no total, geralmente por ser mais ativo ou ter uma BMR mais alta. Um TDEE mais baixo sugere menos atividade diária ou uma BMR mais baixa.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Meta diária',
			'disclaimer.healthMetrics.dailyGoal.description' => 'A Meta diária é sua ingestão calórica recomendada com base no seu TDEE e na sua meta de peso. Para perder peso, você consome menos calorias do que seu TDEE. Para manter o peso, você iguala seu TDEE. Para ganhar peso, você consome mais calorias do que seu TDEE. Isso ajuda você a alcançar a mudança de peso desejada em um ritmo saudável.',
			'disclaimer.calorieExpenditure.title' => 'Estimativa de gasto calórico',
			'disclaimer.calorieExpenditure.description' => 'Quando os dados do Health Connect não estão disponíveis, estimamos as calorias queimadas hoje usando sua Taxa Metabólica Basal (BMR) e seu nível de atividade (TDEE), ajustados para a fração do dia que já passou.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Como a estimativa é calculada',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Calculamos seu TDEE (com base no seu perfil) e multiplicamos pela fração do dia decorrida (horas + minutos) / 24 para estimar as calorias queimadas até agora.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Orientação profissional',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Não use esta estimativa para tomar decisões médicas. Sempre consulte um profissional de saúde ou nutricionista para aconselhamento personalizado.',
			'common.close' => 'Fechar',
			'common.kContinue' => 'Continuar',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Curtindo o ${appLabel}?',
			'feedbackRating.yes' => 'Sim, estou gostando',
			'feedbackRating.no' => 'Na verdade, não',
			'feedbackRating.rateStepHeading' => 'Avaliar na Play Store',
			'feedbackRating.emailStepHeading' => 'Enviar feedback por e-mail',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Uma avaliação rápida ajuda outras pessoas a encontrarem o ${appLabel} e mantém o desenvolvimento ativo. Você pode deixar uma agora?',
			'feedbackRating.shareFeedbackViaEmail' => 'Seu feedback define os próximos passos — nós lemos todas as mensagens. Gostaria de compartilhar suas ideias por e-mail?',
			'feedbackRating.rateCta' => 'Avaliar na Play Store',
			'feedbackRating.maybeLater' => 'Talvez mais tarde',
			'feedbackRating.sendFeedback' => 'Enviar feedback',
			'feedbackRating.noThanks' => 'Não, obrigado',
			'feedbackRating.aboutUsDescription' => 'Feito com cuidado por uma pequena equipe. Nós focamos em privacidade, simplicidade e em ajudar você a construir hábitos alimentares melhores.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Curioso para saber quem está por trás do ${appLabel}? Veja ',
			'feedbackRating.aboutUsLinkLabel' => 'Sobre nós',
			'feedbackRating.thankYouMessage' => 'Obrigado! Perguntaremos novamente outra hora.',
			'health.syncFailed' => 'Não foi possível sincronizar com o Health Connect',
			'health.mealSynced' => 'Refeição sincronizada com o Health Connect',
			_ => null,
		};
	}
}
