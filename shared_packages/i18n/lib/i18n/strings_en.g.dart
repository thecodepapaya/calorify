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

	/// en: 'Calorify{env}'
	String appLabel({required Object env}) => 'Calorify${env}';

	late final TranslationsOnboardingEn onboarding = TranslationsOnboardingEn._(_root);
	late final TranslationsTabsEn tabs = TranslationsTabsEn._(_root);
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
	late final TranslationsHistoryEn history = TranslationsHistoryEn._(_root);
	late final TranslationsMealEn meal = TranslationsMealEn._(_root);
	late final TranslationsFavoritesEn favorites = TranslationsFavoritesEn._(_root);
	late final TranslationsProfileEn profile = TranslationsProfileEn._(_root);
	late final TranslationsHealthScoreEn healthScore = TranslationsHealthScoreEn._(_root);
	late final TranslationsEditProfileEn editProfile = TranslationsEditProfileEn._(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn._(_root);
	late final TranslationsRemindersEn reminders = TranslationsRemindersEn._(_root);
	late final TranslationsNotificationsEn notifications = TranslationsNotificationsEn._(_root);
	late final TranslationsLoginEn login = TranslationsLoginEn._(_root);
	late final TranslationsDisclaimerEn disclaimer = TranslationsDisclaimerEn._(_root);
	late final TranslationsCommonEn common = TranslationsCommonEn._(_root);
	late final TranslationsFeedbackRatingEn feedbackRating = TranslationsFeedbackRatingEn._(_root);
	late final TranslationsErrorsEn errors = TranslationsErrorsEn._(_root);
	late final TranslationsHealthEn health = TranslationsHealthEn._(_root);
}

// Path: onboarding
class TranslationsOnboardingEn {
	TranslationsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Welcome to {appLabel}'
	String welcome({required Object appLabel}) => 'Welcome to ${appLabel}';

	/// en: 'Your personal nutrition companion powered by AI'
	String get subtitle => 'Your personal nutrition companion powered by AI';

	/// en: 'Get Started'
	String get getStarted => 'Get Started';

	late final TranslationsOnboardingFeaturesEn features = TranslationsOnboardingFeaturesEn._(_root);
	late final TranslationsOnboardingGenderEn gender = TranslationsOnboardingGenderEn._(_root);
	late final TranslationsOnboardingHeightEn height = TranslationsOnboardingHeightEn._(_root);
	late final TranslationsOnboardingWeightEn weight = TranslationsOnboardingWeightEn._(_root);
	late final TranslationsOnboardingAgeEn age = TranslationsOnboardingAgeEn._(_root);
	late final TranslationsOnboardingBmiScaleEn bmiScale = TranslationsOnboardingBmiScaleEn._(_root);
	late final TranslationsOnboardingWeightGoalEn weightGoal = TranslationsOnboardingWeightGoalEn._(_root);
	late final TranslationsOnboardingActivityLevelEn activityLevel = TranslationsOnboardingActivityLevelEn._(_root);
	late final TranslationsOnboardingHealthConnectEn healthConnect = TranslationsOnboardingHealthConnectEn._(_root);
	late final TranslationsOnboardingReinforcementEn reinforcement = TranslationsOnboardingReinforcementEn._(_root);
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
	late final TranslationsHomeIntakeHistoryEn intakeHistory = TranslationsHomeIntakeHistoryEn._(_root);
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

	/// en: 'Add Meal'
	String get addMeal => 'Add Meal';

	/// en: 'Save Meal'
	String get saveMeal => 'Save Meal';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Meal Name'
	String get mealName => 'Meal Name';

	/// en: 'e.g., Scrambled Eggs with toast'
	String get mealNameHint => 'e.g., Scrambled Eggs with toast';

	/// en: 'Meal Quantity'
	String get mealQuantity => 'Meal Quantity';

	/// en: 'e.g., 1 bowl, 2 slices'
	String get mealQuantityHint => 'e.g., 1 bowl, 2 slices';

	/// en: 'Time of Meal'
	String get timeOfMeal => 'Time of Meal';

	/// en: 'Select the time you had your meal'
	String get timeOfMealHint => 'Select the time you had your meal';

	/// en: 'Meal Type'
	String get mealType => 'Meal Type';

	late final TranslationsMealNutritionEn nutrition = TranslationsMealNutritionEn._(_root);
	late final TranslationsMealDeleteConfirmationEn deleteConfirmation = TranslationsMealDeleteConfirmationEn._(_root);

	/// en: 'Meal added to your log!'
	String get addedToLog => 'Meal added to your log!';

	/// en: 'Could not add meal: {error}'
	String couldNotAdd({required Object error}) => 'Could not add meal: ${error}';

	/// en: 'Meal added successfully!'
	String get savedSuccessfully => 'Meal added successfully!';

	/// en: 'Meal updated successfully!'
	String get updatedSuccessfully => 'Meal updated successfully!';

	/// en: 'Error saving meal: {error}'
	String errorSaving({required Object error}) => 'Error saving meal: ${error}';

	/// en: 'Removed from favorites!'
	String get removedFromFavorites => 'Removed from favorites!';

	/// en: 'Meal saved as favorite!'
	String get savedAsFavorite => 'Meal saved as favorite!';

	/// en: 'Could not update favorite: {error}'
	String couldNotUpdateFavorite({required Object error}) => 'Could not update favorite: ${error}';

	/// en: 'Failed to process: {error}'
	String failedToProcess({required Object error}) => 'Failed to process: ${error}';

	/// en: 'Failed to process image: {error}'
	String failedToProcessImage({required Object error}) => 'Failed to process image: ${error}';

	/// en: 'Error compressing image: {error}'
	String errorCompressingImage({required Object error}) => 'Error compressing image: ${error}';

	/// en: 'Failed to save data. Please try again.'
	String get failedToSave => 'Failed to save data. Please try again.';

	/// en: 'Skip'
	String get skip => 'Skip';

	late final TranslationsMealVariationEn variation = TranslationsMealVariationEn._(_root);
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

	/// en: 'Target Weight'
	String get targetWeight => 'Target Weight';

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

	late final TranslationsProfileCalculatedValuesEn calculatedValues = TranslationsProfileCalculatedValuesEn._(_root);
}

// Path: healthScore
class TranslationsHealthScoreEn {
	TranslationsHealthScoreEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Health Score'
	String get title => 'Health Score';

	/// en: 'Why this score?'
	String get whyThisScore => 'Why this score?';

	/// en: 'This score is an AI estimate based on the identified ingredients and nutritional density. Always consult a professional for dietary advice.'
	String get note => 'This score is an AI estimate based on the identified ingredients and nutritional density. Always consult a professional for dietary advice.';

	/// en: 'Unhealthy'
	String get unhealthy => 'Unhealthy';

	/// en: 'Healthy'
	String get healthy => 'Healthy';

	/// en: 'Neutral'
	String get neutral => 'Neutral';
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

	/// en: 'cm'
	String get unitCm => 'cm';

	/// en: 'ft'
	String get unitFt => 'ft';

	/// en: 'kg'
	String get unitKg => 'kg';

	/// en: 'lbs'
	String get unitLbs => 'lbs';

	/// en: 'Metric (cm)'
	String get metricCm => 'Metric (cm)';

	/// en: 'Imperial (ft/in)'
	String get imperialFtIn => 'Imperial (ft/in)';

	/// en: 'Metric (kg)'
	String get metricKg => 'Metric (kg)';

	/// en: 'Imperial (lbs)'
	String get imperialLbs => 'Imperial (lbs)';

