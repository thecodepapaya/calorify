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

	late final Translations$errors$en errors = Translations$errors$en.internal(_root);
	late final Translations$onboarding$en onboarding = Translations$onboarding$en.internal(_root);
	late final Translations$tabs$en tabs = Translations$tabs$en.internal(_root);
	late final Translations$home$en home = Translations$home$en.internal(_root);
	late final Translations$history$en history = Translations$history$en.internal(_root);
	late final Translations$meal$en meal = Translations$meal$en.internal(_root);
	late final Translations$favorites$en favorites = Translations$favorites$en.internal(_root);
	late final Translations$profile$en profile = Translations$profile$en.internal(_root);
	late final Translations$healthScore$en healthScore = Translations$healthScore$en.internal(_root);
	late final Translations$editProfile$en editProfile = Translations$editProfile$en.internal(_root);
	late final Translations$settings$en settings = Translations$settings$en.internal(_root);
	late final Translations$reminders$en reminders = Translations$reminders$en.internal(_root);
	late final Translations$notifications$en notifications = Translations$notifications$en.internal(_root);
	late final Translations$login$en login = Translations$login$en.internal(_root);
	late final Translations$disclaimer$en disclaimer = Translations$disclaimer$en.internal(_root);
	late final Translations$localNutritionPhase4$en localNutritionPhase4 = Translations$localNutritionPhase4$en.internal(_root);
	late final Translations$watch$en watch = Translations$watch$en.internal(_root);
	late final Translations$common$en common = Translations$common$en.internal(_root);
	late final Translations$feedbackRating$en feedbackRating = Translations$feedbackRating$en.internal(_root);
	late final Translations$health$en health = Translations$health$en.internal(_root);
}

// Path: errors
class Translations$errors$en {
	Translations$errors$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'You've made too many requests. Please wait a moment before trying again.'
	String get rateLimitExceeded => 'You\'ve made too many requests. Please wait a moment before trying again.';

	/// en: 'Network error. Please check your internet connection.'
	String get networkError => 'Network error. Please check your internet connection.';

	/// en: 'Something went wrong. Please try again later.'
	String get unknownError => 'Something went wrong. Please try again later.';

	/// en: 'Error loading profile data'
	String get loadingProfileData => 'Error loading profile data';

	/// en: 'Something went wrong.'
	String get somethingWentWrong => 'Something went wrong.';

	/// en: 'Retry'
	String get retry => 'Retry';
}

// Path: onboarding
class Translations$onboarding$en {
	Translations$onboarding$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Welcome to {appLabel}'
	String welcome({required Object appLabel}) => 'Welcome to ${appLabel}';

	/// en: 'Your personal nutrition companion powered by AI'
	String get subtitle => 'Your personal nutrition companion powered by AI';

	/// en: 'Get Started'
	String get getStarted => 'Get Started';

	late final Translations$onboarding$features$en features = Translations$onboarding$features$en.internal(_root);
	late final Translations$onboarding$gender$en gender = Translations$onboarding$gender$en.internal(_root);
	late final Translations$onboarding$height$en height = Translations$onboarding$height$en.internal(_root);
	late final Translations$onboarding$weight$en weight = Translations$onboarding$weight$en.internal(_root);
	late final Translations$onboarding$age$en age = Translations$onboarding$age$en.internal(_root);
	late final Translations$onboarding$bmiScale$en bmiScale = Translations$onboarding$bmiScale$en.internal(_root);
	late final Translations$onboarding$weightGoal$en weightGoal = Translations$onboarding$weightGoal$en.internal(_root);
	late final Translations$onboarding$activityLevel$en activityLevel = Translations$onboarding$activityLevel$en.internal(_root);
	late final Translations$onboarding$healthConnect$en healthConnect = Translations$onboarding$healthConnect$en.internal(_root);
	late final Translations$onboarding$reinforcement$en reinforcement = Translations$onboarding$reinforcement$en.internal(_root);
}

// Path: tabs
class Translations$tabs$en {
	Translations$tabs$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Dashboard'
	String get dashboard => 'Dashboard';

	/// en: 'History'
	String get history => 'History';
}

// Path: home
class Translations$home$en {
	Translations$home$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final Translations$home$aiSummary$en aiSummary = Translations$home$aiSummary$en.internal(_root);
	late final Translations$home$dailyGoal$en dailyGoal = Translations$home$dailyGoal$en.internal(_root);
	late final Translations$home$dailySummary$en dailySummary = Translations$home$dailySummary$en.internal(_root);
	late final Translations$home$intakeProgress$en intakeProgress = Translations$home$intakeProgress$en.internal(_root);
	late final Translations$home$intakeHistory$en intakeHistory = Translations$home$intakeHistory$en.internal(_root);
	late final Translations$home$mealLog$en mealLog = Translations$home$mealLog$en.internal(_root);
	late final Translations$home$mealDescription$en mealDescription = Translations$home$mealDescription$en.internal(_root);
	late final Translations$home$favoriteMeals$en favoriteMeals = Translations$home$favoriteMeals$en.internal(_root);
	late final Translations$home$mealSnap$en mealSnap = Translations$home$mealSnap$en.internal(_root);
	late final Translations$home$connectHealth$en connectHealth = Translations$home$connectHealth$en.internal(_root);
}

// Path: history
class Translations$history$en {
	Translations$history$en.internal(this._root);

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
class Translations$meal$en {
	Translations$meal$en.internal(this._root);

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

	/// en: 'Enter a meal name before saving.'
	String get nameRequired => 'Enter a meal name before saving.';

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

	late final Translations$meal$nutrition$en nutrition = Translations$meal$nutrition$en.internal(_root);
	late final Translations$meal$deleteConfirmation$en deleteConfirmation = Translations$meal$deleteConfirmation$en.internal(_root);

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

	/// en: 'Unfavorite'
	String get unfavorite => 'Unfavorite';

	/// en: 'Could not update favorite: {error}'
	String couldNotUpdateFavorite({required Object error}) => 'Could not update favorite: ${error}';

	/// en: 'Thanks for the feedback!'
	String get feedbackThanks => 'Thanks for the feedback!';

	/// en: 'Updated the meal analysis based on your feedback.'
	String get reanalysisUpdated => 'Updated the meal analysis based on your feedback.';

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

	late final Translations$meal$questionFlow$en questionFlow = Translations$meal$questionFlow$en.internal(_root);
	late final Translations$meal$analysis$en analysis = Translations$meal$analysis$en.internal(_root);
	late final Translations$meal$localInference$en localInference = Translations$meal$localInference$en.internal(_root);
	late final Translations$meal$feedback$en feedback = Translations$meal$feedback$en.internal(_root);
}

// Path: favorites
class Translations$favorites$en {
	Translations$favorites$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Favorites'
	String get title => 'Favorites';

	/// en: 'No favorite meals yet.'
	String get empty => 'No favorite meals yet.';

	/// en: 'Search favorite meals'
	String get searchPlaceholder => 'Search favorite meals';

	/// en: 'No favorites match your search'
	String get searchEmptyTitle => 'No favorites match your search';

	/// en: 'Try a different meal name, quantity, or meal type.'
	String get searchEmptySubtitle => 'Try a different meal name, quantity, or meal type.';

	/// en: 'Sort favorites'
	String get sortLabel => 'Sort favorites';

	/// en: 'Undo'
	String get undo => 'Undo';

	/// en: 'Removed {name} from favorites'
	String removed({required Object name}) => 'Removed ${name} from favorites';

	late final Translations$favorites$sortOptions$en sortOptions = Translations$favorites$sortOptions$en.internal(_root);
}

// Path: profile
class Translations$profile$en {
	Translations$profile$en.internal(this._root);

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

	late final Translations$profile$sections$en sections = Translations$profile$sections$en.internal(_root);

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

	late final Translations$profile$calculatedValues$en calculatedValues = Translations$profile$calculatedValues$en.internal(_root);
}

// Path: healthScore
class Translations$healthScore$en {
	Translations$healthScore$en.internal(this._root);

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
class Translations$editProfile$en {
	Translations$editProfile$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Profile'
	String get title => 'Edit Profile';

	late final Translations$editProfile$sections$en sections = Translations$editProfile$sections$en.internal(_root);

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

	late final Translations$editProfile$genders$en genders = Translations$editProfile$genders$en.internal(_root);
	late final Translations$editProfile$weightGoals$en weightGoals = Translations$editProfile$weightGoals$en.internal(_root);
	late final Translations$editProfile$activityLevels$en activityLevels = Translations$editProfile$activityLevels$en.internal(_root);
}

// Path: settings
class Translations$settings$en {
	Translations$settings$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Settings'
	String get title => 'Settings';

	late final Translations$settings$sections$en sections = Translations$settings$sections$en.internal(_root);
	late final Translations$settings$editProfile$en editProfile = Translations$settings$editProfile$en.internal(_root);
	late final Translations$settings$language$en language = Translations$settings$language$en.internal(_root);
	late final Translations$settings$heightUnit$en heightUnit = Translations$settings$heightUnit$en.internal(_root);
	late final Translations$settings$weightUnit$en weightUnit = Translations$settings$weightUnit$en.internal(_root);
	late final Translations$settings$mealReminders$en mealReminders = Translations$settings$mealReminders$en.internal(_root);
	late final Translations$settings$localInference$en localInference = Translations$settings$localInference$en.internal(_root);
	late final Translations$settings$theme$en theme = Translations$settings$theme$en.internal(_root);
	late final Translations$settings$sendFeedback$en sendFeedback = Translations$settings$sendFeedback$en.internal(_root);
	late final Translations$settings$exportMealHistory$en exportMealHistory = Translations$settings$exportMealHistory$en.internal(_root);
	late final Translations$settings$clearAllData$en clearAllData = Translations$settings$clearAllData$en.internal(_root);
	late final Translations$settings$debugOptions$en debugOptions = Translations$settings$debugOptions$en.internal(_root);

	/// en: 'Developer mode enabled!'
	String get developerModeEnabled => 'Developer mode enabled!';

	late final Translations$settings$healthConnect$en healthConnect = Translations$settings$healthConnect$en.internal(_root);
	late final Translations$settings$about$en about = Translations$settings$about$en.internal(_root);
	late final Translations$settings$appInfo$en appInfo = Translations$settings$appInfo$en.internal(_root);
}

// Path: reminders
class Translations$reminders$en {
	Translations$reminders$en.internal(this._root);

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
class Translations$notifications$en {
	Translations$notifications$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final Translations$notifications$breakfast$en breakfast = Translations$notifications$breakfast$en.internal(_root);
	late final Translations$notifications$lunch$en lunch = Translations$notifications$lunch$en.internal(_root);
	late final Translations$notifications$dinner$en dinner = Translations$notifications$dinner$en.internal(_root);
	late final Translations$notifications$snack$en snack = Translations$notifications$snack$en.internal(_root);
	late final Translations$notifications$test$en test = Translations$notifications$test$en.internal(_root);
}

// Path: login
class Translations$login$en {
	Translations$login$en.internal(this._root);

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
class Translations$disclaimer$en {
	Translations$disclaimer$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please Note'
	String get pleaseNote => 'Please Note';

	late final Translations$disclaimer$snap$en snap = Translations$disclaimer$snap$en.internal(_root);
	late final Translations$disclaimer$weightEstimate$en weightEstimate = Translations$disclaimer$weightEstimate$en.internal(_root);
	late final Translations$disclaimer$healthMetrics$en healthMetrics = Translations$disclaimer$healthMetrics$en.internal(_root);
	late final Translations$disclaimer$calorieExpenditure$en calorieExpenditure = Translations$disclaimer$calorieExpenditure$en.internal(_root);
}

// Path: localNutritionPhase4
class Translations$localNutritionPhase4$en {
	Translations$localNutritionPhase4$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Nutrition matched from the downloaded USDA pack'
	String get nutritionBundled => 'Nutrition matched from the downloaded USDA pack';

