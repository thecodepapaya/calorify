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
	@override String get language => 'English';
	@override String get flag => '🇺🇸';
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
	@override late final _TranslationsErrorsTl errors = _TranslationsErrorsTl._(_root);
	@override late final _TranslationsDebugTl debug = _TranslationsDebugTl._(_root);
	@override late final _TranslationsHealthTl health = _TranslationsHealthTl._(_root);
}

// Path: onboarding
class _TranslationsOnboardingTl implements TranslationsOnboardingEn {
	_TranslationsOnboardingTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Welcome to Calorify';
	@override String get subtitle => 'Your personal nutrition companion powered by AI';
	@override String get getStarted => 'Get Started';
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
	@override String get history => 'History';
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
	@override String get noMeals => 'No meals recorded';
	@override String get emptyMessage => 'Snap a picture of your last meal to log here.';
	@override String get today => 'Today';
	@override String get yesterday => 'Yesterday';
}

// Path: meal
class _TranslationsMealTl implements TranslationsMealEn {
	_TranslationsMealTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Oh no!';
	@override String get delete => 'Delete';
	@override String get editMeal => 'Edit Meal';
	@override String get addMeal => 'Add Meal';
	@override String get saveMeal => 'Save Meal';
	@override String get save => 'Save';
	@override String get mealName => 'Meal Name';
	@override String get mealQuantity => 'Meal Quantity';
	@override String get mealQuantityHint => 'e.g., 1 bowl, 2 slices';
	@override String get timeOfMeal => 'Time of Meal';
	@override String get timeOfMealHint => 'Select the time you had your meal';
	@override String get mealType => 'Meal Type';
	@override late final _TranslationsMealNutritionTl nutrition = _TranslationsMealNutritionTl._(_root);
	@override late final _TranslationsMealDeleteConfirmationTl deleteConfirmation = _TranslationsMealDeleteConfirmationTl._(_root);
	@override String get addedToLog => 'Meal added to your log!';
	@override String couldNotAdd({required Object error}) => 'Could not add meal: ${error}';
	@override String get removedFromFavorites => 'Removed from favorites!';
	@override String get savedAsFavorite => 'Meal saved as favorite!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Could not update favorite: ${error}';
	@override String failedToProcess({required Object error}) => 'Failed to process: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Failed to process image: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Error compressing image: ${error}';
	@override String get failedToSave => 'Failed to save data. Please try again.';
}

// Path: favorites
class _TranslationsFavoritesTl implements TranslationsFavoritesEn {
	_TranslationsFavoritesTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorites';
	@override String get empty => 'No favorite meals yet.';
}

// Path: profile
class _TranslationsProfileTl implements TranslationsProfileEn {
	_TranslationsProfileTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profile';
	@override String get noProfileData => 'No profile data found';
	@override String get yourProfile => 'Your Profile';
	@override String get viewAndManage => 'View and manage your health information';
	@override late final _TranslationsProfileSectionsTl sections = _TranslationsProfileSectionsTl._(_root);
	@override String get gender => 'Gender';
	@override String get height => 'Height';
	@override String get weight => 'Weight';
	@override String get age => 'Age';
	@override String get weightGoal => 'Weight Goal';
	@override String get activityLevel => 'Activity Level';
	@override String get healthMetrics => 'Health Metrics';
	@override String get notSet => 'Not set';
	@override String get years => 'years';
	@override String get updatedSuccessfully => 'Profile updated successfully!';
	@override late final _TranslationsProfileCalculatedValuesTl calculatedValues = _TranslationsProfileCalculatedValuesTl._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreTl implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Score';
	@override String get whyThisScore => 'Why this score?';
	@override String get note => 'This score is an AI estimate based on the identified ingredients and nutritional density. Always consult a professional for dietary advice.';
	@override String get unhealthy => 'Unhealthy';
	@override String get healthy => 'Healthy';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileTl implements TranslationsEditProfileEn {
	_TranslationsEditProfileTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edit Profile';
	@override late final _TranslationsEditProfileSectionsTl sections = _TranslationsEditProfileSectionsTl._(_root);
	@override String get gender => 'Gender';
	@override String get dateOfBirth => 'Date of Birth';
	@override String get height => 'Height';
	@override String get weight => 'Weight';
	@override String get weightGoal => 'Weight Goal';
	@override String get activityLevel => 'Activity Level';
	@override String get metric => 'Metric';
	@override String get imperial => 'Imperial';
	@override String get metricCm => 'Metric (cm)';
	@override String get imperialFtIn => 'Imperial (ft/in)';
	@override String get metricKg => 'Metric (kg)';
	@override String get imperialLbs => 'Imperial (lbs)';
	@override late final _TranslationsEditProfileGendersTl genders = _TranslationsEditProfileGendersTl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsTl weightGoals = _TranslationsEditProfileWeightGoalsTl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsTl activityLevels = _TranslationsEditProfileActivityLevelsTl._(_root);
}

// Path: settings
class _TranslationsSettingsTl implements TranslationsSettingsEn {
	_TranslationsSettingsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Settings';
	@override late final _TranslationsSettingsSectionsTl sections = _TranslationsSettingsSectionsTl._(_root);
	@override late final _TranslationsSettingsEditProfileTl editProfile = _TranslationsSettingsEditProfileTl._(_root);
	@override late final _TranslationsSettingsLanguageTl language = _TranslationsSettingsLanguageTl._(_root);
	@override late final _TranslationsSettingsHeightUnitTl heightUnit = _TranslationsSettingsHeightUnitTl._(_root);
	@override late final _TranslationsSettingsWeightUnitTl weightUnit = _TranslationsSettingsWeightUnitTl._(_root);
	@override late final _TranslationsSettingsThemeTl theme = _TranslationsSettingsThemeTl._(_root);
	@override late final _TranslationsSettingsMealRemindersTl mealReminders = _TranslationsSettingsMealRemindersTl._(_root);
	@override late final _TranslationsSettingsSendFeedbackTl sendFeedback = _TranslationsSettingsSendFeedbackTl._(_root);
	@override late final _TranslationsSettingsClearAllDataTl clearAllData = _TranslationsSettingsClearAllDataTl._(_root);
	@override late final _TranslationsSettingsDebugOptionsTl debugOptions = _TranslationsSettingsDebugOptionsTl._(_root);
	@override String get developerModeEnabled => 'Developer mode enabled!';
}

// Path: reminders
class _TranslationsRemindersTl implements TranslationsRemindersEn {
	_TranslationsRemindersTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stay on track with reminders';
	@override String get description => 'Get gentle reminders to log your meals and stay consistent with your nutrition goals';
	@override String get notificationsEnabled => 'Notifications Enabled';
	@override String get notificationsDisabled => 'Notifications Disabled';
	@override String get enabledSubtitle => 'You\'ll receive meal reminders';
	@override String get disabledSubtitle => 'Enable notifications to get meal reminders';
	@override String get mealReminders => 'Meal Reminders';
	@override String get breakfast => 'Breakfast';
	@override String get lunch => 'Lunch';
	@override String get dinner => 'Dinner';
	@override String get snack => 'Snack';
	@override String get unknown => 'Unknown';
	@override String get change => 'Change';
	@override String get enableNotifications => 'Enable Notifications';
	@override String get skipForNow => 'Skip for now';
	@override String get saveChanges => 'Save Changes';
	@override String get enabledSuccessfully => 'Notifications enabled successfully!';
	@override String get permissionDenied => 'Notification permission denied';
	@override String errorEnabling({required Object error}) => 'Error enabling notifications: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Error completing setup: ${error}';
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
	@override String get title => 'Login';
	@override String get signInWithGoogle => 'Sign in with Google';
	@override String get signInFailed => 'Google Sign-In failed or was cancelled.';
}

// Path: disclaimer
class _TranslationsDisclaimerTl implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Please Note';
	@override late final _TranslationsDisclaimerSnapTl snap = _TranslationsDisclaimerSnapTl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateTl weightEstimate = _TranslationsDisclaimerWeightEstimateTl._(_root);
}

