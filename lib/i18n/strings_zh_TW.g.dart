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
class TranslationsZhTw with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhTw({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zhTw,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-TW>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsZhTw _root = this; // ignore: unused_field

	@override 
	TranslationsZhTw $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZhTw(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'English';
	@override String get flag => '🇺🇸';
	@override late final _TranslationsOnboardingZhTw onboarding = _TranslationsOnboardingZhTw._(_root);
	@override late final _TranslationsTabsZhTw tabs = _TranslationsTabsZhTw._(_root);
	@override late final _TranslationsHomeZhTw home = _TranslationsHomeZhTw._(_root);
	@override late final _TranslationsHistoryZhTw history = _TranslationsHistoryZhTw._(_root);
	@override late final _TranslationsMealZhTw meal = _TranslationsMealZhTw._(_root);
	@override late final _TranslationsFavoritesZhTw favorites = _TranslationsFavoritesZhTw._(_root);
	@override late final _TranslationsProfileZhTw profile = _TranslationsProfileZhTw._(_root);
	@override late final _TranslationsHealthScoreZhTw healthScore = _TranslationsHealthScoreZhTw._(_root);
	@override late final _TranslationsEditProfileZhTw editProfile = _TranslationsEditProfileZhTw._(_root);
	@override late final _TranslationsSettingsZhTw settings = _TranslationsSettingsZhTw._(_root);
	@override late final _TranslationsRemindersZhTw reminders = _TranslationsRemindersZhTw._(_root);
	@override late final _TranslationsNotificationsZhTw notifications = _TranslationsNotificationsZhTw._(_root);
	@override late final _TranslationsLoginZhTw login = _TranslationsLoginZhTw._(_root);
	@override late final _TranslationsDisclaimerZhTw disclaimer = _TranslationsDisclaimerZhTw._(_root);
	@override late final _TranslationsCommonZhTw common = _TranslationsCommonZhTw._(_root);
	@override late final _TranslationsErrorsZhTw errors = _TranslationsErrorsZhTw._(_root);
	@override late final _TranslationsDebugZhTw debug = _TranslationsDebugZhTw._(_root);
	@override late final _TranslationsHealthZhTw health = _TranslationsHealthZhTw._(_root);
}

// Path: onboarding
class _TranslationsOnboardingZhTw implements TranslationsOnboardingEn {
	_TranslationsOnboardingZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Welcome to Calorify';
	@override String get subtitle => 'Your personal nutrition companion powered by AI';
	@override String get getStarted => 'Get Started';
	@override late final _TranslationsOnboardingFeaturesZhTw features = _TranslationsOnboardingFeaturesZhTw._(_root);
	@override late final _TranslationsOnboardingGenderZhTw gender = _TranslationsOnboardingGenderZhTw._(_root);
	@override late final _TranslationsOnboardingHeightZhTw height = _TranslationsOnboardingHeightZhTw._(_root);
	@override late final _TranslationsOnboardingWeightZhTw weight = _TranslationsOnboardingWeightZhTw._(_root);
	@override late final _TranslationsOnboardingAgeZhTw age = _TranslationsOnboardingAgeZhTw._(_root);
	@override late final _TranslationsOnboardingBmiScaleZhTw bmiScale = _TranslationsOnboardingBmiScaleZhTw._(_root);
	@override late final _TranslationsOnboardingWeightGoalZhTw weightGoal = _TranslationsOnboardingWeightGoalZhTw._(_root);
	@override late final _TranslationsOnboardingActivityLevelZhTw activityLevel = _TranslationsOnboardingActivityLevelZhTw._(_root);
	@override late final _TranslationsOnboardingHealthConnectZhTw healthConnect = _TranslationsOnboardingHealthConnectZhTw._(_root);
	@override late final _TranslationsOnboardingReinforcementZhTw reinforcement = _TranslationsOnboardingReinforcementZhTw._(_root);
}

// Path: tabs
class _TranslationsTabsZhTw implements TranslationsTabsEn {
	_TranslationsTabsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Dashboard';
	@override String get history => 'History';
}

// Path: home
class _TranslationsHomeZhTw implements TranslationsHomeEn {
	_TranslationsHomeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalZhTw dailyGoal = _TranslationsHomeDailyGoalZhTw._(_root);
	@override late final _TranslationsHomeDailySummaryZhTw dailySummary = _TranslationsHomeDailySummaryZhTw._(_root);
	@override late final _TranslationsHomeIntakeProgressZhTw intakeProgress = _TranslationsHomeIntakeProgressZhTw._(_root);
	@override late final _TranslationsHomeIntakeHistoryZhTw intakeHistory = _TranslationsHomeIntakeHistoryZhTw._(_root);
	@override late final _TranslationsHomeMealLogZhTw mealLog = _TranslationsHomeMealLogZhTw._(_root);
	@override late final _TranslationsHomeMealDescriptionZhTw mealDescription = _TranslationsHomeMealDescriptionZhTw._(_root);
	@override late final _TranslationsHomeFavoriteMealsZhTw favoriteMeals = _TranslationsHomeFavoriteMealsZhTw._(_root);
	@override late final _TranslationsHomeMealSnapZhTw mealSnap = _TranslationsHomeMealSnapZhTw._(_root);
	@override late final _TranslationsHomeConnectHealthZhTw connectHealth = _TranslationsHomeConnectHealthZhTw._(_root);
}

// Path: history
class _TranslationsHistoryZhTw implements TranslationsHistoryEn {
	_TranslationsHistoryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'No meals recorded';
	@override String get emptyMessage => 'Snap a picture of your last meal to log here.';
	@override String get today => 'Today';
	@override String get yesterday => 'Yesterday';
}

// Path: meal
class _TranslationsMealZhTw implements TranslationsMealEn {
	_TranslationsMealZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

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
	@override late final _TranslationsMealNutritionZhTw nutrition = _TranslationsMealNutritionZhTw._(_root);
	@override late final _TranslationsMealDeleteConfirmationZhTw deleteConfirmation = _TranslationsMealDeleteConfirmationZhTw._(_root);
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
class _TranslationsFavoritesZhTw implements TranslationsFavoritesEn {
	_TranslationsFavoritesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorites';
	@override String get empty => 'No favorite meals yet.';
}

// Path: profile
class _TranslationsProfileZhTw implements TranslationsProfileEn {
	_TranslationsProfileZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profile';
	@override String get noProfileData => 'No profile data found';
	@override String get yourProfile => 'Your Profile';
	@override String get viewAndManage => 'View and manage your health information';
	@override late final _TranslationsProfileSectionsZhTw sections = _TranslationsProfileSectionsZhTw._(_root);
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
	@override late final _TranslationsProfileCalculatedValuesZhTw calculatedValues = _TranslationsProfileCalculatedValuesZhTw._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreZhTw implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Score';
	@override String get whyThisScore => 'Why this score?';
	@override String get note => 'This score is an AI estimate based on the identified ingredients and nutritional density. Always consult a professional for dietary advice.';
	@override String get unhealthy => 'Unhealthy';
	@override String get healthy => 'Healthy';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileZhTw implements TranslationsEditProfileEn {
	_TranslationsEditProfileZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edit Profile';
	@override late final _TranslationsEditProfileSectionsZhTw sections = _TranslationsEditProfileSectionsZhTw._(_root);
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
	@override late final _TranslationsEditProfileGendersZhTw genders = _TranslationsEditProfileGendersZhTw._(_root);
	@override late final _TranslationsEditProfileWeightGoalsZhTw weightGoals = _TranslationsEditProfileWeightGoalsZhTw._(_root);
	@override late final _TranslationsEditProfileActivityLevelsZhTw activityLevels = _TranslationsEditProfileActivityLevelsZhTw._(_root);
}

// Path: settings
class _TranslationsSettingsZhTw implements TranslationsSettingsEn {
	_TranslationsSettingsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Settings';
	@override late final _TranslationsSettingsSectionsZhTw sections = _TranslationsSettingsSectionsZhTw._(_root);
	@override late final _TranslationsSettingsEditProfileZhTw editProfile = _TranslationsSettingsEditProfileZhTw._(_root);
	@override late final _TranslationsSettingsLanguageZhTw language = _TranslationsSettingsLanguageZhTw._(_root);
	@override late final _TranslationsSettingsHeightUnitZhTw heightUnit = _TranslationsSettingsHeightUnitZhTw._(_root);
	@override late final _TranslationsSettingsWeightUnitZhTw weightUnit = _TranslationsSettingsWeightUnitZhTw._(_root);
	@override late final _TranslationsSettingsThemeZhTw theme = _TranslationsSettingsThemeZhTw._(_root);
	@override late final _TranslationsSettingsMealRemindersZhTw mealReminders = _TranslationsSettingsMealRemindersZhTw._(_root);
	@override late final _TranslationsSettingsSendFeedbackZhTw sendFeedback = _TranslationsSettingsSendFeedbackZhTw._(_root);
	@override late final _TranslationsSettingsClearAllDataZhTw clearAllData = _TranslationsSettingsClearAllDataZhTw._(_root);
	@override late final _TranslationsSettingsDebugOptionsZhTw debugOptions = _TranslationsSettingsDebugOptionsZhTw._(_root);
	@override String get developerModeEnabled => 'Developer mode enabled!';
}

// Path: reminders
class _TranslationsRemindersZhTw implements TranslationsRemindersEn {
	_TranslationsRemindersZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

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
class _TranslationsNotificationsZhTw implements TranslationsNotificationsEn {
	_TranslationsNotificationsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastZhTw breakfast = _TranslationsNotificationsBreakfastZhTw._(_root);
	@override late final _TranslationsNotificationsLunchZhTw lunch = _TranslationsNotificationsLunchZhTw._(_root);
	@override late final _TranslationsNotificationsDinnerZhTw dinner = _TranslationsNotificationsDinnerZhTw._(_root);
	@override late final _TranslationsNotificationsSnackZhTw snack = _TranslationsNotificationsSnackZhTw._(_root);
	@override late final _TranslationsNotificationsTestZhTw test = _TranslationsNotificationsTestZhTw._(_root);
}

// Path: login
class _TranslationsLoginZhTw implements TranslationsLoginEn {
	_TranslationsLoginZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Login';
	@override String get signInWithGoogle => 'Sign in with Google';
	@override String get signInFailed => 'Google Sign-In failed or was cancelled.';
}

// Path: disclaimer
class _TranslationsDisclaimerZhTw implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Please Note';
	@override late final _TranslationsDisclaimerSnapZhTw snap = _TranslationsDisclaimerSnapZhTw._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateZhTw weightEstimate = _TranslationsDisclaimerWeightEstimateZhTw._(_root);
}

// Path: common
class _TranslationsCommonZhTw implements TranslationsCommonEn {
	_TranslationsCommonZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get close => 'Close';
	@override String get kContinue => 'Continue';
}

// Path: errors
class _TranslationsErrorsZhTw implements TranslationsErrorsEn {
	_TranslationsErrorsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Error loading profile data';
	@override String get somethingWentWrong => 'Something went wrong.';
}

// Path: debug
class _TranslationsDebugZhTw implements TranslationsDebugEn {
	_TranslationsDebugZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug Options';
	@override late final _TranslationsDebugSectionsZhTw sections = _TranslationsDebugSectionsZhTw._(_root);
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
class _TranslationsHealthZhTw implements TranslationsHealthEn {
	_TranslationsHealthZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Could not sync to Health Connect';
	@override String get mealSynced => 'Meal synced with Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesZhTw implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionZhTw foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionZhTw._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisZhTw aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisZhTw._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationZhTw healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationZhTw._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderZhTw implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'What is your gender?';
	@override String get description => 'Gender helps us accurately calculate your basal metabolic rate (BMR).';
	@override String get next => 'Next';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightZhTw implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'How tall are you?';
	@override String get description => 'Your height helps us calculate your BMI and energy needs accurately.';
	@override String get metric => 'Metric';
	@override String get imperial => 'Imperial';
	@override String get next => 'Next';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightZhTw implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

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
class _TranslationsOnboardingAgeZhTw implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'When is your birthday?';
	@override String get description => 'Your age helps us calculate your calorie needs accurately.';
	@override String get next => 'Next';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleZhTw implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Underweight';
	@override String get healthy => 'Healthy';
	@override String get overweight => 'Overweight';
	@override String get obese => 'Obese';
	@override late final _TranslationsOnboardingBmiScaleCategoriesZhTw categories = _TranslationsOnboardingBmiScaleCategoriesZhTw._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesZhTw messages = _TranslationsOnboardingBmiScaleMessagesZhTw._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalZhTw implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'What\'s your goal?';
	@override String get description => 'Choose the goal that best describes what you want to achieve';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelZhTw implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'How active are you?';
	@override String get description => 'This helps us calculate your daily calorie needs more accurately';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectZhTw implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Connect with Health Connect';
	@override String get description => 'Sync your health data for better insights and automatic calorie tracking';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingZhTw automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingZhTw._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsZhTw progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsZhTw._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationZhTw seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationZhTw._(_root);
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
class _TranslationsOnboardingReinforcementZhTw implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessZhTw trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessZhTw._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileZhTw healthProfile = _TranslationsOnboardingReinforcementHealthProfileZhTw._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleZhTw goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleZhTw._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalZhTw implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

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
class _TranslationsHomeDailySummaryZhTw implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Daily Summary';
	@override String get calories => 'Calories';
	@override String get carbs => 'Carbs';
	@override String get protein => 'Protein';
	@override String get fat => 'Fat';
	@override String get fiber => 'Fiber';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressZhTw implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Today\'s Macro Split';
	@override String get target => 'Target';
	@override String get current => 'Current';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryZhTw implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '7-Day Macro History';
	@override String get noHistoryYet => 'No history yet';
	@override String get startLogging => 'Start logging meals to see your\n7-day macro trends here';
}

// Path: home.mealLog
class _TranslationsHomeMealLogZhTw implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Logged Meals';
	@override String get emptyMessage => 'Snap a picture of your last meal to log here.';
	@override String get noMealsToday => 'No meals recorded for today';
	@override String get seeAllMeals => 'See all meals';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionZhTw implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quick Add with AI';
	@override String get description => 'Describe your meal, and let AI handle the details.';
	@override String get hint => 'e.g. For breakfast I had a large bowl of oatmeal with a sliced banana and a scoop of whey ...';
	@override String get analyzeMeal => 'Analyze meal';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsZhTw implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorite Meals';
	@override String get description => 'Quickly add one of your favorite meals.';
	@override String get noFavorites => 'No favorite meals yet.';
	@override String get addFavoriteHint => 'Click the star on a meal to mark it as a favorite.';
	@override String get seeAll => 'See all';
	@override String get add => 'Add';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapZhTw implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snap & Track Your Meal';
	@override String get description => 'Use your camera to take a picture of your food for AI analysis.';
	@override String get openCamera => 'Open Camera';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthZhTw implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sync with Health Connect';
	@override String get description => 'Sync your nutrition data with Health Connect';
	@override String get install => 'Install';
	@override String get connect => 'Connect';
}

// Path: meal.nutrition
class _TranslationsMealNutritionZhTw implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calories';
	@override String get carbs => 'Carbs (g)';
	@override String get protein => 'Protein (g)';
	@override String get fat => 'Fat (g)';
	@override String get fiber => 'Fiber (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationZhTw implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Delete Meal';
	@override String get message => 'Are you sure you want to delete this meal entry?';
	@override String get cancel => 'Cancel';
	@override String get delete => 'Delete';
}

// Path: profile.sections
class _TranslationsProfileSectionsZhTw implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFILE';
	@override String get basicInformation => 'BASIC INFORMATION';
	@override String get goalsAndActivity => 'GOALS & ACTIVITY';
	@override String get calculatedValues => 'CALCULATED VALUES';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesZhTw implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Daily Goal';
	@override String get calPerDay => 'cal/day';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsZhTw implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSONAL INFORMATION';
	@override String get physicalMeasurements => 'PHYSICAL MEASUREMENTS';
	@override String get goalsAndActivity => 'GOALS & ACTIVITY';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersZhTw implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get male => 'Male';
	@override String get female => 'Female';
	@override String get other => 'Other';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsZhTw implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightZhTw loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightZhTw._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightZhTw maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightZhTw._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightZhTw gainWeight = _TranslationsEditProfileWeightGoalsGainWeightZhTw._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsZhTw implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryZhTw sedentary = _TranslationsEditProfileActivityLevelsSedentaryZhTw._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveZhTw lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveZhTw._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveZhTw moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveZhTw._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveZhTw veryActive = _TranslationsEditProfileActivityLevelsVeryActiveZhTw._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveZhTw extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveZhTw._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsZhTw implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFILE';
	@override String get localization => 'LOCALIZATION';
	@override String get notifications => 'NOTIFICATIONS';
	@override String get supportAndLegal => 'SUPPORT & LEGAL';
	@override String get dangerZone => 'DANGER ZONE';
	@override String get developer => 'DEVELOPER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileZhTw implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edit Profile';
	@override String get subtitle => 'Update your personal information';
}

// Path: settings.language
class _TranslationsSettingsLanguageZhTw implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Language';
	@override String get subtitle => 'Choose your preferred language';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitZhTw implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Height Unit';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitZhTw implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Weight Unit';
}

// Path: settings.theme
class _TranslationsSettingsThemeZhTw implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Theme';
	@override String get subtitle => 'Choose your preferred theme';
	@override String get light => 'Light';
	@override String get dark => 'Dark';
	@override String get system => 'System';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersZhTw implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Meal Reminders';
	@override String get subtitle => 'Stay on track with timely alerts';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackZhTw implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

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
class _TranslationsSettingsClearAllDataZhTw implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Clear All Data';
	@override String get subtitle => 'Irreversibly delete all your information';
	@override String get confirmationTitle => 'Clear All Data?';
	@override String get confirmationMessage => 'This action cannot be undone. All your logged meals, favorites, and profile settings will be permanently deleted.';
	@override String get cancel => 'Cancel';
	@override String get clearEverything => 'Clear Everything';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsZhTw implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug Options';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastZhTw implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Breakfast Time! 🍳';
	@override String get body => 'Don\'t forget to log your breakfast';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchZhTw implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lunch Time! 🥗';
	@override String get body => 'Time to log your lunch';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerZhTw implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dinner Time! 🍽️';
	@override String get body => 'Don\'t forget to log your dinner';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackZhTw implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snack Time! 🍎';
	@override String get body => 'Time for a healthy snack';
}