	late final TranslationsEditProfileGendersEn genders = TranslationsEditProfileGendersEn._(_root);
	late final TranslationsEditProfileWeightGoalsEn weightGoals = TranslationsEditProfileWeightGoalsEn._(_root);
	late final TranslationsEditProfileActivityLevelsEn activityLevels = TranslationsEditProfileActivityLevelsEn._(_root);
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
	late final TranslationsSettingsThemeEn theme = TranslationsSettingsThemeEn._(_root);
	late final TranslationsSettingsSendFeedbackEn sendFeedback = TranslationsSettingsSendFeedbackEn._(_root);
	late final TranslationsSettingsClearAllDataEn clearAllData = TranslationsSettingsClearAllDataEn._(_root);
	late final TranslationsSettingsDebugOptionsEn debugOptions = TranslationsSettingsDebugOptionsEn._(_root);

	/// en: 'Developer mode enabled!'
	String get developerModeEnabled => 'Developer mode enabled!';

	late final TranslationsSettingsHealthConnectEn healthConnect = TranslationsSettingsHealthConnectEn._(_root);
	late final TranslationsSettingsAboutEn about = TranslationsSettingsAboutEn._(_root);
	late final TranslationsSettingsAppInfoEn appInfo = TranslationsSettingsAppInfoEn._(_root);
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

	/// en: 'Unknown'
	String get unknown => 'Unknown';

	/// en: 'Change'
	String get change => 'Change';

	/// en: 'Enable Notifications'
	String get enableNotifications => 'Enable Notifications';

	/// en: 'Skip for now'
	String get skipForNow => 'Skip for now';

	/// en: 'Save Changes'
	String get saveChanges => 'Save Changes';

	/// en: 'Notifications enabled successfully!'
	String get enabledSuccessfully => 'Notifications enabled successfully!';

	/// en: 'Notification permission denied'
	String get permissionDenied => 'Notification permission denied';

	/// en: 'Error enabling notifications: {error}'
	String errorEnabling({required Object error}) => 'Error enabling notifications: ${error}';

	/// en: 'Error completing setup: {error}'
	String errorCompletingSetup({required Object error}) => 'Error completing setup: ${error}';
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
	late final TranslationsDisclaimerHealthMetricsEn healthMetrics = TranslationsDisclaimerHealthMetricsEn._(_root);
	late final TranslationsDisclaimerCalorieExpenditureEn calorieExpenditure = TranslationsDisclaimerCalorieExpenditureEn._(_root);
}

// Path: common
class TranslationsCommonEn {
	TranslationsCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Close'
	String get close => 'Close';

	/// en: 'Continue'
	String get kContinue => 'Continue';
}

// Path: feedbackRating
class TranslationsFeedbackRatingEn {
	TranslationsFeedbackRatingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enjoying {appLabel}?'
	String enjoyingQuestion({required Object appLabel}) => 'Enjoying ${appLabel}?';

	/// en: 'Yes, I'm enjoying it'
	String get yes => 'Yes, I\'m enjoying it';

	/// en: 'Not really'
	String get no => 'Not really';

	/// en: 'Rate on Play Store'
	String get rateStepHeading => 'Rate on Play Store';

	/// en: 'Send feedback by email'
	String get emailStepHeading => 'Send feedback by email';

	/// en: 'A quick rating helps others find {appLabel} and keeps development going. Would you take a moment to leave one?'
	String soloDevMessage({required Object appLabel}) => 'A quick rating helps others find ${appLabel} and keeps development going. Would you take a moment to leave one?';

	/// en: 'Your feedback shapes what comes next — we read every message. Would you like to share your thoughts via email?'
	String get shareFeedbackViaEmail => 'Your feedback shapes what comes next — we read every message. Would you like to share your thoughts via email?';

	/// en: 'Rate on Play Store'
	String get rateCta => 'Rate on Play Store';

	/// en: 'Maybe later'
	String get maybeLater => 'Maybe later';

	/// en: 'Send feedback'
	String get sendFeedback => 'Send feedback';

	/// en: 'No thanks'
	String get noThanks => 'No thanks';

	/// en: 'Made with care by a small team. We're focused on privacy, simplicity, and helping you build better eating habits.'
	String get aboutUsDescription => 'Made with care by a small team. We\'re focused on privacy, simplicity, and helping you build better eating habits.';

	/// en: 'Curious who's behind {appLabel}? See '
	String aboutUsMentionBeforeLink({required Object appLabel}) => 'Curious who\'s behind ${appLabel}? See ';

	/// en: 'About us'
	String get aboutUsLinkLabel => 'About us';

	/// en: 'Thanks! We'll ask again another time.'
	String get thankYouMessage => 'Thanks! We\'ll ask again another time.';
}

// Path: errors
class TranslationsErrorsEn {
	TranslationsErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Error loading profile data'
	String get loadingProfileData => 'Error loading profile data';

	/// en: 'Something went wrong.'
	String get somethingWentWrong => 'Something went wrong.';
}

// Path: health
class TranslationsHealthEn {
	TranslationsHealthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Could not sync to Health Connect'
	String get syncFailed => 'Could not sync to Health Connect';

	/// en: 'Meal synced with Health Connect'
	String get mealSynced => 'Meal synced with Health Connect';
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

// Path: onboarding.gender
class TranslationsOnboardingGenderEn {
	TranslationsOnboardingGenderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What is your gender?'
	String get title => 'What is your gender?';

	/// en: 'Gender helps us accurately calculate your basal metabolic rate (BMR).'
	String get description => 'Gender helps us accurately calculate your basal metabolic rate (BMR).';

	/// en: 'Next'
	String get next => 'Next';
}

// Path: onboarding.height
class TranslationsOnboardingHeightEn {
	TranslationsOnboardingHeightEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'How tall are you?'
	String get title => 'How tall are you?';

	/// en: 'Your height helps us calculate your BMI and energy needs accurately.'
	String get description => 'Your height helps us calculate your BMI and energy needs accurately.';

	/// en: 'Metric'
	String get metric => 'Metric';

	/// en: 'Imperial'
	String get imperial => 'Imperial';

	/// en: 'Next'
	String get next => 'Next';
}

// Path: onboarding.weight
class TranslationsOnboardingWeightEn {
	TranslationsOnboardingWeightEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What is your current weight?'
	String get currentTitle => 'What is your current weight?';

	/// en: 'Your current weight is essential for personalizing your daily goals.'
	String get currentDescription => 'Your current weight is essential for personalizing your daily goals.';

	/// en: 'What is your target weight?'
	String get targetTitle => 'What is your target weight?';

	/// en: 'Setting a goal weight helps us determine your long-term plan.'
	String get targetDescription => 'Setting a goal weight helps us determine your long-term plan.';

	/// en: 'Metric'
	String get metric => 'Metric';

	/// en: 'Imperial'
	String get imperial => 'Imperial';

	/// en: 'Next'
	String get next => 'Next';
}

// Path: onboarding.age
class TranslationsOnboardingAgeEn {
	TranslationsOnboardingAgeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'When is your birthday?'
	String get title => 'When is your birthday?';

	/// en: 'Your age helps us calculate your calorie needs accurately.'
	String get description => 'Your age helps us calculate your calorie needs accurately.';

	/// en: 'Next'
	String get next => 'Next';
}

// Path: onboarding.bmiScale
class TranslationsOnboardingBmiScaleEn {
	TranslationsOnboardingBmiScaleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Underweight'
	String get underweight => 'Underweight';

	/// en: 'Healthy'
	String get healthy => 'Healthy';

