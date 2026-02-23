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
	@override String get loadingProfileData => 'Error sa pag-load ng datos ng profile';
	@override String get somethingWentWrong => 'May nangyaring mali.';
}

// Path: onboarding
class _TranslationsOnboardingTl implements TranslationsOnboardingEn {
	_TranslationsOnboardingTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Maligayang pagdating sa ${appLabel}';
	@override String get subtitle => 'Ang iyong personal na kasamahan sa nutrisyon na pinapagana ng AI';
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
	@override String get noMeals => 'Walang nakahiwalay na pagkain';
	@override String get emptyMessage => 'Kumuha ng litrato ng iyong huling pagkain upang i-log dito.';
	@override String get today => 'Ngayon';
	@override String get yesterday => 'Kahapon';
}

// Path: meal
class _TranslationsMealTl implements TranslationsMealEn {
	_TranslationsMealTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Oh hindi!';
	@override String get delete => 'Tanggalin';
	@override String get editMeal => 'I-edit ang Pagkain';
	@override String get addMeal => 'Magdagdag ng Pagkain';
	@override String get saveMeal => 'I-save ang Pagkain';
	@override String get save => 'I-save';
	@override String get mealName => 'Pangalan ng Pagkain';
	@override String get mealNameHint => 'Hal., Hinalong itlog na may tinapay';
	@override String get mealQuantity => 'Dami ng Pagkain';
	@override String get mealQuantityHint => 'hal., 1 mangkok, 2 hiwa';
	@override String get timeOfMeal => 'Oras ng Pagkain';
	@override String get timeOfMealHint => 'Pumili ng oras kung kailan mo kinain ang iyong pagkain';
	@override String get mealType => 'Uri ng Pagkain';
	@override late final _TranslationsMealNutritionTl nutrition = _TranslationsMealNutritionTl._(_root);
	@override late final _TranslationsMealDeleteConfirmationTl deleteConfirmation = _TranslationsMealDeleteConfirmationTl._(_root);
	@override String get addedToLog => 'Idinagdag ang pagkain sa iyong log!';
	@override String couldNotAdd({required Object error}) => 'Hindi maidaragdag ang pagkain: ${error}';
	@override String get savedSuccessfully => 'Matagumpay na naidagdag ang pagkain!';
	@override String get updatedSuccessfully => 'Matagumpay na na-update ang pagkain!';
	@override String errorSaving({required Object error}) => 'Nabigong i-save ang pagkain: ${error}';
	@override String get removedFromFavorites => 'Tinanggal mula sa mga paborito!';
	@override String get savedAsFavorite => 'Naitabi ang pagkain bilang paborito!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Hindi ma-update ang paborito: ${error}';
	@override String failedToProcess({required Object error}) => 'Nabigo sa pagproseso: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Nabigo sa pagproseso ng larawan: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Error sa pag-compress ng larawan: ${error}';
	@override String get failedToSave => 'Nabigo sa pag-save ng datos. Pakisubok muli.';
	@override String get skip => 'Laktawan';
	@override late final _TranslationsMealVariationTl variation = _TranslationsMealVariationTl._(_root);
}

// Path: favorites
class _TranslationsFavoritesTl implements TranslationsFavoritesEn {
	_TranslationsFavoritesTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Paborito';
	@override String get empty => 'Walang paboritong pagkain sa ngayon.';
}

// Path: profile
class _TranslationsProfileTl implements TranslationsProfileEn {
	_TranslationsProfileTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profile';
	@override String get noProfileData => 'Walang natagpuang datos ng profile';
	@override String get yourProfile => 'Ang Iyong Profile';
	@override String get viewAndManage => 'Tingnan at pamahalaan ang iyong impormasyon sa kalusugan';
	@override late final _TranslationsProfileSectionsTl sections = _TranslationsProfileSectionsTl._(_root);
	@override String get gender => 'Kasarian';
	@override String get height => 'Taas';
	@override String get weight => 'Timbang';
	@override String get age => 'Edad';
	@override String get weightGoal => 'Layunin sa Timbang';
	@override String get targetWeight => 'Target na Timbang';
	@override String get activityLevel => 'Antas ng Aktibidad';
	@override String get healthMetrics => 'Metrics ng Kalusugan';
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
	@override String get title => 'Iskor ng Kalusugan';
	@override String get whyThisScore => 'Bakit ang iskor na ito?';
	@override String get note => 'Ang iskor na ito ay isang pagtatantya mula sa AI batay sa nakilalang sangkap at nutritional density. Palaging kumonsulta sa isang propesyonal para sa payo sa pagkain.';
	@override String get unhealthy => 'Hindi Malusog';
	@override String get healthy => 'Malusog';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileTl implements TranslationsEditProfileEn {
	_TranslationsEditProfileTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'I-edit ang Profile';
	@override late final _TranslationsEditProfileSectionsTl sections = _TranslationsEditProfileSectionsTl._(_root);
	@override String get gender => 'Kasarian';
	@override String get dateOfBirth => 'Petsa ng Kaarawan';
	@override String get height => 'Taas';
	@override String get weight => 'Timbang';
	@override String get weightGoal => 'Layunin sa Timbang';
	@override String get activityLevel => 'Antas ng Aktibidad';
	@override String get metric => 'Sistemang metrikal';
	@override String get imperial => 'Imperyal';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Sistemang metrikal (cm)';
	@override String get imperialFtIn => 'Imperyal (ft/in)';
	@override String get metricKg => 'Sistemang metrikal (kg)';
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
	@override late final _TranslationsSettingsClearAllDataTl clearAllData = _TranslationsSettingsClearAllDataTl._(_root);
	@override late final _TranslationsSettingsDebugOptionsTl debugOptions = _TranslationsSettingsDebugOptionsTl._(_root);
	@override String get developerModeEnabled => 'Naka-enable ang developer mode!';
	@override late final _TranslationsSettingsHealthConnectTl healthConnect = _TranslationsSettingsHealthConnectTl._(_root);
	@override late final _TranslationsSettingsAboutTl about = _TranslationsSettingsAboutTl._(_root);
	@override late final _TranslationsSettingsAppInfoTl appInfo = _TranslationsSettingsAppInfoTl._(_root);
}

// Path: reminders
class _TranslationsRemindersTl implements TranslationsRemindersEn {
	_TranslationsRemindersTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Panatilihin ang landas na may mga paalala';
	@override String get description => 'Kumuha ng banayad na mga paalala upang i-log ang iyong mga pagkain at manatiling consistent sa iyong mga layunin sa nutrisyon';
	@override String get notificationsEnabled => 'Naka-enable ang mga Notifikasyon';
	@override String get notificationsDisabled => 'Naka-disable ang mga Notifikasyon';
	@override String get enabledSubtitle => 'Makakatanggap ka ng mga paalala sa pagkain';
	@override String get disabledSubtitle => 'I-enable ang mga notifikasyon upang makakuha ng mga paalala sa pagkain';
	@override String get mealReminders => 'Mga Paalala sa Pagkain';
	@override String get breakfast => 'Almusal';
	@override String get lunch => 'Tanghalian';
	@override String get dinner => 'Hapunan';
	@override String get snack => 'Merienda';
	@override String get unknown => 'Hindi alam';
	@override String get change => 'Palitan';
	@override String get enableNotifications => 'I-enable ang mga Notifikasyon';
	@override String get skipForNow => 'Laktawan ito sa ngayon';
	@override String get saveChanges => 'I-save ang mga Pagbabago';
	@override String get enabledSuccessfully => 'Matagumpay na na-enable ang mga notifikasyon!';
	@override String get permissionDenied => 'Tinanggihan ang pahintulot sa notifikasyon';
	@override String errorEnabling({required Object error}) => 'Error sa pag-enable ng mga notifikasyon: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Error sa pagkumpleto ng setup: ${error}';
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
	@override String get signInFailed => 'Nabigo ang Google Sign-In o nakansela.';
}

// Path: disclaimer
class _TranslationsDisclaimerTl implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Pakitandaan';
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
	@override String enjoyingQuestion({required Object appLabel}) => 'Nasisiyahan ka ba sa ${appLabel}?';
	@override String get yes => 'Oo, nasisiyahan ako';
	@override String get no => 'Hindi talaga';
	@override String get rateStepHeading => 'Magbigay ng rating sa Play Store';
	@override String get emailStepHeading => 'Magpadala ng feedback sa pamamagitan ng email';
	@override String soloDevMessage({required Object appLabel}) => 'Ang isang mabilis na rating ay makakatulong sa iba na mahanap ang ${appLabel} at suportahan ang patuloy na pag-unlad nito. Maaari ka bang maglaan ng sandali upang mag-iwan ng isa?';
	@override String get shareFeedbackViaEmail => 'Hinuhubog ng iyong feedback kung ano ang susunod — binabasa namin ang bawat mensahe. Nais mo bang ibahagi ang iyong mga saloobin sa pamamagitan ng email?';
	@override String get rateCta => 'Mag-rate sa Play Store';
	@override String get maybeLater => 'Mamaya na lang';
	@override String get sendFeedback => 'Magpadala ng puna';
	@override String get noThanks => 'Hindi, salamat';
	@override String get aboutUsDescription => 'Ginawa nang may malasakit ng isang maliit na koponan. Nakatuon kami sa pagkapribado, sa pagiging simple, at sa pagtulong sa iyo na bumuo ng mas malusog na gawi sa pagkain.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Nais mong malaman kung sino ang nasa likod ng ${appLabel}? Tingnan ';
	@override String get aboutUsLinkLabel => 'Tungkol sa amin';
	@override String get thankYouMessage => 'Salamat! Tatanungin ka namin ulit sa susunod.';
}

