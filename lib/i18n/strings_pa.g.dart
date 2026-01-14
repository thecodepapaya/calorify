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
class TranslationsPa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pa,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pa>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPa _root = this; // ignore: unused_field

	@override 
	TranslationsPa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPa(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Punjabi';
	@override String get flag => '🇮🇳';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingPa onboarding = _TranslationsOnboardingPa._(_root);
	@override late final _TranslationsTabsPa tabs = _TranslationsTabsPa._(_root);
	@override late final _TranslationsHomePa home = _TranslationsHomePa._(_root);
	@override late final _TranslationsHistoryPa history = _TranslationsHistoryPa._(_root);
	@override late final _TranslationsMealPa meal = _TranslationsMealPa._(_root);
	@override late final _TranslationsFavoritesPa favorites = _TranslationsFavoritesPa._(_root);
	@override late final _TranslationsProfilePa profile = _TranslationsProfilePa._(_root);
	@override late final _TranslationsHealthScorePa healthScore = _TranslationsHealthScorePa._(_root);
	@override late final _TranslationsEditProfilePa editProfile = _TranslationsEditProfilePa._(_root);
	@override late final _TranslationsSettingsPa settings = _TranslationsSettingsPa._(_root);
	@override late final _TranslationsRemindersPa reminders = _TranslationsRemindersPa._(_root);
	@override late final _TranslationsNotificationsPa notifications = _TranslationsNotificationsPa._(_root);
	@override late final _TranslationsLoginPa login = _TranslationsLoginPa._(_root);
	@override late final _TranslationsDisclaimerPa disclaimer = _TranslationsDisclaimerPa._(_root);
	@override late final _TranslationsCommonPa common = _TranslationsCommonPa._(_root);
	@override late final _TranslationsErrorsPa errors = _TranslationsErrorsPa._(_root);
	@override late final _TranslationsDebugPa debug = _TranslationsDebugPa._(_root);
	@override late final _TranslationsHealthPa health = _TranslationsHealthPa._(_root);
}

// Path: onboarding
class _TranslationsOnboardingPa implements TranslationsOnboardingEn {
	_TranslationsOnboardingPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} ਵਿੱਚ ਤੁਹਾਡਾ ਸੁਆਗਤ ਹੈ';
	@override String get subtitle => 'ਇਹ ਤੁਹਾਡਾ ਨਿੱਜੀ ਪੋਸ਼ਣ ਸਾਥੀ ਹੈ ਜੋ ਏ.ਆਈ. ਦੁਆਰਾ ਸਹਾਇਤ ਕੀਤਾ ਗਿਆ ਹੈ';
	@override String get getStarted => 'ਸ਼ੁਰੂ ਕਰੀਏ';
	@override late final _TranslationsOnboardingFeaturesPa features = _TranslationsOnboardingFeaturesPa._(_root);
	@override late final _TranslationsOnboardingGenderPa gender = _TranslationsOnboardingGenderPa._(_root);
	@override late final _TranslationsOnboardingHeightPa height = _TranslationsOnboardingHeightPa._(_root);
	@override late final _TranslationsOnboardingWeightPa weight = _TranslationsOnboardingWeightPa._(_root);
	@override late final _TranslationsOnboardingAgePa age = _TranslationsOnboardingAgePa._(_root);
	@override late final _TranslationsOnboardingBmiScalePa bmiScale = _TranslationsOnboardingBmiScalePa._(_root);
	@override late final _TranslationsOnboardingWeightGoalPa weightGoal = _TranslationsOnboardingWeightGoalPa._(_root);
	@override late final _TranslationsOnboardingActivityLevelPa activityLevel = _TranslationsOnboardingActivityLevelPa._(_root);
	@override late final _TranslationsOnboardingHealthConnectPa healthConnect = _TranslationsOnboardingHealthConnectPa._(_root);
	@override late final _TranslationsOnboardingReinforcementPa reinforcement = _TranslationsOnboardingReinforcementPa._(_root);
}

// Path: tabs
class _TranslationsTabsPa implements TranslationsTabsEn {
	_TranslationsTabsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'ਡੈਸ਼ਬੋਰਡ';
	@override String get history => 'ਇਤਿਹਾਸ';
}

// Path: home
class _TranslationsHomePa implements TranslationsHomeEn {
	_TranslationsHomePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalPa dailyGoal = _TranslationsHomeDailyGoalPa._(_root);
	@override late final _TranslationsHomeDailySummaryPa dailySummary = _TranslationsHomeDailySummaryPa._(_root);
	@override late final _TranslationsHomeIntakeProgressPa intakeProgress = _TranslationsHomeIntakeProgressPa._(_root);
	@override late final _TranslationsHomeIntakeHistoryPa intakeHistory = _TranslationsHomeIntakeHistoryPa._(_root);
	@override late final _TranslationsHomeMealLogPa mealLog = _TranslationsHomeMealLogPa._(_root);
	@override late final _TranslationsHomeMealDescriptionPa mealDescription = _TranslationsHomeMealDescriptionPa._(_root);
	@override late final _TranslationsHomeFavoriteMealsPa favoriteMeals = _TranslationsHomeFavoriteMealsPa._(_root);
	@override late final _TranslationsHomeMealSnapPa mealSnap = _TranslationsHomeMealSnapPa._(_root);
	@override late final _TranslationsHomeConnectHealthPa connectHealth = _TranslationsHomeConnectHealthPa._(_root);
}

// Path: history
class _TranslationsHistoryPa implements TranslationsHistoryEn {
	_TranslationsHistoryPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'ਕੋਈ ਮੀਲਾਂ ਦਰਜ ਨਹੀਂ';
	@override String get emptyMessage => 'ਆਪਣੀ ਆਖਰੀ ਮੀਲ ਦੀ ਤਸਵੀਰ ਲਓ ਤਾਂ ਜੋ ਇਹ ਇੱਥੇ ਲੋਗ ਹੋ ਸਕੇ.';
	@override String get today => 'ਅੱਜ';
	@override String get yesterday => 'ਕਲ';
}

// Path: meal
class _TranslationsMealPa implements TranslationsMealEn {
	_TranslationsMealPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'ਓ ਹਣ!';
	@override String get delete => 'ਮਿਟਾਓ';
	@override String get editMeal => 'ਮੀਲ ਸੋਧੋ';
	@override String get addMeal => 'ਮੀਲ ਜੋੜੋ';
	@override String get saveMeal => 'ਮੀਲ ਸੰਭਾਲੋ';
	@override String get save => 'ਸੰਭਾਲੋ';
	@override String get mealName => 'ਮੀਲ ਦਾ ਨਾਂ';
	@override String get mealQuantity => 'ਮੀਲ ਦੀ ਮਾਤਰਾ';
	@override String get mealQuantityHint => 'ਉਦਾਹਰਨ: 1 ਬੋਲ, 2 ਕਟਕ';
	@override String get timeOfMeal => 'ਮੀਲ ਦਾ ਸਮਾਂ';
	@override String get timeOfMealHint => 'ਜਿਸ ਸਮੇਂ ਤੁਸੀਂ ਆਪਣੀ ਮੀਲ ਕੀਤੀ ਸੀ ਦਾ ਚੋਣ ਕਰੋ';
	@override String get mealType => 'ਮੀਲ ਦੀ ਕਿਸਮ';
	@override late final _TranslationsMealNutritionPa nutrition = _TranslationsMealNutritionPa._(_root);
	@override late final _TranslationsMealDeleteConfirmationPa deleteConfirmation = _TranslationsMealDeleteConfirmationPa._(_root);
	@override String get addedToLog => 'ਮੀਲ ਤੁਹਾਡੇ ਲੋਗ ਵਿੱਚ ਜੋੜੀ ਗਈ!';
	@override String couldNotAdd({required Object error}) => 'ਮੀਲ ਜੋੜ ਸਕੀ: ${error}';
	@override String get removedFromFavorites => 'ਫੇਰ ਨਹੀ ਹੈ!';
	@override String get savedAsFavorite => 'ਮੀਲ ਪਸੰਦ ਦੇ ਤੌਰ \'ਤੇ ਸੰਭਾਲੀ ਗਈ!';
	@override String couldNotUpdateFavorite({required Object error}) => 'ਪਸੰਦ ਅਪਡੇਟ ਕਰਨ ਵਿੱਚ ਅਸਫਲ: ${error}';
	@override String failedToProcess({required Object error}) => 'ਪ੍ਰਕਿਰਿਆ ਕਰਨ ਵਿੱਚ ਅਸਫਲ: ${error}';
	@override String failedToProcessImage({required Object error}) => 'ਤਸਵੀਰ ਨੂੰ ਸੰਭਾਲਣ ਵਿੱਚ ਅਸਫਲ: ${error}';
	@override String errorCompressingImage({required Object error}) => 'ਤਸਵੀਰ ਨੂੰ ਸੰਕੁਚਿਤ ਕਰਨ ਵਿੱਚ ਗਲਤੀ: ${error}';
	@override String get failedToSave => 'ਡਾਟਾ ਨੂੰ ਸੰਭਾਲਣ ਵਿੱਚ ਅਸਫਲ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';
}

// Path: favorites
class _TranslationsFavoritesPa implements TranslationsFavoritesEn {
	_TranslationsFavoritesPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਪਸੰਦੀਆਂ';
	@override String get empty => 'ਕੋਈ ਪਸੰਦ ਕੀਤੀਆਂ ਮੀਲਾਂ ਨਹੀਂ।';
}

// Path: profile
class _TranslationsProfilePa implements TranslationsProfileEn {
	_TranslationsProfilePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਪ੍ਰੋਫਾਈਲ';
	@override String get noProfileData => 'ਕੋਈ ਪ੍ਰੋਫਾਈਲ ਡਾਟਾ ਨਹੀਂ ਮਿਲਿਆ';
	@override String get yourProfile => 'ਤੁਹਾਡੀ ਪ੍ਰੋਫਾਈਲ';
	@override String get viewAndManage => 'ਆਪਣੀ ਸਿਹਤ ਜਾਣਕਾਰੀ ਵੇਖੋ ਅਤੇ ਸੰਭਾਲੋ';
	@override late final _TranslationsProfileSectionsPa sections = _TranslationsProfileSectionsPa._(_root);
	@override String get gender => 'ਲਿੰਗ';
	@override String get height => 'ਉਚਾਈ';
	@override String get weight => 'ਵਜ਼ਨ';
	@override String get age => 'ਉਮਰ';
	@override String get weightGoal => 'ਵਜ਼ਨ ਦਾ ਲਕਸ਼';
	@override String get activityLevel => 'ਸਰਗਰਮੀ ਦੀ ਪੱਧਰ';
	@override String get healthMetrics => 'ਸਿਹਤ ਪਰਿਮਾਣ';
	@override String get notSet => 'ਸੈੱਟ ਨਹੀਂ ਕੀਤਾ';
	@override String get years => 'ਸਾਲ';
	@override String get updatedSuccessfully => 'ਪ੍ਰੋਫਾਈਲ ਸਫਲਤਾ ਨਾਲ ਅਪਡੇਟ ਕੀਤੀ!';
	@override late final _TranslationsProfileCalculatedValuesPa calculatedValues = _TranslationsProfileCalculatedValuesPa._(_root);
}

// Path: healthScore
class _TranslationsHealthScorePa implements TranslationsHealthScoreEn {
	_TranslationsHealthScorePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਸਿਹਤ ਸਕੋਰ';
	@override String get whyThisScore => 'ਇਹ ਸਕੋਰ ਕਿਉਂ ਹੈ?';
	@override String get note => 'ਇਹ ਸਕੋਰ ਪਛਾਏ ਗਏ ਸਮੱਗਰੀਆਂ ਅਤੇ ਪੋਸ਼ਣ ਸਮੰਚਿਤਾ ਦੇ ਆਧਾਰ \'ਤੇ ਏ.ਆਈ. ਦਾ ਅਨੁਮਾਨ ਹੈ। ਹਮੇਸ਼ਾ ਪੋਸ਼ਣ ਮੁਰਖ ਦੇ ਸੰਦਰਭ ਵਿੱਚ ਕਿਸੇ ਵਿਸ਼ੇਸ਼ ਹੈਲਥਕੇਅਰ ਪ੍ਰੋਫੈਸਨਲ ਨਾਲ ਜਾਚ ਕਰੋ।';
	@override String get unhealthy => 'ਅਸਿਹਤਮੰਦ';
	@override String get healthy => 'ਸਿਹਤਮੰਦ';
	@override String get neutral => 'ਤਟਸਥ';
}

// Path: editProfile
class _TranslationsEditProfilePa implements TranslationsEditProfileEn {
	_TranslationsEditProfilePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਪ੍ਰੋਫਾਈਲ ਸੋਧੋ';
	@override late final _TranslationsEditProfileSectionsPa sections = _TranslationsEditProfileSectionsPa._(_root);
	@override String get gender => 'ਲਿੰਗ';
	@override String get dateOfBirth => 'ਜਨਮਤਾਰੀਖ';
	@override String get height => 'ਉਚਾਈ';
	@override String get weight => 'ਵਜ਼ਨ';
	@override String get weightGoal => 'ਵਜ਼ਨ ਦਾ ਲਕਸ਼';
	@override String get activityLevel => 'ਸਰਗਰਮੀ ਪੱਧਰ';
	@override String get metric => 'ਮੀਟਰਿਕ';
	@override String get imperial => 'ਇੰਪਿਰੀਅਲ';
	@override String get metricCm => 'ਮੀਟਰਿਕ (ਸੈਮ)';
	@override String get imperialFtIn => 'ਇੰਪਿਰੀਅਲ (ਫੁੱਟ/ਇੰਚ)';
	@override String get metricKg => 'ਮੀਟਰਿਕ (ਕਿਗ੍ਰਾਮ)';
	@override String get imperialLbs => 'ਇੰਪਿਰੀਅਲ (ਪਾਊਂਡ)';
	@override late final _TranslationsEditProfileGendersPa genders = _TranslationsEditProfileGendersPa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsPa weightGoals = _TranslationsEditProfileWeightGoalsPa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsPa activityLevels = _TranslationsEditProfileActivityLevelsPa._(_root);
}

// Path: settings
class _TranslationsSettingsPa implements TranslationsSettingsEn {
	_TranslationsSettingsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਸੈਟਿੰਗਜ਼';
	@override late final _TranslationsSettingsSectionsPa sections = _TranslationsSettingsSectionsPa._(_root);
	@override late final _TranslationsSettingsEditProfilePa editProfile = _TranslationsSettingsEditProfilePa._(_root);
	@override late final _TranslationsSettingsLanguagePa language = _TranslationsSettingsLanguagePa._(_root);
	@override late final _TranslationsSettingsHeightUnitPa heightUnit = _TranslationsSettingsHeightUnitPa._(_root);
	@override late final _TranslationsSettingsWeightUnitPa weightUnit = _TranslationsSettingsWeightUnitPa._(_root);
	@override late final _TranslationsSettingsMealRemindersPa mealReminders = _TranslationsSettingsMealRemindersPa._(_root);
	@override late final _TranslationsSettingsThemePa theme = _TranslationsSettingsThemePa._(_root);
	@override late final _TranslationsSettingsSendFeedbackPa sendFeedback = _TranslationsSettingsSendFeedbackPa._(_root);
	@override late final _TranslationsSettingsClearAllDataPa clearAllData = _TranslationsSettingsClearAllDataPa._(_root);
	@override late final _TranslationsSettingsDebugOptionsPa debugOptions = _TranslationsSettingsDebugOptionsPa._(_root);
	@override String get developerModeEnabled => 'ਡਿਵੈਲਪਰ ਮੋਡ ਚਾਲੂ ਹੈ!';
}

