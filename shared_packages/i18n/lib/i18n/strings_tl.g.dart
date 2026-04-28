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
class TranslationsTl with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

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
	@override late final _TranslationsCommonTl common = _TranslationsCommonTl._(_root);
	@override late final _TranslationsFeedbackRatingTl feedbackRating = _TranslationsFeedbackRatingTl._(_root);
	@override late final _TranslationsHealthTl health = _TranslationsHealthTl._(_root);
}

// Path: errors
class _TranslationsErrorsTl implements TranslationsErrorsEn {
	_TranslationsErrorsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Sobra ang dami ng kahilingan. Maghintay sandali bago muling subukan.';
	@override String get networkError => 'Error sa network. Pakisuri ang iyong koneksyon sa internet.';
	@override String get unknownError => 'May nangyaring mali. Pakisubukang muli mamaya.';
	@override String get loadingProfileData => 'Error sa pag-load ng data ng profile';
	@override String get somethingWentWrong => 'May nangyaring mali.';
	@override String get retry => 'Subukang muli';
}

// Path: onboarding
class _TranslationsOnboardingTl implements TranslationsOnboardingEn {
	_TranslationsOnboardingTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Maligayang pagdating sa ${appLabel}';
	@override String get subtitle => 'Ang iyong personal na katuwang sa nutrisyon na pinalakas ng AI';
	@override String get getStarted => 'Simulan';
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
class _TranslationsTabsTl implements TranslationsTabsEn {
	_TranslationsTabsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Dashboard';
	@override String get history => 'Kasaysayan';
}

// Path: home
class _TranslationsHomeTl implements TranslationsHomeEn {
	_TranslationsHomeTl._(this._root);

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
class _TranslationsHistoryTl implements TranslationsHistoryEn {
	_TranslationsHistoryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Walang naitalang pagkain';
	@override String get emptyMessage => 'Kuhanin ng larawan ang huli mong kinain para ma-log dito.';
	@override String get today => 'Ngayon';
	@override String get yesterday => 'Kahapon';
}

// Path: meal
class _TranslationsMealTl implements TranslationsMealEn {
	_TranslationsMealTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Naku!';
	@override String get delete => 'Burahin';
	@override String get editMeal => 'I-edit ang Pagkain';
	@override String get addMeal => 'Magdagdag ng Pagkain';
	@override String get saveMeal => 'I-save ang Pagkain';
	@override String get save => 'I-save';
	@override String get mealName => 'Pangalan ng Pagkain';
	@override String get mealNameHint => 'hal., Scrambled Eggs na may tostang tinapay';
	@override String get mealQuantity => 'Dami ng Pagkain';
	@override String get mealQuantityHint => 'hal., 1 mangkok, 2 hiwa';
	@override String get timeOfMeal => 'Oras ng Pagkain';
	@override String get timeOfMealHint => 'Piliin ang oras na kinain mo ang iyong pagkain';
	@override String get mealType => 'Uri ng Pagkain';
	@override late final _TranslationsMealNutritionTl nutrition = _TranslationsMealNutritionTl._(_root);
	@override late final _TranslationsMealDeleteConfirmationTl deleteConfirmation = _TranslationsMealDeleteConfirmationTl._(_root);
	@override String get addedToLog => 'Naidagdag ang pagkain sa iyong log!';
	@override String couldNotAdd({required Object error}) => 'Hindi maidagdag ang pagkain: ${error}';
	@override String get savedSuccessfully => 'Matagumpay na nadagdag ang pagkain!';
	@override String get updatedSuccessfully => 'Matagumpay na na-update ang pagkain!';
	@override String errorSaving({required Object error}) => 'Error sa pag-save ng pagkain: ${error}';
	@override String get removedFromFavorites => 'Inalis sa paborito!';
	@override String get savedAsFavorite => 'Na-save ang pagkain bilang paborito!';
	@override String get unfavorite => 'Alisin sa paborito';
	@override String couldNotUpdateFavorite({required Object error}) => 'Hindi ma-update ang paborito: ${error}';
	@override String get feedbackThanks => 'Salamat sa feedback!';
	@override String get reanalysisUpdated => 'Na-update ang pagsusuri ng pagkain batay sa iyong feedback.';
	@override String failedToProcess({required Object error}) => 'Hindi naproseso: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Hindi naproseso ang larawan: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Error sa pag-compress ng larawan: ${error}';
	@override String get failedToSave => 'Hindi na-save ang data. Pakisubukang muli.';
	@override String get skip => 'Laktawan';
	@override late final _TranslationsMealVariationTl variation = _TranslationsMealVariationTl._(_root);
	@override late final _TranslationsMealAnalysisTl analysis = _TranslationsMealAnalysisTl._(_root);
	@override late final _TranslationsMealFeedbackTl feedback = _TranslationsMealFeedbackTl._(_root);
}

// Path: favorites
class _TranslationsFavoritesTl implements TranslationsFavoritesEn {
	_TranslationsFavoritesTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paborito';
	@override String get empty => 'Wala pang paboritong pagkain.';
	@override String get searchPlaceholder => 'Maghanap ng paboritong pagkain';
	@override String get searchEmptyTitle => 'Walang paborito na tumutugma sa iyong paghahanap';
	@override String get searchEmptySubtitle => 'Subukan ang ibang pangalan ng pagkain, dami, o uri ng pagkain.';
	@override String get sortLabel => 'Ayusin ang paborito';
	@override String get undo => 'I-undo';
	@override String removed({required Object name}) => 'Inalis ang ${name} mula sa paborito';
	@override late final _TranslationsFavoritesSortOptionsTl sortOptions = _TranslationsFavoritesSortOptionsTl._(_root);
}

// Path: profile
class _TranslationsProfileTl implements TranslationsProfileEn {
	_TranslationsProfileTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profile';
	@override String get noProfileData => 'Walang nakita na data ng profile';
	@override String get yourProfile => 'Iyong Profile';
	@override String get viewAndManage => 'Tingnan at pamahalaan ang iyong impormasyong pangkalusugan';
	@override late final _TranslationsProfileSectionsTl sections = _TranslationsProfileSectionsTl._(_root);
	@override String get gender => 'Kasarian';
	@override String get height => 'Taas';
	@override String get weight => 'Timbang';
	@override String get age => 'Edad';
	@override String get weightGoal => 'Layunin sa Timbang';
	@override String get targetWeight => 'Target na Timbang';
	@override String get activityLevel => 'Antas ng Aktibidad';
	@override String get healthMetrics => 'Mga Sukatang Pangkalusugan';
	@override String get notSet => 'Hindi nakatakda';
	@override String get years => 'taon';
	@override String get updatedSuccessfully => 'Matagumpay na na-update ang profile!';
	@override late final _TranslationsProfileCalculatedValuesTl calculatedValues = _TranslationsProfileCalculatedValuesTl._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreTl implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Score';
	@override String get whyThisScore => 'Bakit ganito ang iskor?';
	@override String get note => 'Ang iskor na ito ay pagtatantya ng AI batay sa mga natukoy na sangkap at densidad ng nutrisyon. Laging kumunsulta sa propesyonal para sa payong pandiyeta.';
	@override String get unhealthy => 'Hindi Malusog';
	@override String get healthy => 'Malusog';
	@override String get neutral => 'Neyutral';
}

// Path: editProfile
class _TranslationsEditProfileTl implements TranslationsEditProfileEn {
	_TranslationsEditProfileTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'I-edit ang Profile';
	@override late final _TranslationsEditProfileSectionsTl sections = _TranslationsEditProfileSectionsTl._(_root);
	@override String get gender => 'Kasarian';
	@override String get dateOfBirth => 'Petsa ng Kapanganakan';
	@override String get height => 'Taas';
	@override String get weight => 'Timbang';
	@override String get weightGoal => 'Layunin sa Timbang';
	@override String get activityLevel => 'Antas ng Aktibidad';
	@override String get metric => 'Metriko';
	@override String get imperial => 'Imperyal';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metriko (cm)';
	@override String get imperialFtIn => 'Imperyal (ft/in)';
	@override String get metricKg => 'Metriko (kg)';
	@override String get imperialLbs => 'Imperyal (lbs)';
	@override late final _TranslationsEditProfileGendersTl genders = _TranslationsEditProfileGendersTl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsTl weightGoals = _TranslationsEditProfileWeightGoalsTl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsTl activityLevels = _TranslationsEditProfileActivityLevelsTl._(_root);
}

// Path: settings
class _TranslationsSettingsTl implements TranslationsSettingsEn {
	_TranslationsSettingsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Setting';
	@override late final _TranslationsSettingsSectionsTl sections = _TranslationsSettingsSectionsTl._(_root);
	@override late final _TranslationsSettingsEditProfileTl editProfile = _TranslationsSettingsEditProfileTl._(_root);
	@override late final _TranslationsSettingsLanguageTl language = _TranslationsSettingsLanguageTl._(_root);
	@override late final _TranslationsSettingsHeightUnitTl heightUnit = _TranslationsSettingsHeightUnitTl._(_root);
	@override late final _TranslationsSettingsWeightUnitTl weightUnit = _TranslationsSettingsWeightUnitTl._(_root);
	@override late final _TranslationsSettingsMealRemindersTl mealReminders = _TranslationsSettingsMealRemindersTl._(_root);
	@override late final _TranslationsSettingsThemeTl theme = _TranslationsSettingsThemeTl._(_root);
	@override late final _TranslationsSettingsSendFeedbackTl sendFeedback = _TranslationsSettingsSendFeedbackTl._(_root);
	@override late final _TranslationsSettingsExportMealHistoryTl exportMealHistory = _TranslationsSettingsExportMealHistoryTl._(_root);
	@override late final _TranslationsSettingsClearAllDataTl clearAllData = _TranslationsSettingsClearAllDataTl._(_root);
	@override late final _TranslationsSettingsDebugOptionsTl debugOptions = _TranslationsSettingsDebugOptionsTl._(_root);
	@override String get developerModeEnabled => 'Na-enable ang developer mode!';
	@override late final _TranslationsSettingsHealthConnectTl healthConnect = _TranslationsSettingsHealthConnectTl._(_root);
	@override late final _TranslationsSettingsAboutTl about = _TranslationsSettingsAboutTl._(_root);
	@override late final _TranslationsSettingsAppInfoTl appInfo = _TranslationsSettingsAppInfoTl._(_root);
}

// Path: reminders
class _TranslationsRemindersTl implements TranslationsRemindersEn {
	_TranslationsRemindersTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Manatiling nasa tamang landas gamit ang mga paalala';
	@override String get description => 'Kumuha ng banayad na paalala para mag-log ng iyong mga pagkain at manatiling tuloy-tuloy sa iyong mga layunin sa nutrisyon';
	@override String get notificationsEnabled => 'Na-enable ang mga Notipikasyon';
	@override String get notificationsDisabled => 'Na-disable ang mga Notipikasyon';
	@override String get enabledSubtitle => 'Makakatanggap ka ng mga paalala sa pagkain';
	@override String get disabledSubtitle => 'I-enable ang notipikasyon upang makatanggap ng mga paalala sa pagkain';
	@override String get mealReminders => 'Mga Paalala sa Pagkain';
	@override String get breakfast => 'Almusal';
	@override String get lunch => 'Tanghalian';
	@override String get dinner => 'Hapunan';
	@override String get snack => 'Meryenda';
	@override String get unknown => 'Hindi alam';
	@override String get change => 'Baguhin';
	@override String get enableNotifications => 'I-enable ang Notipikasyon';
	@override String get skipForNow => 'Laktawan muna';
	@override String get saveChanges => 'I-save ang mga Pagbabago';
	@override String get enabledSuccessfully => 'Matagumpay na na-enable ang mga notipikasyon!';
	@override String get permissionDenied => 'Tinanggihan ang pahintulot sa notipikasyon';
	@override String errorEnabling({required Object error}) => 'Error sa pag-enable ng notipikasyon: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Error sa pagsasagawa ng setup: ${error}';
}

// Path: notifications
class _TranslationsNotificationsTl implements TranslationsNotificationsEn {
	_TranslationsNotificationsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastTl breakfast = _TranslationsNotificationsBreakfastTl._(_root);
	@override late final _TranslationsNotificationsLunchTl lunch = _TranslationsNotificationsLunchTl._(_root);
	@override late final _TranslationsNotificationsDinnerTl dinner = _TranslationsNotificationsDinnerTl._(_root);
	@override late final _TranslationsNotificationsSnackTl snack = _TranslationsNotificationsSnackTl._(_root);
	@override late final _TranslationsNotificationsTestTl test = _TranslationsNotificationsTestTl._(_root);
}

// Path: login
class _TranslationsLoginTl implements TranslationsLoginEn {
	_TranslationsLoginTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mag-login';
	@override String get signInWithGoogle => 'Mag-sign in gamit ang Google';
	@override String get signInFailed => 'Nabigo o nakansela ang Google Sign-In.';
}

// Path: disclaimer
class _TranslationsDisclaimerTl implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Paalala';
	@override late final _TranslationsDisclaimerSnapTl snap = _TranslationsDisclaimerSnapTl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateTl weightEstimate = _TranslationsDisclaimerWeightEstimateTl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTl healthMetrics = _TranslationsDisclaimerHealthMetricsTl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureTl calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureTl._(_root);
}

// Path: common
class _TranslationsCommonTl implements TranslationsCommonEn {
	_TranslationsCommonTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get close => 'Isara';
	@override String get kContinue => 'Magpatuloy';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingTl implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Nae-enjoy mo ba ang ${appLabel}?';
	@override String get yes => 'Oo, nae-enjoy ko';
	@override String get no => 'Hindi masyado';
	@override String get rateStepHeading => 'I-rate sa Play Store';
	@override String get emailStepHeading => 'Magpadala ng feedback sa email';
	@override String soloDevMessage({required Object appLabel}) => 'Ang mabilis na rating ay nakakatulong sa iba na mahanap ang ${appLabel} at nagpapatuloy ng development. Maaari ka bang mag-iwan ng rating?';
	@override String get shareFeedbackViaEmail => 'Hinuhubog ng iyong feedback ang susunod — binabasa namin ang bawat mensahe. Gusto mo bang ibahagi ang iyong saloobin sa email?';
	@override String get rateCta => 'I-rate sa Play Store';
	@override String get maybeLater => 'Siguro sa susunod';
	@override String get sendFeedback => 'Magpadala ng feedback';
	@override String get noThanks => 'Huwag na, salamat';
	@override String get aboutUsDescription => 'Ginawa nang may malasakit ng isang maliit na team. Nakatuon kami sa privacy, simple, at pagtulong na mabuo ang mas mabuting gawi sa pagkain.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Interesado kung sino ang nasa likod ng ${appLabel}? Tingnan ang ';
	@override String get aboutUsLinkLabel => 'Tungkol sa amin';
	@override String get thankYouMessage => 'Salamat! Tatanungin ka ulit sa ibang pagkakataon.';
}

// Path: health
class _TranslationsHealthTl implements TranslationsHealthEn {
	_TranslationsHealthTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Hindi maisi-sync sa Health Connect';
	@override String get mealSynced => 'Na-sync ang pagkain sa Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesTl implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionTl foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionTl._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisTl aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisTl._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationTl healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationTl._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderTl implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ano ang iyong kasarian?';
	@override String get description => 'Tumutulong ang kasarian upang eksaktong makalkula ang iyong basal metabolic rate (BMR).';
	@override String get next => 'Susunod';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightTl implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gaano ka katangkad?';
	@override String get description => 'Tinutulungan kami ng iyong taas na kalkulahin ang iyong BMI at pangangailangan sa enerhiya nang mas eksakto.';
	@override String get metric => 'Metriko';
	@override String get imperial => 'Imperyal';
	@override String get next => 'Susunod';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightTl implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Ano ang kasalukuyan mong timbang?';
	@override String get currentDescription => 'Mahalaga ang kasalukuyan mong timbang para ma-personalize ang iyong mga pang-araw-araw na layunin.';
	@override String get targetTitle => 'Ano ang target mong timbang?';
	@override String get targetDescription => 'Ang pagtatakda ng target na timbang ay tutulong sa amin na tukuyin ang iyong pangmatagalang plano.';
	@override String get metric => 'Metriko';
	@override String get imperial => 'Imperyal';
	@override String get next => 'Susunod';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeTl implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kailan ang iyong kaarawan?';
	@override String get description => 'Tumutulong ang iyong edad upang eksaktong makalkula ang iyong pangangailangan sa calories.';
	@override String get next => 'Susunod';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleTl implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kulang';
	@override String get healthy => 'Malusog';
	@override String get overweight => 'Sobra';
	@override String get obese => 'Obeso';
	@override late final _TranslationsOnboardingBmiScaleCategoriesTl categories = _TranslationsOnboardingBmiScaleCategoriesTl._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesTl messages = _TranslationsOnboardingBmiScaleMessagesTl._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalTl implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ano ang iyong layunin?';
	@override String get description => 'Piliin ang layuning pinakamalapit sa gusto mong makamit';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelTl implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gaano ka kaaktibo?';
	@override String get description => 'Tinutulungan kami nito na mas eksaktong makalkula ang iyong pang-araw-araw na pangangailangan sa calories';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectTl implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kumonekta sa Health Connect';
	@override String get description => 'I-sync ang iyong health data para sa mas mahusay na insight at awtomatikong pag-track ng calories';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingTl automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingTl._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsTl progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsTl._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationTl seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationTl._(_root);
	@override String get connected => 'Nakakonekta ang Health Connect';
	@override String get notConnected => 'Hindi nakakonekta ang Health Connect';
	@override String get setup => 'I-setup ang Health Connect';
	@override String get skipForNow => 'Laktawan muna';
	@override String get statusConnected => 'Nakakonekta ang Health Connect.';
	@override String get statusSuccess => 'Matagumpay na nakakonekta ang Health Connect!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Tinanggihan ang pahintulot. Paki-enable ang mga pahintulot ng Health Connect mula sa mga setting ng iyong telepono para sa ${appLabel}.';
	@override String statusError({required Object error}) => 'Error sa pag-setup ng Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementTl implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessTl trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessTl._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileTl healthProfile = _TranslationsOnboardingReinforcementHealthProfileTl._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleTl goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleTl._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryTl implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iyong AI Summary';
	@override String get logMore => 'Mag-log pa ng mga pagkain sa mga susunod na araw para makuha ang iyong personalisadong AI insights.';
	@override String get loading => 'Lina-load ang iyong buod...';
	@override String mealCount({required Object count}) => '${count} meal(s) na na-log';
	@override String macroBalanceScore({required Object score}) => 'Balance score ${score}';
	@override String get topFoods => 'Nangungunang pagkain';
	@override String get trendUp => 'Tumaas ang trend ng calories';
	@override String get trendDown => 'Bumababa ang trend ng calories';
	@override String get trendSteady => 'Steady ang calories';
	@override String generatedAt({required Object time}) => 'Na-update ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalTl implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Itakda ang Iyong Pang-araw-araw na Layunin';
	@override String get titleSet => 'Iyong Pang-araw-araw na Layunin';
	@override String get description => 'Handa ka na bang simulan ang iyong wellness journey? Itakda ang iyong pang-araw-araw na target ng calorie sa ibaba para simulan ang progreso.';
	@override String get descriptionSet => 'Nakatakda na ang iyong kompas! Ito ang pang-araw-araw mong target ng calorie na gagabay sa iyo.';
	@override String get yourGoal => 'Iyong Layunin';
	@override String get goal => 'Layunin';
	@override String get dailyCalories => 'Pang-araw-araw na calories (kcal)';
	@override String get setGoal => 'Itakda ang Layunin';
	@override String get intake => 'Intake';
	@override String get burned => 'Nasunog';
	@override String get weightImpact => 'Epekto sa Timbang';
	@override String get estLoss => 'Tinatayang bawas na';
	@override String get estGain => 'Tinatayang dagdag na';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryTl implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pang-araw-araw na Buod';
	@override String get calories => 'Calories';
	@override String get carbs => 'Carbs';
	@override String get protein => 'Protein';
	@override String get fat => 'Fat';
	@override String get fiber => 'Fiber';
	@override String get grams => 'gramo';
	@override String get chartAccessibilityLabel => 'Macros chart';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressTl implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hati ng Macro Ngayon';
	@override String get target => 'Target';
	@override String get current => 'Kasalukuyan';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryTl implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => '7-Araw na Macro History';
	@override String get trendTitle => 'Trend Ngayon';
	@override String peakHour({required Object hour}) => 'Pinakamataas: ${hour}:00';
	@override String get noHistoryYet => 'Wala pang kasaysayan';
	@override String get startLogging => 'Magsimulang mag-log ng pagkain upang makita ang iyong\n7-araw na macro trends dito';
}

// Path: home.mealLog
class _TranslationsHomeMealLogTl implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Na-log na Pagkain';
	@override String get emptyMessage => 'Kuhanin ng larawan ang huli mong kinain para ma-log dito.';
	@override String get noMealsToday => 'Walang naitalang pagkain ngayong araw';
	@override String get seeAllMeals => 'Tingnan lahat ng pagkain';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionTl implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mabilis na Add gamit ang AI';
	@override String get description => 'Ilarawan ang iyong pagkain, at hayaan ang AI ang bahala sa detalye.';
	@override String get hint => 'hal. Sa almusal, kumain ako ng malaking mangkok ng oatmeal na may hiniwang saging at isang scoop ng whey ...';
	@override String get analyzeMeal => 'Suriin ang pagkain';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsTl implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paboritong Pagkain';
	@override String get description => 'Mabilis na idagdag ang isa sa iyong mga paboritong pagkain.';
	@override String get noFavorites => 'Wala pang paboritong pagkain.';
	@override String get addFavoriteHint => 'I-click ang bituin sa isang pagkain para markahan bilang paborito.';
	@override String get seeAll => 'Tingnan lahat';
	@override String get add => 'Idagdag';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapTl implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kuhanan at I-track ang Iyong Pagkain';
	@override String get description => 'Gamitin ang iyong camera para kunan ng larawan ang iyong pagkain para sa AI analysis.';
	@override String get openCamera => 'Buksan ang Camera';
	@override String get gallery => 'Gallery';
	@override String get compressingPhoto => 'Ina-optimize ang larawan…';
	@override String get uploadingPhoto => 'Ina-upload ang larawan…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthTl implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'I-sync sa Health Connect';
	@override String get description => 'I-sync ang iyong nutrition data sa Health Connect';
	@override String get install => 'I-install';
	@override String get connect => 'Ikonekta';
}