	/// en: 'Nutrition matched from the on-device USDA cache'
	String get nutritionCached => 'Nutrition matched from the on-device USDA cache';

	/// en: 'Nutrition combined from downloaded, cached, and remote USDA rows'
	String get nutritionMixed => 'Nutrition combined from downloaded, cached, and remote USDA rows';

	/// en: 'Calories and macros calculated on this device'
	String get calculationLocal => 'Calories and macros calculated on this device';

	/// en: '{ingredient}: downloaded USDA pack'
	String ingredientBundled({required Object ingredient}) => '${ingredient}: downloaded USDA pack';

	/// en: '{ingredient}: on-device USDA cache'
	String ingredientCached({required Object ingredient}) => '${ingredient}: on-device USDA cache';

	/// en: '{ingredient}: USDA row fetched through Calorify'
	String ingredientRemote({required Object ingredient}) => '${ingredient}: USDA row fetched through Calorify';

	/// en: '{ingredient}: deterministic nutrition constant'
	String ingredientDeterministic({required Object ingredient}) => '${ingredient}: deterministic nutrition constant';

	/// en: 'FDC {fdcId} · dataset {datasetVersion}'
	String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · dataset ${datasetVersion}';

	/// en: 'Smaller'
	String get portionSmaller => 'Smaller';

	/// en: 'Estimated'
	String get portionEstimated => 'Estimated';

	/// en: 'Larger'
	String get portionLarger => 'Larger';

	/// en: 'Which portion was closest for {ingredient}?'
	String portionQuestion({required Object ingredient}) => 'Which portion was closest for ${ingredient}?';

	/// en: 'Which meal was this?'
	String get mealTypeQuestion => 'Which meal was this?';

	/// en: 'Calculated from verified local nutrition data.'
	String get localNutritionTip => 'Calculated from verified local nutrition data.';

	/// en: 'Download nutrition data'
	String get offlineNutritionTitle => 'Download nutrition data';

	/// en: 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.'
	String get offlineNutritionSubtitle => 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.';

	/// en: 'Local nutrition data is not available for this app release.'
	String get offlineNutritionUnavailable => 'Local nutrition data is not available for this app release.';

	/// en: 'No verified nutrition pack is downloaded.'
	String get offlineNutritionNotDownloaded => 'No verified nutrition pack is downloaded.';

	/// en: 'Downloading and verifying nutrition data…'
	String get offlineNutritionInstalling => 'Downloading and verifying nutrition data…';

	/// en: 'Pack {version} · {size} · USDA {datasetVersion}'
	String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Pack ${version} · ${size} · USDA ${datasetVersion}';

	/// en: '{count} cached USDA rows · {size}'
	String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} cached USDA rows · ${size}';

	/// en: 'Check for update'
	String get offlineNutritionUpdate => 'Check for update';

	/// en: 'Clear local nutrition data'
	String get offlineNutritionClear => 'Clear local nutrition data';

	/// en: 'Clear local nutrition data?'
	String get offlineNutritionClearTitle => 'Clear local nutrition data?';

	/// en: 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.'
	String get offlineNutritionClearBody => 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.';

	/// en: 'Clear data'
	String get offlineNutritionClearConfirm => 'Clear data';

	/// en: 'Could not download and verify local nutrition data: {error}'
	String offlineNutritionInstallFailed({required Object error}) => 'Could not download and verify local nutrition data: ${error}';

	/// en: 'Local nutrition data cleared'
	String get offlineNutritionCleared => 'Local nutrition data cleared';
}

// Path: watch
class Translations$watch$en {
	Translations$watch$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Calorify Watch'
	String get appTitle => 'Calorify Watch';

	late final Translations$watch$common$en common = Translations$watch$common$en.internal(_root);
	late final Translations$watch$nutrition$en nutrition = Translations$watch$nutrition$en.internal(_root);
	late final Translations$watch$sync$en sync = Translations$watch$sync$en.internal(_root);
	late final Translations$watch$home$en home = Translations$watch$home$en.internal(_root);
	late final Translations$watch$history$en history = Translations$watch$history$en.internal(_root);
	late final Translations$watch$favorites$en favorites = Translations$watch$favorites$en.internal(_root);
	late final Translations$watch$meal$en meal = Translations$watch$meal$en.internal(_root);
	late final Translations$watch$voice$en voice = Translations$watch$voice$en.internal(_root);
	late final Translations$watch$result$en result = Translations$watch$result$en.internal(_root);
}

// Path: common
class Translations$common$en {
	Translations$common$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Beta'
	String get betaTag => 'Beta';

	/// en: 'Close'
	String get close => 'Close';

	/// en: 'Continue'
	String get kContinue => 'Continue';
}

// Path: feedbackRating
class Translations$feedbackRating$en {
	Translations$feedbackRating$en.internal(this._root);

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

// Path: health
class Translations$health$en {
	Translations$health$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Could not sync to Health Connect'
	String get syncFailed => 'Could not sync to Health Connect';

	/// en: 'Meal synced with Health Connect'
	String get mealSynced => 'Meal synced with Health Connect';
}

// Path: onboarding.features
class Translations$onboarding$features$en {
	Translations$onboarding$features$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final Translations$onboarding$features$foodRecognition$en foodRecognition = Translations$onboarding$features$foodRecognition$en.internal(_root);
	late final Translations$onboarding$features$aiAnalysis$en aiAnalysis = Translations$onboarding$features$aiAnalysis$en.internal(_root);
	late final Translations$onboarding$features$healthIntegration$en healthIntegration = Translations$onboarding$features$healthIntegration$en.internal(_root);
}

// Path: onboarding.gender
class Translations$onboarding$gender$en {
	Translations$onboarding$gender$en.internal(this._root);

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
class Translations$onboarding$height$en {
	Translations$onboarding$height$en.internal(this._root);

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
class Translations$onboarding$weight$en {
	Translations$onboarding$weight$en.internal(this._root);

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
class Translations$onboarding$age$en {
	Translations$onboarding$age$en.internal(this._root);

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
class Translations$onboarding$bmiScale$en {
	Translations$onboarding$bmiScale$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Under'
	String get underweight => 'Under';

	/// en: 'Healthy'
	String get healthy => 'Healthy';

	/// en: 'Over'
	String get overweight => 'Over';

	/// en: 'Obese'
	String get obese => 'Obese';

	late final Translations$onboarding$bmiScale$categories$en categories = Translations$onboarding$bmiScale$categories$en.internal(_root);
	late final Translations$onboarding$bmiScale$messages$en messages = Translations$onboarding$bmiScale$messages$en.internal(_root);
}

// Path: onboarding.weightGoal
class Translations$onboarding$weightGoal$en {
	Translations$onboarding$weightGoal$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What's your goal?'
	String get title => 'What\'s your goal?';

	/// en: 'Choose the goal that best describes what you want to achieve'
	String get description => 'Choose the goal that best describes what you want to achieve';
}

// Path: onboarding.activityLevel
class Translations$onboarding$activityLevel$en {
	Translations$onboarding$activityLevel$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'How active are you?'
	String get title => 'How active are you?';

	/// en: 'This helps us calculate your daily calorie needs more accurately'
	String get description => 'This helps us calculate your daily calorie needs more accurately';
}

// Path: onboarding.healthConnect
class Translations$onboarding$healthConnect$en {
	Translations$onboarding$healthConnect$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Connect with Health Connect'
	String get title => 'Connect with Health Connect';

	/// en: 'Use calories burned in your daily goal and optionally share logged meals with Health Connect.'
	String get description => 'Use calories burned in your daily goal and optionally share logged meals with Health Connect.';

	/// en: 'Use calories burned in your daily goal and optionally share logged meals with Health Connect.'
	String get overviewDescription => 'Use calories burned in your daily goal and optionally share logged meals with Health Connect.';

	late final Translations$onboarding$healthConnect$automaticTracking$en automaticTracking = Translations$onboarding$healthConnect$automaticTracking$en.internal(_root);
	late final Translations$onboarding$healthConnect$caloriesBurned$en caloriesBurned = Translations$onboarding$healthConnect$caloriesBurned$en.internal(_root);
	late final Translations$onboarding$healthConnect$progressInsights$en progressInsights = Translations$onboarding$healthConnect$progressInsights$en.internal(_root);
	late final Translations$onboarding$healthConnect$shareLoggedMeals$en shareLoggedMeals = Translations$onboarding$healthConnect$shareLoggedMeals$en.internal(_root);
	late final Translations$onboarding$healthConnect$seamlessIntegration$en seamlessIntegration = Translations$onboarding$healthConnect$seamlessIntegration$en.internal(_root);
	late final Translations$onboarding$healthConnect$userControl$en userControl = Translations$onboarding$healthConnect$userControl$en.internal(_root);

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

	/// en: 'Choose the Health Connect features you want to enable.'
	String get statusNotConnected => 'Choose the Health Connect features you want to enable.';

	/// en: 'Health Connect is partially connected. Enable the remaining permission to use both features.'
	String get statusPartial => 'Health Connect is partially connected. Enable the remaining permission to use both features.';

	/// en: 'Install or update Health Connect to continue.'
	String get statusProviderUpdateRequired => 'Install or update Health Connect to continue.';

	/// en: 'Health Connect is not supported on this device.'
	String get statusUnavailable => 'Health Connect is not supported on this device.';

	/// en: 'Install or update'
	String get installOrUpdate => 'Install or update';

	/// en: 'Manage access'
	String get manageAccess => 'Manage access';

	/// en: 'Permission denied. Please enable Health Connect permissions from your phone settings for {appLabel}.'
	String statusPermissionDenied({required Object appLabel}) => 'Permission denied. Please enable Health Connect permissions from your phone settings for ${appLabel}.';

	/// en: 'Error setting up Health Connect: {error}'
	String statusError({required Object error}) => 'Error setting up Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class Translations$onboarding$reinforcement$en {
	Translations$onboarding$reinforcement$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final Translations$onboarding$reinforcement$trackingSuccess$en trackingSuccess = Translations$onboarding$reinforcement$trackingSuccess$en.internal(_root);
	late final Translations$onboarding$reinforcement$healthProfile$en healthProfile = Translations$onboarding$reinforcement$healthProfile$en.internal(_root);
	late final Translations$onboarding$reinforcement$goalLifestyle$en goalLifestyle = Translations$onboarding$reinforcement$goalLifestyle$en.internal(_root);
}

// Path: home.aiSummary
class Translations$home$aiSummary$en {
	Translations$home$aiSummary$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your AI Summary'
	String get title => 'Your AI Summary';

	/// en: 'Log more meals over the next few days to get your personalized AI insights.'
	String get logMore => 'Log more meals over the next few days to get your personalized AI insights.';

	/// en: 'Loading your summary...'
	String get loading => 'Loading your summary...';

	/// en: '{count} meals logged'
	String mealCount({required Object count}) => '${count} meals logged';

	/// en: 'Balance score {score}'
	String macroBalanceScore({required Object score}) => 'Balance score ${score}';

	/// en: 'Top foods'
	String get topFoods => 'Top foods';

	/// en: 'Calories trending up'
	String get trendUp => 'Calories trending up';

	/// en: 'Calories trending down'
	String get trendDown => 'Calories trending down';

	/// en: 'Calories staying steady'
	String get trendSteady => 'Calories staying steady';

