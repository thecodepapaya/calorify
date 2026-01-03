///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'English'
	String get language => 'English';

	/// en: '🇺🇸'
	String get flag => '🇺🇸';

	late final TranslationsOnboardingEn onboarding = TranslationsOnboardingEn._(_root);
	late final TranslationsTabsEn tabs = TranslationsTabsEn._(_root);
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
	late final TranslationsHistoryEn history = TranslationsHistoryEn._(_root);
	late final TranslationsMealEn meal = TranslationsMealEn._(_root);
	late final TranslationsFavoritesEn favorites = TranslationsFavoritesEn._(_root);
	late final TranslationsProfileEn profile = TranslationsProfileEn._(_root);
	late final TranslationsEditProfileEn editProfile = TranslationsEditProfileEn._(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn._(_root);
	late final TranslationsRemindersEn reminders = TranslationsRemindersEn._(_root);
	late final TranslationsNotificationsEn notifications = TranslationsNotificationsEn._(_root);
	late final TranslationsLoginEn login = TranslationsLoginEn._(_root);
	late final TranslationsDisclaimerEn disclaimer = TranslationsDisclaimerEn._(_root);
	late final TranslationsCommonEn common = TranslationsCommonEn._(_root);
	late final TranslationsErrorsEn errors = TranslationsErrorsEn._(_root);
	late final TranslationsDebugEn debug = TranslationsDebugEn._(_root);
}

// Path: onboarding
class TranslationsOnboardingEn {
	TranslationsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Welcome to Calorify'
	String get welcome => 'Welcome to Calorify';

	/// en: 'Your personal nutrition companion powered by AI'
	String get subtitle => 'Your personal nutrition companion powered by AI';

	/// en: 'Get Started'
	String get getStarted => 'Get Started';

	late final TranslationsOnboardingFeaturesEn features = TranslationsOnboardingFeaturesEn._(_root);
}

// Path: tabs
class TranslationsTabsEn {
	TranslationsTabsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Dashboard'
	String get dashboard => 'Dashboard';

	/// en: 'History'
	String get history => 'History';
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeDailyGoalEn dailyGoal = TranslationsHomeDailyGoalEn._(_root);
	late final TranslationsHomeDailySummaryEn dailySummary = TranslationsHomeDailySummaryEn._(_root);
	late final TranslationsHomeIntakeProgressEn intakeProgress = TranslationsHomeIntakeProgressEn._(_root);
	late final TranslationsHomeMealLogEn mealLog = TranslationsHomeMealLogEn._(_root);
	late final TranslationsHomeMealDescriptionEn mealDescription = TranslationsHomeMealDescriptionEn._(_root);
	late final TranslationsHomeFavoriteMealsEn favoriteMeals = TranslationsHomeFavoriteMealsEn._(_root);
	late final TranslationsHomeMealSnapEn mealSnap = TranslationsHomeMealSnapEn._(_root);
	late final TranslationsHomeConnectHealthEn connectHealth = TranslationsHomeConnectHealthEn._(_root);
}

// Path: history
class TranslationsHistoryEn {
	TranslationsHistoryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'History'
	String get title => 'History';

	/// en: 'No meals recorded'
	String get noMeals => 'No meals recorded';

	/// en: 'Snap a picture of your last meal to log here.'
	String get emptyMessage => 'Snap a picture of your last meal to log here.';

	/// en: 'Today'
	String get today => 'Today';

	/// en: 'Yesterday'
	String get yesterday => 'Yesterday';
}

// Path: meal
class TranslationsMealEn {
	TranslationsMealEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Oh no!'
	String get ohNo => 'Oh no!';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Edit Meal'
	String get editMeal => 'Edit Meal';

	/// en: 'Save Meal'
	String get saveMeal => 'Save Meal';

	late final TranslationsMealDeleteConfirmationEn deleteConfirmation = TranslationsMealDeleteConfirmationEn._(_root);

	/// en: 'Meal added to your log!'
	String get addedToLog => 'Meal added to your log!';

	/// en: 'Could not add meal: {error}'
	String get couldNotAdd => 'Could not add meal: {error}';

	/// en: 'Removed from favorites!'
	String get removedFromFavorites => 'Removed from favorites!';

	/// en: 'Meal saved as favorite!'
	String get savedAsFavorite => 'Meal saved as favorite!';

	/// en: 'Could not update favorite: {error}'
	String get couldNotUpdateFavorite => 'Could not update favorite: {error}';

	/// en: 'Failed to process: {error}'
	String get failedToProcess => 'Failed to process: {error}';