// Path: reminders
class _TranslationsRemindersPa implements TranslationsRemindersEn {
	_TranslationsRemindersPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਸੁਰੱਖਿਅਤ ਰਹਿਣ ਕਿ ਯਾਦ ਦਿਵਾਈਏ';
	@override String get description => 'ਮੀਲਾਂਨੂੰ ਲੋਗ ਕਰਨ ਲਈ ਹੌਲੇ ਹੌਲੇ ਯਾਦ ਦਿਵਾਈਏ ਅਤੇ ਆਪਣੀਆਂ ਪੋਸ਼ਣ ਲਕਸ਼ਾਂ ਨਾਲ ਸੁਰੱਖਿਅਤ ਰਹਿਣ';
	@override String get notificationsEnabled => 'ਸੂਚਨਾਵਾਂ ਚਾਲੂ';
	@override String get notificationsDisabled => 'ਸੂਚਨਾਵਾਂ ਬੰਦ';
	@override String get enabledSubtitle => 'ਤੁਸੀਂ ਮੀਲ ਮਿਤੀਆਂ ਪ੍ਰਾਪਤ ਕਰੋਗੇ';
	@override String get disabledSubtitle => 'ਮੀਲ ਮਿਤੀਆਂ ਪ੍ਰਾਪਤ ਕਰਨ ਲਈ ਸੂਚਨਾਵਾਂ ਚਾਲੂ ਕਰੋ';
	@override String get mealReminders => 'ਮੀਲਾਂ ਦੀ ਯਾਦ ਦਿਵਾਈਏ';
	@override String get breakfast => 'ਨਾਸ਼ਤੇ';
	@override String get lunch => 'ਦੁਪਹਰ ਦਾ ਖਾਣਾ';
	@override String get dinner => 'ਰਾਤ ਦਾ ਖਾਣਾ';
	@override String get snack => 'ਸਨੈਕ';
	@override String get unknown => 'ਅਣਜਾਣ';
	@override String get change => 'ਬਦਲੋ';
	@override String get enableNotifications => 'ਸੂਚਨਾਵਾਂ ਚਾਲੂ ਕਰੋ';
	@override String get skipForNow => 'ਹੁਣ ਛੱਡੋ';
	@override String get saveChanges => 'ਬਦਲਾਅ ਸੰਭਾਲੋ';
	@override String get enabledSuccessfully => 'ਸੂਚਨਾਵਾਂ ਸਫਲਤਾ ਨਾਲ ਚਾਲੂ ਕੀਤੀਆਂ ਗਈਆਂ!';
	@override String get permissionDenied => 'ਸੂਚਨਾ ਦੀ ਅਧਿਕਾਰ ਨਹੀਂ ਮਿਲੀ';
	@override String errorEnabling({required Object error}) => 'ਸੂਚਨਾਂ ਨੂੰ ਚਾਲੂ ਕਰਨ ਵਿੱਚ ਗਲਤੀ: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'ਸੈਟਅਪ ਪੂਰਾ ਕਰਨ ਵਿੱਚ ਗਲਤੀ: ${error}';
}

// Path: notifications
class _TranslationsNotificationsPa implements TranslationsNotificationsEn {
	_TranslationsNotificationsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastPa breakfast = _TranslationsNotificationsBreakfastPa._(_root);
	@override late final _TranslationsNotificationsLunchPa lunch = _TranslationsNotificationsLunchPa._(_root);
	@override late final _TranslationsNotificationsDinnerPa dinner = _TranslationsNotificationsDinnerPa._(_root);
	@override late final _TranslationsNotificationsSnackPa snack = _TranslationsNotificationsSnackPa._(_root);
	@override late final _TranslationsNotificationsTestPa test = _TranslationsNotificationsTestPa._(_root);
}

// Path: login
class _TranslationsLoginPa implements TranslationsLoginEn {
	_TranslationsLoginPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਲਾਗਿਨ ਕਰੋ';
	@override String get signInWithGoogle => 'ਗੂਗਲ ਨਾਲ ਸਾਈਨ ਇਨ ਕਰੋ';
	@override String get signInFailed => 'ਗੂਗਲ ਸਾਈਨ ਇਨ ਕਰਨਾ ਅਸਫਲ ਹੋਇਆ ਜਾਂ ਰੱਦ ਕੀਤਾ ਗਿਆ।';
}

// Path: disclaimer
class _TranslationsDisclaimerPa implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'ਕ੍ਰਿਪਾ ਕਰਕੇ ਨੋਟ ਕਰੋ';
	@override late final _TranslationsDisclaimerSnapPa snap = _TranslationsDisclaimerSnapPa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimatePa weightEstimate = _TranslationsDisclaimerWeightEstimatePa._(_root);
}

// Path: common
class _TranslationsCommonPa implements TranslationsCommonEn {
	_TranslationsCommonPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get close => 'ਬੰਦ ਕਰੋ';
	@override String get kContinue => 'ਜਾਰੀ ਰੱਖੋ';
}

// Path: errors
class _TranslationsErrorsPa implements TranslationsErrorsEn {
	_TranslationsErrorsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'ਪ੍ਰੋਫਾਈਲ ਡਾਟਾ ਲੋਡ ਕਰਨ ਵਿੱਚ ਗਲਤੀ';
	@override String get somethingWentWrong => 'ਕچھ ਗਲਤ ਹੋ ਗਿਆ ਹੈ।';
}

// Path: debug
class _TranslationsDebugPa implements TranslationsDebugEn {
	_TranslationsDebugPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਡਿਬੱਗ ਵਿਕਲਪ';
	@override late final _TranslationsDebugSectionsPa sections = _TranslationsDebugSectionsPa._(_root);
	@override String get showActiveNotifications => 'ਸਰਗਰਮ ਸੂਚਨਾਵਾਂ ਦਿਖਾਓ';
	@override String get scheduleTestNotification => 'ਟੈਸਟ ਸੂਚਨਾ ਸ਼ੇਡਯੂਲ ਕਰੋ (10 ਸੈਕੰਡ)';
	@override String get triggerBreakfastNotification => 'ਨਾਸ਼ਤੇ ਦੀ ਸੂਚਨਾ ਨੂੰ ਚਾਲੂ ਕਰੋ';
	@override String get cancelAllNotifications => 'ਸਭ ਸੂਚਨਾਵਾਂ ਰੱਦ ਕਰੋ';
	@override String get activeNotifications => 'ਸਰਗਰਮ ਸੂਚਨਾਵਾਂ';
	@override String get noTitle => 'ਕੋਈ ਸ਼ਿਰਲੇਖ ਨਹੀਂ';
	@override String get noBody => 'ਕੋਈ ਪੇਸ਼ਕਾਰ ਨਹੀਂ';
	@override String get fetchTodaysSteps => 'ਅੱਜ ਦੇ ਕਦਮ ਲਿਆਉ';
	@override String get fetchTodaysCalories => 'ਅੱਜ ਦੀਆਂ ਕੈਲੋਰੀਆਂ ਜਾਣੋ';
	@override String get fetchLatestWeight => 'ਹਾਲੀਆ ਵਜ਼ਨ ਲਿਆਉ';
	@override String get fetchLatestHeight => 'ਹਾਲੀਆ ਉਚਾਈ ਲਿਆਉ';
	@override String get writeTestWeight => 'ਟੈਸਟ ਵਜ਼ਨ ਲਿਖੋ (70kg)';
	@override String get writeTestHeight => 'ਟੈਸਟ ਉਚਾਈ ਲਿਖੋ (175cm)';
	@override String get syncLast7Days => 'ਅੰਤਿਮ 7 ਦਿਨਾਂ ਤੋਂ ਸਿੰਕ ਕਰੋ';
	@override String get sync7DaysTitle => '7-ਦਿਨਾਂ ਦਾ ਸਿੰਕ';
	@override String get checkCurrentLocale => 'ਵਰਤਮਾਨ.Locale ਨੂੰ ਚੈੱਕ ਕਰੋ';
	@override String get currentLocale => 'ਵਰਤਮਾਨ.Locale';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'ਭਾਸ਼ਾ: ${languageCode}\nਦੇਸ਼: ${countryCode}\nਇਕਾਈ ਸਿਸਟਮ: ${unitSystem}';
	@override String get latestWeight => 'ਹਾਲੀਆ ਵਜ਼ਨ';
	@override String get latestHeight => 'ਹਾਲੀਆ ਉਚਾਈ';
	@override String get todaysCalories => 'ਅੱਜ ਦੀਆਂ ਕੈਲੋਰੀਆਂ';
	@override String totalCaloriesBurned({required Object calories}) => 'ਕੁੱਲ ਕੈਲੋਰੀਆਂ ਜੋ ਜਲਾਈਆਂ ਗਈਆਂ: ${calories}';
	@override String syncSuccess({required Object count}) => 'ਪਿਛਲੇ 7 ਦਿਨਾਂ ਵਿੱਚ ਕਦਮ, ਕੈਲੋਰੀਆਂ ਅਤੇ ਵਜ਼ਨ ਲਈ ${count} ਡੇਟਾ ਪੁਇੰਟ ਲਿਆਉਣ ਵਿੱਚ ਸਫਲਤਾ!';
	@override String get noWeightData => 'ਪਿਛਲੇ 30 ਦਿਨਾਂ ਵਿੱਚ ਕੋਈ ਵਜ਼ਨ ਡਾਟਾ ਨਹੀਂ ਮਿਲਿਆ।';
	@override String get noHeightData => 'ਪਿਛਲੇ ਸਾਲ ਵਿੱਚ ਕੋਈ ਉਚਾਈ ਡਾਟਾ ਨਹੀਂ ਮਿਲਿਆ।';
	@override String get noCalorieData => 'ਅੱਜ ਲਈ ਕੋਈ ਕੈਲੋਰੀਆਂ ਡਾਟਾ ਮਿਲਿਆ ਨਹੀਂ।';
	@override String get weightWritten => 'ਟੈਸਟ ਵਜ਼ਨ (70kg) ਸੁਚਿਤਤਾ ਨਾਲ ਲਿਖਿਆ ਗਿਆ।';
	@override String get weightWriteFailed => 'ਟੈਸਟ ਵਜ਼ਨ ਲਿਖਣ ਵਿੱਚ ਅਸਫਲ।';
	@override String get heightWritten => 'ਟੈਸਟ ਉਚਾਈ (175cm) ਸੁਚਿਤਤਾ ਨਾਲ ਲਿਖੀ ਗਈ।';
	@override String get heightWriteFailed => 'ਟੈਸਟ ਉਚਾਈ ਲਿਖਣ ਵਿੱਚ ਅਸਫਲ।';
	@override String get noNotifications => 'ਕੋਈ ਸਰਗਰਮ ਸੂਚਨਾਵਾਂ ਨਹੀਂ।';
	@override String get testNotificationScheduled => 'ਟੈਸਟ ਸੂਚਨਾ 10 ਸਕਿੰਟ ਤੋਂ ਬਾਅਦ ਸਮਾਂ ਦਰਜ ਕੀਤੀ ਗਈ';
	@override String get testNotificationBody => 'ਇਹ 10 ਸਕਿੰਟ ਤੋਂ ਬਾਅਦ ਸਮਾਂ ਦਰਜ ਲਈ ਇੱਕ ਟੈਸਟ ਸੂਚਨਾ ਹੈ.';
	@override String get breakfastNotificationTriggered => 'ਨਾਸ਼ਤਾ ਸੂਚਨਾ ਨੂੰ ਚਾਲੂ ਕੀਤਾ ਗਿਆ ਹੈ.';
	@override String get allNotificationsCancelled => 'ਸਭ ਸੂਚਨਾਵਾਂ ਰੱਦ ਕੀਤੀਆਂ ਗਈਆਂ ਹਨ.';
	@override String get fetchingData => 'ਪਿਛਲੇ 7 ਦਿਨਾਂ ਲਈ ਡਾਟਾ ਲਿਆਉਂਦੇ ਹੋਏ...';
	@override String id({required Object id}) => 'ID: ${id}';
}

// Path: health
class _TranslationsHealthPa implements TranslationsHealthEn {
	_TranslationsHealthPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'ਹੈਲਥ ਕਨੈਕਟ ਨਾਲ ਸਿੰਕ ਕਰਨ ਵਿੱਚ ਅਸਫਲ';
	@override String get mealSynced => 'ਮੀਲ ਨੂੰ ਹੈਲਥ ਕਨੈਕਟ ਨਾਲ ਸਿੰਕ ਕੀਤਾ ਗਿਆ';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesPa implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionPa foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionPa._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisPa aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisPa._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationPa healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationPa._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderPa implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਤੁਹਾਡਾ ਲਿੰਗ ਕੀ ਹੈ?';
	@override String get description => 'ਲਿੰਗ ਸਾਨੂੰ ਤੁਹਾਡਾ ਬੇਸਲ ਮੈਟਾਬੋਲਿਕ ਦਰ (BMR) ਸਹੀ ਢੰਗ ਨਾਲ ਗਿਣਤੀ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ।';
	@override String get next => 'ਅੱਗੇ';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightPa implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਤੁਸੀਂ ਕਿੰਨੀ ਉੱਚੇ ਹੋ?';
	@override String get description => 'ਤੁਹਾਡੇ ਕਿੱਤੇ ਦੀ ਮਦਦ ਨਾਲ ਅਸੀਂ ਤੁਹਾਡਾ BMI ਅਤੇ ऊर्जा ਦੀ ਲੋੜ ਸਹੀ ਢੰਗ ਨਾਲ ਗਿਣਤੀ ਕਰ ਸਕਦੇ ਹਾਂ।';
	@override String get metric => 'ਮੀਟਰਿਕ';
	@override String get imperial => 'ਅੰਤਰ੍ਰਾਸ਼ਟਰੀ';
	@override String get next => 'ਅੱਗੇ';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightPa implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'ਤੁਹਾਡਾ ਮੋਜੂਦਾ ਵਜ਼ਨ ਕੀ ਹੈ?';
	@override String get currentDescription => 'ਤੁਹਾਡਾ ਮੋਜੂਦਾ ਵਜ਼ਨ ਤੁਹਾਡੇ ਰੋਜ਼ਾਨਾ ਨਿਸ਼ਾਨਿਆਂ ਨੂੰ ਵਿਅਕਤੀਗਤ ਕਰਨ ਲਈ ਜਰੂਰੀ ਹੈ।';
	@override String get targetTitle => 'ਤੁਹਾਡਾ ਲਕਸ਼ ਵਜ਼ਨ ਕੀ ਹੈ?';
	@override String get targetDescription => 'ਇੱਕ ਲਕਸ਼ ਵਜ਼ਨ ਸੈੱਟ ਕਰਨਾ ਸਾਨੂੰ ਤੁਹਾਡੀ ਦਿਰਘਕਾਲੀ ਯੋਜਨਾ ਨਿਰਧਾਰਤ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ।';
	@override String get metric => 'ਮੀਟਰਿਕ';
	@override String get imperial => 'ਅੰਤਰ੍ਰਾਸ਼ਟਰੀ';
	@override String get next => 'ਅੱਗੇ';
}

