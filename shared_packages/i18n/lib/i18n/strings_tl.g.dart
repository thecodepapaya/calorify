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
class TranslationsTl extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsTl _root = this; // ignore: unused_field

	@override 
	TranslationsTl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTl(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Tagalog';
	@override String get flag => '🇵🇭';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsTl errors = _TranslationsErrorsTl._(_root);
	@override late final _TranslationsOnboardingTl onboarding = _TranslationsOnboardingTl._(_root);
	@override late final _TranslationsTabsTl tabs = _TranslationsTabsTl._(_root);
	@override late final _TranslationsHomeTl home = _TranslationsHomeTl._(_root);
	@override late final _TranslationsHistoryTl history = _TranslationsHistoryTl._(_root);
	@override late final _TranslationsMealTl meal = _TranslationsMealTl._(_root);
	@override late final _TranslationsFavoritesTl favorites = _TranslationsFavoritesTl._(_root);
	@override late final _TranslationsProfileTl profile = _TranslationsProfileTl._(_root);
	@override late final _TranslationsHealthScoreTl healthScore = _TranslationsHealthScoreTl._(_root);
	@override late final _TranslationsEditProfileTl editProfile = _TranslationsEditProfileTl._(_root);
	@override late final _TranslationsSettingsTl settings = _TranslationsSettingsTl._(_root);
	@override late final _TranslationsRemindersTl reminders = _TranslationsRemindersTl._(_root);
	@override late final _TranslationsNotificationsTl notifications = _TranslationsNotificationsTl._(_root);
	@override late final _TranslationsLoginTl login = _TranslationsLoginTl._(_root);
	@override late final _TranslationsDisclaimerTl disclaimer = _TranslationsDisclaimerTl._(_root);
	@override late final _TranslationsLocalNutritionPhase4Tl localNutritionPhase4 = _TranslationsLocalNutritionPhase4Tl._(_root);
	@override late final _TranslationsCommonTl common = _TranslationsCommonTl._(_root);
	@override late final _TranslationsFeedbackRatingTl feedbackRating = _TranslationsFeedbackRatingTl._(_root);
	@override late final _TranslationsHealthTl health = _TranslationsHealthTl._(_root);
}

// Path: errors
class _TranslationsErrorsTl extends TranslationsErrorsEn {
	_TranslationsErrorsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Nakagawa ka na ng masyadong maraming kahilingan. Mangyaring maghintay ng kaunti bago subukang muli.';
	@override String get networkError => 'Error sa network. Pakisuri ang iyong koneksyon sa internet.';
	@override String get unknownError => 'May nangyaring mali. Subukang muli mamaya.';
	@override String get loadingProfileData => 'Nagkaroon ng error sa pag-load ng profile.';
	@override String get somethingWentWrong => 'May nangyaring mali.';
	@override String get retry => 'Subukang muli';
}

// Path: onboarding
class _TranslationsOnboardingTl extends TranslationsOnboardingEn {
	_TranslationsOnboardingTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Maligayang pagdating sa ${appLabel}';
	@override String get subtitle => 'Ang iyong personal na kasama sa nutrisyon na pinapagana ng AI';
	@override String get getStarted => 'Magsimula';
	@override late final _TranslationsOnboardingFeaturesTl features = _TranslationsOnboardingFeaturesTl._(_root);
	@override late final _TranslationsOnboardingGenderTl gender = _TranslationsOnboardingGenderTl._(_root);
	@override late final _TranslationsOnboardingHeightTl height = _TranslationsOnboardingHeightTl._(_root);
	@override late final _TranslationsOnboardingWeightTl weight = _TranslationsOnboardingWeightTl._(_root);
	@override late final _TranslationsOnboardingAgeTl age = _TranslationsOnboardingAgeTl._(_root);
	@override late final _TranslationsOnboardingBmiScaleTl bmiScale = _TranslationsOnboardingBmiScaleTl._(_root);
	@override late final _TranslationsOnboardingWeightGoalTl weightGoal = _TranslationsOnboardingWeightGoalTl._(_root);
	@override late final _TranslationsOnboardingActivityLevelTl activityLevel = _TranslationsOnboardingActivityLevelTl._(_root);
	@override late final _TranslationsOnboardingHealthConnectTl healthConnect = _TranslationsOnboardingHealthConnectTl._(_root);
	@override late final _TranslationsOnboardingReinforcementTl reinforcement = _TranslationsOnboardingReinforcementTl._(_root);
}

// Path: tabs
class _TranslationsTabsTl extends TranslationsTabsEn {
	_TranslationsTabsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Pangkalahatang-ideya';
	@override String get history => 'Kasaysayan';
}

// Path: home
class _TranslationsHomeTl extends TranslationsHomeEn {
	_TranslationsHomeTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryTl aiSummary = _TranslationsHomeAiSummaryTl._(_root);
	@override late final _TranslationsHomeDailyGoalTl dailyGoal = _TranslationsHomeDailyGoalTl._(_root);
	@override late final _TranslationsHomeDailySummaryTl dailySummary = _TranslationsHomeDailySummaryTl._(_root);
	@override late final _TranslationsHomeIntakeProgressTl intakeProgress = _TranslationsHomeIntakeProgressTl._(_root);
	@override late final _TranslationsHomeIntakeHistoryTl intakeHistory = _TranslationsHomeIntakeHistoryTl._(_root);
	@override late final _TranslationsHomeMealLogTl mealLog = _TranslationsHomeMealLogTl._(_root);
	@override late final _TranslationsHomeMealDescriptionTl mealDescription = _TranslationsHomeMealDescriptionTl._(_root);
	@override late final _TranslationsHomeFavoriteMealsTl favoriteMeals = _TranslationsHomeFavoriteMealsTl._(_root);
	@override late final _TranslationsHomeMealSnapTl mealSnap = _TranslationsHomeMealSnapTl._(_root);
	@override late final _TranslationsHomeConnectHealthTl connectHealth = _TranslationsHomeConnectHealthTl._(_root);
}

// Path: history
class _TranslationsHistoryTl extends TranslationsHistoryEn {
	_TranslationsHistoryTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Walang naitalang pagkain';
	@override String get emptyMessage => 'Kunan ng larawan ang huling kain mo para ma-log dito.';
	@override String get today => 'Ngayon';
	@override String get yesterday => 'Kahapon';
}

// Path: meal
class _TranslationsMealTl extends TranslationsMealEn {
	_TranslationsMealTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Naku!';
	@override String get delete => 'Tanggalin';
	@override String get editMeal => 'I-edit ang Pagkain';
	@override String get addMeal => 'Magdagdag ng Pagkain';
	@override String get saveMeal => 'I-save ang Pagkain';
	@override String get save => 'I-save';
	@override String get mealName => 'Pangalan ng Pagkain';
	@override String get mealNameHint => 'hal. Scrambled eggs na may toast';
	@override String get nameRequired => 'Ilagay ang pangalan ng pagkain bago i-save.';
	@override String get mealQuantity => 'Dami ng Pagkain';
	@override String get mealQuantityHint => 'hal. 1 mangkok, 2 hiwa';
	@override String get timeOfMeal => 'Oras ng Pagkain';
	@override String get timeOfMealHint => 'Piliin ang oras kung kailan ka kumain';
	@override String get mealType => 'Uri ng Pagkain';
	@override late final _TranslationsMealNutritionTl nutrition = _TranslationsMealNutritionTl._(_root);
	@override late final _TranslationsMealDeleteConfirmationTl deleteConfirmation = _TranslationsMealDeleteConfirmationTl._(_root);
	@override String get addedToLog => 'Nadagdag ang pagkain sa iyong log!';
	@override String couldNotAdd({required Object error}) => 'Hindi madagdag ang pagkain: ${error}';
	@override String get savedSuccessfully => 'Matagumpay na naidagdag ang pagkain!';
	@override String get updatedSuccessfully => 'Matagumpay na na-update ang pagkain!';
	@override String errorSaving({required Object error}) => 'Error sa pag-save ng pagkain: ${error}';
	@override String get removedFromFavorites => 'Tinanggal mula sa mga paborito!';
	@override String get savedAsFavorite => 'Na-save ang pagkain bilang paborito!';
	@override String get unfavorite => 'Tanggalin sa paborito';
	@override String couldNotUpdateFavorite({required Object error}) => 'Hindi ma-update ang paborito: ${error}';
	@override String get feedbackThanks => 'Salamat sa feedback!';
	@override String get reanalysisUpdated => 'Na-update ang pagsusuri ng pagkain base sa iyong feedback.';
	@override String failedToProcess({required Object error}) => 'Nabigong iproseso: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Nabigong iproseso ang larawan: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Error sa pag-compress ng larawan: ${error}';
	@override String get failedToSave => 'Nabigong i-save ang datos. Pakisubukang muli.';
	@override String get skip => 'Laktawan';
	@override late final _TranslationsMealQuestionFlowTl questionFlow = _TranslationsMealQuestionFlowTl._(_root);
	@override late final _TranslationsMealAnalysisTl analysis = _TranslationsMealAnalysisTl._(_root);
	@override late final _TranslationsMealLocalInferenceTl localInference = _TranslationsMealLocalInferenceTl._(_root);
	@override late final _TranslationsMealFeedbackTl feedback = _TranslationsMealFeedbackTl._(_root);
}

// Path: favorites
class _TranslationsFavoritesTl extends TranslationsFavoritesEn {
	_TranslationsFavoritesTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Paborito';
	@override String get empty => 'Wala pang paboritong pagkain.';
	@override String get searchPlaceholder => 'Maghanap ng paboritong pagkain';
	@override String get searchEmptyTitle => 'Walang paborito na tumutugma sa iyong paghahanap';
	@override String get searchEmptySubtitle => 'Subukan ang ibang pangalan ng pagkain, dami, o uri ng pagkain.';
	@override String get sortLabel => 'Isort ang mga paborito';
	@override String get undo => 'Bawiin';
	@override String removed({required Object name}) => 'Tinanggal si ${name} mula sa mga paborito';
	@override late final _TranslationsFavoritesSortOptionsTl sortOptions = _TranslationsFavoritesSortOptionsTl._(_root);
}

// Path: profile
class _TranslationsProfileTl extends TranslationsProfileEn {
	_TranslationsProfileTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Personal na Profile';
	@override String get noProfileData => 'Walang data ng profile';
	@override String get yourProfile => 'Ang Iyong Profile';
	@override String get viewAndManage => 'Tingnan at pamahalaan ang iyong impormasyon sa kalusugan';
	@override late final _TranslationsProfileSectionsTl sections = _TranslationsProfileSectionsTl._(_root);
	@override String get gender => 'Kasarian';
	@override String get height => 'Tangkad';
	@override String get weight => 'Timbang';
	@override String get age => 'Edad';
	@override String get weightGoal => 'Layunin sa Timbang';
	@override String get targetWeight => 'Target na Timbang';
	@override String get activityLevel => 'Antas ng Aktibidad';
	@override String get healthMetrics => 'Mga Sukat ng Kalusugan';
	@override String get notSet => 'Hindi nakaset';
	@override String get years => 'taon';
	@override String get updatedSuccessfully => 'Matagumpay na na-update ang profile!';
	@override late final _TranslationsProfileCalculatedValuesTl calculatedValues = _TranslationsProfileCalculatedValuesTl._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreTl extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iskor ng Kalusugan';
	@override String get whyThisScore => 'Bakit ang iskor na ito?';
	@override String get note => 'Ang iskor na ito ay isang pagtatantiya mula sa AI batay sa mga natukoy na sangkap at nutritional density. Laging kumonsulta sa isang propesyonal para sa payong pandiyeta.';
	@override String get unhealthy => 'Hindi Malusog';
	@override String get healthy => 'Malusog';
	@override String get neutral => 'Katamtaman';
}

// Path: editProfile
class _TranslationsEditProfileTl extends TranslationsEditProfileEn {
	_TranslationsEditProfileTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'I-edit ang Profile';
	@override late final _TranslationsEditProfileSectionsTl sections = _TranslationsEditProfileSectionsTl._(_root);
	@override String get gender => 'Kasarian';
	@override String get dateOfBirth => 'Petsa ng Kapanganakan';
	@override String get height => 'Tangkad';
	@override String get weight => 'Timbang';
	@override String get weightGoal => 'Layunin sa Timbang';
	@override String get activityLevel => 'Antas ng Aktibidad';
	@override String get metric => 'Metriko';
	@override String get imperial => 'Imperyal';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'libra (lbs)';
	@override String get metricCm => 'Metriko (cm)';
	@override String get imperialFtIn => 'Imperyal (ft/in)';
	@override String get metricKg => 'Metriko (kg)';
	@override String get imperialLbs => 'Imperyal (lbs)';
	@override late final _TranslationsEditProfileGendersTl genders = _TranslationsEditProfileGendersTl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsTl weightGoals = _TranslationsEditProfileWeightGoalsTl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsTl activityLevels = _TranslationsEditProfileActivityLevelsTl._(_root);
}

// Path: settings
class _TranslationsSettingsTl extends TranslationsSettingsEn {
	_TranslationsSettingsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Setting';
	@override late final _TranslationsSettingsSectionsTl sections = _TranslationsSettingsSectionsTl._(_root);
	@override late final _TranslationsSettingsEditProfileTl editProfile = _TranslationsSettingsEditProfileTl._(_root);
	@override late final _TranslationsSettingsLanguageTl language = _TranslationsSettingsLanguageTl._(_root);
	@override late final _TranslationsSettingsHeightUnitTl heightUnit = _TranslationsSettingsHeightUnitTl._(_root);
	@override late final _TranslationsSettingsWeightUnitTl weightUnit = _TranslationsSettingsWeightUnitTl._(_root);
	@override late final _TranslationsSettingsMealRemindersTl mealReminders = _TranslationsSettingsMealRemindersTl._(_root);
	@override late final _TranslationsSettingsLocalInferenceTl localInference = _TranslationsSettingsLocalInferenceTl._(_root);
	@override late final _TranslationsSettingsThemeTl theme = _TranslationsSettingsThemeTl._(_root);
	@override late final _TranslationsSettingsSendFeedbackTl sendFeedback = _TranslationsSettingsSendFeedbackTl._(_root);
	@override late final _TranslationsSettingsExportMealHistoryTl exportMealHistory = _TranslationsSettingsExportMealHistoryTl._(_root);
	@override late final _TranslationsSettingsClearAllDataTl clearAllData = _TranslationsSettingsClearAllDataTl._(_root);
	@override late final _TranslationsSettingsDebugOptionsTl debugOptions = _TranslationsSettingsDebugOptionsTl._(_root);
	@override String get developerModeEnabled => 'Naka-enable ang developer mode!';
	@override late final _TranslationsSettingsHealthConnectTl healthConnect = _TranslationsSettingsHealthConnectTl._(_root);
	@override late final _TranslationsSettingsAboutTl about = _TranslationsSettingsAboutTl._(_root);
	@override late final _TranslationsSettingsAppInfoTl appInfo = _TranslationsSettingsAppInfoTl._(_root);
}