	/// en: 'Failed to process image: {error}'
	String get failedToProcessImage => 'Failed to process image: {error}';

	/// en: 'Error compressing image: {error}'
	String get errorCompressingImage => 'Error compressing image: {error}';
}

// Path: favorites
class TranslationsFavoritesEn {
	TranslationsFavoritesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Favorites'
	String get title => 'Favorites';

	/// en: 'No favorite meals yet.'
	String get empty => 'No favorite meals yet.';
}

// Path: profile
class TranslationsProfileEn {
	TranslationsProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Profile'
	String get title => 'Profile';

	/// en: 'Edit Profile'
	String get editProfile => 'Edit Profile';

	/// en: 'No profile data found'
	String get noProfileData => 'No profile data found';

	/// en: 'Your Profile'
	String get yourProfile => 'Your Profile';

	/// en: 'View and manage your health information'
	String get viewAndManage => 'View and manage your health information';

	late final TranslationsProfileSectionsEn sections = TranslationsProfileSectionsEn._(_root);

	/// en: 'Gender'
	String get gender => 'Gender';

	/// en: 'Height'
	String get height => 'Height';

	/// en: 'Weight'
	String get weight => 'Weight';

	/// en: 'Age'
	String get age => 'Age';

	/// en: 'Weight Goal'
	String get weightGoal => 'Weight Goal';

	/// en: 'Activity Level'
	String get activityLevel => 'Activity Level';

	/// en: 'Health Metrics'
	String get healthMetrics => 'Health Metrics';

	/// en: 'Not set'
	String get notSet => 'Not set';

	/// en: 'years'
	String get years => 'years';

	/// en: 'Profile updated successfully!'
	String get updatedSuccessfully => 'Profile updated successfully!';
}

// Path: editProfile
class TranslationsEditProfileEn {
	TranslationsEditProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Profile'
	String get title => 'Edit Profile';

	late final TranslationsEditProfileSectionsEn sections = TranslationsEditProfileSectionsEn._(_root);

	/// en: 'Gender'
	String get gender => 'Gender';

	/// en: 'Date of Birth'
	String get dateOfBirth => 'Date of Birth';

	/// en: 'Height'
	String get height => 'Height';

	/// en: 'Weight'
	String get weight => 'Weight';

	/// en: 'Weight Goal'
	String get weightGoal => 'Weight Goal';

	/// en: 'Activity Level'
	String get activityLevel => 'Activity Level';

	/// en: 'Metric'
	String get metric => 'Metric';

	/// en: 'Imperial'
	String get imperial => 'Imperial';

	/// en: 'Metric (cm)'
	String get metricCm => 'Metric (cm)';

	/// en: 'Imperial (ft/in)'
	String get imperialFtIn => 'Imperial (ft/in)';

	/// en: 'Metric (kg)'
	String get metricKg => 'Metric (kg)';

	/// en: 'Imperial (lbs)'
	String get imperialLbs => 'Imperial (lbs)';
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Settings'
	String get title => 'Settings';

	late final TranslationsSettingsSectionsEn sections = TranslationsSettingsSectionsEn._(_root);
	late final TranslationsSettingsEditProfileEn editProfile = TranslationsSettingsEditProfileEn._(_root);
	late final TranslationsSettingsLanguageEn language = TranslationsSettingsLanguageEn._(_root);
	late final TranslationsSettingsHeightUnitEn heightUnit = TranslationsSettingsHeightUnitEn._(_root);
	late final TranslationsSettingsWeightUnitEn weightUnit = TranslationsSettingsWeightUnitEn._(_root);
	late final TranslationsSettingsMealRemindersEn mealReminders = TranslationsSettingsMealRemindersEn._(_root);
	late final TranslationsSettingsSendFeedbackEn sendFeedback = TranslationsSettingsSendFeedbackEn._(_root);
	late final TranslationsSettingsClearAllDataEn clearAllData = TranslationsSettingsClearAllDataEn._(_root);
	late final TranslationsSettingsDebugOptionsEn debugOptions = TranslationsSettingsDebugOptionsEn._(_root);

	/// en: 'Developer mode enabled!'
	String get developerModeEnabled => 'Developer mode enabled!';
}

// Path: reminders
class TranslationsRemindersEn {
	TranslationsRemindersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Stay on track with reminders'
	String get title => 'Stay on track with reminders';

	/// en: 'Get gentle reminders to log your meals and stay consistent with your nutrition goals'
	String get description => 'Get gentle reminders to log your meals and stay consistent with your nutrition goals';

	/// en: 'Notifications Enabled'
	String get notificationsEnabled => 'Notifications Enabled';

