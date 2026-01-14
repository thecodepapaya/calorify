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
class TranslationsTa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ta,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ta>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsTa _root = this; // ignore: unused_field

	@override 
	TranslationsTa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTa(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'தமிழ்';
	@override String get flag => '🇮🇳';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingTa onboarding = _TranslationsOnboardingTa._(_root);
	@override late final _TranslationsTabsTa tabs = _TranslationsTabsTa._(_root);
	@override late final _TranslationsHomeTa home = _TranslationsHomeTa._(_root);
	@override late final _TranslationsHistoryTa history = _TranslationsHistoryTa._(_root);
	@override late final _TranslationsMealTa meal = _TranslationsMealTa._(_root);
	@override late final _TranslationsFavoritesTa favorites = _TranslationsFavoritesTa._(_root);
	@override late final _TranslationsProfileTa profile = _TranslationsProfileTa._(_root);
	@override late final _TranslationsHealthScoreTa healthScore = _TranslationsHealthScoreTa._(_root);
	@override late final _TranslationsEditProfileTa editProfile = _TranslationsEditProfileTa._(_root);
	@override late final _TranslationsSettingsTa settings = _TranslationsSettingsTa._(_root);
	@override late final _TranslationsRemindersTa reminders = _TranslationsRemindersTa._(_root);
	@override late final _TranslationsNotificationsTa notifications = _TranslationsNotificationsTa._(_root);
	@override late final _TranslationsLoginTa login = _TranslationsLoginTa._(_root);
	@override late final _TranslationsDisclaimerTa disclaimer = _TranslationsDisclaimerTa._(_root);
	@override late final _TranslationsCommonTa common = _TranslationsCommonTa._(_root);
	@override late final _TranslationsErrorsTa errors = _TranslationsErrorsTa._(_root);
	@override late final _TranslationsDebugTa debug = _TranslationsDebugTa._(_root);
	@override late final _TranslationsHealthTa health = _TranslationsHealthTa._(_root);
}

// Path: onboarding
class _TranslationsOnboardingTa implements TranslationsOnboardingEn {
	_TranslationsOnboardingTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel}க்கு வரவேற்கிறோம்';
	@override String get subtitle => 'AI கொண்ட உங்கள் தனிப்பட்ட ஊட்டச்சத்து துணைவன்';
	@override String get getStarted => 'தொடங்குவோம்';
	@override late final _TranslationsOnboardingFeaturesTa features = _TranslationsOnboardingFeaturesTa._(_root);
	@override late final _TranslationsOnboardingGenderTa gender = _TranslationsOnboardingGenderTa._(_root);
	@override late final _TranslationsOnboardingHeightTa height = _TranslationsOnboardingHeightTa._(_root);
	@override late final _TranslationsOnboardingWeightTa weight = _TranslationsOnboardingWeightTa._(_root);
	@override late final _TranslationsOnboardingAgeTa age = _TranslationsOnboardingAgeTa._(_root);
	@override late final _TranslationsOnboardingBmiScaleTa bmiScale = _TranslationsOnboardingBmiScaleTa._(_root);
	@override late final _TranslationsOnboardingWeightGoalTa weightGoal = _TranslationsOnboardingWeightGoalTa._(_root);
	@override late final _TranslationsOnboardingActivityLevelTa activityLevel = _TranslationsOnboardingActivityLevelTa._(_root);
	@override late final _TranslationsOnboardingHealthConnectTa healthConnect = _TranslationsOnboardingHealthConnectTa._(_root);
	@override late final _TranslationsOnboardingReinforcementTa reinforcement = _TranslationsOnboardingReinforcementTa._(_root);
}

// Path: tabs
class _TranslationsTabsTa implements TranslationsTabsEn {
	_TranslationsTabsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'டாஷ்போர்ட்';
	@override String get history => 'வரலாறு';
}

// Path: home
class _TranslationsHomeTa implements TranslationsHomeEn {
	_TranslationsHomeTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalTa dailyGoal = _TranslationsHomeDailyGoalTa._(_root);
	@override late final _TranslationsHomeDailySummaryTa dailySummary = _TranslationsHomeDailySummaryTa._(_root);
	@override late final _TranslationsHomeIntakeProgressTa intakeProgress = _TranslationsHomeIntakeProgressTa._(_root);
	@override late final _TranslationsHomeIntakeHistoryTa intakeHistory = _TranslationsHomeIntakeHistoryTa._(_root);
	@override late final _TranslationsHomeMealLogTa mealLog = _TranslationsHomeMealLogTa._(_root);
	@override late final _TranslationsHomeMealDescriptionTa mealDescription = _TranslationsHomeMealDescriptionTa._(_root);
	@override late final _TranslationsHomeFavoriteMealsTa favoriteMeals = _TranslationsHomeFavoriteMealsTa._(_root);
	@override late final _TranslationsHomeMealSnapTa mealSnap = _TranslationsHomeMealSnapTa._(_root);
	@override late final _TranslationsHomeConnectHealthTa connectHealth = _TranslationsHomeConnectHealthTa._(_root);
}

// Path: history
class _TranslationsHistoryTa implements TranslationsHistoryEn {
	_TranslationsHistoryTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'பதிவு செய்யப்பட்ட உணவுகள் இல்லை';
	@override String get emptyMessage => 'உங்கள் கடைசி உணவின் புகைப்படத்தை பதிவேற்றவும்.';
	@override String get today => 'இன்று';
	@override String get yesterday => 'நே confidently';
}

// Path: meal
class _TranslationsMealTa implements TranslationsMealEn {
	_TranslationsMealTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'ஓ நாங்கள்!';
	@override String get delete => 'அழிக்கவும்';
	@override String get editMeal => 'உணவை திருத்தவும்';
	@override String get addMeal => 'உணவைச் சேர்க்கவும்';
	@override String get saveMeal => 'உணவைச் சேமிக்கவும்';
	@override String get save => 'சேமிக்கவும்';
	@override String get mealName => 'உணவின் பெயர்';
	@override String get mealQuantity => 'உணவின் அளவு';
	@override String get mealQuantityHint => 'எடுத்துக்காட்டாக, 1 கிண்டல், 2 துண்டுகள்';
	@override String get timeOfMeal => 'உணவின் நேரம்';
	@override String get timeOfMealHint => 'சாப்பிட்ட நேரத்தைத் தேர்ந்தெடுக்கவும்';
	@override String get mealType => 'உணவின் வகை';
	@override late final _TranslationsMealNutritionTa nutrition = _TranslationsMealNutritionTa._(_root);
	@override late final _TranslationsMealDeleteConfirmationTa deleteConfirmation = _TranslationsMealDeleteConfirmationTa._(_root);
	@override String get addedToLog => 'உணவு உங்கள் பதிவில் சேர்க்கப்பட்டது!';
	@override String couldNotAdd({required Object error}) => 'உணவைச் சேர்க்க முடியவில்லை: ${error}';
	@override String get removedFromFavorites => 'பிடித்ததில் நீக்கப்பட்டது!';
	@override String get savedAsFavorite => 'உணவு பிடித்தமாகச் சேமிக்கப்பட்டது!';
	@override String couldNotUpdateFavorite({required Object error}) => 'பிடித்ததை புதுப்பிக்க முடியவில்லை: ${error}';
	@override String failedToProcess({required Object error}) => 'செயலாக்கத்தில் başarısız oldu: ${error}';
	@override String failedToProcessImage({required Object error}) => 'புகைப்படத்தை செயலாக்க முடியவில்லை: ${error}';
	@override String errorCompressingImage({required Object error}) => 'புகைப்படத்தை கしく்க ஏற்கனவே болғанால்: ${error}';
	@override String get failedToSave => 'தரவைச் சேமிக்க முடியவில்லை. தயவு செய்து மறு முயற்சி செய்யவும்.';
}

// Path: favorites
class _TranslationsFavoritesTa implements TranslationsFavoritesEn {
	_TranslationsFavoritesTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'பிடித்தவை';
	@override String get empty => 'எந்த பிடித்த உணவுகளும் இல்லை.';
}

// Path: profile
class _TranslationsProfileTa implements TranslationsProfileEn {
	_TranslationsProfileTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'சுயவிவரம்';
	@override String get noProfileData => 'சுயவிவரத் தரவுகள் கண்டுபிடிக்கப்படவில்லை';
	@override String get yourProfile => 'உங்கள் சுயவிவரம்';
	@override String get viewAndManage => 'உங்கள் ஆரோக்கியத் தகவல்களைப் பார்க்கவும் மற்றும் நிர்வகிக்கவும்';
	@override late final _TranslationsProfileSectionsTa sections = _TranslationsProfileSectionsTa._(_root);
	@override String get gender => 'பாலம்';
	@override String get height => 'ஏர்ப்பு';
	@override String get weight => 'எடை';
	@override String get age => 'வயது';
	@override String get weightGoal => 'எடை இலக்கு';
	@override String get activityLevel => 'செயல்வளம்';
	@override String get healthMetrics => 'ஆரோக்கிய அளவீடுகள்';
	@override String get notSet => 'அவை அமைக்கப்படவில்லை';
	@override String get years => 'ஆண்டுகள்';
	@override String get updatedSuccessfully => 'சுயவிவரம் வெற்றிகரமாகப் புதுப்பிக்கப்பட்டது!';
	@override late final _TranslationsProfileCalculatedValuesTa calculatedValues = _TranslationsProfileCalculatedValuesTa._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreTa implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ஆரோக்கிய மதிப்பு';
	@override String get whyThisScore => 'இந்த மதிப்பு ஏன்?';
	@override String get note => 'இந்த மதிப்பு கண்டறியப்பட்ட பொருட்கள் மற்றும் ஊட்டச்சத்து அடர்த்தியின் அடிப்படையில் AI மதிப்பு ஆகும். உணவு ஆலோசனைகளுக்கு எந்த நேரத்தில் ஒரு வணிக பதிவு அல்ல.';
	@override String get unhealthy => 'அருவருப்பானது';
	@override String get healthy => 'ஆரோக்கியமானது';
	@override String get neutral => 'இருப்பிலா';
}

// Path: editProfile
class _TranslationsEditProfileTa implements TranslationsEditProfileEn {
	_TranslationsEditProfileTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'சுயவிவரம் திருத்தவும்';
	@override late final _TranslationsEditProfileSectionsTa sections = _TranslationsEditProfileSectionsTa._(_root);
	@override String get gender => 'பாலம்';
	@override String get dateOfBirth => 'பிறந்த தேதி';
	@override String get height => 'ஏர்ப்பு';
	@override String get weight => 'எடை';
	@override String get weightGoal => 'எடை இலக்கு';
	@override String get activityLevel => 'செயல்வளம்';
	@override String get metric => 'அளவீடு';
	@override String get imperial => 'ஐம்பிரல்';
	@override String get metricCm => 'அளவீடு (செமீ)';
	@override String get imperialFtIn => 'ஐம்பிரல் (அடி/இன்ச்)';
	@override String get metricKg => 'அளவீடு (கிளோ)';
	@override String get imperialLbs => 'ஐம்பிரல் (பவுண்ட்)';
	@override late final _TranslationsEditProfileGendersTa genders = _TranslationsEditProfileGendersTa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsTa weightGoals = _TranslationsEditProfileWeightGoalsTa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsTa activityLevels = _TranslationsEditProfileActivityLevelsTa._(_root);
}