	/// en: 'Overweight'
	String get overweight => 'Overweight';

	/// en: 'Obese'
	String get obese => 'Obese';

	late final TranslationsOnboardingBmiScaleCategoriesEn categories = TranslationsOnboardingBmiScaleCategoriesEn._(_root);
	late final TranslationsOnboardingBmiScaleMessagesEn messages = TranslationsOnboardingBmiScaleMessagesEn._(_root);
}

// Path: onboarding.weightGoal
class TranslationsOnboardingWeightGoalEn {
	TranslationsOnboardingWeightGoalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What's your goal?'
	String get title => 'What\'s your goal?';

	/// en: 'Choose the goal that best describes what you want to achieve'
	String get description => 'Choose the goal that best describes what you want to achieve';
}

// Path: onboarding.activityLevel
class TranslationsOnboardingActivityLevelEn {
	TranslationsOnboardingActivityLevelEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'How active are you?'
	String get title => 'How active are you?';

	/// en: 'This helps us calculate your daily calorie needs more accurately'
	String get description => 'This helps us calculate your daily calorie needs more accurately';
}

// Path: onboarding.healthConnect
class TranslationsOnboardingHealthConnectEn {
	TranslationsOnboardingHealthConnectEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Connect with Health Connect'
	String get title => 'Connect with Health Connect';

	/// en: 'Sync your health data for better insights and automatic calorie tracking'
	String get description => 'Sync your health data for better insights and automatic calorie tracking';

	late final TranslationsOnboardingHealthConnectAutomaticTrackingEn automaticTracking = TranslationsOnboardingHealthConnectAutomaticTrackingEn._(_root);
	late final TranslationsOnboardingHealthConnectProgressInsightsEn progressInsights = TranslationsOnboardingHealthConnectProgressInsightsEn._(_root);
	late final TranslationsOnboardingHealthConnectSeamlessIntegrationEn seamlessIntegration = TranslationsOnboardingHealthConnectSeamlessIntegrationEn._(_root);

	/// en: 'Health Connect Connected'
	String get connected => 'Health Connect Connected';

	/// en: 'Health Connect Not Connected'
	String get notConnected => 'Health Connect Not Connected';

	/// en: 'Setup Health Connect'
	String get setup => 'Setup Health Connect';

	/// en: 'Skip for now'
	String get skipForNow => 'Skip for now';

	/// en: 'Health Connect is connected.'
	String get statusConnected => 'Health Connect is connected.';

	/// en: 'Health Connect has been successfully connected!'
	String get statusSuccess => 'Health Connect has been successfully connected!';

	/// en: 'Permission denied. Please enable Health Connect permissions from your phone settings for {appLabel}.'
	String statusPermissionDenied({required Object appLabel}) => 'Permission denied. Please enable Health Connect permissions from your phone settings for ${appLabel}.';

	/// en: 'Error setting up Health Connect: {error}'
	String statusError({required Object error}) => 'Error setting up Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class TranslationsOnboardingReinforcementEn {
	TranslationsOnboardingReinforcementEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsOnboardingReinforcementTrackingSuccessEn trackingSuccess = TranslationsOnboardingReinforcementTrackingSuccessEn._(_root);
	late final TranslationsOnboardingReinforcementHealthProfileEn healthProfile = TranslationsOnboardingReinforcementHealthProfileEn._(_root);
	late final TranslationsOnboardingReinforcementGoalLifestyleEn goalLifestyle = TranslationsOnboardingReinforcementGoalLifestyleEn._(_root);
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

	/// en: 'Goal'
	String get goal => 'Goal';

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

	/// en: 'grams'
	String get grams => 'grams';

	/// en: 'Macros chart'
	String get chartAccessibilityLabel => 'Macros chart';
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

// Path: home.intakeHistory
class TranslationsHomeIntakeHistoryEn {
	TranslationsHomeIntakeHistoryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '7-Day Macro History'
	String get title => '7-Day Macro History';

	/// en: 'No history yet'
	String get noHistoryYet => 'No history yet';

	/// en: 'Start logging meals to see your 7-day macro trends here'
	String get startLogging => 'Start logging meals to see your\n7-day macro trends here';
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

	/// en: 'e.g. For breakfast I had a large bowl of oatmeal with a sliced banana and a scoop of whey ...'
	String get hint => 'e.g. For breakfast I had a large bowl of oatmeal with a sliced banana and a scoop of whey ...';

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

	/// en: 'Gallery'
	String get gallery => 'Gallery';
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

// Path: meal.nutrition
class TranslationsMealNutritionEn {
	TranslationsMealNutritionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Calories'
	String get calories => 'Calories';

	/// en: 'Carbs (g)'
	String get carbs => 'Carbs (g)';

	/// en: 'Protein (g)'
	String get protein => 'Protein (g)';

	/// en: 'Fat (g)'
	String get fat => 'Fat (g)';

	/// en: 'Fiber (g)'
	String get fiber => 'Fiber (g)';
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

// Path: meal.variation
class TranslationsMealVariationEn {
	TranslationsMealVariationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Question {current} of {total}'
	String question({required Object current, required Object total}) => 'Question ${current} of ${total}';

	/// en: 'No variations available'
	String get noVariationsAvailable => 'No variations available';
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

// Path: profile.calculatedValues
class TranslationsProfileCalculatedValuesEn {
	TranslationsProfileCalculatedValuesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'BMR'
	String get bmr => 'BMR';

	/// en: 'TDEE'
	String get tdee => 'TDEE';

	/// en: 'Daily Goal'
	String get dailyGoal => 'Daily Goal';

	/// en: 'cal/day'
	String get calPerDay => 'cal/day';

	/// en: 'N/A'
	String get notAvailable => 'N/A';
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

// Path: editProfile.genders
class TranslationsEditProfileGendersEn {
	TranslationsEditProfileGendersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Male'
	String get male => 'Male';

	/// en: 'Female'
	String get female => 'Female';

	/// en: 'Other'
	String get other => 'Other';
}

// Path: editProfile.weightGoals
class TranslationsEditProfileWeightGoalsEn {
	TranslationsEditProfileWeightGoalsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsEditProfileWeightGoalsLoseWeightEn loseWeight = TranslationsEditProfileWeightGoalsLoseWeightEn._(_root);
	late final TranslationsEditProfileWeightGoalsMaintainWeightEn maintainWeight = TranslationsEditProfileWeightGoalsMaintainWeightEn._(_root);
	late final TranslationsEditProfileWeightGoalsGainWeightEn gainWeight = TranslationsEditProfileWeightGoalsGainWeightEn._(_root);
}

// Path: editProfile.activityLevels
class TranslationsEditProfileActivityLevelsEn {
	TranslationsEditProfileActivityLevelsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsEditProfileActivityLevelsSedentaryEn sedentary = TranslationsEditProfileActivityLevelsSedentaryEn._(_root);
	late final TranslationsEditProfileActivityLevelsLightlyActiveEn lightlyActive = TranslationsEditProfileActivityLevelsLightlyActiveEn._(_root);
	late final TranslationsEditProfileActivityLevelsModeratelyActiveEn moderatelyActive = TranslationsEditProfileActivityLevelsModeratelyActiveEn._(_root);
	late final TranslationsEditProfileActivityLevelsVeryActiveEn veryActive = TranslationsEditProfileActivityLevelsVeryActiveEn._(_root);
	late final TranslationsEditProfileActivityLevelsExtremelyActiveEn extremelyActive = TranslationsEditProfileActivityLevelsExtremelyActiveEn._(_root);
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