// Path: common
class _TranslationsCommonTl implements TranslationsCommonEn {
	_TranslationsCommonTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get close => 'Close';
	@override String get kContinue => 'Continue';
}

// Path: errors
class _TranslationsErrorsTl implements TranslationsErrorsEn {
	_TranslationsErrorsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Error loading profile data';
	@override String get somethingWentWrong => 'Something went wrong.';
}

// Path: debug
class _TranslationsDebugTl implements TranslationsDebugEn {
	_TranslationsDebugTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug Options';
	@override late final _TranslationsDebugSectionsTl sections = _TranslationsDebugSectionsTl._(_root);
	@override String get showActiveNotifications => 'Show Active Notifications';
	@override String get scheduleTestNotification => 'Schedule Test Notification (10s)';
	@override String get triggerBreakfastNotification => 'Trigger Breakfast Notification';
	@override String get cancelAllNotifications => 'Cancel All Notifications';
	@override String get activeNotifications => 'Active Notifications';
	@override String get noTitle => 'No Title';
	@override String get noBody => 'No Body';
	@override String get fetchTodaysSteps => 'Fetch Today\'s Steps';
	@override String get fetchTodaysCalories => 'Fetch Today\'s Calories';
	@override String get fetchLatestWeight => 'Fetch Latest Weight';
	@override String get fetchLatestHeight => 'Fetch Latest Height';
	@override String get writeTestWeight => 'Write Test Weight (70kg)';
	@override String get writeTestHeight => 'Write Test Height (175cm)';
	@override String get syncLast7Days => 'Sync Last 7 Days';
	@override String get sync7DaysTitle => '7-Day Sync';
	@override String get checkCurrentLocale => 'Check Current Locale';
	@override String get currentLocale => 'Current Locale';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Language: ${languageCode}\nCountry: ${countryCode}\nUnit System: ${unitSystem}';
	@override String get latestWeight => 'Latest Weight';
	@override String get latestHeight => 'Latest Height';
	@override String get todaysCalories => 'Today\'s Calories';
	@override String totalCaloriesBurned({required Object calories}) => 'Total calories burned: ${calories}';
	@override String syncSuccess({required Object count}) => 'Successfully fetched ${count} data points for Steps, Calories, and Weight over the last 7 days.';
	@override String get noWeightData => 'No weight data found in the last 30 days.';
	@override String get noHeightData => 'No height data found in the last year.';
	@override String get noCalorieData => 'No calorie data found for today.';
	@override String get weightWritten => 'Successfully wrote test weight (70kg).';
	@override String get weightWriteFailed => 'Failed to write test weight.';
	@override String get heightWritten => 'Successfully wrote test height (175cm).';
	@override String get heightWriteFailed => 'Failed to write test height.';
	@override String get noNotifications => 'No active notifications.';
	@override String get testNotificationScheduled => 'Test notification scheduled for 10 seconds from now.';
	@override String get testNotificationBody => 'This is a test notification scheduled for 10 seconds from now.';
	@override String get breakfastNotificationTriggered => 'Breakfast notification triggered.';
	@override String get allNotificationsCancelled => 'All notifications cancelled.';
	@override String get fetchingData => 'Fetching data for the last 7 days...';
	@override String id({required Object id}) => 'ID: ${id}';
}