// Path: settings
class _TranslationsSettingsTa implements TranslationsSettingsEn {
	_TranslationsSettingsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'அமைப்புகள்';
	@override late final _TranslationsSettingsSectionsTa sections = _TranslationsSettingsSectionsTa._(_root);
	@override late final _TranslationsSettingsEditProfileTa editProfile = _TranslationsSettingsEditProfileTa._(_root);
	@override late final _TranslationsSettingsLanguageTa language = _TranslationsSettingsLanguageTa._(_root);
	@override late final _TranslationsSettingsHeightUnitTa heightUnit = _TranslationsSettingsHeightUnitTa._(_root);
	@override late final _TranslationsSettingsWeightUnitTa weightUnit = _TranslationsSettingsWeightUnitTa._(_root);
	@override late final _TranslationsSettingsMealRemindersTa mealReminders = _TranslationsSettingsMealRemindersTa._(_root);
	@override late final _TranslationsSettingsThemeTa theme = _TranslationsSettingsThemeTa._(_root);
	@override late final _TranslationsSettingsSendFeedbackTa sendFeedback = _TranslationsSettingsSendFeedbackTa._(_root);
	@override late final _TranslationsSettingsClearAllDataTa clearAllData = _TranslationsSettingsClearAllDataTa._(_root);
	@override late final _TranslationsSettingsDebugOptionsTa debugOptions = _TranslationsSettingsDebugOptionsTa._(_root);
	@override String get developerModeEnabled => 'முன்னணி முறை செயல்படுத்தப்பட்டது!';
}

// Path: reminders
class _TranslationsRemindersTa implements TranslationsRemindersEn {
	_TranslationsRemindersTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'நினைவூட்டிகளுடன் மிகவும் நன்றாக இருக்குங்கள்';
	@override String get description => 'உங்கள் உணவுகளை பதிவுசெய்ய மாறுபட்ட நினைவூட்டிகளைப் பெறுங்கள்';
	@override String get notificationsEnabled => 'அறிக்கைகள் இயக்கப்பட்டது';
	@override String get notificationsDisabled => 'அறிக்கைகள் செயல்படுத்தப்படவில்லை';
	@override String get enabledSubtitle => 'நீங்கள் உணவு நினைவூட்டிகளைப் பெறுவீர்கள்';
	@override String get disabledSubtitle => 'உணவு நினைவூட்டிகளைப் பெறப் பதிவுகள் புரிந்து கொள்ளுங்கள்';
	@override String get mealReminders => 'உணவு நினைவூட்டிகள்';
	@override String get breakfast => 'காலை உணவு';
	@override String get lunch => 'மதிய உணவு';
	@override String get dinner => 'மாலை உணவு';
	@override String get snack => 'நகரம்';
	@override String get unknown => 'தெரியவில்லை';
	@override String get change => 'மாற்றவும்';
	@override String get enableNotifications => 'அறிக்கைகளை இயக்கவும்';
	@override String get skipForNow => 'இப்போது தாண்டவும்';
	@override String get saveChanges => 'மாற்றங்களைச் சேமிக்கவும்';
	@override String get enabledSuccessfully => 'தொடக்கக்கூறுகள் வெற்றிகரமாக இயக்கப்பட்டுள்ளது!';
	@override String get permissionDenied => 'அறிக்கையின் அனுமதி நிராகரிக்கப்பட்டது';
	@override String errorEnabling({required Object error}) => 'அறிக்கைகளை இயக்கும் போது பிழை: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'அமைப்பை நிறைவேற்றுவதில் பிழை: ${error}';
}

// Path: notifications
class _TranslationsNotificationsTa implements TranslationsNotificationsEn {
	_TranslationsNotificationsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastTa breakfast = _TranslationsNotificationsBreakfastTa._(_root);
	@override late final _TranslationsNotificationsLunchTa lunch = _TranslationsNotificationsLunchTa._(_root);
	@override late final _TranslationsNotificationsDinnerTa dinner = _TranslationsNotificationsDinnerTa._(_root);
	@override late final _TranslationsNotificationsSnackTa snack = _TranslationsNotificationsSnackTa._(_root);
	@override late final _TranslationsNotificationsTestTa test = _TranslationsNotificationsTestTa._(_root);
}

// Path: login
class _TranslationsLoginTa implements TranslationsLoginEn {
	_TranslationsLoginTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'உள்நுழைக';
	@override String get signInWithGoogle => 'Google மூலம் உள்நுழைக';
	@override String get signInFailed => 'Google உள்நுழைவு தோல்வியடைந்தது அல்லது நிறுத்தப்பட்டது.';
}

// Path: disclaimer
class _TranslationsDisclaimerTa implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'தயவுசெய்து கவனிக்கவும்';
	@override late final _TranslationsDisclaimerSnapTa snap = _TranslationsDisclaimerSnapTa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateTa weightEstimate = _TranslationsDisclaimerWeightEstimateTa._(_root);
}

// Path: common
class _TranslationsCommonTa implements TranslationsCommonEn {
	_TranslationsCommonTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get close => 'இறுதியில்';
	@override String get kContinue => 'முடிவில்லாமல்';
}

// Path: errors
class _TranslationsErrorsTa implements TranslationsErrorsEn {
	_TranslationsErrorsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'சுயவிவரத் தரவுகளை ஏற்றுவதில் பிழை';
	@override String get somethingWentWrong => 'ஒரு பிழை ஏற்பட்டது.';
}

// Path: debug
class _TranslationsDebugTa implements TranslationsDebugEn {
	_TranslationsDebugTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'பிழை சோதனை விருப்பங்கள்';
	@override late final _TranslationsDebugSectionsTa sections = _TranslationsDebugSectionsTa._(_root);
	@override String get showActiveNotifications => 'செயல்பாட்டில் உள்ள அறிவிப்புகள் காண்பிக்கவும்';
	@override String get scheduleTestNotification => 'சோதனை அறிவிப்பு திட்டமிடுங்கள் (10 வினாடிகள்)';
	@override String get triggerBreakfastNotification => 'காலை உணவுக்கான அறிவிப்பை ஊக்கவும்';
	@override String get cancelAllNotifications => 'எல்லா அறிவிப்புகளையும் ரத்து செய்யவும்';
	@override String get activeNotifications => 'செயல்பாட்டில் உள்ள அறிவிப்புகள்';
	@override String get noTitle => 'தலைப்பு இல்லை';
	@override String get noBody => 'உட்பொருள் இல்லை';
	@override String get fetchTodaysSteps => 'இன்றைய படிகளை எடுக்கவும்';
	@override String get fetchTodaysCalories => 'இன்றைய கலோரிகளை எடுக்கவும்';
	@override String get fetchLatestWeight => 'சமீபத்திய எட்டையை எடுக்கவும்';
	@override String get fetchLatestHeight => 'சமீபத்திய உயரத்தை எடுக்கவும்';
	@override String get writeTestWeight => 'சோதனை எடை (70kg) எழுதுங்கள்';
	@override String get writeTestHeight => 'சோதனை உயரத்தை (175cm) எழுதுங்கள்';
	@override String get syncLast7Days => 'கடந்த 7 நாட்கள் ஒத்திசைக்கவும்';
	@override String get sync7DaysTitle => '7-ந்தின ஒத்திசைப்பு';
	@override String get checkCurrentLocale => 'தற்போதைய உள்ளூர் நிலையைச் சரிபார்க்கவும்';
	@override String get currentLocale => 'தற்போதைய உள்ளூர் நிலை';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'மொழி: ${languageCode}\nநாடு: ${countryCode}\nஅலகு முறை: ${unitSystem}';
	@override String get latestWeight => 'சமீபத்திய எடை';
	@override String get latestHeight => 'சமீபத்திய உயரம்';
	@override String get todaysCalories => 'இன்றைய கலோரி';
	@override String totalCaloriesBurned({required Object calories}) => 'மொத்தம் எரியூறுகள்: ${calories}';
	@override String syncSuccess({required Object count}) => 'கடந்த 7 நாட்களில் ${count} தரவுப் புள்ளிகளை வெற்றிகரமாகப் FETCH செய்தது.';
	@override String get noWeightData => 'கடந்த 30 நாட்களில் எடைக் தகவல்கள் கிடையாது.';
	@override String get noHeightData => 'கடந்த என்னும் அளவீட்டின் தரவுகள் கிடையாது.';
	@override String get noCalorieData => 'இன்று கலோரி தரவுகள் கிடையாது.';
	@override String get weightWritten => 'சோதனை எடை (70kg) வெற்றியுடன் எழுதப்பட்டது.';
	@override String get weightWriteFailed => 'சோதனை எடையை எழுத முடியவில்லை.';
	@override String get heightWritten => 'சோதனை உயரம் (175cm) வெற்றியுடன் எழுதப்பட்டது.';
	@override String get heightWriteFailed => 'சோதனை உயரத்தை எழுத முடியவில்லை.';
	@override String get noNotifications => 'செயல்பாட்டில் அறிவிப்புகள் இல்லை.';
	@override String get testNotificationScheduled => '10 செகண்டுகளில் சோதனை அறிவிப்பு திட்டமிடப்பட்டு உள்ளது.';
	@override String get testNotificationBody => '10 செகண்டுகளுக்குப் பிறகு இதுவொரு சோதனை அறிவிப்பு.';
	@override String get breakfastNotificationTriggered => 'காலை உணவுக்கான அறிவிப்பு ஊக்கப்பட்டுள்ளது.';
	@override String get allNotificationsCancelled => 'எல்லா அறிவிப்புகளும் ரத்து செய்யப்பட்டுள்ளது.';
	@override String get fetchingData => 'கடந்த 7 நாட்களுக்கு தரவைப் பெறுகிறது...';
	@override String id({required Object id}) => 'ID: ${id}';
}