	/// en: 'HEALTH CONNECT'
	String get healthConnect => 'HEALTH CONNECT';

	/// en: 'SUPPORT & LEGAL'
	String get supportAndLegal => 'SUPPORT & LEGAL';

	/// en: 'ABOUT'
	String get about => 'ABOUT';

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

	/// en: 'Choose your preferred language'
	String get subtitle => 'Choose your preferred language';

	/// en: 'Search languages...'
	String get searchHint => 'Search languages...';

	/// en: 'No results found'
	String get noResults => 'No results found';
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

// Path: settings.theme
class TranslationsSettingsThemeEn {
	TranslationsSettingsThemeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Theme'
	String get title => 'Theme';

	/// en: 'Light'
	String get light => 'Light';

	/// en: 'Dark'
	String get dark => 'Dark';

	/// en: 'System'
	String get system => 'System';
}

// Path: settings.sendFeedback
class TranslationsSettingsSendFeedbackEn {
	TranslationsSettingsSendFeedbackEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Send Feedback'
	String get title => 'Send Feedback';

	/// en: 'Help us improve {appLabel}'
	String subtitle({required Object appLabel}) => 'Help us improve ${appLabel}';

	/// en: '{appLabel} App Feedback'
	String emailSubject({required Object appLabel}) => '${appLabel} App Feedback';

	/// en: 'Please provide your feedback below:'
	String get emailBodyPrefix => 'Please provide your feedback below:';

	/// en: 'App Version'
	String get appVersion => 'App Version';

	/// en: 'Device'
	String get device => 'Device';

	/// en: 'OS Version'
	String get osVersion => 'OS Version';

	/// en: 'UID'
	String get uid => 'UID';
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

// Path: settings.healthConnect
class TranslationsSettingsHealthConnectEn {
	TranslationsSettingsHealthConnectEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Health Connect'
	String get title => 'Health Connect';

	/// en: 'View and manage permissions'
	String get subtitle => 'View and manage permissions';

	late final TranslationsSettingsHealthConnectUnavailableEn unavailable = TranslationsSettingsHealthConnectUnavailableEn._(_root);
	late final TranslationsSettingsHealthConnectPermissionsEn permissions = TranslationsSettingsHealthConnectPermissionsEn._(_root);

	/// en: 'Manage Permissions'
	String get managePermissions => 'Manage Permissions';

	/// en: 'Open Health Connect Settings'
	String get openSettings => 'Open Health Connect Settings';

	/// en: 'Request Permissions'
	String get requestPermissions => 'Request Permissions';

	/// en: 'Permission was denied or the request failed. If Health Connect didn't open, go to your device Settings > Apps > Health Connect > App permissions to allow access.'
	String get permissionRequestCancelledOrFailed => 'Permission was denied or the request failed. If Health Connect didn\'t open, go to your device Settings > Apps > Health Connect > App permissions to allow access.';

	/// en: 'Unable to request permissions. If Health Connect didn't open, go to your device Settings > Apps > Health Connect > App permissions to allow access.'
	String get permissionRequestFailed => 'Unable to request permissions. If Health Connect didn\'t open, go to your device Settings > Apps > Health Connect > App permissions to allow access.';

	/// en: 'Requesting...'
	String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class TranslationsSettingsAboutEn {
	TranslationsSettingsAboutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'About'
	String get title => 'About';

	/// en: 'Fast, free, and privacy-first calorie awareness'
	String get tagline => 'Fast, free, and privacy-first calorie awareness';

	late final TranslationsSettingsAboutOurStoryEn ourStory = TranslationsSettingsAboutOurStoryEn._(_root);
	late final TranslationsSettingsAboutPrivacyEn privacy = TranslationsSettingsAboutPrivacyEn._(_root);
	late final TranslationsSettingsAboutDeveloperEn developer = TranslationsSettingsAboutDeveloperEn._(_root);
	late final TranslationsSettingsAboutFeedbackEn feedback = TranslationsSettingsAboutFeedbackEn._(_root);
}

// Path: settings.appInfo
class TranslationsSettingsAppInfoEn {
	TranslationsSettingsAppInfoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Calorify v{version}'
	String version({required Object version}) => 'Calorify v${version}';

	/// en: 'Build {buildNumber}'
	String build({required Object buildNumber}) => 'Build ${buildNumber}';
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

	/// en: '{appLabel} provides estimated nutritional info. Accuracy depends on your input & food variations. Use as a guide, not a definitive source. Consult a professional for personalized dietary advice.'
	String description({required Object appLabel}) => '${appLabel} provides estimated nutritional info. Accuracy depends on your input & food variations. Use as a guide, not a definitive source. Consult a professional for personalized dietary advice.';

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

// Path: disclaimer.healthMetrics
class TranslationsDisclaimerHealthMetricsEn {
	TranslationsDisclaimerHealthMetricsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'These metrics help you understand your body's energy needs and guide your nutrition goals.'
	String get description => 'These metrics help you understand your body\'s energy needs and guide your nutrition goals.';

	late final TranslationsDisclaimerHealthMetricsBmrEn bmr = TranslationsDisclaimerHealthMetricsBmrEn._(_root);
	late final TranslationsDisclaimerHealthMetricsTdeeEn tdee = TranslationsDisclaimerHealthMetricsTdeeEn._(_root);
	late final TranslationsDisclaimerHealthMetricsDailyGoalEn dailyGoal = TranslationsDisclaimerHealthMetricsDailyGoalEn._(_root);
}

// Path: disclaimer.calorieExpenditure
class TranslationsDisclaimerCalorieExpenditureEn {
	TranslationsDisclaimerCalorieExpenditureEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Calorie Expenditure Estimate'
	String get title => 'Calorie Expenditure Estimate';

	/// en: 'When Health Connect data is unavailable, we estimate today's calories burned using your Basal Metabolic Rate (BMR) and activity level (TDEE), scaled for the portion of the day that has passed.'
	String get description => 'When Health Connect data is unavailable, we estimate today\'s calories burned using your Basal Metabolic Rate (BMR) and activity level (TDEE), scaled for the portion of the day that has passed.';

	late final TranslationsDisclaimerCalorieExpenditureHowCalculatedEn howCalculated = TranslationsDisclaimerCalorieExpenditureHowCalculatedEn._(_root);
	late final TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn professionalGuidance = TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn._(_root);
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

// Path: onboarding.bmiScale.categories
class TranslationsOnboardingBmiScaleCategoriesEn {
	TranslationsOnboardingBmiScaleCategoriesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Underweight'
	String get underweight => 'Underweight';

	/// en: 'Healthy weight'
	String get healthyWeight => 'Healthy weight';

	/// en: 'Overweight'
	String get overweight => 'Overweight';

	/// en: 'Obese'
	String get obese => 'Obese';
}

// Path: onboarding.bmiScale.messages
class TranslationsOnboardingBmiScaleMessagesEn {
	TranslationsOnboardingBmiScaleMessagesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'We can help you build a healthy plan to reach a balanced weight with nutrient-dense meals.'
	String get underweight => 'We can help you build a healthy plan to reach a balanced weight with nutrient-dense meals.';

	/// en: 'Great job! You're in a healthy range. We'll help you maintain your vitality and energy levels.'
	String get healthy => 'Great job! You\'re in a healthy range. We\'ll help you maintain your vitality and energy levels.';

	/// en: '{appLabel} will simplify your journey with AI-powered tracking to help you reach your target comfortably.'
	String overweight({required Object appLabel}) => '${appLabel} will simplify your journey with AI-powered tracking to help you reach your target comfortably.';