// Path: health
class _TranslationsHealthTl implements TranslationsHealthEn {
	_TranslationsHealthTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Could not sync to Health Connect';
	@override String get mealSynced => 'Meal synced with Health Connect';
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
	@override String get title => 'What is your gender?';
	@override String get description => 'Gender helps us accurately calculate your basal metabolic rate (BMR).';
	@override String get next => 'Next';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightTl implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'How tall are you?';
	@override String get description => 'Your height helps us calculate your BMI and energy needs accurately.';
	@override String get metric => 'Metric';
	@override String get imperial => 'Imperial';
	@override String get next => 'Next';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightTl implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'What is your current weight?';
	@override String get currentDescription => 'Your current weight is essential for personalizing your daily goals.';
	@override String get targetTitle => 'What is your target weight?';
	@override String get targetDescription => 'Setting a goal weight helps us determine your long-term plan.';
	@override String get metric => 'Metric';
	@override String get imperial => 'Imperial';
	@override String get next => 'Next';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeTl implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'When is your birthday?';
	@override String get description => 'Your age helps us calculate your calorie needs accurately.';
	@override String get next => 'Next';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleTl implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Underweight';
	@override String get healthy => 'Healthy';
	@override String get overweight => 'Overweight';
	@override String get obese => 'Obese';
	@override late final _TranslationsOnboardingBmiScaleCategoriesTl categories = _TranslationsOnboardingBmiScaleCategoriesTl._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesTl messages = _TranslationsOnboardingBmiScaleMessagesTl._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalTl implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'What\'s your goal?';
	@override String get description => 'Choose the goal that best describes what you want to achieve';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelTl implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'How active are you?';
	@override String get description => 'This helps us calculate your daily calorie needs more accurately';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectTl implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Connect with Health Connect';
	@override String get description => 'Sync your health data for better insights and automatic calorie tracking';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingTl automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingTl._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsTl progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsTl._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationTl seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationTl._(_root);
	@override String get connected => 'Health Connect Connected';
	@override String get notConnected => 'Health Connect Not Connected';
	@override String get setup => 'Setup Health Connect';
	@override String get skipForNow => 'Skip for now';
	@override String get statusConnected => 'Health Connect is connected.';
	@override String get statusSuccess => 'Health Connect has been successfully connected!';
	@override String get statusPermissionDenied => 'Permission denied. Please enable Health Connect permissions from your phone settings for Calorify.';
	@override String statusError({required Object error}) => 'Error setting up Health Connect: ${error}';
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
	@override String get title => 'Set Your Daily Goal';
	@override String get titleSet => 'Your Daily Goal';
	@override String get description => 'Ready to embark on your wellness journey? Set your daily calorie target below to kickstart your progress.';
	@override String get descriptionSet => 'Your compass is set! This is your daily calorie target to guide you.';
	@override String get yourGoal => 'Your Goal';
	@override String get dailyCalories => 'Daily calories (kcal)';
	@override String get setGoal => 'Set Goal';
	@override String get intake => 'Intake';
	@override String get burned => 'Burned';
	@override String get weightImpact => 'Weight Impact';
	@override String get estLoss => 'Est. loss of';
	@override String get estGain => 'Est. gain of';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryTl implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Daily Summary';
	@override String get calories => 'Calories';
	@override String get carbs => 'Carbs';
	@override String get protein => 'Protein';
	@override String get fat => 'Fat';
	@override String get fiber => 'Fiber';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressTl implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Today\'s Macro Split';
	@override String get target => 'Target';
	@override String get current => 'Current';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryTl implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => '7-Day Macro History';
	@override String get noHistoryYet => 'No history yet';
	@override String get startLogging => 'Start logging meals to see your\n7-day macro trends here';
}

// Path: home.mealLog
class _TranslationsHomeMealLogTl implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Logged Meals';
	@override String get emptyMessage => 'Snap a picture of your last meal to log here.';
	@override String get noMealsToday => 'No meals recorded for today';
	@override String get seeAllMeals => 'See all meals';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionTl implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quick Add with AI';
	@override String get description => 'Describe your meal, and let AI handle the details.';
	@override String get hint => 'e.g. For breakfast I had a large bowl of oatmeal with a sliced banana and a scoop of whey ...';
	@override String get analyzeMeal => 'Analyze meal';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsTl implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorite Meals';
	@override String get description => 'Quickly add one of your favorite meals.';
	@override String get noFavorites => 'No favorite meals yet.';
	@override String get addFavoriteHint => 'Click the star on a meal to mark it as a favorite.';
	@override String get seeAll => 'See all';
	@override String get add => 'Add';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapTl implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snap & Track Your Meal';
	@override String get description => 'Use your camera to take a picture of your food for AI analysis.';
	@override String get openCamera => 'Open Camera';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthTl implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sync with Health Connect';
	@override String get description => 'Sync your nutrition data with Health Connect';
	@override String get install => 'Install';
	@override String get connect => 'Connect';
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
	@override String get title => 'Delete Meal';
	@override String get message => 'Are you sure you want to delete this meal entry?';
	@override String get cancel => 'Cancel';
	@override String get delete => 'Delete';
}

// Path: profile.sections
class _TranslationsProfileSectionsTl implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFILE';
	@override String get basicInformation => 'BASIC INFORMATION';
	@override String get goalsAndActivity => 'GOALS & ACTIVITY';
	@override String get calculatedValues => 'CALCULATED VALUES';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesTl implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Daily Goal';
	@override String get calPerDay => 'cal/day';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsTl implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSONAL INFORMATION';
	@override String get physicalMeasurements => 'PHYSICAL MEASUREMENTS';
	@override String get goalsAndActivity => 'GOALS & ACTIVITY';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersTl implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get male => 'Male';
	@override String get female => 'Female';
	@override String get other => 'Other';
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
	@override String get localization => 'LOCALIZATION';
	@override String get notifications => 'NOTIFICATIONS';
	@override String get supportAndLegal => 'SUPPORT & LEGAL';
	@override String get dangerZone => 'DANGER ZONE';
	@override String get developer => 'DEVELOPER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileTl implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edit Profile';
	@override String get subtitle => 'Update your personal information';
}

// Path: settings.language
class _TranslationsSettingsLanguageTl implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Language';
	@override String get subtitle => 'Choose your preferred language';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitTl implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Height Unit';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitTl implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Weight Unit';
}