// Path: health
class _TranslationsHealthTa implements TranslationsHealthEn {
	_TranslationsHealthTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect உடன் ஒத்திசைக்க முடியவில்லை';
	@override String get mealSynced => 'உணவு Health Connect உடன் ஒத்திசைக்கப்பட்டது';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesTa implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionTa foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionTa._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisTa aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisTa._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationTa healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationTa._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderTa implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'உங்கள் பாலினம் என்ன?';
	@override String get description => 'பாலினம் உங்கள் அடிப்படை அதன் மாறிகளைக் கணிக்க உதவுகிறது (BMR).';
	@override String get next => 'அடுத்தது';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightTa implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'நீங்கள் எவ்வளவு உயரமானவராக இருக்கிறீர்கள்?';
	@override String get description => 'உங்கள் உயரம், உங்கள் BMI மற்றும் சக்தி தேவைகளை சரியாகக் கணிக்க உதவுகிறது.';
	@override String get metric => 'அளவீடு';
	@override String get imperial => 'அமைப்பியல்';
	@override String get next => 'அடுத்தது';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightTa implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'உங்கள் தற்போதைய எடை என்ன?';
	@override String get currentDescription => 'உங்கள் தற்போதைய எடை, உங்கள் தினசரி இலக்குகளை தனிப்பயனாக்குவதற்குப் மிக முக்கியம்.';
	@override String get targetTitle => 'உங்கள் இலக்கு எடை என்ன?';
	@override String get targetDescription => 'ஒரு இலக்கு எடை அமைப்பது, உங்கள் நீண்டகாலத் திட்டத்தை நிர்ணயிக்க உதவுகிறது.';
	@override String get metric => 'அளவீடு';
	@override String get imperial => 'அமைப்பியல்';
	@override String get next => 'அடுத்தது';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeTa implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'உங்கள் பிறந்த நாள் எப்போது?';
	@override String get description => 'உங்கள் வயது, நீங்கள் எவ்வளவு கைலோரி தேவை என்பதை சரியாகக் கணிக்க உதவுகிறது.';
	@override String get next => 'அடுத்தது';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleTa implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'குறைவான எடை';
	@override String get healthy => 'ஆரோக்கியமான';
	@override String get overweight => 'கரும்பொழுது';
	@override String get obese => 'கொட்டிய';
	@override late final _TranslationsOnboardingBmiScaleCategoriesTa categories = _TranslationsOnboardingBmiScaleCategoriesTa._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesTa messages = _TranslationsOnboardingBmiScaleMessagesTa._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalTa implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'உங்கள் குறிக்கோள் என்ன?';
	@override String get description => 'நீங்கள் அடைய விரும்பும் குறிக்கோளை தேர்வு செய்யவும்';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelTa implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'நீங்கள் எவ்வளவு செயல்படுகிறீர்கள்?';
	@override String get description => 'இது உங்கள் தினசரி கைலோரி தேவைகளை மிகவும் சரியாகக் கணிக்க உதவுகிறது';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectTa implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect உடன் இணைக்கவும்';
	@override String get description => 'மேலளவு தகவல்களுக்காக உங்கள் ஆரோக்கிய தரவுகளை ஒத்திசைக்கவும் மற்றும் தானியங்கி எடை கணக்கீட்டை பெறவும்';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingTa automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingTa._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsTa progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsTa._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationTa seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationTa._(_root);
	@override String get connected => 'Health Connect இணைக்கப்பட்டது';
	@override String get notConnected => 'Health Connect இணைக்கப்படவில்லை';
	@override String get setup => 'Health Connect அமைக்கவும்';
	@override String get skipForNow => 'தற்காலிகமாக தவிர்த்து';
	@override String get statusConnected => 'Health Connect இணைக்கப்பட்டுள்ளது.';
	@override String get statusSuccess => 'Health Connect வெற்றிகரமாக இணைக்கப்பட்டுள்ளது!';
	@override String statusPermissionDenied({required Object appLabel}) => 'அனுமதி மறுக்கப்பட்டது. ${appLabel} க்கான உங்கள் போனை உள்ளமைப்புகளில் Health Connect அனுமதிகளை இயக்கவும்.';
	@override String statusError({required Object error}) => 'Health Connect அமைப்பில் பிழை: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementTa implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessTa trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessTa._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileTa healthProfile = _TranslationsOnboardingReinforcementHealthProfileTa._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleTa goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleTa._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalTa implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'உங்கள் தினசரி இலக்கத்தை அமைக்கவும்';
	@override String get titleSet => 'உங்கள் தினசரி இலக்கு';
	@override String get description => 'உங்கள் நல்வாழ்வின் பயணத்தை தொடங்க தயாரா? கீழே உங்கள் தினசரி கலோரி இலக்கத்தை அமைக்கவும்.';
	@override String get descriptionSet => 'உங்கள் நோக்கம் அமைக்கப்பட்டுள்ளது! இது உங்களை வழிநடத்தும் உங்கள் தினசரி கலோரி இலக்கு.';
	@override String get yourGoal => 'உங்கள் இலக்கு';
	@override String get dailyCalories => ' தினசரி கலோரி (kcal)';
	@override String get setGoal => 'இலக்கத்தை அமைக்கவும்';
	@override String get intake => 'உள்ளமை';
	@override String get burned => 'அழிக்கப்படும்';
	@override String get weightImpact => 'எடைப் பாதிப்பு';
	@override String get estLoss => 'கணிக்கையிட்ட இழப்பு';
	@override String get estGain => 'கணிக்கையிட்ட தரவு';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryTa implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'தினசரி சுருக்கம்';
	@override String get calories => 'கலோரி';
	@override String get carbs => 'கார்ப்ஸ்';
	@override String get protein => 'புரதம்';
	@override String get fat => 'மொழி';
	@override String get fiber => 'ஊறுகாய்';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressTa implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'இன்றைய Macro பகுப்பு';
	@override String get target => 'இலக்கு';
	@override String get current => 'தற்போதைய';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryTa implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => '7-ந்தின Macro வரலாறு';
	@override String get noHistoryYet => 'எந்த வரலாறும் இல்லை';
	@override String get startLogging => 'உங்கள் 7-ந்தின macro தகவல்களை burada görmek için öğünleri kaydetmeye başlayın';
}

// Path: home.mealLog
class _TranslationsHomeMealLogTa implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => ' பதிவு செய்யப்பட்ட உணவுகள்';
	@override String get emptyMessage => 'உங்கள் கடைசி உணவின் புகைப்படத்தை பதிவேற்றவும்.';
	@override String get noMealsToday => 'இன்று பதிவு செய்யப்பட்ட உணவுகள் இல்லை';
	@override String get seeAllMeals => 'எல்லா உணவுகளையும் காண்க';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionTa implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI உடன் விரைவு சேர்க்கவும்';
	@override String get description => 'உங்கள் உணவை விவரிக்கவும், AI விவரங்களை கையாளவிடுங்கள்.';
	@override String get hint => 'எடுத்துக்காட்டாக, நான் காலை உணவாக ஒரு பெரிய ஓட்டமணுவில் நண்டு மற்றும் ஒரு பிளவு வாழைப்பழம் கொண்டிருந்தேன் ...';
	@override String get analyzeMeal => 'உணவை பரிசீலிக்கவும்';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsTa implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'மிகவும் பிடித்த உணவுகள்';
	@override String get description => 'உங்கள் மிகவும் பிடித்த உணவுகளை விரைவாகச் சேர்க்கவும்.';
	@override String get noFavorites => 'எந்த பிடித்த உணவுகளும் இல்லை.';
	@override String get addFavoriteHint => 'ஒரு உணவின் நடைப்படியை சொடுக்கி அதை பிடித்ததாகக் குறிக்கவும்.';
	@override String get seeAll => 'எல்லா உணவுகளையும் காண்க';
	@override String get add => 'சேர்க்கவும்';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapTa implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'உங்கள் உணவின் புகைப்படம் எடுக்கவும் மற்றும் பதிவேற்றவும்';
	@override String get description => 'AI பகுப்பாய்விற்காக உங்கள் உணவின் புகைப்படத்தை எடுக்க உங்கள் கேமராவைப் பயன்படுத்தவும்.';
	@override String get openCamera => 'கேமரா திறக்கவும்';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthTa implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect உடன் இணைக்கவும்';
	@override String get description => 'உங்கள் உணவு தரவுகளை Health Connect உடன் இணைக்கவும்';
	@override String get install => 'நிறுவவும்';
	@override String get connect => 'இணைக்கவும்';
}

// Path: meal.nutrition
class _TranslationsMealNutritionTa implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get calories => 'கலோரி';
	@override String get carbs => 'கார்ப்ஸ் (g)';
	@override String get protein => 'புரதம் (g)';
	@override String get fat => 'கொௌச்சு (g)';
	@override String get fiber => 'ஊறுகாய் (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationTa implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'உணவை அழிக்கவும்';
	@override String get message => 'இந்த உணவின் பதிவுகளை அழிக்க உறுதியாக இருக்கிறீர்களா?';
	@override String get cancel => 'உறுதிப்படுத்தாது';
	@override String get delete => 'அழிக்கவும்';
}

// Path: profile.sections
class _TranslationsProfileSectionsTa implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'சுயவிவரம்';
	@override String get basicInformation => 'அடிப்பக தகவல்';
	@override String get goalsAndActivity => 'இலக்குகள் மற்றும் செயலிகள்';
	@override String get calculatedValues => 'கணிக்கையிட்ட மதிப்புகள்';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesTa implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'தினசரி இலக்கு';
	@override String get calPerDay => 'cal/தினம்';
	@override String get notAvailable => 'கிடையாது';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsTa implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'நபர் தகவல்கள்';
	@override String get physicalMeasurements => 'உயர்மட்ட அளவீடுகள்';
	@override String get goalsAndActivity => 'இலக்குகள் மற்றும் செயலிகள்';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersTa implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get male => 'ஆண்';
	@override String get female => 'பெண்';
	@override String get other => 'மற்றவை';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsTa implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightTa loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightTa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightTa maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightTa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightTa gainWeight = _TranslationsEditProfileWeightGoalsGainWeightTa._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsTa implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryTa sedentary = _TranslationsEditProfileActivityLevelsSedentaryTa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveTa lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveTa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveTa moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveTa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveTa veryActive = _TranslationsEditProfileActivityLevelsVeryActiveTa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveTa extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveTa._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsTa implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'சுயவிவரம்';
	@override String get localization => 'உள்ளூர்த்துவம்';
	@override String get notifications => 'அறிக்கைகள்';
	@override String get supportAndLegal => 'ஊக்கமும் சட்டங்களும்';
	@override String get dangerZone => 'அபாய ஊழல்';
	@override String get developer => 'முன்னணி';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileTa implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'சுயவிவரம் திருத்தவும்';
	@override String get subtitle => 'உங்கள் நபர் தகவல்களை புதுப்பிக்கவும்';
}

// Path: settings.language
class _TranslationsSettingsLanguageTa implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'மொழி';
	@override String get subtitle => 'உங்கள் விருப்ப மொழியைத் தேர்ந்தெடுங்கள்';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitTa implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ஏர் அலகு';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitTa implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'எடை அலகு';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersTa implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'உணவு நினைவூட்டிகள்';
	@override String get subtitle => 'நேரத்திற்கு ஏற்ப எச்சரிக்கை உதவுங்கள்';
}