	/// en: 'Notifications Disabled'
	String get notificationsDisabled => 'Notifications Disabled';

	/// en: 'You'll receive meal reminders'
	String get enabledSubtitle => 'You\'ll receive meal reminders';

	/// en: 'Enable notifications to get meal reminders'
	String get disabledSubtitle => 'Enable notifications to get meal reminders';

	/// en: 'Meal Reminders'
	String get mealReminders => 'Meal Reminders';

	/// en: 'Breakfast'
	String get breakfast => 'Breakfast';

	/// en: 'Lunch'
	String get lunch => 'Lunch';

	/// en: 'Dinner'
	String get dinner => 'Dinner';

	/// en: 'Snack'
	String get snack => 'Snack';

	/// en: 'Change'
	String get change => 'Change';

	/// en: 'Enable Notifications'
	String get enableNotifications => 'Enable Notifications';

	/// en: 'Skip for now'
	String get skipForNow => 'Skip for now';

	/// en: 'Save Changes'
	String get saveChanges => 'Save Changes';

	/// en: 'Continue'
	String get continue_ => 'Continue';

	/// en: 'Notifications enabled successfully!'
	String get enabledSuccessfully => 'Notifications enabled successfully!';

	/// en: 'Notification permission denied'
	String get permissionDenied => 'Notification permission denied';

	/// en: 'Error enabling notifications: {error}'
	String get errorEnabling => 'Error enabling notifications: {error}';

	/// en: 'Error completing setup: {error}'
	String get errorCompletingSetup => 'Error completing setup: {error}';
}

// Path: notifications
class TranslationsNotificationsEn {
	TranslationsNotificationsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsNotificationsBreakfastEn breakfast = TranslationsNotificationsBreakfastEn._(_root);
	late final TranslationsNotificationsLunchEn lunch = TranslationsNotificationsLunchEn._(_root);
	late final TranslationsNotificationsDinnerEn dinner = TranslationsNotificationsDinnerEn._(_root);
	late final TranslationsNotificationsSnackEn snack = TranslationsNotificationsSnackEn._(_root);
	late final TranslationsNotificationsTestEn test = TranslationsNotificationsTestEn._(_root);
}

// Path: login
class TranslationsLoginEn {
	TranslationsLoginEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Login'
	String get title => 'Login';

	/// en: 'Sign in with Google'
	String get signInWithGoogle => 'Sign in with Google';

	/// en: 'Google Sign-In failed or was cancelled.'
	String get signInFailed => 'Google Sign-In failed or was cancelled.';
}

// Path: disclaimer
class TranslationsDisclaimerEn {
	TranslationsDisclaimerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please Note'
	String get pleaseNote => 'Please Note';

	late final TranslationsDisclaimerSnapEn snap = TranslationsDisclaimerSnapEn._(_root);
	late final TranslationsDisclaimerWeightEstimateEn weightEstimate = TranslationsDisclaimerWeightEstimateEn._(_root);
}

// Path: common
class TranslationsCommonEn {
	TranslationsCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'Close'
	String get close => 'Close';

	/// en: 'Continue'
	String get kContinue => 'Continue';

	/// en: 'Skip'
	String get skip => 'Skip';

	/// en: 'Error'
	String get error => 'Error';

	/// en: 'Loading...'
	String get loading => 'Loading...';

	/// en: 'Not set'
	String get notSet => 'Not set';

	/// en: 'Today'
	String get today => 'Today';

	/// en: 'Yesterday'
	String get yesterday => 'Yesterday';
}

// Path: errors
class TranslationsErrorsEn {
	TranslationsErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Error loading profile data'
	String get loadingProfileData => 'Error loading profile data';

	/// en: 'An error occurred. Please try again.'
	String get generic => 'An error occurred. Please try again.';
}

// Path: debug
class TranslationsDebugEn {
	TranslationsDebugEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Debug Options'
	String get title => 'Debug Options';

	/// en: 'Show Active Notifications'
	String get showActiveNotifications => 'Show Active Notifications';

	/// en: 'Schedule Test Notification (10s)'
	String get scheduleTestNotification => 'Schedule Test Notification (10s)';

	/// en: 'Trigger Breakfast Notification'
	String get triggerBreakfastNotification => 'Trigger Breakfast Notification';

	/// en: 'Cancel All Notifications'
	String get cancelAllNotifications => 'Cancel All Notifications';

	/// en: 'Active Notifications'
	String get activeNotifications => 'Active Notifications';

	/// en: 'ID: {id}'
	String get id => 'ID: {id}';