// Path: meal.nutrition
class _TranslationsMealNutritionTl implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calories';
	@override String get carbs => 'Carbs (g)';
	@override String get protein => 'Protein (g)';
	@override String get fat => 'Fat (g)';
	@override String get fiber => 'Fiber (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationTl implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Burahin ang Pagkain';
	@override String get message => 'Sigurado ka bang gusto mong burahin ang entry ng pagkain na ito?';
	@override String get cancel => 'Kanselahin';
	@override String get delete => 'Burahin';
}

// Path: meal.variation
class _TranslationsMealVariationTl implements TranslationsMealVariationEn {
	_TranslationsMealVariationTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Tanong ${current} ng ${total}';
	@override String get noVariationsAvailable => 'Walang available na mga variation';
}

// Path: meal.analysis
class _TranslationsMealAnalysisTl implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI na pagsusuri ng pagkain';
	@override String get reassurance => 'Karaniwan ay ilang segundo lang ito.';
	@override String get stepStarted => 'Nagsisimula…';
	@override String get stepDecomposition => 'Inuunawa ang iyong pagkain…';
	@override String get stepIngredients => 'Ibinabagay ang mga sangkap sa datos ng nutrisyon…';
	@override String get stepUncertainty => 'Sinusuri ang kumpiyansa…';
	@override String get stepMealTypeQuestion => 'Malapit na…';
	@override String get stepResult => 'Tinatapos ang resulta…';
	@override String get stepError => 'May nagkaproblema';
	@override String get stepDefault => 'Sinusuri ang iyong pagkain…';
	@override String get progressUnderstand => 'Unawain';
	@override String get progressMatch => 'Itugma';
	@override String get progressCheck => 'Suriin';
	@override String get progressFinish => 'Tapos';
	@override String ingredientsLine({required Object count}) => '${count} sangkap na natukoy';
	@override String get ingredientsPending => 'Sinusuri ang mga sangkap…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackTl implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ano ang mukhang mali?';
	@override String get subtitle => 'Tulungan kaming pagbutihin ang pagsusuri sa pamamagitan ng pagpili ng isa o higit pang isyu.';
	@override String get tellUsMore => 'Magkuwento pa';
	@override String get describeIncorrect => 'Ilarawan kung ano ang mali';
	@override String get submit => 'Isumite';
	@override String get issueFoodIdentification => 'Pagkilala sa pagkain';
	@override String get issuePortionSize => 'Laki ng bahagi';
	@override String get issueCalorieDistribution => 'Pamamahagi ng kaloriya';
	@override String get issueMacrosWrong => 'Mali ang macros';
	@override String get issueMissingItems => 'Nawawalang mga item';
	@override String get issueExtraItems => 'Sobrang mga item';
	@override String get issueOther => 'Iba pa';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsTl implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Pinakabago';
	@override String get calories => 'Calories';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsTl implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFILE';
	@override String get basicInformation => 'PANGUNAHING IMPORMASYON';
	@override String get goalsAndActivity => 'MGA LAYUNIN AT AKTIBIDAD';
	@override String get calculatedValues => 'MGA KINALKULANG HALAGA';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesTl implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Pang-araw-araw na Layunin';
	@override String get calPerDay => 'cal/araw';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsTl implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSONAL NA IMPORMASYON';
	@override String get physicalMeasurements => 'PISIKAL NA SUKAT';
	@override String get goalsAndActivity => 'MGA LAYUNIN AT AKTIBIDAD';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersTl implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get male => 'Lalaki';
	@override String get female => 'Babae';
	@override String get other => 'Iba pa';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsTl implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightTl loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightTl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightTl maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightTl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightTl gainWeight = _TranslationsEditProfileWeightGoalsGainWeightTl._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsTl implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryTl sedentary = _TranslationsEditProfileActivityLevelsSedentaryTl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveTl lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveTl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveTl moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveTl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveTl veryActive = _TranslationsEditProfileActivityLevelsVeryActiveTl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveTl extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveTl._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsTl implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFILE';
	@override String get localization => 'LOKALISASYON';
	@override String get notifications => 'NOTIPIKASYON';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'SUPORTA AT LEGAL';
	@override String get about => 'TUNGKOL';
	@override String get dangerZone => 'DELIKADONG BAHAGI';
	@override String get developer => 'DEVELOPER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileTl implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'I-edit ang Profile';
	@override String get subtitle => 'I-update ang iyong personal na impormasyon';
}

