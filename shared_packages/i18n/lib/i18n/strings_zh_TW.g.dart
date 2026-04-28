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
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsZhTw errors = _TranslationsErrorsZhTw._(_root);
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
	@override late final _TranslationsFeedbackRatingZhTw feedbackRating = _TranslationsFeedbackRatingZhTw._(_root);
	@override late final _TranslationsHealthZhTw health = _TranslationsHealthZhTw._(_root);
}

// Path: errors
class _TranslationsErrorsZhTw implements TranslationsErrorsEn {
	_TranslationsErrorsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'You\'ve made too many requests. Please wait a moment before trying again.';
	@override String get networkError => 'Network error. Please check your internet connection.';
	@override String get unknownError => 'Something went wrong. Please try again later.';
	@override String get loadingProfileData => 'Error loading profile data';
	@override String get somethingWentWrong => 'Something went wrong.';
	@override String get retry => 'Retry';
}

// Path: onboarding
class _TranslationsOnboardingZhTw implements TranslationsOnboardingEn {
	_TranslationsOnboardingZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Welcome to ${appLabel}';
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
	@override late final _TranslationsHomeAiSummaryZhTw aiSummary = _TranslationsHomeAiSummaryZhTw._(_root);
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
	@override String get mealNameHint => 'e.g., Scrambled Eggs with toast';
	@override String get mealQuantity => 'Meal Quantity';
	@override String get mealQuantityHint => 'e.g., 1 bowl, 2 slices';
	@override String get timeOfMeal => 'Time of Meal';
	@override String get timeOfMealHint => 'Select the time you had your meal';
	@override String get mealType => 'Meal Type';
	@override late final _TranslationsMealNutritionZhTw nutrition = _TranslationsMealNutritionZhTw._(_root);
	@override late final _TranslationsMealDeleteConfirmationZhTw deleteConfirmation = _TranslationsMealDeleteConfirmationZhTw._(_root);
	@override String get addedToLog => 'Meal added to your log!';
	@override String couldNotAdd({required Object error}) => 'Could not add meal: ${error}';
	@override String get savedSuccessfully => 'Meal added successfully!';
	@override String get updatedSuccessfully => 'Meal updated successfully!';
	@override String errorSaving({required Object error}) => 'Error saving meal: ${error}';
	@override String get removedFromFavorites => 'Removed from favorites!';
	@override String get savedAsFavorite => 'Meal saved as favorite!';
	@override String get unfavorite => 'Unfavorite';
	@override String couldNotUpdateFavorite({required Object error}) => 'Could not update favorite: ${error}';
	@override String get feedbackThanks => 'Thanks for the feedback!';
	@override String get reanalysisUpdated => 'Updated the meal analysis based on your feedback.';
	@override String failedToProcess({required Object error}) => 'Failed to process: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Failed to process image: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Error compressing image: ${error}';
	@override String get failedToSave => 'Failed to save data. Please try again.';
	@override String get skip => 'Skip';
	@override late final _TranslationsMealVariationZhTw variation = _TranslationsMealVariationZhTw._(_root);
	@override late final _TranslationsMealAnalysisZhTw analysis = _TranslationsMealAnalysisZhTw._(_root);
	@override late final _TranslationsMealFeedbackZhTw feedback = _TranslationsMealFeedbackZhTw._(_root);
}