// Path: onboarding.age
class _TranslationsOnboardingAgePa implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਤੁਹਾਡੀ ਜਨਮਤਾਰੀਖ ਕਦੋਂ ਹੈ?';
	@override String get description => 'ਤੁਹਾਡੀ ਉਮਰ ਸਾਨੂੰ ਤੁਹਾਡੇ ਕੈਲੋਰੀਆਂ ਦੀ ਜਰੂਰਤ ਨੂੰ ਸਹੀ ਢੰਗ ਨਾਲ ਗਿਣਤੀ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਦੀ ਹੈ।';
	@override String get next => 'ਅੱਗੇ';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScalePa implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScalePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ਗੁਣਾਕਾਰ';
	@override String get healthy => 'ਸਿਹਤਮੰਦ';
	@override String get overweight => 'ਓਬਰਵੇਟ';
	@override String get obese => 'ਮੋਰਬਿਡ';
	@override late final _TranslationsOnboardingBmiScaleCategoriesPa categories = _TranslationsOnboardingBmiScaleCategoriesPa._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesPa messages = _TranslationsOnboardingBmiScaleMessagesPa._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalPa implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਤੁਹਾਡਾ ਲਕਸ਼ ਕੀ ਹੈ?';
	@override String get description => 'ਉਨ੍ਹਾਂ ਵਿੱਚੋਂ ਲਕਸ਼ ਚੁਣੋ ਜੋ ਤੁਹਾਨੂੰ ਪ੍ਰਾਪਤ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelPa implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਤੁਸੀਂ ਕਿੰਨੇ ਸਰਗਰਮ ਹੋ?';
	@override String get description => 'ਇਹ ਸਾਨੂੰ ਤੁਹਾਡੇ ਰੋਜ਼ਾਨਾ ਕੈਲੋਰੀਆਂ ਦੀ ਜਰੂਰਤ ਨੂੰ ਸਹੀ ਢੰਗ ਨਾਲ ਗਿਣਤੀ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectPa implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਹੈਲਥ ਕਨੈਕਟ ਨਾਲ ਜੁੜੋ';
	@override String get description => 'ਬਿਹਤਰ ਦ੍ਰਿਸ਼ਟੀਕੋਣ ਅਤੇ ਸੁਚਾਰੂ ਕੈਲੋਰੀ ਟਰੈਕਿੰਗ ਲਈ ਆਪਣੇ ਸਿਹਤ ਡਾਟਾ ਨੂੰ ਸੰਕਲਨ ਕਰੋ';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingPa automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingPa._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsPa progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsPa._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationPa seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationPa._(_root);
	@override String get connected => 'ਹੈਲਥ ਕਨੈਕਟ ਜੁੜਿਆ ਹੋਇਆ';
	@override String get notConnected => 'ਹੈਲਥ ਕਨੈਕਟ ਜੁੜਿਆ ਹੋਇਆ ਨਹੀਂ';
	@override String get setup => 'ਹੈਲਥ ਕਨੈਕਟ ਸੈਟਅਪ ਕਰੋ';
	@override String get skipForNow => 'ਹੁਣ ਛੱਡੋ';
	@override String get statusConnected => 'ਹੈਲਥ ਕਨੈਕਟ ਜੁੜਿਆ ਹੋਇਆ ਹੈ।';
	@override String get statusSuccess => 'ਹੈਲਥ ਕਨੈਕਟ ਬਾਗ਼ ਕਾਮਯਾਬੀ ਨਾਲ ਜੁੜਿਆ ਹੋਇਆ ਹੈ!';
	@override String statusPermissionDenied({required Object appLabel}) => 'ਅਧਿਕਾਰ ਇਨਕਾਰ ਕੀਤਾ ਗਿਆ। ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੇ ਫ਼ੋਨ ਦੇ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ${appLabel} ਲਈ ਹੈਲਥ ਕਨੈਕਟ ਅਧਿਕਾਰਾਂ ਨੂੰ ਮਨਜੂਰੀ ਦਿਓ।';
	@override String statusError({required Object error}) => 'ਹੈਲਥ ਕਨੈਕਟ ਸੈਟਅਪ ਕਰਨ ਵਿੱਚ ਗਲਤੀ: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementPa implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessPa trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessPa._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfilePa healthProfile = _TranslationsOnboardingReinforcementHealthProfilePa._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestylePa goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestylePa._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalPa implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਤੁਹਾਡਾ ਰੋਜ਼ਾਨਾ ਲਕਸ਼ ਸੈੱਟ ਕਰੋ';
	@override String get titleSet => 'ਤੁਹਾਡਾ ਰੋਜ਼ਾਨਾ ਲਕਸ਼';
	@override String get description => 'ਕੀ ਤੁਸੀਂ ਆਪਣੀ ਵੈਲਨੈੱਸ ਯਾਤਰਾ ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਤਿਆਰ ਹੋ? ਆਪਣੇ ਰੋਜ਼ਾਨਾ ਕੈਲੋਰੀ ਲਕਸ਼ ਨੂੰ ਤਹਿਤ ਕਰੋ ਤਾ ਕਿ ਤੁਸੀਂ ਆਪਣੀ ਪ੍ਰਗਤੀ ਨੂੰ ਸ਼ੁਰੂ ਕਰ ਸੱਕੋ।';
	@override String get descriptionSet => 'ਤੁਹਾਡਾ ਕੰਪਾਸ ਸੈੱਟ ਹੈ! ਇਹ ਤੁਹਾਡਾ ਰੋਜ਼ਾਨਾ ਕੈਲੋਰੀ ਲਕਸ਼ ਹੀ ਤੁਹਾਨੂੰ ਗਾਈਡ ਕਰਨ ਲਈ ਹੈ।';
	@override String get yourGoal => 'ਤੁਹਾਡਾ ਲਕਸ਼';
	@override String get dailyCalories => 'ਰੋਜ਼ਾਨਾ ਕੈਲੋਰੀ (kcal)';
	@override String get setGoal => 'ਲਕਸ਼ ਸੈੱਟ ਕਰੋ';
	@override String get intake => 'ਵਾਟਾ';
	@override String get burned => 'ਜਲਾਈ';
	@override String get weightImpact => 'ਵਜ਼ਨ ਤੇ ਪ੍ਰਭਾਵ';
	@override String get estLoss => 'ਅੰਦਾਜ਼ੀ ਹਾਨੀ';
	@override String get estGain => 'ਅੰਦਾਜ਼ੀ ਲਾਭ';
	@override String get kcal => 'ਕੈਲੋਰੀ';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryPa implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਰੋਜ਼ਾਨਾ ਸਾਰ';
	@override String get calories => 'ਕੈਲੋਰੀ';
	@override String get carbs => 'ਕਾਰਬ';
	@override String get protein => 'ਪਰੋਟੀਨ';
	@override String get fat => 'ਚਰਬੀ';
	@override String get fiber => 'ਫਾਈਬਰ';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressPa implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਅੱਜ ਦਾ ਮੈਕਰੋ ਵੰਡ';
	@override String get target => 'ਲਕਸ਼';
	@override String get current => 'ਵਰਤਮਾਨ';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryPa implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => '7-ਦਿਨਾਂ ਦਾ ਮੈਕਰੋ ਇਤਿਹਾਸ';
	@override String get noHistoryYet => 'ਅਜੇ ਤੱਕ ਕੋਈ ਇਤਿਹਾਸ ਨਹੀਂ';
	@override String get startLogging => 'ਮੀਲਾਂ ਨੂੰ ਲੋਗ ਕਰਨ ਸ਼ੁਰੂ ਕਰੋ ਤਾਂ ਜੋ ਤੁਸੀਂ ਇੱਥੇ ਆਪਣੇ 7-ਦਿਨਾਂ ਦੇ ਮੈਕਰੋ ਰੁਝਾਨਾਂ ਨੂੰ ਦੇਖ ਸਕੋ';
}

// Path: home.mealLog
class _TranslationsHomeMealLogPa implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਲੋਗ ਕੀਤੀਆਂ ਮੀਲਾਂ';
	@override String get emptyMessage => 'ਆਪਣੀ ਆਖਰੀ ਮੀਲ ਦੀ ਤਸਵੀਰ ਲਓ ਤਾਂ ਜੋ ਇਹ ਇੱਥੇ ਲੋਗ ਹੋ ਸਕੇ.';
	@override String get noMealsToday => 'ਅੱਜ ਲਈ ਕੋਈ ਮੀਲਾਂ ਨਹੀ ਦਰਜ ਕੀਤੀਆਂ';
	@override String get seeAllMeals => 'ਸਭ ਮੀਲਾਂ ਦੇਖੋ';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionPa implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਏ.ਆਈ. ਨਾਲ ਤੇਜ਼ੀ ਨਾਲ ਜੋੜੋ';
	@override String get description => 'ਆਪਣੀ ਮੀਲ ਦਾ ਵੇਰਵਾ ਦਿਓ, ਅਤੇ ਏ.ਆਈ. ਨੂੰ ਵੇਰਵਿਆਂ ਨੂੰ ਸੰਭਾਲਣ ਦਿਓ।';
	@override String get hint => 'ਉਦਾਹਰਨ: ਮੇਰੇ ਨਾਸ਼ਤੇ ਵਿੱਚ ਮੈਂ ਇੱਕ ਵੱਡੇ ਬੋਲ ਚੀਲੇ ਦਾ ਨਾਮ &quot; ਕੀਤੇ ਅਤੇ ਇੱਕ ਲੱਖੇ ਬਨਾਨਾ ਅਤੇ ਇੱਕ ਹੁਇ ਪੋਡੀ ...';
	@override String get analyzeMeal => 'ਮੀਲ ਦਾ ਵਿਸ਼ਲੇਸ਼ਣ ਕਰੋ';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsPa implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਪੀਰੇ ਮੀਲਾਂ';
	@override String get description => 'ਆਪਣੀਆਂ ਪਸੰਦੀਆਂ ਮੀਲਾਂ ਵਿੱਚੋਂ ਇੱਕ ਨੂੰ ਤੇਜ਼ੀ ਨਾਲ ਜੋੜੋ';
	@override String get noFavorites => 'ਕੋਈ ਪਸੰਦ ਕੀਤੀਆਂ ਮੀਲਾਂ ਨਹੀਂ।';
	@override String get addFavoriteHint => 'ਕਿਸੇ ਮੀਲ \'ਤੇ ਸਟਾਰ \'ਤੇ ਕਲਿਕ ਕਰੋ, ਇਸ ਨੂੰ ਪਸੰਦ ਕਰਨ ਲਈ ਮਾਰਕ ਕਰਨ ਲਈ।';
	@override String get seeAll => 'ਸਭ ਦੇਖੋ';
	@override String get add => 'ਜੋੜੋ';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapPa implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਤਸਵੀਰ ਲਓ &amp; ਆਪਣੀ ਮੀਲ ਨੂੰ ਟ੍ਰੈਕ ਕਰੋ';
	@override String get description => 'ਏ.ਆਈ. ਵਿਸ਼ਲੇਸ਼ਣ ਲਈ ਆਪਣੇ ਭੋਜਨ ਦੀ ਤਸਵੀਰ ਲੈਣ ਲਈ ਆਪਣੇ ਕੈਮਰੇ ਦਾ ਉਪਯੋਗ ਕਰੋ।';
	@override String get openCamera => 'ਕੈਮਰੇ ਨੂੰ ਖੋਲ੍ਹੋ';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthPa implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਹੈਲਥ ਕਨੈਕਟ ਨਾਲ ਸੰਕਲਨ ਕਰੋ';
	@override String get description => 'ਆਪਣੇ ਪੋਸ਼ਣ ਡਾਟਾ ਨੂੰ ਹੈਲਥ ਕਨੈਕਟ ਨਾਲ ਸੰਕਲਨ ਕਰੋ';
	@override String get install => 'ਇੰਸਟਾਲ ਕਰੋ';
	@override String get connect => 'ਜੁੜੋ';
}

// Path: meal.nutrition
class _TranslationsMealNutritionPa implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get calories => 'ਕੈਲੋਰੀ';
	@override String get carbs => 'ਕਾਰਬਸ (ਗ)';
	@override String get protein => 'ਪਰੋਟੀਨ (ਗ)';
	@override String get fat => 'ਚਰਬੀ (ਗ)';
	@override String get fiber => 'ਫਾਈਬਰ (ਗ)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationPa implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਮੀਲ ਮਿਟਾਓ';
	@override String get message => 'ਕੀ ਤੁਸੀਂ ਇਸ ਮੀਲ ਦੇ ਦਰਜ ਨੂੰ ਮਿਟਾਉਣ ਲਈ ਯਕੀਨੀ ਹੋ?';
	@override String get cancel => 'ਰੱਦ ਕਰੋ';
	@override String get delete => 'ਮਿਟਾਓ';
}

// Path: profile.sections
class _TranslationsProfileSectionsPa implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ਪ੍ਰੋਫਾਈਲ';
	@override String get basicInformation => 'ਮੁਲ ਬੇਨਤੀ ਜਾਣਕਾਰੀ';
	@override String get goalsAndActivity => 'ਲਕਸ਼ਾਂ ਅਤੇ ਸਰਗਰਮੀ';
	@override String get calculatedValues => 'ਗਿਣਤੀ ਕੀਤੇ ਗਏ ਮੁੱਲ';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesPa implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'ਬੀ.ਐਮ.ਆਰ.';
	@override String get tdee => 'ਟੀ.ਡੀ.ਈ.ਈ.';
	@override String get dailyGoal => 'ਰੋਜ਼ਾਨਾ ਲਕਸ਼';
	@override String get calPerDay => 'ਕੈਲੋਰੀ/ਦਿਨ';
	@override String get notAvailable => 'ਐੱਨ/ਏ';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsPa implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ਜਾਣਕਾਰੀ';
	@override String get physicalMeasurements => 'ਭੌਤਿਕ ਮਾਪ';
	@override String get goalsAndActivity => 'ਲਕਸ਼ ਅਤੇ ਸਰਗਰਮੀ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersPa implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get male => 'ਮਰਦ';
	@override String get female => 'ਜਨਾਨੀ';
	@override String get other => 'ਹੋਰ';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsPa implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightPa loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightPa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightPa maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightPa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightPa gainWeight = _TranslationsEditProfileWeightGoalsGainWeightPa._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsPa implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryPa sedentary = _TranslationsEditProfileActivityLevelsSedentaryPa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActivePa lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActivePa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActivePa moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActivePa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActivePa veryActive = _TranslationsEditProfileActivityLevelsVeryActivePa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActivePa extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActivePa._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsPa implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ਪ੍ਰੋਫਾਈਲ';
	@override String get localization => 'ਅੰਤਰਰਾਸ਼ਟੀਕਰਨ';
	@override String get notifications => 'ਸੂਚਨਾਵਾਂ';
	@override String get supportAndLegal => 'ਸਹਾਇਤਾ ਅਤੇ ਕਾਨੂੰਨੀ';
	@override String get dangerZone => 'ਖਤਰੇ ਵਾਲਾ ਇਲਾਕਾ';
	@override String get developer => 'ਡਿਵੈਲਪਰ';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfilePa implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfilePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਪ੍ਰੋਫਾਈਲ ਸੋਧੋ';
	@override String get subtitle => 'ਆਪਣੀ ਜਾਣਕਾਰੀ ਨੂੰ ਅਪਡੇਟ ਕਰੋ';
}

// Path: settings.language
class _TranslationsSettingsLanguagePa implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguagePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਭਾਸ਼ਾ';
	@override String get subtitle => 'ਆਪਣੀ ਪਸੰਦੀਦਾ ਭਾਸ਼ਾ ਚੁਣੋ';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitPa implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਉਚਾਈ ਦੀ ਇਕਾਈ';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitPa implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਵਜ਼ਨ ਦੀ ਇਕਾਈ';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersPa implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਮੀਲ ਮਿਤੀ';
	@override String get subtitle => 'ਕਾਲਾਂਦਰੀਆਂ ਨਾਲ ਸੁਰੱਖਿਅਤ ਰੱਖੋ';
}

// Path: settings.theme
class _TranslationsSettingsThemePa implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਥੀਮ';
	@override String get subtitle => 'ਆਪਣੀ ਪਸੰਦੀਦਾ ਥੀਮ ਚੁਣੋ';
	@override String get light => 'ਪਹਿਲੀ';
	@override String get dark => 'ਅੰਧੇਰਾ';
	@override String get system => 'ਸਿਸਟਮ';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackPa implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਫੀਡਬੈਕ ਭੇਜੋ';
	@override String subtitle({required Object appLabel}) => '${appLabel} ਨੂੰ ਸੁਧਾਰਣ ਵਿੱਚ ਸਹਾਇਤਾ ਕਰੋ';
	@override String emailSubject({required Object appLabel}) => '${appLabel} ਐਪ ਫੀਡਬੈਕ';
	@override String get emailBodyPrefix => 'ਕਿਰਪਾ ਕਰਕੇ ਹੇਠਾਂ ਆਪਣਾ ਫੀਡਬੈਕ ਦਿਓ:';
	@override String get appVersion => 'ਐਪ ਵਰਜਨ';
	@override String get device => ' ਡਿਵਾਈਸ';
	@override String get osVersion => 'ਓ.എസ്. ਵਰਜਨ';
	@override String get uid => 'ਯੂ.ਆਈ.ਡੀ.';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataPa implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਸਾਰੀ ਜਾਣਕਾਰੀ ਮਿਟਾਓ';
	@override String get subtitle => 'ਤੁਹਾਡੀ ਸਾਰੀ ਜਾਣਕਾਰੀ ਨੂੰ ਅਬਾਦੀ ਦਾ ਹਾਜ਼ਰ ਕੀਤਾ';
	@override String get confirmationTitle => 'ਸਾਰੀ ਜਾਣਕਾਰੀ ਮਿਟਾਓ?';
	@override String get confirmationMessage => 'ਇਹ ਕਾਰਵਾਈ ਰਿਵਾਜ਼ ਨਹੀਂ ਹੋ ਸਕਦੀ। ਤੁਹਾਡੀਆਂ ਸਾਰੀਆਂ ਦਰਜ ਕੀਤੀਆਂ ਮੀਲਾਂ, ਪ੍ਰੀਫਰੈਂਸ ਅਤੇ ਪ੍ਰੋਫਾਈਲ ਸੈਟਿੰਗਾਂ ਅਬਾਦੀ ਧਿਆਨ ਨਾਲ ਮਿਟਾਈਆਂ ਜਾਣਗੀਆਂ।';
	@override String get cancel => 'ਰੱਦ ਕਰੋ';
	@override String get clearEverything => 'ਸਾਰੀ ਮਿਟਾਓ';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsPa implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਡਿਬੱਗ ਵਿਕਲਪ';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastPa implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਨਾਸ਼ਤ ਦਾ ਸਮਾਂ! 🍳';
	@override String get body => 'ਆਪਣੀ ਨਾਸ਼ਤੇ ਨੂੰ ਲੋਗ ਕਰਨਾ ਨਾ ਭੁੱਲੋ';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchPa implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਦੁਪਹਰ ਦਾ ਖਾਣਾ ਸਮਾਂ! 🥗';
	@override String get body => 'ਤੁਹਾਡੇ ਦੁਪਹਰ ਦਾ ਖਾਣਾ ਲੋਗ ਕਰਨ ਸਮਾਂ';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerPa implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਰਾਤ ਦਾ ਖਾਣਾ ਸਮਾਂ! 🍽️';
	@override String get body => 'ਆਪਣੀ ਰਾਤ ਦਾ ਖਾਣਾ ਲੋਗ ਕਰਨਾ ਨਾ ਭੁੱਲੋ';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackPa implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਸਨੈਕ ਸਮਾਂ! 🍎';
	@override String get body => 'ਇੱਕ ਸਿਹਤਮੰਦ ਸਨੈਕ ਲਈ ਸਮਾਂ';
}