// Path: reminders
class _TranslationsRemindersTl extends TranslationsRemindersEn {
	_TranslationsRemindersTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Manatiling nasa landas gamit ang mga paalala';
	@override String get description => 'Tumatanggap ng magagaan na paalala para mag-log ng iyong mga pagkain at manatiling consistent sa iyong mga layunin sa nutrisyon';
	@override String get notificationsEnabled => 'Mga Notification Na-enable';
	@override String get notificationsDisabled => 'Mga Notification Na-disable';
	@override String get enabledSubtitle => 'Makakatanggap ka ng paalala sa pagkain';
	@override String get disabledSubtitle => 'I-enable ang mga notification para makatanggap ng paalala sa pagkain';
	@override String get mealReminders => 'Mga Paalala sa Pagkain';
	@override String get breakfast => 'Almusal';
	@override String get lunch => 'Tanghalian';
	@override String get dinner => 'Hapunan';
	@override String get snack => 'Merienda';
	@override String get unknown => 'Hindi kilala';
	@override String get change => 'Baguhin';
	@override String get enableNotifications => 'I-enable ang Mga Notification';
	@override String get skipForNow => 'Laktawan muna';
	@override String get saveChanges => 'I-save ang Mga Pagbabago';
	@override String get enabledSuccessfully => 'Matagumpay na na-enable ang mga notification!';
	@override String get permissionDenied => 'Tinanggihan ang permiso sa notification';
	@override String errorEnabling({required Object error}) => 'Error sa pag-enable ng notifications: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Error sa pagkompleto ng setup: ${error}';
}

// Path: notifications
class _TranslationsNotificationsTl extends TranslationsNotificationsEn {
	_TranslationsNotificationsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastTl breakfast = _TranslationsNotificationsBreakfastTl._(_root);
	@override late final _TranslationsNotificationsLunchTl lunch = _TranslationsNotificationsLunchTl._(_root);
	@override late final _TranslationsNotificationsDinnerTl dinner = _TranslationsNotificationsDinnerTl._(_root);
	@override late final _TranslationsNotificationsSnackTl snack = _TranslationsNotificationsSnackTl._(_root);
	@override late final _TranslationsNotificationsTestTl test = _TranslationsNotificationsTestTl._(_root);
}

// Path: login
class _TranslationsLoginTl extends TranslationsLoginEn {
	_TranslationsLoginTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mag-login';
	@override String get signInWithGoogle => 'Mag-sign in gamit ang Google';
	@override String get signInFailed => 'Nabigo o kinansela ang Google Sign-In.';
}

// Path: disclaimer
class _TranslationsDisclaimerTl extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Pakitandaan';
	@override late final _TranslationsDisclaimerSnapTl snap = _TranslationsDisclaimerSnapTl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateTl weightEstimate = _TranslationsDisclaimerWeightEstimateTl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTl healthMetrics = _TranslationsDisclaimerHealthMetricsTl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureTl calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureTl._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Tl extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Tl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'Itinugma ang nutrisyon mula sa na-download na USDA pack';
	@override String get nutritionCached => 'Itinugma ang nutrisyon mula sa USDA cache sa device';
	@override String get nutritionMixed => 'Pinagsama ang nutrisyon mula sa na-download, naka-cache, at remote na mga row ng USDA';
	@override String get calculationLocal => 'Kinuwenta sa device na ito ang calories at macros';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: na-download na USDA pack';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: USDA cache sa device';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: row ng USDA na kinuha sa pamamagitan ng Calorify';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: deterministikong nutrition constant';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · set ng data ${datasetVersion}';
	@override String get portionSmaller => 'Mas kaunti';
	@override String get portionEstimated => 'Tinataya';
	@override String get portionLarger => 'Mas marami';
	@override String portionQuestion({required Object ingredient}) => 'Aling dami ang pinakamalapit para sa ${ingredient}?';
	@override String get mealTypeQuestion => 'Anong meal ito?';
	@override String get localNutritionTip => 'Kinuwenta mula sa beripikadong lokal na nutrition data.';
	@override String get offlineNutritionTitle => 'I-download ang nutrition data';
	@override String get offlineNutritionSubtitle => 'Gumamit ng beripikadong mga row ng USDA at deterministikong pagkukuwenta sa device na ito kapag sakop ang lahat ng sangkap.';
	@override String get offlineNutritionUnavailable => 'Hindi available ang lokal na nutrition data para sa release na ito ng app.';
	@override String get offlineNutritionNotDownloaded => 'Walang na-download na beripikadong nutrition pack.';
	@override String get offlineNutritionInstalling => 'Dina-download at bineberipika ang nutrition data…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Pakete ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} naka-cache na row ng USDA · ${size}';
	@override String get offlineNutritionUpdate => 'Tingnan kung may update';
	@override String get offlineNutritionClear => 'I-clear ang lokal na nutrition data';
	@override String get offlineNutritionClearTitle => 'I-clear ang lokal na nutrition data?';
	@override String get offlineNutritionClearBody => 'Aalisin nito ang na-download na USDA pack at lookup cache. Pananatilihin ng mga naka-log na meal ang eksaktong nutrition snapshot na ginamit noong na-save ang mga ito.';
	@override String get offlineNutritionClearConfirm => 'I-clear ang data';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Hindi ma-download at ma-verify ang lokal na nutrition data: ${error}';
	@override String get offlineNutritionCleared => 'Na-clear ang lokal na nutrition data';
}

// Path: common
class _TranslationsCommonTl extends TranslationsCommonEn {
	_TranslationsCommonTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get close => 'Isara';
	@override String get kContinue => 'Magpatuloy';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingTl extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Nagugustuhan mo ba ang ${appLabel}?';
	@override String get yes => 'Oo, nagugustuhan ko';
	@override String get no => 'Hindi gaano';
	@override String get rateStepHeading => 'Mag-rate sa Play Store';
	@override String get emailStepHeading => 'Magpadala ng feedback sa email';
	@override String soloDevMessage({required Object appLabel}) => 'Ang isang mabilis na rating ay tumutulong sa iba na matagpuan ang ${appLabel} at nagpapatuloy ang development. Maaari ka bang maglaan ng sandali para mag-iwan?';
	@override String get shareFeedbackViaEmail => 'Hinuhubog ng iyong feedback kung ano ang susunod — binabasa namin ang bawat mensahe. Nais mo bang magbahagi ng iyong naiisip sa pamamagitan ng email?';
	@override String get rateCta => 'Mag-rate sa Play Store';
	@override String get maybeLater => 'Baka mamaya';
	@override String get sendFeedback => 'Magpadala ng feedback';
	@override String get noThanks => 'Hindi na, salamat';
	@override String get aboutUsDescription => 'Ginawa nang may pag-aalaga ng isang maliit na team. Nakatuon kami sa privacy, simple, at pagtulong sa iyo na bumuo ng mas magagandang gawi sa pagkain.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Interesado kung sino ang nasa likod ng ${appLabel}? Tingnan ';
	@override String get aboutUsLinkLabel => 'Tungkol sa amin';
	@override String get thankYouMessage => 'Salamat! Muli naming tatanungin sa ibang pagkakataon.';
}

// Path: health
class _TranslationsHealthTl extends TranslationsHealthEn {
	_TranslationsHealthTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Hindi ma-sync sa Health Connect';
	@override String get mealSynced => 'Na-sync ang pagkain sa Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesTl extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionTl foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionTl._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisTl aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisTl._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationTl healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationTl._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderTl extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ano ang iyong kasarian?';
	@override String get description => 'Nakakatulong ang kasarian para tama naming makalkula ang iyong basal metabolic rate (BMR).';
	@override String get next => 'Susunod';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightTl extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gaano ka katangkad?';
	@override String get description => 'Nakakatulong ang iyong tangkad para tama naming makalkula ang iyong BMI at pangangailangang enerhiya.';
	@override String get metric => 'Metriko';
	@override String get imperial => 'Imperyal';
	@override String get next => 'Susunod';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightTl extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Ano ang iyong kasalukuyang timbang?';
	@override String get currentDescription => 'Mahalaga ang iyong kasalukuyang timbang para i-personalize ang iyong pang-araw-araw na layunin.';
	@override String get targetTitle => 'Ano ang iyong target na timbang?';
	@override String get targetDescription => 'Ang pagtatakda ng target na timbang ay tumutulong sa amin matukoy ang iyong pangmatagalang plano.';
	@override String get metric => 'Metriko';
	@override String get imperial => 'Imperyal';
	@override String get next => 'Susunod';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeTl extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kailan ang iyong kaarawan?';
	@override String get description => 'Nakakatulong ang iyong edad para tama naming makalkula ang iyong pangangailangang calorie.';
	@override String get next => 'Susunod';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleTl extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Mababa';
	@override String get healthy => 'Malusog';
	@override String get overweight => 'Sobra';
	@override String get obese => 'Obeso';
	@override late final _TranslationsOnboardingBmiScaleCategoriesTl categories = _TranslationsOnboardingBmiScaleCategoriesTl._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesTl messages = _TranslationsOnboardingBmiScaleMessagesTl._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalTl extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ano ang iyong layunin?';
	@override String get description => 'Piliin ang layunin na pinaka-tumutugma sa nais mong makamit';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelTl extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gaano ka kaaktibo?';
	@override String get description => 'Nakakatulong ito para mas tumpak naming kalkulahin ang iyong pang-araw-araw na pangangailangan sa calorie';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectTl extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kumonekta sa Health Connect';
	@override String get description => 'Gamitin ang calories na nasunog sa iyong pang-araw-araw na goal at, kung gusto mo, ibahagi sa Health Connect ang mga na-log na pagkain.';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingTl automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingTl._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsTl progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsTl._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationTl seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationTl._(_root);
	@override String get connected => 'Naka-konekta ang Health Connect';
	@override String get notConnected => 'Hindi nakakonekta ang Health Connect';
	@override String get setup => 'I-setup ang Health Connect';
	@override String get skipForNow => 'Laktawan muna';
	@override String get statusConnected => 'Nakakonekta ang Health Connect.';
	@override String get statusSuccess => 'Matagumpay na nakakonekta ang Health Connect!';
	@override String get statusNotConnected => 'Piliin ang mga feature ng Health Connect na gusto mong i-enable.';
	@override String get statusPartial => 'Bahagyang nakakonekta ang Health Connect. I-enable ang natitirang permiso para magamit ang parehong feature.';
	@override String get statusProviderUpdateRequired => 'I-install o i-update ang Health Connect para magpatuloy.';
	@override String get statusUnavailable => 'Hindi sinusuportahan ang Health Connect sa device na ito.';
	@override String get installOrUpdate => 'I-install o i-update';
	@override String get manageAccess => 'Pamahalaan ang access';
	@override String statusPermissionDenied({required Object appLabel}) => 'Tinanggihan ang pahintulot. I-enable ang mga pahintulot ng Health Connect sa settings ng iyong telepono para sa ${appLabel}.';
	@override String statusError({required Object error}) => 'Nagkaroon ng error sa pag-set up ng Health Connect: ${error}';
	@override late final _TranslationsOnboardingHealthConnectCaloriesBurnedTl caloriesBurned = _TranslationsOnboardingHealthConnectCaloriesBurnedTl._(_root);
	@override String get overviewDescription => 'Gamitin sa araw-araw na layunin ang mga nasunog na calorie at, kung nais, ibahagi sa Health Connect ang mga naitalang pagkain.';
	@override late final _TranslationsOnboardingHealthConnectShareLoggedMealsTl shareLoggedMeals = _TranslationsOnboardingHealthConnectShareLoggedMealsTl._(_root);
	@override late final _TranslationsOnboardingHealthConnectUserControlTl userControl = _TranslationsOnboardingHealthConnectUserControlTl._(_root);
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementTl extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessTl trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessTl._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileTl healthProfile = _TranslationsOnboardingReinforcementHealthProfileTl._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleTl goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleTl._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryTl extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buod ng AI Mo';
	@override String get logMore => 'Mag-log ng higit pang mga pagkain sa susunod na ilang araw para makuha ang iyong personalisadong insight mula sa AI.';
	@override String get loading => 'Ina-load ang iyong buod...';
	@override String mealCount({required Object count}) => '${count} na pagkain na na-log';
	@override String macroBalanceScore({required Object score}) => 'Iskor ng balanse ${score}';
	@override String get topFoods => 'Nangungunang pagkain';
	@override String get trendUp => 'Tumataas ang calories';
	@override String get trendDown => 'Bumababa ang calories';
	@override String get trendSteady => 'Nanatiling pareho ang calories';
	@override String generatedAt({required Object time}) => 'Na-update ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalTl extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Itakda ang Iyong Pang-araw-araw na Layunin';
	@override String get titleSet => 'Ang Iyong Pang-araw-araw na Layunin';
	@override String get description => 'Handa ka na bang simulan ang iyong paglalakbay sa kagalingan? Itakda ang iyong pang-araw-araw na calorie target sa ibaba para simulan ang iyong progreso.';
	@override String get descriptionSet => 'Nakasaad na ang iyong gabay! Ito ang iyong pang-araw-araw na calorie target.';
	@override String get yourGoal => 'Ang Iyong Layunin';
	@override String get goal => 'Layunin';
	@override String get dailyCalories => 'Pang-araw-araw na calories (kcal)';
	@override String get setGoal => 'Itakda ang Layunin';
	@override String get intake => 'Konsumo';
	@override String get burned => 'Nasunog';
	@override String get weightImpact => 'Epekto sa Timbang';
	@override String get estLoss => 'Tinatayang pagbawas ng';
	@override String get estGain => 'Tinatayang pagtaas ng';
	@override String get kcal => 'kilocalorie (kcal)';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryTl extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pang-araw-araw na Buod';
	@override String get calories => 'Kaloriya';
	@override String get carbs => 'Carbohidrat';
	@override String get protein => 'Protina';
	@override String get fat => 'Taba';
	@override String get fiber => 'Hibla';
	@override String get grams => 'gramo';
	@override String get chartAccessibilityLabel => 'Tsart ng mga macro';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressTl extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hating Macro Ngayon';
	@override String get target => 'Layunin';
	@override String get current => 'Kasalukuyan';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryTl extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => '7-Araw na Kasaysayan ng Macro';
	@override String get trendTitle => 'Uso Ngayon';
	@override String peakHour({required Object hour}) => 'Pinakamataas: ${hour}:00';
	@override String get noHistoryYet => 'Walang kasaysayan pa';
	@override String get startLogging => 'Magsimulang mag-log ng mga pagkain para makita ang iyong\n7-araw na mga trend ng macro dito';
}