// Path: settings.theme
class _TranslationsSettingsThemeTa implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'தீம்';
	@override String get subtitle => 'உங்கள் விருப்ப தீமையைத் தேர்ந்தெடுக்கவும்';
	@override String get light => 'ஒளி';
	@override String get dark => 'கருப்பு';
	@override String get system => 'கோட்பாடு';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackTa implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'கருத்துப்பரிமாற்றம் அனுப்பு';
	@override String subtitle({required Object appLabel}) => '${appLabel} ஐ மேம்படுத்த உதவவும்';
	@override String emailSubject({required Object appLabel}) => '${appLabel} பயன்பாட்டின் கருத்து';
	@override String get emailBodyPrefix => 'தயவுசெய்து கீழே உங்கள் கருத்துகளை வழங்கவும்:';
	@override String get appVersion => 'பயன்பாட்டு பதிப்பு';
	@override String get device => 'கருவி';
	@override String get osVersion => 'OS பதிப்பு';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataTa implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'எல்லா தரவுகளை அகத்து';
	@override String get subtitle => 'முடிவாணியில் உங்கள் அனைத்து தகவல்களையும் அழிக்கவும்';
	@override String get confirmationTitle => 'எல்லா தரவுகளை அகத்து?';
	@override String get confirmationMessage => 'இந்த நடவடிக்கை ரத்து செய்யப்படாது. உங்கள் பதிவு செய்யப்பட்ட உணவுகள், பிடிப்புகளும், சுயவிவரம் அமைப்புகளும் நிரந்தரமாக அழிக்கப்படும்.';
	@override String get cancel => 'ரத்து செய்';
	@override String get clearEverything => 'எல்லாமே அகத்து';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsTa implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'பிழை சோதனை விருப்பங்கள்';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastTa implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'காலை உணவு நேரம்! 🍳';
	@override String get body => 'உங்கள் காலை உணவினை பதிவு செய்ய மறக்காதீர்கள்';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchTa implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'மதிய உணவு நேரம்! 🥗';
	@override String get body => 'உங்கள் மதிய உணவை பதிவு செய்ய வேண்டிய நேரம்';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerTa implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'மாலை உணவு நேரம்! 🍽️';
	@override String get body => 'உங்கள் மாலை உணவினை பதிவு செய்ய மறக்காதீர்கள்';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackTa implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'நகரம் நேரம்! 🍎';
	@override String get body => 'சுகமான சிற்றுண்டிக்கு நேரம்';
}

// Path: notifications.test
class _TranslationsNotificationsTestTa implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'சோதனை அறிப்பு';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapTa implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} கணிக்கையான ஊட்டச்சத்துக்களை வழங்குகிறது. துல்லியமானது உங்கள் உள்ளீடு மற்றும் உணவு மாறுபாடுகளுக்கேற்ப निर्भर செய்கின்றது. இது ஒரு வழிகாட்டியாகவும், உறுதி ஆதாரமாகவும் பயன்படுத்துவதை தவிர்க்கவும்.';
	@override late final _TranslationsDisclaimerSnapPortionSizeTa portionSize = _TranslationsDisclaimerSnapPortionSizeTa._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsTa preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsTa._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsTa ingredients = _TranslationsDisclaimerSnapIngredientsTa._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsTa databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsTa._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateTa implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'எடை மதிப்பீட்டின் சோம்சம்';
	@override String get description => 'கல்வியில் செலவழியாத உயிருக்குள் வரையறுக்கப்பட்ட பரிந்துரைகளை தரும் மற்றும் உங்கள் நல்ல முறையில் ஏற்கனவே தேவைப்படும் மற்றும் முதல் பதவியின் முதல் பதவியின் மீதான அளவீட்டு கேள்விகளையே கோடிட்டுநிரலாகியிருக்கின்றன. இதற்கு ஒரு பரிந்துரை மற்றும் உண்மையான எடையின் எதிர்பார்ப்பு இல்லை என்பதைக் குறிக்க நினைக்கிறேன்.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyTa calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyTa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsTa biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsTa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightTa waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightTa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTa professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTa._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsTa implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'அறிக்கைகள்';
	@override String get healthConnect => 'ஆரோக்கிய இணைப்பு';
	@override String get appInfo => 'எழுதுகை தகவல்';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionTa implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'சின்னம் உணவு அடையாளம்';
	@override String get description => 'ஒரு புகைப்படத்தை எடுத்து AI உங்களுடைய உணவை அடையாளம் காணச் சொல்லுங்கள்';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisTa implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI ஆய்வு';
	@override String get description => 'உங்களுடைய விவரங்களில் இருந்து உடனடி ஊட்டச்சத்து தகவல்களை பெறுங்கள்';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationTa implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ஆரோக்கிய இணைப்பு';
	@override String get description => 'மேலதிக தகவல்களுக்காக Health Connect உடன் தொடர்பு கொள்ளுங்கள்';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesTa implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'குறைவான எடை';
	@override String get healthyWeight => 'ஆரோக்கியமான எடை';
	@override String get overweight => 'கரும்பொழுது';
	@override String get obese => 'கொட்டிய';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesTa implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'நாங்கள் உங்களுக்கு ஊட்டச்சத்தினால் நிறைந்த உணவுகளுடன் ஒரு ஆரோக்கியமான திட்டத்தை உருவாக்க உதவுகிறோம்.';
	@override String get healthy => 'சிறந்த வேலை! நீங்கள் ஆரோக்கியமான அளவையில் இருக்கிறீர்கள். உங்கள் உயிர்த்திட்டங்களை மற்றும் சக்தி நிலைகளை பராமரிக்க நாங்கள் உங்களை உதவுவோம்.';
	@override String overweight({required Object appLabel}) => '${appLabel} உங்கள் இலக்குகளை வசதியாக அடைய உதவ AI அடிப்படையிலான கண்காணிப்பை எளிதாக்கும்.';
	@override String get obese => 'உங்கள் ஆரோக்கியக் குறிக்கோள்களுக்கு தனிப்பயனாக்கப்பட்ட வழிகாட்டுதலுடன் மற்றும் நிலைநிறுத்தப்பட்ட நடவடிக்கைகளுடன் உங்கள் ஆதரவு கேட்கிறோம்.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingTa implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'தானியங்கி கைலோரி கண்காணிப்பு';
	@override String get description => 'உங்கள் உடற்பயிற்சி செயலிகளின் மூலம் எரியப்பட்ட கைலோரிகளை கண்காணிக்கவும்';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsTa implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'முன்னேற்றத்தைப் பற்றிய தகவல்கள்';
	@override String get description => 'உங்கள் ஆரோக்கிய உலாவல்களுக்கு விவரமான தகவல்களைப் பெறுங்கள்';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationTa implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'சேர்க்கை';
	@override String get description => 'உங்கள் கைவினை செயலிகளிலிருந்து தரவுகளை ஒத்திசைக்கவும்';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessTa implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'நீங்கள் ஒரே தனியாக இல்லை';
	@override String get genericMessage => 'நிதானமான கண்காணிப்பு நீண்டகால வெற்றிக்கான #1 கணிக்கையாளரானது என்பதை ஆராய்ச்சி காட்டுகிறது.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'ஒரு ${age} வயதான ${gender} ${goal} அடைய, நிதானமான கண்காணிப்பு வெற்றிக்கான #1 கணிக்கையாளரானது.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} இது கைமுறை செய்வதை விட 10 மடங்கு எளிமையாகக் க செய்துள்ளது.';
	@override String get getStartedTitle => 'தொடங்க தயாரா?';
	@override String get tipPhoto => 'உங்களுடைய உணவுகளின் புகைப்படத்தை எடுத்து உடனடி ஆய்வுக்காக அனுப்புங்கள்';
	@override String get tipConsistency => 'அற்புதமான முன்னேற்றத்தை காண நேர் நிராகரிக்கவும்';
	@override String get tipProgress => 'உங்கள் முன்னேற்றத்தை நாட்காணலாம்';
	@override String get button => 'போயிலை செய்க';
	@override String get defaultGender => 'மனிதன்';
	@override String get defaultGoal => 'ஆரோக்கியமான நீங்கள்';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileTa implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'உங்கள் ஆரோக்கிய சுருக்கம்';
	@override String bmiDescription({required Object bmi}) => 'உங்கள் அளவுகோல்களின் அடிப்படையில், உங்கள் BMI ${bmi} ஆக உள்ளது.';
	@override String get finalizeDescription => 'உங்கள் அனுபவத்தை தனிப்பயனாக்க உங்கள் சுருக்கத்தை இறுதி செய்யுங்கள்.';
	@override String get goalGain => 'பெறுதல்';
	@override String get goalLose => 'இழப்பு';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'உங்கள் இலக்கை அடைய, நீங்கள் ${direction} ${diff} ${unit} செய்ய வேண்டும்.';
	@override String get goalReached => 'நீங்கள் உங்கள் இலக்கு எடையில் இருக்கிறீர்கள்! அதை பராமரிக்க நாம் உங்களுக்கு உதவுவோம்.';
	@override String get button => 'போயிலை செய்க';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleTa implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'சிறந்த தொடக்கம்!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'நீங்கள் ${goalText} நோக்கில் முதல் படியை எடுத்துள்ளீர்கள். நீங்கள் ${activityText} ஆக இருப்பதால், ${appLabel} உங்கள் இலக்குகளை உங்கள் வாழ்க்கைமுறைக்கு ஏற்ப மாற்றும்.';
	@override String get personalizedTargets => 'தனிப்பயனாக்கப்பட்ட கைலோரி இலக்குகள்';
	@override String get aiMealDetection => 'AI அடிப்படையிலான உணவுப் படிமங்களை கண்டறிதல்';
	@override String get macroBreakdowns => 'விவரமான மாக்ரோ-உண்வளங்கள்';
	@override String get button => 'போயிலை செய்க';
	@override String get defaultGoal => 'உங்கள் இலக்குகள்';
	@override String get defaultActivity => 'செயல்படும்';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightTa implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get name => 'எடையை குறைக்கவும்';
	@override String get description => 'எடையை குறைக்க கலோரி குறைவு உருவாக்கவும்';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightTa implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get name => 'எடையை பராமரிக்கவும்';
	@override String get description => 'இன்றைய எடையைப் பராமரிக்கவும்';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightTa implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get name => 'எடையை அதிகரிக்கவும்';
	@override String get description => 'எடையை அதிகரிக்க கலோரி அதிகரிப்பு உருவாக்கவும்';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryTa implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get name => 'நிறுத்தப்பட்ட';
	@override String get description => 'இன்னும் பயிற்சிகள் இல்லை';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveTa implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get name => 'இக்காலக்கூடிய';
	@override String get description => 'எழுத்துப்பணி 1-3 நாட்கள்/வீட்டில்';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveTa implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get name => 'மிதமான செயல்பாட்டிருத்தங்களை';
	@override String get description => 'மிதமான பயிற்சிகள் 3-5 நாட்கள்/வீட்டில்';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveTa implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get name => 'மிக்க செயல்பாட்டிருத்தங்கள்';
	@override String get description => 'தீவிர பயிற்சிகள் 6-7 நாட்கள்/வீட்டில்';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveTa implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get name => 'மிகவும் செயல்பாட்டிருத்தங்கள்';
	@override String get description => 'மிகவும் கடுமையான பயிற்சி, உடல் வேலை';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeTa implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'பார்சன் அளவு';
	@override String get description => 'கணிக்கையிடப்பட்ட மதிப்புகளின் துல்லியமான அளவு உங்கள் சரியான அளவீட்டின் மீது ஆழ்மையுள்ளே வெறுமனே இதற்கேற்ப பெறுகிறது.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsTa implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'செயலாக்க முறைகள்';
	@override String description({required Object appLabel}) => 'சமைக்கும் முறைகள் உணவின் ஊட்டச்சத்து உள்ளடக்கம் மிகவும் மாற்றமளிக்கலாம். ${appLabel} உருப்படிகள் எப்போதும் இந்த மாறுபாடுகளை கணிக்கமாட்டாது.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsTa implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'பொருட்கள்';
	@override String get description => 'மறைக்கப்பட்ட பல வகை உணவுகள் கழிக்கப்படலாம். அது ஈடு இல்லாவாகவும், உணவின் மதிப்பை கணிக்கல்முறை பெறுகிறது.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsTa implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'தரவள்ளியூடகம் வரையறைகள்';
	@override String description({required Object appLabel}) => '${appLabel} உணவு தரவுத்தொகுப்பு பரந்தது ஆக இருக்கின்றது, ஆனால் பரந்தவையாக எந்த உணவுகள் மற்றும் வகைகள் இருக்காது.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyTa implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'கலோரி துல்லியம்';
	@override String get description => 'இந்த மதிப்பு உங்கள் பதிவு செய்யப்பட்ட கலோரி உள்ளீடுகளின் மீது இன்பமும் குறிகளும் உண்மையாக விரைவில் உறுதியாக இருக்கிறார்.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsTa implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'உயிரியல் காரணங்கள்';
	@override String description({required Object appLabel}) => 'உண்மையான எடையின் இழப்புகள் அல்லது பயன்கள் உங்கள் மாதவிடாயான யோகங்கள், உறவுகள், உறவுகள், அசப்புப் பாம்புகள் அல்லது மற்றதாகக் கொண்டு வாங்கப்படும் போது கிடைக்கும் முறைகள். ${appLabel} இந்த அளவுகளை அளிக்க முடியாது.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightTa implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'உயிர்வளா எடை மற்றும் மாறுபாடுகள்';
	@override String get description => 'சாதாரம் நாள் வேதியியல் மூலம் மாற்றப்படலாம். இந்த அளவுகள் இந்த நாட்களுக்கு இடையில் மாறுபட்டுள்ளால் குறிக்கவில்லை.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTa implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceTa._(this._root);

	final TranslationsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'தொடர்பான வழிமுறை';
	@override String get description => 'இந்த மதிப்பீட்டை மருத்துவ முடிவுகளை உருவாக்கப் பயன்படுத்தக்கூடாது. நானும் ஒரு மருத்துவ நிபுணர் அல்லது பதிவு செய்யப்பட்ட சீர்திருத்தத்தின் அணியோடு உருப்படி கொள்கைகளைப் பெறவும்.';
}