// Path: favorites
class _TranslationsFavoritesZhTw implements TranslationsFavoritesEn {
	_TranslationsFavoritesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorites';
	@override String get empty => 'No favorite meals yet.';
	@override String get searchPlaceholder => 'Search favorite meals';
	@override String get searchEmptyTitle => 'No favorites match your search';
	@override String get searchEmptySubtitle => 'Try a different meal name, quantity, or meal type.';
	@override String get sortLabel => 'Sort favorites';
	@override String get undo => 'Undo';
	@override String removed({required Object name}) => 'Removed ${name} from favorites';
	@override late final _TranslationsFavoritesSortOptionsZhTw sortOptions = _TranslationsFavoritesSortOptionsZhTw._(_root);
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
	@override String get targetWeight => 'Target Weight';
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
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
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
	@override late final _TranslationsSettingsMealRemindersZhTw mealReminders = _TranslationsSettingsMealRemindersZhTw._(_root);
	@override late final _TranslationsSettingsThemeZhTw theme = _TranslationsSettingsThemeZhTw._(_root);
	@override late final _TranslationsSettingsSendFeedbackZhTw sendFeedback = _TranslationsSettingsSendFeedbackZhTw._(_root);
	@override late final _TranslationsSettingsExportMealHistoryZhTw exportMealHistory = _TranslationsSettingsExportMealHistoryZhTw._(_root);
	@override late final _TranslationsSettingsClearAllDataZhTw clearAllData = _TranslationsSettingsClearAllDataZhTw._(_root);
	@override late final _TranslationsSettingsDebugOptionsZhTw debugOptions = _TranslationsSettingsDebugOptionsZhTw._(_root);
	@override String get developerModeEnabled => 'Developer mode enabled!';
	@override late final _TranslationsSettingsHealthConnectZhTw healthConnect = _TranslationsSettingsHealthConnectZhTw._(_root);
	@override late final _TranslationsSettingsAboutZhTw about = _TranslationsSettingsAboutZhTw._(_root);
	@override late final _TranslationsSettingsAppInfoZhTw appInfo = _TranslationsSettingsAppInfoZhTw._(_root);
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
	@override late final _TranslationsDisclaimerHealthMetricsZhTw healthMetrics = _TranslationsDisclaimerHealthMetricsZhTw._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureZhTw calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureZhTw._(_root);
}

// Path: common
class _TranslationsCommonZhTw implements TranslationsCommonEn {
	_TranslationsCommonZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get close => 'Close';
	@override String get kContinue => 'Continue';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingZhTw implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Enjoying ${appLabel}?';
	@override String get yes => 'Yes, I\'m enjoying it';
	@override String get no => 'Not really';
	@override String get rateStepHeading => 'Rate on Play Store';
	@override String get emailStepHeading => 'Send feedback by email';
	@override String soloDevMessage({required Object appLabel}) => 'A quick rating helps others find ${appLabel} and keeps development going. Would you take a moment to leave one?';
	@override String get shareFeedbackViaEmail => 'Your feedback shapes what comes next — we read every message. Would you like to share your thoughts via email?';
	@override String get rateCta => 'Rate on Play Store';
	@override String get maybeLater => 'Maybe later';
	@override String get sendFeedback => 'Send feedback';
	@override String get noThanks => 'No thanks';
	@override String get aboutUsDescription => 'Made with care by a small team. We\'re focused on privacy, simplicity, and helping you build better eating habits.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Curious who\'s behind ${appLabel}? See ';
	@override String get aboutUsLinkLabel => 'About us';
	@override String get thankYouMessage => 'Thanks! We\'ll ask again another time.';
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
	@override String get underweight => 'Under';
	@override String get healthy => 'Healthy';
	@override String get overweight => 'Over';
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
	@override String statusPermissionDenied({required Object appLabel}) => 'Permission denied. Please enable Health Connect permissions from your phone settings for ${appLabel}.';
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

// Path: home.aiSummary
class _TranslationsHomeAiSummaryZhTw implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Your AI Summary';
	@override String get logMore => 'Log more meals over the next few days to get your personalized AI insights.';
	@override String get loading => 'Loading your summary...';
	@override String mealCount({required Object count}) => '${count} meals logged';
	@override String macroBalanceScore({required Object score}) => 'Balance score ${score}';
	@override String get topFoods => 'Top foods';
	@override String get trendUp => 'Calories trending up';
	@override String get trendDown => 'Calories trending down';
	@override String get trendSteady => 'Calories staying steady';
	@override String generatedAt({required Object time}) => 'Updated ${time}';
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
	@override String get goal => 'Goal';
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
	@override String get grams => 'grams';
	@override String get chartAccessibilityLabel => 'Macros chart';
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
	@override String get trendTitle => 'Today\'s Trend';
	@override String peakHour({required Object hour}) => 'Peak: ${hour}:00';
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
	@override String get gallery => 'Gallery';
	@override String get compressingPhoto => 'Optimizing photo…';
	@override String get uploadingPhoto => 'Uploading photo…';
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

// Path: meal.variation
class _TranslationsMealVariationZhTw implements TranslationsMealVariationEn {
	_TranslationsMealVariationZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Question ${current} of ${total}';
	@override String get noVariationsAvailable => 'No variations available';
}

// Path: meal.analysis
class _TranslationsMealAnalysisZhTw implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI meal analysis';
	@override String get reassurance => 'This usually takes a few seconds.';
	@override String get stepStarted => 'Getting started…';
	@override String get stepDecomposition => 'Understanding your meal…';
	@override String get stepIngredients => 'Matching ingredients to nutrition data…';
	@override String get stepUncertainty => 'Checking confidence…';
	@override String get stepMealTypeQuestion => 'Almost there…';
	@override String get stepResult => 'Finalizing your result…';
	@override String get stepError => 'Something went wrong';
	@override String get stepDefault => 'Analyzing your meal…';
	@override String get progressUnderstand => 'Understand';
	@override String get progressMatch => 'Match';
	@override String get progressCheck => 'Check';
	@override String get progressFinish => 'Finish';
	@override String ingredientsLine({required Object count}) => '${count} ingredients detected';
	@override String get ingredientsPending => 'Scanning ingredients…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackZhTw implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '哪裡不對?';
	@override String get subtitle => '選擇一個或多個問題,協助我們改善分析。';
	@override String get tellUsMore => '告訴我們更多';
	@override String get describeIncorrect => '描述哪裡不正確';
	@override String get submit => '送出';
	@override String get issueFoodIdentification => '食物辨識';
	@override String get issuePortionSize => '份量大小';
	@override String get issueCalorieDistribution => '熱量分布';
	@override String get issueMacrosWrong => '巨量營養素錯誤';
	@override String get issueMissingItems => '缺少項目';
	@override String get issueExtraItems => '多餘項目';
	@override String get issueOther => '其他';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsZhTw implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Recent';
	@override String get calories => 'Calories';
	@override String get alphabetical => 'A-Z';
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
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'SUPPORT & LEGAL';
	@override String get about => 'ABOUT';
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
	@override String get searchHint => 'Search languages...';
	@override String get noResults => 'No results found';
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

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersZhTw implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Meal Reminders';
	@override String get subtitle => 'Stay on track with timely alerts';
}