// Path: health
class _TranslationsHealthTl implements TranslationsHealthEn {
	_TranslationsHealthTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Hindi ma-synchronize sa Health Connect';
	@override String get mealSynced => 'Naka-synchronize ang pagkain sa Health Connect';
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
	@override String get description => 'Ang kasarian ay tumutulong sa atin na tumpak na kalkulahin ang iyong basal metabolic rate (BMR).';
	@override String get next => 'Susunod';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightTl implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gaano kataas ka?';
	@override String get description => 'Ang iyong taas ay tumutulong sa atin na tumpak na kalkulahin ang iyong BMI at pangangailangan sa enerhiya.';
	@override String get metric => 'Sistemang metrikal';
	@override String get imperial => 'Imperyal';
	@override String get next => 'Susunod';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightTl implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Ano ang iyong kasalukuyang timbang?';
	@override String get currentDescription => 'Ang iyong kasalukuyang timbang ay mahalaga para sa pagpapasadya ng iyong mga pang-araw-araw na layunin.';
	@override String get targetTitle => 'Ano ang iyong target na timbang?';
	@override String get targetDescription => 'Ang pagtatakda ng layunin na timbang ay tumutulong sa atin na tukuyin ang iyong pangmatagalang plano.';
	@override String get metric => 'Sistemang metrikal';
	@override String get imperial => 'Imperyal';
	@override String get next => 'Susunod';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeTl implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kailan ang iyong kaarawan?';
	@override String get description => 'Ang iyong edad ay tumutulong upang tumpak na kalkulahin ang iyong pangangailangan sa calorie.';
	@override String get next => 'Susunod';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleTl implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kulang sa timbang';
	@override String get healthy => 'Malusog';
	@override String get overweight => 'Sobra sa timbang';
	@override String get obese => 'Obesity';
	@override late final _TranslationsOnboardingBmiScaleCategoriesTl categories = _TranslationsOnboardingBmiScaleCategoriesTl._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesTl messages = _TranslationsOnboardingBmiScaleMessagesTl._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalTl implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ano ang iyong layunin?';
	@override String get description => 'Pumili ng layunin na pinaka-naglalarawan kung ano ang nais mong makamit';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelTl implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gaano ka kaaktibo?';
	@override String get description => 'Ito ay tumutulong sa atin na tumpak na kalkulahin ang iyong pang-araw-araw na pangangailangan sa calorie';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectTl implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ikonekta sa Health Connect';
	@override String get description => 'I-synchronize ang iyong datos sa kalusugan para sa mas magandang pananaw at awtomatikong pagsubaybay ng calorie';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingTl automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingTl._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsTl progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsTl._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationTl seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationTl._(_root);
	@override String get connected => 'Nakakonekta ang Health Connect';
	@override String get notConnected => 'Hindi nakakonekta ang Health Connect';
	@override String get setup => 'I-set up ang Health Connect';
	@override String get skipForNow => 'Laktawan ito sa ngayon';
	@override String get statusConnected => 'Nakakonekta ang Health Connect.';
	@override String get statusSuccess => 'Matagumpay na nakakonekta ang Health Connect!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Tinanggihan ang pahintulot. Pakisuyong paganahin ang mga pahintulot ng Health Connect mula sa iyong mga setting ng telepono para sa ${appLabel}.';
	@override String statusError({required Object error}) => 'Error sa pag-set up ng Health Connect: ${error}';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalTl implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Itakda ang Iyong Pang-araw-araw na Layunin';
	@override String get titleSet => 'Ang Iyong Pang-araw-araw na Layunin';
	@override String get description => 'Handa ka na bang simulan ang iyong wellness journey? Itakda ang iyong pang-araw-araw na target na calorie sa ibaba upang simulan ang iyong progreso.';
	@override String get descriptionSet => 'Nakaset na ang iyong kompas! Ito ang iyong pang-araw-araw na target na calorie upang gabayan ka.';
	@override String get yourGoal => 'Ang Iyong Layunin';
	@override String get goal => 'Layunin';
	@override String get dailyCalories => 'Pang-araw-araw na calories (kcal)';
	@override String get setGoal => 'Itakda ang Layunin';
	@override String get intake => 'Konsumisyon';
	@override String get burned => 'Nasunog';
	@override String get weightImpact => 'Epekto sa Timbang';
	@override String get estLoss => 'Tinatayang pagkawala ng';
	@override String get estGain => 'Tinatayang pagdagdag ng';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryTl implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pang-araw-araw na Buod';
	@override String get calories => 'Calories';
	@override String get carbs => 'Carbohydrates';
	@override String get protein => 'Protina';
	@override String get fat => 'Taba';
	@override String get fiber => 'Fiber';
	@override String get grams => 'gramo';
	@override String get chartAccessibilityLabel => 'Tsart ng mga makronutriente';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressTl implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paghahati ng Macro Ngayong Araw';
	@override String get target => 'Target';
	@override String get current => 'Kasalukuyan';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryTl implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => '7-Araw na Kasaysayan ng Macro';
	@override String get noHistoryYet => 'Wala pang kasaysayan';
	@override String get startLogging => 'Simulan ang pag-log ng mga pagkain upang makita ang iyong\n7-araw na trend sa macro dito';
}

// Path: home.mealLog
class _TranslationsHomeMealLogTl implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Naka-log na mga Pagkain';
	@override String get emptyMessage => 'Kumuha ng litrato ng iyong huling pagkain upang i-log dito.';
	@override String get noMealsToday => 'Walang nakahiwalay na pagkain para sa araw na ito';
	@override String get seeAllMeals => 'Tingnan ang lahat ng pagkain';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionTl implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mabilis na Idagdag gamit ang AI';
	@override String get description => 'Ilalarawan ang iyong pagkain, at hayaang ayusin ng AI ang mga detalye.';
	@override String get hint => 'hal. Para sa almusal, kumain ako ng malaking mangkok ng oat na may hiwa ng saging at isang scoop ng whey ...';
	@override String get analyzeMeal => 'Suriin ang pagkain';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsTl implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paboritong Pagkain';
	@override String get description => 'Mabilis na idagdag ang isa sa iyong mga paboritong pagkain.';
	@override String get noFavorites => 'Walang paboritong pagkain sa ngayon.';
	@override String get addFavoriteHint => 'I-click ang bituin sa isang pagkain upang markahan ito bilang paborito.';
	@override String get seeAll => 'Tingnan ang lahat';
	@override String get add => 'Idagdag';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapTl implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kumuha ng Litrato at Subaybayan ang Iyong Pagkain';
	@override String get description => 'Gamitin ang iyong kamera upang kumuha ng litrato ng iyong pagkain para sa pagsusuri ng AI.';
	@override String get openCamera => 'Buksan ang Kamera';
	@override String get gallery => 'Galeriya';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthTl implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'I-synchronize sa Health Connect';
	@override String get description => 'I-synchronize ang iyong nutrition data sa Health Connect';
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
	@override String get protein => 'Protina (g)';
	@override String get fat => 'Taba (g)';
	@override String get fiber => 'Fiber (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationTl implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tanggalin ang Pagkain';
	@override String get message => 'Sigurado ka bang nais mong tanggalin ang entry na ito ng pagkain?';
	@override String get cancel => 'Kanselahin';
	@override String get delete => 'Tanggalin';
}

// Path: meal.variation
class _TranslationsMealVariationTl implements TranslationsMealVariationEn {
	_TranslationsMealVariationTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Tanong ${current} sa ${total}';
	@override String get noVariationsAvailable => 'Walang ibang pagpipilian';
}

// Path: profile.sections
class _TranslationsProfileSectionsTl implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFILE';
	@override String get basicInformation => 'BATAYANG IMPORMASYON';
	@override String get goalsAndActivity => 'LAYUNIN AT AKTIBIDAD';
	@override String get calculatedValues => 'NAKALKULANG MGA HALAGA';
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
	@override String get goalsAndActivity => 'LAYUNIN AT AKTIBIDAD';
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
	@override String get notifications => 'NOTIFIKASYON';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'SUPORTA AT LEGAL';
	@override String get about => 'TUNGKOL';
	@override String get dangerZone => 'MAPANGANIB NA ZONA';
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
	@override String get subtitle => 'Pumili ng iyong gustong wika';
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
	@override String get subtitle => 'Panatilihin ang landas na may tamang mga alerto';
}