	/// en: 'Updated {time}'
	String generatedAt({required Object time}) => 'Updated ${time}';
}

// Path: home.dailyGoal
class Translations$home$dailyGoal$en {
	Translations$home$dailyGoal$en.internal(this._root);

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
class Translations$home$dailySummary$en {
	Translations$home$dailySummary$en.internal(this._root);

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
class Translations$home$intakeProgress$en {
	Translations$home$intakeProgress$en.internal(this._root);

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
class Translations$home$intakeHistory$en {
	Translations$home$intakeHistory$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '7-Day Macro History'
	String get title => '7-Day Macro History';

	/// en: 'Today's Trend'
	String get trendTitle => 'Today\'s Trend';

	/// en: 'Peak: {hour}:00'
	String peakHour({required Object hour}) => 'Peak: ${hour}:00';

	/// en: 'No history yet'
	String get noHistoryYet => 'No history yet';

	/// en: 'Start logging meals to see your 7-day macro trends here'
	String get startLogging => 'Start logging meals to see your\n7-day macro trends here';
}

// Path: home.mealLog
class Translations$home$mealLog$en {
	Translations$home$mealLog$en.internal(this._root);

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
class Translations$home$mealDescription$en {
	Translations$home$mealDescription$en.internal(this._root);

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
class Translations$home$favoriteMeals$en {
	Translations$home$favoriteMeals$en.internal(this._root);

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
class Translations$home$mealSnap$en {
	Translations$home$mealSnap$en.internal(this._root);

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

	/// en: 'Optimizing photo…'
	String get compressingPhoto => 'Optimizing photo…';

	/// en: 'Uploading photo…'
	String get uploadingPhoto => 'Uploading photo…';
}

// Path: home.connectHealth
class Translations$home$connectHealth$en {
	Translations$home$connectHealth$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sync with Health Connect'
	String get title => 'Sync with Health Connect';

	/// en: 'Use calories burned in your goal and share logged meals'
	String get description => 'Use calories burned in your goal and share logged meals';

	/// en: 'Install or update'
	String get install => 'Install or update';

	/// en: 'Use calories burned in your goal and share logged meals'
	String get dataUseDescription => 'Use calories burned in your goal and share logged meals';

	/// en: 'Install or update'
	String get installOrUpdate => 'Install or update';

	/// en: 'Connect'
	String get connect => 'Connect';
}

// Path: meal.nutrition
class Translations$meal$nutrition$en {
	Translations$meal$nutrition$en.internal(this._root);

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
class Translations$meal$deleteConfirmation$en {
	Translations$meal$deleteConfirmation$en.internal(this._root);

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

// Path: meal.questionFlow
class Translations$meal$questionFlow$en {
	Translations$meal$questionFlow$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Question {current} of {total}'
	String progress({required Object current, required Object total}) => 'Question ${current} of ${total}';

	/// en: 'No questions available'
	String get noQuestionsAvailable => 'No questions available';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Continue'
	String get continueLabel => 'Continue';
}

// Path: meal.analysis
class Translations$meal$analysis$en {
	Translations$meal$analysis$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Analyzing your meal'
	String get title => 'Analyzing your meal';

	/// en: 'Getting started…'
	String get stepStarted => 'Getting started…';

	/// en: 'Understanding your meal…'
	String get stepDecomposition => 'Understanding your meal…';

	/// en: 'Matching ingredients to nutrition data…'
	String get stepIngredients => 'Matching ingredients to nutrition data…';

	/// en: 'Checking confidence…'
	String get stepUncertainty => 'Checking confidence…';

	/// en: 'Almost there…'
	String get stepMealTypeQuestion => 'Almost there…';

	/// en: 'Finalizing your result…'
	String get stepResult => 'Finalizing your result…';

	/// en: 'Something went wrong'
	String get stepError => 'Something went wrong';

	/// en: 'Analyzing your meal…'
	String get stepDefault => 'Analyzing your meal…';

	/// en: 'Understanding your meal'
	String get progressUnderstand => 'Understanding your meal';

	/// en: 'Looking up ingredient nutrition'
	String get progressMatch => 'Looking up ingredient nutrition';

	/// en: 'Checking portions and confidence'
	String get progressCheck => 'Checking portions and confidence';

	/// en: 'Choosing meal type'
	String get progressMealType => 'Choosing meal type';

	/// en: 'Calculating calories and macros'
	String get progressFinish => 'Calculating calories and macros';

	/// en: 'Ingredients we're spotting'
	String get detectedIngredientHeading => 'Ingredients we\'re spotting';

	/// en: '{count} more'
	String ingredientsOverflow({required Object count}) => '${count} more';

	/// en: '{count} ingredients detected'
	String ingredientsLine({required Object count}) => '${count} ingredients detected';

	/// en: 'Scanning ingredients…'
	String get ingredientsPending => 'Scanning ingredients…';

	/// en: '"{text}"'
	String mealPreviewDescription({required Object text}) => '"${text}"';

	/// en: 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.'
	String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';

	/// en: 'Tip: For photos, natural light and a top-down view help with portion accuracy.'
	String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';

	/// en: 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.'
	String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';

	/// en: 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.'
	String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';

	/// en: 'Tip: Logging after the meal still builds the habit; perfection is optional.'
	String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';

	/// en: 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).'
	String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.localInference
class Translations$meal$localInference$en {
	Translations$meal$localInference$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Review detected ingredients'
	String get reviewTitle => 'Review detected ingredients';

	/// en: 'This was interpreted on your device. Correct names or portions before nutrition is calculated.'
	String get reviewSubtitle => 'This was interpreted on your device. Correct names or portions before nutrition is calculated.';

	/// en: 'Meal name'
	String get mealName => 'Meal name';

	/// en: 'Ingredient'
	String get ingredient => 'Ingredient';

	/// en: 'Estimated grams'
	String get grams => 'Estimated grams';

	/// en: 'Remove ingredient'
	String get removeIngredient => 'Remove ingredient';

	/// en: 'Continue'
	String get continueLabel => 'Continue';

	/// en: 'Add at least one ingredient and use a positive gram amount.'
	String get invalidProposal => 'Add at least one ingredient and use a positive gram amount.';

	/// en: 'On-device analysis is unavailable right now.'
	String get localUnavailable => 'On-device analysis is unavailable right now.';

	/// en: 'How this was calculated'
	String get calculationDetails => 'How this was calculated';

	/// en: 'Ingredients interpreted on this device'
	String get interpretationLocal => 'Ingredients interpreted on this device';

	/// en: 'Ingredients interpreted in the cloud'
	String get interpretationCloud => 'Ingredients interpreted in the cloud';

	/// en: 'Ingredients reviewed or edited by you'
	String get interpretationManual => 'Ingredients reviewed or edited by you';

	/// en: 'Nutrition fetched from USDA through Calorify'
	String get nutritionRemote => 'Nutrition fetched from USDA through Calorify';

	/// en: 'Some nutrition values were estimated remotely'
	String get nutritionFallback => 'Some nutrition values were estimated remotely';

	/// en: 'Calories and macros calculated by Calorify'
	String get calculationServer => 'Calories and macros calculated by Calorify';

	/// en: 'Local analysis fell back to cloud processing'
	String get fallbackUsed => 'Local analysis fell back to cloud processing';

	/// en: 'Diagnostic receipts do not include your meal text or photo.'
	String get noRawContent => 'Diagnostic receipts do not include your meal text or photo.';
}

// Path: meal.feedback
class Translations$meal$feedback$en {
	Translations$meal$feedback$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What looks wrong?'
	String get title => 'What looks wrong?';

	/// en: 'Help us improve the analysis by selecting one or more issues.'
	String get subtitle => 'Help us improve the analysis by selecting one or more issues.';

	/// en: 'Tell us more'
	String get tellUsMore => 'Tell us more';

	/// en: 'Describe what was incorrect'
	String get describeIncorrect => 'Describe what was incorrect';

	/// en: 'Submit'
	String get submit => 'Submit';

	/// en: 'Food identification'
	String get issueFoodIdentification => 'Food identification';

	/// en: 'Portion size'
	String get issuePortionSize => 'Portion size';

	/// en: 'Calorie distribution'
	String get issueCalorieDistribution => 'Calorie distribution';

	/// en: 'Macros are wrong'
	String get issueMacrosWrong => 'Macros are wrong';

	/// en: 'Missing items'
	String get issueMissingItems => 'Missing items';

	/// en: 'Extra items'
	String get issueExtraItems => 'Extra items';

	/// en: 'Other'
	String get issueOther => 'Other';
}

// Path: favorites.sortOptions
class Translations$favorites$sortOptions$en {
	Translations$favorites$sortOptions$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Recent'
	String get recent => 'Recent';

	/// en: 'Calories'
	String get calories => 'Calories';

	/// en: 'A-Z'
	String get alphabetical => 'A-Z';
}

// Path: profile.sections
class Translations$profile$sections$en {
	Translations$profile$sections$en.internal(this._root);

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
class Translations$profile$calculatedValues$en {
	Translations$profile$calculatedValues$en.internal(this._root);

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
class Translations$editProfile$sections$en {
	Translations$editProfile$sections$en.internal(this._root);

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
class Translations$editProfile$genders$en {
	Translations$editProfile$genders$en.internal(this._root);

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
class Translations$editProfile$weightGoals$en {
	Translations$editProfile$weightGoals$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final Translations$editProfile$weightGoals$loseWeight$en loseWeight = Translations$editProfile$weightGoals$loseWeight$en.internal(_root);
	late final Translations$editProfile$weightGoals$maintainWeight$en maintainWeight = Translations$editProfile$weightGoals$maintainWeight$en.internal(_root);
	late final Translations$editProfile$weightGoals$gainWeight$en gainWeight = Translations$editProfile$weightGoals$gainWeight$en.internal(_root);
}

// Path: editProfile.activityLevels
class Translations$editProfile$activityLevels$en {
	Translations$editProfile$activityLevels$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final Translations$editProfile$activityLevels$sedentary$en sedentary = Translations$editProfile$activityLevels$sedentary$en.internal(_root);
	late final Translations$editProfile$activityLevels$lightlyActive$en lightlyActive = Translations$editProfile$activityLevels$lightlyActive$en.internal(_root);
	late final Translations$editProfile$activityLevels$moderatelyActive$en moderatelyActive = Translations$editProfile$activityLevels$moderatelyActive$en.internal(_root);
	late final Translations$editProfile$activityLevels$veryActive$en veryActive = Translations$editProfile$activityLevels$veryActive$en.internal(_root);
	late final Translations$editProfile$activityLevels$extremelyActive$en extremelyActive = Translations$editProfile$activityLevels$extremelyActive$en.internal(_root);
}

// Path: settings.sections
class Translations$settings$sections$en {
	Translations$settings$sections$en.internal(this._root);

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

	/// en: 'ON-DEVICE ANALYSIS'
	String get localInference => 'ON-DEVICE ANALYSIS';

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
class Translations$settings$editProfile$en {
	Translations$settings$editProfile$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Profile'
	String get title => 'Edit Profile';

	/// en: 'Update your personal information'
	String get subtitle => 'Update your personal information';
}

// Path: settings.language
class Translations$settings$language$en {
	Translations$settings$language$en.internal(this._root);

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
class Translations$settings$heightUnit$en {
	Translations$settings$heightUnit$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Height Unit'
	String get title => 'Height Unit';
}

// Path: settings.weightUnit
class Translations$settings$weightUnit$en {
	Translations$settings$weightUnit$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Weight Unit'
	String get title => 'Weight Unit';
}

// Path: settings.mealReminders
class Translations$settings$mealReminders$en {
	Translations$settings$mealReminders$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Meal Reminders'
	String get title => 'Meal Reminders';