	/// en: 'Fetch Latest Weight'
	String get fetchLatestWeight => 'Fetch Latest Weight';

	/// en: 'Fetch Latest Height'
	String get fetchLatestHeight => 'Fetch Latest Height';

	/// en: 'Write Test Weight (70kg)'
	String get writeTestWeight => 'Write Test Weight (70kg)';

	/// en: 'Write Test Height (175cm)'
	String get writeTestHeight => 'Write Test Height (175cm)';

	/// en: 'Sync Last 7 Days'
	String get syncLast7Days => 'Sync Last 7 Days';

	/// en: 'Check Current Locale'
	String get checkCurrentLocale => 'Check Current Locale';
}

// Path: onboarding.features
class TranslationsOnboardingFeaturesEn {
	TranslationsOnboardingFeaturesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsOnboardingFeaturesFoodRecognitionEn foodRecognition = TranslationsOnboardingFeaturesFoodRecognitionEn._(_root);
	late final TranslationsOnboardingFeaturesAiAnalysisEn aiAnalysis = TranslationsOnboardingFeaturesAiAnalysisEn._(_root);
	late final TranslationsOnboardingFeaturesHealthIntegrationEn healthIntegration = TranslationsOnboardingFeaturesHealthIntegrationEn._(_root);
}

// Path: home.dailyGoal
class TranslationsHomeDailyGoalEn {
	TranslationsHomeDailyGoalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Set Your Daily Goal'
	String get title => 'Set Your Daily Goal';

	/// en: 'Your Daily Goal'
	String get titleSet => 'Your Daily Goal';

	/// en: 'Ready to embark on your wellness journey? Set your daily calorie target below to kickstart your progress.'
	String get description => 'Ready to embark on your wellness journey? Set your daily calorie target below to kickstart your progress.';

	/// en: 'Your compass is set! This is your daily calorie target to guide you.'
	String get descriptionSet => 'Your compass is set! This is your daily calorie target to guide you.';

	/// en: 'Your Goal'
	String get yourGoal => 'Your Goal';

	/// en: 'Daily calories (kcal)'
	String get dailyCalories => 'Daily calories (kcal)';

	/// en: 'Set Goal'
	String get setGoal => 'Set Goal';

	/// en: 'Intake'
	String get intake => 'Intake';

	/// en: 'Burned'
	String get burned => 'Burned';

	/// en: 'Weight Impact'
	String get weightImpact => 'Weight Impact';

	/// en: 'Est. loss of'
	String get estLoss => 'Est. loss of';

	/// en: 'Est. gain of'
	String get estGain => 'Est. gain of';

	/// en: 'kcal'
	String get kcal => 'kcal';
}

// Path: home.dailySummary
class TranslationsHomeDailySummaryEn {
	TranslationsHomeDailySummaryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Daily Summary'
	String get title => 'Daily Summary';

	/// en: 'Calories'
	String get calories => 'Calories';

	/// en: 'Carbs'
	String get carbs => 'Carbs';

	/// en: 'Protein'
	String get protein => 'Protein';

	/// en: 'Fat'
	String get fat => 'Fat';

	/// en: 'Fiber'
	String get fiber => 'Fiber';
}

// Path: home.intakeProgress
class TranslationsHomeIntakeProgressEn {
	TranslationsHomeIntakeProgressEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Today's Macro Split'
	String get title => 'Today\'s Macro Split';

	/// en: 'Target'
	String get target => 'Target';

	/// en: 'Current'
	String get current => 'Current';
}

// Path: home.mealLog
class TranslationsHomeMealLogEn {
	TranslationsHomeMealLogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Logged Meals'
	String get title => 'Logged Meals';

	/// en: 'Snap a picture of your last meal to log here.'
	String get emptyMessage => 'Snap a picture of your last meal to log here.';

	/// en: 'No meals recorded for today'
	String get noMealsToday => 'No meals recorded for today';

	/// en: 'See all meals'
	String get seeAllMeals => 'See all meals';
}

// Path: home.mealDescription
class TranslationsHomeMealDescriptionEn {
	TranslationsHomeMealDescriptionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Quick Add with AI'
	String get title => 'Quick Add with AI';

	/// en: 'Describe your meal, and let AI handle the details.'
	String get description => 'Describe your meal, and let AI handle the details.';

	/// en: 'eg. For breakfast I had a large bowl of oatmeal with a sliced banana and a scoop of whey ...'
	String get hint => 'eg. For breakfast I had a large bowl of oatmeal with a sliced banana and a scoop of whey ...';

	/// en: 'Analyze meal'
	String get analyzeMeal => 'Analyze meal';
}