// Path: settings.theme
class _TranslationsSettingsThemeTl implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Maliwanag';
	@override String get dark => 'Madilim';
	@override String get system => 'Sistema';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackTl implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Magbigay ng Feedback';
	@override String subtitle({required Object appLabel}) => 'Tumulong sa aming pagbutihin ang ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} Feedback ng App';
	@override String get emailBodyPrefix => 'Pakisuyong ibigay ang iyong feedback sa ibaba:';
	@override String get appVersion => 'Bersyon ng App';
	@override String get device => 'Kagamitan';
	@override String get osVersion => 'Bersyon ng OS';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataTl implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'I-clear ang Lahat ng Datos';
	@override String get subtitle => 'Irerepormang tanggalin ang lahat ng iyong impormasyon';
	@override String get confirmationTitle => 'I-clear ang Lahat ng Datos?';
	@override String get confirmationMessage => 'Ang pagkilos na ito ay hindi na maibabalik. Ang lahat ng iyong na-log na pagkain, mga paborito, at mga setting ng profile ay permanenteng matatanggal.';
	@override String get cancel => 'Kanselahin';
	@override String get clearEverything => 'I-clear ang Lahat';
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
	@override String get title => 'Koneksyon sa Kalusugan';
	@override String get subtitle => 'Tingnan at pamahalaan ang mga pahintulot';
	@override late final _TranslationsSettingsHealthConnectUnavailableTl unavailable = _TranslationsSettingsHealthConnectUnavailableTl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsTl permissions = _TranslationsSettingsHealthConnectPermissionsTl._(_root);
	@override String get managePermissions => 'Pamahalaan ang mga Pahintulot';
	@override String get openSettings => 'Buksan ang Mga Setting ng Health Connect';
	@override String get requestPermissions => 'Humiling ng Mga Pahintulot';
	@override String get permissionRequestCancelledOrFailed => 'Ang hinihinging pahintulot ay nakansela o nabigo. Pakisubukang muli o bigyan ng pahintulot nang manu-mano sa mga setting ng Health Connect.';
	@override String get permissionRequestFailed => 'Hindi makapaghiling ng mga pahintulot. Pakisubukang muli o bigyan ng pahintulot nang manu-mano sa mga setting ng Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutTl implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tungkol';
	@override String get tagline => 'Mabilis, libre, at priyoridad ang privacy sa kamalayan sa calorie';
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
	@override String get body => 'Panahon na para i-log ang iyong tanghalian';
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
	@override String get title => 'Oras ng Merienda! 🍎';
	@override String get body => 'Panahon na para sa isang malusog na merienda';
}