// Path: notifications.test
class _TranslationsNotificationsTestZhTw implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Test Notification';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapZhTw implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get description => 'Calorify provides estimated nutritional info. Accuracy depends on your input & food variations. Use as a guide, not a definitive source. Consult a professional for personalized dietary advice.';
	@override late final _TranslationsDisclaimerSnapPortionSizeZhTw portionSize = _TranslationsDisclaimerSnapPortionSizeZhTw._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsZhTw preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsZhTw._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsZhTw ingredients = _TranslationsDisclaimerSnapIngredientsZhTw._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsZhTw databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsZhTw._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateZhTw implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'About Weight Estimate';
	@override String get description => 'The projected weight change is a theoretical estimate based on the simple calorie-in vs. calorie-out model. It is intended for motivational guidance only, not as a prediction of your actual weight.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhTw calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhTw._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhTw biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhTw._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightZhTw waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightZhTw._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhTw professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhTw._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsZhTw implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Notifications';
	@override String get healthConnect => 'Health Connect';
	@override String get appInfo => 'App Info';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionZhTw implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Smart Food Recognition';
	@override String get description => 'Take a photo and let AI identify your meal';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisZhTw implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI Analysis';
	@override String get description => 'Get instant nutrition facts from your descriptions';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationZhTw implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Integration';
	@override String get description => 'Connect with Health Connect for better insights';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesZhTw implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Underweight';
	@override String get healthyWeight => 'Healthy weight';
	@override String get overweight => 'Overweight';
	@override String get obese => 'Obese';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesZhTw implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'We can help you build a healthy plan to reach a balanced weight with nutrient-dense meals.';
	@override String get healthy => 'Great job! You\'re in a healthy range. We\'ll help you maintain your vitality and energy levels.';
	@override String get overweight => 'Calorify will simplify your journey with AI-powered tracking to help you reach your target comfortably.';
	@override String get obese => 'We\'re here to support you with personalized guidance and sustainable strategies for your health goals.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingZhTw implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatic Calorie Tracking';
	@override String get description => 'Track calories burned from your fitness apps';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsZhTw implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Progress Insights';
	@override String get description => 'Get detailed insights into your health trends';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationZhTw implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seamless Integration';
	@override String get description => 'Sync data from your favorite health apps';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessZhTw implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'You\'re Not Alone';
	@override String get genericMessage => 'Research shows that consistent tracking is the #1 predictor of long-term success.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'For a ${age} year old ${gender} looking to ${goal}, consistent tracking is the #1 predictor of success.';
	@override String get closingMessage => 'Calorify makes it 10x easier than doing it manually.';
	@override String get getStartedTitle => '準備好開始了嗎？';
	@override String get tipPhoto => '拍攝您的餐點以進行即時分析';
	@override String get tipConsistency => '保持一致的紀錄以獲得有意義的進展';
	@override String get tipProgress => '每日追蹤您的進度以保持動力';
	@override String get button => 'Let\'s Go';
	@override String get defaultGender => 'individual';
	@override String get defaultGoal => 'healthier you';
	@override String get instantPhotoAnalysis => 'Instant photo analysis';
	@override String get automaticLogging => 'Automatic nutritional logging';
	@override String get progressVisualizations => 'Progress visualizations that keep you motivated';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileZhTw implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

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
class _TranslationsOnboardingReinforcementGoalLifestyleZhTw implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

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
class _TranslationsEditProfileWeightGoalsLoseWeightZhTw implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lose Weight';
	@override String get description => 'Create a calorie deficit to lose weight';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightZhTw implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => 'Maintain Weight';
	@override String get description => 'Maintain your current weight';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightZhTw implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gain Weight';
	@override String get description => 'Create a calorie surplus to gain weight';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryZhTw implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentary';
	@override String get description => 'Little to no exercise';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveZhTw implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lightly Active';
	@override String get description => 'Light exercise 1-3 days/week';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveZhTw implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderately Active';
	@override String get description => 'Moderate exercise 3-5 days/week';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveZhTw implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => 'Very Active';
	@override String get description => 'Hard exercise 6-7 days/week';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveZhTw implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extremely Active';
	@override String get description => 'Very hard exercise, physical job';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeZhTw implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Portion Size';
	@override String get description => 'The accuracy of the estimates heavily relies on your correct assessment of the portion size.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsZhTw implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preparation Methods';
	@override String get description => 'Cooking methods can significantly alter the nutritional content of food. Calorify\'s estimates may not always account for these variations.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsZhTw implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredients';
	@override String get description => 'Complex dishes with many hidden ingredients may lead to less accurate estimations.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsZhTw implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Database Limitations';
	@override String get description => 'Calorify\'s food database is extensive but may not include every single food item or variation.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhTw implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calorie Accuracy';
	@override String get description => 'This estimate is only as accurate as your tracked calorie intake and expenditure. Inaccurate logging will result in an inaccurate projection.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhTw implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biological Factors';
	@override String get description => 'Actual weight loss/gain is influenced by metabolism, hormones, sleep, stress, hydration, and other individual factors that Calorify cannot measure.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightZhTw implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Water Weight & Fluctuations';
	@override String get description => 'Normal daily weight can fluctuate significantly due to water retention, digestion, and timing. The estimate does not account for these daily changes.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhTw implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professional Guidance';
	@override String get description => 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.';
}

/// The flat map containing all translations for locale <zh-TW>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZhTw {
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
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '準備好開始了嗎？',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => '拍攝您的餐點以進行即時分析',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => '保持一致的紀錄以獲得有意義的進展',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => '每日追蹤您的進度以保持動力',
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