// Path: home.favoriteMeals
class TranslationsHomeFavoriteMealsEn {
	TranslationsHomeFavoriteMealsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Favorite Meals'
	String get title => 'Favorite Meals';

	/// en: 'Quickly add one of your favorite meals.'
	String get description => 'Quickly add one of your favorite meals.';

	/// en: 'No favorite meals yet.'
	String get noFavorites => 'No favorite meals yet.';

	/// en: 'Click the star on a meal to mark it as a favorite.'
	String get addFavoriteHint => 'Click the star on a meal to mark it as a favorite.';

	/// en: 'See all'
	String get seeAll => 'See all';

	/// en: 'Add'
	String get add => 'Add';
}

// Path: home.mealSnap
class TranslationsHomeMealSnapEn {
	TranslationsHomeMealSnapEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Snap & Track Your Meal'
	String get title => 'Snap & Track Your Meal';

	/// en: 'Use your camera to take a picture of your food for AI analysis.'
	String get description => 'Use your camera to take a picture of your food for AI analysis.';

	/// en: 'Open Camera'
	String get openCamera => 'Open Camera';
}

// Path: home.connectHealth
class TranslationsHomeConnectHealthEn {
	TranslationsHomeConnectHealthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sync with Health Connect'
	String get title => 'Sync with Health Connect';

	/// en: 'Sync your nutrition data with Health Connect'
	String get description => 'Sync your nutrition data with Health Connect';

	/// en: 'Install'
	String get install => 'Install';

	/// en: 'Connect'
	String get connect => 'Connect';
}

// Path: meal.deleteConfirmation
class TranslationsMealDeleteConfirmationEn {
	TranslationsMealDeleteConfirmationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Delete Meal'
	String get title => 'Delete Meal';

	/// en: 'Are you sure you want to delete this meal entry?'
	String get message => 'Are you sure you want to delete this meal entry?';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Delete'
	String get delete => 'Delete';
}

// Path: profile.sections
class TranslationsProfileSectionsEn {
	TranslationsProfileSectionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'PROFILE'
	String get profile => 'PROFILE';

	/// en: 'BASIC INFORMATION'
	String get basicInformation => 'BASIC INFORMATION';

	/// en: 'GOALS & ACTIVITY'
	String get goalsAndActivity => 'GOALS & ACTIVITY';

	/// en: 'CALCULATED VALUES'
	String get calculatedValues => 'CALCULATED VALUES';
}

// Path: editProfile.sections
class TranslationsEditProfileSectionsEn {
	TranslationsEditProfileSectionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'PERSONAL INFORMATION'
	String get personalInformation => 'PERSONAL INFORMATION';

	/// en: 'PHYSICAL MEASUREMENTS'
	String get physicalMeasurements => 'PHYSICAL MEASUREMENTS';

	/// en: 'GOALS & ACTIVITY'
	String get goalsAndActivity => 'GOALS & ACTIVITY';
}

// Path: settings.sections
class TranslationsSettingsSectionsEn {
	TranslationsSettingsSectionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'PROFILE'
	String get profile => 'PROFILE';

	/// en: 'LOCALIZATION'
	String get localization => 'LOCALIZATION';

	/// en: 'NOTIFICATIONS'
	String get notifications => 'NOTIFICATIONS';

	/// en: 'SUPPORT & LEGAL'
	String get supportAndLegal => 'SUPPORT & LEGAL';

	/// en: 'DANGER ZONE'
	String get dangerZone => 'DANGER ZONE';

	/// en: 'DEVELOPER'
	String get developer => 'DEVELOPER';
}

// Path: settings.editProfile
class TranslationsSettingsEditProfileEn {
	TranslationsSettingsEditProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Profile'
	String get title => 'Edit Profile';

	/// en: 'Update your personal information'
	String get subtitle => 'Update your personal information';
}

// Path: settings.language
class TranslationsSettingsLanguageEn {
	TranslationsSettingsLanguageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Language'
	String get title => 'Language';
}

// Path: settings.heightUnit
class TranslationsSettingsHeightUnitEn {
	TranslationsSettingsHeightUnitEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Height Unit'
	String get title => 'Height Unit';
}

// Path: settings.weightUnit
class TranslationsSettingsWeightUnitEn {
	TranslationsSettingsWeightUnitEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Weight Unit'
	String get title => 'Weight Unit';
}

// Path: settings.mealReminders
class TranslationsSettingsMealRemindersEn {
	TranslationsSettingsMealRemindersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Meal Reminders'
	String get title => 'Meal Reminders';