	/// en: 'Stay on track with timely alerts'
	String get subtitle => 'Stay on track with timely alerts';
}

// Path: settings.localInference
class Translations$settings$localInference$en {
	Translations$settings$localInference$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'On-device meal analysis'
	String get title => 'On-device meal analysis';

	/// en: 'Interpret supported meals with Gemini Nano before nutrition is calculated'
	String get subtitle => 'Interpret supported meals with Gemini Nano before nutrition is calculated';

	/// en: 'Not available on this device'
	String get unavailable => 'Not available on this device';

	/// en: 'Available hardware found, but this feature is not enabled for this app release'
	String get rolloutUnavailable => 'Available hardware found, but this feature is not enabled for this app release';

	/// en: 'Gemini Nano needs to finish downloading before this can be enabled'
	String get modelSetup => 'Gemini Nano needs to finish downloading before this can be enabled';

	/// en: 'Use on-device analysis'
	String get useLocalTitle => 'Use on-device analysis';

	/// en: 'Optional and off by default. Results may be less reliable for complex meals.'
	String get useLocalSubtitle => 'Optional and off by default. Results may be less reliable for complex meals.';

	/// en: 'Before you enable on-device analysis'
	String get disclosureTitle => 'Before you enable on-device analysis';

	/// en: 'Gemini Nano can identify ingredients and estimate portions on supported Android devices. Your reviewed ingredient proposal is sent to Calorify for USDA nutrition grounding and calculation.'
	String get disclosureBody => 'Gemini Nano can identify ingredients and estimate portions on supported Android devices. Your reviewed ingredient proposal is sent to Calorify for USDA nutrition grounding and calculation.';

	/// en: 'Complex dishes, hidden ingredients, and portion sizes may be identified incorrectly.'
	String get disclosureLimit1 => 'Complex dishes, hidden ingredients, and portion sizes may be identified incorrectly.';

	/// en: 'The model may be unavailable while downloading, busy, in the background, or limited by the device.'
	String get disclosureLimit2 => 'The model may be unavailable while downloading, busy, in the background, or limited by the device.';

	/// en: 'If local interpretation cannot finish, this beta automatically sends your original meal description to Calorify for cloud analysis.'
	String get disclosureLimit3 => 'If local interpretation cannot finish, this beta automatically sends your original meal description to Calorify for cloud analysis.';

	/// en: 'I understand that I should review detected ingredients and portions.'
	String get acknowledgement => 'I understand that I should review detected ingredients and portions.';

	/// en: 'Acknowledge and enable'
	String get enable => 'Acknowledge and enable';

	/// en: 'Cancel'
	String get cancel => 'Cancel';
}

// Path: settings.theme
class Translations$settings$theme$en {
	Translations$settings$theme$en.internal(this._root);

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
class Translations$settings$sendFeedback$en {
	Translations$settings$sendFeedback$en.internal(this._root);

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

// Path: settings.exportMealHistory
class Translations$settings$exportMealHistory$en {
	Translations$settings$exportMealHistory$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Export Meal History'
	String get title => 'Export Meal History';

	/// en: 'Share a CSV of your logged meals'
	String get subtitle => 'Share a CSV of your logged meals';

	/// en: 'Your Calorify meal history export'
	String get shareText => 'Your Calorify meal history export';

	/// en: 'Could not export meal history: {error}'
	String failed({required Object error}) => 'Could not export meal history: ${error}';
}

// Path: settings.clearAllData
class Translations$settings$clearAllData$en {
	Translations$settings$clearAllData$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Clear All Data'
	String get title => 'Clear All Data';

	/// en: 'Delete Calorify data stored on this device'
	String get subtitle => 'Delete Calorify data stored on this device';

	/// en: 'Delete Calorify data stored on this device'
	String get localOnlySubtitle => 'Delete Calorify data stored on this device';

	/// en: 'Clear All Data?'
	String get confirmationTitle => 'Clear All Data?';

	/// en: 'This permanently deletes logged meals, favorites, and profile settings from this device. Meals already shared to Health Connect and Health Connect access are managed separately in Settings > Health Connect.'
	String get confirmationMessage => 'This permanently deletes logged meals, favorites, and profile settings from this device. Meals already shared to Health Connect and Health Connect access are managed separately in Settings > Health Connect.';

	/// en: 'This permanently deletes logged meals, favorites, and profile settings from this device. Meals already shared to Health Connect and Health Connect access are managed separately in Settings > Health Connect.'
	String get localOnlyConfirmationMessage => 'This permanently deletes logged meals, favorites, and profile settings from this device. Meals already shared to Health Connect and Health Connect access are managed separately in Settings > Health Connect.';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Clear Everything'
	String get clearEverything => 'Clear Everything';
}

// Path: settings.debugOptions
class Translations$settings$debugOptions$en {
	Translations$settings$debugOptions$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Debug Options'
	String get title => 'Debug Options';
}

// Path: settings.healthConnect
class Translations$settings$healthConnect$en {
	Translations$settings$healthConnect$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Health Connect'
	String get title => 'Health Connect';

	/// en: 'View and manage permissions'
	String get subtitle => 'View and manage permissions';

	late final Translations$settings$healthConnect$unavailable$en unavailable = Translations$settings$healthConnect$unavailable$en.internal(_root);
	late final Translations$settings$healthConnect$updateRequired$en updateRequired = Translations$settings$healthConnect$updateRequired$en.internal(_root);
	late final Translations$settings$healthConnect$permissions$en permissions = Translations$settings$healthConnect$permissions$en.internal(_root);

	/// en: 'Manage Permissions'
	String get managePermissions => 'Manage Permissions';

	/// en: 'Open Health Connect Settings'
	String get openSettings => 'Open Health Connect Settings';

	/// en: 'Disconnect Health Connect'
	String get disconnect => 'Disconnect Health Connect';

	/// en: 'Disconnect Health Connect?'
	String get disconnectConfirmationTitle => 'Disconnect Health Connect?';

	/// en: 'Calorify will lose access to Health Connect. Data already written there is not deleted.'
	String get disconnectConfirmationMessage => 'Calorify will lose access to Health Connect. Data already written there is not deleted.';

	/// en: 'Disconnect'
	String get disconnectConfirmationAction => 'Disconnect';

	/// en: 'Delete Calorify meals from Health Connect'
	String get deleteSyncedMeals => 'Delete Calorify meals from Health Connect';

	/// en: 'Delete synced meals?'
	String get deleteSyncedMealsConfirmationTitle => 'Delete synced meals?';

	/// en: 'Delete meals synchronized by this version of Calorify from Health Connect? Your local meal log will not change. Older Calorify entries may still need to be removed using Manage Data in Health Connect.'
	String get deleteSyncedMealsConfirmationMessage => 'Delete meals synchronized by this version of Calorify from Health Connect? Your local meal log will not change. Older Calorify entries may still need to be removed using Manage Data in Health Connect.';

	/// en: 'Delete synced meals'
	String get deleteSyncedMealsConfirmationAction => 'Delete synced meals';

	/// en: 'Calorify meals were deleted from Health Connect.'
	String get deleteSyncedMealsSuccess => 'Calorify meals were deleted from Health Connect.';

	/// en: 'Synced meals could not be deleted. Please try again.'
	String get deleteSyncedMealsFailed => 'Synced meals could not be deleted. Please try again.';

	/// en: 'Some Health Connect features are enabled.'
	String get connectionPartial => 'Some Health Connect features are enabled.';

	/// en: 'Both Health Connect features are enabled.'
	String get connectionComplete => 'Both Health Connect features are enabled.';

	/// en: 'Health Connect could not be opened. Please try again.'
	String get actionFailed => 'Health Connect could not be opened. Please try again.';

	/// en: 'Request Permissions'
	String get requestPermissions => 'Request Permissions';

	/// en: 'Permission request was cancelled or failed. Please try again or grant permissions manually in Health Connect settings.'
	String get permissionRequestCancelledOrFailed => 'Permission request was cancelled or failed. Please try again or grant permissions manually in Health Connect settings.';

	/// en: 'Unable to request permissions. Please try again or grant permissions manually in Health Connect settings.'
	String get permissionRequestFailed => 'Unable to request permissions. Please try again or grant permissions manually in Health Connect settings.';

	/// en: 'Requesting...'
	String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class Translations$settings$about$en {
	Translations$settings$about$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'About'
	String get title => 'About';

	/// en: 'Fast, free, and privacy-first calorie awareness'
	String get tagline => 'Fast, free, and privacy-first calorie awareness';

	late final Translations$settings$about$ourStory$en ourStory = Translations$settings$about$ourStory$en.internal(_root);
	late final Translations$settings$about$privacy$en privacy = Translations$settings$about$privacy$en.internal(_root);
	late final Translations$settings$about$developer$en developer = Translations$settings$about$developer$en.internal(_root);
	late final Translations$settings$about$feedback$en feedback = Translations$settings$about$feedback$en.internal(_root);
}

// Path: settings.appInfo
class Translations$settings$appInfo$en {
	Translations$settings$appInfo$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Calorify v{version}'
	String version({required Object version}) => 'Calorify v${version}';

	/// en: 'Build {buildNumber}'
	String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class Translations$notifications$breakfast$en {
	Translations$notifications$breakfast$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Breakfast Time! 🍳'
	String get title => 'Breakfast Time! 🍳';

	/// en: 'Don't forget to log your breakfast'
	String get body => 'Don\'t forget to log your breakfast';
}

// Path: notifications.lunch
class Translations$notifications$lunch$en {
	Translations$notifications$lunch$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Lunch Time! 🥗'
	String get title => 'Lunch Time! 🥗';

	/// en: 'Time to log your lunch'
	String get body => 'Time to log your lunch';
}

// Path: notifications.dinner
class Translations$notifications$dinner$en {
	Translations$notifications$dinner$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Dinner Time! 🍽️'
	String get title => 'Dinner Time! 🍽️';

	/// en: 'Don't forget to log your dinner'
	String get body => 'Don\'t forget to log your dinner';
}

// Path: notifications.snack
class Translations$notifications$snack$en {
	Translations$notifications$snack$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Snack Time! 🍎'
	String get title => 'Snack Time! 🍎';

	/// en: 'Time for a healthy snack'
	String get body => 'Time for a healthy snack';
}

// Path: notifications.test
class Translations$notifications$test$en {
	Translations$notifications$test$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Test Notification'
	String get title => 'Test Notification';
}

// Path: disclaimer.snap
class Translations$disclaimer$snap$en {
	Translations$disclaimer$snap$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '{appLabel} provides estimated nutritional info. Accuracy depends on your input & food variations. Use as a guide, not a definitive source. Consult a professional for personalized dietary advice.'
	String description({required Object appLabel}) => '${appLabel} provides estimated nutritional info. Accuracy depends on your input & food variations. Use as a guide, not a definitive source. Consult a professional for personalized dietary advice.';

	late final Translations$disclaimer$snap$portionSize$en portionSize = Translations$disclaimer$snap$portionSize$en.internal(_root);
	late final Translations$disclaimer$snap$preparationMethods$en preparationMethods = Translations$disclaimer$snap$preparationMethods$en.internal(_root);
	late final Translations$disclaimer$snap$ingredients$en ingredients = Translations$disclaimer$snap$ingredients$en.internal(_root);
	late final Translations$disclaimer$snap$databaseLimitations$en databaseLimitations = Translations$disclaimer$snap$databaseLimitations$en.internal(_root);
}

// Path: disclaimer.weightEstimate
class Translations$disclaimer$weightEstimate$en {
	Translations$disclaimer$weightEstimate$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'About Weight Estimate'
	String get title => 'About Weight Estimate';