	/// en: 'We're here to support you with personalized guidance and sustainable strategies for your health goals.'
	String get obese => 'We\'re here to support you with personalized guidance and sustainable strategies for your health goals.';
}

// Path: onboarding.healthConnect.automaticTracking
class TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	TranslationsOnboardingHealthConnectAutomaticTrackingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Automatic Calorie Tracking'
	String get title => 'Automatic Calorie Tracking';

	/// en: 'Track calories burned from your fitness apps'
	String get description => 'Track calories burned from your fitness apps';
}

// Path: onboarding.healthConnect.progressInsights
class TranslationsOnboardingHealthConnectProgressInsightsEn {
	TranslationsOnboardingHealthConnectProgressInsightsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Progress Insights'
	String get title => 'Progress Insights';

	/// en: 'Get detailed insights into your health trends'
	String get description => 'Get detailed insights into your health trends';
}

// Path: onboarding.healthConnect.seamlessIntegration
class TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	TranslationsOnboardingHealthConnectSeamlessIntegrationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Seamless Integration'
	String get title => 'Seamless Integration';

	/// en: 'Sync data from your favorite health apps'
	String get description => 'Sync data from your favorite health apps';
}

// Path: onboarding.reinforcement.trackingSuccess
class TranslationsOnboardingReinforcementTrackingSuccessEn {
	TranslationsOnboardingReinforcementTrackingSuccessEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'You're Not Alone'
	String get title => 'You\'re Not Alone';

	/// en: 'Research shows that consistent tracking is the #1 predictor of long-term success.'
	String get genericMessage => 'Research shows that consistent tracking is the #1 predictor of long-term success.';

	/// en: 'For a {age} year old {gender} looking to {goal}, consistent tracking is the #1 predictor of success.'
	String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'For a ${age} year old ${gender} looking to ${goal}, consistent tracking is the #1 predictor of success.';

	/// en: '{appLabel} makes it 10x easier than doing it manually.'
	String closingMessage({required Object appLabel}) => '${appLabel} makes it 10x easier than doing it manually.';

	/// en: 'Ready to get started?'
	String get getStartedTitle => 'Ready to get started?';

	/// en: 'Take a photo of your meals for instant analysis'
	String get tipPhoto => 'Take a photo of your meals for instant analysis';

	/// en: 'Log consistently to see meaningful progress'
	String get tipConsistency => 'Log consistently to see meaningful progress';

	/// en: 'Track your progress daily to stay motivated'
	String get tipProgress => 'Track your progress daily to stay motivated';

	/// en: 'Let's Go'
	String get button => 'Let\'s Go';

	/// en: 'individual'
	String get defaultGender => 'individual';

	/// en: 'healthier you'
	String get defaultGoal => 'healthier you';
}

// Path: onboarding.reinforcement.healthProfile
class TranslationsOnboardingReinforcementHealthProfileEn {
	TranslationsOnboardingReinforcementHealthProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your Health Profile'
	String get title => 'Your Health Profile';

	/// en: 'Based on your metrics, your BMI is {bmi}.'
	String bmiDescription({required Object bmi}) => 'Based on your metrics, your BMI is ${bmi}.';

	/// en: 'Let's finalize your profile to customize your experience.'
	String get finalizeDescription => 'Let\'s finalize your profile to customize your experience.';

	/// en: 'gain'
	String get goalGain => 'gain';

	/// en: 'lose'
	String get goalLose => 'lose';

	/// en: 'To reach your goal, you'll {direction} {diff} {unit}.'
	String goalReach({required Object direction, required Object diff, required Object unit}) => 'To reach your goal, you\'ll ${direction} ${diff} ${unit}.';

	/// en: 'You're at your target weight! We'll help you maintain it.'
	String get goalReached => 'You\'re at your target weight! We\'ll help you maintain it.';

	/// en: 'Let's Go'
	String get button => 'Let\'s Go';
}

// Path: onboarding.reinforcement.goalLifestyle
class TranslationsOnboardingReinforcementGoalLifestyleEn {
	TranslationsOnboardingReinforcementGoalLifestyleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Excellent Start!'
	String get title => 'Excellent Start!';

	/// en: 'You've taken the first step towards {goalText}. Since you're {activityText}, {appLabel} will adjust your targets to match your lifestyle.'
	String description({required Object goalText, required Object activityText, required Object appLabel}) => 'You\'ve taken the first step towards ${goalText}. Since you\'re ${activityText}, ${appLabel} will adjust your targets to match your lifestyle.';

	/// en: 'Personalized calorie targets'
	String get personalizedTargets => 'Personalized calorie targets';

	/// en: 'AI-powered meal detection'
	String get aiMealDetection => 'AI-powered meal detection';

	/// en: 'Detailed macro-nutrient breakdowns'
	String get macroBreakdowns => 'Detailed macro-nutrient breakdowns';

	/// en: 'Let's Go'
	String get button => 'Let\'s Go';

	/// en: 'your goals'
	String get defaultGoal => 'your goals';

	/// en: 'active'
	String get defaultActivity => 'active';
}

// Path: editProfile.weightGoals.loseWeight
class TranslationsEditProfileWeightGoalsLoseWeightEn {
	TranslationsEditProfileWeightGoalsLoseWeightEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Lose Weight'
	String get name => 'Lose Weight';

	/// en: 'Create a calorie deficit to lose weight'
	String get description => 'Create a calorie deficit to lose weight';
}

// Path: editProfile.weightGoals.maintainWeight
class TranslationsEditProfileWeightGoalsMaintainWeightEn {
	TranslationsEditProfileWeightGoalsMaintainWeightEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Maintain Weight'
	String get name => 'Maintain Weight';

	/// en: 'Maintain your current weight'
	String get description => 'Maintain your current weight';
}

// Path: editProfile.weightGoals.gainWeight
class TranslationsEditProfileWeightGoalsGainWeightEn {
	TranslationsEditProfileWeightGoalsGainWeightEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Gain Weight'
	String get name => 'Gain Weight';

	/// en: 'Create a calorie surplus to gain weight'
	String get description => 'Create a calorie surplus to gain weight';
}

// Path: editProfile.activityLevels.sedentary
class TranslationsEditProfileActivityLevelsSedentaryEn {
	TranslationsEditProfileActivityLevelsSedentaryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sedentary'
	String get name => 'Sedentary';

	/// en: 'Little to no exercise'
	String get description => 'Little to no exercise';
}

// Path: editProfile.activityLevels.lightlyActive
class TranslationsEditProfileActivityLevelsLightlyActiveEn {
	TranslationsEditProfileActivityLevelsLightlyActiveEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Lightly Active'
	String get name => 'Lightly Active';

	/// en: 'Light exercise 1-3 days/week'
	String get description => 'Light exercise 1-3 days/week';
}

// Path: editProfile.activityLevels.moderatelyActive
class TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	TranslationsEditProfileActivityLevelsModeratelyActiveEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Moderately Active'
	String get name => 'Moderately Active';

	/// en: 'Moderate exercise 3-5 days/week'
	String get description => 'Moderate exercise 3-5 days/week';
}

// Path: editProfile.activityLevels.veryActive
class TranslationsEditProfileActivityLevelsVeryActiveEn {
	TranslationsEditProfileActivityLevelsVeryActiveEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Very Active'
	String get name => 'Very Active';

	/// en: 'Hard exercise 6-7 days/week'
	String get description => 'Hard exercise 6-7 days/week';
}

// Path: editProfile.activityLevels.extremelyActive
class TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	TranslationsEditProfileActivityLevelsExtremelyActiveEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Extremely Active'
	String get name => 'Extremely Active';