	/// en: 'Stay on track with timely alerts'
	String get subtitle => 'Stay on track with timely alerts';
}

// Path: settings.sendFeedback
class TranslationsSettingsSendFeedbackEn {
	TranslationsSettingsSendFeedbackEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Send Feedback'
	String get title => 'Send Feedback';

	/// en: 'Help us improve Calorify'
	String get subtitle => 'Help us improve Calorify';
}

// Path: settings.clearAllData
class TranslationsSettingsClearAllDataEn {
	TranslationsSettingsClearAllDataEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Clear All Data'
	String get title => 'Clear All Data';

	/// en: 'Irreversibly delete all your information'
	String get subtitle => 'Irreversibly delete all your information';

	/// en: 'Clear All Data?'
	String get confirmationTitle => 'Clear All Data?';

	/// en: 'This action cannot be undone. All your logged meals, favorites, and profile settings will be permanently deleted.'
	String get confirmationMessage => 'This action cannot be undone. All your logged meals, favorites, and profile settings will be permanently deleted.';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Clear Everything'
	String get clearEverything => 'Clear Everything';
}

// Path: settings.debugOptions
class TranslationsSettingsDebugOptionsEn {
	TranslationsSettingsDebugOptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Debug Options'
	String get title => 'Debug Options';
}

// Path: notifications.breakfast
class TranslationsNotificationsBreakfastEn {
	TranslationsNotificationsBreakfastEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Breakfast Time! 🍳'
	String get title => 'Breakfast Time! 🍳';

	/// en: 'Don't forget to log your breakfast'
	String get body => 'Don\'t forget to log your breakfast';
}

// Path: notifications.lunch
class TranslationsNotificationsLunchEn {
	TranslationsNotificationsLunchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Lunch Time! 🥗'
	String get title => 'Lunch Time! 🥗';

	/// en: 'Time to log your lunch'
	String get body => 'Time to log your lunch';
}

// Path: notifications.dinner
class TranslationsNotificationsDinnerEn {
	TranslationsNotificationsDinnerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Dinner Time! 🍽️'
	String get title => 'Dinner Time! 🍽️';

	/// en: 'Don't forget to log your dinner'
	String get body => 'Don\'t forget to log your dinner';
}

// Path: notifications.snack
class TranslationsNotificationsSnackEn {
	TranslationsNotificationsSnackEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Snack Time! 🍎'
	String get title => 'Snack Time! 🍎';

	/// en: 'Time for a healthy snack'
	String get body => 'Time for a healthy snack';
}

// Path: notifications.test
class TranslationsNotificationsTestEn {
	TranslationsNotificationsTestEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Test Notification'
	String get title => 'Test Notification';
}

// Path: disclaimer.snap
class TranslationsDisclaimerSnapEn {
	TranslationsDisclaimerSnapEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Calorify provides estimated nutritional info. Accuracy depends on your input & food variations. Use as a guide, not a definitive source. Consult a professional for personalized dietary advice.'
	String get description => 'Calorify provides estimated nutritional info. Accuracy depends on your input & food variations. Use as a guide, not a definitive source. Consult a professional for personalized dietary advice.';

	late final TranslationsDisclaimerSnapPortionSizeEn portionSize = TranslationsDisclaimerSnapPortionSizeEn._(_root);
	late final TranslationsDisclaimerSnapPreparationMethodsEn preparationMethods = TranslationsDisclaimerSnapPreparationMethodsEn._(_root);
	late final TranslationsDisclaimerSnapIngredientsEn ingredients = TranslationsDisclaimerSnapIngredientsEn._(_root);
	late final TranslationsDisclaimerSnapDatabaseLimitationsEn databaseLimitations = TranslationsDisclaimerSnapDatabaseLimitationsEn._(_root);
}

// Path: disclaimer.weightEstimate
class TranslationsDisclaimerWeightEstimateEn {
	TranslationsDisclaimerWeightEstimateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'About Weight Estimate'
	String get title => 'About Weight Estimate';

	/// en: 'The projected weight change is a theoretical estimate based on the simple calorie-in vs. calorie-out model. It is intended for motivational guidance only, not as a prediction of your actual weight.'
	String get description => 'The projected weight change is a theoretical estimate based on the simple calorie-in vs. calorie-out model. It is intended for motivational guidance only, not as a prediction of your actual weight.';