// Path: home.mealLog
class _TranslationsHomeMealLogTl extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Na-log na Mga Pagkain';
	@override String get emptyMessage => 'Kunan ng larawan ang huling kain mo para ma-log dito.';
	@override String get noMealsToday => 'Walang naitalang pagkain para sa araw na ito';
	@override String get seeAllMeals => 'Tingnan ang lahat ng pagkain';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionTl extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mabilis na Pagdagdag gamit ang AI';
	@override String get description => 'Ilarawan ang iyong pagkain, at hayaan ang AI ang mag-asikaso ng detalye.';
	@override String get hint => 'hal. Sa almusal kumain ako ng malaking mangkok ng oatmeal na may hiniwang saging at isang scoop ng whey ...';
	@override String get analyzeMeal => 'Suriin ang pagkain';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsTl extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Paboritong Pagkain';
	@override String get description => 'Mabilis na idagdag ang isa sa iyong mga paborito.';
	@override String get noFavorites => 'Wala pang paboritong pagkain.';
	@override String get addFavoriteHint => 'I-click ang bituin sa isang pagkain para markahan bilang paborito.';
	@override String get seeAll => 'Tingnan lahat';
	@override String get add => 'Idagdag';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapTl extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kunan at Subaybayan ang Iyong Pagkain';
	@override String get description => 'Gamitin ang iyong camera para kunan ng larawan ang iyong pagkain para sa pagsusuri ng AI.';
	@override String get openCamera => 'Buksan ang Camera';
	@override String get gallery => 'Galeria';
	@override String get compressingPhoto => 'Ina-optimize ang larawan…';
	@override String get uploadingPhoto => 'Ina-upload ang larawan…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthTl extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'I-sync sa Health Connect';
	@override String get description => 'Gamitin ang calories na nasunog sa iyong goal at ibahagi ang mga na-log na pagkain';
	@override String get install => 'I-install o i-update';
	@override String get connect => 'Ikonekta';
	@override String get dataUseDescription => 'Gamitin sa iyong layunin ang mga nasunog na calorie at ibahagi ang mga naitalang pagkain';
	@override String get installOrUpdate => 'Mag-install o mag-update';
}

// Path: meal.nutrition
class _TranslationsMealNutritionTl extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kaloriya';
	@override String get carbs => 'Carbohidrat (g)';
	@override String get protein => 'Protina (g)';
	@override String get fat => 'Taba (g)';
	@override String get fiber => 'Hibla (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationTl extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tanggalin ang Pagkain';
	@override String get message => 'Sigurado ka bang tatanggalin ang entry na ito ng pagkain?';
	@override String get cancel => 'Kanselahin';
	@override String get delete => 'Tanggalin';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowTl extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Tanong ${current} ng ${total}';
	@override String get noQuestionsAvailable => 'Walang mga tanong na available';
	@override String get next => 'Susunod';
	@override String get continueLabel => 'Magpatuloy';
}

// Path: meal.analysis
class _TranslationsMealAnalysisTl extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sinusuri ang iyong pagkain';
	@override String get stepStarted => 'Nagsisimula…';
	@override String get stepDecomposition => 'Iniintindi ang iyong pagkain…';
	@override String get stepIngredients => 'Tinutugma ang mga sangkap sa nutrition data…';
	@override String get stepUncertainty => 'Tinitingnan ang kumpiyansa…';
	@override String get stepMealTypeQuestion => 'Halos tapos…';
	@override String get stepResult => 'Pinapinal ang resulta…';
	@override String get stepError => 'May nangyaring mali';
	@override String get stepDefault => 'Sinusuri ang iyong pagkain…';
	@override String get progressUnderstand => 'Pag-unawa sa iyong pagkain';
	@override String get progressMatch => 'Hinahanap ang nutrisyon ng sangkap';
	@override String get progressCheck => 'Sini-siyasat ang mga bahagi at kumpiyansa';
	@override String get progressMealType => 'Pinipili ang uri ng pagkain';
	@override String get progressFinish => 'Kinalkula ang calories at macros';
	@override String get detectedIngredientHeading => 'Mga sangkap na natutukoy namin';
	@override String ingredientsOverflow({required Object count}) => '${count} pa';
	@override String ingredientsLine({required Object count}) => '${count} na sangkap ang natukoy';
	@override String get ingredientsPending => 'Sinusuri ang mga sangkap…';
	@override String mealPreviewDescription({required Object text}) => '“${text}”';
	@override String get offlineTip0 => 'Tip: Mas mahalaga ang pagiging regular kaysa perpeksiyon—ang regular na pag-log ang nagpapakita ng mga pattern na mahalaga.';
	@override String get offlineTip1 => 'Tip: Para sa mga larawan, mas nakakatulong ang natural na ilaw at top-down na kuha para sa tumpak na bahagi.';
	@override String get offlineTip2 => 'Tip: Banggitin ang inumin, sarsa, at mantika sa pagluluto—nagdaragdag sila ng calories na madalas nakakaligtaan.';
	@override String get offlineTip3 => 'Tip: Ang mabilis na tala ng bahagi (1 mangkok, malaking kape) ay nagpapalinaw ng pagtataya.';
	@override String get offlineTip4 => 'Tip: Ang pag-log pagkatapos kumain ay nakakatulong pa ring bumuo ng gawi; hindi kailangan perpekto.';
	@override String get offlineTip5 => 'Tip: Sabihin kung paano niluto ang pagkain kapag malaki ang epekto sa calories (prito vs inihurno).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceTl extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Suriin ang mga nakitang sangkap';
	@override String get reviewSubtitle => 'Binigyang-kahulugan ito sa iyong device. Itama ang mga pangalan o dami bago kalkulahin ang nutrisyon.';
	@override String get mealName => 'Pangalan ng pagkain';
	@override String get ingredient => 'Sangkap';
	@override String get grams => 'Tinatayang gramo';
	@override String get removeIngredient => 'Alisin ang sangkap';
	@override String get continueLabel => 'Magpatuloy';
	@override String get invalidProposal => 'Magdagdag ng kahit isang sangkap at gumamit ng positibong halaga ng gramo.';
	@override String get localUnavailable => 'Hindi available ang on-device analysis sa ngayon.';
	@override String get calculationDetails => 'Paano ito kinalkula';
	@override String get interpretationLocal => 'Mga sangkap na binigyang-kahulugan sa device na ito';
	@override String get interpretationCloud => 'Mga sangkap na binigyang-kahulugan sa cloud';
	@override String get interpretationManual => 'Mga sangkap na sinuri o inedit mo';
	@override String get nutritionRemote => 'Nutrisyon na nakuha mula sa USDA sa pamamagitan ng Calorify';
	@override String get nutritionFallback => 'Ang ilang halaga ng nutrisyon ay tinaya nang remote';
	@override String get calculationServer => 'Calories at macros na kinalkula ng Calorify';
	@override String get fallbackUsed => 'Ang local analysis ay lumipat sa cloud processing';
	@override String get noRawContent => 'Ang mga diagnostic receipt ay hindi kasama ang text o larawan ng iyong pagkain.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackTl extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ano ang mali?';
	@override String get subtitle => 'Tulungan kaming pagbutihin ang pagsusuri sa pamamagitan ng pagpili ng isa o higit pang isyu.';
	@override String get tellUsMore => 'Sabihin pa';
	@override String get describeIncorrect => 'Ilarawan kung ano ang mali';
	@override String get submit => 'Isumite';
	@override String get issueFoodIdentification => 'Pagkilala sa pagkain';
	@override String get issuePortionSize => 'Laki ng bahagi';
	@override String get issueCalorieDistribution => 'Pamamahagi ng calories';
	@override String get issueMacrosWrong => 'Maling macros';
	@override String get issueMissingItems => 'Nawawalang items';
	@override String get issueExtraItems => 'Sobrang items';
	@override String get issueOther => 'Iba pa';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsTl extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Kamakailan';
	@override String get calories => 'Kaloriya';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsTl extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERSONAL NA PROFILE';
	@override String get basicInformation => 'PANGUNAHING IMPORMASYON';
	@override String get goalsAndActivity => 'LAYUNIN AT AKTIBIDAD';
	@override String get calculatedValues => 'NAKALKULANG HALAGA';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesTl extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Pang-araw-araw na Layunin';
	@override String get calPerDay => 'calorie/bawat araw';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsTl extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSONAL NA IMPORMASYON';
	@override String get physicalMeasurements => 'PISIKAL NA SUKAT';
	@override String get goalsAndActivity => 'LAYUNIN AT AKTIBIDAD';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersTl extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get male => 'Lalaki';
	@override String get female => 'Babae';
	@override String get other => 'Iba';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsTl extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightTl loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightTl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightTl maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightTl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightTl gainWeight = _TranslationsEditProfileWeightGoalsGainWeightTl._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsTl extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryTl sedentary = _TranslationsEditProfileActivityLevelsSedentaryTl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveTl lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveTl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveTl moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveTl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveTl veryActive = _TranslationsEditProfileActivityLevelsVeryActiveTl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveTl extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveTl._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsTl extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PERSONAL NA PROFILE';
	@override String get localization => 'Wika at Lokalidad';
	@override String get notifications => 'Mga Notification';
	@override String get healthConnect => 'PAGSASAMA SA HEALTH CONNECT';
	@override String get localInference => 'PAGSUSURI SA DEVICE';
	@override String get supportAndLegal => 'SUPORTA & LEGAL';
	@override String get about => 'TUNGKOL';
	@override String get dangerZone => 'DELIKADONG ZONA';
	@override String get developer => 'MGA DEVELOPER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileTl extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'I-edit ang Profile';
	@override String get subtitle => 'I-update ang iyong personal na impormasyon';
}

// Path: settings.language
class _TranslationsSettingsLanguageTl extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wika';
	@override String get subtitle => 'Piliin ang iyong nais na wika';
	@override String get searchHint => 'Maghanap ng mga wika...';
	@override String get noResults => 'Walang resulta';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitTl extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yunit ng Tangkad';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitTl extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yunit ng Timbang';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersTl extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paalaala sa Pagkain';
	@override String get subtitle => 'Manatiling nasa tamang landas sa tamang oras na mga alerto';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceTl extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pagsusuri ng Pagkain sa Device';
	@override String get subtitle => 'Bigyang-kahulugan ang mga suportadong pagkain gamit ang Gemini Nano bago kalkulahin ang nutrisyon';
	@override String get unavailable => 'Hindi available sa device na ito';
	@override String get rolloutUnavailable => 'May nakitang compatible na hardware, ngunit ang feature na ito ay hindi enabled para sa release na ito ng app';
	@override String get modelSetup => 'Kailangang matapos muna ang pag-download ng Gemini Nano bago ito ma-enable';
	@override String get useLocalTitle => 'Gamitin ang on-device analysis';
	@override String get useLocalSubtitle => 'Opsyonal at naka-off by default. Maaaring hindi gaanong maaasahan ang mga resulta para sa mga komplikadong pagkain.';
	@override String get disclosureTitle => 'Bago i-enable ang on-device analysis';
	@override String get disclosureBody => 'Kayang tukuyin ng Gemini Nano ang mga sangkap at tantyahin ang mga bahagi sa mga suportadong Android device. Ang iyong sinuring mungkahi ng sangkap ay ipapadala sa Calorify para sa USDA nutrition grounding at kalkulasyon.';
	@override String get disclosureLimit1 => 'Ang mga komplikadong putahe, nakatagong sangkap, at laki ng bahagi ay maaaring matukoy nang mali.';
	@override String get disclosureLimit2 => 'Maaaring hindi available ang model habang nag-da-download, busy, nasa background, o limitado ng device.';
	@override String get disclosureLimit3 => 'Kung hindi matapos ang local interpretation, awtomatikong ipapadala ng beta na ito ang iyong orihinal na paglalarawan ng pagkain sa Calorify para sa cloud analysis.';
	@override String get acknowledgement => 'Naiintindihan ko na dapat kong suriin ang mga nakitang sangkap at bahagi.';
	@override String get enable => 'Kumpirmahin at i-enable';
	@override String get cancel => 'Kanselahin';
}

// Path: settings.theme
class _TranslationsSettingsThemeTl extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Liwanag';
	@override String get dark => 'Madilim';
	@override String get system => 'Sistema';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackTl extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Magpadala ng Feedback';
	@override String subtitle({required Object appLabel}) => 'Tulungan kaming pagbutihin ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Puna sa ${appLabel} App';
	@override String get emailBodyPrefix => 'Pakibigay ang iyong feedback sa ibaba:';
	@override String get appVersion => 'Bersyon ng App';
	@override String get device => 'Kagamitan';
	@override String get osVersion => 'Bersyon ng OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryTl extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'I-export ang Kasaysayan ng Pagkain';
	@override String get subtitle => 'Ibahagi ang CSV ng iyong na-log na mga pagkain';
	@override String get shareText => 'Export ng kasaysayan ng pagkain mula sa Calorify mo';
	@override String failed({required Object error}) => 'Hindi ma-export ang kasaysayan ng pagkain: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataTl extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'I-clear Lahat ng Datos';
	@override String get subtitle => 'Tanggalin ang data ng Calorify na naka-store sa device na ito';
	@override String get confirmationTitle => 'Tanggalin Lahat ng Datos?';
	@override String get confirmationMessage => 'Permanente nitong tatanggalin sa device na ito ang mga na-log na pagkain, paborito, at mga setting ng profile. Hiwalay na pinamamahalaan sa Mga Setting > Health Connect ang mga pagkaing naibahagi na sa Health Connect at ang access sa Health Connect.';
	@override String get cancel => 'Kanselahin';
	@override String get clearEverything => 'I-clear Lahat';
	@override String get localOnlyConfirmationMessage => 'Permanente nitong buburahin sa device na ito ang mga naitalang pagkain, paborito, at setting ng profile. Hiwalay na pinamamahalaan sa Mga Setting > Health Connect ang mga pagkaing naibahagi na sa Health Connect at ang access dito.';
	@override String get localOnlySubtitle => 'Burahin ang data ng Calorify na nakaimbak sa device na ito';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsTl extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Opsyon sa Debug';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectTl extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Tingnan at pamahalaan ang mga permiso';
	@override late final _TranslationsSettingsHealthConnectUnavailableTl unavailable = _TranslationsSettingsHealthConnectUnavailableTl._(_root);
	@override late final _TranslationsSettingsHealthConnectUpdateRequiredTl updateRequired = _TranslationsSettingsHealthConnectUpdateRequiredTl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsTl permissions = _TranslationsSettingsHealthConnectPermissionsTl._(_root);
	@override String get managePermissions => 'Pamahalaan ang mga Permiso';
	@override String get openSettings => 'Buksan ang Mga Setting ng Health Connect';
	@override String get disconnect => 'Idiskonekta ang Health Connect';
	@override String get disconnectConfirmationTitle => 'Idiskonekta ang Health Connect?';
	@override String get disconnectConfirmationMessage => 'Mawawalan ng access ang Calorify sa Health Connect. Hindi matatanggal ang data na naisulat na roon.';
	@override String get disconnectConfirmationAction => 'Idiskonekta';
	@override String get deleteSyncedMeals => 'Tanggalin ang mga pagkain ng Calorify sa Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Tanggalin ang mga na-sync na pagkain?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Tanggalin sa Health Connect ang mga pagkaing na-sync ng bersyong ito ng Calorify? Hindi magbabago ang iyong lokal na meal log. Maaaring kailanganin pa ring alisin ang mas lumang Calorify entries gamit ang Pamahalaan ang Data sa Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Tanggalin ang mga na-sync na pagkain';
	@override String get deleteSyncedMealsSuccess => 'Natanggal na sa Health Connect ang mga pagkain ng Calorify.';
	@override String get deleteSyncedMealsFailed => 'Hindi matanggal ang mga na-sync na pagkain. Pakisubukang muli.';
	@override String get connectionPartial => 'Naka-enable ang ilang feature ng Health Connect.';
	@override String get connectionComplete => 'Naka-enable ang parehong feature ng Health Connect.';
	@override String get actionFailed => 'Hindi mabuksan ang Health Connect. Pakisubukang muli.';
	@override String get requestPermissions => 'Hilingin ang Mga Permiso';
	@override String get permissionRequestCancelledOrFailed => 'Nakansela o nabigo ang kahilingan ng permiso. Pakisubukang muli o bigyan ng permiso nang manu-mano sa mga setting ng Health Connect.';
	@override String get permissionRequestFailed => 'Hindi magawa ang paghingi ng permiso. Pakisubukang muli o bigyan nang manu-mano ng permiso sa mga setting ng Health Connect.';
	@override String get requestingPermissions => 'Humihiling...';
}