	/// en: 'Very hard exercise, physical job'
	String get description => 'Very hard exercise, physical job';
}

// Path: settings.healthConnect.unavailable
class TranslationsSettingsHealthConnectUnavailableEn {
	TranslationsSettingsHealthConnectUnavailableEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Health Connect Unavailable'
	String get title => 'Health Connect Unavailable';

	/// en: 'Health Connect is not available on this device. Please install Health Connect from the Play Store (Android 9+) or update to Android 14+.'
	String get description => 'Health Connect is not available on this device. Please install Health Connect from the Play Store (Android 9+) or update to Android 14+.';
}

// Path: settings.healthConnect.permissions
class TranslationsSettingsHealthConnectPermissionsEn {
	TranslationsSettingsHealthConnectPermissionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Permissions'
	String get title => 'Permissions';

	/// en: 'The following permissions are requested to provide Health Connect integration:'
	String get description => 'The following permissions are requested to provide Health Connect integration:';

	/// en: 'Granted'
	String get granted => 'Granted';

	/// en: 'Not Granted'
	String get notGranted => 'Not Granted';

	late final TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn caloriesBurned = TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn._(_root);
	late final TranslationsSettingsHealthConnectPermissionsNutritionReadEn nutritionRead = TranslationsSettingsHealthConnectPermissionsNutritionReadEn._(_root);
	late final TranslationsSettingsHealthConnectPermissionsNutritionWriteEn nutritionWrite = TranslationsSettingsHealthConnectPermissionsNutritionWriteEn._(_root);
}

// Path: settings.about.ourStory
class TranslationsSettingsAboutOurStoryEn {
	TranslationsSettingsAboutOurStoryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Our Story'
	String get title => 'Our Story';

	/// en: '{appLabel} was born from a simple frustration: most calorie tracking apps are either overly complicated, demand constant manual input, charge high subscription fees, or compromise on privacy. As a solo developer, I wanted to build something simpler and fairer — an app that uses AI to reduce effort, stays fast and free to use, and treats your health data with respect. {appLabel} is the app I wish existed: no accounts, no tracking, no ads — just clear, practical insights and your health goals.'
	String content({required Object appLabel}) => '${appLabel} was born from a simple frustration: most calorie tracking apps are either overly complicated, demand constant manual input, charge high subscription fees, or compromise on privacy.\n\nAs a solo developer, I wanted to build something simpler and fairer — an app that uses AI to reduce effort, stays fast and free to use, and treats your health data with respect.\n\n${appLabel} is the app I wish existed: no accounts, no tracking, no ads — just clear, practical insights and your health goals.';
}

// Path: settings.about.privacy
class TranslationsSettingsAboutPrivacyEn {
	TranslationsSettingsAboutPrivacyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your Privacy Matters'
	String get title => 'Your Privacy Matters';

	/// en: 'Privacy isn't an afterthought — it's a design principle. Here's what that means in practice:'
	String get description => 'Privacy isn\'t an afterthought — it\'s a design principle. Here\'s what that means in practice:';

	/// en: 'No accounts required Use the app immediately. No sign-ups, no identities.'
	String get noAccounts => 'No accounts required\nUse the app immediately. No sign-ups, no identities.';

	/// en: 'No behavioral tracking {appLabel} does not monitor your activity, build usage profiles, or track you across apps or websites.'
	String noTracking({required Object appLabel}) => 'No behavioral tracking\n${appLabel} does not monitor your activity, build usage profiles, or track you across apps or websites.';

	/// en: 'Ad-free by design {appLabel} is built to work without ads or data-driven monetization.'
	String noAds({required Object appLabel}) => 'Ad-free by design\n${appLabel} is built to work without ads or data-driven monetization.';

	/// en: 'No data selling Your health data is never sold or shared with third parties.'
	String get noDataSelling => 'No data selling\nYour health data is never sold or shared with third parties.';

	/// en: 'Local-first storage Your data stays on your device.'
	String get localStorage => 'Local-first storage\nYour data stays on your device.';

	/// en: 'Privacy Policy'
	String get privacyPolicy => 'Privacy Policy';
}

// Path: settings.about.developer
class TranslationsSettingsAboutDeveloperEn {
	TranslationsSettingsAboutDeveloperEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Built by a Solo Developer'
	String get title => 'Built by a Solo Developer';

	/// en: '{appLabel} is built and maintained by a single solo developer focused on creating calm, privacy-respecting health software. Feedback is read personally and helps shape the direction of the app.'
	String description({required Object appLabel}) => '${appLabel} is built and maintained by a single solo developer focused on creating calm, privacy-respecting health software.\n\nFeedback is read personally and helps shape the direction of the app.';

	/// en: 'Website'
	String get website => 'Website';

	/// en: 'Email'
	String get email => 'Email';
}

// Path: settings.about.feedback
class TranslationsSettingsAboutFeedbackEn {
	TranslationsSettingsAboutFeedbackEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enjoying {appLabel}?'
	String title({required Object appLabel}) => 'Enjoying ${appLabel}?';

	/// en: 'Your feedback helps make {appLabel} better for everyone.'
	String description({required Object appLabel}) => 'Your feedback helps make ${appLabel} better for everyone.';

	/// en: 'Rate on Play Store'
	String get rateApp => 'Rate on Play Store';

	/// en: 'Send Feedback'
	String get sendFeedback => 'Send Feedback';
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

	/// en: 'Cooking methods can significantly alter the nutritional content of food. {appLabel}'s estimates may not always account for these variations.'
	String description({required Object appLabel}) => 'Cooking methods can significantly alter the nutritional content of food. ${appLabel}\'s estimates may not always account for these variations.';
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

	/// en: '{appLabel}'s food database is extensive but may not include every single food item or variation.'
	String description({required Object appLabel}) => '${appLabel}\'s food database is extensive but may not include every single food item or variation.';
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

	/// en: 'Actual weight loss/gain is influenced by metabolism, hormones, sleep, stress, hydration, and other individual factors that {appLabel} cannot measure.'
	String description({required Object appLabel}) => 'Actual weight loss/gain is influenced by metabolism, hormones, sleep, stress, hydration, and other individual factors that ${appLabel} cannot measure.';
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

// Path: disclaimer.healthMetrics.bmr
class TranslationsDisclaimerHealthMetricsBmrEn {
	TranslationsDisclaimerHealthMetricsBmrEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'BMR'
	String get title => 'BMR';

	/// en: 'Basal Metabolic Rate (BMR) is the number of calories your body burns at rest to maintain basic functions like breathing and circulation. BMR depends on your age, gender, height, and weight. A higher BMR means your body naturally burns more calories at rest, often due to more muscle mass, younger age, or being male. A lower BMR typically indicates less muscle mass, older age, or being female.'
	String get description => 'Basal Metabolic Rate (BMR) is the number of calories your body burns at rest to maintain basic functions like breathing and circulation. BMR depends on your age, gender, height, and weight. A higher BMR means your body naturally burns more calories at rest, often due to more muscle mass, younger age, or being male. A lower BMR typically indicates less muscle mass, older age, or being female.';
}

// Path: disclaimer.healthMetrics.tdee
class TranslationsDisclaimerHealthMetricsTdeeEn {
	TranslationsDisclaimerHealthMetricsTdeeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'TDEE'
	String get title => 'TDEE';

