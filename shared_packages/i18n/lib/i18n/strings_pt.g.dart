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
	@override late final _Translations$errors$pt errors = _Translations$errors$pt._(_root);
	@override late final _Translations$onboarding$pt onboarding = _Translations$onboarding$pt._(_root);
	@override late final _Translations$tabs$pt tabs = _Translations$tabs$pt._(_root);
	@override late final _Translations$home$pt home = _Translations$home$pt._(_root);
	@override late final _Translations$history$pt history = _Translations$history$pt._(_root);
	@override late final _Translations$meal$pt meal = _Translations$meal$pt._(_root);
	@override late final _Translations$favorites$pt favorites = _Translations$favorites$pt._(_root);
	@override late final _Translations$profile$pt profile = _Translations$profile$pt._(_root);
	@override late final _Translations$healthScore$pt healthScore = _Translations$healthScore$pt._(_root);
	@override late final _Translations$editProfile$pt editProfile = _Translations$editProfile$pt._(_root);
	@override late final _Translations$settings$pt settings = _Translations$settings$pt._(_root);
	@override late final _Translations$reminders$pt reminders = _Translations$reminders$pt._(_root);
	@override late final _Translations$notifications$pt notifications = _Translations$notifications$pt._(_root);
	@override late final _Translations$login$pt login = _Translations$login$pt._(_root);
	@override late final _Translations$disclaimer$pt disclaimer = _Translations$disclaimer$pt._(_root);
	@override late final _Translations$watch$pt watch = _Translations$watch$pt._(_root);
	@override late final _Translations$common$pt common = _Translations$common$pt._(_root);
	@override late final _Translations$feedbackRating$pt feedbackRating = _Translations$feedbackRating$pt._(_root);
	@override late final _Translations$health$pt health = _Translations$health$pt._(_root);
}