	/// en: 'The projected weight change is a theoretical estimate based on the simple calorie-in vs. calorie-out model. It is intended for motivational guidance only, not as a prediction of your actual weight.'
	String get description => 'The projected weight change is a theoretical estimate based on the simple calorie-in vs. calorie-out model. It is intended for motivational guidance only, not as a prediction of your actual weight.';

	late final Translations$disclaimer$weightEstimate$calorieAccuracy$en calorieAccuracy = Translations$disclaimer$weightEstimate$calorieAccuracy$en.internal(_root);
	late final Translations$disclaimer$weightEstimate$biologicalFactors$en biologicalFactors = Translations$disclaimer$weightEstimate$biologicalFactors$en.internal(_root);
	late final Translations$disclaimer$weightEstimate$waterWeight$en waterWeight = Translations$disclaimer$weightEstimate$waterWeight$en.internal(_root);
	late final Translations$disclaimer$weightEstimate$professionalGuidance$en professionalGuidance = Translations$disclaimer$weightEstimate$professionalGuidance$en.internal(_root);
}

// Path: disclaimer.healthMetrics
class Translations$disclaimer$healthMetrics$en {
	Translations$disclaimer$healthMetrics$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'These metrics help you understand your body's energy needs and guide your nutrition goals.'
	String get description => 'These metrics help you understand your body\'s energy needs and guide your nutrition goals.';

	late final Translations$disclaimer$healthMetrics$bmr$en bmr = Translations$disclaimer$healthMetrics$bmr$en.internal(_root);
	late final Translations$disclaimer$healthMetrics$tdee$en tdee = Translations$disclaimer$healthMetrics$tdee$en.internal(_root);
	late final Translations$disclaimer$healthMetrics$dailyGoal$en dailyGoal = Translations$disclaimer$healthMetrics$dailyGoal$en.internal(_root);
}

// Path: disclaimer.calorieExpenditure
class Translations$disclaimer$calorieExpenditure$en {
	Translations$disclaimer$calorieExpenditure$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Calorie Expenditure Estimate'
	String get title => 'Calorie Expenditure Estimate';

	/// en: 'When Health Connect data is unavailable, we estimate today's calories burned using your Basal Metabolic Rate (BMR) and activity level (TDEE), scaled for the portion of the day that has passed.'
	String get description => 'When Health Connect data is unavailable, we estimate today\'s calories burned using your Basal Metabolic Rate (BMR) and activity level (TDEE), scaled for the portion of the day that has passed.';

	late final Translations$disclaimer$calorieExpenditure$howCalculated$en howCalculated = Translations$disclaimer$calorieExpenditure$howCalculated$en.internal(_root);
	late final Translations$disclaimer$calorieExpenditure$professionalGuidance$en professionalGuidance = Translations$disclaimer$calorieExpenditure$professionalGuidance$en.internal(_root);
}

// Path: watch.common
class Translations$watch$common$en {
	Translations$watch$common$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Back'
	String get back => 'Back';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Retry'
	String get retry => 'Retry';

	/// en: 'kcal'
	String get kcal => 'kcal';

	/// en: 'g'
	String get gramsShort => 'g';
}

// Path: watch.nutrition
class Translations$watch$nutrition$en {
	Translations$watch$nutrition$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Nutrient'
	String get nutrient => 'Nutrient';

	/// en: '{label}, {value} grams'
	String grams({required Object label, required Object value}) => '${label}, ${value} grams';

	/// en: 'Protein'
	String get protein => 'Protein';

	/// en: 'Carbs'
	String get carbs => 'Carbs';

	/// en: 'Fat'
	String get fat => 'Fat';

	/// en: 'Fiber'
	String get fiber => 'Fiber';
}

// Path: watch.sync
class Translations$watch$sync$en {
	Translations$watch$sync$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sync with phone'
	String get syncWithPhone => 'Sync with phone';

	/// en: 'Syncing…'
	String get syncing => 'Syncing…';

	/// en: 'Synced'
	String get synced => 'Synced';

	/// en: 'Synced just now'
	String get syncedJustNow => 'Synced just now';

	/// en: 'Synced {minutes}m ago'
	String syncedMinutesAgo({required Object minutes}) => 'Synced ${minutes}m ago';

	/// en: 'Sync failed'
	String get failed => 'Sync failed';

	/// en: 'Phone disconnected'
	String get phoneDisconnected => 'Phone disconnected';

	/// en: 'Tap to sync'
	String get tapToSync => 'Tap to sync';

	/// en: 'Could not refresh. Check your phone.'
	String get refreshFailed => 'Could not refresh. Check your phone.';

	/// en: 'Open Calorify on your phone, then tap refresh.'
	String get openPhone => 'Open Calorify on your phone, then tap refresh.';
}

// Path: watch.home
class Translations$watch$home$en {
	Translations$watch$home$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Today'
	String get today => 'Today';

	/// en: '{consumed} calories consumed out of {goal}. {status}.'
	String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} calories consumed out of ${goal}. ${status}.';

	/// en: '{calories} over goal'
	String overGoal({required Object calories}) => '${calories} over goal';

	/// en: '{calories} remaining'
	String remaining({required Object calories}) => '${calories} remaining';

	/// en: '{calories} left'
	String left({required Object calories}) => '${calories} left';

	/// en: '{calories} kcal goal'
	String goal({required Object calories}) => '${calories} kcal goal';

	/// en: 'Log a meal'
	String get logMeal => 'Log a meal';

	/// en: 'Today's meals'
	String get todayMeals => 'Today\'s meals';

	/// en: 'Today's meals, {count}'
	String todayMealsCount({required Object count}) => 'Today\'s meals, ${count}';

	/// en: 'View {count} more'
	String viewMore({required Object count}) => 'View ${count} more';

	/// en: '{count} more meals, tap to view all'
	String viewMoreSemantics({required Object count}) => '${count} more meals, tap to view all';

	/// en: 'No meals logged'
	String get noMeals => 'No meals logged';

	/// en: 'No meals logged today'
	String get noMealsSemantics => 'No meals logged today';

	/// en: 'Tap Log to start'
	String get tapLog => 'Tap Log to start';

	/// en: 'Meal removed from the offline queue.'
	String get removedFromQueue => 'Meal removed from the offline queue.';

	/// en: 'Meal removed offline. It will sync when your phone reconnects.'
	String get removedOffline => 'Meal removed offline. It will sync when your phone reconnects.';

	/// en: 'Could not delete meal'
	String get deleteFailed => 'Could not delete meal';
}

// Path: watch.history
class Translations$watch$history$en {
	Translations$watch$history$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Today's meals'
	String get title => 'Today\'s meals';

	/// en: 'Refresh meals'
	String get refresh => 'Refresh meals';

	/// en: 'Could not load meals'
	String get loadFailed => 'Could not load meals';

	/// en: 'Could not sync'
	String get syncFailed => 'Could not sync';

	/// en: 'No meals yet'
	String get emptyTitle => 'No meals yet';

	/// en: 'Log a meal from Home to see it here.'
	String get emptyMessage => 'Log a meal from Home to see it here.';
}

// Path: watch.favorites
class Translations$watch$favorites$en {
	Translations$watch$favorites$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Favorites'
	String get title => 'Favorites';

	/// en: 'Refresh favorites'
	String get refresh => 'Refresh favorites';

	/// en: 'Could not load favorites'
	String get loadFailed => 'Could not load favorites';

	/// en: 'Could not sync'
	String get syncFailed => 'Could not sync';

	/// en: 'No favorites yet'
	String get emptyTitle => 'No favorites yet';

	/// en: 'Star meals in the phone app for one-tap logging here.'
	String get emptyMessage => 'Star meals in the phone app for one-tap logging here.';

	/// en: '{name}, {calories} calories. Tap to log.'
	String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} calories. Tap to log.';

	/// en: '{name} logged!'
	String logged({required Object name}) => '${name} logged!';

	/// en: '{name} saved offline. It will sync when your phone reconnects.'
	String savedOffline({required Object name}) => '${name} saved offline. It will sync when your phone reconnects.';

	/// en: 'Could not save the meal. Please try again.'
	String get saveFailed => 'Could not save the meal. Please try again.';

	/// en: 'Log'
	String get log => 'Log';
}

// Path: watch.meal
class Translations$watch$meal$en {
	Translations$watch$meal$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '{name}, {calories} calories, logged at {time}.'
	String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calories, logged at ${time}.';

	/// en: 'Long press to delete.'
	String get longPressDelete => 'Long press to delete.';

	/// en: 'Delete meal?'
	String get deleteTitle => 'Delete meal?';
}

// Path: watch.voice
class Translations$watch$voice$en {
	Translations$watch$voice$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Voice meal log'
	String get title => 'Voice meal log';

	/// en: 'Checking your meal…'
	String get processing => 'Checking your meal…';

	/// en: 'Estimating portions and nutrition'
	String get processingDescription => 'Estimating portions and nutrition';

	/// en: 'Listening'
	String get listening => 'Listening';

	/// en: '{seconds}s'
	String secondsLeft({required Object seconds}) => '${seconds}s';

	/// en: 'Stop recording'
	String get stop => 'Stop recording';

	/// en: 'Tap to start recording'
	String get start => 'Tap to start recording';

	/// en: 'Starting microphone…'
	String get starting => 'Starting microphone…';

	/// en: 'Tap, then describe your meal'
	String get prompt => 'Tap, then describe your meal';

	/// en: 'Tap to retry'
	String get tapToRetry => 'Tap to retry';

	/// en: 'Try “2 rotis with dal”'
	String get example => 'Try “2 rotis with dal”';

	/// en: 'Voice input is unavailable. Check microphone permission in watch settings.'
	String get unavailable => 'Voice input is unavailable. Check microphone permission in watch settings.';

	/// en: 'Microphone did not start. Tap to retry.'
	String get didNotStart => 'Microphone did not start. Tap to retry.';

	/// en: 'Could not start recording. Check microphone permissions.'
	String get startFailed => 'Could not start recording. Check microphone permissions.';

	/// en: 'Allow microphone access to log meals by voice.'
	String get allowMicrophone => 'Allow microphone access to log meals by voice.';

	/// en: 'Voice recognition needs a connection. Tap to retry.'
	String get needsConnection => 'Voice recognition needs a connection. Tap to retry.';

	/// en: 'The microphone is unavailable. Tap to retry.'
	String get microphoneUnavailable => 'The microphone is unavailable. Tap to retry.';

	/// en: 'The microphone is busy. Wait a moment and retry.'
	String get microphoneBusy => 'The microphone is busy. Wait a moment and retry.';

	/// en: 'Voice input does not support the watch language.'
	String get languageUnsupported => 'Voice input does not support the watch language.';

	/// en: 'Voice input is temporarily busy. Wait a moment and retry.'
	String get temporarilyBusy => 'Voice input is temporarily busy. Wait a moment and retry.';

	/// en: 'I didn't catch that. Tap the mic and try again.'
	String get notRecognized => 'I didn\'t catch that. Tap the mic and try again.';

	/// en: 'No speech detected. Tap the mic to try again.'
	String get noSpeech => 'No speech detected. Tap the mic to try again.';

	/// en: 'Analysis failed. Please try again.'
	String get analysisFailed => 'Analysis failed. Please try again.';

	/// en: 'Couldn't identify that meal. Try describing it differently.'
	String get mealNotIdentified => 'Couldn\'t identify that meal. Try describing it differently.';
}

// Path: watch.result
class Translations$watch$result$en {
	Translations$watch$result$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Meal details'
	String get title => 'Meal details';

	/// en: 'Saved offline'
	String get savedOffline => 'Saved offline';