// Path: settings.about
class _TranslationsSettingsAboutTl extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tungkol';
	@override String get tagline => 'Mabilis, libre, at inuuna ang privacy sa kamalayan sa calories';
	@override late final _TranslationsSettingsAboutOurStoryTl ourStory = _TranslationsSettingsAboutOurStoryTl._(_root);
	@override late final _TranslationsSettingsAboutPrivacyTl privacy = _TranslationsSettingsAboutPrivacyTl._(_root);
	@override late final _TranslationsSettingsAboutDeveloperTl developer = _TranslationsSettingsAboutDeveloperTl._(_root);
	@override late final _TranslationsSettingsAboutFeedbackTl feedback = _TranslationsSettingsAboutFeedbackTl._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoTl extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify bersyon ${version}';
	@override String build({required Object buildNumber}) => 'Bersyon ng build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastTl extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oras na para sa Almusal! 🍳';
	@override String get body => 'Huwag kalimutan i-log ang iyong almusal';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchTl extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oras na para sa Tanghalian! 🥗';
	@override String get body => 'Oras na para i-log ang iyong tanghalian';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerTl extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oras na para sa Hapunan! 🍽️';
	@override String get body => 'Huwag kalimutan i-log ang iyong hapunan';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackTl extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oras na para sa Meryenda! 🍎';
	@override String get body => 'Oras para sa isang malusog na meryenda';
}

// Path: notifications.test
class _TranslationsNotificationsTestTl extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pagsubok na Abiso';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapTl extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} nagbibigay ng tinatayang impormasyon ng nutrisyon. Nakadepende ang tumpak na resulta sa iyong input at pagkakaiba-iba ng pagkain. Gamitin ito bilang gabay, hindi bilang tiyak na pinagkukunan. Kumunsulta sa propesyonal para sa personalisadong payong pandiyeta.';
	@override late final _TranslationsDisclaimerSnapPortionSizeTl portionSize = _TranslationsDisclaimerSnapPortionSizeTl._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsTl preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsTl._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsTl ingredients = _TranslationsDisclaimerSnapIngredientsTl._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsTl databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsTl._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateTl extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tungkol sa Tantiya ng Timbang';
	@override String get description => 'Ang inaasahang pagbabago ng timbang ay isang teoretikal na pagtatantiya batay sa simpleng calorie-in vs. calorie-out na modelo. Ito ay nilalayong magbigay ng motibasyon lamang, hindi prediksyon ng iyong aktwal na timbang.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyTl calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyTl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsTl biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsTl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightTl waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightTl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsTl extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get description => 'Tinutulungan ka ng mga sukatan na ito na maunawaan ang pangangailangan ng enerhiya ng iyong katawan at gabayan ang iyong mga layunin sa nutrisyon.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrTl bmr = _TranslationsDisclaimerHealthMetricsBmrTl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeTl tdee = _TranslationsDisclaimerHealthMetricsTdeeTl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalTl dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalTl._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureTl extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tantiyang Calorie na Nasunog';
	@override String get description => 'Kapag hindi available ang data mula sa Health Connect, tinatantya namin ang calories na nasunog ngayong araw gamit ang iyong Basal Metabolic Rate (BMR) at antas ng aktibidad (TDEE), na isina-scale para sa bahaging lumipas na ng araw.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedTl howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedTl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTl professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTl._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionTl extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Matalinong Pagkilala ng Pagkain';
	@override String get description => 'Kunan ng larawan at hayaang tuklasin ng AI ang iyong pagkain';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisTl extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pagsusuri ng AI';
	@override String get description => 'Makuha agad ang impormasyon ng nutrisyon mula sa iyong paglalarawan';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationTl extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrasyon sa Health Connect';
	@override String get description => 'Ikonekta sa Health Connect para sa mas mahusay na pananaw';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesTl extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Mababa ang timbang';
	@override String get healthyWeight => 'Malusog na timbang';
	@override String get overweight => 'Sobra ang timbang';
	@override String get obese => 'Obeso';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesTl extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Matutulungan ka naming bumuo ng planong pangkalusugan para makamit ang balanseng timbang gamit ang mga masusustansiyang pagkain.';
	@override String get healthy => 'Magaling! Nasa malusog kang saklaw. Tutulungan ka naming panatilihin ang iyong sigla at enerhiya.';
	@override String overweight({required Object appLabel}) => '${appLabel} gagawing mas simple ang iyong paglalakbay gamit ang pagsubaybay na pinapagana ng AI para tulungan kang maabot ang iyong target nang kumportable.';
	@override String get obese => 'Nandito kami para suportahan ka sa pamamagitan ng personalisadong gabay at mga napapanatiling estratehiya para sa iyong mga layunin sa kalusugan.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingTl extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calories na Nasunog';
	@override String get description => 'Basahin mula sa Health Connect ang kabuuang calories na nasunog ngayong araw';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsTl extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ibahagi ang mga Na-log na Pagkain';
	@override String get description => 'Isulat sa Health Connect ang mga pagkain na nila-log mo sa Calorify';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationTl extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ikaw ang May Kontrol';
	@override String get description => 'Pumili ng alinmang permiso at baguhin ang access anumang oras';
}