// Path: notifications.test
class _TranslationsNotificationsTestPa implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਟੈਸਟ ਸੂਚਨਾ';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapPa implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} ਅਦ੍ਧਾਰਿਤ ਪੋਸ਼ਣ ਦੀ ਜਾਣਕਾਰੀ ਪ੍ਰਦਾਨ ਕਰਦਾ ਹੈ। ਸਹੀਤਾ ਤੁਹਾਡੇ ਦਰਜ ਅਤੇ ਭੋਜਨ ਦੇ ਤਰੀਕਿਆਂ \'ਤੇ ਨਿਰਭਰ ਕਰਦੀ ਹੈ। ਗਾਈਡ ਦੇ ਤੌਰ \'ਤੇ ਵਰਤੋਂ ਕਰੋ, ਨਿਰਧਾਰਿਤ ਸਰੋਤ ਨਹੀਂ। ਵਿਅਕਤੀਗਤ ਪੋਸ਼ਣ ਸਲਾਹ ਲਈ ਕਿਸੇ ਪ੍ਰੋਫੈਸ਼ਨਲ ਨਾਲ ਯੋਗ ਕਰੋ।';
	@override late final _TranslationsDisclaimerSnapPortionSizePa portionSize = _TranslationsDisclaimerSnapPortionSizePa._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsPa preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsPa._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsPa ingredients = _TranslationsDisclaimerSnapIngredientsPa._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsPa databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsPa._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimatePa implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimatePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਵਜ਼ਨ ਅੰਦਾਜ਼ੇ ਬਾਰੇ';
	@override String get description => 'ਅੰਦਾਜ਼ੇ ਦੀ ਰੋਜ਼ਾਨਾ ਹਲਾਤ ਵਰਤੇ ਜਾ ਰਹੀ ਕੈਲੋਰੀਆਂ ਦੇ ਆਧਾਰ \'ਤੇ ਉਮੀਦ ਕੀਤੀ ਜਾਣ ਵਾਲੀ ਵਜ਼ਨ ਬਦਲਬੇਦ ਹੋਣ ਦੀ ਇੱਕ ਸੀਮਿਤ ਨਜ਼ਰ ਹੈ। ਇਹ ਇਸ ਲੇਖਕਤਾਇ ਪੇਸ਼ ਕਰਨ ਲਈ ਨਹੀਂ ਹੈ, ਸਿਰਫ ਇੱਕ ਮੋਟਿਵਿਤਿਵਣਾ ਰਾਹਿਨਿਸ਼ਾਨ ਦੇ ਤੌਰ \'ਤੇ।';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyPa calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyPa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsPa biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsPa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightPa waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightPa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidancePa professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidancePa._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsPa implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'ਸੂਚਨਾਵਾਂ';
	@override String get healthConnect => 'ਹੈਲਥ ਕਨੈਕਟ';
	@override String get appInfo => 'ਐਪ ਜਾਣਕਾਰੀ';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionPa implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਸਮਾਰਟ ਫੂਡ ਪਹਿਚਾਣ';
	@override String get description => 'ਇੱਕ ਤਸਵੀਰ ਲਓ ਅਤੇ ਏ.ਆਈ. ਨੂੰ ਤੁਹਾਡੇ ਭੋਜਨ ਦੀ ਪਹਚਾਣ ਕਰਨ ਦਿਓ';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisPa implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਏ.ਆਈ. ਵਿਸ਼ਲੇਸ਼ਣ';
	@override String get description => 'ਤੁਹਾਡੇ ਵੇਰਵਿਆਂ ਤੋਂ ਤੁਰੰਤ ਪੋਸ਼ਣ ਲਈ ਜਾਣਕਾਰੀ ਪ੍ਰਾਪਤ ਕਰੋ';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationPa implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਸਿਹਤ ਇੰਟੇਗ੍ਰੇਸ਼ਨ';
	@override String get description => 'ਬਿਹਤਰ ਦ੍ਰਿਸ਼ਟੀਕੋਣ ਲਈ ਹੈਲਥ ਕਨੈਕਟ ਨਾਲ ਜੁੜੋ';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesPa implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ਗੁਣਾਕਾਰ';
	@override String get healthyWeight => 'ਸਿਹਤਮੰਦ ਵਜ਼ਨ';
	@override String get overweight => 'ਓਬਰਵੇਟ';
	@override String get obese => 'ਮੋਰਬਿਡ';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesPa implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ਅਸੀਂ ਤੁਹਾਨੂੰ ਪੋਸ਼ਣ ਭਰਪੂਰ ਭੋਜਨ ਦੇ ਨਾਲ ਸਹਿਜ ਵਜ਼ਨ ਪ੍ਰਾਪਤ ਕਰਨ ਲਈ ਸਹਾਇਤਾ ਕਰ ਸਕਦੇ ਹਾਂ।';
	@override String get healthy => 'ਸ਼੍ਲਾਘਨੀ ਕਾਰਜ! ਤੁਸੀਂ ਸਿਹਤਮੰਦ ਰੇਖਾ ਵਿੱਚ ਹੋ। ਅਸੀਂ ਤੁਹਾਨੂੰ ਤੁਹਾਡੀ ਉਤਜ਼ਾਕਤਾ ਅਤੇ energy ਵੇਲਿਊ ਬਣਾਈ ਰੱਖਣ ਵਿੱਚ ਮਦਦ ਕਰਾਂਗੇ।';
	@override String overweight({required Object appLabel}) => '${appLabel} ਤੁਹਾਡੇ ਲਕਸ਼ ਨੂੰ ਆਰਾਮ ਨਾਲ ਪ੍ਰਾਪਤ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਨ ਲਈ ਏ.ਆਈ. ਨਿਰਧਾਰਿਤ ਟਰੈਕਿੰਗ ਦੇ ਨਾਲ ਤੁਹਾਡੇ ਸਫ਼ਰ ਨੂੰ ਆਸਾਨ ਬਣਾਏਗਾ।';
	@override String get obese => 'ਅਸੀਂ ਤੁਹਾਡੇ ਸਿਹਤ ਲਕਸ਼ ਲਈ ਵਿਅਕਤੀਗਤ ਰਾਹਦਾਰੀ ਅਤੇ ਸਥਾਈ ਰਣਨੀਤੀਆਂ ਨਾਲ ਤੁਹਾਡੀ ਸਹਾਇਤਾ ਲਈ ਤਿਆਰ ਹਾਂ।';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingPa implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਆਟੋਮੈਟਿਕ ਕੈਲੋਰੀ ਟਰੈਕਿੰਗ';
	@override String get description => 'ਤੁਹਾਡੇ ਫਿਟਨੈਸ ਐਪਸ ਤੋਂ ਜ਼ਰੁਰਤੀਂ ਕੈਲੋਰੀਆਂ ਦੀ ਮੈਨਾ';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsPa implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਤਰੱਕੀ ਬਾਰੇ ਜਾਣਕਾਰੀ';
	@override String get description => 'ਤੁਹਾਡੇ ਸਿਹਤ ਰੁਝਾਨਾਂ ਵਿੱਚ ਵਿਸਥਾਰਿਤ ਜਾਣਕਾਰੀ ਪ੍ਰਾਪਤ ਕਰੋ';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationPa implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਸਹਿਜ ਇੰਟੇਗ੍ਰੇਸ਼ਨ';
	@override String get description => 'ਤੁਹਾਡੇ ਮਨਪਸੰਦ ਸਿਹਤ ਐਪਸ ਤੋਂ ਡਾਟਾ ਸੰਕਲਨ ਕਰੋ';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessPa implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਤੁਸੀਂ ਇਕੱਲੇ ਨਹੀਂ ਹੋ';
	@override String get genericMessage => 'ਖੋਜ ਦਿਖਾਉਂਦੀ ਹੈ ਕਿ ਨਿਰੰਤਰ ਨਿਗ੍ਰਾਨੀ ਲੰਬੇ ਸਮੇਂ ਦੇ ਸਫਲਤਾ ਦਾ ਪਹਿਲਾ ਅਨੁਮਾਨਕ ਹੈ।';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => ' ਇੱਕ ${age} ਸਾਲ ਦਾ ${gender} ਜੋ ${goal} ਦੀ ਤਲਾਸ਼ ਵਿੱਚ ਹੈ, ਨਿਰੰਤਰ ਨਿਗ੍ਰਾਨੀ ਸਫਲਤਾ ਦਾ ਪਹਿਲਾ ਅਨੁਮਾਨਕ ਹੈ।';
	@override String closingMessage({required Object appLabel}) => '${appLabel} ਨਾਲ ਇਹ ਦਸਤਾਵੇਜ਼ੀ ਕਰਨ ਵਿੱਚ 10x ਜ਼ਿਆਦਾ ਆਸਾਨ ਹੈ।';
	@override String get getStartedTitle => 'ਕੀ ਤੁਸੀਂ ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਤਿਆਰ ਹੋ?';
	@override String get tipPhoto => 'ਤੁਰੰਤ ਵਿਸ਼ਲੇਸ਼ਣ ਲਈ ਆਪਣੇ ਭੋਜਨਾਂ ਦੀ ਤਸਵੀਰ ਲਓ';
	@override String get tipConsistency => 'ਮਤਲਬੀ ਮੁਨਾਸਿਬਤਾ ਲਈ ਨਿਯਮਤ ਰੋਜ਼ਾਨਾ ਰਾਹੜਾ ਕਰੋ';
	@override String get tipProgress => 'ਮੋਟਿਵੇਟਡ ਰਹਿਣ ਲਈ ਦਿਨਦਰਦ ਪਗਦੰਡਾਂ ਦਾ ਟਰੈਕ ਕਰਨਾ';
	@override String get button => 'ਚੱਲੀਏ';
	@override String get defaultGender => 'ਵਿਅਕਤੀ';
	@override String get defaultGoal => 'ਸਿਹਤਮੰਦ ਤੁਸੀਂ';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfilePa implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfilePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਤੁਹਾਡੀ ਸਿਹਤ ਪ੍ਰੋਫਾਈਲ';
	@override String bmiDescription({required Object bmi}) => 'ਤੁਹਾਡੇ ਮਾਪਾਂ ਦੇ ਆਧਾਰ \'ਤੇ, ਤੁਹਾਡਾ BMI ${bmi} ਹੈ।';
	@override String get finalizeDescription => 'ਆਉ ਸਾਡੀ ਪੋਰਫਾਈਲ ਨੂੰ ਆਖਰੀ ਬਣਾਈਏ ਤਾਂ ਜੋ ਤੁਸੀਂ ਆਪਣਾ ਤਜ਼ੁਰਬਾ ਵਿਅਕਤੀਗਤ ਕਰ ਸਕੋ।';
	@override String get goalGain => 'ਲੈਣਾ';
	@override String get goalLose => 'ਘਟਾਉਣਾ';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'ਤੁਸੀਂ ਆਪਣੇ ਲਕਸ਼ ਦੁਲਾ ਲਿਆ ਹੈ, ਤੁਸੀਂ ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'ਤੁਸੀਂ ਆਪਣੇ ਲਕਸ਼ ਵਜ਼ਨ \'ਤੇ ਹੋ! ਅਸੀਂ ਤੁਹਾਨੂੰ ਇਹ ਬਰਕਰਾਰ ਰੱਖਣ ਵਿੱਚ ਮਦਦ ਕਰਾਂਗੇ।';
	@override String get button => 'ਚੱਲੀਏ';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestylePa implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestylePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਸ਼ानदार ਸ਼ੁਰੂਆਤ!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'ਤੁਸੀਂ ${goalText} ਦੀtowards ਪਹਿਲਾ ਕਦਮ ਚੁੱਕਿਆ ਹੈ। ਚੁੱਕੀਏ ${activityText}, ${appLabel} ਤੁਹਾਡੇ ਲਕਸ਼ਾਂ ਨੂੰ ਤੁਹਾਡੇ ਜੀਵਨ ਅਨੁਸਾਰ ਅਨੁਕੂਲ ਕਰੈਗਾ।';
	@override String get personalizedTargets => 'ਵਿਅਕਤੀਗਤ ਕੈਲੋਰੀ ਲਕਸ਼';
	@override String get aiMealDetection => 'ਏ.ਆਈ.-ਸਮਰਥਿਤ ਮੀਲ ਡਿਸਕਸ਼ਨ';
	@override String get macroBreakdowns => 'ਵਿਸਥਾਰਿਤ ਮੈਕਰੋ-ਪੋਸ਼ਣ ਪਾਰਖ';
	@override String get button => 'ਚੱਲੀਏ';
	@override String get defaultGoal => 'ਤੁਹਾਡੇ ਲਕਸ਼';
	@override String get defaultActivity => 'ਸਰਗਰਮ';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightPa implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get name => 'ਵਜ਼ਨ ਘਟਾਓ';
	@override String get description => 'ਵਜ਼ਨ ਘਟਾਣ ਲਈ ਕੈਲੋਰੀ ਘਾਟ ਬਣਾਓ';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightPa implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get name => 'ਵਜ਼ਨ ਬਰਕਰਾਰ ਰੱਖੋ';
	@override String get description => 'ਆਪਣਾ ਮੋਜੂਦਾ ਵਜ਼ਨ ਬਰਕਰਾਰ ਰੱਖੋ';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightPa implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get name => 'ਵਜ਼ਨ ਵਧਾਓ';
	@override String get description => 'ਵਜ਼ਨ ਵਧਾਣ ਲਈ ਕੈਲੋਰੀਆਂ ਵਿੱਚ ਵਾਧਾ ਕਰੋ';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryPa implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get name => 'ਬੈਠਕ';
	@override String get description => 'ਬਹੁਤ ਥੋੜ੍ਹਾ ਵਰਕਆਉਟ';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActivePa implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActivePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get name => 'ਹਲਕੇ ਸਰਗਰਮ';
	@override String get description => 'ਹਲਕੇ ਵਰਕਆਉਟ 1-3 ਦਿਨਾਂ/ਸਪਤਾਹ';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActivePa implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActivePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get name => 'ਮਿਧਮ ਸਰਗਰਮ';
	@override String get description => 'ਮੁਲਾਂਕਣ 3-5 ਦਿਨਾਂ/ਸਪਤਾਹ';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActivePa implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActivePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get name => 'ਬਹੁਤ ਸਰਗਰਮ';
	@override String get description => 'ਕਠੋਰ ਵਰਕਆਉਟ 6-7 ਦਿਨਾਂ/ਸਪਤਾਹ';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActivePa implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActivePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get name => 'ਬਹੁਤ ਬਹੁਤ ਸਰਗਰਮ';
	@override String get description => 'ਬਹੁਤ ਕਿਸਮ ਦੇ ਵਰਕਆਉਟ, ਭੌਤਿਕ ਨੌਕਰੀ';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizePa implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਪ੍ਰਸ਼ਾਸ਼ਤ ਮਾਤਰਾ';
	@override String get description => 'ਅੰਦਾਜ਼ੇ ਦੀ ਸਹੀਤਾ ਤੁਹਾਡੇ ਜਾਣਕਾਰੀ ਦੇ ਮਾਪ \'ਤੇ ਬਹੁਤ ਨਿਰਭਰ ਕਰਦੀ ਹੈ।';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsPa implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਤਿਆਰੀ ਦੇ ਤਰੀਕੇ';
	@override String description({required Object appLabel}) => 'ਕੁੱਝ ਭੋਜਨਾਂ ਤੋਂ ਪੋਸ਼ਣ ਦੀ ਸਮੱਗਰੀ ਦਰਾਰ ਕਰ ਸਕਦੀ ਹੈ। ${appLabel} ਦੇ ਅੰਦਾਜ਼ੇ ਆਮ ਤੌਰ \'ਤੇ ਵੱਖ-ਵੱਖ ਕੁਝ ਵੀ ਸ਼ਾਮਿਲ ਨਹੀਂ ਹੁੰਦੇ।';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsPa implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਸਮੱਗਰੀਆਂ';
	@override String get description => 'ਪ੍ਰਕਿਰਿਆ ਸ਼੍ਰੇਣੀ ਨਾਲ ਜਪ ਮੀਲਾਂ ਸ਼ਾਮਿਲ ਹੋ ਸਕਦੀਆਂ ਹਨ ਜੋ ਢੁਕਵੇਂ ਅੰਦਾਜ਼ੇ ਦੇ ਬਾਹਰ ਲਿਆ ਸਕਦੀਆਂ ਹਨ।';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsPa implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਡਾਟਾਬੇਸ ਸੀਮਾ';
	@override String description({required Object appLabel}) => '${appLabel} ਦਾ ਭੋਜਨ ਡ੍ਰਾਈਸ ਵਿਸ਼ਾਲ ਹੈ ਪਰ ਹਰ ਪੋਟਲ ਜਾਂ ਸੰਕਰ ਪੋਸ਼ਨ ਨੂੰ ਸ਼ਾਮਿਲ ਕਰਨ ਵਿੱਚ ਸਮਰੱਥ ਨਹੀਂ ਹੋ ਸਕਦਾ।';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyPa implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਕੈਲੋਰੀ ਦੀ ਸਹੀਤਾ';
	@override String get description => 'ਇਹ ਅੰਦਾਜ਼ਾ ਤਾਂ ਹੀ ਸਹੀ ਹੈ ਜਦੋਂ ਤੁਸੀਂ ਆਪਣੇ ਦਰਜ ਕੀਤੇ ਗਏ ਅਹਿਸਾਸਾਂ ਤੇ ਬਿਲਕੁਲ ਧਿਆਨ ਦਿੰਦੇ ਹੋ। ਗਲਤ ਲੋਗਿੰਗ ਨਾਲ ਗਲਤ projection ਇਹ ਰਾਹਿਨਿਸ਼ਾਨ ਦਾ ਨਿਆਸ ਕੀਤਾ ਜੇਗਾ।';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsPa implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਜੀਵ ਵਿਗਿਆਨਿਕ ਕਾਰਕ';
	@override String description({required Object appLabel}) => 'ਅਸਲ ਵਿੱਚ ਵਜ਼ਨ ਘਟਣਾ/ਵਧਾਉਣਾ ਮੈਟਾਬੋਲਿਸਮ, ਹਾਰਮੋਨ, ਨੀਂਦ, ਤਣਾਅ, ਪਾਣੀ, ਅਤੇ ਹੋਰ ਵਿਅਕਤੀਗਤ ਕਾਰਕਾਂ ਦੇ ਪ੍ਰਭਾਵ ਵਿਚ ਹੁੰਦੀ ਹੈ ਜੋ ${appLabel} ਨਹੀਂ ਮਾਪ ਸਕਦਾ।';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightPa implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightPa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਪਾਣੀ ਦਾ ਵਜ਼ਨ ਅਤੇ ਬਦਲਾਅ';
	@override String get description => 'ਦਿਨ ਦੀਆਂ ਨਿਸ਼ਾਨਾਂ ਦਾ ਵਜ਼ਨ ਅਕਸਰ ਪਾਣੀ ਰੋਕਣ ਵਾਲੇ, ਅੰਨਦ-ਸਮਸਿਆ ਅਤੇ ਸਮਿਆਂ ਪਦਾਰਥ ਦੇ ਪ੍ਰਭਾਵ ਵਿੱਚ ਬਦਲ ਸਕਦਾ ਹੈ। ਅੰਦਾਜ਼ਾ ਯਹ੍ ਬਦਲਾਅ ਸ਼ਾਮਿਲ ਨਹੀਂ ਹੁੰਦਾ।';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidancePa implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidancePa._(this._root);

	final TranslationsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਪ੍ਰੋਫੈਸ਼ਨਲ ਗਾਈਡਸ';
	@override String get description => 'ਇਸ ਅੰਦਾਜੇ ਦੇ ਅਧਾਰ \'ਤੇ ਕੋਈ ਮੈਡੀਕਲ ਫ਼ੈਸਲਾ ਕਰਨ ਲਈ ਨਾ ਵਰਤੋ। ਹਮੇਸ਼ਾ ਕਿਸੇ ਸਿਹਤ ਸੰਭਾਲ ਪ੍ਰੋਫੈਸ਼ਨਲ ਜਾਂ ਰਜਿਸਟਰਡ ਡਾਇਟੀਸ਼ੀਅਨ ਨਾਲ ਵਿਅਕਤੀਗਤ ਵਜ਼ਨ ਪ੍ਰਬੰਧਨ ਸਲਾਹ ਲਈ ਸੰਪਰਕ ਕਰੋ।';
}