// Path: settings.theme
class _TranslationsSettingsThemeTl implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Theme';
	@override String get subtitle => 'Choose your preferred theme';
	@override String get light => 'Light';
	@override String get dark => 'Dark';
	@override String get system => 'System';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersTl implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Meal Reminders';
	@override String get subtitle => 'Stay on track with timely alerts';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackTl implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Send Feedback';
	@override String get subtitle => 'Help us improve Calorify';
	@override String get emailSubject => 'Calorify App Feedback';
	@override String get emailBodyPrefix => 'Please provide your feedback below:';
	@override String get appVersion => 'App Version';
	@override String get device => 'Device';
	@override String get osVersion => 'OS Version';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataTl implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Clear All Data';
	@override String get subtitle => 'Irreversibly delete all your information';
	@override String get confirmationTitle => 'Clear All Data?';
	@override String get confirmationMessage => 'This action cannot be undone. All your logged meals, favorites, and profile settings will be permanently deleted.';
	@override String get cancel => 'Cancel';
	@override String get clearEverything => 'Clear Everything';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsTl implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug Options';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastTl implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Breakfast Time! 🍳';
	@override String get body => 'Don\'t forget to log your breakfast';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchTl implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lunch Time! 🥗';
	@override String get body => 'Time to log your lunch';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerTl implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dinner Time! 🍽️';
	@override String get body => 'Don\'t forget to log your dinner';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackTl implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snack Time! 🍎';
	@override String get body => 'Time for a healthy snack';
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
	@override String get description => 'Calorify provides estimated nutritional info. Accuracy depends on your input & food variations. Use as a guide, not a definitive source. Consult a professional for personalized dietary advice.';
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
	@override String get title => 'About Weight Estimate';
	@override String get description => 'The projected weight change is a theoretical estimate based on the simple calorie-in vs. calorie-out model. It is intended for motivational guidance only, not as a prediction of your actual weight.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyTl calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyTl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsTl biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsTl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightTl waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightTl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsTl implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Notifications';
	@override String get healthConnect => 'Health Connect';
	@override String get appInfo => 'App Info';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionTl implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Smart Food Recognition';
	@override String get description => 'Take a photo and let AI identify your meal';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisTl implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI Analysis';
	@override String get description => 'Get instant nutrition facts from your descriptions';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationTl implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Integration';
	@override String get description => 'Connect with Health Connect for better insights';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesTl implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Underweight';
	@override String get healthyWeight => 'Healthy weight';
	@override String get overweight => 'Overweight';
	@override String get obese => 'Obese';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesTl implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'We can help you build a healthy plan to reach a balanced weight with nutrient-dense meals.';
	@override String get healthy => 'Great job! You\'re in a healthy range. We\'ll help you maintain your vitality and energy levels.';
	@override String get overweight => 'Calorify will simplify your journey with AI-powered tracking to help you reach your target comfortably.';
	@override String get obese => 'We\'re here to support you with personalized guidance and sustainable strategies for your health goals.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingTl implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatic Calorie Tracking';
	@override String get description => 'Track calories burned from your fitness apps';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsTl implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Progress Insights';
	@override String get description => 'Get detailed insights into your health trends';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationTl implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seamless Integration';
	@override String get description => 'Sync data from your favorite health apps';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessTl implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'You\'re Not Alone';
	@override String get genericMessage => 'Research shows that consistent tracking is the #1 predictor of long-term success.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'For a ${age} year old ${gender} looking to ${goal}, consistent tracking is the #1 predictor of success.';
	@override String get closingMessage => 'Calorify makes it 10x easier than doing it manually.';
	@override String get getStartedTitle => 'Handa na bang magsimula?';
	@override String get tipPhoto => 'Kumuha ng larawan ng iyong mga pagkain para sa agarang pagsusuri';
	@override String get tipConsistency => 'Mag-log nang tuloy-tuloy upang makakita ng makabuluhang pag-unlad';
	@override String get tipProgress => 'Subaybayan ang iyong pag-unlad araw-araw upang manatiling motivated';
	@override String get button => 'Let\'s Go';
	@override String get defaultGender => 'individual';
	@override String get defaultGoal => 'healthier you';
	@override String get instantPhotoAnalysis => 'Instant photo analysis';
	@override String get automaticLogging => 'Automatic nutritional logging';
	@override String get progressVisualizations => 'Progress visualizations that keep you motivated';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileTl implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Your Health Profile';
	@override String bmiDescription({required Object bmi}) => 'Based on your metrics, your BMI is ${bmi}.';
	@override String get finalizeDescription => 'Let\'s finalize your profile to customize your experience.';
	@override String get goalGain => 'gain';
	@override String get goalLose => 'lose';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'To reach your goal, you\'ll ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'You\'re at your target weight! We\'ll help you maintain it.';
	@override String get button => 'Let\'s Go';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleTl implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Excellent Start!';
	@override String description({required Object goalText, required Object activityText}) => 'You\'ve taken the first step towards ${goalText}. Since you\'re ${activityText}, Calorify will adjust your targets to match your lifestyle.';
	@override String get personalizedTargets => 'Personalized calorie targets';
	@override String get aiMealDetection => 'AI-powered meal detection';
	@override String get macroBreakdowns => 'Detailed macro-nutrient breakdowns';
	@override String get button => 'Let\'s Go';
	@override String get defaultGoal => 'your goals';
	@override String get defaultActivity => 'active';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightTl implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lose Weight';
	@override String get description => 'Create a calorie deficit to lose weight';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightTl implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Maintain Weight';
	@override String get description => 'Maintain your current weight';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightTl implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gain Weight';
	@override String get description => 'Create a calorie surplus to gain weight';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryTl implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentary';
	@override String get description => 'Little to no exercise';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveTl implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lightly Active';
	@override String get description => 'Light exercise 1-3 days/week';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveTl implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderately Active';
	@override String get description => 'Moderate exercise 3-5 days/week';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveTl implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Very Active';
	@override String get description => 'Hard exercise 6-7 days/week';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveTl implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extremely Active';
	@override String get description => 'Very hard exercise, physical job';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeTl implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Portion Size';
	@override String get description => 'The accuracy of the estimates heavily relies on your correct assessment of the portion size.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsTl implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preparation Methods';
	@override String get description => 'Cooking methods can significantly alter the nutritional content of food. Calorify\'s estimates may not always account for these variations.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsTl implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredients';
	@override String get description => 'Complex dishes with many hidden ingredients may lead to less accurate estimations.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsTl implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Database Limitations';
	@override String get description => 'Calorify\'s food database is extensive but may not include every single food item or variation.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyTl implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calorie Accuracy';
	@override String get description => 'This estimate is only as accurate as your tracked calorie intake and expenditure. Inaccurate logging will result in an inaccurate projection.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsTl implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biological Factors';
	@override String get description => 'Actual weight loss/gain is influenced by metabolism, hormones, sleep, stress, hydration, and other individual factors that Calorify cannot measure.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightTl implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Water Weight & Fluctuations';
	@override String get description => 'Normal daily weight can fluctuate significantly due to water retention, digestion, and timing. The estimate does not account for these daily changes.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceTl._(this._root);

	final TranslationsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professional Guidance';
	@override String get description => 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.';
}