// Path: notifications.test
class _TranslationsNotificationsTestTl implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Test Notification';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapTl implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} ay nagbibigay ng tinatayang impormasyon sa nutrisyon. Ang katumpakan ay depende sa iyong input at mga pagkakaiba sa pagkain. Gamitin ito bilang gabay, hindi isang tiyak na mapagkukunan. Kumonsulta sa isang propesyonal para sa personalized na payo sa nutrisyon.';
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
	@override String get title => 'Tungkol sa Tinatayang Timbang';
	@override String get description => 'Ang nakatakdang pagbabago ng timbang ay isang teoretikal na pagtatantya batay sa simpleng calorie-in kumpara sa calorie-out na modelo. Ito ay inilaan lamang para sa motivational na gabay, hindi bilang isang prediksyon ng iyong aktwal na timbang.';
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
	@override String get description => 'Ang mga sukat na ito ay tumutulong sa iyo na maunawaan ang mga pangangailangan ng enerhiya ng iyong katawan at itinuturo ang iyong mga layunin sa nutrisyon.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrTl bmr = _TranslationsDisclaimerHealthMetricsBmrTl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeTl tdee = _TranslationsDisclaimerHealthMetricsTdeeTl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalTl dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalTl._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureTl implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tantiyang pagkasunog ng kaloriya';
	@override String get description => 'Kapag hindi magagamit ang data mula sa Health Connect, tinatantiya namin kung ilang kaloriya ang nasunog ngayong araw gamit ang iyong Basal Metabolic Rate (BMR) at antas ng aktibidad (TDEE), at inaangkop ito sa bahagi ng araw na lumipas.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedTl howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedTl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTl professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTl._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionTl implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Matalinong Pagkilala sa Pagkain';
	@override String get description => 'Kumuha ng litrato at hayaang kilalanin ng AI ang iyong pagkain';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisTl implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pagsusuri ng AI';
	@override String get description => 'Kumuha ng instant na impormasyon sa nutrisyon mula sa iyong mga paglalarawan';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationTl implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrasyon sa Kalusugan';
	@override String get description => 'Ikonekta sa Health Connect para sa mas magandang pananaw';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesTl implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kulang sa timbang';
	@override String get healthyWeight => 'Malusog na timbang';
	@override String get overweight => 'Sobra sa timbang';
	@override String get obese => 'Obesity';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesTl implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Matutulungan ka naming bumuo ng isang malusog na plano upang maabot ang balanseng timbang gamit ang masustansyang pagkain.';
	@override String get healthy => 'Magaling! Nasa malusog na saklaw ka. Tutulungan ka naming mapanatili ang iyong sigla at antas ng enerhiya.';
	@override String overweight({required Object appLabel}) => '${appLabel} ay nagpapadali sa iyong paglalakbay gamit ang AI-powered tracking upang makatulong na maabot ang iyong target nang kumportable.';
	@override String get obese => 'Nandito kami upang suportahan ka sa pamamagitan ng personalized na gabay at mga sustainable na estratehiya para sa iyong mga layunin sa kalusugan.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingTl implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Awtomatik na Pagsubaybay ng Calorie';
	@override String get description => 'Subaybayan ang calories na nasunog mula sa iyong fitness apps';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsTl implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Pagsusuri sa Pag-unlad';
	@override String get description => 'Kumuha ng detalyadong pananaw sa mga trend ng iyong kalusugan';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationTl implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Walang putol na Integrasyon';
	@override String get description => 'I-synchronize ang datos mula sa iyong mga paboritong health apps';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessTl implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hindi Ka Nag-iisa';
	@override String get genericMessage => 'Ipinapakita ng mga pag-aaral na ang tuloy-tuloy na pagsubaybay ang #1 predictor ng pangmatagalang tagumpay.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Para sa isang ${age} taong gulang na ${gender} na nagnanais na ${goal}, ang tuloy-tuloy na pagsubaybay ang #1 predictor ng tagumpay.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} ay nagpapadali ng 10x kumpara sa paggawa nito nang manual.';
	@override String get getStartedTitle => 'Handa ka na bang magsimula?';
	@override String get tipPhoto => 'Kumuha ng litrato ng iyong mga pagkain para sa instant na pagsusuri';
	@override String get tipConsistency => 'Mag-log nang tuloy-tuloy upang makita ang makabuluhang pag-unlad';
	@override String get tipProgress => 'Subaybayan ang iyong pag-unlad araw-araw upang manatiling motivated';
	@override String get button => 'Sige na';
	@override String get defaultGender => 'indibidwal';
	@override String get defaultGoal => 'mas malusog na ikaw';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileTl implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ang Iyong Profile sa Kalusugan';
	@override String bmiDescription({required Object bmi}) => 'Batay sa iyong mga sukat, ang iyong BMI ay ${bmi}.';
	@override String get finalizeDescription => 'Taposin na natin ang iyong profile upang i-customize ang iyong karanasan.';
	@override String get goalGain => 'magdagdag';
	@override String get goalLose => 'mabawasan';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Upang maabot ang iyong layunin, kailangan mong ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Nasa iyong target na timbang ka na! Tutulungan ka naming mapanatili ito.';
	@override String get button => 'Sige na';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleTl implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Napakagandang Simula!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Nagawa mo na ang unang hakbang patungo sa ${goalText}. Dahil ikaw ay ${activityText}, iaangkop ng ${appLabel} ang iyong mga target upang umangkop sa iyong pamumuhay.';
	@override String get personalizedTargets => 'Personalized na mga calorie target';
	@override String get aiMealDetection => 'Pagkilala sa pagkain na pinapagana ng AI';
	@override String get macroBreakdowns => 'Detalyadong breakdown ng macro-nutrients';
	@override String get button => 'Sige na';
	@override String get defaultGoal => 'iyong mga layunin';
	@override String get defaultActivity => 'aktibo';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightTl implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Bawasan ang Timbang';
	@override String get description => 'Lumikha ng calorie deficit upang mawalan ng timbang';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightTl implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Panatilihin ang Timbang';
	@override String get description => 'Panatilihin ang iyong kasalukuyang timbang';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightTl implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Dagdagan ang Timbang';
	@override String get description => 'Lumikha ng calorie surplus upang dagdagan ang timbang';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryTl implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hindi aktibo';
	@override String get description => 'Kaunting ehersisyo';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveTl implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Bahagyang Aktibo';
	@override String get description => 'Bahagyang ehersisyo 1-3 araw/linggo';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveTl implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Katamtamang Aktibo';
	@override String get description => 'Katamtamang ehersisyo 3-5 araw/linggo';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveTl implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Napaka Aktibo';
	@override String get description => 'Mabigat na ehersisyo 6-7 araw/linggo';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveTl implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sobrang Aktibo';
	@override String get description => 'Sobrang mabigat na ehersisyo, pisikal na trabaho';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableTl implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hindi Magagamit ang Koneksyon sa Kalusugan';
	@override String get description => 'Ang Koneksyon sa Kalusugan ay hindi magagamit sa aparatong ito. Nangangailangan ito ng Android 14 o mas mataas.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsTl implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Pahintulot';
	@override String get description => 'Ang mga sumusunod na pahintulot ay hiniling upang maibigay ang integrasyon ng Koneksyon sa Kalusugan:';
	@override String get granted => 'Ipinagkaloob';
	@override String get notGranted => 'Hindi Ipinagkaloob';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTl caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadTl nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadTl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteTl nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteTl._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryTl implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ang Aming Kwento';
	@override String content({required Object appLabel}) => '${appLabel} ay isinilang mula sa isang simpleng pagkabigo: karamihan sa mga app na nagtatala ng calorie ay sobrang kumplikado, humihingi ng patuloy na manu-manong input, mataas ang bayad sa subscription, o nagkakasala sa privacy.\n\nBilang isang solo developer, nais kong bumuo ng isang bagay na mas simple at patas — isang app na gumagamit ng AI upang mabawasan ang pagsisikap, mananatiling mabilis at libre ang paggamit, at ginagalang ang iyong mga datos sa kalusugan.\n\n${appLabel} ang app na sana ay nag-exist: walang mga account, walang pagsubaybay, walang mga anunsyo — malinaw, praktikal na mga pananaw lamang at ang iyong mga layunin sa kalusugan.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyTl implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahalaga ang Iyong Privacy';
	@override String get description => 'Ang privacy ay hindi isang second thought — ito ay isang prinsipyo sa disenyo. Narito kung ano ang ibig sabihin nito sa praktis:';
	@override String get noAccounts => 'Walang kinakailangang account\nGamitin agad ang app. Walang pag-sign up, walang pagkakakilanlan.';
	@override String noTracking({required Object appLabel}) => 'Walang pagsubaybay sa gawi\n${appLabel} ay hindi nagmamanman ng iyong aktibidad, hindi bumubuo ng usage profiles, o nagsusubaybay sa iyo sa mga app o website.';
	@override String noAds({required Object appLabel}) => 'Walang ads sa disenyo\n${appLabel} ay nakabuo upang gumana nang walang ads o data-driven monetization.';
	@override String get noDataSelling => 'Walang pagbebenta ng datos\nHindi kailanman ibinebenta o ibinabahagi ang iyong datos sa kalusugan sa mga third parties.';
	@override String get localStorage => 'Local-first storage\nAng iyong datos ay nananatili sa iyong device.';
	@override String get privacyPolicy => 'Patakaran sa Privacy';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperTl implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nilikha ng Isang Solo Developer';
	@override String description({required Object appLabel}) => '${appLabel} ay binuo at pinapanatili ng isang tanging solo developer na nakatutok sa paglikha ng kalmado at privacy-respecting na software para sa kalusugan.\n\nAng feedback ay personal na binabasa at tumutulong sa paghubog ng direksyon ng app.';
	@override String get website => 'Website';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackTl implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Nasiyahan ka ba sa ${appLabel}?';
	@override String description({required Object appLabel}) => 'Ang iyong feedback ay tumutulong sa pagpapabuti ng ${appLabel} para sa lahat.';
	@override String get rateApp => 'I-rate sa Play Store';
	@override String get sendFeedback => 'Magpadala ng Feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeTl implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sukat ng Bahagi';
	@override String get description => 'Ang katumpakan ng mga pagtatantya ay labis na nakasalalay sa iyong tamang pagtasa ng sukat ng bahagi.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsTl implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Paraan ng Paghahanda';
	@override String description({required Object appLabel}) => 'Ang mga paraan ng pagluluto ay maaaring makabuluhang baguhin ang nilalaman ng nutrisyon ng pagkain. Ang mga pagtatantya ng ${appLabel} ay maaaring hindi palaging isinasaalang-alang ang mga pagkakaibang ito.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsTl implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Sangkap';
	@override String get description => 'Ang mga kumplikadong ulam na may maraming nakatagong sangkap ay maaaring humantong sa mas kaunting tumpak na pagtatantya.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsTl implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Limitasyon sa Database';
	@override String description({required Object appLabel}) => 'Ang database ng pagkain ng ${appLabel} ay malawak ngunit maaaring hindi kasama ang bawat isa o pagkakaiba ng item ng pagkain.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyTl implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Katumpakan ng Calorie';
	@override String get description => 'Ang pagtatantyang ito ay kasing tumpak lamang ng iyong na-log na calorie na pagkain at paggasta. Ang hindi tamang pag-log ay magreresulta sa hindi tumpak na pagtataya.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsTl implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga Biological na Salik';
	@override String description({required Object appLabel}) => 'Ang aktwal na pagbaba/pagtaas ng timbang ay naapektuhan ng metabolismo, hormones, tulog, stress, hydration, at iba pang indibidwal na salik na hindi kayang sukatin ng ${appLabel}.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightTl implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Timbang ng Tubig at Pagbago';
	@override String get description => 'Ang normal na pang-araw-araw na timbang ay maaaring magbago ng makabuluhang dahil sa pag-ipon ng tubig, pagtunaw, at oras. Ang pagtatantya ay hindi isinasaalang-alang ang mga pang-araw-araw na pagbabagong ito.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Propesyonal na Patnubay';
	@override String get description => 'Huwag gamitin ang pagtatantyang ito upang gumawa ng mga medikal na desisyon. Palaging kumonsulta sa isang propesyonal sa kalusugan o nakarehistrong dietitian para sa personalized na payo sa pamamahala ng timbang.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrTl implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Ang Basal Metabolic Rate (BMR) ay ang bilang ng mga calorie na sinusunog ng iyong katawan kapag nagpapahinga upang mapanatili ang mga pangunahing function tulad ng paghinga at sirkulasyon. Ang BMR ay nakadepende sa iyong edad, kasarian, taas, at timbang. Ang mas mataas na BMR ay nangangahulugang ang iyong katawan ay natural na nagsusunog ng mas maraming calorie habang nagpapahinga, na kadalasang dulot ng mas maraming mass ng kalamnan, mas batang edad, o pagiging lalaki. Ang mas mababang BMR ay karaniwang nagpapahiwatig ng mas kaunting mass ng kalamnan, mas matandang edad, o pagiging babae.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeTl implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Ang Total Daily Energy Expenditure (TDEE) ay ang kabuuang calorie na sinusunog mo sa isang araw, kabilang ang iyong BMR at mga calorie mula sa pisikal na aktibidad at pang-araw-araw na paggalaw. Ang TDEE ay nakadepende sa iyong BMR at antas ng aktibidad. Ang mas mataas na TDEE ay nangangahulugang mas maraming calorie ang iyong sinusunog sa kabuuan, karaniwang mula sa pagiging mas aktibo o pagkakaroon ng mas mataas na BMR. Ang mas mababang TDEE ay nagpapahiwatig ng mas kaunting aktibidad sa araw-araw o mas mababang BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalTl implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Arawang Layunin';
	@override String get description => 'Ang Arawang Layunin ay ang inirekomendang pang-araw-araw na calorie na kinakailangan batay sa iyong TDEE at layunin sa timbang. Para sa pagbaba ng timbang, kumakain ka ng mas kaunting calorie kaysa sa iyong TDEE. Para sa pagpapanatili ng timbang, katumbas mo ang iyong TDEE. Para sa pagtaas ng timbang, kumakain ka ng mas maraming calorie kaysa sa iyong TDEE. Tinutulungan ka nitong makamit ang iyong nais na pagbabago ng timbang sa isang malusog na takbo.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedTl implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paano kinakalkula ang pagtatantya';
	@override String get description => 'Kinakalkula namin ang iyong TDEE (batay sa iyong profile) at pinararami ito ng proporsyon ng araw na lumipas (oras + minuto) / 24 upang tantiyahin ang kaloriya na nasunog hanggang ngayon.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTl implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Propesyonal na Patnubay';
	@override String get description => 'Huwag gamitin ang pagtatantyang ito bilang batayan para sa mga medikal na desisyon. Laging kumonsulta sa isang propesyonal sa pangangalagang pangkalusugan o rehistradong dietitian para sa personal na payo tungkol sa pamamahala ng timbang.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTl implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Basahin ang Kabuuang Nasunog na Calories';
	@override String get description => 'Pinapayagan ang app na basahin ang iyong kabuuang nasunog na calories mula sa Health Connect.';
	@override String get usage => 'Ginagamit ang pahintulot na ito upang ipakita ang iyong araw-araw na nasunog na calories sa app, na tumutulong sa iyo na maunawaan ang iyong kabuuang pagkonsumo ng enerhiya sa buong araw.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadTl implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Basahin ang Data ng Nutrisyon';
	@override String get description => 'Pinapayagan ang app na basahin ang data ng nutrisyon mula sa Koneksyon sa Kalusugan.';
	@override String get usage => 'Pinapayagan ng pahintulot na ito ang app na basahin ang impormasyon ng nutrisyon na maaaring naitala ng ibang mga app na nakakonekta sa Koneksyon sa Kalusugan, nagbibigay ng komprehensibong pananaw sa iyong nutrisyon.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteTl implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sumulat ng Data ng Nutrisyon';
	@override String get description => 'Pinapayagan ang app na sumulat ng data ng nutrisyon sa Koneksyon sa Kalusugan.';
	@override String get usage => 'Pinapayagan ng pahintulot na ito ang app na i-sync ang iyong mga naitalang pagkain sa Koneksyon sa Kalusugan, na ginagawang magagamit ang iyong data ng nutrisyon sa iba pang mga app sa kalusugan at fitness na ginagamit mo.';
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
			'errors.loadingProfileData' => 'Error sa pag-load ng datos ng profile',
			'errors.somethingWentWrong' => 'May nangyaring mali.',
			'onboarding.welcome' => ({required Object appLabel}) => 'Maligayang pagdating sa ${appLabel}',
			'onboarding.subtitle' => 'Ang iyong personal na kasamahan sa nutrisyon na pinapagana ng AI',
			'onboarding.getStarted' => 'Magsimula',
			'onboarding.features.foodRecognition.title' => 'Matalinong Pagkilala sa Pagkain',
			'onboarding.features.foodRecognition.description' => 'Kumuha ng litrato at hayaang kilalanin ng AI ang iyong pagkain',
			'onboarding.features.aiAnalysis.title' => 'Pagsusuri ng AI',
			'onboarding.features.aiAnalysis.description' => 'Kumuha ng instant na impormasyon sa nutrisyon mula sa iyong mga paglalarawan',
			'onboarding.features.healthIntegration.title' => 'Integrasyon sa Kalusugan',
			'onboarding.features.healthIntegration.description' => 'Ikonekta sa Health Connect para sa mas magandang pananaw',
			'onboarding.gender.title' => 'Ano ang iyong kasarian?',
			'onboarding.gender.description' => 'Ang kasarian ay tumutulong sa atin na tumpak na kalkulahin ang iyong basal metabolic rate (BMR).',
			'onboarding.gender.next' => 'Susunod',
			'onboarding.height.title' => 'Gaano kataas ka?',
			'onboarding.height.description' => 'Ang iyong taas ay tumutulong sa atin na tumpak na kalkulahin ang iyong BMI at pangangailangan sa enerhiya.',
			'onboarding.height.metric' => 'Sistemang metrikal',
			'onboarding.height.imperial' => 'Imperyal',
			'onboarding.height.next' => 'Susunod',
			'onboarding.weight.currentTitle' => 'Ano ang iyong kasalukuyang timbang?',
			'onboarding.weight.currentDescription' => 'Ang iyong kasalukuyang timbang ay mahalaga para sa pagpapasadya ng iyong mga pang-araw-araw na layunin.',
			'onboarding.weight.targetTitle' => 'Ano ang iyong target na timbang?',
			'onboarding.weight.targetDescription' => 'Ang pagtatakda ng layunin na timbang ay tumutulong sa atin na tukuyin ang iyong pangmatagalang plano.',
			'onboarding.weight.metric' => 'Sistemang metrikal',
			'onboarding.weight.imperial' => 'Imperyal',
			'onboarding.weight.next' => 'Susunod',
			'onboarding.age.title' => 'Kailan ang iyong kaarawan?',
			'onboarding.age.description' => 'Ang iyong edad ay tumutulong upang tumpak na kalkulahin ang iyong pangangailangan sa calorie.',
			'onboarding.age.next' => 'Susunod',
			'onboarding.bmiScale.underweight' => 'Kulang sa timbang',
			'onboarding.bmiScale.healthy' => 'Malusog',
			'onboarding.bmiScale.overweight' => 'Sobra sa timbang',
			'onboarding.bmiScale.obese' => 'Obesity',
			'onboarding.bmiScale.categories.underweight' => 'Kulang sa timbang',
			'onboarding.bmiScale.categories.healthyWeight' => 'Malusog na timbang',
			'onboarding.bmiScale.categories.overweight' => 'Sobra sa timbang',
			'onboarding.bmiScale.categories.obese' => 'Obesity',
			'onboarding.bmiScale.messages.underweight' => 'Matutulungan ka naming bumuo ng isang malusog na plano upang maabot ang balanseng timbang gamit ang masustansyang pagkain.',
			'onboarding.bmiScale.messages.healthy' => 'Magaling! Nasa malusog na saklaw ka. Tutulungan ka naming mapanatili ang iyong sigla at antas ng enerhiya.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} ay nagpapadali sa iyong paglalakbay gamit ang AI-powered tracking upang makatulong na maabot ang iyong target nang kumportable.',
			'onboarding.bmiScale.messages.obese' => 'Nandito kami upang suportahan ka sa pamamagitan ng personalized na gabay at mga sustainable na estratehiya para sa iyong mga layunin sa kalusugan.',
			'onboarding.weightGoal.title' => 'Ano ang iyong layunin?',
			'onboarding.weightGoal.description' => 'Pumili ng layunin na pinaka-naglalarawan kung ano ang nais mong makamit',
			'onboarding.activityLevel.title' => 'Gaano ka kaaktibo?',
			'onboarding.activityLevel.description' => 'Ito ay tumutulong sa atin na tumpak na kalkulahin ang iyong pang-araw-araw na pangangailangan sa calorie',
			'onboarding.healthConnect.title' => 'Ikonekta sa Health Connect',
			'onboarding.healthConnect.description' => 'I-synchronize ang iyong datos sa kalusugan para sa mas magandang pananaw at awtomatikong pagsubaybay ng calorie',
			'onboarding.healthConnect.automaticTracking.title' => 'Awtomatik na Pagsubaybay ng Calorie',
			'onboarding.healthConnect.automaticTracking.description' => 'Subaybayan ang calories na nasunog mula sa iyong fitness apps',
			'onboarding.healthConnect.progressInsights.title' => 'Mga Pagsusuri sa Pag-unlad',
			'onboarding.healthConnect.progressInsights.description' => 'Kumuha ng detalyadong pananaw sa mga trend ng iyong kalusugan',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Walang putol na Integrasyon',
			'onboarding.healthConnect.seamlessIntegration.description' => 'I-synchronize ang datos mula sa iyong mga paboritong health apps',
			'onboarding.healthConnect.connected' => 'Nakakonekta ang Health Connect',
			'onboarding.healthConnect.notConnected' => 'Hindi nakakonekta ang Health Connect',
			'onboarding.healthConnect.setup' => 'I-set up ang Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Laktawan ito sa ngayon',
			'onboarding.healthConnect.statusConnected' => 'Nakakonekta ang Health Connect.',
			'onboarding.healthConnect.statusSuccess' => 'Matagumpay na nakakonekta ang Health Connect!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Tinanggihan ang pahintulot. Pakisuyong paganahin ang mga pahintulot ng Health Connect mula sa iyong mga setting ng telepono para sa ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Error sa pag-set up ng Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Hindi Ka Nag-iisa',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Ipinapakita ng mga pag-aaral na ang tuloy-tuloy na pagsubaybay ang #1 predictor ng pangmatagalang tagumpay.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Para sa isang ${age} taong gulang na ${gender} na nagnanais na ${goal}, ang tuloy-tuloy na pagsubaybay ang #1 predictor ng tagumpay.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} ay nagpapadali ng 10x kumpara sa paggawa nito nang manual.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Handa ka na bang magsimula?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Kumuha ng litrato ng iyong mga pagkain para sa instant na pagsusuri',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Mag-log nang tuloy-tuloy upang makita ang makabuluhang pag-unlad',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Subaybayan ang iyong pag-unlad araw-araw upang manatiling motivated',
			'onboarding.reinforcement.trackingSuccess.button' => 'Sige na',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'indibidwal',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'mas malusog na ikaw',
			'onboarding.reinforcement.healthProfile.title' => 'Ang Iyong Profile sa Kalusugan',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Batay sa iyong mga sukat, ang iyong BMI ay ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Taposin na natin ang iyong profile upang i-customize ang iyong karanasan.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'magdagdag',
			'onboarding.reinforcement.healthProfile.goalLose' => 'mabawasan',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Upang maabot ang iyong layunin, kailangan mong ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Nasa iyong target na timbang ka na! Tutulungan ka naming mapanatili ito.',
			'onboarding.reinforcement.healthProfile.button' => 'Sige na',
			'onboarding.reinforcement.goalLifestyle.title' => 'Napakagandang Simula!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Nagawa mo na ang unang hakbang patungo sa ${goalText}. Dahil ikaw ay ${activityText}, iaangkop ng ${appLabel} ang iyong mga target upang umangkop sa iyong pamumuhay.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personalized na mga calorie target',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Pagkilala sa pagkain na pinapagana ng AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detalyadong breakdown ng macro-nutrients',
			'onboarding.reinforcement.goalLifestyle.button' => 'Sige na',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'iyong mga layunin',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktibo',
			'tabs.dashboard' => 'Dashboard',
			'tabs.history' => 'Kasaysayan',
			'home.dailyGoal.title' => 'Itakda ang Iyong Pang-araw-araw na Layunin',
			'home.dailyGoal.titleSet' => 'Ang Iyong Pang-araw-araw na Layunin',
			'home.dailyGoal.description' => 'Handa ka na bang simulan ang iyong wellness journey? Itakda ang iyong pang-araw-araw na target na calorie sa ibaba upang simulan ang iyong progreso.',
			'home.dailyGoal.descriptionSet' => 'Nakaset na ang iyong kompas! Ito ang iyong pang-araw-araw na target na calorie upang gabayan ka.',
			'home.dailyGoal.yourGoal' => 'Ang Iyong Layunin',
			'home.dailyGoal.goal' => 'Layunin',
			'home.dailyGoal.dailyCalories' => 'Pang-araw-araw na calories (kcal)',
			'home.dailyGoal.setGoal' => 'Itakda ang Layunin',
			'home.dailyGoal.intake' => 'Konsumisyon',
			'home.dailyGoal.burned' => 'Nasunog',
			'home.dailyGoal.weightImpact' => 'Epekto sa Timbang',
			'home.dailyGoal.estLoss' => 'Tinatayang pagkawala ng',
			'home.dailyGoal.estGain' => 'Tinatayang pagdagdag ng',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Pang-araw-araw na Buod',
			'home.dailySummary.calories' => 'Calories',
			'home.dailySummary.carbs' => 'Carbohydrates',
			'home.dailySummary.protein' => 'Protina',
			'home.dailySummary.fat' => 'Taba',
			'home.dailySummary.fiber' => 'Fiber',
			'home.dailySummary.grams' => 'gramo',
			'home.dailySummary.chartAccessibilityLabel' => 'Tsart ng mga makronutriente',
			'home.intakeProgress.title' => 'Paghahati ng Macro Ngayong Araw',
			'home.intakeProgress.target' => 'Target',
			'home.intakeProgress.current' => 'Kasalukuyan',
			'home.intakeHistory.title' => '7-Araw na Kasaysayan ng Macro',
			'home.intakeHistory.noHistoryYet' => 'Wala pang kasaysayan',
			'home.intakeHistory.startLogging' => 'Simulan ang pag-log ng mga pagkain upang makita ang iyong\n7-araw na trend sa macro dito',
			'home.mealLog.title' => 'Naka-log na mga Pagkain',
			'home.mealLog.emptyMessage' => 'Kumuha ng litrato ng iyong huling pagkain upang i-log dito.',
			'home.mealLog.noMealsToday' => 'Walang nakahiwalay na pagkain para sa araw na ito',
			'home.mealLog.seeAllMeals' => 'Tingnan ang lahat ng pagkain',
			'home.mealDescription.title' => 'Mabilis na Idagdag gamit ang AI',
			'home.mealDescription.description' => 'Ilalarawan ang iyong pagkain, at hayaang ayusin ng AI ang mga detalye.',
			'home.mealDescription.hint' => 'hal. Para sa almusal, kumain ako ng malaking mangkok ng oat na may hiwa ng saging at isang scoop ng whey ...',
			'home.mealDescription.analyzeMeal' => 'Suriin ang pagkain',
			'home.favoriteMeals.title' => 'Paboritong Pagkain',
			'home.favoriteMeals.description' => 'Mabilis na idagdag ang isa sa iyong mga paboritong pagkain.',
			'home.favoriteMeals.noFavorites' => 'Walang paboritong pagkain sa ngayon.',
			'home.favoriteMeals.addFavoriteHint' => 'I-click ang bituin sa isang pagkain upang markahan ito bilang paborito.',
			'home.favoriteMeals.seeAll' => 'Tingnan ang lahat',
			'home.favoriteMeals.add' => 'Idagdag',
			'home.mealSnap.title' => 'Kumuha ng Litrato at Subaybayan ang Iyong Pagkain',
			'home.mealSnap.description' => 'Gamitin ang iyong kamera upang kumuha ng litrato ng iyong pagkain para sa pagsusuri ng AI.',
			'home.mealSnap.openCamera' => 'Buksan ang Kamera',
			'home.mealSnap.gallery' => 'Galeriya',
			'home.connectHealth.title' => 'I-synchronize sa Health Connect',
			'home.connectHealth.description' => 'I-synchronize ang iyong nutrition data sa Health Connect',
			'home.connectHealth.install' => 'I-install',
			'home.connectHealth.connect' => 'Ikonekta',
			'history.noMeals' => 'Walang nakahiwalay na pagkain',
			'history.emptyMessage' => 'Kumuha ng litrato ng iyong huling pagkain upang i-log dito.',
			'history.today' => 'Ngayon',
			'history.yesterday' => 'Kahapon',
			'meal.ohNo' => 'Oh hindi!',
			'meal.delete' => 'Tanggalin',
			'meal.editMeal' => 'I-edit ang Pagkain',
			'meal.addMeal' => 'Magdagdag ng Pagkain',
			'meal.saveMeal' => 'I-save ang Pagkain',
			'meal.save' => 'I-save',
			'meal.mealName' => 'Pangalan ng Pagkain',
			'meal.mealNameHint' => 'Hal., Hinalong itlog na may tinapay',
			'meal.mealQuantity' => 'Dami ng Pagkain',
			'meal.mealQuantityHint' => 'hal., 1 mangkok, 2 hiwa',
			'meal.timeOfMeal' => 'Oras ng Pagkain',
			'meal.timeOfMealHint' => 'Pumili ng oras kung kailan mo kinain ang iyong pagkain',
			'meal.mealType' => 'Uri ng Pagkain',
			'meal.nutrition.calories' => 'Calories',
			'meal.nutrition.carbs' => 'Carbs (g)',
			'meal.nutrition.protein' => 'Protina (g)',
			'meal.nutrition.fat' => 'Taba (g)',
			'meal.nutrition.fiber' => 'Fiber (g)',
			'meal.deleteConfirmation.title' => 'Tanggalin ang Pagkain',
			'meal.deleteConfirmation.message' => 'Sigurado ka bang nais mong tanggalin ang entry na ito ng pagkain?',
			'meal.deleteConfirmation.cancel' => 'Kanselahin',
			'meal.deleteConfirmation.delete' => 'Tanggalin',
			'meal.addedToLog' => 'Idinagdag ang pagkain sa iyong log!',
			'meal.couldNotAdd' => ({required Object error}) => 'Hindi maidaragdag ang pagkain: ${error}',
			'meal.savedSuccessfully' => 'Matagumpay na naidagdag ang pagkain!',
			'meal.updatedSuccessfully' => 'Matagumpay na na-update ang pagkain!',
			'meal.errorSaving' => ({required Object error}) => 'Nabigong i-save ang pagkain: ${error}',
			'meal.removedFromFavorites' => 'Tinanggal mula sa mga paborito!',
			'meal.savedAsFavorite' => 'Naitabi ang pagkain bilang paborito!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Hindi ma-update ang paborito: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Nabigo sa pagproseso: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Nabigo sa pagproseso ng larawan: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Error sa pag-compress ng larawan: ${error}',
			'meal.failedToSave' => 'Nabigo sa pag-save ng datos. Pakisubok muli.',
			'meal.skip' => 'Laktawan',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Tanong ${current} sa ${total}',
			'meal.variation.noVariationsAvailable' => 'Walang ibang pagpipilian',
			'favorites.title' => 'Mga Paborito',
			'favorites.empty' => 'Walang paboritong pagkain sa ngayon.',
			'profile.title' => 'Profile',
			'profile.noProfileData' => 'Walang natagpuang datos ng profile',
			'profile.yourProfile' => 'Ang Iyong Profile',
			'profile.viewAndManage' => 'Tingnan at pamahalaan ang iyong impormasyon sa kalusugan',
			'profile.sections.profile' => 'PROFILE',
			'profile.sections.basicInformation' => 'BATAYANG IMPORMASYON',
			'profile.sections.goalsAndActivity' => 'LAYUNIN AT AKTIBIDAD',
			'profile.sections.calculatedValues' => 'NAKALKULANG MGA HALAGA',
			'profile.gender' => 'Kasarian',
			'profile.height' => 'Taas',
			'profile.weight' => 'Timbang',
			'profile.age' => 'Edad',
			'profile.weightGoal' => 'Layunin sa Timbang',
			'profile.targetWeight' => 'Target na Timbang',
			'profile.activityLevel' => 'Antas ng Aktibidad',
			'profile.healthMetrics' => 'Metrics ng Kalusugan',
			'profile.notSet' => 'Hindi nakatakda',
			'profile.years' => 'taon',
			'profile.updatedSuccessfully' => 'Matagumpay na na-update ang profile!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Pang-araw-araw na Layunin',
			'profile.calculatedValues.calPerDay' => 'cal/araw',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Iskor ng Kalusugan',
			'healthScore.whyThisScore' => 'Bakit ang iskor na ito?',
			'healthScore.note' => 'Ang iskor na ito ay isang pagtatantya mula sa AI batay sa nakilalang sangkap at nutritional density. Palaging kumonsulta sa isang propesyonal para sa payo sa pagkain.',
			'healthScore.unhealthy' => 'Hindi Malusog',
			'healthScore.healthy' => 'Malusog',
			'healthScore.neutral' => 'Neutral',
			'editProfile.title' => 'I-edit ang Profile',
			'editProfile.sections.personalInformation' => 'PERSONAL NA IMPORMASYON',
			'editProfile.sections.physicalMeasurements' => 'PISIKAL NA SUKAT',
			'editProfile.sections.goalsAndActivity' => 'LAYUNIN AT AKTIBIDAD',
			'editProfile.gender' => 'Kasarian',
			'editProfile.dateOfBirth' => 'Petsa ng Kaarawan',
			'editProfile.height' => 'Taas',
			'editProfile.weight' => 'Timbang',
			'editProfile.weightGoal' => 'Layunin sa Timbang',
			'editProfile.activityLevel' => 'Antas ng Aktibidad',
			'editProfile.metric' => 'Sistemang metrikal',
			'editProfile.imperial' => 'Imperyal',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Sistemang metrikal (cm)',
			'editProfile.imperialFtIn' => 'Imperyal (ft/in)',
			'editProfile.metricKg' => 'Sistemang metrikal (kg)',
			'editProfile.imperialLbs' => 'Imperyal (lbs)',
			'editProfile.genders.male' => 'Lalaki',
			'editProfile.genders.female' => 'Babae',
			'editProfile.genders.other' => 'Iba pa',
			'editProfile.weightGoals.loseWeight.name' => 'Bawasan ang Timbang',
			'editProfile.weightGoals.loseWeight.description' => 'Lumikha ng calorie deficit upang mawalan ng timbang',
			'editProfile.weightGoals.maintainWeight.name' => 'Panatilihin ang Timbang',
			'editProfile.weightGoals.maintainWeight.description' => 'Panatilihin ang iyong kasalukuyang timbang',
			'editProfile.weightGoals.gainWeight.name' => 'Dagdagan ang Timbang',
			'editProfile.weightGoals.gainWeight.description' => 'Lumikha ng calorie surplus upang dagdagan ang timbang',
			'editProfile.activityLevels.sedentary.name' => 'Hindi aktibo',
			'editProfile.activityLevels.sedentary.description' => 'Kaunting ehersisyo',
			'editProfile.activityLevels.lightlyActive.name' => 'Bahagyang Aktibo',
			'editProfile.activityLevels.lightlyActive.description' => 'Bahagyang ehersisyo 1-3 araw/linggo',
			'editProfile.activityLevels.moderatelyActive.name' => 'Katamtamang Aktibo',
			'editProfile.activityLevels.moderatelyActive.description' => 'Katamtamang ehersisyo 3-5 araw/linggo',
			'editProfile.activityLevels.veryActive.name' => 'Napaka Aktibo',
			'editProfile.activityLevels.veryActive.description' => 'Mabigat na ehersisyo 6-7 araw/linggo',
			'editProfile.activityLevels.extremelyActive.name' => 'Sobrang Aktibo',
			'editProfile.activityLevels.extremelyActive.description' => 'Sobrang mabigat na ehersisyo, pisikal na trabaho',
			'settings.title' => 'Mga Setting',
			'settings.sections.profile' => 'PROFILE',
			'settings.sections.localization' => 'LOKALISASYON',
			'settings.sections.notifications' => 'NOTIFIKASYON',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SUPORTA AT LEGAL',
			'settings.sections.about' => 'TUNGKOL',
			'settings.sections.dangerZone' => 'MAPANGANIB NA ZONA',
			'settings.sections.developer' => 'DEVELOPER',
			'settings.editProfile.title' => 'I-edit ang Profile',
			'settings.editProfile.subtitle' => 'I-update ang iyong personal na impormasyon',
			'settings.language.title' => 'Wika',
			'settings.language.subtitle' => 'Pumili ng iyong gustong wika',
			'settings.language.searchHint' => 'Maghanap ng mga wika...',
			'settings.language.noResults' => 'Walang nahanap na resulta',
			'settings.heightUnit.title' => 'Yunit ng Taas',
			'settings.weightUnit.title' => 'Yunit ng Timbang',
			'settings.mealReminders.title' => 'Mga Paalala sa Pagkain',
			'settings.mealReminders.subtitle' => 'Panatilihin ang landas na may tamang mga alerto',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Maliwanag',
			'settings.theme.dark' => 'Madilim',
			'settings.theme.system' => 'Sistema',
			'settings.sendFeedback.title' => 'Magbigay ng Feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Tumulong sa aming pagbutihin ang ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} Feedback ng App',
			'settings.sendFeedback.emailBodyPrefix' => 'Pakisuyong ibigay ang iyong feedback sa ibaba:',
			'settings.sendFeedback.appVersion' => 'Bersyon ng App',
			'settings.sendFeedback.device' => 'Kagamitan',
			'settings.sendFeedback.osVersion' => 'Bersyon ng OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'I-clear ang Lahat ng Datos',
			'settings.clearAllData.subtitle' => 'Irerepormang tanggalin ang lahat ng iyong impormasyon',
			'settings.clearAllData.confirmationTitle' => 'I-clear ang Lahat ng Datos?',
			'settings.clearAllData.confirmationMessage' => 'Ang pagkilos na ito ay hindi na maibabalik. Ang lahat ng iyong na-log na pagkain, mga paborito, at mga setting ng profile ay permanenteng matatanggal.',
			'settings.clearAllData.cancel' => 'Kanselahin',
			'settings.clearAllData.clearEverything' => 'I-clear ang Lahat',
			'settings.debugOptions.title' => 'Mga Opsyon sa Debug',
			'settings.developerModeEnabled' => 'Naka-enable ang developer mode!',
			'settings.healthConnect.title' => 'Koneksyon sa Kalusugan',
			'settings.healthConnect.subtitle' => 'Tingnan at pamahalaan ang mga pahintulot',
			'settings.healthConnect.unavailable.title' => 'Hindi Magagamit ang Koneksyon sa Kalusugan',
			'settings.healthConnect.unavailable.description' => 'Ang Koneksyon sa Kalusugan ay hindi magagamit sa aparatong ito. Nangangailangan ito ng Android 14 o mas mataas.',
			'settings.healthConnect.permissions.title' => 'Mga Pahintulot',
			'settings.healthConnect.permissions.description' => 'Ang mga sumusunod na pahintulot ay hiniling upang maibigay ang integrasyon ng Koneksyon sa Kalusugan:',
			'settings.healthConnect.permissions.granted' => 'Ipinagkaloob',
			'settings.healthConnect.permissions.notGranted' => 'Hindi Ipinagkaloob',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Basahin ang Kabuuang Nasunog na Calories',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Pinapayagan ang app na basahin ang iyong kabuuang nasunog na calories mula sa Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Ginagamit ang pahintulot na ito upang ipakita ang iyong araw-araw na nasunog na calories sa app, na tumutulong sa iyo na maunawaan ang iyong kabuuang pagkonsumo ng enerhiya sa buong araw.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Basahin ang Data ng Nutrisyon',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Pinapayagan ang app na basahin ang data ng nutrisyon mula sa Koneksyon sa Kalusugan.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Pinapayagan ng pahintulot na ito ang app na basahin ang impormasyon ng nutrisyon na maaaring naitala ng ibang mga app na nakakonekta sa Koneksyon sa Kalusugan, nagbibigay ng komprehensibong pananaw sa iyong nutrisyon.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Sumulat ng Data ng Nutrisyon',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Pinapayagan ang app na sumulat ng data ng nutrisyon sa Koneksyon sa Kalusugan.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Pinapayagan ng pahintulot na ito ang app na i-sync ang iyong mga naitalang pagkain sa Koneksyon sa Kalusugan, na ginagawang magagamit ang iyong data ng nutrisyon sa iba pang mga app sa kalusugan at fitness na ginagamit mo.',
			'settings.healthConnect.managePermissions' => 'Pamahalaan ang mga Pahintulot',
			'settings.healthConnect.openSettings' => 'Buksan ang Mga Setting ng Health Connect',
			'settings.healthConnect.requestPermissions' => 'Humiling ng Mga Pahintulot',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Ang hinihinging pahintulot ay nakansela o nabigo. Pakisubukang muli o bigyan ng pahintulot nang manu-mano sa mga setting ng Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Hindi makapaghiling ng mga pahintulot. Pakisubukang muli o bigyan ng pahintulot nang manu-mano sa mga setting ng Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Tungkol',
			'settings.about.tagline' => 'Mabilis, libre, at priyoridad ang privacy sa kamalayan sa calorie',
			'settings.about.ourStory.title' => 'Ang Aming Kwento',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} ay isinilang mula sa isang simpleng pagkabigo: karamihan sa mga app na nagtatala ng calorie ay sobrang kumplikado, humihingi ng patuloy na manu-manong input, mataas ang bayad sa subscription, o nagkakasala sa privacy.\n\nBilang isang solo developer, nais kong bumuo ng isang bagay na mas simple at patas — isang app na gumagamit ng AI upang mabawasan ang pagsisikap, mananatiling mabilis at libre ang paggamit, at ginagalang ang iyong mga datos sa kalusugan.\n\n${appLabel} ang app na sana ay nag-exist: walang mga account, walang pagsubaybay, walang mga anunsyo — malinaw, praktikal na mga pananaw lamang at ang iyong mga layunin sa kalusugan.',
			'settings.about.privacy.title' => 'Mahalaga ang Iyong Privacy',
			'settings.about.privacy.description' => 'Ang privacy ay hindi isang second thought — ito ay isang prinsipyo sa disenyo. Narito kung ano ang ibig sabihin nito sa praktis:',
			'settings.about.privacy.noAccounts' => 'Walang kinakailangang account\nGamitin agad ang app. Walang pag-sign up, walang pagkakakilanlan.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Walang pagsubaybay sa gawi\n${appLabel} ay hindi nagmamanman ng iyong aktibidad, hindi bumubuo ng usage profiles, o nagsusubaybay sa iyo sa mga app o website.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Walang ads sa disenyo\n${appLabel} ay nakabuo upang gumana nang walang ads o data-driven monetization.',
			'settings.about.privacy.noDataSelling' => 'Walang pagbebenta ng datos\nHindi kailanman ibinebenta o ibinabahagi ang iyong datos sa kalusugan sa mga third parties.',
			'settings.about.privacy.localStorage' => 'Local-first storage\nAng iyong datos ay nananatili sa iyong device.',
			'settings.about.privacy.privacyPolicy' => 'Patakaran sa Privacy',
			'settings.about.developer.title' => 'Nilikha ng Isang Solo Developer',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} ay binuo at pinapanatili ng isang tanging solo developer na nakatutok sa paglikha ng kalmado at privacy-respecting na software para sa kalusugan.\n\nAng feedback ay personal na binabasa at tumutulong sa paghubog ng direksyon ng app.',
			'settings.about.developer.website' => 'Website',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Nasiyahan ka ba sa ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Ang iyong feedback ay tumutulong sa pagpapabuti ng ${appLabel} para sa lahat.',
			'settings.about.feedback.rateApp' => 'I-rate sa Play Store',
			'settings.about.feedback.sendFeedback' => 'Magpadala ng Feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Panatilihin ang landas na may mga paalala',
			'reminders.description' => 'Kumuha ng banayad na mga paalala upang i-log ang iyong mga pagkain at manatiling consistent sa iyong mga layunin sa nutrisyon',
			'reminders.notificationsEnabled' => 'Naka-enable ang mga Notifikasyon',
			'reminders.notificationsDisabled' => 'Naka-disable ang mga Notifikasyon',
			'reminders.enabledSubtitle' => 'Makakatanggap ka ng mga paalala sa pagkain',
			'reminders.disabledSubtitle' => 'I-enable ang mga notifikasyon upang makakuha ng mga paalala sa pagkain',
			'reminders.mealReminders' => 'Mga Paalala sa Pagkain',
			'reminders.breakfast' => 'Almusal',
			'reminders.lunch' => 'Tanghalian',
			'reminders.dinner' => 'Hapunan',
			'reminders.snack' => 'Merienda',
			'reminders.unknown' => 'Hindi alam',
			'reminders.change' => 'Palitan',
			'reminders.enableNotifications' => 'I-enable ang mga Notifikasyon',
			'reminders.skipForNow' => 'Laktawan ito sa ngayon',
			'reminders.saveChanges' => 'I-save ang mga Pagbabago',
			'reminders.enabledSuccessfully' => 'Matagumpay na na-enable ang mga notifikasyon!',
			'reminders.permissionDenied' => 'Tinanggihan ang pahintulot sa notifikasyon',
			'reminders.errorEnabling' => ({required Object error}) => 'Error sa pag-enable ng mga notifikasyon: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Error sa pagkumpleto ng setup: ${error}',
			'notifications.breakfast.title' => 'Oras ng Almusal! 🍳',
			'notifications.breakfast.body' => 'Huwag kalimutang i-log ang iyong almusal',
			'notifications.lunch.title' => 'Oras ng Tanghalian! 🥗',
			'notifications.lunch.body' => 'Panahon na para i-log ang iyong tanghalian',
			'notifications.dinner.title' => 'Oras ng Hapunan! 🍽️',
			'notifications.dinner.body' => 'Huwag kalimutang i-log ang iyong hapunan',
			'notifications.snack.title' => 'Oras ng Merienda! 🍎',
			'notifications.snack.body' => 'Panahon na para sa isang malusog na merienda',
			'notifications.test.title' => 'Test Notification',
			'login.title' => 'Mag-login',
			'login.signInWithGoogle' => 'Mag-sign in gamit ang Google',
			'login.signInFailed' => 'Nabigo ang Google Sign-In o nakansela.',
			'disclaimer.pleaseNote' => 'Pakitandaan',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} ay nagbibigay ng tinatayang impormasyon sa nutrisyon. Ang katumpakan ay depende sa iyong input at mga pagkakaiba sa pagkain. Gamitin ito bilang gabay, hindi isang tiyak na mapagkukunan. Kumonsulta sa isang propesyonal para sa personalized na payo sa nutrisyon.',
			'disclaimer.snap.portionSize.title' => 'Sukat ng Bahagi',
			'disclaimer.snap.portionSize.description' => 'Ang katumpakan ng mga pagtatantya ay labis na nakasalalay sa iyong tamang pagtasa ng sukat ng bahagi.',
			'disclaimer.snap.preparationMethods.title' => 'Mga Paraan ng Paghahanda',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Ang mga paraan ng pagluluto ay maaaring makabuluhang baguhin ang nilalaman ng nutrisyon ng pagkain. Ang mga pagtatantya ng ${appLabel} ay maaaring hindi palaging isinasaalang-alang ang mga pagkakaibang ito.',
			'disclaimer.snap.ingredients.title' => 'Mga Sangkap',
			'disclaimer.snap.ingredients.description' => 'Ang mga kumplikadong ulam na may maraming nakatagong sangkap ay maaaring humantong sa mas kaunting tumpak na pagtatantya.',
			'disclaimer.snap.databaseLimitations.title' => 'Mga Limitasyon sa Database',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Ang database ng pagkain ng ${appLabel} ay malawak ngunit maaaring hindi kasama ang bawat isa o pagkakaiba ng item ng pagkain.',
			'disclaimer.weightEstimate.title' => 'Tungkol sa Tinatayang Timbang',
			'disclaimer.weightEstimate.description' => 'Ang nakatakdang pagbabago ng timbang ay isang teoretikal na pagtatantya batay sa simpleng calorie-in kumpara sa calorie-out na modelo. Ito ay inilaan lamang para sa motivational na gabay, hindi bilang isang prediksyon ng iyong aktwal na timbang.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Katumpakan ng Calorie',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Ang pagtatantyang ito ay kasing tumpak lamang ng iyong na-log na calorie na pagkain at paggasta. Ang hindi tamang pag-log ay magreresulta sa hindi tumpak na pagtataya.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Mga Biological na Salik',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Ang aktwal na pagbaba/pagtaas ng timbang ay naapektuhan ng metabolismo, hormones, tulog, stress, hydration, at iba pang indibidwal na salik na hindi kayang sukatin ng ${appLabel}.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Timbang ng Tubig at Pagbago',
			'disclaimer.weightEstimate.waterWeight.description' => 'Ang normal na pang-araw-araw na timbang ay maaaring magbago ng makabuluhang dahil sa pag-ipon ng tubig, pagtunaw, at oras. Ang pagtatantya ay hindi isinasaalang-alang ang mga pang-araw-araw na pagbabagong ito.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Propesyonal na Patnubay',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Huwag gamitin ang pagtatantyang ito upang gumawa ng mga medikal na desisyon. Palaging kumonsulta sa isang propesyonal sa kalusugan o nakarehistrong dietitian para sa personalized na payo sa pamamahala ng timbang.',
			'disclaimer.healthMetrics.description' => 'Ang mga sukat na ito ay tumutulong sa iyo na maunawaan ang mga pangangailangan ng enerhiya ng iyong katawan at itinuturo ang iyong mga layunin sa nutrisyon.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Ang Basal Metabolic Rate (BMR) ay ang bilang ng mga calorie na sinusunog ng iyong katawan kapag nagpapahinga upang mapanatili ang mga pangunahing function tulad ng paghinga at sirkulasyon. Ang BMR ay nakadepende sa iyong edad, kasarian, taas, at timbang. Ang mas mataas na BMR ay nangangahulugang ang iyong katawan ay natural na nagsusunog ng mas maraming calorie habang nagpapahinga, na kadalasang dulot ng mas maraming mass ng kalamnan, mas batang edad, o pagiging lalaki. Ang mas mababang BMR ay karaniwang nagpapahiwatig ng mas kaunting mass ng kalamnan, mas matandang edad, o pagiging babae.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Ang Total Daily Energy Expenditure (TDEE) ay ang kabuuang calorie na sinusunog mo sa isang araw, kabilang ang iyong BMR at mga calorie mula sa pisikal na aktibidad at pang-araw-araw na paggalaw. Ang TDEE ay nakadepende sa iyong BMR at antas ng aktibidad. Ang mas mataas na TDEE ay nangangahulugang mas maraming calorie ang iyong sinusunog sa kabuuan, karaniwang mula sa pagiging mas aktibo o pagkakaroon ng mas mataas na BMR. Ang mas mababang TDEE ay nagpapahiwatig ng mas kaunting aktibidad sa araw-araw o mas mababang BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Arawang Layunin',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Ang Arawang Layunin ay ang inirekomendang pang-araw-araw na calorie na kinakailangan batay sa iyong TDEE at layunin sa timbang. Para sa pagbaba ng timbang, kumakain ka ng mas kaunting calorie kaysa sa iyong TDEE. Para sa pagpapanatili ng timbang, katumbas mo ang iyong TDEE. Para sa pagtaas ng timbang, kumakain ka ng mas maraming calorie kaysa sa iyong TDEE. Tinutulungan ka nitong makamit ang iyong nais na pagbabago ng timbang sa isang malusog na takbo.',
			'disclaimer.calorieExpenditure.title' => 'Tantiyang pagkasunog ng kaloriya',
			'disclaimer.calorieExpenditure.description' => 'Kapag hindi magagamit ang data mula sa Health Connect, tinatantiya namin kung ilang kaloriya ang nasunog ngayong araw gamit ang iyong Basal Metabolic Rate (BMR) at antas ng aktibidad (TDEE), at inaangkop ito sa bahagi ng araw na lumipas.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Paano kinakalkula ang pagtatantya',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Kinakalkula namin ang iyong TDEE (batay sa iyong profile) at pinararami ito ng proporsyon ng araw na lumipas (oras + minuto) / 24 upang tantiyahin ang kaloriya na nasunog hanggang ngayon.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Propesyonal na Patnubay',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Huwag gamitin ang pagtatantyang ito bilang batayan para sa mga medikal na desisyon. Laging kumonsulta sa isang propesyonal sa pangangalagang pangkalusugan o rehistradong dietitian para sa personal na payo tungkol sa pamamahala ng timbang.',
			'common.close' => 'Isara',
			'common.kContinue' => 'Magpatuloy',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Nasisiyahan ka ba sa ${appLabel}?',
			'feedbackRating.yes' => 'Oo, nasisiyahan ako',
			'feedbackRating.no' => 'Hindi talaga',
			'feedbackRating.rateStepHeading' => 'Magbigay ng rating sa Play Store',
			'feedbackRating.emailStepHeading' => 'Magpadala ng feedback sa pamamagitan ng email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Ang isang mabilis na rating ay makakatulong sa iba na mahanap ang ${appLabel} at suportahan ang patuloy na pag-unlad nito. Maaari ka bang maglaan ng sandali upang mag-iwan ng isa?',
			'feedbackRating.shareFeedbackViaEmail' => 'Hinuhubog ng iyong feedback kung ano ang susunod — binabasa namin ang bawat mensahe. Nais mo bang ibahagi ang iyong mga saloobin sa pamamagitan ng email?',
			'feedbackRating.rateCta' => 'Mag-rate sa Play Store',
			'feedbackRating.maybeLater' => 'Mamaya na lang',
			'feedbackRating.sendFeedback' => 'Magpadala ng puna',
			'feedbackRating.noThanks' => 'Hindi, salamat',
			'feedbackRating.aboutUsDescription' => 'Ginawa nang may malasakit ng isang maliit na koponan. Nakatuon kami sa pagkapribado, sa pagiging simple, at sa pagtulong sa iyo na bumuo ng mas malusog na gawi sa pagkain.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Nais mong malaman kung sino ang nasa likod ng ${appLabel}? Tingnan ',
			'feedbackRating.aboutUsLinkLabel' => 'Tungkol sa amin',
			'feedbackRating.thankYouMessage' => 'Salamat! Tatanungin ka namin ulit sa susunod.',
			'health.syncFailed' => 'Hindi ma-synchronize sa Health Connect',
			'health.mealSynced' => 'Naka-synchronize ang pagkain sa Health Connect',
			_ => null,
		};
	}
}