/// The flat map containing all translations for locale <pa>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Punjabi',
			'flag' => '🇮🇳',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} ਵਿੱਚ ਤੁਹਾਡਾ ਸੁਆਗਤ ਹੈ',
			'onboarding.subtitle' => 'ਇਹ ਤੁਹਾਡਾ ਨਿੱਜੀ ਪੋਸ਼ਣ ਸਾਥੀ ਹੈ ਜੋ ਏ.ਆਈ. ਦੁਆਰਾ ਸਹਾਇਤ ਕੀਤਾ ਗਿਆ ਹੈ',
			'onboarding.getStarted' => 'ਸ਼ੁਰੂ ਕਰੀਏ',
			'onboarding.features.foodRecognition.title' => 'ਸਮਾਰਟ ਫੂਡ ਪਹਿਚਾਣ',
			'onboarding.features.foodRecognition.description' => 'ਇੱਕ ਤਸਵੀਰ ਲਓ ਅਤੇ ਏ.ਆਈ. ਨੂੰ ਤੁਹਾਡੇ ਭੋਜਨ ਦੀ ਪਹਚਾਣ ਕਰਨ ਦਿਓ',
			'onboarding.features.aiAnalysis.title' => 'ਏ.ਆਈ. ਵਿਸ਼ਲੇਸ਼ਣ',
			'onboarding.features.aiAnalysis.description' => 'ਤੁਹਾਡੇ ਵੇਰਵਿਆਂ ਤੋਂ ਤੁਰੰਤ ਪੋਸ਼ਣ ਲਈ ਜਾਣਕਾਰੀ ਪ੍ਰਾਪਤ ਕਰੋ',
			'onboarding.features.healthIntegration.title' => 'ਸਿਹਤ ਇੰਟੇਗ੍ਰੇਸ਼ਨ',
			'onboarding.features.healthIntegration.description' => 'ਬਿਹਤਰ ਦ੍ਰਿਸ਼ਟੀਕੋਣ ਲਈ ਹੈਲਥ ਕਨੈਕਟ ਨਾਲ ਜੁੜੋ',
			'onboarding.gender.title' => 'ਤੁਹਾਡਾ ਲਿੰਗ ਕੀ ਹੈ?',
			'onboarding.gender.description' => 'ਲਿੰਗ ਸਾਨੂੰ ਤੁਹਾਡਾ ਬੇਸਲ ਮੈਟਾਬੋਲਿਕ ਦਰ (BMR) ਸਹੀ ਢੰਗ ਨਾਲ ਗਿਣਤੀ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ।',
			'onboarding.gender.next' => 'ਅੱਗੇ',
			'onboarding.height.title' => 'ਤੁਸੀਂ ਕਿੰਨੀ ਉੱਚੇ ਹੋ?',
			'onboarding.height.description' => 'ਤੁਹਾਡੇ ਕਿੱਤੇ ਦੀ ਮਦਦ ਨਾਲ ਅਸੀਂ ਤੁਹਾਡਾ BMI ਅਤੇ ऊर्जा ਦੀ ਲੋੜ ਸਹੀ ਢੰਗ ਨਾਲ ਗਿਣਤੀ ਕਰ ਸਕਦੇ ਹਾਂ।',
			'onboarding.height.metric' => 'ਮੀਟਰਿਕ',
			'onboarding.height.imperial' => 'ਅੰਤਰ੍ਰਾਸ਼ਟਰੀ',
			'onboarding.height.next' => 'ਅੱਗੇ',
			'onboarding.weight.currentTitle' => 'ਤੁਹਾਡਾ ਮੋਜੂਦਾ ਵਜ਼ਨ ਕੀ ਹੈ?',
			'onboarding.weight.currentDescription' => 'ਤੁਹਾਡਾ ਮੋਜੂਦਾ ਵਜ਼ਨ ਤੁਹਾਡੇ ਰੋਜ਼ਾਨਾ ਨਿਸ਼ਾਨਿਆਂ ਨੂੰ ਵਿਅਕਤੀਗਤ ਕਰਨ ਲਈ ਜਰੂਰੀ ਹੈ।',
			'onboarding.weight.targetTitle' => 'ਤੁਹਾਡਾ ਲਕਸ਼ ਵਜ਼ਨ ਕੀ ਹੈ?',
			'onboarding.weight.targetDescription' => 'ਇੱਕ ਲਕਸ਼ ਵਜ਼ਨ ਸੈੱਟ ਕਰਨਾ ਸਾਨੂੰ ਤੁਹਾਡੀ ਦਿਰਘਕਾਲੀ ਯੋਜਨਾ ਨਿਰਧਾਰਤ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ।',
			'onboarding.weight.metric' => 'ਮੀਟਰਿਕ',
			'onboarding.weight.imperial' => 'ਅੰਤਰ੍ਰਾਸ਼ਟਰੀ',
			'onboarding.weight.next' => 'ਅੱਗੇ',
			'onboarding.age.title' => 'ਤੁਹਾਡੀ ਜਨਮਤਾਰੀਖ ਕਦੋਂ ਹੈ?',
			'onboarding.age.description' => 'ਤੁਹਾਡੀ ਉਮਰ ਸਾਨੂੰ ਤੁਹਾਡੇ ਕੈਲੋਰੀਆਂ ਦੀ ਜਰੂਰਤ ਨੂੰ ਸਹੀ ਢੰਗ ਨਾਲ ਗਿਣਤੀ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਦੀ ਹੈ।',
			'onboarding.age.next' => 'ਅੱਗੇ',
			'onboarding.bmiScale.underweight' => 'ਗੁਣਾਕਾਰ',
			'onboarding.bmiScale.healthy' => 'ਸਿਹਤਮੰਦ',
			'onboarding.bmiScale.overweight' => 'ਓਬਰਵੇਟ',
			'onboarding.bmiScale.obese' => 'ਮੋਰਬਿਡ',
			'onboarding.bmiScale.categories.underweight' => 'ਗੁਣਾਕਾਰ',
			'onboarding.bmiScale.categories.healthyWeight' => 'ਸਿਹਤਮੰਦ ਵਜ਼ਨ',
			'onboarding.bmiScale.categories.overweight' => 'ਓਬਰਵੇਟ',
			'onboarding.bmiScale.categories.obese' => 'ਮੋਰਬਿਡ',
			'onboarding.bmiScale.messages.underweight' => 'ਅਸੀਂ ਤੁਹਾਨੂੰ ਪੋਸ਼ਣ ਭਰਪੂਰ ਭੋਜਨ ਦੇ ਨਾਲ ਸਹਿਜ ਵਜ਼ਨ ਪ੍ਰਾਪਤ ਕਰਨ ਲਈ ਸਹਾਇਤਾ ਕਰ ਸਕਦੇ ਹਾਂ।',
			'onboarding.bmiScale.messages.healthy' => 'ਸ਼੍ਲਾਘਨੀ ਕਾਰਜ! ਤੁਸੀਂ ਸਿਹਤਮੰਦ ਰੇਖਾ ਵਿੱਚ ਹੋ। ਅਸੀਂ ਤੁਹਾਨੂੰ ਤੁਹਾਡੀ ਉਤਜ਼ਾਕਤਾ ਅਤੇ energy ਵੇਲਿਊ ਬਣਾਈ ਰੱਖਣ ਵਿੱਚ ਮਦਦ ਕਰਾਂਗੇ।',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} ਤੁਹਾਡੇ ਲਕਸ਼ ਨੂੰ ਆਰਾਮ ਨਾਲ ਪ੍ਰਾਪਤ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਨ ਲਈ ਏ.ਆਈ. ਨਿਰਧਾਰਿਤ ਟਰੈਕਿੰਗ ਦੇ ਨਾਲ ਤੁਹਾਡੇ ਸਫ਼ਰ ਨੂੰ ਆਸਾਨ ਬਣਾਏਗਾ।',
			'onboarding.bmiScale.messages.obese' => 'ਅਸੀਂ ਤੁਹਾਡੇ ਸਿਹਤ ਲਕਸ਼ ਲਈ ਵਿਅਕਤੀਗਤ ਰਾਹਦਾਰੀ ਅਤੇ ਸਥਾਈ ਰਣਨੀਤੀਆਂ ਨਾਲ ਤੁਹਾਡੀ ਸਹਾਇਤਾ ਲਈ ਤਿਆਰ ਹਾਂ।',
			'onboarding.weightGoal.title' => 'ਤੁਹਾਡਾ ਲਕਸ਼ ਕੀ ਹੈ?',
			'onboarding.weightGoal.description' => 'ਉਨ੍ਹਾਂ ਵਿੱਚੋਂ ਲਕਸ਼ ਚੁਣੋ ਜੋ ਤੁਹਾਨੂੰ ਪ੍ਰਾਪਤ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ',
			'onboarding.activityLevel.title' => 'ਤੁਸੀਂ ਕਿੰਨੇ ਸਰਗਰਮ ਹੋ?',
			'onboarding.activityLevel.description' => 'ਇਹ ਸਾਨੂੰ ਤੁਹਾਡੇ ਰੋਜ਼ਾਨਾ ਕੈਲੋਰੀਆਂ ਦੀ ਜਰੂਰਤ ਨੂੰ ਸਹੀ ਢੰਗ ਨਾਲ ਗਿਣਤੀ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ',
			'onboarding.healthConnect.title' => 'ਹੈਲਥ ਕਨੈਕਟ ਨਾਲ ਜੁੜੋ',
			'onboarding.healthConnect.description' => 'ਬਿਹਤਰ ਦ੍ਰਿਸ਼ਟੀਕੋਣ ਅਤੇ ਸੁਚਾਰੂ ਕੈਲੋਰੀ ਟਰੈਕਿੰਗ ਲਈ ਆਪਣੇ ਸਿਹਤ ਡਾਟਾ ਨੂੰ ਸੰਕਲਨ ਕਰੋ',
			'onboarding.healthConnect.automaticTracking.title' => 'ਆਟੋਮੈਟਿਕ ਕੈਲੋਰੀ ਟਰੈਕਿੰਗ',
			'onboarding.healthConnect.automaticTracking.description' => 'ਤੁਹਾਡੇ ਫਿਟਨੈਸ ਐਪਸ ਤੋਂ ਜ਼ਰੁਰਤੀਂ ਕੈਲੋਰੀਆਂ ਦੀ ਮੈਨਾ',
			'onboarding.healthConnect.progressInsights.title' => 'ਤਰੱਕੀ ਬਾਰੇ ਜਾਣਕਾਰੀ',
			'onboarding.healthConnect.progressInsights.description' => 'ਤੁਹਾਡੇ ਸਿਹਤ ਰੁਝਾਨਾਂ ਵਿੱਚ ਵਿਸਥਾਰਿਤ ਜਾਣਕਾਰੀ ਪ੍ਰਾਪਤ ਕਰੋ',
			'onboarding.healthConnect.seamlessIntegration.title' => 'ਸਹਿਜ ਇੰਟੇਗ੍ਰੇਸ਼ਨ',
			'onboarding.healthConnect.seamlessIntegration.description' => 'ਤੁਹਾਡੇ ਮਨਪਸੰਦ ਸਿਹਤ ਐਪਸ ਤੋਂ ਡਾਟਾ ਸੰਕਲਨ ਕਰੋ',
			'onboarding.healthConnect.connected' => 'ਹੈਲਥ ਕਨੈਕਟ ਜੁੜਿਆ ਹੋਇਆ',
			'onboarding.healthConnect.notConnected' => 'ਹੈਲਥ ਕਨੈਕਟ ਜੁੜਿਆ ਹੋਇਆ ਨਹੀਂ',
			'onboarding.healthConnect.setup' => 'ਹੈਲਥ ਕਨੈਕਟ ਸੈਟਅਪ ਕਰੋ',
			'onboarding.healthConnect.skipForNow' => 'ਹੁਣ ਛੱਡੋ',
			'onboarding.healthConnect.statusConnected' => 'ਹੈਲਥ ਕਨੈਕਟ ਜੁੜਿਆ ਹੋਇਆ ਹੈ।',
			'onboarding.healthConnect.statusSuccess' => 'ਹੈਲਥ ਕਨੈਕਟ ਬਾਗ਼ ਕਾਮਯਾਬੀ ਨਾਲ ਜੁੜਿਆ ਹੋਇਆ ਹੈ!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'ਅਧਿਕਾਰ ਇਨਕਾਰ ਕੀਤਾ ਗਿਆ। ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੇ ਫ਼ੋਨ ਦੇ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ${appLabel} ਲਈ ਹੈਲਥ ਕਨੈਕਟ ਅਧਿਕਾਰਾਂ ਨੂੰ ਮਨਜੂਰੀ ਦਿਓ।',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'ਹੈਲਥ ਕਨੈਕਟ ਸੈਟਅਪ ਕਰਨ ਵਿੱਚ ਗਲਤੀ: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'ਤੁਸੀਂ ਇਕੱਲੇ ਨਹੀਂ ਹੋ',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'ਖੋਜ ਦਿਖਾਉਂਦੀ ਹੈ ਕਿ ਨਿਰੰਤਰ ਨਿਗ੍ਰਾਨੀ ਲੰਬੇ ਸਮੇਂ ਦੇ ਸਫਲਤਾ ਦਾ ਪਹਿਲਾ ਅਨੁਮਾਨਕ ਹੈ।',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => ' ਇੱਕ ${age} ਸਾਲ ਦਾ ${gender} ਜੋ ${goal} ਦੀ ਤਲਾਸ਼ ਵਿੱਚ ਹੈ, ਨਿਰੰਤਰ ਨਿਗ੍ਰਾਨੀ ਸਫਲਤਾ ਦਾ ਪਹਿਲਾ ਅਨੁਮਾਨਕ ਹੈ।',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} ਨਾਲ ਇਹ ਦਸਤਾਵੇਜ਼ੀ ਕਰਨ ਵਿੱਚ 10x ਜ਼ਿਆਦਾ ਆਸਾਨ ਹੈ।',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'ਕੀ ਤੁਸੀਂ ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਤਿਆਰ ਹੋ?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'ਤੁਰੰਤ ਵਿਸ਼ਲੇਸ਼ਣ ਲਈ ਆਪਣੇ ਭੋਜਨਾਂ ਦੀ ਤਸਵੀਰ ਲਓ',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'ਮਤਲਬੀ ਮੁਨਾਸਿਬਤਾ ਲਈ ਨਿਯਮਤ ਰੋਜ਼ਾਨਾ ਰਾਹੜਾ ਕਰੋ',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'ਮੋਟਿਵੇਟਡ ਰਹਿਣ ਲਈ ਦਿਨਦਰਦ ਪਗਦੰਡਾਂ ਦਾ ਟਰੈਕ ਕਰਨਾ',
			'onboarding.reinforcement.trackingSuccess.button' => 'ਚੱਲੀਏ',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'ਵਿਅਕਤੀ',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'ਸਿਹਤਮੰਦ ਤੁਸੀਂ',
			'onboarding.reinforcement.healthProfile.title' => 'ਤੁਹਾਡੀ ਸਿਹਤ ਪ੍ਰੋਫਾਈਲ',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'ਤੁਹਾਡੇ ਮਾਪਾਂ ਦੇ ਆਧਾਰ \'ਤੇ, ਤੁਹਾਡਾ BMI ${bmi} ਹੈ।',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'ਆਉ ਸਾਡੀ ਪੋਰਫਾਈਲ ਨੂੰ ਆਖਰੀ ਬਣਾਈਏ ਤਾਂ ਜੋ ਤੁਸੀਂ ਆਪਣਾ ਤਜ਼ੁਰਬਾ ਵਿਅਕਤੀਗਤ ਕਰ ਸਕੋ।',
			'onboarding.reinforcement.healthProfile.goalGain' => 'ਲੈਣਾ',
			'onboarding.reinforcement.healthProfile.goalLose' => 'ਘਟਾਉਣਾ',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'ਤੁਸੀਂ ਆਪਣੇ ਲਕਸ਼ ਦੁਲਾ ਲਿਆ ਹੈ, ਤੁਸੀਂ ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'ਤੁਸੀਂ ਆਪਣੇ ਲਕਸ਼ ਵਜ਼ਨ \'ਤੇ ਹੋ! ਅਸੀਂ ਤੁਹਾਨੂੰ ਇਹ ਬਰਕਰਾਰ ਰੱਖਣ ਵਿੱਚ ਮਦਦ ਕਰਾਂਗੇ।',
			'onboarding.reinforcement.healthProfile.button' => 'ਚੱਲੀਏ',
			'onboarding.reinforcement.goalLifestyle.title' => 'ਸ਼ानदार ਸ਼ੁਰੂਆਤ!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'ਤੁਸੀਂ ${goalText} ਦੀtowards ਪਹਿਲਾ ਕਦਮ ਚੁੱਕਿਆ ਹੈ। ਚੁੱਕੀਏ ${activityText}, ${appLabel} ਤੁਹਾਡੇ ਲਕਸ਼ਾਂ ਨੂੰ ਤੁਹਾਡੇ ਜੀਵਨ ਅਨੁਸਾਰ ਅਨੁਕੂਲ ਕਰੈਗਾ।',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'ਵਿਅਕਤੀਗਤ ਕੈਲੋਰੀ ਲਕਸ਼',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'ਏ.ਆਈ.-ਸਮਰਥਿਤ ਮੀਲ ਡਿਸਕਸ਼ਨ',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'ਵਿਸਥਾਰਿਤ ਮੈਕਰੋ-ਪੋਸ਼ਣ ਪਾਰਖ',
			'onboarding.reinforcement.goalLifestyle.button' => 'ਚੱਲੀਏ',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'ਤੁਹਾਡੇ ਲਕਸ਼',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'ਸਰਗਰਮ',
			'tabs.dashboard' => 'ਡੈਸ਼ਬੋਰਡ',
			'tabs.history' => 'ਇਤਿਹਾਸ',
			'home.dailyGoal.title' => 'ਤੁਹਾਡਾ ਰੋਜ਼ਾਨਾ ਲਕਸ਼ ਸੈੱਟ ਕਰੋ',
			'home.dailyGoal.titleSet' => 'ਤੁਹਾਡਾ ਰੋਜ਼ਾਨਾ ਲਕਸ਼',
			'home.dailyGoal.description' => 'ਕੀ ਤੁਸੀਂ ਆਪਣੀ ਵੈਲਨੈੱਸ ਯਾਤਰਾ ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਤਿਆਰ ਹੋ? ਆਪਣੇ ਰੋਜ਼ਾਨਾ ਕੈਲੋਰੀ ਲਕਸ਼ ਨੂੰ ਤਹਿਤ ਕਰੋ ਤਾ ਕਿ ਤੁਸੀਂ ਆਪਣੀ ਪ੍ਰਗਤੀ ਨੂੰ ਸ਼ੁਰੂ ਕਰ ਸੱਕੋ।',
			'home.dailyGoal.descriptionSet' => 'ਤੁਹਾਡਾ ਕੰਪਾਸ ਸੈੱਟ ਹੈ! ਇਹ ਤੁਹਾਡਾ ਰੋਜ਼ਾਨਾ ਕੈਲੋਰੀ ਲਕਸ਼ ਹੀ ਤੁਹਾਨੂੰ ਗਾਈਡ ਕਰਨ ਲਈ ਹੈ।',
			'home.dailyGoal.yourGoal' => 'ਤੁਹਾਡਾ ਲਕਸ਼',
			'home.dailyGoal.dailyCalories' => 'ਰੋਜ਼ਾਨਾ ਕੈਲੋਰੀ (kcal)',
			'home.dailyGoal.setGoal' => 'ਲਕਸ਼ ਸੈੱਟ ਕਰੋ',
			'home.dailyGoal.intake' => 'ਵਾਟਾ',
			'home.dailyGoal.burned' => 'ਜਲਾਈ',
			'home.dailyGoal.weightImpact' => 'ਵਜ਼ਨ ਤੇ ਪ੍ਰਭਾਵ',
			'home.dailyGoal.estLoss' => 'ਅੰਦਾਜ਼ੀ ਹਾਨੀ',
			'home.dailyGoal.estGain' => 'ਅੰਦਾਜ਼ੀ ਲਾਭ',
			'home.dailyGoal.kcal' => 'ਕੈਲੋਰੀ',
			'home.dailySummary.title' => 'ਰੋਜ਼ਾਨਾ ਸਾਰ',
			'home.dailySummary.calories' => 'ਕੈਲੋਰੀ',
			'home.dailySummary.carbs' => 'ਕਾਰਬ',
			'home.dailySummary.protein' => 'ਪਰੋਟੀਨ',
			'home.dailySummary.fat' => 'ਚਰਬੀ',
			'home.dailySummary.fiber' => 'ਫਾਈਬਰ',
			'home.intakeProgress.title' => 'ਅੱਜ ਦਾ ਮੈਕਰੋ ਵੰਡ',
			'home.intakeProgress.target' => 'ਲਕਸ਼',
			'home.intakeProgress.current' => 'ਵਰਤਮਾਨ',
			'home.intakeHistory.title' => '7-ਦਿਨਾਂ ਦਾ ਮੈਕਰੋ ਇਤਿਹਾਸ',
			'home.intakeHistory.noHistoryYet' => 'ਅਜੇ ਤੱਕ ਕੋਈ ਇਤਿਹਾਸ ਨਹੀਂ',
			'home.intakeHistory.startLogging' => 'ਮੀਲਾਂ ਨੂੰ ਲੋਗ ਕਰਨ ਸ਼ੁਰੂ ਕਰੋ ਤਾਂ ਜੋ ਤੁਸੀਂ ਇੱਥੇ ਆਪਣੇ 7-ਦਿਨਾਂ ਦੇ ਮੈਕਰੋ ਰੁਝਾਨਾਂ ਨੂੰ ਦੇਖ ਸਕੋ',
			'home.mealLog.title' => 'ਲੋਗ ਕੀਤੀਆਂ ਮੀਲਾਂ',
			'home.mealLog.emptyMessage' => 'ਆਪਣੀ ਆਖਰੀ ਮੀਲ ਦੀ ਤਸਵੀਰ ਲਓ ਤਾਂ ਜੋ ਇਹ ਇੱਥੇ ਲੋਗ ਹੋ ਸਕੇ.',
			'home.mealLog.noMealsToday' => 'ਅੱਜ ਲਈ ਕੋਈ ਮੀਲਾਂ ਨਹੀ ਦਰਜ ਕੀਤੀਆਂ',
			'home.mealLog.seeAllMeals' => 'ਸਭ ਮੀਲਾਂ ਦੇਖੋ',
			'home.mealDescription.title' => 'ਏ.ਆਈ. ਨਾਲ ਤੇਜ਼ੀ ਨਾਲ ਜੋੜੋ',
			'home.mealDescription.description' => 'ਆਪਣੀ ਮੀਲ ਦਾ ਵੇਰਵਾ ਦਿਓ, ਅਤੇ ਏ.ਆਈ. ਨੂੰ ਵੇਰਵਿਆਂ ਨੂੰ ਸੰਭਾਲਣ ਦਿਓ।',
			'home.mealDescription.hint' => 'ਉਦਾਹਰਨ: ਮੇਰੇ ਨਾਸ਼ਤੇ ਵਿੱਚ ਮੈਂ ਇੱਕ ਵੱਡੇ ਬੋਲ ਚੀਲੇ ਦਾ ਨਾਮ &quot; ਕੀਤੇ ਅਤੇ ਇੱਕ ਲੱਖੇ ਬਨਾਨਾ ਅਤੇ ਇੱਕ ਹੁਇ ਪੋਡੀ ...',
			'home.mealDescription.analyzeMeal' => 'ਮੀਲ ਦਾ ਵਿਸ਼ਲੇਸ਼ਣ ਕਰੋ',
			'home.favoriteMeals.title' => 'ਪੀਰੇ ਮੀਲਾਂ',
			'home.favoriteMeals.description' => 'ਆਪਣੀਆਂ ਪਸੰਦੀਆਂ ਮੀਲਾਂ ਵਿੱਚੋਂ ਇੱਕ ਨੂੰ ਤੇਜ਼ੀ ਨਾਲ ਜੋੜੋ',
			'home.favoriteMeals.noFavorites' => 'ਕੋਈ ਪਸੰਦ ਕੀਤੀਆਂ ਮੀਲਾਂ ਨਹੀਂ।',
			'home.favoriteMeals.addFavoriteHint' => 'ਕਿਸੇ ਮੀਲ \'ਤੇ ਸਟਾਰ \'ਤੇ ਕਲਿਕ ਕਰੋ, ਇਸ ਨੂੰ ਪਸੰਦ ਕਰਨ ਲਈ ਮਾਰਕ ਕਰਨ ਲਈ।',
			'home.favoriteMeals.seeAll' => 'ਸਭ ਦੇਖੋ',
			'home.favoriteMeals.add' => 'ਜੋੜੋ',
			'home.mealSnap.title' => 'ਤਸਵੀਰ ਲਓ &amp; ਆਪਣੀ ਮੀਲ ਨੂੰ ਟ੍ਰੈਕ ਕਰੋ',
			'home.mealSnap.description' => 'ਏ.ਆਈ. ਵਿਸ਼ਲੇਸ਼ਣ ਲਈ ਆਪਣੇ ਭੋਜਨ ਦੀ ਤਸਵੀਰ ਲੈਣ ਲਈ ਆਪਣੇ ਕੈਮਰੇ ਦਾ ਉਪਯੋਗ ਕਰੋ।',
			'home.mealSnap.openCamera' => 'ਕੈਮਰੇ ਨੂੰ ਖੋਲ੍ਹੋ',
			'home.connectHealth.title' => 'ਹੈਲਥ ਕਨੈਕਟ ਨਾਲ ਸੰਕਲਨ ਕਰੋ',
			'home.connectHealth.description' => 'ਆਪਣੇ ਪੋਸ਼ਣ ਡਾਟਾ ਨੂੰ ਹੈਲਥ ਕਨੈਕਟ ਨਾਲ ਸੰਕਲਨ ਕਰੋ',
			'home.connectHealth.install' => 'ਇੰਸਟਾਲ ਕਰੋ',
			'home.connectHealth.connect' => 'ਜੁੜੋ',
			'history.noMeals' => 'ਕੋਈ ਮੀਲਾਂ ਦਰਜ ਨਹੀਂ',
			'history.emptyMessage' => 'ਆਪਣੀ ਆਖਰੀ ਮੀਲ ਦੀ ਤਸਵੀਰ ਲਓ ਤਾਂ ਜੋ ਇਹ ਇੱਥੇ ਲੋਗ ਹੋ ਸਕੇ.',
			'history.today' => 'ਅੱਜ',
			'history.yesterday' => 'ਕਲ',
			'meal.ohNo' => 'ਓ ਹਣ!',
			'meal.delete' => 'ਮਿਟਾਓ',
			'meal.editMeal' => 'ਮੀਲ ਸੋਧੋ',
			'meal.addMeal' => 'ਮੀਲ ਜੋੜੋ',
			'meal.saveMeal' => 'ਮੀਲ ਸੰਭਾਲੋ',
			'meal.save' => 'ਸੰਭਾਲੋ',
			'meal.mealName' => 'ਮੀਲ ਦਾ ਨਾਂ',
			'meal.mealQuantity' => 'ਮੀਲ ਦੀ ਮਾਤਰਾ',
			'meal.mealQuantityHint' => 'ਉਦਾਹਰਨ: 1 ਬੋਲ, 2 ਕਟਕ',
			'meal.timeOfMeal' => 'ਮੀਲ ਦਾ ਸਮਾਂ',
			'meal.timeOfMealHint' => 'ਜਿਸ ਸਮੇਂ ਤੁਸੀਂ ਆਪਣੀ ਮੀਲ ਕੀਤੀ ਸੀ ਦਾ ਚੋਣ ਕਰੋ',
			'meal.mealType' => 'ਮੀਲ ਦੀ ਕਿਸਮ',
			'meal.nutrition.calories' => 'ਕੈਲੋਰੀ',
			'meal.nutrition.carbs' => 'ਕਾਰਬਸ (ਗ)',
			'meal.nutrition.protein' => 'ਪਰੋਟੀਨ (ਗ)',
			'meal.nutrition.fat' => 'ਚਰਬੀ (ਗ)',
			'meal.nutrition.fiber' => 'ਫਾਈਬਰ (ਗ)',
			'meal.deleteConfirmation.title' => 'ਮੀਲ ਮਿਟਾਓ',
			'meal.deleteConfirmation.message' => 'ਕੀ ਤੁਸੀਂ ਇਸ ਮੀਲ ਦੇ ਦਰਜ ਨੂੰ ਮਿਟਾਉਣ ਲਈ ਯਕੀਨੀ ਹੋ?',
			'meal.deleteConfirmation.cancel' => 'ਰੱਦ ਕਰੋ',
			'meal.deleteConfirmation.delete' => 'ਮਿਟਾਓ',
			'meal.addedToLog' => 'ਮੀਲ ਤੁਹਾਡੇ ਲੋਗ ਵਿੱਚ ਜੋੜੀ ਗਈ!',
			'meal.couldNotAdd' => ({required Object error}) => 'ਮੀਲ ਜੋੜ ਸਕੀ: ${error}',
			'meal.removedFromFavorites' => 'ਫੇਰ ਨਹੀ ਹੈ!',
			'meal.savedAsFavorite' => 'ਮੀਲ ਪਸੰਦ ਦੇ ਤੌਰ \'ਤੇ ਸੰਭਾਲੀ ਗਈ!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'ਪਸੰਦ ਅਪਡੇਟ ਕਰਨ ਵਿੱਚ ਅਸਫਲ: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'ਪ੍ਰਕਿਰਿਆ ਕਰਨ ਵਿੱਚ ਅਸਫਲ: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'ਤਸਵੀਰ ਨੂੰ ਸੰਭਾਲਣ ਵਿੱਚ ਅਸਫਲ: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'ਤਸਵੀਰ ਨੂੰ ਸੰਕੁਚਿਤ ਕਰਨ ਵਿੱਚ ਗਲਤੀ: ${error}',
			'meal.failedToSave' => 'ਡਾਟਾ ਨੂੰ ਸੰਭਾਲਣ ਵਿੱਚ ਅਸਫਲ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।',
			'favorites.title' => 'ਪਸੰਦੀਆਂ',
			'favorites.empty' => 'ਕੋਈ ਪਸੰਦ ਕੀਤੀਆਂ ਮੀਲਾਂ ਨਹੀਂ।',
			'profile.title' => 'ਪ੍ਰੋਫਾਈਲ',
			'profile.noProfileData' => 'ਕੋਈ ਪ੍ਰੋਫਾਈਲ ਡਾਟਾ ਨਹੀਂ ਮਿਲਿਆ',
			'profile.yourProfile' => 'ਤੁਹਾਡੀ ਪ੍ਰੋਫਾਈਲ',
			'profile.viewAndManage' => 'ਆਪਣੀ ਸਿਹਤ ਜਾਣਕਾਰੀ ਵੇਖੋ ਅਤੇ ਸੰਭਾਲੋ',
			'profile.sections.profile' => 'ਪ੍ਰੋਫਾਈਲ',
			'profile.sections.basicInformation' => 'ਮੁਲ ਬੇਨਤੀ ਜਾਣਕਾਰੀ',
			'profile.sections.goalsAndActivity' => 'ਲਕਸ਼ਾਂ ਅਤੇ ਸਰਗਰਮੀ',
			'profile.sections.calculatedValues' => 'ਗਿਣਤੀ ਕੀਤੇ ਗਏ ਮੁੱਲ',
			'profile.gender' => 'ਲਿੰਗ',
			'profile.height' => 'ਉਚਾਈ',
			'profile.weight' => 'ਵਜ਼ਨ',
			'profile.age' => 'ਉਮਰ',
			'profile.weightGoal' => 'ਵਜ਼ਨ ਦਾ ਲਕਸ਼',
			'profile.activityLevel' => 'ਸਰਗਰਮੀ ਦੀ ਪੱਧਰ',
			'profile.healthMetrics' => 'ਸਿਹਤ ਪਰਿਮਾਣ',
			'profile.notSet' => 'ਸੈੱਟ ਨਹੀਂ ਕੀਤਾ',
			'profile.years' => 'ਸਾਲ',
			'profile.updatedSuccessfully' => 'ਪ੍ਰੋਫਾਈਲ ਸਫਲਤਾ ਨਾਲ ਅਪਡੇਟ ਕੀਤੀ!',
			'profile.calculatedValues.bmr' => 'ਬੀ.ਐਮ.ਆਰ.',
			'profile.calculatedValues.tdee' => 'ਟੀ.ਡੀ.ਈ.ਈ.',
			'profile.calculatedValues.dailyGoal' => 'ਰੋਜ਼ਾਨਾ ਲਕਸ਼',
			'profile.calculatedValues.calPerDay' => 'ਕੈਲੋਰੀ/ਦਿਨ',
			'profile.calculatedValues.notAvailable' => 'ਐੱਨ/ਏ',
			'healthScore.title' => 'ਸਿਹਤ ਸਕੋਰ',
			'healthScore.whyThisScore' => 'ਇਹ ਸਕੋਰ ਕਿਉਂ ਹੈ?',
			'healthScore.note' => 'ਇਹ ਸਕੋਰ ਪਛਾਏ ਗਏ ਸਮੱਗਰੀਆਂ ਅਤੇ ਪੋਸ਼ਣ ਸਮੰਚਿਤਾ ਦੇ ਆਧਾਰ \'ਤੇ ਏ.ਆਈ. ਦਾ ਅਨੁਮਾਨ ਹੈ। ਹਮੇਸ਼ਾ ਪੋਸ਼ਣ ਮੁਰਖ ਦੇ ਸੰਦਰਭ ਵਿੱਚ ਕਿਸੇ ਵਿਸ਼ੇਸ਼ ਹੈਲਥਕੇਅਰ ਪ੍ਰੋਫੈਸਨਲ ਨਾਲ ਜਾਚ ਕਰੋ।',
			'healthScore.unhealthy' => 'ਅਸਿਹਤਮੰਦ',
			'healthScore.healthy' => 'ਸਿਹਤਮੰਦ',
			'healthScore.neutral' => 'ਤਟਸਥ',
			'editProfile.title' => 'ਪ੍ਰੋਫਾਈਲ ਸੋਧੋ',
			'editProfile.sections.personalInformation' => 'ਜਾਣਕਾਰੀ',
			'editProfile.sections.physicalMeasurements' => 'ਭੌਤਿਕ ਮਾਪ',
			'editProfile.sections.goalsAndActivity' => 'ਲਕਸ਼ ਅਤੇ ਸਰਗਰਮੀ',
			'editProfile.gender' => 'ਲਿੰਗ',
			'editProfile.dateOfBirth' => 'ਜਨਮਤਾਰੀਖ',
			'editProfile.height' => 'ਉਚਾਈ',
			'editProfile.weight' => 'ਵਜ਼ਨ',
			'editProfile.weightGoal' => 'ਵਜ਼ਨ ਦਾ ਲਕਸ਼',
			'editProfile.activityLevel' => 'ਸਰਗਰਮੀ ਪੱਧਰ',
			'editProfile.metric' => 'ਮੀਟਰਿਕ',
			'editProfile.imperial' => 'ਇੰਪਿਰੀਅਲ',
			'editProfile.metricCm' => 'ਮੀਟਰਿਕ (ਸੈਮ)',
			'editProfile.imperialFtIn' => 'ਇੰਪਿਰੀਅਲ (ਫੁੱਟ/ਇੰਚ)',
			'editProfile.metricKg' => 'ਮੀਟਰਿਕ (ਕਿਗ੍ਰਾਮ)',
			'editProfile.imperialLbs' => 'ਇੰਪਿਰੀਅਲ (ਪਾਊਂਡ)',
			'editProfile.genders.male' => 'ਮਰਦ',
			'editProfile.genders.female' => 'ਜਨਾਨੀ',
			'editProfile.genders.other' => 'ਹੋਰ',
			'editProfile.weightGoals.loseWeight.name' => 'ਵਜ਼ਨ ਘਟਾਓ',
			'editProfile.weightGoals.loseWeight.description' => 'ਵਜ਼ਨ ਘਟਾਣ ਲਈ ਕੈਲੋਰੀ ਘਾਟ ਬਣਾਓ',
			'editProfile.weightGoals.maintainWeight.name' => 'ਵਜ਼ਨ ਬਰਕਰਾਰ ਰੱਖੋ',
			'editProfile.weightGoals.maintainWeight.description' => 'ਆਪਣਾ ਮੋਜੂਦਾ ਵਜ਼ਨ ਬਰਕਰਾਰ ਰੱਖੋ',
			'editProfile.weightGoals.gainWeight.name' => 'ਵਜ਼ਨ ਵਧਾਓ',
			'editProfile.weightGoals.gainWeight.description' => 'ਵਜ਼ਨ ਵਧਾਣ ਲਈ ਕੈਲੋਰੀਆਂ ਵਿੱਚ ਵਾਧਾ ਕਰੋ',
			'editProfile.activityLevels.sedentary.name' => 'ਬੈਠਕ',
			'editProfile.activityLevels.sedentary.description' => 'ਬਹੁਤ ਥੋੜ੍ਹਾ ਵਰਕਆਉਟ',
			'editProfile.activityLevels.lightlyActive.name' => 'ਹਲਕੇ ਸਰਗਰਮ',
			'editProfile.activityLevels.lightlyActive.description' => 'ਹਲਕੇ ਵਰਕਆਉਟ 1-3 ਦਿਨਾਂ/ਸਪਤਾਹ',
			'editProfile.activityLevels.moderatelyActive.name' => 'ਮਿਧਮ ਸਰਗਰਮ',
			'editProfile.activityLevels.moderatelyActive.description' => 'ਮੁਲਾਂਕਣ 3-5 ਦਿਨਾਂ/ਸਪਤਾਹ',
			'editProfile.activityLevels.veryActive.name' => 'ਬਹੁਤ ਸਰਗਰਮ',
			'editProfile.activityLevels.veryActive.description' => 'ਕਠੋਰ ਵਰਕਆਉਟ 6-7 ਦਿਨਾਂ/ਸਪਤਾਹ',
			'editProfile.activityLevels.extremelyActive.name' => 'ਬਹੁਤ ਬਹੁਤ ਸਰਗਰਮ',
			'editProfile.activityLevels.extremelyActive.description' => 'ਬਹੁਤ ਕਿਸਮ ਦੇ ਵਰਕਆਉਟ, ਭੌਤਿਕ ਨੌਕਰੀ',
			'settings.title' => 'ਸੈਟਿੰਗਜ਼',
			'settings.sections.profile' => 'ਪ੍ਰੋਫਾਈਲ',
			'settings.sections.localization' => 'ਅੰਤਰਰਾਸ਼ਟੀਕਰਨ',
			'settings.sections.notifications' => 'ਸੂਚਨਾਵਾਂ',
			'settings.sections.supportAndLegal' => 'ਸਹਾਇਤਾ ਅਤੇ ਕਾਨੂੰਨੀ',
			'settings.sections.dangerZone' => 'ਖਤਰੇ ਵਾਲਾ ਇਲਾਕਾ',
			'settings.sections.developer' => 'ਡਿਵੈਲਪਰ',
			'settings.editProfile.title' => 'ਪ੍ਰੋਫਾਈਲ ਸੋਧੋ',
			'settings.editProfile.subtitle' => 'ਆਪਣੀ ਜਾਣਕਾਰੀ ਨੂੰ ਅਪਡੇਟ ਕਰੋ',
			'settings.language.title' => 'ਭਾਸ਼ਾ',
			'settings.language.subtitle' => 'ਆਪਣੀ ਪਸੰਦੀਦਾ ਭਾਸ਼ਾ ਚੁਣੋ',
			'settings.heightUnit.title' => 'ਉਚਾਈ ਦੀ ਇਕਾਈ',
			'settings.weightUnit.title' => 'ਵਜ਼ਨ ਦੀ ਇਕਾਈ',
			'settings.mealReminders.title' => 'ਮੀਲ ਮਿਤੀ',
			'settings.mealReminders.subtitle' => 'ਕਾਲਾਂਦਰੀਆਂ ਨਾਲ ਸੁਰੱਖਿਅਤ ਰੱਖੋ',
			'settings.theme.title' => 'ਥੀਮ',
			'settings.theme.subtitle' => 'ਆਪਣੀ ਪਸੰਦੀਦਾ ਥੀਮ ਚੁਣੋ',
			'settings.theme.light' => 'ਪਹਿਲੀ',
			'settings.theme.dark' => 'ਅੰਧੇਰਾ',
			'settings.theme.system' => 'ਸਿਸਟਮ',
			'settings.sendFeedback.title' => 'ਫੀਡਬੈਕ ਭੇਜੋ',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} ਨੂੰ ਸੁਧਾਰਣ ਵਿੱਚ ਸਹਾਇਤਾ ਕਰੋ',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} ਐਪ ਫੀਡਬੈਕ',
			'settings.sendFeedback.emailBodyPrefix' => 'ਕਿਰਪਾ ਕਰਕੇ ਹੇਠਾਂ ਆਪਣਾ ਫੀਡਬੈਕ ਦਿਓ:',
			'settings.sendFeedback.appVersion' => 'ਐਪ ਵਰਜਨ',
			'settings.sendFeedback.device' => ' ਡਿਵਾਈਸ',
			'settings.sendFeedback.osVersion' => 'ਓ.എസ്. ਵਰਜਨ',
			'settings.sendFeedback.uid' => 'ਯੂ.ਆਈ.ਡੀ.',
			'settings.clearAllData.title' => 'ਸਾਰੀ ਜਾਣਕਾਰੀ ਮਿਟਾਓ',
			'settings.clearAllData.subtitle' => 'ਤੁਹਾਡੀ ਸਾਰੀ ਜਾਣਕਾਰੀ ਨੂੰ ਅਬਾਦੀ ਦਾ ਹਾਜ਼ਰ ਕੀਤਾ',
			'settings.clearAllData.confirmationTitle' => 'ਸਾਰੀ ਜਾਣਕਾਰੀ ਮਿਟਾਓ?',
			'settings.clearAllData.confirmationMessage' => 'ਇਹ ਕਾਰਵਾਈ ਰਿਵਾਜ਼ ਨਹੀਂ ਹੋ ਸਕਦੀ। ਤੁਹਾਡੀਆਂ ਸਾਰੀਆਂ ਦਰਜ ਕੀਤੀਆਂ ਮੀਲਾਂ, ਪ੍ਰੀਫਰੈਂਸ ਅਤੇ ਪ੍ਰੋਫਾਈਲ ਸੈਟਿੰਗਾਂ ਅਬਾਦੀ ਧਿਆਨ ਨਾਲ ਮਿਟਾਈਆਂ ਜਾਣਗੀਆਂ।',
			'settings.clearAllData.cancel' => 'ਰੱਦ ਕਰੋ',
			'settings.clearAllData.clearEverything' => 'ਸਾਰੀ ਮਿਟਾਓ',
			'settings.debugOptions.title' => 'ਡਿਬੱਗ ਵਿਕਲਪ',
			'settings.developerModeEnabled' => 'ਡਿਵੈਲਪਰ ਮੋਡ ਚਾਲੂ ਹੈ!',
			'reminders.title' => 'ਸੁਰੱਖਿਅਤ ਰਹਿਣ ਕਿ ਯਾਦ ਦਿਵਾਈਏ',
			'reminders.description' => 'ਮੀਲਾਂਨੂੰ ਲੋਗ ਕਰਨ ਲਈ ਹੌਲੇ ਹੌਲੇ ਯਾਦ ਦਿਵਾਈਏ ਅਤੇ ਆਪਣੀਆਂ ਪੋਸ਼ਣ ਲਕਸ਼ਾਂ ਨਾਲ ਸੁਰੱਖਿਅਤ ਰਹਿਣ',
			'reminders.notificationsEnabled' => 'ਸੂਚਨਾਵਾਂ ਚਾਲੂ',
			'reminders.notificationsDisabled' => 'ਸੂਚਨਾਵਾਂ ਬੰਦ',
			'reminders.enabledSubtitle' => 'ਤੁਸੀਂ ਮੀਲ ਮਿਤੀਆਂ ਪ੍ਰਾਪਤ ਕਰੋਗੇ',
			'reminders.disabledSubtitle' => 'ਮੀਲ ਮਿਤੀਆਂ ਪ੍ਰਾਪਤ ਕਰਨ ਲਈ ਸੂਚਨਾਵਾਂ ਚਾਲੂ ਕਰੋ',
			'reminders.mealReminders' => 'ਮੀਲਾਂ ਦੀ ਯਾਦ ਦਿਵਾਈਏ',
			'reminders.breakfast' => 'ਨਾਸ਼ਤੇ',
			'reminders.lunch' => 'ਦੁਪਹਰ ਦਾ ਖਾਣਾ',
			'reminders.dinner' => 'ਰਾਤ ਦਾ ਖਾਣਾ',
			'reminders.snack' => 'ਸਨੈਕ',
			'reminders.unknown' => 'ਅਣਜਾਣ',
			'reminders.change' => 'ਬਦਲੋ',
			'reminders.enableNotifications' => 'ਸੂਚਨਾਵਾਂ ਚਾਲੂ ਕਰੋ',
			'reminders.skipForNow' => 'ਹੁਣ ਛੱਡੋ',
			'reminders.saveChanges' => 'ਬਦਲਾਅ ਸੰਭਾਲੋ',
			'reminders.enabledSuccessfully' => 'ਸੂਚਨਾਵਾਂ ਸਫਲਤਾ ਨਾਲ ਚਾਲੂ ਕੀਤੀਆਂ ਗਈਆਂ!',
			'reminders.permissionDenied' => 'ਸੂਚਨਾ ਦੀ ਅਧਿਕਾਰ ਨਹੀਂ ਮਿਲੀ',
			'reminders.errorEnabling' => ({required Object error}) => 'ਸੂਚਨਾਂ ਨੂੰ ਚਾਲੂ ਕਰਨ ਵਿੱਚ ਗਲਤੀ: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'ਸੈਟਅਪ ਪੂਰਾ ਕਰਨ ਵਿੱਚ ਗਲਤੀ: ${error}',
			'notifications.breakfast.title' => 'ਨਾਸ਼ਤ ਦਾ ਸਮਾਂ! 🍳',
			'notifications.breakfast.body' => 'ਆਪਣੀ ਨਾਸ਼ਤੇ ਨੂੰ ਲੋਗ ਕਰਨਾ ਨਾ ਭੁੱਲੋ',
			'notifications.lunch.title' => 'ਦੁਪਹਰ ਦਾ ਖਾਣਾ ਸਮਾਂ! 🥗',
			'notifications.lunch.body' => 'ਤੁਹਾਡੇ ਦੁਪਹਰ ਦਾ ਖਾਣਾ ਲੋਗ ਕਰਨ ਸਮਾਂ',
			'notifications.dinner.title' => 'ਰਾਤ ਦਾ ਖਾਣਾ ਸਮਾਂ! 🍽️',
			'notifications.dinner.body' => 'ਆਪਣੀ ਰਾਤ ਦਾ ਖਾਣਾ ਲੋਗ ਕਰਨਾ ਨਾ ਭੁੱਲੋ',
			'notifications.snack.title' => 'ਸਨੈਕ ਸਮਾਂ! 🍎',
			'notifications.snack.body' => 'ਇੱਕ ਸਿਹਤਮੰਦ ਸਨੈਕ ਲਈ ਸਮਾਂ',
			'notifications.test.title' => 'ਟੈਸਟ ਸੂਚਨਾ',
			'login.title' => 'ਲਾਗਿਨ ਕਰੋ',
			'login.signInWithGoogle' => 'ਗੂਗਲ ਨਾਲ ਸਾਈਨ ਇਨ ਕਰੋ',
			'login.signInFailed' => 'ਗੂਗਲ ਸਾਈਨ ਇਨ ਕਰਨਾ ਅਸਫਲ ਹੋਇਆ ਜਾਂ ਰੱਦ ਕੀਤਾ ਗਿਆ।',
			'disclaimer.pleaseNote' => 'ਕ੍ਰਿਪਾ ਕਰਕੇ ਨੋਟ ਕਰੋ',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} ਅਦ੍ਧਾਰਿਤ ਪੋਸ਼ਣ ਦੀ ਜਾਣਕਾਰੀ ਪ੍ਰਦਾਨ ਕਰਦਾ ਹੈ। ਸਹੀਤਾ ਤੁਹਾਡੇ ਦਰਜ ਅਤੇ ਭੋਜਨ ਦੇ ਤਰੀਕਿਆਂ \'ਤੇ ਨਿਰਭਰ ਕਰਦੀ ਹੈ। ਗਾਈਡ ਦੇ ਤੌਰ \'ਤੇ ਵਰਤੋਂ ਕਰੋ, ਨਿਰਧਾਰਿਤ ਸਰੋਤ ਨਹੀਂ। ਵਿਅਕਤੀਗਤ ਪੋਸ਼ਣ ਸਲਾਹ ਲਈ ਕਿਸੇ ਪ੍ਰੋਫੈਸ਼ਨਲ ਨਾਲ ਯੋਗ ਕਰੋ।',
			'disclaimer.snap.portionSize.title' => 'ਪ੍ਰਸ਼ਾਸ਼ਤ ਮਾਤਰਾ',
			'disclaimer.snap.portionSize.description' => 'ਅੰਦਾਜ਼ੇ ਦੀ ਸਹੀਤਾ ਤੁਹਾਡੇ ਜਾਣਕਾਰੀ ਦੇ ਮਾਪ \'ਤੇ ਬਹੁਤ ਨਿਰਭਰ ਕਰਦੀ ਹੈ।',
			'disclaimer.snap.preparationMethods.title' => 'ਤਿਆਰੀ ਦੇ ਤਰੀਕੇ',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'ਕੁੱਝ ਭੋਜਨਾਂ ਤੋਂ ਪੋਸ਼ਣ ਦੀ ਸਮੱਗਰੀ ਦਰਾਰ ਕਰ ਸਕਦੀ ਹੈ। ${appLabel} ਦੇ ਅੰਦਾਜ਼ੇ ਆਮ ਤੌਰ \'ਤੇ ਵੱਖ-ਵੱਖ ਕੁਝ ਵੀ ਸ਼ਾਮਿਲ ਨਹੀਂ ਹੁੰਦੇ।',
			'disclaimer.snap.ingredients.title' => 'ਸਮੱਗਰੀਆਂ',
			'disclaimer.snap.ingredients.description' => 'ਪ੍ਰਕਿਰਿਆ ਸ਼੍ਰੇਣੀ ਨਾਲ ਜਪ ਮੀਲਾਂ ਸ਼ਾਮਿਲ ਹੋ ਸਕਦੀਆਂ ਹਨ ਜੋ ਢੁਕਵੇਂ ਅੰਦਾਜ਼ੇ ਦੇ ਬਾਹਰ ਲਿਆ ਸਕਦੀਆਂ ਹਨ।',
			'disclaimer.snap.databaseLimitations.title' => 'ਡਾਟਾਬੇਸ ਸੀਮਾ',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} ਦਾ ਭੋਜਨ ਡ੍ਰਾਈਸ ਵਿਸ਼ਾਲ ਹੈ ਪਰ ਹਰ ਪੋਟਲ ਜਾਂ ਸੰਕਰ ਪੋਸ਼ਨ ਨੂੰ ਸ਼ਾਮਿਲ ਕਰਨ ਵਿੱਚ ਸਮਰੱਥ ਨਹੀਂ ਹੋ ਸਕਦਾ।',
			'disclaimer.weightEstimate.title' => 'ਵਜ਼ਨ ਅੰਦਾਜ਼ੇ ਬਾਰੇ',
			'disclaimer.weightEstimate.description' => 'ਅੰਦਾਜ਼ੇ ਦੀ ਰੋਜ਼ਾਨਾ ਹਲਾਤ ਵਰਤੇ ਜਾ ਰਹੀ ਕੈਲੋਰੀਆਂ ਦੇ ਆਧਾਰ \'ਤੇ ਉਮੀਦ ਕੀਤੀ ਜਾਣ ਵਾਲੀ ਵਜ਼ਨ ਬਦਲਬੇਦ ਹੋਣ ਦੀ ਇੱਕ ਸੀਮਿਤ ਨਜ਼ਰ ਹੈ। ਇਹ ਇਸ ਲੇਖਕਤਾਇ ਪੇਸ਼ ਕਰਨ ਲਈ ਨਹੀਂ ਹੈ, ਸਿਰਫ ਇੱਕ ਮੋਟਿਵਿਤਿਵਣਾ ਰਾਹਿਨਿਸ਼ਾਨ ਦੇ ਤੌਰ \'ਤੇ।',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'ਕੈਲੋਰੀ ਦੀ ਸਹੀਤਾ',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'ਇਹ ਅੰਦਾਜ਼ਾ ਤਾਂ ਹੀ ਸਹੀ ਹੈ ਜਦੋਂ ਤੁਸੀਂ ਆਪਣੇ ਦਰਜ ਕੀਤੇ ਗਏ ਅਹਿਸਾਸਾਂ ਤੇ ਬਿਲਕੁਲ ਧਿਆਨ ਦਿੰਦੇ ਹੋ। ਗਲਤ ਲੋਗਿੰਗ ਨਾਲ ਗਲਤ projection ਇਹ ਰਾਹਿਨਿਸ਼ਾਨ ਦਾ ਨਿਆਸ ਕੀਤਾ ਜੇਗਾ।',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'ਜੀਵ ਵਿਗਿਆਨਿਕ ਕਾਰਕ',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'ਅਸਲ ਵਿੱਚ ਵਜ਼ਨ ਘਟਣਾ/ਵਧਾਉਣਾ ਮੈਟਾਬੋਲਿਸਮ, ਹਾਰਮੋਨ, ਨੀਂਦ, ਤਣਾਅ, ਪਾਣੀ, ਅਤੇ ਹੋਰ ਵਿਅਕਤੀਗਤ ਕਾਰਕਾਂ ਦੇ ਪ੍ਰਭਾਵ ਵਿਚ ਹੁੰਦੀ ਹੈ ਜੋ ${appLabel} ਨਹੀਂ ਮਾਪ ਸਕਦਾ।',
			'disclaimer.weightEstimate.waterWeight.title' => 'ਪਾਣੀ ਦਾ ਵਜ਼ਨ ਅਤੇ ਬਦਲਾਅ',
			'disclaimer.weightEstimate.waterWeight.description' => 'ਦਿਨ ਦੀਆਂ ਨਿਸ਼ਾਨਾਂ ਦਾ ਵਜ਼ਨ ਅਕਸਰ ਪਾਣੀ ਰੋਕਣ ਵਾਲੇ, ਅੰਨਦ-ਸਮਸਿਆ ਅਤੇ ਸਮਿਆਂ ਪਦਾਰਥ ਦੇ ਪ੍ਰਭਾਵ ਵਿੱਚ ਬਦਲ ਸਕਦਾ ਹੈ। ਅੰਦਾਜ਼ਾ ਯਹ੍ ਬਦਲਾਅ ਸ਼ਾਮਿਲ ਨਹੀਂ ਹੁੰਦਾ।',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'ਪ੍ਰੋਫੈਸ਼ਨਲ ਗਾਈਡਸ',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'ਇਸ ਅੰਦਾਜੇ ਦੇ ਅਧਾਰ \'ਤੇ ਕੋਈ ਮੈਡੀਕਲ ਫ਼ੈਸਲਾ ਕਰਨ ਲਈ ਨਾ ਵਰਤੋ। ਹਮੇਸ਼ਾ ਕਿਸੇ ਸਿਹਤ ਸੰਭਾਲ ਪ੍ਰੋਫੈਸ਼ਨਲ ਜਾਂ ਰਜਿਸਟਰਡ ਡਾਇਟੀਸ਼ੀਅਨ ਨਾਲ ਵਿਅਕਤੀਗਤ ਵਜ਼ਨ ਪ੍ਰਬੰਧਨ ਸਲਾਹ ਲਈ ਸੰਪਰਕ ਕਰੋ।',
			'common.close' => 'ਬੰਦ ਕਰੋ',
			'common.kContinue' => 'ਜਾਰੀ ਰੱਖੋ',
			'errors.loadingProfileData' => 'ਪ੍ਰੋਫਾਈਲ ਡਾਟਾ ਲੋਡ ਕਰਨ ਵਿੱਚ ਗਲਤੀ',
			'errors.somethingWentWrong' => 'ਕچھ ਗਲਤ ਹੋ ਗਿਆ ਹੈ।',
			'debug.title' => 'ਡਿਬੱਗ ਵਿਕਲਪ',
			'debug.sections.notifications' => 'ਸੂਚਨਾਵਾਂ',
			'debug.sections.healthConnect' => 'ਹੈਲਥ ਕਨੈਕਟ',
			'debug.sections.appInfo' => 'ਐਪ ਜਾਣਕਾਰੀ',
			'debug.showActiveNotifications' => 'ਸਰਗਰਮ ਸੂਚਨਾਵਾਂ ਦਿਖਾਓ',
			'debug.scheduleTestNotification' => 'ਟੈਸਟ ਸੂਚਨਾ ਸ਼ੇਡਯੂਲ ਕਰੋ (10 ਸੈਕੰਡ)',
			'debug.triggerBreakfastNotification' => 'ਨਾਸ਼ਤੇ ਦੀ ਸੂਚਨਾ ਨੂੰ ਚਾਲੂ ਕਰੋ',
			'debug.cancelAllNotifications' => 'ਸਭ ਸੂਚਨਾਵਾਂ ਰੱਦ ਕਰੋ',
			'debug.activeNotifications' => 'ਸਰਗਰਮ ਸੂਚਨਾਵਾਂ',
			'debug.noTitle' => 'ਕੋਈ ਸ਼ਿਰਲੇਖ ਨਹੀਂ',
			'debug.noBody' => 'ਕੋਈ ਪੇਸ਼ਕਾਰ ਨਹੀਂ',
			'debug.fetchTodaysSteps' => 'ਅੱਜ ਦੇ ਕਦਮ ਲਿਆਉ',
			'debug.fetchTodaysCalories' => 'ਅੱਜ ਦੀਆਂ ਕੈਲੋਰੀਆਂ ਜਾਣੋ',
			'debug.fetchLatestWeight' => 'ਹਾਲੀਆ ਵਜ਼ਨ ਲਿਆਉ',
			'debug.fetchLatestHeight' => 'ਹਾਲੀਆ ਉਚਾਈ ਲਿਆਉ',
			'debug.writeTestWeight' => 'ਟੈਸਟ ਵਜ਼ਨ ਲਿਖੋ (70kg)',
			'debug.writeTestHeight' => 'ਟੈਸਟ ਉਚਾਈ ਲਿਖੋ (175cm)',
			'debug.syncLast7Days' => 'ਅੰਤਿਮ 7 ਦਿਨਾਂ ਤੋਂ ਸਿੰਕ ਕਰੋ',
			'debug.sync7DaysTitle' => '7-ਦਿਨਾਂ ਦਾ ਸਿੰਕ',
			'debug.checkCurrentLocale' => 'ਵਰਤਮਾਨ.Locale ਨੂੰ ਚੈੱਕ ਕਰੋ',
			'debug.currentLocale' => 'ਵਰਤਮਾਨ.Locale',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'ਭਾਸ਼ਾ: ${languageCode}\nਦੇਸ਼: ${countryCode}\nਇਕਾਈ ਸਿਸਟਮ: ${unitSystem}',
			'debug.latestWeight' => 'ਹਾਲੀਆ ਵਜ਼ਨ',
			'debug.latestHeight' => 'ਹਾਲੀਆ ਉਚਾਈ',
			'debug.todaysCalories' => 'ਅੱਜ ਦੀਆਂ ਕੈਲੋਰੀਆਂ',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'ਕੁੱਲ ਕੈਲੋਰੀਆਂ ਜੋ ਜਲਾਈਆਂ ਗਈਆਂ: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'ਪਿਛਲੇ 7 ਦਿਨਾਂ ਵਿੱਚ ਕਦਮ, ਕੈਲੋਰੀਆਂ ਅਤੇ ਵਜ਼ਨ ਲਈ ${count} ਡੇਟਾ ਪੁਇੰਟ ਲਿਆਉਣ ਵਿੱਚ ਸਫਲਤਾ!',
			'debug.noWeightData' => 'ਪਿਛਲੇ 30 ਦਿਨਾਂ ਵਿੱਚ ਕੋਈ ਵਜ਼ਨ ਡਾਟਾ ਨਹੀਂ ਮਿਲਿਆ।',
			'debug.noHeightData' => 'ਪਿਛਲੇ ਸਾਲ ਵਿੱਚ ਕੋਈ ਉਚਾਈ ਡਾਟਾ ਨਹੀਂ ਮਿਲਿਆ।',
			'debug.noCalorieData' => 'ਅੱਜ ਲਈ ਕੋਈ ਕੈਲੋਰੀਆਂ ਡਾਟਾ ਮਿਲਿਆ ਨਹੀਂ।',
			'debug.weightWritten' => 'ਟੈਸਟ ਵਜ਼ਨ (70kg) ਸੁਚਿਤਤਾ ਨਾਲ ਲਿਖਿਆ ਗਿਆ।',
			'debug.weightWriteFailed' => 'ਟੈਸਟ ਵਜ਼ਨ ਲਿਖਣ ਵਿੱਚ ਅਸਫਲ।',
			'debug.heightWritten' => 'ਟੈਸਟ ਉਚਾਈ (175cm) ਸੁਚਿਤਤਾ ਨਾਲ ਲਿਖੀ ਗਈ।',
			'debug.heightWriteFailed' => 'ਟੈਸਟ ਉਚਾਈ ਲਿਖਣ ਵਿੱਚ ਅਸਫਲ।',
			'debug.noNotifications' => 'ਕੋਈ ਸਰਗਰਮ ਸੂਚਨਾਵਾਂ ਨਹੀਂ।',
			'debug.testNotificationScheduled' => 'ਟੈਸਟ ਸੂਚਨਾ 10 ਸਕਿੰਟ ਤੋਂ ਬਾਅਦ ਸਮਾਂ ਦਰਜ ਕੀਤੀ ਗਈ',
			'debug.testNotificationBody' => 'ਇਹ 10 ਸਕਿੰਟ ਤੋਂ ਬਾਅਦ ਸਮਾਂ ਦਰਜ ਲਈ ਇੱਕ ਟੈਸਟ ਸੂਚਨਾ ਹੈ.',
			'debug.breakfastNotificationTriggered' => 'ਨਾਸ਼ਤਾ ਸੂਚਨਾ ਨੂੰ ਚਾਲੂ ਕੀਤਾ ਗਿਆ ਹੈ.',
			'debug.allNotificationsCancelled' => 'ਸਭ ਸੂਚਨਾਵਾਂ ਰੱਦ ਕੀਤੀਆਂ ਗਈਆਂ ਹਨ.',
			'debug.fetchingData' => 'ਪਿਛਲੇ 7 ਦਿਨਾਂ ਲਈ ਡਾਟਾ ਲਿਆਉਂਦੇ ਹੋਏ...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'ਹੈਲਥ ਕਨੈਕਟ ਨਾਲ ਸਿੰਕ ਕਰਨ ਵਿੱਚ ਅਸਫਲ',
			'health.mealSynced' => 'ਮੀਲ ਨੂੰ ਹੈਲਥ ਕਨੈਕਟ ਨਾਲ ਸਿੰਕ ਕੀਤਾ ਗਿਆ',
			_ => null,
		};
	}
}