// Path: settings.language
class _TranslationsSettingsLanguageTl implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wika';
	@override String get subtitle => 'Piliin ang iyong gustong wika';
	@override String get searchHint => 'Maghanap ng mga wika...';
	@override String get noResults => 'Walang nahanap na resulta';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitTl implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yunit ng Taas';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitTl implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yunit ng Timbang';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersTl implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Paalala sa Pagkain';
	@override String get subtitle => 'Manatiling nasa tamang landas gamit ang napapanahong alerto';
}

// Path: settings.theme
class _TranslationsSettingsThemeTl implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Liwanag';
	@override String get dark => 'Madilim';
	@override String get system => 'Sistema';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackTl implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Magpadala ng Feedback';
	@override String subtitle({required Object appLabel}) => 'Tulungan kaming pagandahin ang ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Feedback para sa ${appLabel}';
	@override String get emailBodyPrefix => 'Pakibigay ang iyong feedback sa ibaba:';
	@override String get appVersion => 'Bersyon ng App';
	@override String get device => 'Device';
	@override String get osVersion => 'Bersyon ng OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryTl implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'I-export ang Kasaysayan ng Pagkain';
	@override String get subtitle => 'Ibahagi ang CSV ng iyong mga na-log na pagkain';
	@override String get shareText => 'Iyong eksport ng kasaysayan ng pagkain sa Calorify';
	@override String failed({required Object error}) => 'Hindi ma-export ang kasaysayan ng pagkain: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataTl implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Burahin Lahat ng Data';
	@override String get subtitle => 'Hindi na mababawi ang pagbura ng lahat ng iyong impormasyon';
	@override String get confirmationTitle => 'Burahin Lahat ng Data?';
	@override String get confirmationMessage => 'Hindi na ito mababawi. Lahat ng iyong na-log na pagkain, paborito, at mga setting ng profile ay permanenteng mabubura.';
	@override String get cancel => 'Kanselahin';
	@override String get clearEverything => 'Burahin Lahat';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsTl implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Opsyon sa Debug';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectTl implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Tingnan at pamahalaan ang mga pahintulot';
	@override late final _TranslationsSettingsHealthConnectUnavailableTl unavailable = _TranslationsSettingsHealthConnectUnavailableTl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsTl permissions = _TranslationsSettingsHealthConnectPermissionsTl._(_root);
	@override String get managePermissions => 'Pamahalaan ang mga Pahintulot';
	@override String get openSettings => 'Buksan ang Mga Setting ng Health Connect';
	@override String get requestPermissions => 'Humiling ng mga Pahintulot';
	@override String get permissionRequestCancelledOrFailed => 'Kinansela o nabigo ang kahilingan ng pahintulot. Pakisubukang muli o magbigay ng pahintulot nang mano-mano sa mga setting ng Health Connect.';
	@override String get permissionRequestFailed => 'Hindi makahiling ng mga pahintulot. Pakisubukang muli o magbigay ng pahintulot nang mano-mano sa mga setting ng Health Connect.';
	@override String get requestingPermissions => 'Humihiling...';
}

// Path: settings.about
class _TranslationsSettingsAboutTl implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tungkol';
	@override String get tagline => 'Mabilis, libre, at inuuna ang privacy para sa kamalayang kaloriya';
	@override late final _TranslationsSettingsAboutOurStoryTl ourStory = _TranslationsSettingsAboutOurStoryTl._(_root);
	@override late final _TranslationsSettingsAboutPrivacyTl privacy = _TranslationsSettingsAboutPrivacyTl._(_root);
	@override late final _TranslationsSettingsAboutDeveloperTl developer = _TranslationsSettingsAboutDeveloperTl._(_root);
	@override late final _TranslationsSettingsAboutFeedbackTl feedback = _TranslationsSettingsAboutFeedbackTl._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoTl implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastTl implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oras ng Almusal! 🍳';
	@override String get body => 'Huwag kalimutang i-log ang iyong almusal';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchTl implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oras ng Tanghalian! 🥗';
	@override String get body => 'Panahon nang i-log ang iyong tanghalian';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerTl implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oras ng Hapunan! 🍽️';
	@override String get body => 'Huwag kalimutang i-log ang iyong hapunan';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackTl implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oras ng Meryenda! 🍎';
	@override String get body => 'Panahon para sa masustansyang meryenda';
}