// Path: errors
class _Translations$errors$pt extends Translations$errors$en {
	_Translations$errors$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$pt extends Translations$onboarding$en {
	_Translations$onboarding$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bem-vindo ao ${appLabel}';
	@override String get subtitle => 'O seu companheiro pessoal de nutrição potenciado por AI';
	@override String get getStarted => 'Começar';
	@override late final _Translations$onboarding$features$pt features = _Translations$onboarding$features$pt._(_root);
	@override late final _Translations$onboarding$gender$pt gender = _Translations$onboarding$gender$pt._(_root);
	@override late final _Translations$onboarding$height$pt height = _Translations$onboarding$height$pt._(_root);
	@override late final _Translations$onboarding$weight$pt weight = _Translations$onboarding$weight$pt._(_root);
	@override late final _Translations$onboarding$age$pt age = _Translations$onboarding$age$pt._(_root);
	@override late final _Translations$onboarding$bmiScale$pt bmiScale = _Translations$onboarding$bmiScale$pt._(_root);
	@override late final _Translations$onboarding$weightGoal$pt weightGoal = _Translations$onboarding$weightGoal$pt._(_root);
	@override late final _Translations$onboarding$activityLevel$pt activityLevel = _Translations$onboarding$activityLevel$pt._(_root);
	@override late final _Translations$onboarding$healthConnect$pt healthConnect = _Translations$onboarding$healthConnect$pt._(_root);
	@override late final _Translations$onboarding$reinforcement$pt reinforcement = _Translations$onboarding$reinforcement$pt._(_root);
}

// Path: tabs
class _Translations$tabs$pt extends Translations$tabs$en {
	_Translations$tabs$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Painel';
	@override String get history => 'Histórico';
}

// Path: home
class _Translations$home$pt extends Translations$home$en {
	_Translations$home$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$pt aiSummary = _Translations$home$aiSummary$pt._(_root);
	@override late final _Translations$home$dailyGoal$pt dailyGoal = _Translations$home$dailyGoal$pt._(_root);
	@override late final _Translations$home$dailySummary$pt dailySummary = _Translations$home$dailySummary$pt._(_root);
	@override late final _Translations$home$intakeProgress$pt intakeProgress = _Translations$home$intakeProgress$pt._(_root);
	@override late final _Translations$home$intakeHistory$pt intakeHistory = _Translations$home$intakeHistory$pt._(_root);
	@override late final _Translations$home$mealLog$pt mealLog = _Translations$home$mealLog$pt._(_root);
	@override late final _Translations$home$mealDescription$pt mealDescription = _Translations$home$mealDescription$pt._(_root);
	@override late final _Translations$home$favoriteMeals$pt favoriteMeals = _Translations$home$favoriteMeals$pt._(_root);
	@override late final _Translations$home$mealSnap$pt mealSnap = _Translations$home$mealSnap$pt._(_root);
	@override late final _Translations$home$connectHealth$pt connectHealth = _Translations$home$connectHealth$pt._(_root);
}

// Path: history
class _Translations$history$pt extends Translations$history$en {
	_Translations$history$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Nenhuma refeição registada';
	@override String get emptyMessage => 'Tire uma foto da sua última refeição para registar aqui.';
	@override String get today => 'Hoje';
	@override String get yesterday => 'Ontem';
}

// Path: meal
class _Translations$meal$pt extends Translations$meal$en {
	_Translations$meal$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
	@override late final _Translations$meal$nutrition$pt nutrition = _Translations$meal$nutrition$pt._(_root);
	@override late final _Translations$meal$deleteConfirmation$pt deleteConfirmation = _Translations$meal$deleteConfirmation$pt._(_root);
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
	@override String get imageTooLarge => 'Esta foto ainda tem mais de 1 MB após a compressão. Escolha uma foto diferente.';
	@override String get failedToSave => 'Falha ao guardar os dados. Por favor, tente novamente.';
	@override String get skip => 'Ignorar';
	@override late final _Translations$meal$questionFlow$pt questionFlow = _Translations$meal$questionFlow$pt._(_root);
	@override late final _Translations$meal$analysis$pt analysis = _Translations$meal$analysis$pt._(_root);
	@override late final _Translations$meal$feedback$pt feedback = _Translations$meal$feedback$pt._(_root);
}

// Path: favorites
class _Translations$favorites$pt extends Translations$favorites$en {
	_Translations$favorites$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
	@override late final _Translations$favorites$sortOptions$pt sortOptions = _Translations$favorites$sortOptions$pt._(_root);
}

// Path: profile
class _Translations$profile$pt extends Translations$profile$en {
	_Translations$profile$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get noProfileData => 'Nenhum dado de perfil encontrado';
	@override String get yourProfile => 'O seu perfil';
	@override String get viewAndManage => 'Ver e gerir a sua informação de saúde';
	@override late final _Translations$profile$sections$pt sections = _Translations$profile$sections$pt._(_root);
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
	@override late final _Translations$profile$calculatedValues$pt calculatedValues = _Translations$profile$calculatedValues$pt._(_root);
}

// Path: healthScore
class _Translations$healthScore$pt extends Translations$healthScore$en {
	_Translations$healthScore$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$pt extends Translations$editProfile$en {
	_Translations$editProfile$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar perfil';
	@override late final _Translations$editProfile$sections$pt sections = _Translations$editProfile$sections$pt._(_root);
	@override String get gender => 'Género';
	@override String get dateOfBirth => 'Data de nascimento';
	@override String get height => 'Altura';
	@override String get weight => 'Peso';
	@override String get weightGoal => 'Objetivo de peso';
	@override String get activityLevel => 'Nível de atividade';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Sistema imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lb';
	@override String get metricCm => 'Métrico (cm)';
	@override String get imperialFtIn => 'Sistema imperial (pés/pol)';
	@override String get metricKg => 'Métrico (kg)';
	@override String get imperialLbs => 'Sistema imperial (lb)';
	@override late final _Translations$editProfile$genders$pt genders = _Translations$editProfile$genders$pt._(_root);
	@override late final _Translations$editProfile$weightGoals$pt weightGoals = _Translations$editProfile$weightGoals$pt._(_root);
	@override late final _Translations$editProfile$activityLevels$pt activityLevels = _Translations$editProfile$activityLevels$pt._(_root);
}

// Path: settings
class _Translations$settings$pt extends Translations$settings$en {
	_Translations$settings$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Definições';
	@override late final _Translations$settings$sections$pt sections = _Translations$settings$sections$pt._(_root);
	@override late final _Translations$settings$editProfile$pt editProfile = _Translations$settings$editProfile$pt._(_root);
	@override late final _Translations$settings$language$pt language = _Translations$settings$language$pt._(_root);
	@override late final _Translations$settings$heightUnit$pt heightUnit = _Translations$settings$heightUnit$pt._(_root);
	@override late final _Translations$settings$weightUnit$pt weightUnit = _Translations$settings$weightUnit$pt._(_root);
	@override late final _Translations$settings$mealReminders$pt mealReminders = _Translations$settings$mealReminders$pt._(_root);
	@override late final _Translations$settings$theme$pt theme = _Translations$settings$theme$pt._(_root);
	@override late final _Translations$settings$sendFeedback$pt sendFeedback = _Translations$settings$sendFeedback$pt._(_root);
	@override late final _Translations$settings$exportMealHistory$pt exportMealHistory = _Translations$settings$exportMealHistory$pt._(_root);
	@override late final _Translations$settings$clearAllData$pt clearAllData = _Translations$settings$clearAllData$pt._(_root);
	@override late final _Translations$settings$debugOptions$pt debugOptions = _Translations$settings$debugOptions$pt._(_root);
	@override String get developerModeEnabled => 'Modo de desenvolvedor ativado!';
	@override late final _Translations$settings$healthConnect$pt healthConnect = _Translations$settings$healthConnect$pt._(_root);
	@override late final _Translations$settings$about$pt about = _Translations$settings$about$pt._(_root);
	@override late final _Translations$settings$appInfo$pt appInfo = _Translations$settings$appInfo$pt._(_root);
}

// Path: reminders
class _Translations$reminders$pt extends Translations$reminders$en {
	_Translations$reminders$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$notifications$pt extends Translations$notifications$en {
	_Translations$notifications$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$pt breakfast = _Translations$notifications$breakfast$pt._(_root);
	@override late final _Translations$notifications$lunch$pt lunch = _Translations$notifications$lunch$pt._(_root);
	@override late final _Translations$notifications$dinner$pt dinner = _Translations$notifications$dinner$pt._(_root);
	@override late final _Translations$notifications$snack$pt snack = _Translations$notifications$snack$pt._(_root);
	@override late final _Translations$notifications$test$pt test = _Translations$notifications$test$pt._(_root);
}

// Path: login
class _Translations$login$pt extends Translations$login$en {
	_Translations$login$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iniciar sessão';
	@override String get signInWithGoogle => 'Iniciar sessão com Google';
	@override String get signInFailed => 'O início de sessão com Google falhou ou foi cancelado.';
}

// Path: disclaimer
class _Translations$disclaimer$pt extends Translations$disclaimer$en {
	_Translations$disclaimer$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Tenha em atenção';
	@override late final _Translations$disclaimer$snap$pt snap = _Translations$disclaimer$snap$pt._(_root);
	@override late final _Translations$disclaimer$weightEstimate$pt weightEstimate = _Translations$disclaimer$weightEstimate$pt._(_root);
	@override late final _Translations$disclaimer$healthMetrics$pt healthMetrics = _Translations$disclaimer$healthMetrics$pt._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$pt calorieExpenditure = _Translations$disclaimer$calorieExpenditure$pt._(_root);
}

// Path: watch
class _Translations$watch$pt extends Translations$watch$en {
	_Translations$watch$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$pt common = _Translations$watch$common$pt._(_root);
	@override late final _Translations$watch$nutrition$pt nutrition = _Translations$watch$nutrition$pt._(_root);
	@override late final _Translations$watch$sync$pt sync = _Translations$watch$sync$pt._(_root);
	@override late final _Translations$watch$home$pt home = _Translations$watch$home$pt._(_root);
	@override late final _Translations$watch$history$pt history = _Translations$watch$history$pt._(_root);
	@override late final _Translations$watch$favorites$pt favorites = _Translations$watch$favorites$pt._(_root);
	@override late final _Translations$watch$meal$pt meal = _Translations$watch$meal$pt._(_root);
	@override late final _Translations$watch$voice$pt voice = _Translations$watch$voice$pt._(_root);
	@override late final _Translations$watch$result$pt result = _Translations$watch$result$pt._(_root);
}

// Path: common
class _Translations$common$pt extends Translations$common$en {
	_Translations$common$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Beta';
	@override String get close => 'Fechar';
	@override String get kContinue => 'Continuar';
}

// Path: feedbackRating
class _Translations$feedbackRating$pt extends Translations$feedbackRating$en {
	_Translations$feedbackRating$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$health$pt extends Translations$health$en {
	_Translations$health$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Não foi possível sincronizar com o Health Connect';
	@override String get mealSynced => 'Refeição sincronizada com o Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$pt extends Translations$onboarding$features$en {
	_Translations$onboarding$features$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$pt foodRecognition = _Translations$onboarding$features$foodRecognition$pt._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$pt aiAnalysis = _Translations$onboarding$features$aiAnalysis$pt._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$pt healthIntegration = _Translations$onboarding$features$healthIntegration$pt._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$pt extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual é o seu género?';
	@override String get description => 'O género ajuda-nos a calcular com precisão a sua taxa metabólica basal (BMR).';
	@override String get next => 'Seguinte';
}

// Path: onboarding.height
class _Translations$onboarding$height$pt extends Translations$onboarding$height$en {
	_Translations$onboarding$height$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual é a sua altura?';
	@override String get description => 'A sua altura ajuda-nos a calcular o seu BMI e necessidades energéticas com precisão.';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Sistema imperial';
	@override String get next => 'Seguinte';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$pt extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Qual é o seu peso atual?';
	@override String get currentDescription => 'O seu peso atual é essencial para personalizar os seus objetivos diários.';
	@override String get targetTitle => 'Qual é o seu peso objetivo?';
	@override String get targetDescription => 'Definir um peso objetivo ajuda-nos a determinar o seu plano a longo prazo.';
	@override String get metric => 'Métrico';
	@override String get imperial => 'Sistema imperial';
	@override String get next => 'Seguinte';
}

// Path: onboarding.age
class _Translations$onboarding$age$pt extends Translations$onboarding$age$en {
	_Translations$onboarding$age$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quando é o seu aniversário?';
	@override String get description => 'A sua idade ajuda-nos a calcular com precisão as suas necessidades calóricas.';
	@override String get next => 'Seguinte';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$pt extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Abaixo';
	@override String get healthy => 'Saudável';
	@override String get overweight => 'Acima';
	@override String get obese => 'Obeso';
	@override late final _Translations$onboarding$bmiScale$categories$pt categories = _Translations$onboarding$bmiScale$categories$pt._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$pt messages = _Translations$onboarding$bmiScale$messages$pt._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$pt extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual é o seu objetivo?';
	@override String get description => 'Escolha o objetivo que melhor descreve o que pretende alcançar';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$pt extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quão ativo é?';
	@override String get description => 'Isto ajuda-nos a calcular as suas necessidades calóricas diárias com mais precisão';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$pt extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ligar ao Health Connect';
	@override String get description => 'Utilize as calorias queimadas no seu objetivo diário e, opcionalmente, partilhe refeições registadas com o Health Connect.';
	@override String get overviewDescription => 'Utilize as calorias queimadas no seu objetivo diário e, opcionalmente, partilhe refeições registadas com o Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$pt automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$pt._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$pt caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$pt._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$pt progressInsights = _Translations$onboarding$healthConnect$progressInsights$pt._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$pt shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$pt._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$pt seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$pt._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$pt userControl = _Translations$onboarding$healthConnect$userControl$pt._(_root);
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
class _Translations$onboarding$reinforcement$pt extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$pt trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$pt._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$pt healthProfile = _Translations$onboarding$reinforcement$healthProfile$pt._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$pt goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$pt._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$pt extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$home$dailyGoal$pt extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
	@override String get kcal => 'quilocalorias';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$pt extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$home$intakeProgress$pt extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Distribuição de macronutrientes de hoje';
	@override String get target => 'Meta';
	@override String get current => 'Atual';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$pt extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Histórico de macronutrientes (7 dias)';
	@override String get trendTitle => 'Tendência de hoje';
	@override String peakHour({required Object hour}) => 'Pico: ${hour}:00';
	@override String get noHistoryYet => 'Sem histórico ainda';
	@override String get startLogging => 'Comece a registar refeições para ver aqui as suas\ntendências de macronutrientes nos últimos 7 dias';
}

// Path: home.mealLog
class _Translations$home$mealLog$pt extends Translations$home$mealLog$en {
	_Translations$home$mealLog$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Refeições registadas';
	@override String get emptyMessage => 'Tire uma foto da sua última refeição para registar aqui.';
	@override String get noMealsToday => 'Nenhuma refeição registada hoje';
	@override String get seeAllMeals => 'Ver todas as refeições';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$pt extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adição rápida com AI';
	@override String get description => 'Descreva a sua refeição e deixe que a AI trate dos detalhes.';
	@override String get hint => 'ex.: No pequeno‑almoço comi uma taça grande de papas de aveia com uma banana às rodelas e uma dose de whey ...';
	@override String get analyzeMeal => 'Analisar refeição';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$pt extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$home$mealSnap$pt extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$home$connectHealth$pt extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizar com Health Connect';
	@override String get description => 'Utilize as calorias queimadas no seu objetivo e partilhe refeições registadas';
	@override String get install => 'Instalar ou atualizar';
	@override String get dataUseDescription => 'Utilize as calorias queimadas no seu objetivo e partilhe as refeições registadas';
	@override String get installOrUpdate => 'Instalar ou atualizar';
	@override String get connect => 'Ligar';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$pt extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorias';
	@override String get carbs => 'Hidratos de carbono (g)';
	@override String get protein => 'Proteína (g)';
	@override String get fat => 'Gordura (g)';
	@override String get fiber => 'Fibra (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$pt extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eliminar refeição';
	@override String get message => 'Tem a certeza de que pretende eliminar este registo de refeição?';
	@override String get cancel => 'Cancelar';
	@override String get delete => 'Eliminar';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$pt extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Pergunta ${current} de ${total}';
	@override String get noQuestionsAvailable => 'Nenhuma pergunta disponível';
	@override String get next => 'Seguinte';
	@override String get continueLabel => 'Continuar';
	@override String get countQuestion => 'Escolha a quantidade';
	@override String get itemSizeQuestion => 'Escolha o tamanho do item';
	@override String get portionSizeQuestion => 'Escolha o tamanho da porção';
	@override String get option6plus => '6 ou mais';
	@override String get optionSmall => 'Pequeno';
	@override String get optionRegular => 'Normal';
	@override String get optionLarge => 'Grande';
	@override String get optionThin => 'Fino';
	@override String get optionThick => 'Grosso';
	@override String get optionMini => 'Mini';
	@override String get optionStuffed => 'Recheado';
	@override String get optionHeavy => 'Pesado';
	@override String get optionSmaller => 'Menor';
	@override String get optionTypical => 'Típico';
	@override String get optionLarger => 'Maior';
	@override String get useEstimate => 'Usar estimativa';
	@override String numberRange({required Object min, required Object max, required Object step}) => 'De ${min} a ${max}, em incrementos de ${step}';
	@override String get invalidNumber => 'Insira um valor dentro do intervalo permitido';
}

// Path: meal.analysis
class _Translations$meal$analysis$pt extends Translations$meal$analysis$en {
	_Translations$meal$analysis$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
	@override String get providerUnavailable => 'O serviço de análise de refeições está temporariamente indisponível. Tente novamente.';
	@override String get invalidModelOutput => 'Não foi possível entender a resposta sobre a refeição. Tente novamente.';
	@override String get nutritionDataUnavailable => 'Os dados nutricionais estão temporariamente indisponíveis. Tente novamente.';
	@override String get analysisUnavailable => 'A análise da refeição está temporariamente indisponível. Tente novamente.';
	@override String get unresolvedNutrition => 'Não conseguimos vincular com segurança os dados nutricionais desta refeição. Tente adicionar mais detalhes.';
	@override String get noFoodTip => 'Não foi detetado nenhum alimento. Tente outra foto ou descrição.';
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
	@override String mealPreviewDescription({required Object text}) => '«${text}»';
	@override String calorieRange({required Object min, required Object max}) => 'Intervalo estimado: ${min}–${max} kcal';
	@override String get offlineTip0 => 'Dica: Consistência vence a perfeição — registos regulares revelam os padrões que importam.';
	@override String get offlineTip1 => 'Dica: Para fotografias, luz natural e uma vista de cima ajudam na precisão das porções.';
	@override String get offlineTip2 => 'Dica: Indique bebidas, molhos e óleo de cozinha — adicionam calorias que frequentemente se esquecem.';
	@override String get offlineTip3 => 'Dica: Uma nota rápida da porção (1 taça, café grande) torna as estimativas muito mais precisas.';
	@override String get offlineTip4 => 'Dica: Registar depois da refeição também cria o hábito; a perfeição é opcional.';
	@override String get offlineTip5 => 'Dica: Indique como foi cozinhado quando altera muito as calorias (frito vs assado).';
}

// Path: meal.feedback
class _Translations$meal$feedback$pt extends Translations$meal$feedback$en {
	_Translations$meal$feedback$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$favorites$sortOptions$pt extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Recentes';
	@override String get calories => 'Calorias';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$pt extends Translations$profile$sections$en {
	_Translations$profile$sections$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERFIL';
	@override String get basicInformation => 'INFORMAÇÃO BÁSICA';
	@override String get goalsAndActivity => 'OBJETIVOS E ATIVIDADE';
	@override String get calculatedValues => 'VALORES CALCULADOS';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$pt extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Objetivo diário';
	@override String get calPerDay => 'cal/dia';
	@override String get notAvailable => 'N/D';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$pt extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMAÇÃO PESSOAL';
	@override String get physicalMeasurements => 'MEDIDAS FÍSICAS';
	@override String get goalsAndActivity => 'OBJETIVOS E ATIVIDADE';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$pt extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get male => 'Masculino';
	@override String get female => 'Feminino';
	@override String get other => 'Outro';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$pt extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$pt loseWeight = _Translations$editProfile$weightGoals$loseWeight$pt._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$pt maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$pt._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$pt gainWeight = _Translations$editProfile$weightGoals$gainWeight$pt._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$pt extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$pt sedentary = _Translations$editProfile$activityLevels$sedentary$pt._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$pt lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$pt._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$pt moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$pt._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$pt veryActive = _Translations$editProfile$activityLevels$veryActive$pt._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$pt extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$pt._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$pt extends Translations$settings$sections$en {
	_Translations$settings$sections$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERFIL';
	@override String get localization => 'LOCALIZAÇÃO';
	@override String get notifications => 'NOTIFICAÇÕES';
	@override String get healthConnect => 'LIGAÇÃO AO HEALTH CONNECT';
	@override String get supportAndLegal => 'SUPORTE & LEGAL';
	@override String get about => 'SOBRE';
	@override String get dangerZone => 'ZONA PERIGOSA';
	@override String get developer => 'DESENVOLVEDOR';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$pt extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar Perfil';
	@override String get subtitle => 'Atualize as suas informações pessoais';
}

// Path: settings.language
class _Translations$settings$language$pt extends Translations$settings$language$en {
	_Translations$settings$language$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Idioma';
	@override String get subtitle => 'Escolha o seu idioma preferido';
	@override String get searchHint => 'Procurar idiomas...';
	@override String get noResults => 'Nenhum resultado encontrado';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$pt extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidade de altura';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$pt extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unidade de peso';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$pt extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lembretes de refeições';
	@override String get subtitle => 'Mantenha-se em dia com alertas oportunos';
}

// Path: settings.theme
class _Translations$settings$theme$pt extends Translations$settings$theme$en {
	_Translations$settings$theme$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Claro';
	@override String get dark => 'Escuro';
	@override String get system => 'Sistema';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$pt extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$settings$exportMealHistory$pt extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exportar histórico de refeições';
	@override String get subtitle => 'Partilhe um CSV das suas refeições registadas';
	@override String get shareText => 'Exportação do histórico de refeições do Calorify';
	@override String failed({required Object error}) => 'Não foi possível exportar o histórico de refeições: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$pt extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apagar Todos os Dados';
	@override String get subtitle => 'Eliminar os dados do Calorify armazenados neste dispositivo';
	@override String get localOnlySubtitle => 'Eliminar os dados do Calorify armazenados neste dispositivo';
	@override String get confirmationTitle => 'Apagar todos os dados?';
	@override String get confirmationMessage => 'Isto elimina permanentemente deste dispositivo as refeições registadas, os favoritos e as definições de perfil. As refeições já partilhadas com o Health Connect e o acesso ao Health Connect são geridos separadamente em Definições > Health Connect.';
	@override String get localOnlyConfirmationMessage => 'Isto elimina permanentemente deste dispositivo as refeições registadas, os favoritos e as definições de perfil. As refeições já partilhadas com o Health Connect e o acesso ao Health Connect são geridos separadamente em Definições > Health Connect.';
	@override String get cancel => 'Cancelar';
	@override String get clearEverything => 'Apagar tudo';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$pt extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opções de depuração';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$pt extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Ver e gerir permissões';
	@override late final _Translations$settings$healthConnect$unavailable$pt unavailable = _Translations$settings$healthConnect$unavailable$pt._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$pt updateRequired = _Translations$settings$healthConnect$updateRequired$pt._(_root);
	@override late final _Translations$settings$healthConnect$permissions$pt permissions = _Translations$settings$healthConnect$permissions$pt._(_root);
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
class _Translations$settings$about$pt extends Translations$settings$about$en {
	_Translations$settings$about$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobre';
	@override String get tagline => 'Consciência calórica rápida, gratuita e com foco na privacidade';
	@override late final _Translations$settings$about$ourStory$pt ourStory = _Translations$settings$about$ourStory$pt._(_root);
	@override late final _Translations$settings$about$privacy$pt privacy = _Translations$settings$about$privacy$pt._(_root);
	@override late final _Translations$settings$about$developer$pt developer = _Translations$settings$about$developer$pt._(_root);
	@override late final _Translations$settings$about$feedback$pt feedback = _Translations$settings$about$feedback$pt._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$pt extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify versão ${version}';
	@override String build({required Object buildNumber}) => 'Compilação ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$pt extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do pequeno‑almoço! 🍳';
	@override String get body => 'Não se esqueça de registar o seu pequeno‑almoço';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$pt extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do almoço! 🥗';
	@override String get body => 'É hora de registar o seu almoço';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$pt extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do jantar! 🍽️';
	@override String get body => 'Não se esqueça de registar o seu jantar';
}

// Path: notifications.snack
class _Translations$notifications$snack$pt extends Translations$notifications$snack$en {
	_Translations$notifications$snack$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hora do lanche! 🍎';
	@override String get body => 'Hora de um lanche saudável';
}

// Path: notifications.test
class _Translations$notifications$test$pt extends Translations$notifications$test$en {
	_Translations$notifications$test$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificação de teste';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$pt extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} fornece informação nutricional estimada. A precisão depende do que indicar e das variações dos alimentos. Use como orientação, não como fonte definitiva. Consulte um profissional para aconselhamento dietético personalizado.';
	@override late final _Translations$disclaimer$snap$portionSize$pt portionSize = _Translations$disclaimer$snap$portionSize$pt._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$pt preparationMethods = _Translations$disclaimer$snap$preparationMethods$pt._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$pt ingredients = _Translations$disclaimer$snap$ingredients$pt._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$pt databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$pt._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$pt extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sobre a estimativa de peso';
	@override String get description => 'A projeção de alteração de peso é uma estimativa teórica baseada no modelo simples de calorias ingeridas vs. calorias gastas. Destina‑se apenas a orientação motivacional, não como previsão do seu peso real.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$pt calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$pt._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$pt biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$pt._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$pt waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$pt._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$pt professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$pt._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$pt extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get description => 'Estas métricas ajudam a compreender as necessidades energéticas do seu corpo e orientam os seus objetivos nutricionais.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$pt bmr = _Translations$disclaimer$healthMetrics$bmr$pt._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$pt tdee = _Translations$disclaimer$healthMetrics$tdee$pt._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$pt dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$pt._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$pt extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimativa de Despesa Calórica';
	@override String get description => 'Quando os dados do Health Connect não estão disponíveis, estimamos as calorias gastas hoje usando a sua Taxa Metabólica Basal (BMR) e o nível de atividade (TDEE), ajustando para a parte do dia que já passou.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$pt howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$pt._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$pt professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$pt._(_root);
}

// Path: watch.common
class _Translations$watch$common$pt extends Translations$watch$common$en {
	_Translations$watch$common$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get back => 'Voltar';
	@override String get cancel => 'Cancelar';
	@override String get delete => 'Eliminar';
	@override String get retry => 'Tentar novamente';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$pt extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Nutriente';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} gramas';
	@override String get protein => 'Proteína';
	@override String get carbs => 'Hidratos de carbono';
	@override String get fat => 'Gordura';
	@override String get fiber => 'Fibra';
}

// Path: watch.sync
class _Translations$watch$sync$pt extends Translations$watch$sync$en {
	_Translations$watch$sync$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Sincronizar com o telemóvel';
	@override String get syncing => 'A sincronizar…';
	@override String get synced => 'Sincronizado';
	@override String get syncedJustNow => 'Sincronizado agora';
	@override String syncedMinutesAgo({required Object minutes}) => 'Sincronizado há ${minutes}m';
	@override String get failed => 'Sincronização falhou';
	@override String get phoneDisconnected => 'Telemóvel desconectado';
	@override String get tapToSync => 'Toque para sincronizar';
	@override String get refreshFailed => 'Não foi possível atualizar. Verifique o telemóvel.';
	@override String get openPhone => 'Abra o Calorify no telemóvel e toque em atualizar.';
}

// Path: watch.home
class _Translations$watch$home$pt extends Translations$watch$home$en {
	_Translations$watch$home$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get today => 'Hoje';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} calorias consumidas de ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} acima da meta';
	@override String remaining({required Object calories}) => '${calories} restantes';
	@override String left({required Object calories}) => '${calories} restantes';
	@override String goal({required Object calories}) => 'Meta: ${calories} kcal';
	@override String get logMeal => 'Registar refeição';
	@override String get todayMeals => 'Refeições de hoje';
	@override String todayMealsCount({required Object count}) => 'Refeições de hoje, ${count}';
	@override String viewMore({required Object count}) => 'Ver mais ${count}';
	@override String viewMoreSemantics({required Object count}) => '${count} refeições adicionais, toque para ver todas';
	@override String get noMeals => 'Sem refeições registadas';
	@override String get noMealsSemantics => 'Nenhuma refeição registada hoje';
	@override String get tapLog => 'Toque em Registar para começar';
	@override String get removedFromQueue => 'Refeição removida da fila offline.';
	@override String get removedOffline => 'Refeição removida offline. Será sincronizada quando o telemóvel se reconetar.';
	@override String get deleteFailed => 'Não foi possível eliminar a refeição';
}

// Path: watch.history
class _Translations$watch$history$pt extends Translations$watch$history$en {
	_Translations$watch$history$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Refeições de hoje';
	@override String get refresh => 'Atualizar refeições';
	@override String get loadFailed => 'Não foi possível carregar as refeições';
	@override String get syncFailed => 'Não foi possível sincronizar';
	@override String get emptyTitle => 'Ainda sem refeições';
	@override String get emptyMessage => 'Registe uma refeição a partir do ecrã Início para a ver aqui.';
}

// Path: watch.favorites
class _Translations$watch$favorites$pt extends Translations$watch$favorites$en {
	_Translations$watch$favorites$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritos';
	@override String get refresh => 'Atualizar favoritos';
	@override String get loadFailed => 'Não foi possível carregar os favoritos';
	@override String get syncFailed => 'Não foi possível sincronizar';
	@override String get emptyTitle => 'Ainda sem favoritos';
	@override String get emptyMessage => 'Assinale refeições na aplicação do telemóvel para as registar aqui com um toque.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} calorias. Toque para registar.';
	@override String logged({required Object name}) => '${name} registado!';
	@override String savedOffline({required Object name}) => '${name} guardado offline. Será sincronizado quando o telemóvel se reconetar.';
	@override String get saveFailed => 'Não foi possível guardar a refeição. Por favor, tente novamente.';
	@override String get log => 'Registar';
}

// Path: watch.meal
class _Translations$watch$meal$pt extends Translations$watch$meal$en {
	_Translations$watch$meal$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calorias, registado às ${time}.';
	@override String get longPressDelete => 'Pressione longamente para eliminar.';
	@override String get deleteTitle => 'Eliminar refeição?';
}

// Path: watch.voice
class _Translations$watch$voice$pt extends Translations$watch$voice$en {
	_Translations$watch$voice$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Registo de refeição por voz';
	@override String get processing => 'A analisar a sua refeição…';
	@override String get processingDescription => 'A estimar porções e nutrientes';
	@override String get listening => 'A escutar';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Parar gravação';
	@override String get start => 'Toque para começar a gravar';
	@override String get starting => 'A iniciar o microfone…';
	@override String get prompt => 'Toque, depois descreva a sua refeição';
	@override String get tapToRetry => 'Toque para tentar novamente';
	@override String get example => 'Experimente “2 rotis com dal”';
	@override String get unavailable => 'A entrada por voz não está disponível. Verifique a permissão do microfone nas definições do relógio.';
	@override String get didNotStart => 'O microfone não iniciou. Toque para tentar novamente.';
	@override String get startFailed => 'Não foi possível iniciar a gravação. Verifique as permissões do microfone.';
	@override String get allowMicrophone => 'Permita o acesso ao microfone para registar refeições por voz.';
	@override String get needsConnection => 'O reconhecimento de voz precisa de ligação. Toque para tentar novamente.';
	@override String get microphoneUnavailable => 'O microfone não está disponível. Toque para tentar novamente.';
	@override String get microphoneBusy => 'O microfone está ocupado. Aguarde um momento e tente novamente.';
	@override String get languageUnsupported => 'A entrada por voz não suporta a língua do relógio.';
	@override String get temporarilyBusy => 'A entrada por voz está temporariamente ocupada. Aguarde um momento e tente novamente.';
	@override String get notRecognized => 'Não percebi. Toque no microfone e tente outra vez.';
	@override String get noSpeech => 'Nenhuma fala detetada. Toque no microfone para tentar novamente.';
	@override String get analysisFailed => 'Análise falhou. Por favor, tente novamente.';
	@override String get mealNotIdentified => 'Não foi possível identificar a refeição. Tente descrevê-la de outra forma.';
}

// Path: watch.result
class _Translations$watch$result$pt extends Translations$watch$result$en {
	_Translations$watch$result$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detalhes da refeição';
	@override String get savedOffline => 'Guardado offline';
	@override String get logged => 'Registado!';
	@override String get mealFound => 'Refeição encontrada';
	@override String get estimatedEnergy => 'Energia estimada';
	@override String get logMeal => 'Registar refeição';
	@override String get logging => 'A registar…';
	@override String get logAnother => 'Registar outra';
	@override String get goingBack => 'A regressar…';
	@override String get savedOfflineMessage => 'Refeição guardada offline. Será sincronizada quando o telemóvel se reconetar.';
	@override String get saveFailed => 'Não foi possível guardar a refeição. Por favor, tente novamente.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$pt extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconhecimento inteligente de alimentos';
	@override String get description => 'Tire uma foto e deixe a AI identificar a sua refeição';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$pt extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Análise por AI';
	@override String get description => 'Obtenha informações nutricionais instantâneas a partir das suas descrições';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$pt extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integração com Health Connect';
	@override String get description => 'Conecte-se ao Health Connect para obter melhores informações';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$pt extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Abaixo do peso';
	@override String get healthyWeight => 'Peso saudável';
	@override String get overweight => 'Excesso de peso';
	@override String get obese => 'Obesidade';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$pt extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podemos ajudar a criar um plano saudável para atingir um peso equilibrado com refeições ricas em nutrientes.';
	@override String get healthy => 'Bom trabalho! Está numa faixa saudável. Vamos ajudar a manter a sua vitalidade e níveis de energia.';
	@override String overweight({required Object appLabel}) => '${appLabel} vai simplificar a sua jornada com acompanhamento por AI para o ajudar a atingir o seu objetivo confortavelmente.';
	@override String get obese => 'Estamos aqui para apoiar com orientação personalizada e estratégias sustentáveis para os seus objetivos de saúde.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$pt extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calorias queimadas';
	@override String get description => 'Leia o total de calorias queimadas hoje no Health Connect';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$pt extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calorias queimadas';
	@override String get description => 'Leia o total de calorias queimadas hoje no Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$pt extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Partilhar refeições registadas';
	@override String get description => 'Grave no Health Connect as refeições que regista no Calorify';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$pt extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Partilhar refeições registadas';
	@override String get description => 'Grave no Health Connect as refeições que regista no Calorify';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$pt extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O controlo é seu';
	@override String get description => 'Escolha qualquer uma das permissões e altere o acesso a qualquer momento';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$pt extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O controlo é seu';
	@override String get description => 'Escolha qualquer uma das permissões e altere o acesso a qualquer momento';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$pt extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$healthProfile$pt extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$goalLifestyle$pt extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$weightGoals$loseWeight$pt extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perder Peso';
	@override String get description => 'Criar défice calórico para perder peso';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$pt extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Manter Peso';
	@override String get description => 'Manter o seu peso atual';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$pt extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ganhar Peso';
	@override String get description => 'Criar superávit calórico para ganhar peso';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$pt extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentário';
	@override String get description => 'Pouco ou nenhum exercício';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$pt extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Pouco ativo';
	@override String get description => 'Exercício leve 1-3 dias/semana';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$pt extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderadamente ativo';
	@override String get description => 'Exercício moderado 3-5 dias/semana';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$pt extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Muito ativo';
	@override String get description => 'Exercício intenso 6-7 dias/semana';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$pt extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extremamente ativo';
	@override String get description => 'Exercício muito intenso, trabalho físico';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$pt extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect indisponível';
	@override String get description => 'O Health Connect não é suportado neste dispositivo.';
	@override String get unsupportedDescription => 'O Health Connect não é suportado neste dispositivo.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$pt extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O Health Connect requer atenção';
	@override String get description => 'Instale ou atualize o Health Connect antes de gerir o acesso.';
	@override String get action => 'Instalar ou atualizar';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$pt extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permissões';
	@override String get description => 'As seguintes permissões são solicitadas para permitir a integração com o Health Connect:';
	@override String get granted => 'Concedido';
	@override String get notGranted => 'Não concedido';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$pt caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$pt._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$pt nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$pt._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$pt nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$pt._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$pt extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'A nossa história';
	@override String content({required Object appLabel}) => '${appLabel} nasceu de uma frustração simples: a maioria das apps de contagem de calorias é excessivamente complicada, exige entradas manuais constantes, cobra taxas de subscrição elevadas ou compromete a privacidade.\n\nComo desenvolvedor solo, quis criar algo mais simples e justo — uma app que utilize AI para reduzir o esforço, mantenha-se rápida e gratuita de usar, e trate os seus dados de saúde com respeito.\n\n${appLabel} é a app que eu queria que existisse: sem contas, sem rastreamento, sem anúncios — apenas insights claros e práticos e os seus objetivos de saúde.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$pt extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'A sua privacidade importa';
	@override String get description => 'A privacidade não é um elemento secundário — é um princípio de design. Eis o que isso significa na prática:';
	@override String get noAccounts => 'Sem contas\nUse a app imediatamente. Sem registos, sem identidades.';
	@override String noTracking({required Object appLabel}) => 'Análises e diagnósticos limitados\n${appLabel} utiliza eventos básicos da app e diagnósticos de falhas para melhorar a fiabilidade. Os valores dos registos de saúde não são utilizados para publicidade nem vendidos.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Análises e diagnósticos limitados\n${appLabel} utiliza eventos básicos da app e diagnósticos de falhas para melhorar a fiabilidade. Os valores dos registos de saúde não são utilizados para publicidade nem vendidos.';
	@override String noAds({required Object appLabel}) => 'Sem anúncios por design\n${appLabel} foi concebido para funcionar sem anúncios ou monetização baseada em dados.';
	@override String get noDataSelling => 'Sem venda de dados\nOs seus dados de saúde nunca são vendidos nem partilhados com terceiros.';
	@override String get localStorage => 'Armazenamento local por defeito\nOs seus dados permanecem no seu dispositivo.';
	@override String get privacyPolicy => 'Política de Privacidade';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$pt extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desenvolvido por um único programador';
	@override String description({required Object appLabel}) => '${appLabel} é criado e mantido por um único programador focado em desenvolver software de saúde tranquilo e que respeita a privacidade.\n\nO feedback é lido pessoalmente e ajuda a orientar o rumo da app.';
	@override String get website => 'Site';
	@override String get email => 'Correio eletrónico';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$pt extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Aprecia o ${appLabel}?';
	@override String description({required Object appLabel}) => 'O seu feedback ajuda a tornar o ${appLabel} melhor para todos.';
	@override String get rateApp => 'Avaliar na Play Store';
	@override String get sendFeedback => 'Enviar feedback';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$pt extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tamanho da porção';
	@override String get description => 'A precisão das estimativas depende fortemente de avaliar corretamente o tamanho da porção.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$pt extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Métodos de preparação';
	@override String description({required Object appLabel}) => 'Os métodos de confeção podem alterar significativamente o conteúdo nutricional dos alimentos. As estimativas do ${appLabel} podem não refletir sempre essas variações.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$pt extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredientes';
	@override String get description => 'Pratos complexos com muitos ingredientes ocultos podem conduzir a estimativas menos precisas.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$pt extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitações da base de dados';
	@override String description({required Object appLabel}) => 'A base de dados de alimentos do ${appLabel} é extensa, mas pode não incluir todos os alimentos ou variações existentes.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$pt extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Precisão das calorias';
	@override String get description => 'Esta estimativa é tão precisa quanto o registo do seu consumo e despesa calórica. Um registo incorreto resultará numa projeção imprecisa.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$pt extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fatores biológicos';
	@override String description({required Object appLabel}) => 'A perda/ganho de peso real é influenciada pelo metabolismo, hormonas, sono, stress, hidratação e outros fatores individuais que o ${appLabel} não consegue medir.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$pt extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Peso da água e flutuações';
	@override String get description => 'O peso diário normal pode flutuar significativamente devido à retenção de água, digestão e horários. A estimativa não tem em conta essas variações diárias.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$pt extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientação profissional';
	@override String get description => 'Não utilize esta estimativa para tomar decisões médicas. Consulte sempre um profissional de saúde ou nutricionista registado para aconselhamento personalizado de gestão de peso.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$pt extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Taxa Metabólica Basal (BMR) é o número de calorias que o seu corpo gasta em repouso para manter funções básicas como respirar e a circulação. O BMR depende da sua idade, sexo, altura e peso. Um BMR mais elevado significa que o seu corpo queima mais calorias em repouso, muitas vezes devido a maior massa muscular, idade mais jovem ou ser do sexo masculino. Um BMR mais baixo tipicamente indica menos massa muscular, idade mais avançada ou ser do sexo feminino.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$pt extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Despesas Energéticas Diárias Totais (TDEE) é o total de calorias que gasta por dia, incluindo o seu BMR mais as calorias gastas em atividade física e movimento diário. O TDEE depende do seu BMR e do nível de atividade. Um TDEE mais alto significa que queima mais calorias no total, geralmente por ser mais ativo ou ter um BMR mais elevado. Um TDEE mais baixo sugere menos atividade diária ou um BMR inferior.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$pt extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Objetivo Diário';
	@override String get description => 'O Objetivo Diário é a ingestão calórica recomendada com base no seu TDEE e objetivo de peso. Para perda de peso, consome menos calorias do que o seu TDEE. Para manutenção, iguala o seu TDEE. Para ganho de peso, consome mais calorias do que o seu TDEE. Isto ajuda a alcançar a alteração de peso desejada a um ritmo saudável.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$pt extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Como a estimativa é calculada';
	@override String get description => 'Calculamos o seu TDEE (com base no seu perfil) e multiplicamo‑lo pela fração do dia decorrido (horas + minutos) / 24 para estimar as calorias gastas até ao momento.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$pt extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orientação profissional';
	@override String get description => 'Não utilize esta estimativa para tomar decisões médicas. Consulte sempre um profissional de saúde ou nutricionista registado para aconselhamento personalizado de gestão de peso.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$pt extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ler Calorias Totais Queimadas';
	@override String get description => 'Permite que a app leia as suas calorias totais queimadas a partir do Health Connect.';
	@override String get usage => 'Esta permissão é usada para mostrar a sua queima calórica diária na app, ajudando-o a compreender o seu gasto energético total ao longo do dia.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$pt extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$pt._(TranslationsPt root) : this._root = root, super.internal(root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ler Dados de Nutrição';
	@override String get description => 'Permite que a app leia dados de nutrição do Health Connect.';
	@override String get usage => 'Esta permissão permite que a app leia informações nutricionais que podem ter sido registadas por outras apps ligadas ao Health Connect, oferecendo uma visão abrangente da sua nutrição.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$pt extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$pt._(TranslationsPt root) : this._root = root, super.internal(root);

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
			'onboarding.height.imperial' => 'Sistema imperial',
			'onboarding.height.next' => 'Seguinte',
			'onboarding.weight.currentTitle' => 'Qual é o seu peso atual?',
			'onboarding.weight.currentDescription' => 'O seu peso atual é essencial para personalizar os seus objetivos diários.',
			'onboarding.weight.targetTitle' => 'Qual é o seu peso objetivo?',
			'onboarding.weight.targetDescription' => 'Definir um peso objetivo ajuda-nos a determinar o seu plano a longo prazo.',
			'onboarding.weight.metric' => 'Métrico',
			'onboarding.weight.imperial' => 'Sistema imperial',
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
			'onboarding.healthConnect.overviewDescription' => 'Utilize as calorias queimadas no seu objetivo diário e, opcionalmente, partilhe refeições registadas com o Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Calorias queimadas',
			'onboarding.healthConnect.automaticTracking.description' => 'Leia o total de calorias queimadas hoje no Health Connect',
			'onboarding.healthConnect.caloriesBurned.title' => 'Calorias queimadas',
			'onboarding.healthConnect.caloriesBurned.description' => 'Leia o total de calorias queimadas hoje no Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Partilhar refeições registadas',
			'onboarding.healthConnect.progressInsights.description' => 'Grave no Health Connect as refeições que regista no Calorify',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Partilhar refeições registadas',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Grave no Health Connect as refeições que regista no Calorify',
			'onboarding.healthConnect.seamlessIntegration.title' => 'O controlo é seu',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Escolha qualquer uma das permissões e altere o acesso a qualquer momento',
			'onboarding.healthConnect.userControl.title' => 'O controlo é seu',
			'onboarding.healthConnect.userControl.description' => 'Escolha qualquer uma das permissões e altere o acesso a qualquer momento',
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
			'home.dailyGoal.kcal' => 'quilocalorias',
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
			'home.connectHealth.dataUseDescription' => 'Utilize as calorias queimadas no seu objetivo e partilhe as refeições registadas',
			'home.connectHealth.installOrUpdate' => 'Instalar ou atualizar',
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
			'meal.imageTooLarge' => 'Esta foto ainda tem mais de 1 MB após a compressão. Escolha uma foto diferente.',
			'meal.failedToSave' => 'Falha ao guardar os dados. Por favor, tente novamente.',
			'meal.skip' => 'Ignorar',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Pergunta ${current} de ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Nenhuma pergunta disponível',
			'meal.questionFlow.next' => 'Seguinte',
			'meal.questionFlow.continueLabel' => 'Continuar',
			'meal.questionFlow.countQuestion' => 'Escolha a quantidade',
			'meal.questionFlow.itemSizeQuestion' => 'Escolha o tamanho do item',
			'meal.questionFlow.portionSizeQuestion' => 'Escolha o tamanho da porção',
			'meal.questionFlow.option6plus' => '6 ou mais',
			'meal.questionFlow.optionSmall' => 'Pequeno',
			'meal.questionFlow.optionRegular' => 'Normal',
			'meal.questionFlow.optionLarge' => 'Grande',
			'meal.questionFlow.optionThin' => 'Fino',
			'meal.questionFlow.optionThick' => 'Grosso',
			'meal.questionFlow.optionMini' => 'Mini',
			'meal.questionFlow.optionStuffed' => 'Recheado',
			'meal.questionFlow.optionHeavy' => 'Pesado',
			'meal.questionFlow.optionSmaller' => 'Menor',
			'meal.questionFlow.optionTypical' => 'Típico',
			'meal.questionFlow.optionLarger' => 'Maior',
			'meal.questionFlow.useEstimate' => 'Usar estimativa',
			'meal.questionFlow.numberRange' => ({required Object min, required Object max, required Object step}) => 'De ${min} a ${max}, em incrementos de ${step}',
			'meal.questionFlow.invalidNumber' => 'Insira um valor dentro do intervalo permitido',
			'meal.analysis.title' => 'A analisar a sua refeição',
			'meal.analysis.stepStarted' => 'A começar…',
			'meal.analysis.stepDecomposition' => 'A compreender a sua refeição…',
			'meal.analysis.stepIngredients' => 'A associar ingredientes aos dados nutricionais…',
			'meal.analysis.stepUncertainty' => 'A verificar a confiança…',
			'meal.analysis.stepMealTypeQuestion' => 'Quase lá…',
			'meal.analysis.stepResult' => 'A finalizar o resultado…',
			'meal.analysis.stepError' => 'Algo correu mal',
			'meal.analysis.providerUnavailable' => 'O serviço de análise de refeições está temporariamente indisponível. Tente novamente.',
			'meal.analysis.invalidModelOutput' => 'Não foi possível entender a resposta sobre a refeição. Tente novamente.',
			'meal.analysis.nutritionDataUnavailable' => 'Os dados nutricionais estão temporariamente indisponíveis. Tente novamente.',
			'meal.analysis.analysisUnavailable' => 'A análise da refeição está temporariamente indisponível. Tente novamente.',
			'meal.analysis.unresolvedNutrition' => 'Não conseguimos vincular com segurança os dados nutricionais desta refeição. Tente adicionar mais detalhes.',
			'meal.analysis.noFoodTip' => 'Não foi detetado nenhum alimento. Tente outra foto ou descrição.',
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
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '«${text}»',
			'meal.analysis.calorieRange' => ({required Object min, required Object max}) => 'Intervalo estimado: ${min}–${max} kcal',
			'meal.analysis.offlineTip0' => 'Dica: Consistência vence a perfeição — registos regulares revelam os padrões que importam.',
			'meal.analysis.offlineTip1' => 'Dica: Para fotografias, luz natural e uma vista de cima ajudam na precisão das porções.',
			'meal.analysis.offlineTip2' => 'Dica: Indique bebidas, molhos e óleo de cozinha — adicionam calorias que frequentemente se esquecem.',
			'meal.analysis.offlineTip3' => 'Dica: Uma nota rápida da porção (1 taça, café grande) torna as estimativas muito mais precisas.',
			'meal.analysis.offlineTip4' => 'Dica: Registar depois da refeição também cria o hábito; a perfeição é opcional.',
			'meal.analysis.offlineTip5' => 'Dica: Indique como foi cozinhado quando altera muito as calorias (frito vs assado).',
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
			'editProfile.imperial' => 'Sistema imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lb',
			'editProfile.metricCm' => 'Métrico (cm)',
			'editProfile.imperialFtIn' => 'Sistema imperial (pés/pol)',
			'editProfile.metricKg' => 'Métrico (kg)',
			'editProfile.imperialLbs' => 'Sistema imperial (lb)',
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
			'settings.sections.healthConnect' => 'LIGAÇÃO AO HEALTH CONNECT',
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
			'settings.clearAllData.localOnlySubtitle' => 'Eliminar os dados do Calorify armazenados neste dispositivo',
			'settings.clearAllData.confirmationTitle' => 'Apagar todos os dados?',
			'settings.clearAllData.confirmationMessage' => 'Isto elimina permanentemente deste dispositivo as refeições registadas, os favoritos e as definições de perfil. As refeições já partilhadas com o Health Connect e o acesso ao Health Connect são geridos separadamente em Definições > Health Connect.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Isto elimina permanentemente deste dispositivo as refeições registadas, os favoritos e as definições de perfil. As refeições já partilhadas com o Health Connect e o acesso ao Health Connect são geridos separadamente em Definições > Health Connect.',
			'settings.clearAllData.cancel' => 'Cancelar',
			'settings.clearAllData.clearEverything' => 'Apagar tudo',
			'settings.debugOptions.title' => 'Opções de depuração',
			'settings.developerModeEnabled' => 'Modo de desenvolvedor ativado!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Ver e gerir permissões',
			'settings.healthConnect.unavailable.title' => 'Health Connect indisponível',
			'settings.healthConnect.unavailable.description' => 'O Health Connect não é suportado neste dispositivo.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'O Health Connect não é suportado neste dispositivo.',
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
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Análises e diagnósticos limitados\n${appLabel} utiliza eventos básicos da app e diagnósticos de falhas para melhorar a fiabilidade. Os valores dos registos de saúde não são utilizados para publicidade nem vendidos.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Sem anúncios por design\n${appLabel} foi concebido para funcionar sem anúncios ou monetização baseada em dados.',
			'settings.about.privacy.noDataSelling' => 'Sem venda de dados\nOs seus dados de saúde nunca são vendidos nem partilhados com terceiros.',
			'settings.about.privacy.localStorage' => 'Armazenamento local por defeito\nOs seus dados permanecem no seu dispositivo.',
			'settings.about.privacy.privacyPolicy' => 'Política de Privacidade',
			'settings.about.developer.title' => 'Desenvolvido por um único programador',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} é criado e mantido por um único programador focado em desenvolver software de saúde tranquilo e que respeita a privacidade.\n\nO feedback é lido pessoalmente e ajuda a orientar o rumo da app.',
			'settings.about.developer.website' => 'Site',
			'settings.about.developer.email' => 'Correio eletrónico',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Aprecia o ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'O seu feedback ajuda a tornar o ${appLabel} melhor para todos.',
			'settings.about.feedback.rateApp' => 'Avaliar na Play Store',
			'settings.about.feedback.sendFeedback' => 'Enviar feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify versão ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Compilação ${buildNumber}',
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
			_ => null,
		} ?? switch (path) {
			'disclaimer.snap.ingredients.title' => 'Ingredientes',
			'disclaimer.snap.ingredients.description' => 'Pratos complexos com muitos ingredientes ocultos podem conduzir a estimativas menos precisas.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitações da base de dados',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'A base de dados de alimentos do ${appLabel} é extensa, mas pode não incluir todos os alimentos ou variações existentes.',
			'disclaimer.weightEstimate.title' => 'Sobre a estimativa de peso',
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
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Voltar',
			'watch.common.cancel' => 'Cancelar',
			'watch.common.delete' => 'Eliminar',
			'watch.common.retry' => 'Tentar novamente',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Nutriente',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} gramas',
			'watch.nutrition.protein' => 'Proteína',
			'watch.nutrition.carbs' => 'Hidratos de carbono',
			'watch.nutrition.fat' => 'Gordura',
			'watch.nutrition.fiber' => 'Fibra',
			'watch.sync.syncWithPhone' => 'Sincronizar com o telemóvel',
			'watch.sync.syncing' => 'A sincronizar…',
			'watch.sync.synced' => 'Sincronizado',
			'watch.sync.syncedJustNow' => 'Sincronizado agora',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Sincronizado há ${minutes}m',
			'watch.sync.failed' => 'Sincronização falhou',
			'watch.sync.phoneDisconnected' => 'Telemóvel desconectado',
			'watch.sync.tapToSync' => 'Toque para sincronizar',
			'watch.sync.refreshFailed' => 'Não foi possível atualizar. Verifique o telemóvel.',
			'watch.sync.openPhone' => 'Abra o Calorify no telemóvel e toque em atualizar.',
			'watch.home.today' => 'Hoje',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} calorias consumidas de ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} acima da meta',
			'watch.home.remaining' => ({required Object calories}) => '${calories} restantes',
			'watch.home.left' => ({required Object calories}) => '${calories} restantes',
			'watch.home.goal' => ({required Object calories}) => 'Meta: ${calories} kcal',
			'watch.home.logMeal' => 'Registar refeição',
			'watch.home.todayMeals' => 'Refeições de hoje',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Refeições de hoje, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Ver mais ${count}',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} refeições adicionais, toque para ver todas',
			'watch.home.noMeals' => 'Sem refeições registadas',
			'watch.home.noMealsSemantics' => 'Nenhuma refeição registada hoje',
			'watch.home.tapLog' => 'Toque em Registar para começar',
			'watch.home.removedFromQueue' => 'Refeição removida da fila offline.',
			'watch.home.removedOffline' => 'Refeição removida offline. Será sincronizada quando o telemóvel se reconetar.',
			'watch.home.deleteFailed' => 'Não foi possível eliminar a refeição',
			'watch.history.title' => 'Refeições de hoje',
			'watch.history.refresh' => 'Atualizar refeições',
			'watch.history.loadFailed' => 'Não foi possível carregar as refeições',
			'watch.history.syncFailed' => 'Não foi possível sincronizar',
			'watch.history.emptyTitle' => 'Ainda sem refeições',
			'watch.history.emptyMessage' => 'Registe uma refeição a partir do ecrã Início para a ver aqui.',
			'watch.favorites.title' => 'Favoritos',
			'watch.favorites.refresh' => 'Atualizar favoritos',
			'watch.favorites.loadFailed' => 'Não foi possível carregar os favoritos',
			'watch.favorites.syncFailed' => 'Não foi possível sincronizar',
			'watch.favorites.emptyTitle' => 'Ainda sem favoritos',
			'watch.favorites.emptyMessage' => 'Assinale refeições na aplicação do telemóvel para as registar aqui com um toque.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} calorias. Toque para registar.',
			'watch.favorites.logged' => ({required Object name}) => '${name} registado!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} guardado offline. Será sincronizado quando o telemóvel se reconetar.',
			'watch.favorites.saveFailed' => 'Não foi possível guardar a refeição. Por favor, tente novamente.',
			'watch.favorites.log' => 'Registar',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calorias, registado às ${time}.',
			'watch.meal.longPressDelete' => 'Pressione longamente para eliminar.',
			'watch.meal.deleteTitle' => 'Eliminar refeição?',
			'watch.voice.title' => 'Registo de refeição por voz',
			'watch.voice.processing' => 'A analisar a sua refeição…',
			'watch.voice.processingDescription' => 'A estimar porções e nutrientes',
			'watch.voice.listening' => 'A escutar',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Parar gravação',
			'watch.voice.start' => 'Toque para começar a gravar',
			'watch.voice.starting' => 'A iniciar o microfone…',
			'watch.voice.prompt' => 'Toque, depois descreva a sua refeição',
			'watch.voice.tapToRetry' => 'Toque para tentar novamente',
			'watch.voice.example' => 'Experimente “2 rotis com dal”',
			'watch.voice.unavailable' => 'A entrada por voz não está disponível. Verifique a permissão do microfone nas definições do relógio.',
			'watch.voice.didNotStart' => 'O microfone não iniciou. Toque para tentar novamente.',
			'watch.voice.startFailed' => 'Não foi possível iniciar a gravação. Verifique as permissões do microfone.',
			'watch.voice.allowMicrophone' => 'Permita o acesso ao microfone para registar refeições por voz.',
			'watch.voice.needsConnection' => 'O reconhecimento de voz precisa de ligação. Toque para tentar novamente.',
			'watch.voice.microphoneUnavailable' => 'O microfone não está disponível. Toque para tentar novamente.',
			'watch.voice.microphoneBusy' => 'O microfone está ocupado. Aguarde um momento e tente novamente.',
			'watch.voice.languageUnsupported' => 'A entrada por voz não suporta a língua do relógio.',
			'watch.voice.temporarilyBusy' => 'A entrada por voz está temporariamente ocupada. Aguarde um momento e tente novamente.',
			'watch.voice.notRecognized' => 'Não percebi. Toque no microfone e tente outra vez.',
			'watch.voice.noSpeech' => 'Nenhuma fala detetada. Toque no microfone para tentar novamente.',
			'watch.voice.analysisFailed' => 'Análise falhou. Por favor, tente novamente.',
			'watch.voice.mealNotIdentified' => 'Não foi possível identificar a refeição. Tente descrevê-la de outra forma.',
			'watch.result.title' => 'Detalhes da refeição',
			'watch.result.savedOffline' => 'Guardado offline',
			'watch.result.logged' => 'Registado!',
			'watch.result.mealFound' => 'Refeição encontrada',
			'watch.result.estimatedEnergy' => 'Energia estimada',
			'watch.result.logMeal' => 'Registar refeição',
			'watch.result.logging' => 'A registar…',
			'watch.result.logAnother' => 'Registar outra',
			'watch.result.goingBack' => 'A regressar…',
			'watch.result.savedOfflineMessage' => 'Refeição guardada offline. Será sincronizada quando o telemóvel se reconetar.',
			'watch.result.saveFailed' => 'Não foi possível guardar a refeição. Por favor, tente novamente.',
			'common.betaTag' => 'Beta',
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