// Path: onboarding.healthConnect.caloriesBurned
class _TranslationsOnboardingHealthConnectCaloriesBurnedTl extends TranslationsOnboardingHealthConnectCaloriesBurnedEn {
	_TranslationsOnboardingHealthConnectCaloriesBurnedTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get description => 'Basahin sa Health Connect ang kabuuang calorie na nasunog ngayong araw';
	@override String get title => 'Mga Nasunog na Calorie';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _TranslationsOnboardingHealthConnectShareLoggedMealsTl extends TranslationsOnboardingHealthConnectShareLoggedMealsEn {
	_TranslationsOnboardingHealthConnectShareLoggedMealsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get description => 'Isulat sa Health Connect ang mga pagkaing itinala mo sa Calorify';
	@override String get title => 'Ibahagi ang mga Naitalang Pagkain';
}

// Path: onboarding.healthConnect.userControl
class _TranslationsOnboardingHealthConnectUserControlTl extends TranslationsOnboardingHealthConnectUserControlEn {
	_TranslationsOnboardingHealthConnectUserControlTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get description => 'Pumili ng alinmang pahintulot at baguhin ang access anumang oras';
	@override String get title => 'Ikaw ang May Kontrol';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessTl extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hindi Ka Nag-iisa';
	@override String get genericMessage => 'Ipinapakita ng pananaliksik na ang regular na pagsubaybay ang nangunguna sa mga palatandaan ng pangmatagalang tagumpay.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Para sa ${age}-taong gulang na ${gender} na nagnanais na ${goal}, ang regular na pagsubaybay ang pinakamahalagang tagapagpahiwatig ng tagumpay.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} ginagawang 10x na mas madali kaysa mano-manong paggawa.';
	@override String get getStartedTitle => 'Handa ka na ba magsimula?';
	@override String get tipPhoto => 'Kunan ng larawan ang iyong mga pagkain para sa agad na pagsusuri';
	@override String get tipConsistency => 'Mag-log nang regular para makita ang makabuluhang progreso';
	@override String get tipProgress => 'Subaybayan ang iyong progreso araw-araw para manatiling motivated';
	@override String get button => 'Tara na';
	@override String get defaultGender => 'indibidwal';
	@override String get defaultGoal => 'mas malusog na ikaw';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileTl extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profile ng Iyong Kalusugan';
	@override String bmiDescription({required Object bmi}) => 'Batay sa iyong mga sukatan, ang iyong BMI ay ${bmi}.';
	@override String get finalizeDescription => 'Tapusin natin ang iyong profile para i-customize ang iyong karanasan.';
	@override String get goalGain => 'tumaas';
	@override String get goalLose => 'bumaba';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Upang maabot ang iyong layunin, kailangan mong ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Nasa iyong target na timbang ka! Tutulungan ka naming panatilihin ito.';
	@override String get button => 'Tara na';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleTl extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahusay na Simula!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Nagawa mo na ang unang hakbang patungo sa ${goalText}. Dahil ikaw ay ${activityText}, iaangkop ng ${appLabel} ang iyong mga target sa iyong pamumuhay.';
	@override String get personalizedTargets => 'Personalized na mga calorie target';
	@override String get aiMealDetection => 'Pagtukoy ng pagkain na pinapagana ng AI';
	@override String get macroBreakdowns => 'Detalyadong paghahati ng mga macronutrients';
	@override String get button => 'Tara na';
	@override String get defaultGoal => 'mga layunin mo';
	@override String get defaultActivity => 'aktibo';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightTl extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Magbawas ng Timbang';
	@override String get description => 'Gumawa ng calorie deficit para magbawas ng timbang';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightTl extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Panatilihin ang Timbang';
	@override String get description => 'Panatilihin ang kasalukuyang timbang';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightTl extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Magdagdag ng Timbang';
	@override String get description => 'Gumawa ng calorie surplus para tumaas ang timbang';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryTl extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hindi Aktibo';
	@override String get description => 'Maliit o walang ehersisyo';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveTl extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Bahagyang Aktibo';
	@override String get description => 'Magaan na ehersisyo 1-3 araw/linggo';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveTl extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Katamtamang Aktibo';
	@override String get description => 'Katamtamang ehersisyo 3-5 araw/linggo';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveTl extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mataas na Aktibidad';
	@override String get description => 'Mahirap na ehersisyo 6-7 araw/linggo';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveTl extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sobrang Aktibo';
	@override String get description => 'Napakahirap na ehersisyo, pisikal na trabaho';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableTl extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hindi Available ang Health Connect';
	@override String get description => 'Hindi sinusuportahan ang Health Connect sa device na ito.';
	@override String get unsupportedDescription => 'Hindi sinusuportahan ng device na ito ang Health Connect.';
}

// Path: settings.healthConnect.updateRequired
class _TranslationsSettingsHealthConnectUpdateRequiredTl extends TranslationsSettingsHealthConnectUpdateRequiredEn {
	_TranslationsSettingsHealthConnectUpdateRequiredTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kailangang asikasuhin ang Health Connect';
	@override String get description => 'I-install o i-update ang Health Connect bago pamahalaan ang access.';
	@override String get action => 'I-install o i-update';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsTl extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Permiso';
	@override String get description => 'Humihiling ang mga sumusunod na permiso para magbigay ng integrasyon sa Health Connect:';
	@override String get granted => 'Pinahintulutan';
	@override String get notGranted => 'Hindi Pinahintulutan';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTl caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadTl nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadTl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteTl nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteTl._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryTl extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ang Aming Kwento';
	@override String content({required Object appLabel}) => '${appLabel} naging resulta ng isang simpleng pagkabwisit: karamihan sa mga app na sumusubaybay ng calories ay masyadong kumplikado, nangangailangan ng palagiang mano-manong input, naniningil ng mataas na bayad sa subscription, o isinusuko ang privacy.\n\nBilang isang solo developer, nais kong bumuo ng mas simple at patas — isang app na gumagamit ng AI para bawasan ang pagsusumikap, nananatiling mabilis at libre gamitin, at iginagalang ang iyong health data.\n\nAng ${appLabel} ang app na ninanais kong umiiral: walang account, walang tracking, walang ads — puro malinaw, praktikal na insight at ang iyong mga layunin sa kalusugan.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyTl extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahalaga ang Iyong Privacy';
	@override String get description => 'Hindi panghuli ang privacy — ito ay isang prinsipyo sa disenyo. Narito kung ano ang ibig sabihin nito sa praktika:';
	@override String get noAccounts => 'Hindi kailangan ng account\nGamitin agad ang app. Walang sign-up, walang identity.';
	@override String noTracking({required Object appLabel}) => 'Limitadong analytics at diagnostics\nGumagamit ang ${appLabel} ng mga pangunahing app event at crash diagnostics para mapahusay ang pagiging maaasahan. Hindi ginagamit sa pag-advertise o ibinebenta ang mga value ng health record.';
	@override String noAds({required Object appLabel}) => 'Walang ads ayon sa disenyo\n${appLabel} idinisenyo para gumana nang walang ads o monetization na naka-base sa data.';
	@override String get noDataSelling => 'Walang pagbebenta ng data\nHindi kailanman ibinebenta o ibinabahagi ang iyong health data sa third parties.';
	@override String get localStorage => 'Local-first storage\nNananatili ang iyong data sa iyong device.';
	@override String get privacyPolicy => 'Patakaran sa Privacy';
	@override String analyticsDisclosure({required Object appLabel}) => 'Limitadong analytics at diagnostic\nGumagamit ang ${appLabel} ng mga pangunahing kaganapan sa app at crash diagnostic upang mapahusay ang pagiging maaasahan. Hindi ginagamit sa pag-advertise o ibinebenta ang mga halaga ng rekord ng kalusugan.';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperTl extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ginawa ng Isang Solo Developer';
	@override String description({required Object appLabel}) => '${appLabel} ay binuo at pinapanatili ng isang solo developer na nakatuon sa paggawa ng payapa, privacy-respecting na health software.\n\nPersonal na binabasa ang feedback at nakakatulong sa paghubog ng direksyon ng app.';
	@override String get website => 'Website ng Developer';
	@override String get email => 'Email address';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackTl extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Nagugustuhan mo ba ang ${appLabel}?';
	@override String description({required Object appLabel}) => 'Tumutulong ang iyong feedback para gawing mas mahusay ang ${appLabel} para sa lahat.';
	@override String get rateApp => 'Mag-rate sa Play Store';
	@override String get sendFeedback => 'Magpadala ng Feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeTl extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Laki ng Bahagi';
	@override String get description => 'Malaki ang nakasalalay sa kawastuhan ng mga pagtatantya sa tamang pagtatasa ng laki ng bahagi.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsTl extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paraan ng Pagluluto';
	@override String description({required Object appLabel}) => 'Malaki ang naiaambag ng paraan ng pagluluto sa pagbabago ng nilalamang nutrisyon ng pagkain. Maaaring hindi palaging nasasaalang-alang ng mga pagtatantya ng ${appLabel} ang mga pagkakaibang ito.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsTl extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Sangkap';
	@override String get description => 'Ang mga komplikadong putahe na may maraming nakatagong sangkap ay maaaring magresulta sa hindi gaanong tumpak na pagtatantiya.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsTl extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitasyon ng Database';
	@override String description({required Object appLabel}) => 'Malawak ang food database ng ${appLabel} ngunit maaaring hindi nito maisama ang bawat isang pagkain o baryasyon.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyTl extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Katumpakan ng Calorie';
	@override String get description => 'Tumpak lamang ang pagtatantiyang ito kung tumpak ang iyong na-log na calorie intake at expenditure. Ang maling pag-log ay magreresulta sa maling pagtatantiya.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsTl extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Biolohikal na Salik';
	@override String description({required Object appLabel}) => 'Ang aktwal na pagbaba/pagtaas ng timbang ay naaapektuhan ng metabolismo, hormones, tulog, stress, hydration, at iba pang indibidwal na salik na hindi nasusukat ng ${appLabel}.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightTl extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Timbang ng Tubig at Pagbabago';
	@override String get description => 'Madalas magbago ang pang-araw-araw na timbang dahil sa water retention, pagtunaw ng pagkain, at timing. Hindi isinasaalang-alang ng pagtatantiyang ito ang mga pang-araw-araw na pagbabago.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Propesyonal na Gabay';
	@override String get description => 'Huwag gamitin ang pagtatantiyang ito para gumawa ng medikal na desisyon. Laging kumonsulta sa healthcare professional o rehistradong dietitian para sa personalisadong payo sa pamamahala ng timbang.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrTl extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Ang Basal Metabolic Rate (BMR) ay ang bilang ng calories na sinusunog ng iyong katawan sa pahinga upang mapanatili ang mga pangunahing function tulad ng paghinga at sirkulasyon. Nakadepende ang BMR sa iyong edad, kasarian, tangkad, at timbang. Mas mataas na BMR ay nangangahulugang natural na sumusunog ng mas maraming calories ang katawan sa pahinga, kadalasan dahil sa mas maraming mass ng kalamnan, mas batang edad, o pagiging lalaki. Mas mababang BMR ay karaniwang nagpapahiwatig ng mas kaunting mass ng kalamnan, mas matandang edad, o pagiging babae.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeTl extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Ang Total Daily Energy Expenditure (TDEE) ay ang kabuuang calories na sinusunog mo bawat araw, kasama ang iyong BMR at mga calories mula sa pisikal na aktibidad at pang-araw-araw na paggalaw. Nakadepende ang TDEE sa iyong BMR at antas ng aktibidad. Mas mataas na TDEE ay nangangahulugang mas maraming calories ang sinunog mo sa kabuuan, kadalasan dahil sa pagiging mas aktibo o mas mataas na BMR. Mas mababang TDEE ay nagpapahiwatig ng mas kaunting pang-araw-araw na aktibidad o mas mababang BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalTl extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pang-araw-araw na Layunin';
	@override String get description => 'Ang Pang-araw-araw na Layunin ay ang iyong inirerekomendang pang-araw-araw na calorie intake batay sa iyong TDEE at layunin sa timbang. Para sa pagbaba ng timbang, kumokonsumo ka ng mas kaunting calories kaysa sa iyong TDEE. Para sa pagpapanatili ng timbang, tumutugma ka sa iyong TDEE. Para sa pagdagdag ng timbang, kumokonsumo ka ng mas maraming calories kaysa sa iyong TDEE. Nakakatulong ito sa pag-abot ng nais na pagbabago sa timbang sa isang malusog na bilis.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedTl extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paano Kinukwenta ang Tantiya';
	@override String get description => 'Kinukuwenta namin ang iyong TDEE (batay sa iyong profile) at minumultiply ito sa fraction ng araw na lumipas (oras + minuto) / 24 upang tantiyahin ang calories na nasunog hanggang ngayon.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTl extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Propesyonal na Gabay';
	@override String get description => 'Huwag gamitin ang pagtatantiyang ito para gumawa ng medikal na desisyon. Laging kumunsulta sa isang healthcare professional o rehistradong dietitian para sa personalisadong payo sa pamamahala ng timbang.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTl extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Basahin ang Kabuuang Calories na Nasunog';
	@override String get description => 'Pinapayagan ang app na basahin ang kabuuang calories na nasunog mula sa Health Connect.';
	@override String get usage => 'Ginagamit ang permiso na ito para ipakita ang iyong araw-araw na calories na nasunog sa app, na tumutulong maunawaan ang iyong kabuuang enerhiya na nagastos sa buong araw.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadTl extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Basahin ang Data ng Nutrisyon';
	@override String get description => 'Pinapayagan ang app na basahin ang data ng nutrisyon mula sa Health Connect.';
	@override String get usage => 'Pinahihintulutan ng permiso na ito ang app na basahin ang impormasyong nutrisyon na maaaring na-log ng ibang app na konektado sa Health Connect, nagbibigay ng komprehensibong pananaw sa iyong nutrisyon.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteTl extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteTl._(TranslationsTl root) : this._root = root, super.internal(root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Isulat ang Data ng Nutrisyon';
	@override String get description => 'Pinapayagan ang app na isulat ang data ng nutrisyon sa Health Connect.';
	@override String get usage => 'Pinapayagan ng permiso na ito ang app na i-sync ang iyong na-log na mga pagkain sa Health Connect, ginagawa ang iyong data ng nutrisyon na available sa iba pang health at fitness apps na ginagamit mo.';
}

/// The flat map containing all translations for locale <tl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Tagalog',
			'flag' => '🇵🇭',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Nakagawa ka na ng masyadong maraming kahilingan. Mangyaring maghintay ng kaunti bago subukang muli.',
			'errors.networkError' => 'Error sa network. Pakisuri ang iyong koneksyon sa internet.',
			'errors.unknownError' => 'May nangyaring mali. Subukang muli mamaya.',
			'errors.loadingProfileData' => 'Nagkaroon ng error sa pag-load ng profile.',
			'errors.somethingWentWrong' => 'May nangyaring mali.',
			'errors.retry' => 'Subukang muli',
			'onboarding.welcome' => ({required Object appLabel}) => 'Maligayang pagdating sa ${appLabel}',
			'onboarding.subtitle' => 'Ang iyong personal na kasama sa nutrisyon na pinapagana ng AI',
			'onboarding.getStarted' => 'Magsimula',
			'onboarding.features.foodRecognition.title' => 'Matalinong Pagkilala ng Pagkain',
			'onboarding.features.foodRecognition.description' => 'Kunan ng larawan at hayaang tuklasin ng AI ang iyong pagkain',
			'onboarding.features.aiAnalysis.title' => 'Pagsusuri ng AI',
			'onboarding.features.aiAnalysis.description' => 'Makuha agad ang impormasyon ng nutrisyon mula sa iyong paglalarawan',
			'onboarding.features.healthIntegration.title' => 'Integrasyon sa Health Connect',
			'onboarding.features.healthIntegration.description' => 'Ikonekta sa Health Connect para sa mas mahusay na pananaw',
			'onboarding.gender.title' => 'Ano ang iyong kasarian?',
			'onboarding.gender.description' => 'Nakakatulong ang kasarian para tama naming makalkula ang iyong basal metabolic rate (BMR).',
			'onboarding.gender.next' => 'Susunod',
			'onboarding.height.title' => 'Gaano ka katangkad?',
			'onboarding.height.description' => 'Nakakatulong ang iyong tangkad para tama naming makalkula ang iyong BMI at pangangailangang enerhiya.',
			'onboarding.height.metric' => 'Metriko',
			'onboarding.height.imperial' => 'Imperyal',
			'onboarding.height.next' => 'Susunod',
			'onboarding.weight.currentTitle' => 'Ano ang iyong kasalukuyang timbang?',
			'onboarding.weight.currentDescription' => 'Mahalaga ang iyong kasalukuyang timbang para i-personalize ang iyong pang-araw-araw na layunin.',
			'onboarding.weight.targetTitle' => 'Ano ang iyong target na timbang?',
			'onboarding.weight.targetDescription' => 'Ang pagtatakda ng target na timbang ay tumutulong sa amin matukoy ang iyong pangmatagalang plano.',
			'onboarding.weight.metric' => 'Metriko',
			'onboarding.weight.imperial' => 'Imperyal',
			'onboarding.weight.next' => 'Susunod',
			'onboarding.age.title' => 'Kailan ang iyong kaarawan?',
			'onboarding.age.description' => 'Nakakatulong ang iyong edad para tama naming makalkula ang iyong pangangailangang calorie.',
			'onboarding.age.next' => 'Susunod',
			'onboarding.bmiScale.underweight' => 'Mababa',
			'onboarding.bmiScale.healthy' => 'Malusog',
			'onboarding.bmiScale.overweight' => 'Sobra',
			'onboarding.bmiScale.obese' => 'Obeso',
			'onboarding.bmiScale.categories.underweight' => 'Mababa ang timbang',
			'onboarding.bmiScale.categories.healthyWeight' => 'Malusog na timbang',
			'onboarding.bmiScale.categories.overweight' => 'Sobra ang timbang',
			'onboarding.bmiScale.categories.obese' => 'Obeso',
			'onboarding.bmiScale.messages.underweight' => 'Matutulungan ka naming bumuo ng planong pangkalusugan para makamit ang balanseng timbang gamit ang mga masusustansiyang pagkain.',
			'onboarding.bmiScale.messages.healthy' => 'Magaling! Nasa malusog kang saklaw. Tutulungan ka naming panatilihin ang iyong sigla at enerhiya.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} gagawing mas simple ang iyong paglalakbay gamit ang pagsubaybay na pinapagana ng AI para tulungan kang maabot ang iyong target nang kumportable.',
			'onboarding.bmiScale.messages.obese' => 'Nandito kami para suportahan ka sa pamamagitan ng personalisadong gabay at mga napapanatiling estratehiya para sa iyong mga layunin sa kalusugan.',
			'onboarding.weightGoal.title' => 'Ano ang iyong layunin?',
			'onboarding.weightGoal.description' => 'Piliin ang layunin na pinaka-tumutugma sa nais mong makamit',
			'onboarding.activityLevel.title' => 'Gaano ka kaaktibo?',
			'onboarding.activityLevel.description' => 'Nakakatulong ito para mas tumpak naming kalkulahin ang iyong pang-araw-araw na pangangailangan sa calorie',
			'onboarding.healthConnect.title' => 'Kumonekta sa Health Connect',
			'onboarding.healthConnect.description' => 'Gamitin ang calories na nasunog sa iyong pang-araw-araw na goal at, kung gusto mo, ibahagi sa Health Connect ang mga na-log na pagkain.',
			'onboarding.healthConnect.automaticTracking.title' => 'Calories na Nasunog',
			'onboarding.healthConnect.automaticTracking.description' => 'Basahin mula sa Health Connect ang kabuuang calories na nasunog ngayong araw',
			'onboarding.healthConnect.progressInsights.title' => 'Ibahagi ang mga Na-log na Pagkain',
			'onboarding.healthConnect.progressInsights.description' => 'Isulat sa Health Connect ang mga pagkain na nila-log mo sa Calorify',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Ikaw ang May Kontrol',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Pumili ng alinmang permiso at baguhin ang access anumang oras',
			'onboarding.healthConnect.connected' => 'Naka-konekta ang Health Connect',
			'onboarding.healthConnect.notConnected' => 'Hindi nakakonekta ang Health Connect',
			'onboarding.healthConnect.setup' => 'I-setup ang Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Laktawan muna',
			'onboarding.healthConnect.statusConnected' => 'Nakakonekta ang Health Connect.',
			'onboarding.healthConnect.statusSuccess' => 'Matagumpay na nakakonekta ang Health Connect!',
			'onboarding.healthConnect.statusNotConnected' => 'Piliin ang mga feature ng Health Connect na gusto mong i-enable.',
			'onboarding.healthConnect.statusPartial' => 'Bahagyang nakakonekta ang Health Connect. I-enable ang natitirang permiso para magamit ang parehong feature.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'I-install o i-update ang Health Connect para magpatuloy.',
			'onboarding.healthConnect.statusUnavailable' => 'Hindi sinusuportahan ang Health Connect sa device na ito.',
			'onboarding.healthConnect.installOrUpdate' => 'I-install o i-update',
			'onboarding.healthConnect.manageAccess' => 'Pamahalaan ang access',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Tinanggihan ang pahintulot. I-enable ang mga pahintulot ng Health Connect sa settings ng iyong telepono para sa ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Nagkaroon ng error sa pag-set up ng Health Connect: ${error}',
			'onboarding.healthConnect.caloriesBurned.description' => 'Basahin sa Health Connect ang kabuuang calorie na nasunog ngayong araw',
			'onboarding.healthConnect.caloriesBurned.title' => 'Mga Nasunog na Calorie',
			'onboarding.healthConnect.overviewDescription' => 'Gamitin sa araw-araw na layunin ang mga nasunog na calorie at, kung nais, ibahagi sa Health Connect ang mga naitalang pagkain.',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Isulat sa Health Connect ang mga pagkaing itinala mo sa Calorify',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Ibahagi ang mga Naitalang Pagkain',
			'onboarding.healthConnect.userControl.description' => 'Pumili ng alinmang pahintulot at baguhin ang access anumang oras',
			'onboarding.healthConnect.userControl.title' => 'Ikaw ang May Kontrol',
			'onboarding.reinforcement.trackingSuccess.title' => 'Hindi Ka Nag-iisa',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Ipinapakita ng pananaliksik na ang regular na pagsubaybay ang nangunguna sa mga palatandaan ng pangmatagalang tagumpay.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Para sa ${age}-taong gulang na ${gender} na nagnanais na ${goal}, ang regular na pagsubaybay ang pinakamahalagang tagapagpahiwatig ng tagumpay.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} ginagawang 10x na mas madali kaysa mano-manong paggawa.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Handa ka na ba magsimula?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Kunan ng larawan ang iyong mga pagkain para sa agad na pagsusuri',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Mag-log nang regular para makita ang makabuluhang progreso',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Subaybayan ang iyong progreso araw-araw para manatiling motivated',
			'onboarding.reinforcement.trackingSuccess.button' => 'Tara na',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'indibidwal',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'mas malusog na ikaw',
			'onboarding.reinforcement.healthProfile.title' => 'Profile ng Iyong Kalusugan',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Batay sa iyong mga sukatan, ang iyong BMI ay ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Tapusin natin ang iyong profile para i-customize ang iyong karanasan.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'tumaas',
			'onboarding.reinforcement.healthProfile.goalLose' => 'bumaba',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Upang maabot ang iyong layunin, kailangan mong ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Nasa iyong target na timbang ka! Tutulungan ka naming panatilihin ito.',
			'onboarding.reinforcement.healthProfile.button' => 'Tara na',
			'onboarding.reinforcement.goalLifestyle.title' => 'Mahusay na Simula!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Nagawa mo na ang unang hakbang patungo sa ${goalText}. Dahil ikaw ay ${activityText}, iaangkop ng ${appLabel} ang iyong mga target sa iyong pamumuhay.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personalized na mga calorie target',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Pagtukoy ng pagkain na pinapagana ng AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detalyadong paghahati ng mga macronutrients',
			'onboarding.reinforcement.goalLifestyle.button' => 'Tara na',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'mga layunin mo',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktibo',
			'tabs.dashboard' => 'Pangkalahatang-ideya',
			'tabs.history' => 'Kasaysayan',
			'home.aiSummary.title' => 'Buod ng AI Mo',
			'home.aiSummary.logMore' => 'Mag-log ng higit pang mga pagkain sa susunod na ilang araw para makuha ang iyong personalisadong insight mula sa AI.',
			'home.aiSummary.loading' => 'Ina-load ang iyong buod...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} na pagkain na na-log',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Iskor ng balanse ${score}',
			'home.aiSummary.topFoods' => 'Nangungunang pagkain',
			'home.aiSummary.trendUp' => 'Tumataas ang calories',
			'home.aiSummary.trendDown' => 'Bumababa ang calories',
			'home.aiSummary.trendSteady' => 'Nanatiling pareho ang calories',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Na-update ${time}',
			'home.dailyGoal.title' => 'Itakda ang Iyong Pang-araw-araw na Layunin',
			'home.dailyGoal.titleSet' => 'Ang Iyong Pang-araw-araw na Layunin',
			'home.dailyGoal.description' => 'Handa ka na bang simulan ang iyong paglalakbay sa kagalingan? Itakda ang iyong pang-araw-araw na calorie target sa ibaba para simulan ang iyong progreso.',
			'home.dailyGoal.descriptionSet' => 'Nakasaad na ang iyong gabay! Ito ang iyong pang-araw-araw na calorie target.',
			'home.dailyGoal.yourGoal' => 'Ang Iyong Layunin',
			'home.dailyGoal.goal' => 'Layunin',
			'home.dailyGoal.dailyCalories' => 'Pang-araw-araw na calories (kcal)',
			'home.dailyGoal.setGoal' => 'Itakda ang Layunin',
			'home.dailyGoal.intake' => 'Konsumo',
			'home.dailyGoal.burned' => 'Nasunog',
			'home.dailyGoal.weightImpact' => 'Epekto sa Timbang',
			'home.dailyGoal.estLoss' => 'Tinatayang pagbawas ng',
			'home.dailyGoal.estGain' => 'Tinatayang pagtaas ng',
			'home.dailyGoal.kcal' => 'kilocalorie (kcal)',
			'home.dailySummary.title' => 'Pang-araw-araw na Buod',
			'home.dailySummary.calories' => 'Kaloriya',
			'home.dailySummary.carbs' => 'Carbohidrat',
			'home.dailySummary.protein' => 'Protina',
			'home.dailySummary.fat' => 'Taba',
			'home.dailySummary.fiber' => 'Hibla',
			'home.dailySummary.grams' => 'gramo',
			'home.dailySummary.chartAccessibilityLabel' => 'Tsart ng mga macro',
			'home.intakeProgress.title' => 'Hating Macro Ngayon',
			'home.intakeProgress.target' => 'Layunin',
			'home.intakeProgress.current' => 'Kasalukuyan',
			'home.intakeHistory.title' => '7-Araw na Kasaysayan ng Macro',
			'home.intakeHistory.trendTitle' => 'Uso Ngayon',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Pinakamataas: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Walang kasaysayan pa',
			'home.intakeHistory.startLogging' => 'Magsimulang mag-log ng mga pagkain para makita ang iyong\n7-araw na mga trend ng macro dito',
			'home.mealLog.title' => 'Na-log na Mga Pagkain',
			'home.mealLog.emptyMessage' => 'Kunan ng larawan ang huling kain mo para ma-log dito.',
			'home.mealLog.noMealsToday' => 'Walang naitalang pagkain para sa araw na ito',
			'home.mealLog.seeAllMeals' => 'Tingnan ang lahat ng pagkain',
			'home.mealDescription.title' => 'Mabilis na Pagdagdag gamit ang AI',
			'home.mealDescription.description' => 'Ilarawan ang iyong pagkain, at hayaan ang AI ang mag-asikaso ng detalye.',
			'home.mealDescription.hint' => 'hal. Sa almusal kumain ako ng malaking mangkok ng oatmeal na may hiniwang saging at isang scoop ng whey ...',
			'home.mealDescription.analyzeMeal' => 'Suriin ang pagkain',
			'home.favoriteMeals.title' => 'Mga Paboritong Pagkain',
			'home.favoriteMeals.description' => 'Mabilis na idagdag ang isa sa iyong mga paborito.',
			'home.favoriteMeals.noFavorites' => 'Wala pang paboritong pagkain.',
			'home.favoriteMeals.addFavoriteHint' => 'I-click ang bituin sa isang pagkain para markahan bilang paborito.',
			'home.favoriteMeals.seeAll' => 'Tingnan lahat',
			'home.favoriteMeals.add' => 'Idagdag',
			'home.mealSnap.title' => 'Kunan at Subaybayan ang Iyong Pagkain',
			'home.mealSnap.description' => 'Gamitin ang iyong camera para kunan ng larawan ang iyong pagkain para sa pagsusuri ng AI.',
			'home.mealSnap.openCamera' => 'Buksan ang Camera',
			'home.mealSnap.gallery' => 'Galeria',
			'home.mealSnap.compressingPhoto' => 'Ina-optimize ang larawan…',
			'home.mealSnap.uploadingPhoto' => 'Ina-upload ang larawan…',
			'home.connectHealth.title' => 'I-sync sa Health Connect',
			'home.connectHealth.description' => 'Gamitin ang calories na nasunog sa iyong goal at ibahagi ang mga na-log na pagkain',
			'home.connectHealth.install' => 'I-install o i-update',
			'home.connectHealth.connect' => 'Ikonekta',
			'home.connectHealth.dataUseDescription' => 'Gamitin sa iyong layunin ang mga nasunog na calorie at ibahagi ang mga naitalang pagkain',
			'home.connectHealth.installOrUpdate' => 'Mag-install o mag-update',
			'history.noMeals' => 'Walang naitalang pagkain',
			'history.emptyMessage' => 'Kunan ng larawan ang huling kain mo para ma-log dito.',
			'history.today' => 'Ngayon',
			'history.yesterday' => 'Kahapon',
			'meal.ohNo' => 'Naku!',
			'meal.delete' => 'Tanggalin',
			'meal.editMeal' => 'I-edit ang Pagkain',
			'meal.addMeal' => 'Magdagdag ng Pagkain',
			'meal.saveMeal' => 'I-save ang Pagkain',
			'meal.save' => 'I-save',
			'meal.mealName' => 'Pangalan ng Pagkain',
			'meal.mealNameHint' => 'hal. Scrambled eggs na may toast',
			'meal.nameRequired' => 'Ilagay ang pangalan ng pagkain bago i-save.',
			'meal.mealQuantity' => 'Dami ng Pagkain',
			'meal.mealQuantityHint' => 'hal. 1 mangkok, 2 hiwa',
			'meal.timeOfMeal' => 'Oras ng Pagkain',
			'meal.timeOfMealHint' => 'Piliin ang oras kung kailan ka kumain',
			'meal.mealType' => 'Uri ng Pagkain',
			'meal.nutrition.calories' => 'Kaloriya',
			'meal.nutrition.carbs' => 'Carbohidrat (g)',
			'meal.nutrition.protein' => 'Protina (g)',
			'meal.nutrition.fat' => 'Taba (g)',
			'meal.nutrition.fiber' => 'Hibla (g)',
			'meal.deleteConfirmation.title' => 'Tanggalin ang Pagkain',
			'meal.deleteConfirmation.message' => 'Sigurado ka bang tatanggalin ang entry na ito ng pagkain?',
			'meal.deleteConfirmation.cancel' => 'Kanselahin',
			'meal.deleteConfirmation.delete' => 'Tanggalin',
			'meal.addedToLog' => 'Nadagdag ang pagkain sa iyong log!',
			'meal.couldNotAdd' => ({required Object error}) => 'Hindi madagdag ang pagkain: ${error}',
			'meal.savedSuccessfully' => 'Matagumpay na naidagdag ang pagkain!',
			'meal.updatedSuccessfully' => 'Matagumpay na na-update ang pagkain!',
			'meal.errorSaving' => ({required Object error}) => 'Error sa pag-save ng pagkain: ${error}',
			'meal.removedFromFavorites' => 'Tinanggal mula sa mga paborito!',
			'meal.savedAsFavorite' => 'Na-save ang pagkain bilang paborito!',
			'meal.unfavorite' => 'Tanggalin sa paborito',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Hindi ma-update ang paborito: ${error}',
			'meal.feedbackThanks' => 'Salamat sa feedback!',
			'meal.reanalysisUpdated' => 'Na-update ang pagsusuri ng pagkain base sa iyong feedback.',
			'meal.failedToProcess' => ({required Object error}) => 'Nabigong iproseso: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Nabigong iproseso ang larawan: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Error sa pag-compress ng larawan: ${error}',
			'meal.failedToSave' => 'Nabigong i-save ang datos. Pakisubukang muli.',
			'meal.skip' => 'Laktawan',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Tanong ${current} ng ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Walang mga tanong na available',
			'meal.questionFlow.next' => 'Susunod',
			'meal.questionFlow.continueLabel' => 'Magpatuloy',
			'meal.analysis.title' => 'Sinusuri ang iyong pagkain',
			'meal.analysis.stepStarted' => 'Nagsisimula…',
			'meal.analysis.stepDecomposition' => 'Iniintindi ang iyong pagkain…',
			'meal.analysis.stepIngredients' => 'Tinutugma ang mga sangkap sa nutrition data…',
			'meal.analysis.stepUncertainty' => 'Tinitingnan ang kumpiyansa…',
			'meal.analysis.stepMealTypeQuestion' => 'Halos tapos…',
			'meal.analysis.stepResult' => 'Pinapinal ang resulta…',
			'meal.analysis.stepError' => 'May nangyaring mali',
			'meal.analysis.stepDefault' => 'Sinusuri ang iyong pagkain…',
			'meal.analysis.progressUnderstand' => 'Pag-unawa sa iyong pagkain',
			'meal.analysis.progressMatch' => 'Hinahanap ang nutrisyon ng sangkap',
			'meal.analysis.progressCheck' => 'Sini-siyasat ang mga bahagi at kumpiyansa',
			'meal.analysis.progressMealType' => 'Pinipili ang uri ng pagkain',
			'meal.analysis.progressFinish' => 'Kinalkula ang calories at macros',
			'meal.analysis.detectedIngredientHeading' => 'Mga sangkap na natutukoy namin',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} pa',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} na sangkap ang natukoy',
			'meal.analysis.ingredientsPending' => 'Sinusuri ang mga sangkap…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '“${text}”',
			'meal.analysis.offlineTip0' => 'Tip: Mas mahalaga ang pagiging regular kaysa perpeksiyon—ang regular na pag-log ang nagpapakita ng mga pattern na mahalaga.',
			'meal.analysis.offlineTip1' => 'Tip: Para sa mga larawan, mas nakakatulong ang natural na ilaw at top-down na kuha para sa tumpak na bahagi.',
			'meal.analysis.offlineTip2' => 'Tip: Banggitin ang inumin, sarsa, at mantika sa pagluluto—nagdaragdag sila ng calories na madalas nakakaligtaan.',
			'meal.analysis.offlineTip3' => 'Tip: Ang mabilis na tala ng bahagi (1 mangkok, malaking kape) ay nagpapalinaw ng pagtataya.',
			'meal.analysis.offlineTip4' => 'Tip: Ang pag-log pagkatapos kumain ay nakakatulong pa ring bumuo ng gawi; hindi kailangan perpekto.',
			'meal.analysis.offlineTip5' => 'Tip: Sabihin kung paano niluto ang pagkain kapag malaki ang epekto sa calories (prito vs inihurno).',
			'meal.localInference.reviewTitle' => 'Suriin ang mga nakitang sangkap',
			'meal.localInference.reviewSubtitle' => 'Binigyang-kahulugan ito sa iyong device. Itama ang mga pangalan o dami bago kalkulahin ang nutrisyon.',
			'meal.localInference.mealName' => 'Pangalan ng pagkain',
			'meal.localInference.ingredient' => 'Sangkap',
			'meal.localInference.grams' => 'Tinatayang gramo',
			'meal.localInference.removeIngredient' => 'Alisin ang sangkap',
			'meal.localInference.continueLabel' => 'Magpatuloy',
			'meal.localInference.invalidProposal' => 'Magdagdag ng kahit isang sangkap at gumamit ng positibong halaga ng gramo.',
			'meal.localInference.localUnavailable' => 'Hindi available ang on-device analysis sa ngayon.',
			'meal.localInference.calculationDetails' => 'Paano ito kinalkula',
			'meal.localInference.interpretationLocal' => 'Mga sangkap na binigyang-kahulugan sa device na ito',
			'meal.localInference.interpretationCloud' => 'Mga sangkap na binigyang-kahulugan sa cloud',
			'meal.localInference.interpretationManual' => 'Mga sangkap na sinuri o inedit mo',
			'meal.localInference.nutritionRemote' => 'Nutrisyon na nakuha mula sa USDA sa pamamagitan ng Calorify',
			'meal.localInference.nutritionFallback' => 'Ang ilang halaga ng nutrisyon ay tinaya nang remote',
			'meal.localInference.calculationServer' => 'Calories at macros na kinalkula ng Calorify',
			'meal.localInference.fallbackUsed' => 'Ang local analysis ay lumipat sa cloud processing',
			'meal.localInference.noRawContent' => 'Ang mga diagnostic receipt ay hindi kasama ang text o larawan ng iyong pagkain.',
			'meal.feedback.title' => 'Ano ang mali?',
			'meal.feedback.subtitle' => 'Tulungan kaming pagbutihin ang pagsusuri sa pamamagitan ng pagpili ng isa o higit pang isyu.',
			'meal.feedback.tellUsMore' => 'Sabihin pa',
			'meal.feedback.describeIncorrect' => 'Ilarawan kung ano ang mali',
			'meal.feedback.submit' => 'Isumite',
			'meal.feedback.issueFoodIdentification' => 'Pagkilala sa pagkain',
			'meal.feedback.issuePortionSize' => 'Laki ng bahagi',
			'meal.feedback.issueCalorieDistribution' => 'Pamamahagi ng calories',
			'meal.feedback.issueMacrosWrong' => 'Maling macros',
			'meal.feedback.issueMissingItems' => 'Nawawalang items',
			'meal.feedback.issueExtraItems' => 'Sobrang items',
			'meal.feedback.issueOther' => 'Iba pa',
			'favorites.title' => 'Mga Paborito',
			'favorites.empty' => 'Wala pang paboritong pagkain.',
			'favorites.searchPlaceholder' => 'Maghanap ng paboritong pagkain',
			'favorites.searchEmptyTitle' => 'Walang paborito na tumutugma sa iyong paghahanap',
			'favorites.searchEmptySubtitle' => 'Subukan ang ibang pangalan ng pagkain, dami, o uri ng pagkain.',
			'favorites.sortLabel' => 'Isort ang mga paborito',
			'favorites.undo' => 'Bawiin',
			'favorites.removed' => ({required Object name}) => 'Tinanggal si ${name} mula sa mga paborito',
			'favorites.sortOptions.recent' => 'Kamakailan',
			'favorites.sortOptions.calories' => 'Kaloriya',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Personal na Profile',
			'profile.noProfileData' => 'Walang data ng profile',
			'profile.yourProfile' => 'Ang Iyong Profile',
			'profile.viewAndManage' => 'Tingnan at pamahalaan ang iyong impormasyon sa kalusugan',
			'profile.sections.profile' => 'PERSONAL NA PROFILE',
			'profile.sections.basicInformation' => 'PANGUNAHING IMPORMASYON',
			'profile.sections.goalsAndActivity' => 'LAYUNIN AT AKTIBIDAD',
			'profile.sections.calculatedValues' => 'NAKALKULANG HALAGA',
			'profile.gender' => 'Kasarian',
			'profile.height' => 'Tangkad',
			'profile.weight' => 'Timbang',
			'profile.age' => 'Edad',
			'profile.weightGoal' => 'Layunin sa Timbang',
			'profile.targetWeight' => 'Target na Timbang',
			'profile.activityLevel' => 'Antas ng Aktibidad',
			'profile.healthMetrics' => 'Mga Sukat ng Kalusugan',
			'profile.notSet' => 'Hindi nakaset',
			'profile.years' => 'taon',
			'profile.updatedSuccessfully' => 'Matagumpay na na-update ang profile!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Pang-araw-araw na Layunin',
			'profile.calculatedValues.calPerDay' => 'calorie/bawat araw',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Iskor ng Kalusugan',
			'healthScore.whyThisScore' => 'Bakit ang iskor na ito?',
			'healthScore.note' => 'Ang iskor na ito ay isang pagtatantiya mula sa AI batay sa mga natukoy na sangkap at nutritional density. Laging kumonsulta sa isang propesyonal para sa payong pandiyeta.',
			'healthScore.unhealthy' => 'Hindi Malusog',
			'healthScore.healthy' => 'Malusog',
			'healthScore.neutral' => 'Katamtaman',
			'editProfile.title' => 'I-edit ang Profile',
			'editProfile.sections.personalInformation' => 'PERSONAL NA IMPORMASYON',
			'editProfile.sections.physicalMeasurements' => 'PISIKAL NA SUKAT',
			'editProfile.sections.goalsAndActivity' => 'LAYUNIN AT AKTIBIDAD',
			'editProfile.gender' => 'Kasarian',
			'editProfile.dateOfBirth' => 'Petsa ng Kapanganakan',
			'editProfile.height' => 'Tangkad',
			'editProfile.weight' => 'Timbang',
			'editProfile.weightGoal' => 'Layunin sa Timbang',
			'editProfile.activityLevel' => 'Antas ng Aktibidad',
			'editProfile.metric' => 'Metriko',
			'editProfile.imperial' => 'Imperyal',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'libra (lbs)',
			'editProfile.metricCm' => 'Metriko (cm)',
			'editProfile.imperialFtIn' => 'Imperyal (ft/in)',
			'editProfile.metricKg' => 'Metriko (kg)',
			'editProfile.imperialLbs' => 'Imperyal (lbs)',
			'editProfile.genders.male' => 'Lalaki',
			'editProfile.genders.female' => 'Babae',
			'editProfile.genders.other' => 'Iba',
			'editProfile.weightGoals.loseWeight.name' => 'Magbawas ng Timbang',
			'editProfile.weightGoals.loseWeight.description' => 'Gumawa ng calorie deficit para magbawas ng timbang',
			'editProfile.weightGoals.maintainWeight.name' => 'Panatilihin ang Timbang',
			'editProfile.weightGoals.maintainWeight.description' => 'Panatilihin ang kasalukuyang timbang',
			'editProfile.weightGoals.gainWeight.name' => 'Magdagdag ng Timbang',
			'editProfile.weightGoals.gainWeight.description' => 'Gumawa ng calorie surplus para tumaas ang timbang',
			'editProfile.activityLevels.sedentary.name' => 'Hindi Aktibo',
			'editProfile.activityLevels.sedentary.description' => 'Maliit o walang ehersisyo',
			'editProfile.activityLevels.lightlyActive.name' => 'Bahagyang Aktibo',
			'editProfile.activityLevels.lightlyActive.description' => 'Magaan na ehersisyo 1-3 araw/linggo',
			'editProfile.activityLevels.moderatelyActive.name' => 'Katamtamang Aktibo',
			'editProfile.activityLevels.moderatelyActive.description' => 'Katamtamang ehersisyo 3-5 araw/linggo',
			'editProfile.activityLevels.veryActive.name' => 'Mataas na Aktibidad',
			'editProfile.activityLevels.veryActive.description' => 'Mahirap na ehersisyo 6-7 araw/linggo',
			'editProfile.activityLevels.extremelyActive.name' => 'Sobrang Aktibo',
			'editProfile.activityLevels.extremelyActive.description' => 'Napakahirap na ehersisyo, pisikal na trabaho',
			'settings.title' => 'Mga Setting',
			'settings.sections.profile' => 'PERSONAL NA PROFILE',
			'settings.sections.localization' => 'Wika at Lokalidad',
			'settings.sections.notifications' => 'Mga Notification',
			'settings.sections.healthConnect' => 'PAGSASAMA SA HEALTH CONNECT',
			'settings.sections.localInference' => 'PAGSUSURI SA DEVICE',
			'settings.sections.supportAndLegal' => 'SUPORTA & LEGAL',
			'settings.sections.about' => 'TUNGKOL',
			'settings.sections.dangerZone' => 'DELIKADONG ZONA',
			'settings.sections.developer' => 'MGA DEVELOPER',
			'settings.editProfile.title' => 'I-edit ang Profile',
			'settings.editProfile.subtitle' => 'I-update ang iyong personal na impormasyon',
			'settings.language.title' => 'Wika',
			'settings.language.subtitle' => 'Piliin ang iyong nais na wika',
			'settings.language.searchHint' => 'Maghanap ng mga wika...',
			'settings.language.noResults' => 'Walang resulta',
			'settings.heightUnit.title' => 'Yunit ng Tangkad',
			'settings.weightUnit.title' => 'Yunit ng Timbang',
			'settings.mealReminders.title' => 'Paalaala sa Pagkain',
			'settings.mealReminders.subtitle' => 'Manatiling nasa tamang landas sa tamang oras na mga alerto',
			'settings.localInference.title' => 'Pagsusuri ng Pagkain sa Device',
			'settings.localInference.subtitle' => 'Bigyang-kahulugan ang mga suportadong pagkain gamit ang Gemini Nano bago kalkulahin ang nutrisyon',
			'settings.localInference.unavailable' => 'Hindi available sa device na ito',
			'settings.localInference.rolloutUnavailable' => 'May nakitang compatible na hardware, ngunit ang feature na ito ay hindi enabled para sa release na ito ng app',
			'settings.localInference.modelSetup' => 'Kailangang matapos muna ang pag-download ng Gemini Nano bago ito ma-enable',
			'settings.localInference.useLocalTitle' => 'Gamitin ang on-device analysis',
			'settings.localInference.useLocalSubtitle' => 'Opsyonal at naka-off by default. Maaaring hindi gaanong maaasahan ang mga resulta para sa mga komplikadong pagkain.',
			'settings.localInference.disclosureTitle' => 'Bago i-enable ang on-device analysis',
			'settings.localInference.disclosureBody' => 'Kayang tukuyin ng Gemini Nano ang mga sangkap at tantyahin ang mga bahagi sa mga suportadong Android device. Ang iyong sinuring mungkahi ng sangkap ay ipapadala sa Calorify para sa USDA nutrition grounding at kalkulasyon.',
			'settings.localInference.disclosureLimit1' => 'Ang mga komplikadong putahe, nakatagong sangkap, at laki ng bahagi ay maaaring matukoy nang mali.',
			'settings.localInference.disclosureLimit2' => 'Maaaring hindi available ang model habang nag-da-download, busy, nasa background, o limitado ng device.',
			'settings.localInference.disclosureLimit3' => 'Kung hindi matapos ang local interpretation, awtomatikong ipapadala ng beta na ito ang iyong orihinal na paglalarawan ng pagkain sa Calorify para sa cloud analysis.',
			'settings.localInference.acknowledgement' => 'Naiintindihan ko na dapat kong suriin ang mga nakitang sangkap at bahagi.',
			'settings.localInference.enable' => 'Kumpirmahin at i-enable',
			'settings.localInference.cancel' => 'Kanselahin',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Liwanag',
			'settings.theme.dark' => 'Madilim',
			'settings.theme.system' => 'Sistema',
			'settings.sendFeedback.title' => 'Magpadala ng Feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Tulungan kaming pagbutihin ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Puna sa ${appLabel} App',
			'settings.sendFeedback.emailBodyPrefix' => 'Pakibigay ang iyong feedback sa ibaba:',
			'settings.sendFeedback.appVersion' => 'Bersyon ng App',
			'settings.sendFeedback.device' => 'Kagamitan',
			'settings.sendFeedback.osVersion' => 'Bersyon ng OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'I-export ang Kasaysayan ng Pagkain',
			'settings.exportMealHistory.subtitle' => 'Ibahagi ang CSV ng iyong na-log na mga pagkain',
			'settings.exportMealHistory.shareText' => 'Export ng kasaysayan ng pagkain mula sa Calorify mo',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Hindi ma-export ang kasaysayan ng pagkain: ${error}',
			'settings.clearAllData.title' => 'I-clear Lahat ng Datos',
			'settings.clearAllData.subtitle' => 'Tanggalin ang data ng Calorify na naka-store sa device na ito',
			'settings.clearAllData.confirmationTitle' => 'Tanggalin Lahat ng Datos?',
			'settings.clearAllData.confirmationMessage' => 'Permanente nitong tatanggalin sa device na ito ang mga na-log na pagkain, paborito, at mga setting ng profile. Hiwalay na pinamamahalaan sa Mga Setting > Health Connect ang mga pagkaing naibahagi na sa Health Connect at ang access sa Health Connect.',
			'settings.clearAllData.cancel' => 'Kanselahin',
			'settings.clearAllData.clearEverything' => 'I-clear Lahat',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Permanente nitong buburahin sa device na ito ang mga naitalang pagkain, paborito, at setting ng profile. Hiwalay na pinamamahalaan sa Mga Setting > Health Connect ang mga pagkaing naibahagi na sa Health Connect at ang access dito.',
			'settings.clearAllData.localOnlySubtitle' => 'Burahin ang data ng Calorify na nakaimbak sa device na ito',
			'settings.debugOptions.title' => 'Mga Opsyon sa Debug',
			'settings.developerModeEnabled' => 'Naka-enable ang developer mode!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Tingnan at pamahalaan ang mga permiso',
			'settings.healthConnect.unavailable.title' => 'Hindi Available ang Health Connect',
			'settings.healthConnect.unavailable.description' => 'Hindi sinusuportahan ang Health Connect sa device na ito.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Hindi sinusuportahan ng device na ito ang Health Connect.',
			'settings.healthConnect.updateRequired.title' => 'Kailangang asikasuhin ang Health Connect',
			'settings.healthConnect.updateRequired.description' => 'I-install o i-update ang Health Connect bago pamahalaan ang access.',
			'settings.healthConnect.updateRequired.action' => 'I-install o i-update',
			'settings.healthConnect.permissions.title' => 'Mga Permiso',
			'settings.healthConnect.permissions.description' => 'Humihiling ang mga sumusunod na permiso para magbigay ng integrasyon sa Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Pinahintulutan',
			'settings.healthConnect.permissions.notGranted' => 'Hindi Pinahintulutan',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Basahin ang Kabuuang Calories na Nasunog',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Pinapayagan ang app na basahin ang kabuuang calories na nasunog mula sa Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Ginagamit ang permiso na ito para ipakita ang iyong araw-araw na calories na nasunog sa app, na tumutulong maunawaan ang iyong kabuuang enerhiya na nagastos sa buong araw.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Basahin ang Data ng Nutrisyon',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Pinapayagan ang app na basahin ang data ng nutrisyon mula sa Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Pinahihintulutan ng permiso na ito ang app na basahin ang impormasyong nutrisyon na maaaring na-log ng ibang app na konektado sa Health Connect, nagbibigay ng komprehensibong pananaw sa iyong nutrisyon.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Isulat ang Data ng Nutrisyon',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Pinapayagan ang app na isulat ang data ng nutrisyon sa Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Pinapayagan ng permiso na ito ang app na i-sync ang iyong na-log na mga pagkain sa Health Connect, ginagawa ang iyong data ng nutrisyon na available sa iba pang health at fitness apps na ginagamit mo.',
			'settings.healthConnect.managePermissions' => 'Pamahalaan ang mga Permiso',
			'settings.healthConnect.openSettings' => 'Buksan ang Mga Setting ng Health Connect',
			'settings.healthConnect.disconnect' => 'Idiskonekta ang Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Idiskonekta ang Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Mawawalan ng access ang Calorify sa Health Connect. Hindi matatanggal ang data na naisulat na roon.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Idiskonekta',
			'settings.healthConnect.deleteSyncedMeals' => 'Tanggalin ang mga pagkain ng Calorify sa Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Tanggalin ang mga na-sync na pagkain?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Tanggalin sa Health Connect ang mga pagkaing na-sync ng bersyong ito ng Calorify? Hindi magbabago ang iyong lokal na meal log. Maaaring kailanganin pa ring alisin ang mas lumang Calorify entries gamit ang Pamahalaan ang Data sa Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Tanggalin ang mga na-sync na pagkain',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Natanggal na sa Health Connect ang mga pagkain ng Calorify.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Hindi matanggal ang mga na-sync na pagkain. Pakisubukang muli.',
			'settings.healthConnect.connectionPartial' => 'Naka-enable ang ilang feature ng Health Connect.',
			'settings.healthConnect.connectionComplete' => 'Naka-enable ang parehong feature ng Health Connect.',
			'settings.healthConnect.actionFailed' => 'Hindi mabuksan ang Health Connect. Pakisubukang muli.',
			'settings.healthConnect.requestPermissions' => 'Hilingin ang Mga Permiso',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Nakansela o nabigo ang kahilingan ng permiso. Pakisubukang muli o bigyan ng permiso nang manu-mano sa mga setting ng Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Hindi magawa ang paghingi ng permiso. Pakisubukang muli o bigyan nang manu-mano ng permiso sa mga setting ng Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Humihiling...',
			'settings.about.title' => 'Tungkol',
			'settings.about.tagline' => 'Mabilis, libre, at inuuna ang privacy sa kamalayan sa calories',
			'settings.about.ourStory.title' => 'Ang Aming Kwento',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} naging resulta ng isang simpleng pagkabwisit: karamihan sa mga app na sumusubaybay ng calories ay masyadong kumplikado, nangangailangan ng palagiang mano-manong input, naniningil ng mataas na bayad sa subscription, o isinusuko ang privacy.\n\nBilang isang solo developer, nais kong bumuo ng mas simple at patas — isang app na gumagamit ng AI para bawasan ang pagsusumikap, nananatiling mabilis at libre gamitin, at iginagalang ang iyong health data.\n\nAng ${appLabel} ang app na ninanais kong umiiral: walang account, walang tracking, walang ads — puro malinaw, praktikal na insight at ang iyong mga layunin sa kalusugan.',
			'settings.about.privacy.title' => 'Mahalaga ang Iyong Privacy',
			'settings.about.privacy.description' => 'Hindi panghuli ang privacy — ito ay isang prinsipyo sa disenyo. Narito kung ano ang ibig sabihin nito sa praktika:',
			'settings.about.privacy.noAccounts' => 'Hindi kailangan ng account\nGamitin agad ang app. Walang sign-up, walang identity.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Limitadong analytics at diagnostics\nGumagamit ang ${appLabel} ng mga pangunahing app event at crash diagnostics para mapahusay ang pagiging maaasahan. Hindi ginagamit sa pag-advertise o ibinebenta ang mga value ng health record.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Walang ads ayon sa disenyo\n${appLabel} idinisenyo para gumana nang walang ads o monetization na naka-base sa data.',
			'settings.about.privacy.noDataSelling' => 'Walang pagbebenta ng data\nHindi kailanman ibinebenta o ibinabahagi ang iyong health data sa third parties.',
			'settings.about.privacy.localStorage' => 'Local-first storage\nNananatili ang iyong data sa iyong device.',
			'settings.about.privacy.privacyPolicy' => 'Patakaran sa Privacy',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Limitadong analytics at diagnostic\nGumagamit ang ${appLabel} ng mga pangunahing kaganapan sa app at crash diagnostic upang mapahusay ang pagiging maaasahan. Hindi ginagamit sa pag-advertise o ibinebenta ang mga halaga ng rekord ng kalusugan.',
			'settings.about.developer.title' => 'Ginawa ng Isang Solo Developer',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} ay binuo at pinapanatili ng isang solo developer na nakatuon sa paggawa ng payapa, privacy-respecting na health software.\n\nPersonal na binabasa ang feedback at nakakatulong sa paghubog ng direksyon ng app.',
			'settings.about.developer.website' => 'Website ng Developer',
			'settings.about.developer.email' => 'Email address',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Nagugustuhan mo ba ang ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Tumutulong ang iyong feedback para gawing mas mahusay ang ${appLabel} para sa lahat.',
			'settings.about.feedback.rateApp' => 'Mag-rate sa Play Store',
			'settings.about.feedback.sendFeedback' => 'Magpadala ng Feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify bersyon ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Bersyon ng build ${buildNumber}',
			'reminders.title' => 'Manatiling nasa landas gamit ang mga paalala',
			'reminders.description' => 'Tumatanggap ng magagaan na paalala para mag-log ng iyong mga pagkain at manatiling consistent sa iyong mga layunin sa nutrisyon',
			'reminders.notificationsEnabled' => 'Mga Notification Na-enable',
			'reminders.notificationsDisabled' => 'Mga Notification Na-disable',
			'reminders.enabledSubtitle' => 'Makakatanggap ka ng paalala sa pagkain',
			'reminders.disabledSubtitle' => 'I-enable ang mga notification para makatanggap ng paalala sa pagkain',
			'reminders.mealReminders' => 'Mga Paalala sa Pagkain',
			'reminders.breakfast' => 'Almusal',
			'reminders.lunch' => 'Tanghalian',
			'reminders.dinner' => 'Hapunan',
			'reminders.snack' => 'Merienda',
			'reminders.unknown' => 'Hindi kilala',
			'reminders.change' => 'Baguhin',
			'reminders.enableNotifications' => 'I-enable ang Mga Notification',
			'reminders.skipForNow' => 'Laktawan muna',
			'reminders.saveChanges' => 'I-save ang Mga Pagbabago',
			'reminders.enabledSuccessfully' => 'Matagumpay na na-enable ang mga notification!',
			'reminders.permissionDenied' => 'Tinanggihan ang permiso sa notification',
			'reminders.errorEnabling' => ({required Object error}) => 'Error sa pag-enable ng notifications: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Error sa pagkompleto ng setup: ${error}',
			'notifications.breakfast.title' => 'Oras na para sa Almusal! 🍳',
			'notifications.breakfast.body' => 'Huwag kalimutan i-log ang iyong almusal',
			'notifications.lunch.title' => 'Oras na para sa Tanghalian! 🥗',
			'notifications.lunch.body' => 'Oras na para i-log ang iyong tanghalian',
			'notifications.dinner.title' => 'Oras na para sa Hapunan! 🍽️',
			'notifications.dinner.body' => 'Huwag kalimutan i-log ang iyong hapunan',
			'notifications.snack.title' => 'Oras na para sa Meryenda! 🍎',
			'notifications.snack.body' => 'Oras para sa isang malusog na meryenda',
			'notifications.test.title' => 'Pagsubok na Abiso',
			'login.title' => 'Mag-login',
			_ => null,
		} ?? switch (path) {
			'login.signInWithGoogle' => 'Mag-sign in gamit ang Google',
			'login.signInFailed' => 'Nabigo o kinansela ang Google Sign-In.',
			'disclaimer.pleaseNote' => 'Pakitandaan',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} nagbibigay ng tinatayang impormasyon ng nutrisyon. Nakadepende ang tumpak na resulta sa iyong input at pagkakaiba-iba ng pagkain. Gamitin ito bilang gabay, hindi bilang tiyak na pinagkukunan. Kumunsulta sa propesyonal para sa personalisadong payong pandiyeta.',
			'disclaimer.snap.portionSize.title' => 'Laki ng Bahagi',
			'disclaimer.snap.portionSize.description' => 'Malaki ang nakasalalay sa kawastuhan ng mga pagtatantya sa tamang pagtatasa ng laki ng bahagi.',
			'disclaimer.snap.preparationMethods.title' => 'Paraan ng Pagluluto',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Malaki ang naiaambag ng paraan ng pagluluto sa pagbabago ng nilalamang nutrisyon ng pagkain. Maaaring hindi palaging nasasaalang-alang ng mga pagtatantya ng ${appLabel} ang mga pagkakaibang ito.',
			'disclaimer.snap.ingredients.title' => 'Mga Sangkap',
			'disclaimer.snap.ingredients.description' => 'Ang mga komplikadong putahe na may maraming nakatagong sangkap ay maaaring magresulta sa hindi gaanong tumpak na pagtatantiya.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitasyon ng Database',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Malawak ang food database ng ${appLabel} ngunit maaaring hindi nito maisama ang bawat isang pagkain o baryasyon.',
			'disclaimer.weightEstimate.title' => 'Tungkol sa Tantiya ng Timbang',
			'disclaimer.weightEstimate.description' => 'Ang inaasahang pagbabago ng timbang ay isang teoretikal na pagtatantiya batay sa simpleng calorie-in vs. calorie-out na modelo. Ito ay nilalayong magbigay ng motibasyon lamang, hindi prediksyon ng iyong aktwal na timbang.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Katumpakan ng Calorie',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Tumpak lamang ang pagtatantiyang ito kung tumpak ang iyong na-log na calorie intake at expenditure. Ang maling pag-log ay magreresulta sa maling pagtatantiya.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Mga Biolohikal na Salik',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Ang aktwal na pagbaba/pagtaas ng timbang ay naaapektuhan ng metabolismo, hormones, tulog, stress, hydration, at iba pang indibidwal na salik na hindi nasusukat ng ${appLabel}.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Timbang ng Tubig at Pagbabago',
			'disclaimer.weightEstimate.waterWeight.description' => 'Madalas magbago ang pang-araw-araw na timbang dahil sa water retention, pagtunaw ng pagkain, at timing. Hindi isinasaalang-alang ng pagtatantiyang ito ang mga pang-araw-araw na pagbabago.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Propesyonal na Gabay',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Huwag gamitin ang pagtatantiyang ito para gumawa ng medikal na desisyon. Laging kumonsulta sa healthcare professional o rehistradong dietitian para sa personalisadong payo sa pamamahala ng timbang.',
			'disclaimer.healthMetrics.description' => 'Tinutulungan ka ng mga sukatan na ito na maunawaan ang pangangailangan ng enerhiya ng iyong katawan at gabayan ang iyong mga layunin sa nutrisyon.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Ang Basal Metabolic Rate (BMR) ay ang bilang ng calories na sinusunog ng iyong katawan sa pahinga upang mapanatili ang mga pangunahing function tulad ng paghinga at sirkulasyon. Nakadepende ang BMR sa iyong edad, kasarian, tangkad, at timbang. Mas mataas na BMR ay nangangahulugang natural na sumusunog ng mas maraming calories ang katawan sa pahinga, kadalasan dahil sa mas maraming mass ng kalamnan, mas batang edad, o pagiging lalaki. Mas mababang BMR ay karaniwang nagpapahiwatig ng mas kaunting mass ng kalamnan, mas matandang edad, o pagiging babae.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Ang Total Daily Energy Expenditure (TDEE) ay ang kabuuang calories na sinusunog mo bawat araw, kasama ang iyong BMR at mga calories mula sa pisikal na aktibidad at pang-araw-araw na paggalaw. Nakadepende ang TDEE sa iyong BMR at antas ng aktibidad. Mas mataas na TDEE ay nangangahulugang mas maraming calories ang sinunog mo sa kabuuan, kadalasan dahil sa pagiging mas aktibo o mas mataas na BMR. Mas mababang TDEE ay nagpapahiwatig ng mas kaunting pang-araw-araw na aktibidad o mas mababang BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Pang-araw-araw na Layunin',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Ang Pang-araw-araw na Layunin ay ang iyong inirerekomendang pang-araw-araw na calorie intake batay sa iyong TDEE at layunin sa timbang. Para sa pagbaba ng timbang, kumokonsumo ka ng mas kaunting calories kaysa sa iyong TDEE. Para sa pagpapanatili ng timbang, tumutugma ka sa iyong TDEE. Para sa pagdagdag ng timbang, kumokonsumo ka ng mas maraming calories kaysa sa iyong TDEE. Nakakatulong ito sa pag-abot ng nais na pagbabago sa timbang sa isang malusog na bilis.',
			'disclaimer.calorieExpenditure.title' => 'Tantiyang Calorie na Nasunog',
			'disclaimer.calorieExpenditure.description' => 'Kapag hindi available ang data mula sa Health Connect, tinatantya namin ang calories na nasunog ngayong araw gamit ang iyong Basal Metabolic Rate (BMR) at antas ng aktibidad (TDEE), na isina-scale para sa bahaging lumipas na ng araw.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Paano Kinukwenta ang Tantiya',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Kinukuwenta namin ang iyong TDEE (batay sa iyong profile) at minumultiply ito sa fraction ng araw na lumipas (oras + minuto) / 24 upang tantiyahin ang calories na nasunog hanggang ngayon.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Propesyonal na Gabay',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Huwag gamitin ang pagtatantiyang ito para gumawa ng medikal na desisyon. Laging kumunsulta sa isang healthcare professional o rehistradong dietitian para sa personalisadong payo sa pamamahala ng timbang.',
			'localNutritionPhase4.nutritionBundled' => 'Itinugma ang nutrisyon mula sa na-download na USDA pack',
			'localNutritionPhase4.nutritionCached' => 'Itinugma ang nutrisyon mula sa USDA cache sa device',
			'localNutritionPhase4.nutritionMixed' => 'Pinagsama ang nutrisyon mula sa na-download, naka-cache, at remote na mga row ng USDA',
			'localNutritionPhase4.calculationLocal' => 'Kinuwenta sa device na ito ang calories at macros',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: na-download na USDA pack',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: USDA cache sa device',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: row ng USDA na kinuha sa pamamagitan ng Calorify',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: deterministikong nutrition constant',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · set ng data ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Mas kaunti',
			'localNutritionPhase4.portionEstimated' => 'Tinataya',
			'localNutritionPhase4.portionLarger' => 'Mas marami',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Aling dami ang pinakamalapit para sa ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Anong meal ito?',
			'localNutritionPhase4.localNutritionTip' => 'Kinuwenta mula sa beripikadong lokal na nutrition data.',
			'localNutritionPhase4.offlineNutritionTitle' => 'I-download ang nutrition data',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Gumamit ng beripikadong mga row ng USDA at deterministikong pagkukuwenta sa device na ito kapag sakop ang lahat ng sangkap.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Hindi available ang lokal na nutrition data para sa release na ito ng app.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Walang na-download na beripikadong nutrition pack.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Dina-download at bineberipika ang nutrition data…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Pakete ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} naka-cache na row ng USDA · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Tingnan kung may update',
			'localNutritionPhase4.offlineNutritionClear' => 'I-clear ang lokal na nutrition data',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'I-clear ang lokal na nutrition data?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Aalisin nito ang na-download na USDA pack at lookup cache. Pananatilihin ng mga naka-log na meal ang eksaktong nutrition snapshot na ginamit noong na-save ang mga ito.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'I-clear ang data',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Hindi ma-download at ma-verify ang lokal na nutrition data: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Na-clear ang lokal na nutrition data',
			'common.close' => 'Isara',
			'common.kContinue' => 'Magpatuloy',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Nagugustuhan mo ba ang ${appLabel}?',
			'feedbackRating.yes' => 'Oo, nagugustuhan ko',
			'feedbackRating.no' => 'Hindi gaano',
			'feedbackRating.rateStepHeading' => 'Mag-rate sa Play Store',
			'feedbackRating.emailStepHeading' => 'Magpadala ng feedback sa email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Ang isang mabilis na rating ay tumutulong sa iba na matagpuan ang ${appLabel} at nagpapatuloy ang development. Maaari ka bang maglaan ng sandali para mag-iwan?',
			'feedbackRating.shareFeedbackViaEmail' => 'Hinuhubog ng iyong feedback kung ano ang susunod — binabasa namin ang bawat mensahe. Nais mo bang magbahagi ng iyong naiisip sa pamamagitan ng email?',
			'feedbackRating.rateCta' => 'Mag-rate sa Play Store',
			'feedbackRating.maybeLater' => 'Baka mamaya',
			'feedbackRating.sendFeedback' => 'Magpadala ng feedback',
			'feedbackRating.noThanks' => 'Hindi na, salamat',
			'feedbackRating.aboutUsDescription' => 'Ginawa nang may pag-aalaga ng isang maliit na team. Nakatuon kami sa privacy, simple, at pagtulong sa iyo na bumuo ng mas magagandang gawi sa pagkain.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Interesado kung sino ang nasa likod ng ${appLabel}? Tingnan ',
			'feedbackRating.aboutUsLinkLabel' => 'Tungkol sa amin',
			'feedbackRating.thankYouMessage' => 'Salamat! Muli naming tatanungin sa ibang pagkakataon.',
			'health.syncFailed' => 'Hindi ma-sync sa Health Connect',
			'health.mealSynced' => 'Na-sync ang pagkain sa Health Connect',
			_ => null,
		};
	}
}