	late final TranslationsDisclaimerWeightEstimateCalorieAccuracyEn calorieAccuracy = TranslationsDisclaimerWeightEstimateCalorieAccuracyEn._(_root);
	late final TranslationsDisclaimerWeightEstimateBiologicalFactorsEn biologicalFactors = TranslationsDisclaimerWeightEstimateBiologicalFactorsEn._(_root);
	late final TranslationsDisclaimerWeightEstimateWaterWeightEn waterWeight = TranslationsDisclaimerWeightEstimateWaterWeightEn._(_root);
	late final TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn professionalGuidance = TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn._(_root);
}

// Path: onboarding.features.foodRecognition
class TranslationsOnboardingFeaturesFoodRecognitionEn {
	TranslationsOnboardingFeaturesFoodRecognitionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Smart Food Recognition'
	String get title => 'Smart Food Recognition';

	/// en: 'Take a photo and let AI identify your meal'
	String get description => 'Take a photo and let AI identify your meal';
}

// Path: onboarding.features.aiAnalysis
class TranslationsOnboardingFeaturesAiAnalysisEn {
	TranslationsOnboardingFeaturesAiAnalysisEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'AI Analysis'
	String get title => 'AI Analysis';

	/// en: 'Get instant nutrition facts from your descriptions'
	String get description => 'Get instant nutrition facts from your descriptions';
}

// Path: onboarding.features.healthIntegration
class TranslationsOnboardingFeaturesHealthIntegrationEn {
	TranslationsOnboardingFeaturesHealthIntegrationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Health Integration'
	String get title => 'Health Integration';

	/// en: 'Connect with Health Connect for better insights'
	String get description => 'Connect with Health Connect for better insights';
}

// Path: disclaimer.snap.portionSize
class TranslationsDisclaimerSnapPortionSizeEn {
	TranslationsDisclaimerSnapPortionSizeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Portion Size'
	String get title => 'Portion Size';

	/// en: 'The accuracy of the estimates heavily relies on your correct assessment of the portion size.'
	String get description => 'The accuracy of the estimates heavily relies on your correct assessment of the portion size.';
}

// Path: disclaimer.snap.preparationMethods
class TranslationsDisclaimerSnapPreparationMethodsEn {
	TranslationsDisclaimerSnapPreparationMethodsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Preparation Methods'
	String get title => 'Preparation Methods';

	/// en: 'Cooking methods can significantly alter the nutritional content of food. Calorify's estimates may not always account for these variations.'
	String get description => 'Cooking methods can significantly alter the nutritional content of food. Calorify\'s estimates may not always account for these variations.';
}

// Path: disclaimer.snap.ingredients
class TranslationsDisclaimerSnapIngredientsEn {
	TranslationsDisclaimerSnapIngredientsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Ingredients'
	String get title => 'Ingredients';

	/// en: 'Complex dishes with many hidden ingredients may lead to less accurate estimations.'
	String get description => 'Complex dishes with many hidden ingredients may lead to less accurate estimations.';
}

// Path: disclaimer.snap.databaseLimitations
class TranslationsDisclaimerSnapDatabaseLimitationsEn {
	TranslationsDisclaimerSnapDatabaseLimitationsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Database Limitations'
	String get title => 'Database Limitations';

	/// en: 'Calorify's food database is extensive but may not include every single food item or variation.'
	String get description => 'Calorify\'s food database is extensive but may not include every single food item or variation.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	TranslationsDisclaimerWeightEstimateCalorieAccuracyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Calorie Accuracy'
	String get title => 'Calorie Accuracy';

	/// en: 'This estimate is only as accurate as your tracked calorie intake and expenditure. Inaccurate logging will result in an inaccurate projection.'
	String get description => 'This estimate is only as accurate as your tracked calorie intake and expenditure. Inaccurate logging will result in an inaccurate projection.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	TranslationsDisclaimerWeightEstimateBiologicalFactorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Biological Factors'
	String get title => 'Biological Factors';

	/// en: 'Actual weight loss/gain is influenced by metabolism, hormones, sleep, stress, hydration, and other individual factors that Calorify cannot measure.'
	String get description => 'Actual weight loss/gain is influenced by metabolism, hormones, sleep, stress, hydration, and other individual factors that Calorify cannot measure.';
}

// Path: disclaimer.weightEstimate.waterWeight
class TranslationsDisclaimerWeightEstimateWaterWeightEn {
	TranslationsDisclaimerWeightEstimateWaterWeightEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Water Weight & Fluctuations'
	String get title => 'Water Weight & Fluctuations';

	/// en: 'Normal daily weight can fluctuate significantly due to water retention, digestion, and timing. The estimate does not account for these daily changes.'
	String get description => 'Normal daily weight can fluctuate significantly due to water retention, digestion, and timing. The estimate does not account for these daily changes.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Professional Guidance'
	String get title => 'Professional Guidance';