	/// en: 'Logged!'
	String get logged => 'Logged!';

	/// en: 'Meal found'
	String get mealFound => 'Meal found';

	/// en: 'Estimated energy'
	String get estimatedEnergy => 'Estimated energy';

	/// en: 'Log meal'
	String get logMeal => 'Log meal';

	/// en: 'Logging…'
	String get logging => 'Logging…';

	/// en: 'Log another'
	String get logAnother => 'Log another';

	/// en: 'Going back…'
	String get goingBack => 'Going back…';

	/// en: 'Meal saved offline. It will sync when your phone reconnects.'
	String get savedOfflineMessage => 'Meal saved offline. It will sync when your phone reconnects.';

	/// en: 'Could not save the meal. Please try again.'
	String get saveFailed => 'Could not save the meal. Please try again.';
}

// Path: onboarding.features.foodRecognition
class Translations$onboarding$features$foodRecognition$en {
	Translations$onboarding$features$foodRecognition$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Smart Food Recognition'
	String get title => 'Smart Food Recognition';

	/// en: 'Take a photo and let AI identify your meal'
	String get description => 'Take a photo and let AI identify your meal';
}

// Path: onboarding.features.aiAnalysis
class Translations$onboarding$features$aiAnalysis$en {
	Translations$onboarding$features$aiAnalysis$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'AI Analysis'
	String get title => 'AI Analysis';

	/// en: 'Get instant nutrition facts from your descriptions'
	String get description => 'Get instant nutrition facts from your descriptions';
}

// Path: onboarding.features.healthIntegration
class Translations$onboarding$features$healthIntegration$en {
	Translations$onboarding$features$healthIntegration$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Health Integration'
	String get title => 'Health Integration';

	/// en: 'Connect with Health Connect for better insights'
	String get description => 'Connect with Health Connect for better insights';
}

// Path: onboarding.bmiScale.categories
class Translations$onboarding$bmiScale$categories$en {
	Translations$onboarding$bmiScale$categories$en.internal(this._root);

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
class Translations$onboarding$bmiScale$messages$en {
	Translations$onboarding$bmiScale$messages$en.internal(this._root);

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
class Translations$onboarding$healthConnect$automaticTracking$en {
	Translations$onboarding$healthConnect$automaticTracking$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Calories Burned'
	String get title => 'Calories Burned';

	/// en: 'Read today's total calories burned from Health Connect'
	String get description => 'Read today\'s total calories burned from Health Connect';
}

// Path: onboarding.healthConnect.caloriesBurned
class Translations$onboarding$healthConnect$caloriesBurned$en {
	Translations$onboarding$healthConnect$caloriesBurned$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Calories Burned'
	String get title => 'Calories Burned';

	/// en: 'Read today's total calories burned from Health Connect'
	String get description => 'Read today\'s total calories burned from Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class Translations$onboarding$healthConnect$progressInsights$en {
	Translations$onboarding$healthConnect$progressInsights$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Share Logged Meals'
	String get title => 'Share Logged Meals';

	/// en: 'Write meals you log in Calorify to Health Connect'
	String get description => 'Write meals you log in Calorify to Health Connect';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class Translations$onboarding$healthConnect$shareLoggedMeals$en {
	Translations$onboarding$healthConnect$shareLoggedMeals$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Share Logged Meals'
	String get title => 'Share Logged Meals';

	/// en: 'Write meals you log in Calorify to Health Connect'
	String get description => 'Write meals you log in Calorify to Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class Translations$onboarding$healthConnect$seamlessIntegration$en {
	Translations$onboarding$healthConnect$seamlessIntegration$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'You're in Control'
	String get title => 'You\'re in Control';

	/// en: 'Choose either permission and change access at any time'
	String get description => 'Choose either permission and change access at any time';
}

// Path: onboarding.healthConnect.userControl
class Translations$onboarding$healthConnect$userControl$en {
	Translations$onboarding$healthConnect$userControl$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'You're in Control'
	String get title => 'You\'re in Control';

	/// en: 'Choose either permission and change access at any time'
	String get description => 'Choose either permission and change access at any time';
}

// Path: onboarding.reinforcement.trackingSuccess
class Translations$onboarding$reinforcement$trackingSuccess$en {
	Translations$onboarding$reinforcement$trackingSuccess$en.internal(this._root);

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
class Translations$onboarding$reinforcement$healthProfile$en {
	Translations$onboarding$reinforcement$healthProfile$en.internal(this._root);

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
class Translations$onboarding$reinforcement$goalLifestyle$en {
	Translations$onboarding$reinforcement$goalLifestyle$en.internal(this._root);

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
class Translations$editProfile$weightGoals$loseWeight$en {
	Translations$editProfile$weightGoals$loseWeight$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Lose Weight'
	String get name => 'Lose Weight';

	/// en: 'Create a calorie deficit to lose weight'
	String get description => 'Create a calorie deficit to lose weight';
}

// Path: editProfile.weightGoals.maintainWeight
class Translations$editProfile$weightGoals$maintainWeight$en {
	Translations$editProfile$weightGoals$maintainWeight$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Maintain Weight'
	String get name => 'Maintain Weight';

	/// en: 'Maintain your current weight'
	String get description => 'Maintain your current weight';
}

// Path: editProfile.weightGoals.gainWeight
class Translations$editProfile$weightGoals$gainWeight$en {
	Translations$editProfile$weightGoals$gainWeight$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Gain Weight'
	String get name => 'Gain Weight';

	/// en: 'Create a calorie surplus to gain weight'
	String get description => 'Create a calorie surplus to gain weight';
}

// Path: editProfile.activityLevels.sedentary
class Translations$editProfile$activityLevels$sedentary$en {
	Translations$editProfile$activityLevels$sedentary$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sedentary'
	String get name => 'Sedentary';

	/// en: 'Little to no exercise'
	String get description => 'Little to no exercise';
}

// Path: editProfile.activityLevels.lightlyActive
class Translations$editProfile$activityLevels$lightlyActive$en {
	Translations$editProfile$activityLevels$lightlyActive$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Lightly Active'
	String get name => 'Lightly Active';

	/// en: 'Light exercise 1-3 days/week'
	String get description => 'Light exercise 1-3 days/week';
}

// Path: editProfile.activityLevels.moderatelyActive
class Translations$editProfile$activityLevels$moderatelyActive$en {
	Translations$editProfile$activityLevels$moderatelyActive$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Moderately Active'
	String get name => 'Moderately Active';

	/// en: 'Moderate exercise 3-5 days/week'
	String get description => 'Moderate exercise 3-5 days/week';
}

// Path: editProfile.activityLevels.veryActive
class Translations$editProfile$activityLevels$veryActive$en {
	Translations$editProfile$activityLevels$veryActive$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Very Active'
	String get name => 'Very Active';

	/// en: 'Hard exercise 6-7 days/week'
	String get description => 'Hard exercise 6-7 days/week';
}

// Path: editProfile.activityLevels.extremelyActive
class Translations$editProfile$activityLevels$extremelyActive$en {
	Translations$editProfile$activityLevels$extremelyActive$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Extremely Active'
	String get name => 'Extremely Active';

	/// en: 'Very hard exercise, physical job'
	String get description => 'Very hard exercise, physical job';
}

// Path: settings.healthConnect.unavailable
class Translations$settings$healthConnect$unavailable$en {
	Translations$settings$healthConnect$unavailable$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Health Connect Unavailable'
	String get title => 'Health Connect Unavailable';

	/// en: 'Health Connect is not supported on this device.'
	String get description => 'Health Connect is not supported on this device.';

	/// en: 'Health Connect is not supported on this device.'
	String get unsupportedDescription => 'Health Connect is not supported on this device.';
}

// Path: settings.healthConnect.updateRequired
class Translations$settings$healthConnect$updateRequired$en {
	Translations$settings$healthConnect$updateRequired$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Health Connect needs attention'
	String get title => 'Health Connect needs attention';

	/// en: 'Install or update Health Connect before managing access.'
	String get description => 'Install or update Health Connect before managing access.';

	/// en: 'Install or update'
	String get action => 'Install or update';
}

// Path: settings.healthConnect.permissions
class Translations$settings$healthConnect$permissions$en {
	Translations$settings$healthConnect$permissions$en.internal(this._root);

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

	late final Translations$settings$healthConnect$permissions$caloriesBurned$en caloriesBurned = Translations$settings$healthConnect$permissions$caloriesBurned$en.internal(_root);
	late final Translations$settings$healthConnect$permissions$nutritionRead$en nutritionRead = Translations$settings$healthConnect$permissions$nutritionRead$en.internal(_root);
	late final Translations$settings$healthConnect$permissions$nutritionWrite$en nutritionWrite = Translations$settings$healthConnect$permissions$nutritionWrite$en.internal(_root);
}

// Path: settings.about.ourStory
class Translations$settings$about$ourStory$en {
	Translations$settings$about$ourStory$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Our Story'
	String get title => 'Our Story';

	/// en: '{appLabel} was born from a simple frustration: most calorie tracking apps are either overly complicated, demand constant manual input, charge high subscription fees, or compromise on privacy. As a solo developer, I wanted to build something simpler and fairer — an app that uses AI to reduce effort, stays fast and free to use, and treats your health data with respect. {appLabel} is the app I wish existed: no accounts, no tracking, no ads — just clear, practical insights and your health goals.'
	String content({required Object appLabel}) => '${appLabel} was born from a simple frustration: most calorie tracking apps are either overly complicated, demand constant manual input, charge high subscription fees, or compromise on privacy.\n\nAs a solo developer, I wanted to build something simpler and fairer — an app that uses AI to reduce effort, stays fast and free to use, and treats your health data with respect.\n\n${appLabel} is the app I wish existed: no accounts, no tracking, no ads — just clear, practical insights and your health goals.';
}

// Path: settings.about.privacy
class Translations$settings$about$privacy$en {
	Translations$settings$about$privacy$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your Privacy Matters'
	String get title => 'Your Privacy Matters';

	/// en: 'Privacy isn't an afterthought — it's a design principle. Here's what that means in practice:'
	String get description => 'Privacy isn\'t an afterthought — it\'s a design principle. Here\'s what that means in practice:';

	/// en: 'No accounts required Use the app immediately. No sign-ups, no identities.'
	String get noAccounts => 'No accounts required\nUse the app immediately. No sign-ups, no identities.';

	/// en: 'Limited analytics and diagnostics {appLabel} uses basic app events and crash diagnostics to improve reliability. Health record values are not used for advertising or sold.'
	String noTracking({required Object appLabel}) => 'Limited analytics and diagnostics\n${appLabel} uses basic app events and crash diagnostics to improve reliability. Health record values are not used for advertising or sold.';

	/// en: 'Limited analytics and diagnostics {appLabel} uses basic app events and crash diagnostics to improve reliability. Health record values are not used for advertising or sold.'
	String analyticsDisclosure({required Object appLabel}) => 'Limited analytics and diagnostics\n${appLabel} uses basic app events and crash diagnostics to improve reliability. Health record values are not used for advertising or sold.';

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
class Translations$settings$about$developer$en {
	Translations$settings$about$developer$en.internal(this._root);

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
class Translations$settings$about$feedback$en {
	Translations$settings$about$feedback$en.internal(this._root);

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
class Translations$disclaimer$snap$portionSize$en {
	Translations$disclaimer$snap$portionSize$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Portion Size'
	String get title => 'Portion Size';

	/// en: 'The accuracy of the estimates heavily relies on your correct assessment of the portion size.'
	String get description => 'The accuracy of the estimates heavily relies on your correct assessment of the portion size.';
}

// Path: disclaimer.snap.preparationMethods
class Translations$disclaimer$snap$preparationMethods$en {
	Translations$disclaimer$snap$preparationMethods$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Preparation Methods'
	String get title => 'Preparation Methods';