	/// en: 'Total Daily Energy Expenditure (TDEE) is the total calories you burn per day, including your BMR plus calories from physical activity and daily movement. TDEE depends on your BMR and activity level. A higher TDEE means you burn more calories overall, usually from being more active or having a higher BMR. A lower TDEE suggests less daily activity or a lower BMR.'
	String get description => 'Total Daily Energy Expenditure (TDEE) is the total calories you burn per day, including your BMR plus calories from physical activity and daily movement. TDEE depends on your BMR and activity level. A higher TDEE means you burn more calories overall, usually from being more active or having a higher BMR. A lower TDEE suggests less daily activity or a lower BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class TranslationsDisclaimerHealthMetricsDailyGoalEn {
	TranslationsDisclaimerHealthMetricsDailyGoalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Daily Goal'
	String get title => 'Daily Goal';

	/// en: 'Daily Goal is your recommended daily calorie intake based on your TDEE and weight goal. For weight loss, you consume fewer calories than your TDEE. For weight maintenance, you match your TDEE. For weight gain, you consume more calories than your TDEE. This helps you achieve your desired weight change at a healthy pace.'
	String get description => 'Daily Goal is your recommended daily calorie intake based on your TDEE and weight goal. For weight loss, you consume fewer calories than your TDEE. For weight maintenance, you match your TDEE. For weight gain, you consume more calories than your TDEE. This helps you achieve your desired weight change at a healthy pace.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	TranslationsDisclaimerCalorieExpenditureHowCalculatedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'How The Estimate Is Calculated'
	String get title => 'How The Estimate Is Calculated';

	/// en: 'We compute your TDEE (based on your profile) and multiply it by the fraction of the day elapsed (hours + minutes) / 24 to estimate calories burned so far.'
	String get description => 'We compute your TDEE (based on your profile) and multiply it by the fraction of the day elapsed (hours + minutes) / 24 to estimate calories burned so far.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Professional Guidance'
	String get title => 'Professional Guidance';

	/// en: 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.'
	String get description => 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Read Total Calories Burned'
	String get title => 'Read Total Calories Burned';

	/// en: 'Allows the app to read your total calories burned from Health Connect.'
	String get description => 'Allows the app to read your total calories burned from Health Connect.';

	/// en: 'This permission is used to display your daily calorie burn in the app, helping you understand your total energy expenditure throughout the day.'
	String get usage => 'This permission is used to display your daily calorie burn in the app, helping you understand your total energy expenditure throughout the day.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	TranslationsSettingsHealthConnectPermissionsNutritionReadEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Read Nutrition Data'
	String get title => 'Read Nutrition Data';

	/// en: 'Allows the app to read nutrition data from Health Connect.'
	String get description => 'Allows the app to read nutrition data from Health Connect.';

	/// en: 'This permission allows the app to read nutrition information that may have been logged by other apps connected to Health Connect, providing a comprehensive view of your nutrition.'
	String get usage => 'This permission allows the app to read nutrition information that may have been logged by other apps connected to Health Connect, providing a comprehensive view of your nutrition.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	TranslationsSettingsHealthConnectPermissionsNutritionWriteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Write Nutrition Data'
	String get title => 'Write Nutrition Data';

	/// en: 'Allows the app to write nutrition data to Health Connect.'
	String get description => 'Allows the app to write nutrition data to Health Connect.';