	/// en: 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.'
	String get description => 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
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
			'home.mealLog.title' => 'Logged Meals',
			'home.mealLog.emptyMessage' => 'Snap a picture of your last meal to log here.',
			'home.mealLog.noMealsToday' => 'No meals recorded for today',
			'home.mealLog.seeAllMeals' => 'See all meals',
			'home.mealDescription.title' => 'Quick Add with AI',
			'home.mealDescription.description' => 'Describe your meal, and let AI handle the details.',
			'home.mealDescription.hint' => 'eg. For breakfast I had a large bowl of oatmeal with a sliced banana and a scoop of whey ...',
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
			'history.title' => 'History',
			'history.noMeals' => 'No meals recorded',
			'history.emptyMessage' => 'Snap a picture of your last meal to log here.',
			'history.today' => 'Today',
			'history.yesterday' => 'Yesterday',
			'meal.ohNo' => 'Oh no!',
			'meal.delete' => 'Delete',
			'meal.editMeal' => 'Edit Meal',
			'meal.saveMeal' => 'Save Meal',
			'meal.deleteConfirmation.title' => 'Delete Meal',
			'meal.deleteConfirmation.message' => 'Are you sure you want to delete this meal entry?',
			'meal.deleteConfirmation.cancel' => 'Cancel',
			'meal.deleteConfirmation.delete' => 'Delete',
			'meal.addedToLog' => 'Meal added to your log!',
			'meal.couldNotAdd' => 'Could not add meal: {error}',
			'meal.removedFromFavorites' => 'Removed from favorites!',
			'meal.savedAsFavorite' => 'Meal saved as favorite!',
			'meal.couldNotUpdateFavorite' => 'Could not update favorite: {error}',
			'meal.failedToProcess' => 'Failed to process: {error}',
			'meal.failedToProcessImage' => 'Failed to process image: {error}',
			'meal.errorCompressingImage' => 'Error compressing image: {error}',
			'favorites.title' => 'Favorites',
			'favorites.empty' => 'No favorite meals yet.',
			'profile.title' => 'Profile',
			'profile.editProfile' => 'Edit Profile',
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
			'settings.heightUnit.title' => 'Height Unit',
			'settings.weightUnit.title' => 'Weight Unit',
			'settings.mealReminders.title' => 'Meal Reminders',
			'settings.mealReminders.subtitle' => 'Stay on track with timely alerts',
			'settings.sendFeedback.title' => 'Send Feedback',
			'settings.sendFeedback.subtitle' => 'Help us improve Calorify',
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
			'reminders.change' => 'Change',
			'reminders.enableNotifications' => 'Enable Notifications',
			'reminders.skipForNow' => 'Skip for now',
			'reminders.saveChanges' => 'Save Changes',
			'reminders.continue_' => 'Continue',
			'reminders.enabledSuccessfully' => 'Notifications enabled successfully!',
			'reminders.permissionDenied' => 'Notification permission denied',
			'reminders.errorEnabling' => 'Error enabling notifications: {error}',
			'reminders.errorCompletingSetup' => 'Error completing setup: {error}',
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
			'common.cancel' => 'Cancel',
			'common.save' => 'Save',
			'common.delete' => 'Delete',
			'common.edit' => 'Edit',
			'common.close' => 'Close',
			'common.kContinue' => 'Continue',
			'common.skip' => 'Skip',
			'common.error' => 'Error',
			'common.loading' => 'Loading...',
			'common.notSet' => 'Not set',
			'common.today' => 'Today',
			'common.yesterday' => 'Yesterday',
			'errors.loadingProfileData' => 'Error loading profile data',
			'errors.generic' => 'An error occurred. Please try again.',
			'debug.title' => 'Debug Options',
			'debug.showActiveNotifications' => 'Show Active Notifications',
			'debug.scheduleTestNotification' => 'Schedule Test Notification (10s)',
			'debug.triggerBreakfastNotification' => 'Trigger Breakfast Notification',
			'debug.cancelAllNotifications' => 'Cancel All Notifications',
			'debug.activeNotifications' => 'Active Notifications',
			'debug.id' => 'ID: {id}',
			'debug.fetchLatestWeight' => 'Fetch Latest Weight',
			'debug.fetchLatestHeight' => 'Fetch Latest Height',
			'debug.writeTestWeight' => 'Write Test Weight (70kg)',
			'debug.writeTestHeight' => 'Write Test Height (175cm)',
			'debug.syncLast7Days' => 'Sync Last 7 Days',
			'debug.checkCurrentLocale' => 'Check Current Locale',
			_ => null,
		};
	}
}