// Path: settings.theme
class _TranslationsSettingsThemeZhTw implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Theme';
	@override String get light => 'Light';
	@override String get dark => 'Dark';
	@override String get system => 'System';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackZhTw implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Send Feedback';
	@override String subtitle({required Object appLabel}) => 'Help us improve ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} App Feedback';
	@override String get emailBodyPrefix => 'Please provide your feedback below:';
	@override String get appVersion => 'App Version';
	@override String get device => 'Device';
	@override String get osVersion => 'OS Version';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryZhTw implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Export Meal History';
	@override String get subtitle => 'Share a CSV of your logged meals';
	@override String get shareText => 'Your Calorify meal history export';
	@override String failed({required Object error}) => 'Could not export meal history: ${error}';
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

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectZhTw implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'View and manage permissions';
	@override late final _TranslationsSettingsHealthConnectUnavailableZhTw unavailable = _TranslationsSettingsHealthConnectUnavailableZhTw._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsZhTw permissions = _TranslationsSettingsHealthConnectPermissionsZhTw._(_root);
	@override String get managePermissions => 'Manage Permissions';
	@override String get openSettings => 'Open Health Connect Settings';
	@override String get requestPermissions => 'Request Permissions';
	@override String get permissionRequestCancelledOrFailed => 'Permission request was cancelled or failed. Please try again or grant permissions manually in Health Connect settings.';
	@override String get permissionRequestFailed => 'Unable to request permissions. Please try again or grant permissions manually in Health Connect settings.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutZhTw implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'About';
	@override String get tagline => 'Fast, free, and privacy-first calorie awareness';
	@override late final _TranslationsSettingsAboutOurStoryZhTw ourStory = _TranslationsSettingsAboutOurStoryZhTw._(_root);
	@override late final _TranslationsSettingsAboutPrivacyZhTw privacy = _TranslationsSettingsAboutPrivacyZhTw._(_root);
	@override late final _TranslationsSettingsAboutDeveloperZhTw developer = _TranslationsSettingsAboutDeveloperZhTw._(_root);
	@override late final _TranslationsSettingsAboutFeedbackZhTw feedback = _TranslationsSettingsAboutFeedbackZhTw._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoZhTw implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
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
	@override String description({required Object appLabel}) => '${appLabel} provides estimated nutritional info. Accuracy depends on your input & food variations. Use as a guide, not a definitive source. Consult a professional for personalized dietary advice.';
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

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsZhTw implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get description => 'These metrics help you understand your body\'s energy needs and guide your nutrition goals.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrZhTw bmr = _TranslationsDisclaimerHealthMetricsBmrZhTw._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeZhTw tdee = _TranslationsDisclaimerHealthMetricsTdeeZhTw._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalZhTw dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalZhTw._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureZhTw implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calorie Expenditure Estimate';
	@override String get description => 'When Health Connect data is unavailable, we estimate today\'s calories burned using your Basal Metabolic Rate (BMR) and activity level (TDEE), scaled for the portion of the day that has passed.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhTw howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhTw._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhTw professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhTw._(_root);
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
	@override String overweight({required Object appLabel}) => '${appLabel} will simplify your journey with AI-powered tracking to help you reach your target comfortably.';
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
	@override String closingMessage({required Object appLabel}) => '${appLabel} makes it 10x easier than doing it manually.';
	@override String get getStartedTitle => 'Ready to get started?';
	@override String get tipPhoto => 'Take a photo of your meals for instant analysis';
	@override String get tipConsistency => 'Log consistently to see meaningful progress';
	@override String get tipProgress => 'Track your progress daily to stay motivated';
	@override String get button => 'Let\'s Go';
	@override String get defaultGender => 'individual';
	@override String get defaultGoal => 'healthier you';
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
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'You\'ve taken the first step towards ${goalText}. Since you\'re ${activityText}, ${appLabel} will adjust your targets to match your lifestyle.';
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

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableZhTw implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect Unavailable';
	@override String get description => 'Health Connect is not available on this device. Please install Health Connect from the Play Store (Android 9+) or update to Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsZhTw implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permissions';
	@override String get description => 'The following permissions are requested to provide Health Connect integration:';
	@override String get granted => 'Granted';
	@override String get notGranted => 'Not Granted';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhTw caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhTw._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadZhTw nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadZhTw._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhTw nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhTw._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryZhTw implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Our Story';
	@override String content({required Object appLabel}) => '${appLabel} was born from a simple frustration: most calorie tracking apps are either overly complicated, demand constant manual input, charge high subscription fees, or compromise on privacy.\n\nAs a solo developer, I wanted to build something simpler and fairer — an app that uses AI to reduce effort, stays fast and free to use, and treats your health data with respect.\n\n${appLabel} is the app I wish existed: no accounts, no tracking, no ads — just clear, practical insights and your health goals.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyZhTw implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Your Privacy Matters';
	@override String get description => 'Privacy isn\'t an afterthought — it\'s a design principle. Here\'s what that means in practice:';
	@override String get noAccounts => 'No accounts required\nUse the app immediately. No sign-ups, no identities.';
	@override String noTracking({required Object appLabel}) => 'No behavioral tracking\n${appLabel} does not monitor your activity, build usage profiles, or track you across apps or websites.';
	@override String noAds({required Object appLabel}) => 'Ad-free by design\n${appLabel} is built to work without ads or data-driven monetization.';
	@override String get noDataSelling => 'No data selling\nYour health data is never sold or shared with third parties.';
	@override String get localStorage => 'Local-first storage\nYour data stays on your device.';
	@override String get privacyPolicy => 'Privacy Policy';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperZhTw implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Built by a Solo Developer';
	@override String description({required Object appLabel}) => '${appLabel} is built and maintained by a single solo developer focused on creating calm, privacy-respecting health software.\n\nFeedback is read personally and helps shape the direction of the app.';
	@override String get website => 'Website';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackZhTw implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Enjoying ${appLabel}?';
	@override String description({required Object appLabel}) => 'Your feedback helps make ${appLabel} better for everyone.';
	@override String get rateApp => 'Rate on Play Store';
	@override String get sendFeedback => 'Send Feedback';
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
	@override String description({required Object appLabel}) => 'Cooking methods can significantly alter the nutritional content of food. ${appLabel}\'s estimates may not always account for these variations.';
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
	@override String description({required Object appLabel}) => '${appLabel}\'s food database is extensive but may not include every single food item or variation.';
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
	@override String description({required Object appLabel}) => 'Actual weight loss/gain is influenced by metabolism, hormones, sleep, stress, hydration, and other individual factors that ${appLabel} cannot measure.';
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

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrZhTw implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) is the number of calories your body burns at rest to maintain basic functions like breathing and circulation. BMR depends on your age, gender, height, and weight. A higher BMR means your body naturally burns more calories at rest, often due to more muscle mass, younger age, or being male. A lower BMR typically indicates less muscle mass, older age, or being female.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeZhTw implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) is the total calories you burn per day, including your BMR plus calories from physical activity and daily movement. TDEE depends on your BMR and activity level. A higher TDEE means you burn more calories overall, usually from being more active or having a higher BMR. A lower TDEE suggests less daily activity or a lower BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalZhTw implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Daily Goal';
	@override String get description => 'Daily Goal is your recommended daily calorie intake based on your TDEE and weight goal. For weight loss, you consume fewer calories than your TDEE. For weight maintenance, you match your TDEE. For weight gain, you consume more calories than your TDEE. This helps you achieve your desired weight change at a healthy pace.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhTw implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'How The Estimate Is Calculated';
	@override String get description => 'We compute your TDEE (based on your profile) and multiply it by the fraction of the day elapsed (hours + minutes) / 24 to estimate calories burned so far.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhTw implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professional Guidance';
	@override String get description => 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhTw implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Read Total Calories Burned';
	@override String get description => 'Allows the app to read your total calories burned from Health Connect.';
	@override String get usage => 'This permission is used to display your daily calorie burn in the app, helping you understand your total energy expenditure throughout the day.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadZhTw implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Read Nutrition Data';
	@override String get description => 'Allows the app to read nutrition data from Health Connect.';
	@override String get usage => 'This permission allows the app to read nutrition information that may have been logged by other apps connected to Health Connect, providing a comprehensive view of your nutrition.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhTw implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Write Nutrition Data';
	@override String get description => 'Allows the app to write nutrition data to Health Connect.';
	@override String get usage => 'This permission allows the app to sync your logged meals to Health Connect, making your nutrition data available to other health and fitness apps you use.';
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
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'You\'ve made too many requests. Please wait a moment before trying again.',
			'errors.networkError' => 'Network error. Please check your internet connection.',
			'errors.unknownError' => 'Something went wrong. Please try again later.',
			'errors.loadingProfileData' => 'Error loading profile data',
			'errors.somethingWentWrong' => 'Something went wrong.',
			'errors.retry' => 'Retry',
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
			'onboarding.bmiScale.underweight' => 'Under',
			'onboarding.bmiScale.healthy' => 'Healthy',
			'onboarding.bmiScale.overweight' => 'Over',
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
			'home.aiSummary.title' => 'Your AI Summary',
			'home.aiSummary.logMore' => 'Log more meals over the next few days to get your personalized AI insights.',
			'home.aiSummary.loading' => 'Loading your summary...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} meals logged',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balance score ${score}',
			'home.aiSummary.topFoods' => 'Top foods',
			'home.aiSummary.trendUp' => 'Calories trending up',
			'home.aiSummary.trendDown' => 'Calories trending down',
			'home.aiSummary.trendSteady' => 'Calories staying steady',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Updated ${time}',
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
			'home.intakeHistory.trendTitle' => 'Today\'s Trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Peak: ${hour}:00',
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
			'home.mealSnap.compressingPhoto' => 'Optimizing photo…',
			'home.mealSnap.uploadingPhoto' => 'Uploading photo…',
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
			'meal.unfavorite' => 'Unfavorite',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Could not update favorite: ${error}',
			'meal.feedbackThanks' => 'Thanks for the feedback!',
			'meal.reanalysisUpdated' => 'Updated the meal analysis based on your feedback.',
			'meal.failedToProcess' => ({required Object error}) => 'Failed to process: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Failed to process image: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Error compressing image: ${error}',
			'meal.failedToSave' => 'Failed to save data. Please try again.',
			'meal.skip' => 'Skip',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Question ${current} of ${total}',
			'meal.variation.noVariationsAvailable' => 'No variations available',
			'meal.analysis.title' => 'AI meal analysis',
			'meal.analysis.reassurance' => 'This usually takes a few seconds.',
			'meal.analysis.stepStarted' => 'Getting started…',
			'meal.analysis.stepDecomposition' => 'Understanding your meal…',
			'meal.analysis.stepIngredients' => 'Matching ingredients to nutrition data…',
			'meal.analysis.stepUncertainty' => 'Checking confidence…',
			'meal.analysis.stepMealTypeQuestion' => 'Almost there…',
			'meal.analysis.stepResult' => 'Finalizing your result…',
			'meal.analysis.stepError' => 'Something went wrong',
			'meal.analysis.stepDefault' => 'Analyzing your meal…',
			'meal.analysis.progressUnderstand' => 'Understand',
			'meal.analysis.progressMatch' => 'Match',
			'meal.analysis.progressCheck' => 'Check',
			'meal.analysis.progressFinish' => 'Finish',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredients detected',
			'meal.analysis.ingredientsPending' => 'Scanning ingredients…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => '哪裡不對?',
			'meal.feedback.subtitle' => '選擇一個或多個問題,協助我們改善分析。',
			'meal.feedback.tellUsMore' => '告訴我們更多',
			'meal.feedback.describeIncorrect' => '描述哪裡不正確',
			'meal.feedback.submit' => '送出',
			'meal.feedback.issueFoodIdentification' => '食物辨識',
			'meal.feedback.issuePortionSize' => '份量大小',
			'meal.feedback.issueCalorieDistribution' => '熱量分布',
			'meal.feedback.issueMacrosWrong' => '巨量營養素錯誤',
			'meal.feedback.issueMissingItems' => '缺少項目',
			'meal.feedback.issueExtraItems' => '多餘項目',
			'meal.feedback.issueOther' => '其他',
			'favorites.title' => 'Favorites',
			'favorites.empty' => 'No favorite meals yet.',
			'favorites.searchPlaceholder' => 'Search favorite meals',
			'favorites.searchEmptyTitle' => 'No favorites match your search',
			'favorites.searchEmptySubtitle' => 'Try a different meal name, quantity, or meal type.',
			'favorites.sortLabel' => 'Sort favorites',
			'favorites.undo' => 'Undo',
			'favorites.removed' => ({required Object name}) => 'Removed ${name} from favorites',
			'favorites.sortOptions.recent' => 'Recent',
			'favorites.sortOptions.calories' => 'Calories',
			'favorites.sortOptions.alphabetical' => 'A-Z',
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
			'settings.exportMealHistory.title' => 'Export Meal History',
			'settings.exportMealHistory.subtitle' => 'Share a CSV of your logged meals',
			'settings.exportMealHistory.shareText' => 'Your Calorify meal history export',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Could not export meal history: ${error}',
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
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Permission request was cancelled or failed. Please try again or grant permissions manually in Health Connect settings.',
			'settings.healthConnect.permissionRequestFailed' => 'Unable to request permissions. Please try again or grant permissions manually in Health Connect settings.',
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
			'health.syncFailed' => 'Could not sync to Health Connect',
			'health.mealSynced' => 'Meal synced with Health Connect',
			_ => null,
		};
	}
}