	/// en: 'This permission allows the app to sync your logged meals to Health Connect, making your nutrition data available to other health and fitness apps you use.'
	String get usage => 'This permission allows the app to sync your logged meals to Health Connect, making your nutrition data available to other health and fitness apps you use.';
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
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => 'Welcome to ${appLabel}',
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
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} will simplify your journey with AI-powered tracking to help you reach your target comfortably.',
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
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permission denied. Please enable Health Connect permissions from your phone settings for ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Error setting up Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'You\'re Not Alone',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Research shows that consistent tracking is the #1 predictor of long-term success.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'For a ${age} year old ${gender} looking to ${goal}, consistent tracking is the #1 predictor of success.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} makes it 10x easier than doing it manually.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Ready to get started?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Take a photo of your meals for instant analysis',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Log consistently to see meaningful progress',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Track your progress daily to stay motivated',
			'onboarding.reinforcement.trackingSuccess.button' => 'Let\'s Go',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individual',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'healthier you',
			'onboarding.reinforcement.healthProfile.title' => 'Your Health Profile',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Based on your metrics, your BMI is ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Let\'s finalize your profile to customize your experience.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'gain',
			'onboarding.reinforcement.healthProfile.goalLose' => 'lose',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'To reach your goal, you\'ll ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'You\'re at your target weight! We\'ll help you maintain it.',
			'onboarding.reinforcement.healthProfile.button' => 'Let\'s Go',
			'onboarding.reinforcement.goalLifestyle.title' => 'Excellent Start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'You\'ve taken the first step towards ${goalText}. Since you\'re ${activityText}, ${appLabel} will adjust your targets to match your lifestyle.',
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
			'home.dailyGoal.goal' => 'Goal',
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
			'home.dailySummary.grams' => 'grams',
			'home.dailySummary.chartAccessibilityLabel' => 'Macros chart',
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
			'home.mealSnap.gallery' => 'Gallery',
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
			'meal.mealNameHint' => 'e.g., Scrambled Eggs with toast',
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
			'meal.savedSuccessfully' => 'Meal added successfully!',
			'meal.updatedSuccessfully' => 'Meal updated successfully!',
			'meal.errorSaving' => ({required Object error}) => 'Error saving meal: ${error}',
			'meal.removedFromFavorites' => 'Removed from favorites!',
			'meal.savedAsFavorite' => 'Meal saved as favorite!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Could not update favorite: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Failed to process: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Failed to process image: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Error compressing image: ${error}',
			'meal.failedToSave' => 'Failed to save data. Please try again.',
			'meal.skip' => 'Skip',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Question ${current} of ${total}',
			'meal.variation.noVariationsAvailable' => 'No variations available',
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
			'profile.targetWeight' => 'Target Weight',
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
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
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
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SUPPORT & LEGAL',
			'settings.sections.about' => 'ABOUT',
			'settings.sections.dangerZone' => 'DANGER ZONE',
			'settings.sections.developer' => 'DEVELOPER',
			'settings.editProfile.title' => 'Edit Profile',
			'settings.editProfile.subtitle' => 'Update your personal information',
			'settings.language.title' => 'Language',
			'settings.language.subtitle' => 'Choose your preferred language',
			'settings.language.searchHint' => 'Search languages...',
			'settings.language.noResults' => 'No results found',
			'settings.heightUnit.title' => 'Height Unit',
			'settings.weightUnit.title' => 'Weight Unit',
			'settings.mealReminders.title' => 'Meal Reminders',
			'settings.mealReminders.subtitle' => 'Stay on track with timely alerts',
			'settings.theme.title' => 'Theme',
			'settings.theme.light' => 'Light',
			'settings.theme.dark' => 'Dark',
			'settings.theme.system' => 'System',
			'settings.sendFeedback.title' => 'Send Feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Help us improve ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} App Feedback',
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
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'View and manage permissions',
			'settings.healthConnect.unavailable.title' => 'Health Connect Unavailable',
			'settings.healthConnect.unavailable.description' => 'Health Connect is not available on this device. Please install Health Connect from the Play Store (Android 9+) or update to Android 14+.',
			'settings.healthConnect.permissions.title' => 'Permissions',
			'settings.healthConnect.permissions.description' => 'The following permissions are requested to provide Health Connect integration:',
			'settings.healthConnect.permissions.granted' => 'Granted',
			'settings.healthConnect.permissions.notGranted' => 'Not Granted',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Read Total Calories Burned',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Allows the app to read your total calories burned from Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'This permission is used to display your daily calorie burn in the app, helping you understand your total energy expenditure throughout the day.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Read Nutrition Data',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Allows the app to read nutrition data from Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'This permission allows the app to read nutrition information that may have been logged by other apps connected to Health Connect, providing a comprehensive view of your nutrition.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Write Nutrition Data',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Allows the app to write nutrition data to Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'This permission allows the app to sync your logged meals to Health Connect, making your nutrition data available to other health and fitness apps you use.',
			'settings.healthConnect.managePermissions' => 'Manage Permissions',
			'settings.healthConnect.openSettings' => 'Open Health Connect Settings',
			'settings.healthConnect.requestPermissions' => 'Request Permissions',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Permission was denied or the request failed. If Health Connect didn\'t open, go to your device Settings > Apps > Health Connect > App permissions to allow access.',
			'settings.healthConnect.permissionRequestFailed' => 'Unable to request permissions. If Health Connect didn\'t open, go to your device Settings > Apps > Health Connect > App permissions to allow access.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'About',
			'settings.about.tagline' => 'Fast, free, and privacy-first calorie awareness',
			'settings.about.ourStory.title' => 'Our Story',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} was born from a simple frustration: most calorie tracking apps are either overly complicated, demand constant manual input, charge high subscription fees, or compromise on privacy.\n\nAs a solo developer, I wanted to build something simpler and fairer — an app that uses AI to reduce effort, stays fast and free to use, and treats your health data with respect.\n\n${appLabel} is the app I wish existed: no accounts, no tracking, no ads — just clear, practical insights and your health goals.',
			'settings.about.privacy.title' => 'Your Privacy Matters',
			'settings.about.privacy.description' => 'Privacy isn\'t an afterthought — it\'s a design principle. Here\'s what that means in practice:',
			'settings.about.privacy.noAccounts' => 'No accounts required\nUse the app immediately. No sign-ups, no identities.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'No behavioral tracking\n${appLabel} does not monitor your activity, build usage profiles, or track you across apps or websites.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Ad-free by design\n${appLabel} is built to work without ads or data-driven monetization.',
			'settings.about.privacy.noDataSelling' => 'No data selling\nYour health data is never sold or shared with third parties.',
			'settings.about.privacy.localStorage' => 'Local-first storage\nYour data stays on your device.',
			'settings.about.privacy.privacyPolicy' => 'Privacy Policy',
			'settings.about.developer.title' => 'Built by a Solo Developer',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} is built and maintained by a single solo developer focused on creating calm, privacy-respecting health software.\n\nFeedback is read personally and helps shape the direction of the app.',
			'settings.about.developer.website' => 'Website',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Enjoying ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Your feedback helps make ${appLabel} better for everyone.',
			'settings.about.feedback.rateApp' => 'Rate on Play Store',
			'settings.about.feedback.sendFeedback' => 'Send Feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
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
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} provides estimated nutritional info. Accuracy depends on your input & food variations. Use as a guide, not a definitive source. Consult a professional for personalized dietary advice.',
			'disclaimer.snap.portionSize.title' => 'Portion Size',
			'disclaimer.snap.portionSize.description' => 'The accuracy of the estimates heavily relies on your correct assessment of the portion size.',
			'disclaimer.snap.preparationMethods.title' => 'Preparation Methods',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Cooking methods can significantly alter the nutritional content of food. ${appLabel}\'s estimates may not always account for these variations.',
			'disclaimer.snap.ingredients.title' => 'Ingredients',
			'disclaimer.snap.ingredients.description' => 'Complex dishes with many hidden ingredients may lead to less accurate estimations.',
			'disclaimer.snap.databaseLimitations.title' => 'Database Limitations',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}\'s food database is extensive but may not include every single food item or variation.',
			'disclaimer.weightEstimate.title' => 'About Weight Estimate',
			'disclaimer.weightEstimate.description' => 'The projected weight change is a theoretical estimate based on the simple calorie-in vs. calorie-out model. It is intended for motivational guidance only, not as a prediction of your actual weight.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Calorie Accuracy',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'This estimate is only as accurate as your tracked calorie intake and expenditure. Inaccurate logging will result in an inaccurate projection.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biological Factors',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Actual weight loss/gain is influenced by metabolism, hormones, sleep, stress, hydration, and other individual factors that ${appLabel} cannot measure.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Water Weight & Fluctuations',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normal daily weight can fluctuate significantly due to water retention, digestion, and timing. The estimate does not account for these daily changes.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professional Guidance',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.',
			'disclaimer.healthMetrics.description' => 'These metrics help you understand your body\'s energy needs and guide your nutrition goals.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) is the number of calories your body burns at rest to maintain basic functions like breathing and circulation. BMR depends on your age, gender, height, and weight. A higher BMR means your body naturally burns more calories at rest, often due to more muscle mass, younger age, or being male. A lower BMR typically indicates less muscle mass, older age, or being female.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) is the total calories you burn per day, including your BMR plus calories from physical activity and daily movement. TDEE depends on your BMR and activity level. A higher TDEE means you burn more calories overall, usually from being more active or having a higher BMR. A lower TDEE suggests less daily activity or a lower BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Daily Goal',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Daily Goal is your recommended daily calorie intake based on your TDEE and weight goal. For weight loss, you consume fewer calories than your TDEE. For weight maintenance, you match your TDEE. For weight gain, you consume more calories than your TDEE. This helps you achieve your desired weight change at a healthy pace.',
			'disclaimer.calorieExpenditure.title' => 'Calorie Expenditure Estimate',
			'disclaimer.calorieExpenditure.description' => 'When Health Connect data is unavailable, we estimate today\'s calories burned using your Basal Metabolic Rate (BMR) and activity level (TDEE), scaled for the portion of the day that has passed.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'How The Estimate Is Calculated',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'We compute your TDEE (based on your profile) and multiply it by the fraction of the day elapsed (hours + minutes) / 24 to estimate calories burned so far.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Professional Guidance',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.',
			'common.close' => 'Close',
			'common.kContinue' => 'Continue',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Enjoying ${appLabel}?',
			'feedbackRating.yes' => 'Yes, I\'m enjoying it',
			'feedbackRating.no' => 'Not really',
			'feedbackRating.rateStepHeading' => 'Rate on Play Store',
			'feedbackRating.emailStepHeading' => 'Send feedback by email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'A quick rating helps others find ${appLabel} and keeps development going. Would you take a moment to leave one?',
			'feedbackRating.shareFeedbackViaEmail' => 'Your feedback shapes what comes next — we read every message. Would you like to share your thoughts via email?',
			'feedbackRating.rateCta' => 'Rate on Play Store',
			'feedbackRating.maybeLater' => 'Maybe later',
			'feedbackRating.sendFeedback' => 'Send feedback',
			'feedbackRating.noThanks' => 'No thanks',
			'feedbackRating.aboutUsDescription' => 'Made with care by a small team. We\'re focused on privacy, simplicity, and helping you build better eating habits.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Curious who\'s behind ${appLabel}? See ',
			'feedbackRating.aboutUsLinkLabel' => 'About us',
			'feedbackRating.thankYouMessage' => 'Thanks! We\'ll ask again another time.',
			'errors.loadingProfileData' => 'Error loading profile data',
			'errors.somethingWentWrong' => 'Something went wrong.',
			'health.syncFailed' => 'Could not sync to Health Connect',
			'health.mealSynced' => 'Meal synced with Health Connect',
			_ => null,
		};
	}
}