/// The flat map containing all translations for locale <ta>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'தமிழ்',
			'flag' => '🇮🇳',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel}க்கு வரவேற்கிறோம்',
			'onboarding.subtitle' => 'AI கொண்ட உங்கள் தனிப்பட்ட ஊட்டச்சத்து துணைவன்',
			'onboarding.getStarted' => 'தொடங்குவோம்',
			'onboarding.features.foodRecognition.title' => 'சின்னம் உணவு அடையாளம்',
			'onboarding.features.foodRecognition.description' => 'ஒரு புகைப்படத்தை எடுத்து AI உங்களுடைய உணவை அடையாளம் காணச் சொல்லுங்கள்',
			'onboarding.features.aiAnalysis.title' => 'AI ஆய்வு',
			'onboarding.features.aiAnalysis.description' => 'உங்களுடைய விவரங்களில் இருந்து உடனடி ஊட்டச்சத்து தகவல்களை பெறுங்கள்',
			'onboarding.features.healthIntegration.title' => 'ஆரோக்கிய இணைப்பு',
			'onboarding.features.healthIntegration.description' => 'மேலதிக தகவல்களுக்காக Health Connect உடன் தொடர்பு கொள்ளுங்கள்',
			'onboarding.gender.title' => 'உங்கள் பாலினம் என்ன?',
			'onboarding.gender.description' => 'பாலினம் உங்கள் அடிப்படை அதன் மாறிகளைக் கணிக்க உதவுகிறது (BMR).',
			'onboarding.gender.next' => 'அடுத்தது',
			'onboarding.height.title' => 'நீங்கள் எவ்வளவு உயரமானவராக இருக்கிறீர்கள்?',
			'onboarding.height.description' => 'உங்கள் உயரம், உங்கள் BMI மற்றும் சக்தி தேவைகளை சரியாகக் கணிக்க உதவுகிறது.',
			'onboarding.height.metric' => 'அளவீடு',
			'onboarding.height.imperial' => 'அமைப்பியல்',
			'onboarding.height.next' => 'அடுத்தது',
			'onboarding.weight.currentTitle' => 'உங்கள் தற்போதைய எடை என்ன?',
			'onboarding.weight.currentDescription' => 'உங்கள் தற்போதைய எடை, உங்கள் தினசரி இலக்குகளை தனிப்பயனாக்குவதற்குப் மிக முக்கியம்.',
			'onboarding.weight.targetTitle' => 'உங்கள் இலக்கு எடை என்ன?',
			'onboarding.weight.targetDescription' => 'ஒரு இலக்கு எடை அமைப்பது, உங்கள் நீண்டகாலத் திட்டத்தை நிர்ணயிக்க உதவுகிறது.',
			'onboarding.weight.metric' => 'அளவீடு',
			'onboarding.weight.imperial' => 'அமைப்பியல்',
			'onboarding.weight.next' => 'அடுத்தது',
			'onboarding.age.title' => 'உங்கள் பிறந்த நாள் எப்போது?',
			'onboarding.age.description' => 'உங்கள் வயது, நீங்கள் எவ்வளவு கைலோரி தேவை என்பதை சரியாகக் கணிக்க உதவுகிறது.',
			'onboarding.age.next' => 'அடுத்தது',
			'onboarding.bmiScale.underweight' => 'குறைவான எடை',
			'onboarding.bmiScale.healthy' => 'ஆரோக்கியமான',
			'onboarding.bmiScale.overweight' => 'கரும்பொழுது',
			'onboarding.bmiScale.obese' => 'கொட்டிய',
			'onboarding.bmiScale.categories.underweight' => 'குறைவான எடை',
			'onboarding.bmiScale.categories.healthyWeight' => 'ஆரோக்கியமான எடை',
			'onboarding.bmiScale.categories.overweight' => 'கரும்பொழுது',
			'onboarding.bmiScale.categories.obese' => 'கொட்டிய',
			'onboarding.bmiScale.messages.underweight' => 'நாங்கள் உங்களுக்கு ஊட்டச்சத்தினால் நிறைந்த உணவுகளுடன் ஒரு ஆரோக்கியமான திட்டத்தை உருவாக்க உதவுகிறோம்.',
			'onboarding.bmiScale.messages.healthy' => 'சிறந்த வேலை! நீங்கள் ஆரோக்கியமான அளவையில் இருக்கிறீர்கள். உங்கள் உயிர்த்திட்டங்களை மற்றும் சக்தி நிலைகளை பராமரிக்க நாங்கள் உங்களை உதவுவோம்.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} உங்கள் இலக்குகளை வசதியாக அடைய உதவ AI அடிப்படையிலான கண்காணிப்பை எளிதாக்கும்.',
			'onboarding.bmiScale.messages.obese' => 'உங்கள் ஆரோக்கியக் குறிக்கோள்களுக்கு தனிப்பயனாக்கப்பட்ட வழிகாட்டுதலுடன் மற்றும் நிலைநிறுத்தப்பட்ட நடவடிக்கைகளுடன் உங்கள் ஆதரவு கேட்கிறோம்.',
			'onboarding.weightGoal.title' => 'உங்கள் குறிக்கோள் என்ன?',
			'onboarding.weightGoal.description' => 'நீங்கள் அடைய விரும்பும் குறிக்கோளை தேர்வு செய்யவும்',
			'onboarding.activityLevel.title' => 'நீங்கள் எவ்வளவு செயல்படுகிறீர்கள்?',
			'onboarding.activityLevel.description' => 'இது உங்கள் தினசரி கைலோரி தேவைகளை மிகவும் சரியாகக் கணிக்க உதவுகிறது',
			'onboarding.healthConnect.title' => 'Health Connect உடன் இணைக்கவும்',
			'onboarding.healthConnect.description' => 'மேலளவு தகவல்களுக்காக உங்கள் ஆரோக்கிய தரவுகளை ஒத்திசைக்கவும் மற்றும் தானியங்கி எடை கணக்கீட்டை பெறவும்',
			'onboarding.healthConnect.automaticTracking.title' => 'தானியங்கி கைலோரி கண்காணிப்பு',
			'onboarding.healthConnect.automaticTracking.description' => 'உங்கள் உடற்பயிற்சி செயலிகளின் மூலம் எரியப்பட்ட கைலோரிகளை கண்காணிக்கவும்',
			'onboarding.healthConnect.progressInsights.title' => 'முன்னேற்றத்தைப் பற்றிய தகவல்கள்',
			'onboarding.healthConnect.progressInsights.description' => 'உங்கள் ஆரோக்கிய உலாவல்களுக்கு விவரமான தகவல்களைப் பெறுங்கள்',
			'onboarding.healthConnect.seamlessIntegration.title' => 'சேர்க்கை',
			'onboarding.healthConnect.seamlessIntegration.description' => 'உங்கள் கைவினை செயலிகளிலிருந்து தரவுகளை ஒத்திசைக்கவும்',
			'onboarding.healthConnect.connected' => 'Health Connect இணைக்கப்பட்டது',
			'onboarding.healthConnect.notConnected' => 'Health Connect இணைக்கப்படவில்லை',
			'onboarding.healthConnect.setup' => 'Health Connect அமைக்கவும்',
			'onboarding.healthConnect.skipForNow' => 'தற்காலிகமாக தவிர்த்து',
			'onboarding.healthConnect.statusConnected' => 'Health Connect இணைக்கப்பட்டுள்ளது.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect வெற்றிகரமாக இணைக்கப்பட்டுள்ளது!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'அனுமதி மறுக்கப்பட்டது. ${appLabel} க்கான உங்கள் போனை உள்ளமைப்புகளில் Health Connect அனுமதிகளை இயக்கவும்.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect அமைப்பில் பிழை: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'நீங்கள் ஒரே தனியாக இல்லை',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'நிதானமான கண்காணிப்பு நீண்டகால வெற்றிக்கான #1 கணிக்கையாளரானது என்பதை ஆராய்ச்சி காட்டுகிறது.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'ஒரு ${age} வயதான ${gender} ${goal} அடைய, நிதானமான கண்காணிப்பு வெற்றிக்கான #1 கணிக்கையாளரானது.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} இது கைமுறை செய்வதை விட 10 மடங்கு எளிமையாகக் க செய்துள்ளது.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'தொடங்க தயாரா?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'உங்களுடைய உணவுகளின் புகைப்படத்தை எடுத்து உடனடி ஆய்வுக்காக அனுப்புங்கள்',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'அற்புதமான முன்னேற்றத்தை காண நேர் நிராகரிக்கவும்',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'உங்கள் முன்னேற்றத்தை நாட்காணலாம்',
			'onboarding.reinforcement.trackingSuccess.button' => 'போயிலை செய்க',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'மனிதன்',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'ஆரோக்கியமான நீங்கள்',
			'onboarding.reinforcement.healthProfile.title' => 'உங்கள் ஆரோக்கிய சுருக்கம்',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'உங்கள் அளவுகோல்களின் அடிப்படையில், உங்கள் BMI ${bmi} ஆக உள்ளது.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'உங்கள் அனுபவத்தை தனிப்பயனாக்க உங்கள் சுருக்கத்தை இறுதி செய்யுங்கள்.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'பெறுதல்',
			'onboarding.reinforcement.healthProfile.goalLose' => 'இழப்பு',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'உங்கள் இலக்கை அடைய, நீங்கள் ${direction} ${diff} ${unit} செய்ய வேண்டும்.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'நீங்கள் உங்கள் இலக்கு எடையில் இருக்கிறீர்கள்! அதை பராமரிக்க நாம் உங்களுக்கு உதவுவோம்.',
			'onboarding.reinforcement.healthProfile.button' => 'போயிலை செய்க',
			'onboarding.reinforcement.goalLifestyle.title' => 'சிறந்த தொடக்கம்!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'நீங்கள் ${goalText} நோக்கில் முதல் படியை எடுத்துள்ளீர்கள். நீங்கள் ${activityText} ஆக இருப்பதால், ${appLabel} உங்கள் இலக்குகளை உங்கள் வாழ்க்கைமுறைக்கு ஏற்ப மாற்றும்.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'தனிப்பயனாக்கப்பட்ட கைலோரி இலக்குகள்',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI அடிப்படையிலான உணவுப் படிமங்களை கண்டறிதல்',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'விவரமான மாக்ரோ-உண்வளங்கள்',
			'onboarding.reinforcement.goalLifestyle.button' => 'போயிலை செய்க',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'உங்கள் இலக்குகள்',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'செயல்படும்',
			'tabs.dashboard' => 'டாஷ்போர்ட்',
			'tabs.history' => 'வரலாறு',
			'home.dailyGoal.title' => 'உங்கள் தினசரி இலக்கத்தை அமைக்கவும்',
			'home.dailyGoal.titleSet' => 'உங்கள் தினசரி இலக்கு',
			'home.dailyGoal.description' => 'உங்கள் நல்வாழ்வின் பயணத்தை தொடங்க தயாரா? கீழே உங்கள் தினசரி கலோரி இலக்கத்தை அமைக்கவும்.',
			'home.dailyGoal.descriptionSet' => 'உங்கள் நோக்கம் அமைக்கப்பட்டுள்ளது! இது உங்களை வழிநடத்தும் உங்கள் தினசரி கலோரி இலக்கு.',
			'home.dailyGoal.yourGoal' => 'உங்கள் இலக்கு',
			'home.dailyGoal.dailyCalories' => ' தினசரி கலோரி (kcal)',
			'home.dailyGoal.setGoal' => 'இலக்கத்தை அமைக்கவும்',
			'home.dailyGoal.intake' => 'உள்ளமை',
			'home.dailyGoal.burned' => 'அழிக்கப்படும்',
			'home.dailyGoal.weightImpact' => 'எடைப் பாதிப்பு',
			'home.dailyGoal.estLoss' => 'கணிக்கையிட்ட இழப்பு',
			'home.dailyGoal.estGain' => 'கணிக்கையிட்ட தரவு',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'தினசரி சுருக்கம்',
			'home.dailySummary.calories' => 'கலோரி',
			'home.dailySummary.carbs' => 'கார்ப்ஸ்',
			'home.dailySummary.protein' => 'புரதம்',
			'home.dailySummary.fat' => 'மொழி',
			'home.dailySummary.fiber' => 'ஊறுகாய்',
			'home.intakeProgress.title' => 'இன்றைய Macro பகுப்பு',
			'home.intakeProgress.target' => 'இலக்கு',
			'home.intakeProgress.current' => 'தற்போதைய',
			'home.intakeHistory.title' => '7-ந்தின Macro வரலாறு',
			'home.intakeHistory.noHistoryYet' => 'எந்த வரலாறும் இல்லை',
			'home.intakeHistory.startLogging' => 'உங்கள் 7-ந்தின macro தகவல்களை burada görmek için öğünleri kaydetmeye başlayın',
			'home.mealLog.title' => ' பதிவு செய்யப்பட்ட உணவுகள்',
			'home.mealLog.emptyMessage' => 'உங்கள் கடைசி உணவின் புகைப்படத்தை பதிவேற்றவும்.',
			'home.mealLog.noMealsToday' => 'இன்று பதிவு செய்யப்பட்ட உணவுகள் இல்லை',
			'home.mealLog.seeAllMeals' => 'எல்லா உணவுகளையும் காண்க',
			'home.mealDescription.title' => 'AI உடன் விரைவு சேர்க்கவும்',
			'home.mealDescription.description' => 'உங்கள் உணவை விவரிக்கவும், AI விவரங்களை கையாளவிடுங்கள்.',
			'home.mealDescription.hint' => 'எடுத்துக்காட்டாக, நான் காலை உணவாக ஒரு பெரிய ஓட்டமணுவில் நண்டு மற்றும் ஒரு பிளவு வாழைப்பழம் கொண்டிருந்தேன் ...',
			'home.mealDescription.analyzeMeal' => 'உணவை பரிசீலிக்கவும்',
			'home.favoriteMeals.title' => 'மிகவும் பிடித்த உணவுகள்',
			'home.favoriteMeals.description' => 'உங்கள் மிகவும் பிடித்த உணவுகளை விரைவாகச் சேர்க்கவும்.',
			'home.favoriteMeals.noFavorites' => 'எந்த பிடித்த உணவுகளும் இல்லை.',
			'home.favoriteMeals.addFavoriteHint' => 'ஒரு உணவின் நடைப்படியை சொடுக்கி அதை பிடித்ததாகக் குறிக்கவும்.',
			'home.favoriteMeals.seeAll' => 'எல்லா உணவுகளையும் காண்க',
			'home.favoriteMeals.add' => 'சேர்க்கவும்',
			'home.mealSnap.title' => 'உங்கள் உணவின் புகைப்படம் எடுக்கவும் மற்றும் பதிவேற்றவும்',
			'home.mealSnap.description' => 'AI பகுப்பாய்விற்காக உங்கள் உணவின் புகைப்படத்தை எடுக்க உங்கள் கேமராவைப் பயன்படுத்தவும்.',
			'home.mealSnap.openCamera' => 'கேமரா திறக்கவும்',
			'home.connectHealth.title' => 'Health Connect உடன் இணைக்கவும்',
			'home.connectHealth.description' => 'உங்கள் உணவு தரவுகளை Health Connect உடன் இணைக்கவும்',
			'home.connectHealth.install' => 'நிறுவவும்',
			'home.connectHealth.connect' => 'இணைக்கவும்',
			'history.noMeals' => 'பதிவு செய்யப்பட்ட உணவுகள் இல்லை',
			'history.emptyMessage' => 'உங்கள் கடைசி உணவின் புகைப்படத்தை பதிவேற்றவும்.',
			'history.today' => 'இன்று',
			'history.yesterday' => 'நே confidently',
			'meal.ohNo' => 'ஓ நாங்கள்!',
			'meal.delete' => 'அழிக்கவும்',
			'meal.editMeal' => 'உணவை திருத்தவும்',
			'meal.addMeal' => 'உணவைச் சேர்க்கவும்',
			'meal.saveMeal' => 'உணவைச் சேமிக்கவும்',
			'meal.save' => 'சேமிக்கவும்',
			'meal.mealName' => 'உணவின் பெயர்',
			'meal.mealQuantity' => 'உணவின் அளவு',
			'meal.mealQuantityHint' => 'எடுத்துக்காட்டாக, 1 கிண்டல், 2 துண்டுகள்',
			'meal.timeOfMeal' => 'உணவின் நேரம்',
			'meal.timeOfMealHint' => 'சாப்பிட்ட நேரத்தைத் தேர்ந்தெடுக்கவும்',
			'meal.mealType' => 'உணவின் வகை',
			'meal.nutrition.calories' => 'கலோரி',
			'meal.nutrition.carbs' => 'கார்ப்ஸ் (g)',
			'meal.nutrition.protein' => 'புரதம் (g)',
			'meal.nutrition.fat' => 'கொௌச்சு (g)',
			'meal.nutrition.fiber' => 'ஊறுகாய் (g)',
			'meal.deleteConfirmation.title' => 'உணவை அழிக்கவும்',
			'meal.deleteConfirmation.message' => 'இந்த உணவின் பதிவுகளை அழிக்க உறுதியாக இருக்கிறீர்களா?',
			'meal.deleteConfirmation.cancel' => 'உறுதிப்படுத்தாது',
			'meal.deleteConfirmation.delete' => 'அழிக்கவும்',
			'meal.addedToLog' => 'உணவு உங்கள் பதிவில் சேர்க்கப்பட்டது!',
			'meal.couldNotAdd' => ({required Object error}) => 'உணவைச் சேர்க்க முடியவில்லை: ${error}',
			'meal.removedFromFavorites' => 'பிடித்ததில் நீக்கப்பட்டது!',
			'meal.savedAsFavorite' => 'உணவு பிடித்தமாகச் சேமிக்கப்பட்டது!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'பிடித்ததை புதுப்பிக்க முடியவில்லை: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'செயலாக்கத்தில் başarısız oldu: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'புகைப்படத்தை செயலாக்க முடியவில்லை: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'புகைப்படத்தை கしく்க ஏற்கனவே болғанால்: ${error}',
			'meal.failedToSave' => 'தரவைச் சேமிக்க முடியவில்லை. தயவு செய்து மறு முயற்சி செய்யவும்.',
			'favorites.title' => 'பிடித்தவை',
			'favorites.empty' => 'எந்த பிடித்த உணவுகளும் இல்லை.',
			'profile.title' => 'சுயவிவரம்',
			'profile.noProfileData' => 'சுயவிவரத் தரவுகள் கண்டுபிடிக்கப்படவில்லை',
			'profile.yourProfile' => 'உங்கள் சுயவிவரம்',
			'profile.viewAndManage' => 'உங்கள் ஆரோக்கியத் தகவல்களைப் பார்க்கவும் மற்றும் நிர்வகிக்கவும்',
			'profile.sections.profile' => 'சுயவிவரம்',
			'profile.sections.basicInformation' => 'அடிப்பக தகவல்',
			'profile.sections.goalsAndActivity' => 'இலக்குகள் மற்றும் செயலிகள்',
			'profile.sections.calculatedValues' => 'கணிக்கையிட்ட மதிப்புகள்',
			'profile.gender' => 'பாலம்',
			'profile.height' => 'ஏர்ப்பு',
			'profile.weight' => 'எடை',
			'profile.age' => 'வயது',
			'profile.weightGoal' => 'எடை இலக்கு',
			'profile.activityLevel' => 'செயல்வளம்',
			'profile.healthMetrics' => 'ஆரோக்கிய அளவீடுகள்',
			'profile.notSet' => 'அவை அமைக்கப்படவில்லை',
			'profile.years' => 'ஆண்டுகள்',
			'profile.updatedSuccessfully' => 'சுயவிவரம் வெற்றிகரமாகப் புதுப்பிக்கப்பட்டது!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'தினசரி இலக்கு',
			'profile.calculatedValues.calPerDay' => 'cal/தினம்',
			'profile.calculatedValues.notAvailable' => 'கிடையாது',
			'healthScore.title' => 'ஆரோக்கிய மதிப்பு',
			'healthScore.whyThisScore' => 'இந்த மதிப்பு ஏன்?',
			'healthScore.note' => 'இந்த மதிப்பு கண்டறியப்பட்ட பொருட்கள் மற்றும் ஊட்டச்சத்து அடர்த்தியின் அடிப்படையில் AI மதிப்பு ஆகும். உணவு ஆலோசனைகளுக்கு எந்த நேரத்தில் ஒரு வணிக பதிவு அல்ல.',
			'healthScore.unhealthy' => 'அருவருப்பானது',
			'healthScore.healthy' => 'ஆரோக்கியமானது',
			'healthScore.neutral' => 'இருப்பிலா',
			'editProfile.title' => 'சுயவிவரம் திருத்தவும்',
			'editProfile.sections.personalInformation' => 'நபர் தகவல்கள்',
			'editProfile.sections.physicalMeasurements' => 'உயர்மட்ட அளவீடுகள்',
			'editProfile.sections.goalsAndActivity' => 'இலக்குகள் மற்றும் செயலிகள்',
			'editProfile.gender' => 'பாலம்',
			'editProfile.dateOfBirth' => 'பிறந்த தேதி',
			'editProfile.height' => 'ஏர்ப்பு',
			'editProfile.weight' => 'எடை',
			'editProfile.weightGoal' => 'எடை இலக்கு',
			'editProfile.activityLevel' => 'செயல்வளம்',
			'editProfile.metric' => 'அளவீடு',
			'editProfile.imperial' => 'ஐம்பிரல்',
			'editProfile.metricCm' => 'அளவீடு (செமீ)',
			'editProfile.imperialFtIn' => 'ஐம்பிரல் (அடி/இன்ச்)',
			'editProfile.metricKg' => 'அளவீடு (கிளோ)',
			'editProfile.imperialLbs' => 'ஐம்பிரல் (பவுண்ட்)',
			'editProfile.genders.male' => 'ஆண்',
			'editProfile.genders.female' => 'பெண்',
			'editProfile.genders.other' => 'மற்றவை',
			'editProfile.weightGoals.loseWeight.name' => 'எடையை குறைக்கவும்',
			'editProfile.weightGoals.loseWeight.description' => 'எடையை குறைக்க கலோரி குறைவு உருவாக்கவும்',
			'editProfile.weightGoals.maintainWeight.name' => 'எடையை பராமரிக்கவும்',
			'editProfile.weightGoals.maintainWeight.description' => 'இன்றைய எடையைப் பராமரிக்கவும்',
			'editProfile.weightGoals.gainWeight.name' => 'எடையை அதிகரிக்கவும்',
			'editProfile.weightGoals.gainWeight.description' => 'எடையை அதிகரிக்க கலோரி அதிகரிப்பு உருவாக்கவும்',
			'editProfile.activityLevels.sedentary.name' => 'நிறுத்தப்பட்ட',
			'editProfile.activityLevels.sedentary.description' => 'இன்னும் பயிற்சிகள் இல்லை',
			'editProfile.activityLevels.lightlyActive.name' => 'இக்காலக்கூடிய',
			'editProfile.activityLevels.lightlyActive.description' => 'எழுத்துப்பணி 1-3 நாட்கள்/வீட்டில்',
			'editProfile.activityLevels.moderatelyActive.name' => 'மிதமான செயல்பாட்டிருத்தங்களை',
			'editProfile.activityLevels.moderatelyActive.description' => 'மிதமான பயிற்சிகள் 3-5 நாட்கள்/வீட்டில்',
			'editProfile.activityLevels.veryActive.name' => 'மிக்க செயல்பாட்டிருத்தங்கள்',
			'editProfile.activityLevels.veryActive.description' => 'தீவிர பயிற்சிகள் 6-7 நாட்கள்/வீட்டில்',
			'editProfile.activityLevels.extremelyActive.name' => 'மிகவும் செயல்பாட்டிருத்தங்கள்',
			'editProfile.activityLevels.extremelyActive.description' => 'மிகவும் கடுமையான பயிற்சி, உடல் வேலை',
			'settings.title' => 'அமைப்புகள்',
			'settings.sections.profile' => 'சுயவிவரம்',
			'settings.sections.localization' => 'உள்ளூர்த்துவம்',
			'settings.sections.notifications' => 'அறிக்கைகள்',
			'settings.sections.supportAndLegal' => 'ஊக்கமும் சட்டங்களும்',
			'settings.sections.dangerZone' => 'அபாய ஊழல்',
			'settings.sections.developer' => 'முன்னணி',
			'settings.editProfile.title' => 'சுயவிவரம் திருத்தவும்',
			'settings.editProfile.subtitle' => 'உங்கள் நபர் தகவல்களை புதுப்பிக்கவும்',
			'settings.language.title' => 'மொழி',
			'settings.language.subtitle' => 'உங்கள் விருப்ப மொழியைத் தேர்ந்தெடுங்கள்',
			'settings.heightUnit.title' => 'ஏர் அலகு',
			'settings.weightUnit.title' => 'எடை அலகு',
			'settings.mealReminders.title' => 'உணவு நினைவூட்டிகள்',
			'settings.mealReminders.subtitle' => 'நேரத்திற்கு ஏற்ப எச்சரிக்கை உதவுங்கள்',
			'settings.theme.title' => 'தீம்',
			'settings.theme.subtitle' => 'உங்கள் விருப்ப தீமையைத் தேர்ந்தெடுக்கவும்',
			'settings.theme.light' => 'ஒளி',
			'settings.theme.dark' => 'கருப்பு',
			'settings.theme.system' => 'கோட்பாடு',
			'settings.sendFeedback.title' => 'கருத்துப்பரிமாற்றம் அனுப்பு',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} ஐ மேம்படுத்த உதவவும்',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} பயன்பாட்டின் கருத்து',
			'settings.sendFeedback.emailBodyPrefix' => 'தயவுசெய்து கீழே உங்கள் கருத்துகளை வழங்கவும்:',
			'settings.sendFeedback.appVersion' => 'பயன்பாட்டு பதிப்பு',
			'settings.sendFeedback.device' => 'கருவி',
			'settings.sendFeedback.osVersion' => 'OS பதிப்பு',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'எல்லா தரவுகளை அகத்து',
			'settings.clearAllData.subtitle' => 'முடிவாணியில் உங்கள் அனைத்து தகவல்களையும் அழிக்கவும்',
			'settings.clearAllData.confirmationTitle' => 'எல்லா தரவுகளை அகத்து?',
			'settings.clearAllData.confirmationMessage' => 'இந்த நடவடிக்கை ரத்து செய்யப்படாது. உங்கள் பதிவு செய்யப்பட்ட உணவுகள், பிடிப்புகளும், சுயவிவரம் அமைப்புகளும் நிரந்தரமாக அழிக்கப்படும்.',
			'settings.clearAllData.cancel' => 'ரத்து செய்',
			'settings.clearAllData.clearEverything' => 'எல்லாமே அகத்து',
			'settings.debugOptions.title' => 'பிழை சோதனை விருப்பங்கள்',
			'settings.developerModeEnabled' => 'முன்னணி முறை செயல்படுத்தப்பட்டது!',
			'reminders.title' => 'நினைவூட்டிகளுடன் மிகவும் நன்றாக இருக்குங்கள்',
			'reminders.description' => 'உங்கள் உணவுகளை பதிவுசெய்ய மாறுபட்ட நினைவூட்டிகளைப் பெறுங்கள்',
			'reminders.notificationsEnabled' => 'அறிக்கைகள் இயக்கப்பட்டது',
			'reminders.notificationsDisabled' => 'அறிக்கைகள் செயல்படுத்தப்படவில்லை',
			'reminders.enabledSubtitle' => 'நீங்கள் உணவு நினைவூட்டிகளைப் பெறுவீர்கள்',
			'reminders.disabledSubtitle' => 'உணவு நினைவூட்டிகளைப் பெறப் பதிவுகள் புரிந்து கொள்ளுங்கள்',
			'reminders.mealReminders' => 'உணவு நினைவூட்டிகள்',
			'reminders.breakfast' => 'காலை உணவு',
			'reminders.lunch' => 'மதிய உணவு',
			'reminders.dinner' => 'மாலை உணவு',
			'reminders.snack' => 'நகரம்',
			'reminders.unknown' => 'தெரியவில்லை',
			'reminders.change' => 'மாற்றவும்',
			'reminders.enableNotifications' => 'அறிக்கைகளை இயக்கவும்',
			'reminders.skipForNow' => 'இப்போது தாண்டவும்',
			'reminders.saveChanges' => 'மாற்றங்களைச் சேமிக்கவும்',
			'reminders.enabledSuccessfully' => 'தொடக்கக்கூறுகள் வெற்றிகரமாக இயக்கப்பட்டுள்ளது!',
			'reminders.permissionDenied' => 'அறிக்கையின் அனுமதி நிராகரிக்கப்பட்டது',
			'reminders.errorEnabling' => ({required Object error}) => 'அறிக்கைகளை இயக்கும் போது பிழை: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'அமைப்பை நிறைவேற்றுவதில் பிழை: ${error}',
			'notifications.breakfast.title' => 'காலை உணவு நேரம்! 🍳',
			'notifications.breakfast.body' => 'உங்கள் காலை உணவினை பதிவு செய்ய மறக்காதீர்கள்',
			'notifications.lunch.title' => 'மதிய உணவு நேரம்! 🥗',
			'notifications.lunch.body' => 'உங்கள் மதிய உணவை பதிவு செய்ய வேண்டிய நேரம்',
			'notifications.dinner.title' => 'மாலை உணவு நேரம்! 🍽️',
			'notifications.dinner.body' => 'உங்கள் மாலை உணவினை பதிவு செய்ய மறக்காதீர்கள்',
			'notifications.snack.title' => 'நகரம் நேரம்! 🍎',
			'notifications.snack.body' => 'சுகமான சிற்றுண்டிக்கு நேரம்',
			'notifications.test.title' => 'சோதனை அறிப்பு',
			'login.title' => 'உள்நுழைக',
			'login.signInWithGoogle' => 'Google மூலம் உள்நுழைக',
			'login.signInFailed' => 'Google உள்நுழைவு தோல்வியடைந்தது அல்லது நிறுத்தப்பட்டது.',
			'disclaimer.pleaseNote' => 'தயவுசெய்து கவனிக்கவும்',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} கணிக்கையான ஊட்டச்சத்துக்களை வழங்குகிறது. துல்லியமானது உங்கள் உள்ளீடு மற்றும் உணவு மாறுபாடுகளுக்கேற்ப निर्भर செய்கின்றது. இது ஒரு வழிகாட்டியாகவும், உறுதி ஆதாரமாகவும் பயன்படுத்துவதை தவிர்க்கவும்.',
			'disclaimer.snap.portionSize.title' => 'பார்சன் அளவு',
			'disclaimer.snap.portionSize.description' => 'கணிக்கையிடப்பட்ட மதிப்புகளின் துல்லியமான அளவு உங்கள் சரியான அளவீட்டின் மீது ஆழ்மையுள்ளே வெறுமனே இதற்கேற்ப பெறுகிறது.',
			'disclaimer.snap.preparationMethods.title' => 'செயலாக்க முறைகள்',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'சமைக்கும் முறைகள் உணவின் ஊட்டச்சத்து உள்ளடக்கம் மிகவும் மாற்றமளிக்கலாம். ${appLabel} உருப்படிகள் எப்போதும் இந்த மாறுபாடுகளை கணிக்கமாட்டாது.',
			'disclaimer.snap.ingredients.title' => 'பொருட்கள்',
			'disclaimer.snap.ingredients.description' => 'மறைக்கப்பட்ட பல வகை உணவுகள் கழிக்கப்படலாம். அது ஈடு இல்லாவாகவும், உணவின் மதிப்பை கணிக்கல்முறை பெறுகிறது.',
			'disclaimer.snap.databaseLimitations.title' => 'தரவள்ளியூடகம் வரையறைகள்',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} உணவு தரவுத்தொகுப்பு பரந்தது ஆக இருக்கின்றது, ஆனால் பரந்தவையாக எந்த உணவுகள் மற்றும் வகைகள் இருக்காது.',
			'disclaimer.weightEstimate.title' => 'எடை மதிப்பீட்டின் சோம்சம்',
			'disclaimer.weightEstimate.description' => 'கல்வியில் செலவழியாத உயிருக்குள் வரையறுக்கப்பட்ட பரிந்துரைகளை தரும் மற்றும் உங்கள் நல்ல முறையில் ஏற்கனவே தேவைப்படும் மற்றும் முதல் பதவியின் முதல் பதவியின் மீதான அளவீட்டு கேள்விகளையே கோடிட்டுநிரலாகியிருக்கின்றன. இதற்கு ஒரு பரிந்துரை மற்றும் உண்மையான எடையின் எதிர்பார்ப்பு இல்லை என்பதைக் குறிக்க நினைக்கிறேன்.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'கலோரி துல்லியம்',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'இந்த மதிப்பு உங்கள் பதிவு செய்யப்பட்ட கலோரி உள்ளீடுகளின் மீது இன்பமும் குறிகளும் உண்மையாக விரைவில் உறுதியாக இருக்கிறார்.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'உயிரியல் காரணங்கள்',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'உண்மையான எடையின் இழப்புகள் அல்லது பயன்கள் உங்கள் மாதவிடாயான யோகங்கள், உறவுகள், உறவுகள், அசப்புப் பாம்புகள் அல்லது மற்றதாகக் கொண்டு வாங்கப்படும் போது கிடைக்கும் முறைகள். ${appLabel} இந்த அளவுகளை அளிக்க முடியாது.',
			'disclaimer.weightEstimate.waterWeight.title' => 'உயிர்வளா எடை மற்றும் மாறுபாடுகள்',
			'disclaimer.weightEstimate.waterWeight.description' => 'சாதாரம் நாள் வேதியியல் மூலம் மாற்றப்படலாம். இந்த அளவுகள் இந்த நாட்களுக்கு இடையில் மாறுபட்டுள்ளால் குறிக்கவில்லை.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'தொடர்பான வழிமுறை',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'இந்த மதிப்பீட்டை மருத்துவ முடிவுகளை உருவாக்கப் பயன்படுத்தக்கூடாது. நானும் ஒரு மருத்துவ நிபுணர் அல்லது பதிவு செய்யப்பட்ட சீர்திருத்தத்தின் அணியோடு உருப்படி கொள்கைகளைப் பெறவும்.',
			'common.close' => 'இறுதியில்',
			'common.kContinue' => 'முடிவில்லாமல்',
			'errors.loadingProfileData' => 'சுயவிவரத் தரவுகளை ஏற்றுவதில் பிழை',
			'errors.somethingWentWrong' => 'ஒரு பிழை ஏற்பட்டது.',
			'debug.title' => 'பிழை சோதனை விருப்பங்கள்',
			'debug.sections.notifications' => 'அறிக்கைகள்',
			'debug.sections.healthConnect' => 'ஆரோக்கிய இணைப்பு',
			'debug.sections.appInfo' => 'எழுதுகை தகவல்',
			'debug.showActiveNotifications' => 'செயல்பாட்டில் உள்ள அறிவிப்புகள் காண்பிக்கவும்',
			'debug.scheduleTestNotification' => 'சோதனை அறிவிப்பு திட்டமிடுங்கள் (10 வினாடிகள்)',
			'debug.triggerBreakfastNotification' => 'காலை உணவுக்கான அறிவிப்பை ஊக்கவும்',
			'debug.cancelAllNotifications' => 'எல்லா அறிவிப்புகளையும் ரத்து செய்யவும்',
			'debug.activeNotifications' => 'செயல்பாட்டில் உள்ள அறிவிப்புகள்',
			'debug.noTitle' => 'தலைப்பு இல்லை',
			'debug.noBody' => 'உட்பொருள் இல்லை',
			'debug.fetchTodaysSteps' => 'இன்றைய படிகளை எடுக்கவும்',
			'debug.fetchTodaysCalories' => 'இன்றைய கலோரிகளை எடுக்கவும்',
			'debug.fetchLatestWeight' => 'சமீபத்திய எட்டையை எடுக்கவும்',
			'debug.fetchLatestHeight' => 'சமீபத்திய உயரத்தை எடுக்கவும்',
			'debug.writeTestWeight' => 'சோதனை எடை (70kg) எழுதுங்கள்',
			'debug.writeTestHeight' => 'சோதனை உயரத்தை (175cm) எழுதுங்கள்',
			'debug.syncLast7Days' => 'கடந்த 7 நாட்கள் ஒத்திசைக்கவும்',
			'debug.sync7DaysTitle' => '7-ந்தின ஒத்திசைப்பு',
			'debug.checkCurrentLocale' => 'தற்போதைய உள்ளூர் நிலையைச் சரிபார்க்கவும்',
			'debug.currentLocale' => 'தற்போதைய உள்ளூர் நிலை',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'மொழி: ${languageCode}\nநாடு: ${countryCode}\nஅலகு முறை: ${unitSystem}',
			'debug.latestWeight' => 'சமீபத்திய எடை',
			'debug.latestHeight' => 'சமீபத்திய உயரம்',
			'debug.todaysCalories' => 'இன்றைய கலோரி',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'மொத்தம் எரியூறுகள்: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'கடந்த 7 நாட்களில் ${count} தரவுப் புள்ளிகளை வெற்றிகரமாகப் FETCH செய்தது.',
			'debug.noWeightData' => 'கடந்த 30 நாட்களில் எடைக் தகவல்கள் கிடையாது.',
			'debug.noHeightData' => 'கடந்த என்னும் அளவீட்டின் தரவுகள் கிடையாது.',
			'debug.noCalorieData' => 'இன்று கலோரி தரவுகள் கிடையாது.',
			'debug.weightWritten' => 'சோதனை எடை (70kg) வெற்றியுடன் எழுதப்பட்டது.',
			'debug.weightWriteFailed' => 'சோதனை எடையை எழுத முடியவில்லை.',
			'debug.heightWritten' => 'சோதனை உயரம் (175cm) வெற்றியுடன் எழுதப்பட்டது.',
			'debug.heightWriteFailed' => 'சோதனை உயரத்தை எழுத முடியவில்லை.',
			'debug.noNotifications' => 'செயல்பாட்டில் அறிவிப்புகள் இல்லை.',
			'debug.testNotificationScheduled' => '10 செகண்டுகளில் சோதனை அறிவிப்பு திட்டமிடப்பட்டு உள்ளது.',
			'debug.testNotificationBody' => '10 செகண்டுகளுக்குப் பிறகு இதுவொரு சோதனை அறிவிப்பு.',
			'debug.breakfastNotificationTriggered' => 'காலை உணவுக்கான அறிவிப்பு ஊக்கப்பட்டுள்ளது.',
			'debug.allNotificationsCancelled' => 'எல்லா அறிவிப்புகளும் ரத்து செய்யப்பட்டுள்ளது.',
			'debug.fetchingData' => 'கடந்த 7 நாட்களுக்கு தரவைப் பெறுகிறது...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'Health Connect உடன் ஒத்திசைக்க முடியவில்லை',
			'health.mealSynced' => 'உணவு Health Connect உடன் ஒத்திசைக்கப்பட்டது',
			_ => null,
		};
	}
}