/// The flat map containing all translations for locale <tl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'English',
			'flag' => '🇺🇸',
			'onboarding.welcome' => 'Welcome to Calorify',
			'onboarding.subtitle' => 'Your personal nutrition companion powered by AI',
			'onboarding.getStarted' => 'Get Started',
			'onboarding.features.foodRecognition.title' => 'Smart Food Recognition',
			'onboarding.features.foodRecognition.description' => 'Take a photo and let AI identify your meal',
			'onboarding.features.aiAnalysis.title' => 'AI Analysis',
			'onboarding.features.aiAnalysis.description' => 'Get instant nutrition facts from your descriptions',
			'onboarding.features.healthIntegration.title' => 'Health Integration',
			'onboarding.features.healthIntegration.description' => 'Connect with Health Connect for better insights',
			'onboarding.gender.title' => 'What is your gender?',
			'onboarding.gender.description' => 'Gender helps us accurately calculate your basal metabolic rate (BMR).',
			'onboarding.gender.next' => 'Next',
			'onboarding.height.title' => 'How tall are you?',
			'onboarding.height.description' => 'Your height helps us calculate your BMI and energy needs accurately.',
			'onboarding.height.metric' => 'Metric',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Next',
			'onboarding.weight.currentTitle' => 'What is your current weight?',
			'onboarding.weight.currentDescription' => 'Your current weight is essential for personalizing your daily goals.',
			'onboarding.weight.targetTitle' => 'What is your target weight?',
			'onboarding.weight.targetDescription' => 'Setting a goal weight helps us determine your long-term plan.',
			'onboarding.weight.metric' => 'Metric',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Next',
			'onboarding.age.title' => 'When is your birthday?',
			'onboarding.age.description' => 'Your age helps us calculate your calorie needs accurately.',
			'onboarding.age.next' => 'Next',
			'onboarding.bmiScale.underweight' => 'Underweight',
			'onboarding.bmiScale.healthy' => 'Healthy',
			'onboarding.bmiScale.overweight' => 'Overweight',
			'onboarding.bmiScale.obese' => 'Obese',
			'onboarding.bmiScale.categories.underweight' => 'Underweight',
			'onboarding.bmiScale.categories.healthyWeight' => 'Healthy weight',
			'onboarding.bmiScale.categories.overweight' => 'Overweight',
			'onboarding.bmiScale.categories.obese' => 'Obese',
			'onboarding.bmiScale.messages.underweight' => 'We can help you build a healthy plan to reach a balanced weight with nutrient-dense meals.',
			'onboarding.bmiScale.messages.healthy' => 'Great job! You\'re in a healthy range. We\'ll help you maintain your vitality and energy levels.',
			'onboarding.bmiScale.messages.overweight' => 'Calorify will simplify your journey with AI-powered tracking to help you reach your target comfortably.',
			'onboarding.bmiScale.messages.obese' => 'We\'re here to support you with personalized guidance and sustainable strategies for your health goals.',
			'onboarding.weightGoal.title' => 'What\'s your goal?',
			'onboarding.weightGoal.description' => 'Choose the goal that best describes what you want to achieve',
			'onboarding.activityLevel.title' => 'How active are you?',
			'onboarding.activityLevel.description' => 'This helps us calculate your daily calorie needs more accurately',
			'onboarding.healthConnect.title' => 'Connect with Health Connect',
			'onboarding.healthConnect.description' => 'Sync your health data for better insights and automatic calorie tracking',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatic Calorie Tracking',
			'onboarding.healthConnect.automaticTracking.description' => 'Track calories burned from your fitness apps',
			'onboarding.healthConnect.progressInsights.title' => 'Progress Insights',
			'onboarding.healthConnect.progressInsights.description' => 'Get detailed insights into your health trends',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Seamless Integration',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sync data from your favorite health apps',
			'onboarding.healthConnect.connected' => 'Health Connect Connected',
			'onboarding.healthConnect.notConnected' => 'Health Connect Not Connected',
			'onboarding.healthConnect.setup' => 'Setup Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Skip for now',
			'onboarding.healthConnect.statusConnected' => 'Health Connect is connected.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect has been successfully connected!',
			'onboarding.healthConnect.statusPermissionDenied' => 'Permission denied. Please enable Health Connect permissions from your phone settings for Calorify.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Error setting up Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'You\'re Not Alone',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Research shows that consistent tracking is the #1 predictor of long-term success.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'For a ${age} year old ${gender} looking to ${goal}, consistent tracking is the #1 predictor of success.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => 'Calorify makes it 10x easier than doing it manually.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Handa na bang magsimula?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Kumuha ng larawan ng iyong mga pagkain para sa agarang pagsusuri',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Mag-log nang tuloy-tuloy upang makakita ng makabuluhang pag-unlad',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Subaybayan ang iyong pag-unlad araw-araw upang manatiling motivated',
			'onboarding.reinforcement.trackingSuccess.button' => 'Let\'s Go',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individual',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'healthier you',
			'onboarding.reinforcement.trackingSuccess.instantPhotoAnalysis' => 'Instant photo analysis',
			'onboarding.reinforcement.trackingSuccess.automaticLogging' => 'Automatic nutritional logging',
			'onboarding.reinforcement.trackingSuccess.progressVisualizations' => 'Progress visualizations that keep you motivated',
			'onboarding.reinforcement.healthProfile.title' => 'Your Health Profile',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Based on your metrics, your BMI is ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Let\'s finalize your profile to customize your experience.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'gain',
			'onboarding.reinforcement.healthProfile.goalLose' => 'lose',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'To reach your goal, you\'ll ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'You\'re at your target weight! We\'ll help you maintain it.',
			'onboarding.reinforcement.healthProfile.button' => 'Let\'s Go',
			'onboarding.reinforcement.goalLifestyle.title' => 'Excellent Start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText}) => 'You\'ve taken the first step towards ${goalText}. Since you\'re ${activityText}, Calorify will adjust your targets to match your lifestyle.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personalized calorie targets',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-powered meal detection',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detailed macro-nutrient breakdowns',
			'onboarding.reinforcement.goalLifestyle.button' => 'Let\'s Go',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'your goals',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'active',
			'tabs.dashboard' => 'Dashboard',
			'tabs.history' => 'History',
			'home.dailyGoal.title' => 'Set Your Daily Goal',
			'home.dailyGoal.titleSet' => 'Your Daily Goal',
			'home.dailyGoal.description' => 'Ready to embark on your wellness journey? Set your daily calorie target below to kickstart your progress.',
			'home.dailyGoal.descriptionSet' => 'Your compass is set! This is your daily calorie target to guide you.',
			'home.dailyGoal.yourGoal' => 'Your Goal',
			'home.dailyGoal.dailyCalories' => 'Daily calories (kcal)',
			'home.dailyGoal.setGoal' => 'Set Goal',
			'home.dailyGoal.intake' => 'Intake',
			'home.dailyGoal.burned' => 'Burned',
			'home.dailyGoal.weightImpact' => 'Weight Impact',
			'home.dailyGoal.estLoss' => 'Est. loss of',
			'home.dailyGoal.estGain' => 'Est. gain of',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Daily Summary',
			'home.dailySummary.calories' => 'Calories',
			'home.dailySummary.carbs' => 'Carbs',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Fat',
			'home.dailySummary.fiber' => 'Fiber',
			'home.intakeProgress.title' => 'Today\'s Macro Split',
			'home.intakeProgress.target' => 'Target',
			'home.intakeProgress.current' => 'Current',
			'home.intakeHistory.title' => '7-Day Macro History',
			'home.intakeHistory.noHistoryYet' => 'No history yet',
			'home.intakeHistory.startLogging' => 'Start logging meals to see your\n7-day macro trends here',
			'home.mealLog.title' => 'Logged Meals',
			'home.mealLog.emptyMessage' => 'Snap a picture of your last meal to log here.',
			'home.mealLog.noMealsToday' => 'No meals recorded for today',
			'home.mealLog.seeAllMeals' => 'See all meals',
			'home.mealDescription.title' => 'Quick Add with AI',
			'home.mealDescription.description' => 'Describe your meal, and let AI handle the details.',
			'home.mealDescription.hint' => 'e.g. For breakfast I had a large bowl of oatmeal with a sliced banana and a scoop of whey ...',
			'home.mealDescription.analyzeMeal' => 'Analyze meal',
			'home.favoriteMeals.title' => 'Favorite Meals',
			'home.favoriteMeals.description' => 'Quickly add one of your favorite meals.',
			'home.favoriteMeals.noFavorites' => 'No favorite meals yet.',
			'home.favoriteMeals.addFavoriteHint' => 'Click the star on a meal to mark it as a favorite.',
			'home.favoriteMeals.seeAll' => 'See all',
			'home.favoriteMeals.add' => 'Add',
			'home.mealSnap.title' => 'Snap & Track Your Meal',
			'home.mealSnap.description' => 'Use your camera to take a picture of your food for AI analysis.',
			'home.mealSnap.openCamera' => 'Open Camera',
			'home.connectHealth.title' => 'Sync with Health Connect',
			'home.connectHealth.description' => 'Sync your nutrition data with Health Connect',
			'home.connectHealth.install' => 'Install',
			'home.connectHealth.connect' => 'Connect',
			'history.noMeals' => 'No meals recorded',
			'history.emptyMessage' => 'Snap a picture of your last meal to log here.',
			'history.today' => 'Today',
			'history.yesterday' => 'Yesterday',
			'meal.ohNo' => 'Oh no!',
			'meal.delete' => 'Delete',
			'meal.editMeal' => 'Edit Meal',
			'meal.addMeal' => 'Add Meal',
			'meal.saveMeal' => 'Save Meal',
			'meal.save' => 'Save',
			'meal.mealName' => 'Meal Name',
			'meal.mealQuantity' => 'Meal Quantity',
			'meal.mealQuantityHint' => 'e.g., 1 bowl, 2 slices',
			'meal.timeOfMeal' => 'Time of Meal',
			'meal.timeOfMealHint' => 'Select the time you had your meal',
			'meal.mealType' => 'Meal Type',
			'meal.nutrition.calories' => 'Calories',
			'meal.nutrition.carbs' => 'Carbs (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Fat (g)',
			'meal.nutrition.fiber' => 'Fiber (g)',
			'meal.deleteConfirmation.title' => 'Delete Meal',
			'meal.deleteConfirmation.message' => 'Are you sure you want to delete this meal entry?',
			'meal.deleteConfirmation.cancel' => 'Cancel',
			'meal.deleteConfirmation.delete' => 'Delete',
			'meal.addedToLog' => 'Meal added to your log!',
			'meal.couldNotAdd' => ({required Object error}) => 'Could not add meal: ${error}',
			'meal.removedFromFavorites' => 'Removed from favorites!',
			'meal.savedAsFavorite' => 'Meal saved as favorite!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Could not update favorite: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Failed to process: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Failed to process image: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Error compressing image: ${error}',
			'meal.failedToSave' => 'Failed to save data. Please try again.',
			'favorites.title' => 'Favorites',
			'favorites.empty' => 'No favorite meals yet.',
			'profile.title' => 'Profile',
			'profile.noProfileData' => 'No profile data found',
			'profile.yourProfile' => 'Your Profile',
			'profile.viewAndManage' => 'View and manage your health information',
			'profile.sections.profile' => 'PROFILE',
			'profile.sections.basicInformation' => 'BASIC INFORMATION',
			'profile.sections.goalsAndActivity' => 'GOALS & ACTIVITY',
			'profile.sections.calculatedValues' => 'CALCULATED VALUES',
			'profile.gender' => 'Gender',
			'profile.height' => 'Height',
			'profile.weight' => 'Weight',
			'profile.age' => 'Age',
			'profile.weightGoal' => 'Weight Goal',
			'profile.activityLevel' => 'Activity Level',
			'profile.healthMetrics' => 'Health Metrics',
			'profile.notSet' => 'Not set',
			'profile.years' => 'years',
			'profile.updatedSuccessfully' => 'Profile updated successfully!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Daily Goal',
			'profile.calculatedValues.calPerDay' => 'cal/day',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Health Score',
			'healthScore.whyThisScore' => 'Why this score?',
			'healthScore.note' => 'This score is an AI estimate based on the identified ingredients and nutritional density. Always consult a professional for dietary advice.',
			'healthScore.unhealthy' => 'Unhealthy',
			'healthScore.healthy' => 'Healthy',
			'healthScore.neutral' => 'Neutral',
			'editProfile.title' => 'Edit Profile',
			'editProfile.sections.personalInformation' => 'PERSONAL INFORMATION',
			'editProfile.sections.physicalMeasurements' => 'PHYSICAL MEASUREMENTS',
			'editProfile.sections.goalsAndActivity' => 'GOALS & ACTIVITY',
			'editProfile.gender' => 'Gender',
			'editProfile.dateOfBirth' => 'Date of Birth',
			'editProfile.height' => 'Height',
			'editProfile.weight' => 'Weight',
			'editProfile.weightGoal' => 'Weight Goal',
			'editProfile.activityLevel' => 'Activity Level',
			'editProfile.metric' => 'Metric',
			'editProfile.imperial' => 'Imperial',
			'editProfile.metricCm' => 'Metric (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Metric (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Male',
			'editProfile.genders.female' => 'Female',
			'editProfile.genders.other' => 'Other',
			'editProfile.weightGoals.loseWeight.name' => 'Lose Weight',
			'editProfile.weightGoals.loseWeight.description' => 'Create a calorie deficit to lose weight',
			'editProfile.weightGoals.maintainWeight.name' => 'Maintain Weight',
			'editProfile.weightGoals.maintainWeight.description' => 'Maintain your current weight',
			'editProfile.weightGoals.gainWeight.name' => 'Gain Weight',
			'editProfile.weightGoals.gainWeight.description' => 'Create a calorie surplus to gain weight',
			'editProfile.activityLevels.sedentary.name' => 'Sedentary',
			'editProfile.activityLevels.sedentary.description' => 'Little to no exercise',
			'editProfile.activityLevels.lightlyActive.name' => 'Lightly Active',
			'editProfile.activityLevels.lightlyActive.description' => 'Light exercise 1-3 days/week',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderately Active',
			'editProfile.activityLevels.moderatelyActive.description' => 'Moderate exercise 3-5 days/week',
			'editProfile.activityLevels.veryActive.name' => 'Very Active',
			'editProfile.activityLevels.veryActive.description' => 'Hard exercise 6-7 days/week',
			'editProfile.activityLevels.extremelyActive.name' => 'Extremely Active',
			'editProfile.activityLevels.extremelyActive.description' => 'Very hard exercise, physical job',
			'settings.title' => 'Settings',
			'settings.sections.profile' => 'PROFILE',
			'settings.sections.localization' => 'LOCALIZATION',
			'settings.sections.notifications' => 'NOTIFICATIONS',
			'settings.sections.supportAndLegal' => 'SUPPORT & LEGAL',
			'settings.sections.dangerZone' => 'DANGER ZONE',
			'settings.sections.developer' => 'DEVELOPER',
			'settings.editProfile.title' => 'Edit Profile',
			'settings.editProfile.subtitle' => 'Update your personal information',
			'settings.language.title' => 'Language',
			'settings.language.subtitle' => 'Choose your preferred language',
			'settings.heightUnit.title' => 'Height Unit',
			'settings.weightUnit.title' => 'Weight Unit',
			'settings.theme.title' => 'Theme',
			'settings.theme.subtitle' => 'Choose your preferred theme',
			'settings.theme.light' => 'Light',
			'settings.theme.dark' => 'Dark',
			'settings.theme.system' => 'System',
			'settings.mealReminders.title' => 'Meal Reminders',
			'settings.mealReminders.subtitle' => 'Stay on track with timely alerts',
			'settings.sendFeedback.title' => 'Send Feedback',
			'settings.sendFeedback.subtitle' => 'Help us improve Calorify',
			'settings.sendFeedback.emailSubject' => 'Calorify App Feedback',
			'settings.sendFeedback.emailBodyPrefix' => 'Please provide your feedback below:',
			'settings.sendFeedback.appVersion' => 'App Version',
			'settings.sendFeedback.device' => 'Device',
			'settings.sendFeedback.osVersion' => 'OS Version',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Clear All Data',
			'settings.clearAllData.subtitle' => 'Irreversibly delete all your information',
			'settings.clearAllData.confirmationTitle' => 'Clear All Data?',
			'settings.clearAllData.confirmationMessage' => 'This action cannot be undone. All your logged meals, favorites, and profile settings will be permanently deleted.',
			'settings.clearAllData.cancel' => 'Cancel',
			'settings.clearAllData.clearEverything' => 'Clear Everything',
			'settings.debugOptions.title' => 'Debug Options',
			'settings.developerModeEnabled' => 'Developer mode enabled!',
			'reminders.title' => 'Stay on track with reminders',
			'reminders.description' => 'Get gentle reminders to log your meals and stay consistent with your nutrition goals',
			'reminders.notificationsEnabled' => 'Notifications Enabled',
			'reminders.notificationsDisabled' => 'Notifications Disabled',
			'reminders.enabledSubtitle' => 'You\'ll receive meal reminders',
			'reminders.disabledSubtitle' => 'Enable notifications to get meal reminders',
			'reminders.mealReminders' => 'Meal Reminders',
			'reminders.breakfast' => 'Breakfast',
			'reminders.lunch' => 'Lunch',
			'reminders.dinner' => 'Dinner',
			'reminders.snack' => 'Snack',
			'reminders.unknown' => 'Unknown',
			'reminders.change' => 'Change',
			'reminders.enableNotifications' => 'Enable Notifications',
			'reminders.skipForNow' => 'Skip for now',
			'reminders.saveChanges' => 'Save Changes',
			'reminders.enabledSuccessfully' => 'Notifications enabled successfully!',
			'reminders.permissionDenied' => 'Notification permission denied',
			'reminders.errorEnabling' => ({required Object error}) => 'Error enabling notifications: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Error completing setup: ${error}',
			'notifications.breakfast.title' => 'Breakfast Time! 🍳',
			'notifications.breakfast.body' => 'Don\'t forget to log your breakfast',
			'notifications.lunch.title' => 'Lunch Time! 🥗',
			'notifications.lunch.body' => 'Time to log your lunch',
			'notifications.dinner.title' => 'Dinner Time! 🍽️',
			'notifications.dinner.body' => 'Don\'t forget to log your dinner',
			'notifications.snack.title' => 'Snack Time! 🍎',
			'notifications.snack.body' => 'Time for a healthy snack',
			'notifications.test.title' => 'Test Notification',
			'login.title' => 'Login',
			'login.signInWithGoogle' => 'Sign in with Google',
			'login.signInFailed' => 'Google Sign-In failed or was cancelled.',
			'disclaimer.pleaseNote' => 'Please Note',
			'disclaimer.snap.description' => 'Calorify provides estimated nutritional info. Accuracy depends on your input & food variations. Use as a guide, not a definitive source. Consult a professional for personalized dietary advice.',
			'disclaimer.snap.portionSize.title' => 'Portion Size',
			'disclaimer.snap.portionSize.description' => 'The accuracy of the estimates heavily relies on your correct assessment of the portion size.',
			'disclaimer.snap.preparationMethods.title' => 'Preparation Methods',
			'disclaimer.snap.preparationMethods.description' => 'Cooking methods can significantly alter the nutritional content of food. Calorify\'s estimates may not always account for these variations.',
			'disclaimer.snap.ingredients.title' => 'Ingredients',
			'disclaimer.snap.ingredients.description' => 'Complex dishes with many hidden ingredients may lead to less accurate estimations.',
			'disclaimer.snap.databaseLimitations.title' => 'Database Limitations',
			'disclaimer.snap.databaseLimitations.description' => 'Calorify\'s food database is extensive but may not include every single food item or variation.',
			'disclaimer.weightEstimate.title' => 'About Weight Estimate',
			'disclaimer.weightEstimate.description' => 'The projected weight change is a theoretical estimate based on the simple calorie-in vs. calorie-out model. It is intended for motivational guidance only, not as a prediction of your actual weight.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Calorie Accuracy',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'This estimate is only as accurate as your tracked calorie intake and expenditure. Inaccurate logging will result in an inaccurate projection.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biological Factors',
			'disclaimer.weightEstimate.biologicalFactors.description' => 'Actual weight loss/gain is influenced by metabolism, hormones, sleep, stress, hydration, and other individual factors that Calorify cannot measure.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Water Weight & Fluctuations',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normal daily weight can fluctuate significantly due to water retention, digestion, and timing. The estimate does not account for these daily changes.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professional Guidance',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.',
			'common.close' => 'Close',
			'common.kContinue' => 'Continue',
			'errors.loadingProfileData' => 'Error loading profile data',
			'errors.somethingWentWrong' => 'Something went wrong.',
			'debug.title' => 'Debug Options',
			'debug.sections.notifications' => 'Notifications',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.appInfo' => 'App Info',
			'debug.showActiveNotifications' => 'Show Active Notifications',
			'debug.scheduleTestNotification' => 'Schedule Test Notification (10s)',
			'debug.triggerBreakfastNotification' => 'Trigger Breakfast Notification',
			'debug.cancelAllNotifications' => 'Cancel All Notifications',
			'debug.activeNotifications' => 'Active Notifications',
			'debug.noTitle' => 'No Title',
			'debug.noBody' => 'No Body',
			'debug.fetchTodaysSteps' => 'Fetch Today\'s Steps',
			'debug.fetchTodaysCalories' => 'Fetch Today\'s Calories',
			'debug.fetchLatestWeight' => 'Fetch Latest Weight',
			'debug.fetchLatestHeight' => 'Fetch Latest Height',
			'debug.writeTestWeight' => 'Write Test Weight (70kg)',
			'debug.writeTestHeight' => 'Write Test Height (175cm)',
			'debug.syncLast7Days' => 'Sync Last 7 Days',
			'debug.sync7DaysTitle' => '7-Day Sync',
			'debug.checkCurrentLocale' => 'Check Current Locale',
			'debug.currentLocale' => 'Current Locale',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Language: ${languageCode}\nCountry: ${countryCode}\nUnit System: ${unitSystem}',
			'debug.latestWeight' => 'Latest Weight',
			'debug.latestHeight' => 'Latest Height',
			'debug.todaysCalories' => 'Today\'s Calories',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Total calories burned: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Successfully fetched ${count} data points for Steps, Calories, and Weight over the last 7 days.',
			'debug.noWeightData' => 'No weight data found in the last 30 days.',
			'debug.noHeightData' => 'No height data found in the last year.',
			'debug.noCalorieData' => 'No calorie data found for today.',
			'debug.weightWritten' => 'Successfully wrote test weight (70kg).',
			'debug.weightWriteFailed' => 'Failed to write test weight.',
			'debug.heightWritten' => 'Successfully wrote test height (175cm).',
			'debug.heightWriteFailed' => 'Failed to write test height.',
			'debug.noNotifications' => 'No active notifications.',
			'debug.testNotificationScheduled' => 'Test notification scheduled for 10 seconds from now.',
			'debug.testNotificationBody' => 'This is a test notification scheduled for 10 seconds from now.',
			'debug.breakfastNotificationTriggered' => 'Breakfast notification triggered.',
			'debug.allNotificationsCancelled' => 'All notifications cancelled.',
			'debug.fetchingData' => 'Fetching data for the last 7 days...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'Could not sync to Health Connect',
			'health.mealSynced' => 'Meal synced with Health Connect',
			_ => null,
		};
	}
}