// Path: notifications.test
class _TranslationsNotificationsTestTl implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pagsubok na Notipikasyon';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapTl implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => 'Nagbibigay ang ${appLabel} ng tinatayang impormasyong pangnutrisyon. Nakasalalay ang accuracy sa iyong input at sa pagkakaiba-iba ng pagkain. Gamitin bilang gabay, hindi bilang tiyak na sanggunian. Kumunsulta sa propesyonal para sa personalisadong payong pandiyeta.';
	@override late final _TranslationsDisclaimerSnapPortionSizeTl portionSize = _TranslationsDisclaimerSnapPortionSizeTl._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsTl preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsTl._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsTl ingredients = _TranslationsDisclaimerSnapIngredientsTl._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsTl databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsTl._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateTl implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tungkol sa Pagtatantya ng Timbang';
	@override String get description => 'Ang inaasahang pagbabago ng timbang ay teoretikal na pagtatantya batay sa simpleng modelo ng calorie-in vs. calorie-out. Ito ay para sa motibasyong gabay lamang, hindi bilang hula ng aktuwal mong timbang.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyTl calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyTl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsTl biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsTl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightTl waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightTl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsTl implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get description => 'Tinutulungan ka ng mga sukatan na ito na maunawaan ang pangangailangan ng iyong katawan sa enerhiya at gagabay sa iyong mga layunin sa nutrisyon.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrTl bmr = _TranslationsDisclaimerHealthMetricsBmrTl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeTl tdee = _TranslationsDisclaimerHealthMetricsTdeeTl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalTl dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalTl._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureTl implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pagtatantya ng Calorie Expenditure';
	@override String get description => 'Kapag walang available na data mula sa Health Connect, tinatantya namin ang calories na nasunog ngayong araw gamit ang iyong Basal Metabolic Rate (BMR) at antas ng aktibidad (TDEE), na sinasabay sa bahaging lumipas ng araw.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedTl howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedTl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTl professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTl._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionTl implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Matalinong Pagkilala ng Pagkain';
	@override String get description => 'Kumuha ng larawan at hayaang tukuyin ng AI ang iyong pagkain';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisTl implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI Analysis';
	@override String get description => 'Kumuha ng agarang datos ng nutrisyon mula sa iyong paglalarawan';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationTl implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pagsasama sa Health';
	@override String get description => 'Ikonekta ang Health Connect para sa mas mahusay na insight';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesTl implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kulang sa timbang';
	@override String get healthyWeight => 'Tamang timbang';
	@override String get overweight => 'Sobra sa timbang';
	@override String get obese => 'Obeso';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesTl implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Matutulungan ka naming bumuo ng malusog na plano upang maabot ang balanseng timbang gamit ang pagkaing masustansya.';
	@override String get healthy => 'Galing! Nasa malusog na saklaw ka. Tutulungan ka naming mapanatili ang sigla at antas ng enerhiya mo.';
	@override String overweight({required Object appLabel}) => 'Papadaliin ng ${appLabel} ang iyong paglalakbay gamit ang AI-powered na tracking upang komportableng maabot ang iyong target.';
	@override String get obese => 'Narito kami upang suportahan ka gamit ang personalisadong gabay at napapanatiling estratehiya para sa iyong mga layuning pangkalusugan.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingTl implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Awtomatikong Pag-track ng Calories';
	@override String get description => 'I-track ang calories na nasunog mula sa iyong mga fitness app';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsTl implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Insight sa Progreso';
	@override String get description => 'Kumuha ng detalyadong insight sa iyong mga trend sa kalusugan';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationTl implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Walang Abalang Pagsasama';
	@override String get description => 'I-sync ang data mula sa paborito mong health apps';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessTl implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hindi Ka Nag-iisa';
	@override String get genericMessage => 'Ipinapakita ng pananaliksik na ang tuloy-tuloy na pag-log ang #1 na tagapagpahiwatig ng pangmatagalang tagumpay.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Para sa isang ${age} taong gulang na ${gender} na nais na ${goal}, ang tuloy-tuloy na pag-log ang #1 na tagapagpahiwatig ng tagumpay.';
	@override String closingMessage({required Object appLabel}) => 'Ginagawang 10x na mas madali ng ${appLabel} kumpara sa mano-manong paraan.';
	@override String get getStartedTitle => 'Handa nang magsimula?';
	@override String get tipPhoto => 'Kunan ng larawan ang iyong mga pagkain para sa instant na pagsusuri';
	@override String get tipConsistency => 'Mag-log nang tuloy-tuloy upang makakita ng makahulugang progreso';
	@override String get tipProgress => 'Subaybayan ang iyong progreso araw-araw upang manatiling motivated';
	@override String get button => 'Tara, Simulan';
	@override String get defaultGender => 'indibidwal';
	@override String get defaultGoal => 'mas malusog na ikaw';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileTl implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iyong Health Profile';
	@override String bmiDescription({required Object bmi}) => 'Batay sa iyong mga sukatan, ang iyong BMI ay ${bmi}.';
	@override String get finalizeDescription => 'Tapusin natin ang iyong profile upang ma-customize ang iyong karanasan.';
	@override String get goalGain => 'magdagdag';
	@override String get goalLose => 'magbawas';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Upang maabot ang iyong layunin, kailangan mong ${direction} ng ${diff} ${unit}.';
	@override String get goalReached => 'Nasa target mong timbang ka na! Tutulungan ka naming mapanatili ito.';
	@override String get button => 'Tara, Simulan';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleTl implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Napakagandang Simula!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Ginawa mo na ang unang hakbang patungo sa ${goalText}. Dahil ikaw ay ${activityText}, iaangkop ng ${appLabel} ang iyong mga target upang tumugma sa iyong pamumuhay.';
	@override String get personalizedTargets => 'Personalised na calorie targets';
	@override String get aiMealDetection => 'AI-powered na pagtukoy ng pagkain';
	@override String get macroBreakdowns => 'Detalyadong paghahati ng macro-nutrients';
	@override String get button => 'Tara, Simulan';
	@override String get defaultGoal => 'iyong mga layunin';
	@override String get defaultActivity => 'aktibo';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightTl implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Magbawas ng Timbang';
	@override String get description => 'Lumikha ng calorie deficit para magbawas ng timbang';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightTl implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Panatilihin ang Timbang';
	@override String get description => 'Panatilihin ang kasalukuyang timbang';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightTl implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Magdagdag ng Timbang';
	@override String get description => 'Lumikha ng calorie surplus para magdagdag ng timbang';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryTl implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentary';
	@override String get description => 'Maliit o walang ehersisyo';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveTl implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lightly Active';
	@override String get description => 'Magaan na ehersisyo 1-3 araw/buwan';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveTl implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderately Active';
	@override String get description => 'Katamtamang ehersisyo 3-5 araw/buwan';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveTl implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Very Active';
	@override String get description => 'Mabigat na ehersisyo 6-7 araw/buwan';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveTl implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extremely Active';
	@override String get description => 'Napakabigat na ehersisyo, pisikal na trabaho';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableTl implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hindi Available ang Health Connect';
	@override String get description => 'Hindi available ang Health Connect sa device na ito. Mangyaring i-install ang Health Connect mula sa Play Store (Android 9+) o mag-update sa Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsTl implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Pahintulot';
	@override String get description => 'Ang mga sumusunod na pahintulot ay hinihiling upang maibigay ang integrasyon ng Health Connect:';
	@override String get granted => 'Nabigyan';
	@override String get notGranted => 'Hindi Nabigyan';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTl caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadTl nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadTl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteTl nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteTl._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryTl implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ang Aming Kuwento';
	@override String content({required Object appLabel}) => 'Ang ${appLabel} ay isinilang mula sa simpleng pagkadismaya: karamihan sa calorie tracking apps ay sobrang komplikado, nangangailangan ng paulit-ulit na mano-manong pag-input, may mahal na subscription, o isinusuko ang privacy.\n\nBilang isang solo developer, gusto kong gumawa ng mas simple at mas patas — isang app na gumagamit ng AI para bawasan ang abala, nananatiling mabilis at libre, at nirerespeto ang iyong health data.\n\nAng ${appLabel} ang app na sana\'y umiiral na: walang account, walang tracking, walang ads — malinaw, praktikal na insight at nakatuon sa iyong layuning pangkalusugan.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyTl implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahalaga ang Iyong Privacy';
	@override String get description => 'Hindi afterthought ang privacy — isa itong prinsipyo sa disenyo. Ganito ang ibig sabihin nito sa praktika:';
	@override String get noAccounts => 'Walang kailangang account\nGamitin ang app kaagad. Walang sign-up, walang pagkakakilanlan.';
	@override String noTracking({required Object appLabel}) => 'Walang behavioral tracking\nHindi mino-monitor ng ${appLabel} ang iyong aktibidad, gumagawa ng usage profile, o sinusundan ka sa iba pang app o website.';
	@override String noAds({required Object appLabel}) => 'Walang ads sa disenyo\nGawa ang ${appLabel} para gumana nang walang ads o monetization na nakabatay sa data.';
	@override String get noDataSelling => 'Walang pagbebenta ng data\nHindi kailanman ibinebenta o ibinabahagi sa mga third party ang iyong health data.';
	@override String get localStorage => 'Local-first na storage\nNananatili sa iyong device ang iyong data.';
	@override String get privacyPolicy => 'Patakaran sa Privacy';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperTl implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gawa ng Isang Solo Developer';
	@override String description({required Object appLabel}) => 'Ang ${appLabel} ay binuo at pinananatili ng isang solo developer na nakatuon sa paglikha ng payapa at nirerespeto ang privacy na health software.\n\nPersonal na binabasa ang feedback at nakakatulong ito sa direksiyon ng app.';
	@override String get website => 'Website';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackTl implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Nae-enjoy mo ba ang ${appLabel}?';
	@override String description({required Object appLabel}) => 'Tinutulungan ng iyong feedback na pagandahin ang ${appLabel} para sa lahat.';
	@override String get rateApp => 'I-rate sa Play Store';
	@override String get sendFeedback => 'Magpadala ng Feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeTl implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Laki ng Porsyon';
	@override String get description => 'Malaki ang nakaasa ang katumpakan ng mga pagtatantya sa tama mong pagtataya ng laki ng porsyon.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsTl implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paraan ng Pagluluto';
	@override String description({required Object appLabel}) => 'Malaki ang nagbabago sa nilalamang nutrisyon ang paraan ng pagluluto. Maaaring hindi laging maisaalang-alang ng ${appLabel} ang mga pagkakaibang ito.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsTl implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Sangkap';
	@override String get description => 'Ang maseselang putahe na may maraming nakatagong sangkap ay maaaring magresulta sa hindi gaanong eksaktong pagtatantya.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsTl implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Limitasyon ng Database';
	@override String description({required Object appLabel}) => 'Malawak ang food database ng ${appLabel} ngunit maaaring hindi nito masaklaw ang lahat ng pagkain o bawat baryasyon.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyTl implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Katumpakan ng Calories';
	@override String get description => 'Kasing-tumpak lamang ng iyong na-track na calorie intake at expenditure ang pagtatantyang ito. Ang hindi eksaktong pag-log ay magreresulta sa hindi eksaktong projection.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsTl implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Salik na Pisiyolohikal';
	@override String description({required Object appLabel}) => 'Ang aktuwal na pagbabawas/pagdami ng timbang ay naiimpluwensyahan ng metabolismo, hormones, tulog, stress, hydration, at iba pang indibidwal na salik na hindi masukat ng ${appLabel}.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightTl implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Timbang ng Tubig at Pagbabago-bago';
	@override String get description => 'Karaniwan ang araw-araw na pagbabago ng timbang dahil sa water retention, pagda-digest, at timing. Hindi isinasaalang-alang ng pagtatantya ang mga pagbabagong ito.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gabay ng Propesyonal';
	@override String get description => 'Huwag gamitin ang pagtatantyang ito para gumawa ng desisyong medikal. Laging kumunsulta sa healthcare professional o rehistradong dietitian para sa personalisadong payo sa pamamahala ng timbang.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrTl implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Ang Basal Metabolic Rate (BMR) ay ang bilang ng calories na sinusunog ng iyong katawan sa pamamahinga upang mapanatili ang pangunahing mga tungkulin tulad ng paghinga at sirkulasyon. Nakasalalay ang BMR sa iyong edad, kasarian, taas, at timbang. Mas mataas na BMR ay nangangahulugang mas natural na nagsusunog ng calories ang katawan sa pamamahinga, kadalasang dahil sa mas maraming muscle mass, mas batang edad, o pagiging lalaki. Mas mababang BMR ay karaniwang nagpapahiwatig ng mas kaunting muscle mass, mas matandang edad, o pagiging babae.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeTl implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Ang Total Daily Energy Expenditure (TDEE) ay ang kabuuang calories na sinusunog mo bawat araw, kabilang ang iyong BMR kasama ang calories mula sa pisikal na aktibidad at araw-araw na paggalaw. Nakasalalay ang TDEE sa iyong BMR at antas ng aktibidad. Mas mataas na TDEE ay nangangahulugang mas maraming calories ang nasusunog nang kabuuan, karaniwang dahil sa pagiging mas aktibo o pagkakaroon ng mas mataas na BMR. Mas mababang TDEE ay nagpapahiwatig ng mas kaunting araw-araw na aktibidad o mas mababang BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalTl implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pang-araw-araw na Layunin';
	@override String get description => 'Ang Pang-araw-araw na Layunin ay ang inirerekomendang pang-araw-araw na calorie intake batay sa iyong TDEE at layunin sa timbang. Para sa pagbawas ng timbang, mas kaunting calories kaysa sa iyong TDEE ang kinokonsumo. Para sa pagpapanatili, itinatapat mo ang iyong TDEE. Para sa pagdagdag ng timbang, mas maraming calories ang kinokonsumo kaysa sa iyong TDEE. Nakakatulong itong maabot ang ninanais mong pagbabago sa timbang sa malusog na bilis.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedTl implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paano Kinakalkula ang Tantiya';
	@override String get description => 'Kinukuwenta namin ang iyong TDEE (batay sa iyong profile) at minumultiply ito sa fraction ng lumipas na bahagi ng araw (oras + minuto) / 24 para tantyahin ang calories na nasunog sa ngayon.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTl implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gabay ng Propesyonal';
	@override String get description => 'Huwag gamitin ang tantiya na ito para gumawa ng desisyong medikal. Laging kumunsulta sa healthcare professional o rehistradong dietitian para sa personalisadong payo.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTl implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Basahin ang Kabuuang Calories na Nasunog';
	@override String get description => 'Pinapayagan ang app na basahin ang kabuuang calories na nasunog mula sa Health Connect.';
	@override String get usage => 'Ginagamit ang pahintulot na ito upang ipakita ang iyong pang-araw-araw na calorie burn sa app, na tumutulong maunawaan ang iyong kabuuang enerhiyang nagugugol sa maghapon.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadTl implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Basahin ang Data ng Nutrisyon';
	@override String get description => 'Pinapayagan ang app na basahin ang data ng nutrisyon mula sa Health Connect.';
	@override String get usage => 'Pinapahintulutan ng pahintulot na ito ang app na basahin ang impormasyong pangnutrisyon na maaaring nai-log ng iba pang app na nakakabit sa Health Connect, para sa mas kumpletong pananaw sa iyong nutrisyon.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteTl implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Isulat ang Data ng Nutrisyon';
	@override String get description => 'Pinapayagan ang app na magsulat ng data ng nutrisyon sa Health Connect.';
	@override String get usage => 'Ginagamit ang pahintulot na ito upang i-sync ang iyong mga na-log na pagkain sa Health Connect, para maging available ang iyong datos sa nutrisyon sa iba mo pang health at fitness app.';
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
			'errors.rateLimitExceeded' => 'Sobra ang dami ng kahilingan. Maghintay sandali bago muling subukan.',
			'errors.networkError' => 'Error sa network. Pakisuri ang iyong koneksyon sa internet.',
			'errors.unknownError' => 'May nangyaring mali. Pakisubukang muli mamaya.',
			'errors.loadingProfileData' => 'Error sa pag-load ng data ng profile',
			'errors.somethingWentWrong' => 'May nangyaring mali.',
			'errors.retry' => 'Subukang muli',
			'onboarding.welcome' => ({required Object appLabel}) => 'Maligayang pagdating sa ${appLabel}',
			'onboarding.subtitle' => 'Ang iyong personal na katuwang sa nutrisyon na pinalakas ng AI',
			'onboarding.getStarted' => 'Simulan',
			'onboarding.features.foodRecognition.title' => 'Matalinong Pagkilala ng Pagkain',
			'onboarding.features.foodRecognition.description' => 'Kumuha ng larawan at hayaang tukuyin ng AI ang iyong pagkain',
			'onboarding.features.aiAnalysis.title' => 'AI Analysis',
			'onboarding.features.aiAnalysis.description' => 'Kumuha ng agarang datos ng nutrisyon mula sa iyong paglalarawan',
			'onboarding.features.healthIntegration.title' => 'Pagsasama sa Health',
			'onboarding.features.healthIntegration.description' => 'Ikonekta ang Health Connect para sa mas mahusay na insight',
			'onboarding.gender.title' => 'Ano ang iyong kasarian?',
			'onboarding.gender.description' => 'Tumutulong ang kasarian upang eksaktong makalkula ang iyong basal metabolic rate (BMR).',
			'onboarding.gender.next' => 'Susunod',
			'onboarding.height.title' => 'Gaano ka katangkad?',
			'onboarding.height.description' => 'Tinutulungan kami ng iyong taas na kalkulahin ang iyong BMI at pangangailangan sa enerhiya nang mas eksakto.',
			'onboarding.height.metric' => 'Metriko',
			'onboarding.height.imperial' => 'Imperyal',
			'onboarding.height.next' => 'Susunod',
			'onboarding.weight.currentTitle' => 'Ano ang kasalukuyan mong timbang?',
			'onboarding.weight.currentDescription' => 'Mahalaga ang kasalukuyan mong timbang para ma-personalize ang iyong mga pang-araw-araw na layunin.',
			'onboarding.weight.targetTitle' => 'Ano ang target mong timbang?',
			'onboarding.weight.targetDescription' => 'Ang pagtatakda ng target na timbang ay tutulong sa amin na tukuyin ang iyong pangmatagalang plano.',
			'onboarding.weight.metric' => 'Metriko',
			'onboarding.weight.imperial' => 'Imperyal',
			'onboarding.weight.next' => 'Susunod',
			'onboarding.age.title' => 'Kailan ang iyong kaarawan?',
			'onboarding.age.description' => 'Tumutulong ang iyong edad upang eksaktong makalkula ang iyong pangangailangan sa calories.',
			'onboarding.age.next' => 'Susunod',
			'onboarding.bmiScale.underweight' => 'Kulang',
			'onboarding.bmiScale.healthy' => 'Malusog',
			'onboarding.bmiScale.overweight' => 'Sobra',
			'onboarding.bmiScale.obese' => 'Obeso',
			'onboarding.bmiScale.categories.underweight' => 'Kulang sa timbang',
			'onboarding.bmiScale.categories.healthyWeight' => 'Tamang timbang',
			'onboarding.bmiScale.categories.overweight' => 'Sobra sa timbang',
			'onboarding.bmiScale.categories.obese' => 'Obeso',
			'onboarding.bmiScale.messages.underweight' => 'Matutulungan ka naming bumuo ng malusog na plano upang maabot ang balanseng timbang gamit ang pagkaing masustansya.',
			'onboarding.bmiScale.messages.healthy' => 'Galing! Nasa malusog na saklaw ka. Tutulungan ka naming mapanatili ang sigla at antas ng enerhiya mo.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => 'Papadaliin ng ${appLabel} ang iyong paglalakbay gamit ang AI-powered na tracking upang komportableng maabot ang iyong target.',
			'onboarding.bmiScale.messages.obese' => 'Narito kami upang suportahan ka gamit ang personalisadong gabay at napapanatiling estratehiya para sa iyong mga layuning pangkalusugan.',
			'onboarding.weightGoal.title' => 'Ano ang iyong layunin?',
			'onboarding.weightGoal.description' => 'Piliin ang layuning pinakamalapit sa gusto mong makamit',
			'onboarding.activityLevel.title' => 'Gaano ka kaaktibo?',
			'onboarding.activityLevel.description' => 'Tinutulungan kami nito na mas eksaktong makalkula ang iyong pang-araw-araw na pangangailangan sa calories',
			'onboarding.healthConnect.title' => 'Kumonekta sa Health Connect',
			'onboarding.healthConnect.description' => 'I-sync ang iyong health data para sa mas mahusay na insight at awtomatikong pag-track ng calories',
			'onboarding.healthConnect.automaticTracking.title' => 'Awtomatikong Pag-track ng Calories',
			'onboarding.healthConnect.automaticTracking.description' => 'I-track ang calories na nasunog mula sa iyong mga fitness app',
			'onboarding.healthConnect.progressInsights.title' => 'Mga Insight sa Progreso',
			'onboarding.healthConnect.progressInsights.description' => 'Kumuha ng detalyadong insight sa iyong mga trend sa kalusugan',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Walang Abalang Pagsasama',
			'onboarding.healthConnect.seamlessIntegration.description' => 'I-sync ang data mula sa paborito mong health apps',
			'onboarding.healthConnect.connected' => 'Nakakonekta ang Health Connect',
			'onboarding.healthConnect.notConnected' => 'Hindi nakakonekta ang Health Connect',
			'onboarding.healthConnect.setup' => 'I-setup ang Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Laktawan muna',
			'onboarding.healthConnect.statusConnected' => 'Nakakonekta ang Health Connect.',
			'onboarding.healthConnect.statusSuccess' => 'Matagumpay na nakakonekta ang Health Connect!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Tinanggihan ang pahintulot. Paki-enable ang mga pahintulot ng Health Connect mula sa mga setting ng iyong telepono para sa ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Error sa pag-setup ng Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Hindi Ka Nag-iisa',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Ipinapakita ng pananaliksik na ang tuloy-tuloy na pag-log ang #1 na tagapagpahiwatig ng pangmatagalang tagumpay.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Para sa isang ${age} taong gulang na ${gender} na nais na ${goal}, ang tuloy-tuloy na pag-log ang #1 na tagapagpahiwatig ng tagumpay.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => 'Ginagawang 10x na mas madali ng ${appLabel} kumpara sa mano-manong paraan.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Handa nang magsimula?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Kunan ng larawan ang iyong mga pagkain para sa instant na pagsusuri',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Mag-log nang tuloy-tuloy upang makakita ng makahulugang progreso',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Subaybayan ang iyong progreso araw-araw upang manatiling motivated',
			'onboarding.reinforcement.trackingSuccess.button' => 'Tara, Simulan',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'indibidwal',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'mas malusog na ikaw',
			'onboarding.reinforcement.healthProfile.title' => 'Iyong Health Profile',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Batay sa iyong mga sukatan, ang iyong BMI ay ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Tapusin natin ang iyong profile upang ma-customize ang iyong karanasan.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'magdagdag',
			'onboarding.reinforcement.healthProfile.goalLose' => 'magbawas',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Upang maabot ang iyong layunin, kailangan mong ${direction} ng ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Nasa target mong timbang ka na! Tutulungan ka naming mapanatili ito.',
			'onboarding.reinforcement.healthProfile.button' => 'Tara, Simulan',
			'onboarding.reinforcement.goalLifestyle.title' => 'Napakagandang Simula!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Ginawa mo na ang unang hakbang patungo sa ${goalText}. Dahil ikaw ay ${activityText}, iaangkop ng ${appLabel} ang iyong mga target upang tumugma sa iyong pamumuhay.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personalised na calorie targets',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-powered na pagtukoy ng pagkain',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detalyadong paghahati ng macro-nutrients',
			'onboarding.reinforcement.goalLifestyle.button' => 'Tara, Simulan',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'iyong mga layunin',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktibo',
			'tabs.dashboard' => 'Dashboard',
			'tabs.history' => 'Kasaysayan',
			'home.aiSummary.title' => 'Iyong AI Summary',
			'home.aiSummary.logMore' => 'Mag-log pa ng mga pagkain sa mga susunod na araw para makuha ang iyong personalisadong AI insights.',
			'home.aiSummary.loading' => 'Lina-load ang iyong buod...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} meal(s) na na-log',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balance score ${score}',
			'home.aiSummary.topFoods' => 'Nangungunang pagkain',
			'home.aiSummary.trendUp' => 'Tumaas ang trend ng calories',
			'home.aiSummary.trendDown' => 'Bumababa ang trend ng calories',
			'home.aiSummary.trendSteady' => 'Steady ang calories',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Na-update ${time}',
			'home.dailyGoal.title' => 'Itakda ang Iyong Pang-araw-araw na Layunin',
			'home.dailyGoal.titleSet' => 'Iyong Pang-araw-araw na Layunin',
			'home.dailyGoal.description' => 'Handa ka na bang simulan ang iyong wellness journey? Itakda ang iyong pang-araw-araw na target ng calorie sa ibaba para simulan ang progreso.',
			'home.dailyGoal.descriptionSet' => 'Nakatakda na ang iyong kompas! Ito ang pang-araw-araw mong target ng calorie na gagabay sa iyo.',
			'home.dailyGoal.yourGoal' => 'Iyong Layunin',
			'home.dailyGoal.goal' => 'Layunin',
			'home.dailyGoal.dailyCalories' => 'Pang-araw-araw na calories (kcal)',
			'home.dailyGoal.setGoal' => 'Itakda ang Layunin',
			'home.dailyGoal.intake' => 'Intake',
			'home.dailyGoal.burned' => 'Nasunog',
			'home.dailyGoal.weightImpact' => 'Epekto sa Timbang',
			'home.dailyGoal.estLoss' => 'Tinatayang bawas na',
			'home.dailyGoal.estGain' => 'Tinatayang dagdag na',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Pang-araw-araw na Buod',
			'home.dailySummary.calories' => 'Calories',
			'home.dailySummary.carbs' => 'Carbs',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Fat',
			'home.dailySummary.fiber' => 'Fiber',
			'home.dailySummary.grams' => 'gramo',
			'home.dailySummary.chartAccessibilityLabel' => 'Macros chart',
			'home.intakeProgress.title' => 'Hati ng Macro Ngayon',
			'home.intakeProgress.target' => 'Target',
			'home.intakeProgress.current' => 'Kasalukuyan',
			'home.intakeHistory.title' => '7-Araw na Macro History',
			'home.intakeHistory.trendTitle' => 'Trend Ngayon',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Pinakamataas: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Wala pang kasaysayan',
			'home.intakeHistory.startLogging' => 'Magsimulang mag-log ng pagkain upang makita ang iyong\n7-araw na macro trends dito',
			'home.mealLog.title' => 'Mga Na-log na Pagkain',
			'home.mealLog.emptyMessage' => 'Kuhanin ng larawan ang huli mong kinain para ma-log dito.',
			'home.mealLog.noMealsToday' => 'Walang naitalang pagkain ngayong araw',
			'home.mealLog.seeAllMeals' => 'Tingnan lahat ng pagkain',
			'home.mealDescription.title' => 'Mabilis na Add gamit ang AI',
			'home.mealDescription.description' => 'Ilarawan ang iyong pagkain, at hayaan ang AI ang bahala sa detalye.',
			'home.mealDescription.hint' => 'hal. Sa almusal, kumain ako ng malaking mangkok ng oatmeal na may hiniwang saging at isang scoop ng whey ...',
			'home.mealDescription.analyzeMeal' => 'Suriin ang pagkain',
			'home.favoriteMeals.title' => 'Paboritong Pagkain',
			'home.favoriteMeals.description' => 'Mabilis na idagdag ang isa sa iyong mga paboritong pagkain.',
			'home.favoriteMeals.noFavorites' => 'Wala pang paboritong pagkain.',
			'home.favoriteMeals.addFavoriteHint' => 'I-click ang bituin sa isang pagkain para markahan bilang paborito.',
			'home.favoriteMeals.seeAll' => 'Tingnan lahat',
			'home.favoriteMeals.add' => 'Idagdag',
			'home.mealSnap.title' => 'Kuhanan at I-track ang Iyong Pagkain',
			'home.mealSnap.description' => 'Gamitin ang iyong camera para kunan ng larawan ang iyong pagkain para sa AI analysis.',
			'home.mealSnap.openCamera' => 'Buksan ang Camera',
			'home.mealSnap.gallery' => 'Gallery',
			'home.mealSnap.compressingPhoto' => 'Ina-optimize ang larawan…',
			'home.mealSnap.uploadingPhoto' => 'Ina-upload ang larawan…',
			'home.connectHealth.title' => 'I-sync sa Health Connect',
			'home.connectHealth.description' => 'I-sync ang iyong nutrition data sa Health Connect',
			'home.connectHealth.install' => 'I-install',
			'home.connectHealth.connect' => 'Ikonekta',
			'history.noMeals' => 'Walang naitalang pagkain',
			'history.emptyMessage' => 'Kuhanin ng larawan ang huli mong kinain para ma-log dito.',
			'history.today' => 'Ngayon',
			'history.yesterday' => 'Kahapon',
			'meal.ohNo' => 'Naku!',
			'meal.delete' => 'Burahin',
			'meal.editMeal' => 'I-edit ang Pagkain',
			'meal.addMeal' => 'Magdagdag ng Pagkain',
			'meal.saveMeal' => 'I-save ang Pagkain',
			'meal.save' => 'I-save',
			'meal.mealName' => 'Pangalan ng Pagkain',
			'meal.mealNameHint' => 'hal., Scrambled Eggs na may tostang tinapay',
			'meal.mealQuantity' => 'Dami ng Pagkain',
			'meal.mealQuantityHint' => 'hal., 1 mangkok, 2 hiwa',
			'meal.timeOfMeal' => 'Oras ng Pagkain',
			'meal.timeOfMealHint' => 'Piliin ang oras na kinain mo ang iyong pagkain',
			'meal.mealType' => 'Uri ng Pagkain',
			'meal.nutrition.calories' => 'Calories',
			'meal.nutrition.carbs' => 'Carbs (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Fat (g)',
			'meal.nutrition.fiber' => 'Fiber (g)',
			'meal.deleteConfirmation.title' => 'Burahin ang Pagkain',
			'meal.deleteConfirmation.message' => 'Sigurado ka bang gusto mong burahin ang entry ng pagkain na ito?',
			'meal.deleteConfirmation.cancel' => 'Kanselahin',
			'meal.deleteConfirmation.delete' => 'Burahin',
			'meal.addedToLog' => 'Naidagdag ang pagkain sa iyong log!',
			'meal.couldNotAdd' => ({required Object error}) => 'Hindi maidagdag ang pagkain: ${error}',
			'meal.savedSuccessfully' => 'Matagumpay na nadagdag ang pagkain!',
			'meal.updatedSuccessfully' => 'Matagumpay na na-update ang pagkain!',
			'meal.errorSaving' => ({required Object error}) => 'Error sa pag-save ng pagkain: ${error}',
			'meal.removedFromFavorites' => 'Inalis sa paborito!',
			'meal.savedAsFavorite' => 'Na-save ang pagkain bilang paborito!',
			'meal.unfavorite' => 'Alisin sa paborito',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Hindi ma-update ang paborito: ${error}',
			'meal.feedbackThanks' => 'Salamat sa feedback!',
			'meal.reanalysisUpdated' => 'Na-update ang pagsusuri ng pagkain batay sa iyong feedback.',
			'meal.failedToProcess' => ({required Object error}) => 'Hindi naproseso: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Hindi naproseso ang larawan: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Error sa pag-compress ng larawan: ${error}',
			'meal.failedToSave' => 'Hindi na-save ang data. Pakisubukang muli.',
			'meal.skip' => 'Laktawan',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Tanong ${current} ng ${total}',
			'meal.variation.noVariationsAvailable' => 'Walang available na mga variation',
			'meal.analysis.title' => 'AI na pagsusuri ng pagkain',
			'meal.analysis.reassurance' => 'Karaniwan ay ilang segundo lang ito.',
			'meal.analysis.stepStarted' => 'Nagsisimula…',
			'meal.analysis.stepDecomposition' => 'Inuunawa ang iyong pagkain…',
			'meal.analysis.stepIngredients' => 'Ibinabagay ang mga sangkap sa datos ng nutrisyon…',
			'meal.analysis.stepUncertainty' => 'Sinusuri ang kumpiyansa…',
			'meal.analysis.stepMealTypeQuestion' => 'Malapit na…',
			'meal.analysis.stepResult' => 'Tinatapos ang resulta…',
			'meal.analysis.stepError' => 'May nagkaproblema',
			'meal.analysis.stepDefault' => 'Sinusuri ang iyong pagkain…',
			'meal.analysis.progressUnderstand' => 'Unawain',
			'meal.analysis.progressMatch' => 'Itugma',
			'meal.analysis.progressCheck' => 'Suriin',
			'meal.analysis.progressFinish' => 'Tapos',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} sangkap na natukoy',
			'meal.analysis.ingredientsPending' => 'Sinusuri ang mga sangkap…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'Ano ang mukhang mali?',
			'meal.feedback.subtitle' => 'Tulungan kaming pagbutihin ang pagsusuri sa pamamagitan ng pagpili ng isa o higit pang isyu.',
			'meal.feedback.tellUsMore' => 'Magkuwento pa',
			'meal.feedback.describeIncorrect' => 'Ilarawan kung ano ang mali',
			'meal.feedback.submit' => 'Isumite',
			'meal.feedback.issueFoodIdentification' => 'Pagkilala sa pagkain',
			'meal.feedback.issuePortionSize' => 'Laki ng bahagi',
			'meal.feedback.issueCalorieDistribution' => 'Pamamahagi ng kaloriya',
			'meal.feedback.issueMacrosWrong' => 'Mali ang macros',
			'meal.feedback.issueMissingItems' => 'Nawawalang mga item',
			'meal.feedback.issueExtraItems' => 'Sobrang mga item',
			'meal.feedback.issueOther' => 'Iba pa',
			'favorites.title' => 'Paborito',
			'favorites.empty' => 'Wala pang paboritong pagkain.',
			'favorites.searchPlaceholder' => 'Maghanap ng paboritong pagkain',
			'favorites.searchEmptyTitle' => 'Walang paborito na tumutugma sa iyong paghahanap',
			'favorites.searchEmptySubtitle' => 'Subukan ang ibang pangalan ng pagkain, dami, o uri ng pagkain.',
			'favorites.sortLabel' => 'Ayusin ang paborito',
			'favorites.undo' => 'I-undo',
			'favorites.removed' => ({required Object name}) => 'Inalis ang ${name} mula sa paborito',
			'favorites.sortOptions.recent' => 'Pinakabago',
			'favorites.sortOptions.calories' => 'Calories',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profile',
			'profile.noProfileData' => 'Walang nakita na data ng profile',
			'profile.yourProfile' => 'Iyong Profile',
			'profile.viewAndManage' => 'Tingnan at pamahalaan ang iyong impormasyong pangkalusugan',
			'profile.sections.profile' => 'PROFILE',
			'profile.sections.basicInformation' => 'PANGUNAHING IMPORMASYON',
			'profile.sections.goalsAndActivity' => 'MGA LAYUNIN AT AKTIBIDAD',
			'profile.sections.calculatedValues' => 'MGA KINALKULANG HALAGA',
			'profile.gender' => 'Kasarian',
			'profile.height' => 'Taas',
			'profile.weight' => 'Timbang',
			'profile.age' => 'Edad',
			'profile.weightGoal' => 'Layunin sa Timbang',
			'profile.targetWeight' => 'Target na Timbang',
			'profile.activityLevel' => 'Antas ng Aktibidad',
			'profile.healthMetrics' => 'Mga Sukatang Pangkalusugan',
			'profile.notSet' => 'Hindi nakatakda',
			'profile.years' => 'taon',
			'profile.updatedSuccessfully' => 'Matagumpay na na-update ang profile!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Pang-araw-araw na Layunin',
			'profile.calculatedValues.calPerDay' => 'cal/araw',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Health Score',
			'healthScore.whyThisScore' => 'Bakit ganito ang iskor?',
			'healthScore.note' => 'Ang iskor na ito ay pagtatantya ng AI batay sa mga natukoy na sangkap at densidad ng nutrisyon. Laging kumunsulta sa propesyonal para sa payong pandiyeta.',
			'healthScore.unhealthy' => 'Hindi Malusog',
			'healthScore.healthy' => 'Malusog',
			'healthScore.neutral' => 'Neyutral',
			'editProfile.title' => 'I-edit ang Profile',
			'editProfile.sections.personalInformation' => 'PERSONAL NA IMPORMASYON',
			'editProfile.sections.physicalMeasurements' => 'PISIKAL NA SUKAT',
			'editProfile.sections.goalsAndActivity' => 'MGA LAYUNIN AT AKTIBIDAD',
			'editProfile.gender' => 'Kasarian',
			'editProfile.dateOfBirth' => 'Petsa ng Kapanganakan',
			'editProfile.height' => 'Taas',
			'editProfile.weight' => 'Timbang',
			'editProfile.weightGoal' => 'Layunin sa Timbang',
			'editProfile.activityLevel' => 'Antas ng Aktibidad',
			'editProfile.metric' => 'Metriko',
			'editProfile.imperial' => 'Imperyal',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metriko (cm)',
			'editProfile.imperialFtIn' => 'Imperyal (ft/in)',
			'editProfile.metricKg' => 'Metriko (kg)',
			'editProfile.imperialLbs' => 'Imperyal (lbs)',
			'editProfile.genders.male' => 'Lalaki',
			'editProfile.genders.female' => 'Babae',
			'editProfile.genders.other' => 'Iba pa',
			'editProfile.weightGoals.loseWeight.name' => 'Magbawas ng Timbang',
			'editProfile.weightGoals.loseWeight.description' => 'Lumikha ng calorie deficit para magbawas ng timbang',
			'editProfile.weightGoals.maintainWeight.name' => 'Panatilihin ang Timbang',
			'editProfile.weightGoals.maintainWeight.description' => 'Panatilihin ang kasalukuyang timbang',
			'editProfile.weightGoals.gainWeight.name' => 'Magdagdag ng Timbang',
			'editProfile.weightGoals.gainWeight.description' => 'Lumikha ng calorie surplus para magdagdag ng timbang',
			'editProfile.activityLevels.sedentary.name' => 'Sedentary',
			'editProfile.activityLevels.sedentary.description' => 'Maliit o walang ehersisyo',
			'editProfile.activityLevels.lightlyActive.name' => 'Lightly Active',
			'editProfile.activityLevels.lightlyActive.description' => 'Magaan na ehersisyo 1-3 araw/buwan',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderately Active',
			'editProfile.activityLevels.moderatelyActive.description' => 'Katamtamang ehersisyo 3-5 araw/buwan',
			'editProfile.activityLevels.veryActive.name' => 'Very Active',
			'editProfile.activityLevels.veryActive.description' => 'Mabigat na ehersisyo 6-7 araw/buwan',
			'editProfile.activityLevels.extremelyActive.name' => 'Extremely Active',
			'editProfile.activityLevels.extremelyActive.description' => 'Napakabigat na ehersisyo, pisikal na trabaho',
			'settings.title' => 'Mga Setting',
			'settings.sections.profile' => 'PROFILE',
			'settings.sections.localization' => 'LOKALISASYON',
			'settings.sections.notifications' => 'NOTIPIKASYON',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SUPORTA AT LEGAL',
			'settings.sections.about' => 'TUNGKOL',
			'settings.sections.dangerZone' => 'DELIKADONG BAHAGI',
			'settings.sections.developer' => 'DEVELOPER',
			'settings.editProfile.title' => 'I-edit ang Profile',
			'settings.editProfile.subtitle' => 'I-update ang iyong personal na impormasyon',
			'settings.language.title' => 'Wika',
			'settings.language.subtitle' => 'Piliin ang iyong gustong wika',
			'settings.language.searchHint' => 'Maghanap ng mga wika...',
			'settings.language.noResults' => 'Walang nahanap na resulta',
			'settings.heightUnit.title' => 'Yunit ng Taas',
			'settings.weightUnit.title' => 'Yunit ng Timbang',
			'settings.mealReminders.title' => 'Mga Paalala sa Pagkain',
			'settings.mealReminders.subtitle' => 'Manatiling nasa tamang landas gamit ang napapanahong alerto',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Liwanag',
			'settings.theme.dark' => 'Madilim',
			'settings.theme.system' => 'Sistema',
			'settings.sendFeedback.title' => 'Magpadala ng Feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Tulungan kaming pagandahin ang ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback para sa ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Pakibigay ang iyong feedback sa ibaba:',
			'settings.sendFeedback.appVersion' => 'Bersyon ng App',
			'settings.sendFeedback.device' => 'Device',
			'settings.sendFeedback.osVersion' => 'Bersyon ng OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'I-export ang Kasaysayan ng Pagkain',
			'settings.exportMealHistory.subtitle' => 'Ibahagi ang CSV ng iyong mga na-log na pagkain',
			'settings.exportMealHistory.shareText' => 'Iyong eksport ng kasaysayan ng pagkain sa Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Hindi ma-export ang kasaysayan ng pagkain: ${error}',
			'settings.clearAllData.title' => 'Burahin Lahat ng Data',
			'settings.clearAllData.subtitle' => 'Hindi na mababawi ang pagbura ng lahat ng iyong impormasyon',
			'settings.clearAllData.confirmationTitle' => 'Burahin Lahat ng Data?',
			'settings.clearAllData.confirmationMessage' => 'Hindi na ito mababawi. Lahat ng iyong na-log na pagkain, paborito, at mga setting ng profile ay permanenteng mabubura.',
			'settings.clearAllData.cancel' => 'Kanselahin',
			'settings.clearAllData.clearEverything' => 'Burahin Lahat',
			'settings.debugOptions.title' => 'Mga Opsyon sa Debug',
			'settings.developerModeEnabled' => 'Na-enable ang developer mode!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Tingnan at pamahalaan ang mga pahintulot',
			'settings.healthConnect.unavailable.title' => 'Hindi Available ang Health Connect',
			'settings.healthConnect.unavailable.description' => 'Hindi available ang Health Connect sa device na ito. Mangyaring i-install ang Health Connect mula sa Play Store (Android 9+) o mag-update sa Android 14+.',
			'settings.healthConnect.permissions.title' => 'Mga Pahintulot',
			'settings.healthConnect.permissions.description' => 'Ang mga sumusunod na pahintulot ay hinihiling upang maibigay ang integrasyon ng Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Nabigyan',
			'settings.healthConnect.permissions.notGranted' => 'Hindi Nabigyan',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Basahin ang Kabuuang Calories na Nasunog',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Pinapayagan ang app na basahin ang kabuuang calories na nasunog mula sa Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Ginagamit ang pahintulot na ito upang ipakita ang iyong pang-araw-araw na calorie burn sa app, na tumutulong maunawaan ang iyong kabuuang enerhiyang nagugugol sa maghapon.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Basahin ang Data ng Nutrisyon',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Pinapayagan ang app na basahin ang data ng nutrisyon mula sa Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Pinapahintulutan ng pahintulot na ito ang app na basahin ang impormasyong pangnutrisyon na maaaring nai-log ng iba pang app na nakakabit sa Health Connect, para sa mas kumpletong pananaw sa iyong nutrisyon.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Isulat ang Data ng Nutrisyon',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Pinapayagan ang app na magsulat ng data ng nutrisyon sa Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Ginagamit ang pahintulot na ito upang i-sync ang iyong mga na-log na pagkain sa Health Connect, para maging available ang iyong datos sa nutrisyon sa iba mo pang health at fitness app.',
			'settings.healthConnect.managePermissions' => 'Pamahalaan ang mga Pahintulot',
			'settings.healthConnect.openSettings' => 'Buksan ang Mga Setting ng Health Connect',
			'settings.healthConnect.requestPermissions' => 'Humiling ng mga Pahintulot',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Kinansela o nabigo ang kahilingan ng pahintulot. Pakisubukang muli o magbigay ng pahintulot nang mano-mano sa mga setting ng Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Hindi makahiling ng mga pahintulot. Pakisubukang muli o magbigay ng pahintulot nang mano-mano sa mga setting ng Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Humihiling...',
			'settings.about.title' => 'Tungkol',
			'settings.about.tagline' => 'Mabilis, libre, at inuuna ang privacy para sa kamalayang kaloriya',
			'settings.about.ourStory.title' => 'Ang Aming Kuwento',
			'settings.about.ourStory.content' => ({required Object appLabel}) => 'Ang ${appLabel} ay isinilang mula sa simpleng pagkadismaya: karamihan sa calorie tracking apps ay sobrang komplikado, nangangailangan ng paulit-ulit na mano-manong pag-input, may mahal na subscription, o isinusuko ang privacy.\n\nBilang isang solo developer, gusto kong gumawa ng mas simple at mas patas — isang app na gumagamit ng AI para bawasan ang abala, nananatiling mabilis at libre, at nirerespeto ang iyong health data.\n\nAng ${appLabel} ang app na sana\'y umiiral na: walang account, walang tracking, walang ads — malinaw, praktikal na insight at nakatuon sa iyong layuning pangkalusugan.',
			'settings.about.privacy.title' => 'Mahalaga ang Iyong Privacy',
			'settings.about.privacy.description' => 'Hindi afterthought ang privacy — isa itong prinsipyo sa disenyo. Ganito ang ibig sabihin nito sa praktika:',
			'settings.about.privacy.noAccounts' => 'Walang kailangang account\nGamitin ang app kaagad. Walang sign-up, walang pagkakakilanlan.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Walang behavioral tracking\nHindi mino-monitor ng ${appLabel} ang iyong aktibidad, gumagawa ng usage profile, o sinusundan ka sa iba pang app o website.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Walang ads sa disenyo\nGawa ang ${appLabel} para gumana nang walang ads o monetization na nakabatay sa data.',
			'settings.about.privacy.noDataSelling' => 'Walang pagbebenta ng data\nHindi kailanman ibinebenta o ibinabahagi sa mga third party ang iyong health data.',
			'settings.about.privacy.localStorage' => 'Local-first na storage\nNananatili sa iyong device ang iyong data.',
			'settings.about.privacy.privacyPolicy' => 'Patakaran sa Privacy',
			'settings.about.developer.title' => 'Gawa ng Isang Solo Developer',
			'settings.about.developer.description' => ({required Object appLabel}) => 'Ang ${appLabel} ay binuo at pinananatili ng isang solo developer na nakatuon sa paglikha ng payapa at nirerespeto ang privacy na health software.\n\nPersonal na binabasa ang feedback at nakakatulong ito sa direksiyon ng app.',
			'settings.about.developer.website' => 'Website',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Nae-enjoy mo ba ang ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Tinutulungan ng iyong feedback na pagandahin ang ${appLabel} para sa lahat.',
			'settings.about.feedback.rateApp' => 'I-rate sa Play Store',
			'settings.about.feedback.sendFeedback' => 'Magpadala ng Feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Manatiling nasa tamang landas gamit ang mga paalala',
			'reminders.description' => 'Kumuha ng banayad na paalala para mag-log ng iyong mga pagkain at manatiling tuloy-tuloy sa iyong mga layunin sa nutrisyon',
			'reminders.notificationsEnabled' => 'Na-enable ang mga Notipikasyon',
			'reminders.notificationsDisabled' => 'Na-disable ang mga Notipikasyon',
			'reminders.enabledSubtitle' => 'Makakatanggap ka ng mga paalala sa pagkain',
			'reminders.disabledSubtitle' => 'I-enable ang notipikasyon upang makatanggap ng mga paalala sa pagkain',
			'reminders.mealReminders' => 'Mga Paalala sa Pagkain',
			'reminders.breakfast' => 'Almusal',
			'reminders.lunch' => 'Tanghalian',
			'reminders.dinner' => 'Hapunan',
			'reminders.snack' => 'Meryenda',
			'reminders.unknown' => 'Hindi alam',
			'reminders.change' => 'Baguhin',
			'reminders.enableNotifications' => 'I-enable ang Notipikasyon',
			'reminders.skipForNow' => 'Laktawan muna',
			'reminders.saveChanges' => 'I-save ang mga Pagbabago',
			'reminders.enabledSuccessfully' => 'Matagumpay na na-enable ang mga notipikasyon!',
			'reminders.permissionDenied' => 'Tinanggihan ang pahintulot sa notipikasyon',
			'reminders.errorEnabling' => ({required Object error}) => 'Error sa pag-enable ng notipikasyon: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Error sa pagsasagawa ng setup: ${error}',
			'notifications.breakfast.title' => 'Oras ng Almusal! 🍳',
			'notifications.breakfast.body' => 'Huwag kalimutang i-log ang iyong almusal',
			'notifications.lunch.title' => 'Oras ng Tanghalian! 🥗',
			'notifications.lunch.body' => 'Panahon nang i-log ang iyong tanghalian',
			'notifications.dinner.title' => 'Oras ng Hapunan! 🍽️',
			'notifications.dinner.body' => 'Huwag kalimutang i-log ang iyong hapunan',
			'notifications.snack.title' => 'Oras ng Meryenda! 🍎',
			'notifications.snack.body' => 'Panahon para sa masustansyang meryenda',
			'notifications.test.title' => 'Pagsubok na Notipikasyon',
			'login.title' => 'Mag-login',
			'login.signInWithGoogle' => 'Mag-sign in gamit ang Google',
			'login.signInFailed' => 'Nabigo o nakansela ang Google Sign-In.',
			'disclaimer.pleaseNote' => 'Paalala',
			'disclaimer.snap.description' => ({required Object appLabel}) => 'Nagbibigay ang ${appLabel} ng tinatayang impormasyong pangnutrisyon. Nakasalalay ang accuracy sa iyong input at sa pagkakaiba-iba ng pagkain. Gamitin bilang gabay, hindi bilang tiyak na sanggunian. Kumunsulta sa propesyonal para sa personalisadong payong pandiyeta.',
			'disclaimer.snap.portionSize.title' => 'Laki ng Porsyon',
			'disclaimer.snap.portionSize.description' => 'Malaki ang nakaasa ang katumpakan ng mga pagtatantya sa tama mong pagtataya ng laki ng porsyon.',
			'disclaimer.snap.preparationMethods.title' => 'Paraan ng Pagluluto',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Malaki ang nagbabago sa nilalamang nutrisyon ang paraan ng pagluluto. Maaaring hindi laging maisaalang-alang ng ${appLabel} ang mga pagkakaibang ito.',
			'disclaimer.snap.ingredients.title' => 'Mga Sangkap',
			'disclaimer.snap.ingredients.description' => 'Ang maseselang putahe na may maraming nakatagong sangkap ay maaaring magresulta sa hindi gaanong eksaktong pagtatantya.',
			'disclaimer.snap.databaseLimitations.title' => 'Mga Limitasyon ng Database',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Malawak ang food database ng ${appLabel} ngunit maaaring hindi nito masaklaw ang lahat ng pagkain o bawat baryasyon.',
			'disclaimer.weightEstimate.title' => 'Tungkol sa Pagtatantya ng Timbang',
			'disclaimer.weightEstimate.description' => 'Ang inaasahang pagbabago ng timbang ay teoretikal na pagtatantya batay sa simpleng modelo ng calorie-in vs. calorie-out. Ito ay para sa motibasyong gabay lamang, hindi bilang hula ng aktuwal mong timbang.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Katumpakan ng Calories',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Kasing-tumpak lamang ng iyong na-track na calorie intake at expenditure ang pagtatantyang ito. Ang hindi eksaktong pag-log ay magreresulta sa hindi eksaktong projection.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Mga Salik na Pisiyolohikal',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Ang aktuwal na pagbabawas/pagdami ng timbang ay naiimpluwensyahan ng metabolismo, hormones, tulog, stress, hydration, at iba pang indibidwal na salik na hindi masukat ng ${appLabel}.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Timbang ng Tubig at Pagbabago-bago',
			'disclaimer.weightEstimate.waterWeight.description' => 'Karaniwan ang araw-araw na pagbabago ng timbang dahil sa water retention, pagda-digest, at timing. Hindi isinasaalang-alang ng pagtatantya ang mga pagbabagong ito.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Gabay ng Propesyonal',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Huwag gamitin ang pagtatantyang ito para gumawa ng desisyong medikal. Laging kumunsulta sa healthcare professional o rehistradong dietitian para sa personalisadong payo sa pamamahala ng timbang.',
			'disclaimer.healthMetrics.description' => 'Tinutulungan ka ng mga sukatan na ito na maunawaan ang pangangailangan ng iyong katawan sa enerhiya at gagabay sa iyong mga layunin sa nutrisyon.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Ang Basal Metabolic Rate (BMR) ay ang bilang ng calories na sinusunog ng iyong katawan sa pamamahinga upang mapanatili ang pangunahing mga tungkulin tulad ng paghinga at sirkulasyon. Nakasalalay ang BMR sa iyong edad, kasarian, taas, at timbang. Mas mataas na BMR ay nangangahulugang mas natural na nagsusunog ng calories ang katawan sa pamamahinga, kadalasang dahil sa mas maraming muscle mass, mas batang edad, o pagiging lalaki. Mas mababang BMR ay karaniwang nagpapahiwatig ng mas kaunting muscle mass, mas matandang edad, o pagiging babae.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Ang Total Daily Energy Expenditure (TDEE) ay ang kabuuang calories na sinusunog mo bawat araw, kabilang ang iyong BMR kasama ang calories mula sa pisikal na aktibidad at araw-araw na paggalaw. Nakasalalay ang TDEE sa iyong BMR at antas ng aktibidad. Mas mataas na TDEE ay nangangahulugang mas maraming calories ang nasusunog nang kabuuan, karaniwang dahil sa pagiging mas aktibo o pagkakaroon ng mas mataas na BMR. Mas mababang TDEE ay nagpapahiwatig ng mas kaunting araw-araw na aktibidad o mas mababang BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Pang-araw-araw na Layunin',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Ang Pang-araw-araw na Layunin ay ang inirerekomendang pang-araw-araw na calorie intake batay sa iyong TDEE at layunin sa timbang. Para sa pagbawas ng timbang, mas kaunting calories kaysa sa iyong TDEE ang kinokonsumo. Para sa pagpapanatili, itinatapat mo ang iyong TDEE. Para sa pagdagdag ng timbang, mas maraming calories ang kinokonsumo kaysa sa iyong TDEE. Nakakatulong itong maabot ang ninanais mong pagbabago sa timbang sa malusog na bilis.',
			'disclaimer.calorieExpenditure.title' => 'Pagtatantya ng Calorie Expenditure',
			'disclaimer.calorieExpenditure.description' => 'Kapag walang available na data mula sa Health Connect, tinatantya namin ang calories na nasunog ngayong araw gamit ang iyong Basal Metabolic Rate (BMR) at antas ng aktibidad (TDEE), na sinasabay sa bahaging lumipas ng araw.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Paano Kinakalkula ang Tantiya',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Kinukuwenta namin ang iyong TDEE (batay sa iyong profile) at minumultiply ito sa fraction ng lumipas na bahagi ng araw (oras + minuto) / 24 para tantyahin ang calories na nasunog sa ngayon.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Gabay ng Propesyonal',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Huwag gamitin ang tantiya na ito para gumawa ng desisyong medikal. Laging kumunsulta sa healthcare professional o rehistradong dietitian para sa personalisadong payo.',
			'common.close' => 'Isara',
			'common.kContinue' => 'Magpatuloy',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Nae-enjoy mo ba ang ${appLabel}?',
			'feedbackRating.yes' => 'Oo, nae-enjoy ko',
			'feedbackRating.no' => 'Hindi masyado',
			'feedbackRating.rateStepHeading' => 'I-rate sa Play Store',
			'feedbackRating.emailStepHeading' => 'Magpadala ng feedback sa email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Ang mabilis na rating ay nakakatulong sa iba na mahanap ang ${appLabel} at nagpapatuloy ng development. Maaari ka bang mag-iwan ng rating?',
			'feedbackRating.shareFeedbackViaEmail' => 'Hinuhubog ng iyong feedback ang susunod — binabasa namin ang bawat mensahe. Gusto mo bang ibahagi ang iyong saloobin sa email?',
			'feedbackRating.rateCta' => 'I-rate sa Play Store',
			'feedbackRating.maybeLater' => 'Siguro sa susunod',
			'feedbackRating.sendFeedback' => 'Magpadala ng feedback',
			'feedbackRating.noThanks' => 'Huwag na, salamat',
			'feedbackRating.aboutUsDescription' => 'Ginawa nang may malasakit ng isang maliit na team. Nakatuon kami sa privacy, simple, at pagtulong na mabuo ang mas mabuting gawi sa pagkain.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Interesado kung sino ang nasa likod ng ${appLabel}? Tingnan ang ',
			'feedbackRating.aboutUsLinkLabel' => 'Tungkol sa amin',
			'feedbackRating.thankYouMessage' => 'Salamat! Tatanungin ka ulit sa ibang pagkakataon.',
			'health.syncFailed' => 'Hindi maisi-sync sa Health Connect',
			'health.mealSynced' => 'Na-sync ang pagkain sa Health Connect',
			_ => null,
		};
	}
}