	/// en: 'Cooking methods can significantly alter the nutritional content of food. {appLabel}'s estimates may not always account for these variations.'
	String description({required Object appLabel}) => 'Cooking methods can significantly alter the nutritional content of food. ${appLabel}\'s estimates may not always account for these variations.';
}

// Path: disclaimer.snap.ingredients
class Translations$disclaimer$snap$ingredients$en {
	Translations$disclaimer$snap$ingredients$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Ingredients'
	String get title => 'Ingredients';

	/// en: 'Complex dishes with many hidden ingredients may lead to less accurate estimations.'
	String get description => 'Complex dishes with many hidden ingredients may lead to less accurate estimations.';
}

// Path: disclaimer.snap.databaseLimitations
class Translations$disclaimer$snap$databaseLimitations$en {
	Translations$disclaimer$snap$databaseLimitations$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Database Limitations'
	String get title => 'Database Limitations';

	/// en: '{appLabel}'s food database is extensive but may not include every single food item or variation.'
	String description({required Object appLabel}) => '${appLabel}\'s food database is extensive but may not include every single food item or variation.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	Translations$disclaimer$weightEstimate$calorieAccuracy$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Calorie Accuracy'
	String get title => 'Calorie Accuracy';

	/// en: 'This estimate is only as accurate as your tracked calorie intake and expenditure. Inaccurate logging will result in an inaccurate projection.'
	String get description => 'This estimate is only as accurate as your tracked calorie intake and expenditure. Inaccurate logging will result in an inaccurate projection.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class Translations$disclaimer$weightEstimate$biologicalFactors$en {
	Translations$disclaimer$weightEstimate$biologicalFactors$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Biological Factors'
	String get title => 'Biological Factors';

	/// en: 'Actual weight loss/gain is influenced by metabolism, hormones, sleep, stress, hydration, and other individual factors that {appLabel} cannot measure.'
	String description({required Object appLabel}) => 'Actual weight loss/gain is influenced by metabolism, hormones, sleep, stress, hydration, and other individual factors that ${appLabel} cannot measure.';
}

// Path: disclaimer.weightEstimate.waterWeight
class Translations$disclaimer$weightEstimate$waterWeight$en {
	Translations$disclaimer$weightEstimate$waterWeight$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Water Weight & Fluctuations'
	String get title => 'Water Weight & Fluctuations';

	/// en: 'Normal daily weight can fluctuate significantly due to water retention, digestion, and timing. The estimate does not account for these daily changes.'
	String get description => 'Normal daily weight can fluctuate significantly due to water retention, digestion, and timing. The estimate does not account for these daily changes.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class Translations$disclaimer$weightEstimate$professionalGuidance$en {
	Translations$disclaimer$weightEstimate$professionalGuidance$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Professional Guidance'
	String get title => 'Professional Guidance';

	/// en: 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.'
	String get description => 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.';
}

// Path: disclaimer.healthMetrics.bmr
class Translations$disclaimer$healthMetrics$bmr$en {
	Translations$disclaimer$healthMetrics$bmr$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'BMR'
	String get title => 'BMR';

	/// en: 'Basal Metabolic Rate (BMR) is the number of calories your body burns at rest to maintain basic functions like breathing and circulation. BMR depends on your age, gender, height, and weight. A higher BMR means your body naturally burns more calories at rest, often due to more muscle mass, younger age, or being male. A lower BMR typically indicates less muscle mass, older age, or being female.'
	String get description => 'Basal Metabolic Rate (BMR) is the number of calories your body burns at rest to maintain basic functions like breathing and circulation. BMR depends on your age, gender, height, and weight. A higher BMR means your body naturally burns more calories at rest, often due to more muscle mass, younger age, or being male. A lower BMR typically indicates less muscle mass, older age, or being female.';
}

// Path: disclaimer.healthMetrics.tdee
class Translations$disclaimer$healthMetrics$tdee$en {
	Translations$disclaimer$healthMetrics$tdee$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'TDEE'
	String get title => 'TDEE';

	/// en: 'Total Daily Energy Expenditure (TDEE) is the total calories you burn per day, including your BMR plus calories from physical activity and daily movement. TDEE depends on your BMR and activity level. A higher TDEE means you burn more calories overall, usually from being more active or having a higher BMR. A lower TDEE suggests less daily activity or a lower BMR.'
	String get description => 'Total Daily Energy Expenditure (TDEE) is the total calories you burn per day, including your BMR plus calories from physical activity and daily movement. TDEE depends on your BMR and activity level. A higher TDEE means you burn more calories overall, usually from being more active or having a higher BMR. A lower TDEE suggests less daily activity or a lower BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class Translations$disclaimer$healthMetrics$dailyGoal$en {
	Translations$disclaimer$healthMetrics$dailyGoal$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Daily Goal'
	String get title => 'Daily Goal';

	/// en: 'Daily Goal is your recommended daily calorie intake based on your TDEE and weight goal. For weight loss, you consume fewer calories than your TDEE. For weight maintenance, you match your TDEE. For weight gain, you consume more calories than your TDEE. This helps you achieve your desired weight change at a healthy pace.'
	String get description => 'Daily Goal is your recommended daily calorie intake based on your TDEE and weight goal. For weight loss, you consume fewer calories than your TDEE. For weight maintenance, you match your TDEE. For weight gain, you consume more calories than your TDEE. This helps you achieve your desired weight change at a healthy pace.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class Translations$disclaimer$calorieExpenditure$howCalculated$en {
	Translations$disclaimer$calorieExpenditure$howCalculated$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'How The Estimate Is Calculated'
	String get title => 'How The Estimate Is Calculated';

	/// en: 'We compute your TDEE (based on your profile) and multiply it by the fraction of the day elapsed (hours + minutes) / 24 to estimate calories burned so far.'
	String get description => 'We compute your TDEE (based on your profile) and multiply it by the fraction of the day elapsed (hours + minutes) / 24 to estimate calories burned so far.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	Translations$disclaimer$calorieExpenditure$professionalGuidance$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Professional Guidance'
	String get title => 'Professional Guidance';

	/// en: 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.'
	String get description => 'Do not use this estimate to make medical decisions. Always consult a healthcare professional or registered dietitian for personalized weight management advice.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class Translations$settings$healthConnect$permissions$caloriesBurned$en {
	Translations$settings$healthConnect$permissions$caloriesBurned$en.internal(this._root);

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
class Translations$settings$healthConnect$permissions$nutritionRead$en {
	Translations$settings$healthConnect$permissions$nutritionRead$en.internal(this._root);

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
class Translations$settings$healthConnect$permissions$nutritionWrite$en {
	Translations$settings$healthConnect$permissions$nutritionWrite$en.internal(this._root);

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
			'onboarding.healthConnect.description' => 'Use calories burned in your daily goal and optionally share logged meals with Health Connect.',
			'onboarding.healthConnect.overviewDescription' => 'Use calories burned in your daily goal and optionally share logged meals with Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Calories Burned',
			'onboarding.healthConnect.automaticTracking.description' => 'Read today\'s total calories burned from Health Connect',
			'onboarding.healthConnect.caloriesBurned.title' => 'Calories Burned',
			'onboarding.healthConnect.caloriesBurned.description' => 'Read today\'s total calories burned from Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Share Logged Meals',
			'onboarding.healthConnect.progressInsights.description' => 'Write meals you log in Calorify to Health Connect',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Share Logged Meals',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Write meals you log in Calorify to Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => 'You\'re in Control',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Choose either permission and change access at any time',
			'onboarding.healthConnect.userControl.title' => 'You\'re in Control',
			'onboarding.healthConnect.userControl.description' => 'Choose either permission and change access at any time',
			'onboarding.healthConnect.connected' => 'Health Connect Connected',
			'onboarding.healthConnect.notConnected' => 'Health Connect Not Connected',
			'onboarding.healthConnect.setup' => 'Setup Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Skip for now',
			'onboarding.healthConnect.statusConnected' => 'Health Connect is connected.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect has been successfully connected!',
			'onboarding.healthConnect.statusNotConnected' => 'Choose the Health Connect features you want to enable.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect is partially connected. Enable the remaining permission to use both features.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Install or update Health Connect to continue.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect is not supported on this device.',
			'onboarding.healthConnect.installOrUpdate' => 'Install or update',
			'onboarding.healthConnect.manageAccess' => 'Manage access',
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
			'home.connectHealth.description' => 'Use calories burned in your goal and share logged meals',
			'home.connectHealth.install' => 'Install or update',
			'home.connectHealth.dataUseDescription' => 'Use calories burned in your goal and share logged meals',
			'home.connectHealth.installOrUpdate' => 'Install or update',
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
			'meal.nameRequired' => 'Enter a meal name before saving.',
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
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Question ${current} of ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'No questions available',
			'meal.questionFlow.next' => 'Next',
			'meal.questionFlow.continueLabel' => 'Continue',
			'meal.analysis.title' => 'Analyzing your meal',
			'meal.analysis.stepStarted' => 'Getting started…',
			'meal.analysis.stepDecomposition' => 'Understanding your meal…',
			'meal.analysis.stepIngredients' => 'Matching ingredients to nutrition data…',
			'meal.analysis.stepUncertainty' => 'Checking confidence…',
			'meal.analysis.stepMealTypeQuestion' => 'Almost there…',
			'meal.analysis.stepResult' => 'Finalizing your result…',
			'meal.analysis.stepError' => 'Something went wrong',
			'meal.analysis.stepDefault' => 'Analyzing your meal…',
			'meal.analysis.progressUnderstand' => 'Understanding your meal',
			'meal.analysis.progressMatch' => 'Looking up ingredient nutrition',
			'meal.analysis.progressCheck' => 'Checking portions and confidence',
			'meal.analysis.progressMealType' => 'Choosing meal type',
			'meal.analysis.progressFinish' => 'Calculating calories and macros',
			'meal.analysis.detectedIngredientHeading' => 'Ingredients we\'re spotting',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} more',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredients detected',
			'meal.analysis.ingredientsPending' => 'Scanning ingredients…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.localInference.reviewTitle' => 'Review detected ingredients',
			'meal.localInference.reviewSubtitle' => 'This was interpreted on your device. Correct names or portions before nutrition is calculated.',
			'meal.localInference.mealName' => 'Meal name',
			'meal.localInference.ingredient' => 'Ingredient',
			'meal.localInference.grams' => 'Estimated grams',
			'meal.localInference.removeIngredient' => 'Remove ingredient',
			'meal.localInference.continueLabel' => 'Continue',
			'meal.localInference.invalidProposal' => 'Add at least one ingredient and use a positive gram amount.',
			'meal.localInference.localUnavailable' => 'On-device analysis is unavailable right now.',
			'meal.localInference.calculationDetails' => 'How this was calculated',
			'meal.localInference.interpretationLocal' => 'Ingredients interpreted on this device',
			'meal.localInference.interpretationCloud' => 'Ingredients interpreted in the cloud',
			'meal.localInference.interpretationManual' => 'Ingredients reviewed or edited by you',
			'meal.localInference.nutritionRemote' => 'Nutrition fetched from USDA through Calorify',
			'meal.localInference.nutritionFallback' => 'Some nutrition values were estimated remotely',
			'meal.localInference.calculationServer' => 'Calories and macros calculated by Calorify',
			'meal.localInference.fallbackUsed' => 'Local analysis fell back to cloud processing',
			'meal.localInference.noRawContent' => 'Diagnostic receipts do not include your meal text or photo.',
			'meal.feedback.title' => 'What looks wrong?',
			'meal.feedback.subtitle' => 'Help us improve the analysis by selecting one or more issues.',
			'meal.feedback.tellUsMore' => 'Tell us more',
			'meal.feedback.describeIncorrect' => 'Describe what was incorrect',
			'meal.feedback.submit' => 'Submit',
			'meal.feedback.issueFoodIdentification' => 'Food identification',
			'meal.feedback.issuePortionSize' => 'Portion size',
			'meal.feedback.issueCalorieDistribution' => 'Calorie distribution',
			'meal.feedback.issueMacrosWrong' => 'Macros are wrong',
			'meal.feedback.issueMissingItems' => 'Missing items',
			'meal.feedback.issueExtraItems' => 'Extra items',
			'meal.feedback.issueOther' => 'Other',
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
			'settings.sections.localInference' => 'ON-DEVICE ANALYSIS',
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
			'settings.localInference.title' => 'On-device meal analysis',
			'settings.localInference.subtitle' => 'Interpret supported meals with Gemini Nano before nutrition is calculated',
			'settings.localInference.unavailable' => 'Not available on this device',
			'settings.localInference.rolloutUnavailable' => 'Available hardware found, but this feature is not enabled for this app release',
			'settings.localInference.modelSetup' => 'Gemini Nano needs to finish downloading before this can be enabled',
			'settings.localInference.useLocalTitle' => 'Use on-device analysis',
			'settings.localInference.useLocalSubtitle' => 'Optional and off by default. Results may be less reliable for complex meals.',
			'settings.localInference.disclosureTitle' => 'Before you enable on-device analysis',
			'settings.localInference.disclosureBody' => 'Gemini Nano can identify ingredients and estimate portions on supported Android devices. Your reviewed ingredient proposal is sent to Calorify for USDA nutrition grounding and calculation.',
			'settings.localInference.disclosureLimit1' => 'Complex dishes, hidden ingredients, and portion sizes may be identified incorrectly.',
			'settings.localInference.disclosureLimit2' => 'The model may be unavailable while downloading, busy, in the background, or limited by the device.',
			'settings.localInference.disclosureLimit3' => 'If local interpretation cannot finish, this beta automatically sends your original meal description to Calorify for cloud analysis.',
			'settings.localInference.acknowledgement' => 'I understand that I should review detected ingredients and portions.',
			'settings.localInference.enable' => 'Acknowledge and enable',
			'settings.localInference.cancel' => 'Cancel',
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
			'settings.clearAllData.subtitle' => 'Delete Calorify data stored on this device',
			'settings.clearAllData.localOnlySubtitle' => 'Delete Calorify data stored on this device',
			'settings.clearAllData.confirmationTitle' => 'Clear All Data?',
			'settings.clearAllData.confirmationMessage' => 'This permanently deletes logged meals, favorites, and profile settings from this device. Meals already shared to Health Connect and Health Connect access are managed separately in Settings > Health Connect.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'This permanently deletes logged meals, favorites, and profile settings from this device. Meals already shared to Health Connect and Health Connect access are managed separately in Settings > Health Connect.',
			'settings.clearAllData.cancel' => 'Cancel',
			'settings.clearAllData.clearEverything' => 'Clear Everything',
			'settings.debugOptions.title' => 'Debug Options',
			'settings.developerModeEnabled' => 'Developer mode enabled!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'View and manage permissions',
			'settings.healthConnect.unavailable.title' => 'Health Connect Unavailable',
			'settings.healthConnect.unavailable.description' => 'Health Connect is not supported on this device.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect is not supported on this device.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect needs attention',
			'settings.healthConnect.updateRequired.description' => 'Install or update Health Connect before managing access.',
			'settings.healthConnect.updateRequired.action' => 'Install or update',
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
			'settings.healthConnect.disconnect' => 'Disconnect Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Disconnect Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify will lose access to Health Connect. Data already written there is not deleted.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Disconnect',
			'settings.healthConnect.deleteSyncedMeals' => 'Delete Calorify meals from Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Delete synced meals?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Delete meals synchronized by this version of Calorify from Health Connect? Your local meal log will not change. Older Calorify entries may still need to be removed using Manage Data in Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Delete synced meals',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Calorify meals were deleted from Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Synced meals could not be deleted. Please try again.',
			'settings.healthConnect.connectionPartial' => 'Some Health Connect features are enabled.',
			'settings.healthConnect.connectionComplete' => 'Both Health Connect features are enabled.',
			'settings.healthConnect.actionFailed' => 'Health Connect could not be opened. Please try again.',
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
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Limited analytics and diagnostics\n${appLabel} uses basic app events and crash diagnostics to improve reliability. Health record values are not used for advertising or sold.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Limited analytics and diagnostics\n${appLabel} uses basic app events and crash diagnostics to improve reliability. Health record values are not used for advertising or sold.',
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
			_ => null,
		} ?? switch (path) {
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
			'localNutritionPhase4.nutritionBundled' => 'Nutrition matched from the downloaded USDA pack',
			'localNutritionPhase4.nutritionCached' => 'Nutrition matched from the on-device USDA cache',
			'localNutritionPhase4.nutritionMixed' => 'Nutrition combined from downloaded, cached, and remote USDA rows',
			'localNutritionPhase4.calculationLocal' => 'Calories and macros calculated on this device',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: downloaded USDA pack',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: on-device USDA cache',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: USDA row fetched through Calorify',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: deterministic nutrition constant',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · dataset ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Smaller',
			'localNutritionPhase4.portionEstimated' => 'Estimated',
			'localNutritionPhase4.portionLarger' => 'Larger',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Which portion was closest for ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Which meal was this?',
			'localNutritionPhase4.localNutritionTip' => 'Calculated from verified local nutrition data.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Download nutrition data',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Local nutrition data is not available for this app release.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'No verified nutrition pack is downloaded.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Downloading and verifying nutrition data…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Pack ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} cached USDA rows · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Check for update',
			'localNutritionPhase4.offlineNutritionClear' => 'Clear local nutrition data',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Clear local nutrition data?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Clear data',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Could not download and verify local nutrition data: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Local nutrition data cleared',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Back',
			'watch.common.cancel' => 'Cancel',
			'watch.common.delete' => 'Delete',
			'watch.common.retry' => 'Retry',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Nutrient',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} grams',
			'watch.nutrition.protein' => 'Protein',
			'watch.nutrition.carbs' => 'Carbs',
			'watch.nutrition.fat' => 'Fat',
			'watch.nutrition.fiber' => 'Fiber',
			'watch.sync.syncWithPhone' => 'Sync with phone',
			'watch.sync.syncing' => 'Syncing…',
			'watch.sync.synced' => 'Synced',
			'watch.sync.syncedJustNow' => 'Synced just now',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Synced ${minutes}m ago',
			'watch.sync.failed' => 'Sync failed',
			'watch.sync.phoneDisconnected' => 'Phone disconnected',
			'watch.sync.tapToSync' => 'Tap to sync',
			'watch.sync.refreshFailed' => 'Could not refresh. Check your phone.',
			'watch.sync.openPhone' => 'Open Calorify on your phone, then tap refresh.',
			'watch.home.today' => 'Today',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} calories consumed out of ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} over goal',
			'watch.home.remaining' => ({required Object calories}) => '${calories} remaining',
			'watch.home.left' => ({required Object calories}) => '${calories} left',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal goal',
			'watch.home.logMeal' => 'Log a meal',
			'watch.home.todayMeals' => 'Today\'s meals',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Today\'s meals, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'View ${count} more',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} more meals, tap to view all',
			'watch.home.noMeals' => 'No meals logged',
			'watch.home.noMealsSemantics' => 'No meals logged today',
			'watch.home.tapLog' => 'Tap Log to start',
			'watch.home.removedFromQueue' => 'Meal removed from the offline queue.',
			'watch.home.removedOffline' => 'Meal removed offline. It will sync when your phone reconnects.',
			'watch.home.deleteFailed' => 'Could not delete meal',
			'watch.history.title' => 'Today\'s meals',
			'watch.history.refresh' => 'Refresh meals',
			'watch.history.loadFailed' => 'Could not load meals',
			'watch.history.syncFailed' => 'Could not sync',
			'watch.history.emptyTitle' => 'No meals yet',
			'watch.history.emptyMessage' => 'Log a meal from Home to see it here.',
			'watch.favorites.title' => 'Favorites',
			'watch.favorites.refresh' => 'Refresh favorites',
			'watch.favorites.loadFailed' => 'Could not load favorites',
			'watch.favorites.syncFailed' => 'Could not sync',
			'watch.favorites.emptyTitle' => 'No favorites yet',
			'watch.favorites.emptyMessage' => 'Star meals in the phone app for one-tap logging here.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} calories. Tap to log.',
			'watch.favorites.logged' => ({required Object name}) => '${name} logged!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} saved offline. It will sync when your phone reconnects.',
			'watch.favorites.saveFailed' => 'Could not save the meal. Please try again.',
			'watch.favorites.log' => 'Log',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calories, logged at ${time}.',
			'watch.meal.longPressDelete' => 'Long press to delete.',
			'watch.meal.deleteTitle' => 'Delete meal?',
			'watch.voice.title' => 'Voice meal log',
			'watch.voice.processing' => 'Checking your meal…',
			'watch.voice.processingDescription' => 'Estimating portions and nutrition',
			'watch.voice.listening' => 'Listening',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Stop recording',
			'watch.voice.start' => 'Tap to start recording',
			'watch.voice.starting' => 'Starting microphone…',
			'watch.voice.prompt' => 'Tap, then describe your meal',
			'watch.voice.tapToRetry' => 'Tap to retry',
			'watch.voice.example' => 'Try “2 rotis with dal”',
			'watch.voice.unavailable' => 'Voice input is unavailable. Check microphone permission in watch settings.',
			'watch.voice.didNotStart' => 'Microphone did not start. Tap to retry.',
			'watch.voice.startFailed' => 'Could not start recording. Check microphone permissions.',
			'watch.voice.allowMicrophone' => 'Allow microphone access to log meals by voice.',
			'watch.voice.needsConnection' => 'Voice recognition needs a connection. Tap to retry.',
			'watch.voice.microphoneUnavailable' => 'The microphone is unavailable. Tap to retry.',
			'watch.voice.microphoneBusy' => 'The microphone is busy. Wait a moment and retry.',
			'watch.voice.languageUnsupported' => 'Voice input does not support the watch language.',
			'watch.voice.temporarilyBusy' => 'Voice input is temporarily busy. Wait a moment and retry.',
			'watch.voice.notRecognized' => 'I didn\'t catch that. Tap the mic and try again.',
			'watch.voice.noSpeech' => 'No speech detected. Tap the mic to try again.',
			'watch.voice.analysisFailed' => 'Analysis failed. Please try again.',
			'watch.voice.mealNotIdentified' => 'Couldn\'t identify that meal. Try describing it differently.',
			'watch.result.title' => 'Meal details',
			'watch.result.savedOffline' => 'Saved offline',
			'watch.result.logged' => 'Logged!',
			'watch.result.mealFound' => 'Meal found',
			'watch.result.estimatedEnergy' => 'Estimated energy',
			'watch.result.logMeal' => 'Log meal',
			'watch.result.logging' => 'Logging…',
			'watch.result.logAnother' => 'Log another',
			'watch.result.goingBack' => 'Going back…',
			'watch.result.savedOfflineMessage' => 'Meal saved offline. It will sync when your phone reconnects.',
			'watch.result.saveFailed' => 'Could not save the meal. Please try again.',
			'common.betaTag' => 'Beta',
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
