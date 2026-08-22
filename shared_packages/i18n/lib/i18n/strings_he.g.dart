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
class TranslationsHe with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.he,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <he>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsHe _root = this; // ignore: unused_field

	@override 
	TranslationsHe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHe(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'עברית';
	@override String get flag => '🇮🇱';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsHe errors = _TranslationsErrorsHe._(_root);
	@override late final _TranslationsOnboardingHe onboarding = _TranslationsOnboardingHe._(_root);
	@override late final _TranslationsTabsHe tabs = _TranslationsTabsHe._(_root);
	@override late final _TranslationsHomeHe home = _TranslationsHomeHe._(_root);
	@override late final _TranslationsHistoryHe history = _TranslationsHistoryHe._(_root);
	@override late final _TranslationsMealHe meal = _TranslationsMealHe._(_root);
	@override late final _TranslationsFavoritesHe favorites = _TranslationsFavoritesHe._(_root);
	@override late final _TranslationsProfileHe profile = _TranslationsProfileHe._(_root);
	@override late final _TranslationsHealthScoreHe healthScore = _TranslationsHealthScoreHe._(_root);
	@override late final _TranslationsEditProfileHe editProfile = _TranslationsEditProfileHe._(_root);
	@override late final _TranslationsSettingsHe settings = _TranslationsSettingsHe._(_root);
	@override late final _TranslationsRemindersHe reminders = _TranslationsRemindersHe._(_root);
	@override late final _TranslationsNotificationsHe notifications = _TranslationsNotificationsHe._(_root);
	@override late final _TranslationsLoginHe login = _TranslationsLoginHe._(_root);
	@override late final _TranslationsDisclaimerHe disclaimer = _TranslationsDisclaimerHe._(_root);
	@override late final _TranslationsLocalNutritionPhase4He localNutritionPhase4 = _TranslationsLocalNutritionPhase4He._(_root);
	@override late final _TranslationsCommonHe common = _TranslationsCommonHe._(_root);
	@override late final _TranslationsFeedbackRatingHe feedbackRating = _TranslationsFeedbackRatingHe._(_root);
	@override late final _TranslationsHealthHe health = _TranslationsHealthHe._(_root);
}

// Path: errors
class _TranslationsErrorsHe implements TranslationsErrorsEn {
	_TranslationsErrorsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'ביצעת יותר מדי בקשות. אנא המתן רגע ונסה שוב.';
	@override String get networkError => 'שגיאת רשת. בדוק את חיבור האינטרנט שלך.';
	@override String get unknownError => 'משהו השתבש. אנא נסה שוב מאוחר יותר.';
	@override String get loadingProfileData => 'שגיאה בטעינת נתוני הפרופיל';
	@override String get somethingWentWrong => 'משהו השתבש.';
	@override String get retry => 'נסה שוב';
}

// Path: onboarding
class _TranslationsOnboardingHe implements TranslationsOnboardingEn {
	_TranslationsOnboardingHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'ברוכים הבאים ל${appLabel}';
	@override String get subtitle => 'עמית התזונה האישי שלך המונע על ידי AI';
	@override String get getStarted => 'התחל';
	@override late final _TranslationsOnboardingFeaturesHe features = _TranslationsOnboardingFeaturesHe._(_root);
	@override late final _TranslationsOnboardingGenderHe gender = _TranslationsOnboardingGenderHe._(_root);
	@override late final _TranslationsOnboardingHeightHe height = _TranslationsOnboardingHeightHe._(_root);
	@override late final _TranslationsOnboardingWeightHe weight = _TranslationsOnboardingWeightHe._(_root);
	@override late final _TranslationsOnboardingAgeHe age = _TranslationsOnboardingAgeHe._(_root);
	@override late final _TranslationsOnboardingBmiScaleHe bmiScale = _TranslationsOnboardingBmiScaleHe._(_root);
	@override late final _TranslationsOnboardingWeightGoalHe weightGoal = _TranslationsOnboardingWeightGoalHe._(_root);
	@override late final _TranslationsOnboardingActivityLevelHe activityLevel = _TranslationsOnboardingActivityLevelHe._(_root);
	@override late final _TranslationsOnboardingHealthConnectHe healthConnect = _TranslationsOnboardingHealthConnectHe._(_root);
	@override late final _TranslationsOnboardingReinforcementHe reinforcement = _TranslationsOnboardingReinforcementHe._(_root);
}

// Path: tabs
class _TranslationsTabsHe implements TranslationsTabsEn {
	_TranslationsTabsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'דשבורד';
	@override String get history => 'ההיסטוריה';
}

// Path: home
class _TranslationsHomeHe implements TranslationsHomeEn {
	_TranslationsHomeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryHe aiSummary = _TranslationsHomeAiSummaryHe._(_root);
	@override late final _TranslationsHomeDailyGoalHe dailyGoal = _TranslationsHomeDailyGoalHe._(_root);
	@override late final _TranslationsHomeDailySummaryHe dailySummary = _TranslationsHomeDailySummaryHe._(_root);
	@override late final _TranslationsHomeIntakeProgressHe intakeProgress = _TranslationsHomeIntakeProgressHe._(_root);
	@override late final _TranslationsHomeIntakeHistoryHe intakeHistory = _TranslationsHomeIntakeHistoryHe._(_root);
	@override late final _TranslationsHomeMealLogHe mealLog = _TranslationsHomeMealLogHe._(_root);
	@override late final _TranslationsHomeMealDescriptionHe mealDescription = _TranslationsHomeMealDescriptionHe._(_root);
	@override late final _TranslationsHomeFavoriteMealsHe favoriteMeals = _TranslationsHomeFavoriteMealsHe._(_root);
	@override late final _TranslationsHomeMealSnapHe mealSnap = _TranslationsHomeMealSnapHe._(_root);
	@override late final _TranslationsHomeConnectHealthHe connectHealth = _TranslationsHomeConnectHealthHe._(_root);
}

// Path: history
class _TranslationsHistoryHe implements TranslationsHistoryEn {
	_TranslationsHistoryHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'אין ארוחות רשומות';
	@override String get emptyMessage => 'צלם תמונה של הארוחה האחרונה שלך כדי לרשום כאן.';
	@override String get today => 'היום';
	@override String get yesterday => 'אתמול';
}

// Path: meal
class _TranslationsMealHe implements TranslationsMealEn {
	_TranslationsMealHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'אוי לא!';
	@override String get delete => 'מחק';
	@override String get editMeal => 'ערוך ארוחה';
	@override String get addMeal => 'הוסף ארוחה';
	@override String get saveMeal => 'שמור ארוחה';
	@override String get save => 'שמור';
	@override String get mealName => 'שם הארוחה';
	@override String get mealNameHint => 'למשל: חביתה מקושקשת עם טוסט';
	@override String get nameRequired => 'הזן שם ארוחה לפני השמירה.';
	@override String get mealQuantity => 'כמות הארוחה';
	@override String get mealQuantityHint => 'למשל: קערה אחת, 2 פרוסות';
	@override String get timeOfMeal => 'שעת הארוחה';
	@override String get timeOfMealHint => 'בחר את השעה שבה אכלת את הארוחה';
	@override String get mealType => 'סוג ארוחה';
	@override late final _TranslationsMealNutritionHe nutrition = _TranslationsMealNutritionHe._(_root);
	@override late final _TranslationsMealDeleteConfirmationHe deleteConfirmation = _TranslationsMealDeleteConfirmationHe._(_root);
	@override String get addedToLog => 'הארוחה נוספה ליומן שלך!';
	@override String couldNotAdd({required Object error}) => 'לא ניתן להוסיף ארוחה: ${error}';
	@override String get savedSuccessfully => 'הארוחה נוספה בהצלחה!';
	@override String get updatedSuccessfully => 'הארוחה עודכנה בהצלחה!';
	@override String errorSaving({required Object error}) => 'שגיאה בשמירת הארוחה: ${error}';
	@override String get removedFromFavorites => 'הוסר מהמועדפים!';
	@override String get savedAsFavorite => 'הארוחה נשמרה כמועדפת!';
	@override String get unfavorite => 'הסר מהמועדפים';
	@override String couldNotUpdateFavorite({required Object error}) => 'לא ניתן לעדכן מועדף: ${error}';
	@override String get feedbackThanks => 'תודה על המשוב!';
	@override String get reanalysisUpdated => 'עדכנו את ניתוח הארוחה בהתאם למשוב שלך.';
	@override String failedToProcess({required Object error}) => 'נכשל בעיבוד: ${error}';
	@override String failedToProcessImage({required Object error}) => 'נכשל בעיבוד התמונה: ${error}';
	@override String errorCompressingImage({required Object error}) => 'שגיאה בדחיסת תמונה: ${error}';
	@override String get failedToSave => 'נכשל בשמירת הנתונים. אנא נסה שוב.';
	@override String get skip => 'דלג';
	@override late final _TranslationsMealQuestionFlowHe questionFlow = _TranslationsMealQuestionFlowHe._(_root);
	@override late final _TranslationsMealAnalysisHe analysis = _TranslationsMealAnalysisHe._(_root);
	@override late final _TranslationsMealLocalInferenceHe localInference = _TranslationsMealLocalInferenceHe._(_root);
	@override late final _TranslationsMealFeedbackHe feedback = _TranslationsMealFeedbackHe._(_root);
}

// Path: favorites
class _TranslationsFavoritesHe implements TranslationsFavoritesEn {
	_TranslationsFavoritesHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מועדפים';
	@override String get empty => 'עדיין אין ארוחות מועדפות.';
	@override String get searchPlaceholder => 'חפש ארוחות מועדפות';
	@override String get searchEmptyTitle => 'אין מועדפים התואמים לחיפוש שלך';
	@override String get searchEmptySubtitle => 'נסה שם ארוחה, כמות או סוג ארוחה אחר.';
	@override String get sortLabel => 'מיין מועדפים';
	@override String get undo => 'בטל';
	@override String removed({required Object name}) => 'הוסר ${name} מהמועדפים';
	@override late final _TranslationsFavoritesSortOptionsHe sortOptions = _TranslationsFavoritesSortOptionsHe._(_root);
}

// Path: profile
class _TranslationsProfileHe implements TranslationsProfileEn {
	_TranslationsProfileHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'פרופיל';
	@override String get noProfileData => 'לא נמצאו נתוני פרופיל';
	@override String get yourProfile => 'הפרופיל שלך';
	@override String get viewAndManage => 'הצג ונהל את המידע הבריאותי שלך';
	@override late final _TranslationsProfileSectionsHe sections = _TranslationsProfileSectionsHe._(_root);
	@override String get gender => 'מגדר';
	@override String get height => 'גובה';
	@override String get weight => 'משקל';
	@override String get age => 'גיל';
	@override String get weightGoal => 'מטרת משקל';
	@override String get targetWeight => 'משקל יעד';
	@override String get activityLevel => 'רמת פעילות';
	@override String get healthMetrics => 'מדדי בריאות';
	@override String get notSet => 'לא הוגדר';
	@override String get years => 'שנים';
	@override String get updatedSuccessfully => 'הפרופיל עודכן בהצלחה!';
	@override late final _TranslationsProfileCalculatedValuesHe calculatedValues = _TranslationsProfileCalculatedValuesHe._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreHe implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ציון בריאות';
	@override String get whyThisScore => 'למה הציון הזה?';
	@override String get note => 'ציון זה הוא הערכת AI המבוססת על הרכיבים המזוהים וצפיפותם התזונתית. תמיד התייעץ/י עם מקצוען לקבלת ייעוץ תזונתי מותאם.';
	@override String get unhealthy => 'לא בריא';
	@override String get healthy => 'בריא';
	@override String get neutral => 'נייטרלי';
}

// Path: editProfile
class _TranslationsEditProfileHe implements TranslationsEditProfileEn {
	_TranslationsEditProfileHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ערוך פרופיל';
	@override late final _TranslationsEditProfileSectionsHe sections = _TranslationsEditProfileSectionsHe._(_root);
	@override String get gender => 'מגדר';
	@override String get dateOfBirth => 'תאריך לידה';
	@override String get height => 'גובה';
	@override String get weight => 'משקל';
	@override String get weightGoal => 'מטרת משקל';
	@override String get activityLevel => 'רמת פעילות';
	@override String get metric => 'מטרי';
	@override String get imperial => 'אימפריאלי';
	@override String get unitCm => 'ס"מ';
	@override String get unitFt => 'רגל';
	@override String get unitKg => 'ק"ג';
	@override String get unitLbs => 'lb';
	@override String get metricCm => 'מטרי (ס"מ)';
	@override String get imperialFtIn => 'אימפריאלי (רגל/אינץ\')';
	@override String get metricKg => 'מטרי (ק"ג)';
	@override String get imperialLbs => 'אימפריאלי (lbs)';
	@override late final _TranslationsEditProfileGendersHe genders = _TranslationsEditProfileGendersHe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsHe weightGoals = _TranslationsEditProfileWeightGoalsHe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsHe activityLevels = _TranslationsEditProfileActivityLevelsHe._(_root);
}

// Path: settings
class _TranslationsSettingsHe implements TranslationsSettingsEn {
	_TranslationsSettingsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הגדרות';
	@override late final _TranslationsSettingsSectionsHe sections = _TranslationsSettingsSectionsHe._(_root);
	@override late final _TranslationsSettingsEditProfileHe editProfile = _TranslationsSettingsEditProfileHe._(_root);
	@override late final _TranslationsSettingsLanguageHe language = _TranslationsSettingsLanguageHe._(_root);
	@override late final _TranslationsSettingsHeightUnitHe heightUnit = _TranslationsSettingsHeightUnitHe._(_root);
	@override late final _TranslationsSettingsWeightUnitHe weightUnit = _TranslationsSettingsWeightUnitHe._(_root);
	@override late final _TranslationsSettingsMealRemindersHe mealReminders = _TranslationsSettingsMealRemindersHe._(_root);
	@override late final _TranslationsSettingsLocalInferenceHe localInference = _TranslationsSettingsLocalInferenceHe._(_root);
	@override late final _TranslationsSettingsThemeHe theme = _TranslationsSettingsThemeHe._(_root);
	@override late final _TranslationsSettingsSendFeedbackHe sendFeedback = _TranslationsSettingsSendFeedbackHe._(_root);
	@override late final _TranslationsSettingsExportMealHistoryHe exportMealHistory = _TranslationsSettingsExportMealHistoryHe._(_root);
	@override late final _TranslationsSettingsClearAllDataHe clearAllData = _TranslationsSettingsClearAllDataHe._(_root);
	@override late final _TranslationsSettingsDebugOptionsHe debugOptions = _TranslationsSettingsDebugOptionsHe._(_root);
	@override String get developerModeEnabled => 'מצב מפתח מופעל!';
	@override late final _TranslationsSettingsHealthConnectHe healthConnect = _TranslationsSettingsHealthConnectHe._(_root);
	@override late final _TranslationsSettingsAboutHe about = _TranslationsSettingsAboutHe._(_root);
	@override late final _TranslationsSettingsAppInfoHe appInfo = _TranslationsSettingsAppInfoHe._(_root);
}

// Path: reminders
class _TranslationsRemindersHe implements TranslationsRemindersEn {
	_TranslationsRemindersHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הישארו על המסלול עם תזכורות';
	@override String get description => 'קבל תזכורות עדינות לרישום הארוחות והישאר עקבי עם יעדי התזונה שלך';
	@override String get notificationsEnabled => 'התראות מופעלות';
	@override String get notificationsDisabled => 'התראות מושבתות';
	@override String get enabledSubtitle => 'תקבל תזכורות לארוחות';
	@override String get disabledSubtitle => 'הפעל התראות כדי לקבל תזכורות לארוחות';
	@override String get mealReminders => 'תזכורות ארוחה';
	@override String get breakfast => 'בוקר';
	@override String get lunch => 'צהריים';
	@override String get dinner => 'ערב';
	@override String get snack => 'נשנוש';
	@override String get unknown => 'לא ידוע';
	@override String get change => 'שנה';
	@override String get enableNotifications => 'הפעל התראות';
	@override String get skipForNow => 'דלג לעכשיו';
	@override String get saveChanges => 'שמור שינויים';
	@override String get enabledSuccessfully => 'ההתראות הופעלו בהצלחה!';
	@override String get permissionDenied => 'הרשאת התראות נדחתה';
	@override String errorEnabling({required Object error}) => 'שגיאה בהפעלת התראות: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'שגיאה בהשלמת ההגדרה: ${error}';
}

// Path: notifications
class _TranslationsNotificationsHe implements TranslationsNotificationsEn {
	_TranslationsNotificationsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastHe breakfast = _TranslationsNotificationsBreakfastHe._(_root);
	@override late final _TranslationsNotificationsLunchHe lunch = _TranslationsNotificationsLunchHe._(_root);
	@override late final _TranslationsNotificationsDinnerHe dinner = _TranslationsNotificationsDinnerHe._(_root);
	@override late final _TranslationsNotificationsSnackHe snack = _TranslationsNotificationsSnackHe._(_root);
	@override late final _TranslationsNotificationsTestHe test = _TranslationsNotificationsTestHe._(_root);
}

// Path: login
class _TranslationsLoginHe implements TranslationsLoginEn {
	_TranslationsLoginHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'התחבר';
	@override String get signInWithGoogle => 'התחבר עם Google';
	@override String get signInFailed => 'ההתחברות עם Google נכשלה או בוטלה.';
}

// Path: disclaimer
class _TranslationsDisclaimerHe implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'שים/י לב';
	@override late final _TranslationsDisclaimerSnapHe snap = _TranslationsDisclaimerSnapHe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateHe weightEstimate = _TranslationsDisclaimerWeightEstimateHe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsHe healthMetrics = _TranslationsDisclaimerHealthMetricsHe._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureHe calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureHe._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4He implements TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4He._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'Nutrition matched from the downloaded USDA pack';
	@override String get nutritionCached => 'Nutrition matched from the on-device USDA cache';
	@override String get nutritionMixed => 'Nutrition combined from downloaded, cached, and remote USDA rows';
	@override String get calculationLocal => 'Calories and macros calculated on this device';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: downloaded USDA pack';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: on-device USDA cache';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: USDA row fetched through Calorify';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: deterministic nutrition constant';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · dataset ${datasetVersion}';
	@override String get portionSmaller => 'Smaller';
	@override String get portionEstimated => 'Estimated';
	@override String get portionLarger => 'Larger';
	@override String portionQuestion({required Object ingredient}) => 'Which portion was closest for ${ingredient}?';
	@override String get mealTypeQuestion => 'Which meal was this?';
	@override String get localNutritionTip => 'Calculated from verified local nutrition data.';
	@override String get offlineNutritionTitle => 'Download nutrition data';
	@override String get offlineNutritionSubtitle => 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.';
	@override String get offlineNutritionUnavailable => 'Local nutrition data is not available for this app release.';
	@override String get offlineNutritionNotDownloaded => 'No verified nutrition pack is downloaded.';
	@override String get offlineNutritionInstalling => 'Downloading and verifying nutrition data…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Pack ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} cached USDA rows · ${size}';
	@override String get offlineNutritionUpdate => 'Check for update';
	@override String get offlineNutritionClear => 'Clear local nutrition data';
	@override String get offlineNutritionClearTitle => 'Clear local nutrition data?';
	@override String get offlineNutritionClearBody => 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.';
	@override String get offlineNutritionClearConfirm => 'Clear data';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Could not download and verify local nutrition data: ${error}';
	@override String get offlineNutritionCleared => 'Local nutrition data cleared';
}

// Path: common
class _TranslationsCommonHe implements TranslationsCommonEn {
	_TranslationsCommonHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get close => 'סגור';
	@override String get kContinue => 'המשך';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingHe implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'נהנים מ-${appLabel}?';
	@override String get yes => 'כן, אני נהנה/ת';
	@override String get no => 'לא ממש';
	@override String get rateStepHeading => 'דרג ב-Play Store';
	@override String get emailStepHeading => 'שלח משוב בדוא"ל';
	@override String soloDevMessage({required Object appLabel}) => 'דירוג קצר עוזר לאחרים למצוא את ${appLabel} ושומר על המשך הפיתוח. האם תקדיש/י רגע להשאיר דירוג?';
	@override String get shareFeedbackViaEmail => 'המשוב שלך מעצב את מה שיבוא אחר כך — אנו קוראים כל הודעה. תרצה/י לשתף את מחשבותיך במייל?';
	@override String get rateCta => 'דרג ב-Play Store';
	@override String get maybeLater => 'אולי מאוחר יותר';
	@override String get sendFeedback => 'שלח משוב';
	@override String get noThanks => 'לא, תודה';
	@override String get aboutUsDescription => 'נוצר/ה בקפידה על ידי צוות קטן. אנו מתמקדים בפרטיות, בפשטות ובעזרה ביצירת הרגלי אכילה טובים יותר.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'סקרנים מי מאחורי ${appLabel}? ראו ';
	@override String get aboutUsLinkLabel => 'אודותינו';
	@override String get thankYouMessage => 'תודה! נשאל שוב בעתיד.';
}

// Path: health
class _TranslationsHealthHe implements TranslationsHealthEn {
	_TranslationsHealthHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'לא ניתן לסנכרן ל-Health Connect';
	@override String get mealSynced => 'הארוחה סונכרנה עם Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesHe implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionHe foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionHe._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisHe aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisHe._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationHe healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationHe._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderHe implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מה המגדר שלך?';
	@override String get description => 'מגדר עוזר לנו לחשב במדויק את קצב חילוף החומרים הבסיסי (BMR) שלך.';
	@override String get next => 'הבא';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightHe implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'כמה אתה/את גבוה/ה?';
	@override String get description => 'הגובה שלך מסייע לנו לחשב במדויק את ה-BMI ואת צרכי האנרגיה.';
	@override String get metric => 'מטרי';
	@override String get imperial => 'אימפריאלי';
	@override String get next => 'הבא';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightHe implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'מה המשקל הנוכחי שלך?';
	@override String get currentDescription => 'המשקל הנוכחי חשוב להתאמת היעדים היומיים האישיים שלך.';
	@override String get targetTitle => 'מה המשקל היעד שלך?';
	@override String get targetDescription => 'קביעת משקל מטרה עוזרת לנו לתכנן תוכנית ארוכת טווח עבורך.';
	@override String get metric => 'מטרי';
	@override String get imperial => 'אימפריאלי';
	@override String get next => 'הבא';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeHe implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מתי יום הולדתך?';
	@override String get description => 'הגיל שלך מסייע לנו לחשב במדויק את צריכת הקלוריות שלך.';
	@override String get next => 'הבא';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleHe implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'מתחת';
	@override String get healthy => 'בריא';
	@override String get overweight => 'מייגע';
	@override String get obese => 'חולה';
	@override late final _TranslationsOnboardingBmiScaleCategoriesHe categories = _TranslationsOnboardingBmiScaleCategoriesHe._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesHe messages = _TranslationsOnboardingBmiScaleMessagesHe._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalHe implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מה היעד שלך?';
	@override String get description => 'בחר את המטרה שמתארת הכי טוב מה ברצונך להשיג';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelHe implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'כמה אתה פעיל/ה?';
	@override String get description => 'זה עוזר לנו לחשב במדויק יותר את צרכי הקלוריות היומיים שלך';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectHe implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'חבר ל-Health Connect';
	@override String get description => 'סנכרן את נתוני הבריאות שלך לתובנות טובות יותר ומעקב קלוריות אוטומטי';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingHe automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingHe._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsHe progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsHe._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationHe seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationHe._(_root);
	@override String get connected => 'Health Connect מחובר';
	@override String get notConnected => 'Health Connect לא מחובר';
	@override String get setup => 'הגדר Health Connect';
	@override String get skipForNow => 'דלג לעכשיו';
	@override String get statusConnected => 'Health Connect מחובר.';
	@override String get statusSuccess => 'Health Connect חובר בהצלחה!';
	@override String statusPermissionDenied({required Object appLabel}) => 'הרשאה נדחתה. אנא אפשר הרשאות ל-Health Connect בהגדרות הטלפון עבור ${appLabel}.';
	@override String statusError({required Object error}) => 'שגיאה בהגדרת Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementHe implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessHe trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessHe._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileHe healthProfile = _TranslationsOnboardingReinforcementHealthProfileHe._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleHe goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleHe._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryHe implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'סיכום ה-AI שלך';
	@override String get logMore => 'הקלד/י עוד ארוחות בימים הקרובים כדי לקבל תובנות AI מותאמות אישית.';
	@override String get loading => 'טוען את הסיכום...';
	@override String mealCount({required Object count}) => '${count} ארוחות רשומות';
	@override String macroBalanceScore({required Object score}) => 'ציון איזון ${score}';
	@override String get topFoods => 'המזונות המובילים';
	@override String get trendUp => 'קלוריות במגמת עלייה';
	@override String get trendDown => 'קלוריות במגמת ירידה';
	@override String get trendSteady => 'קלוריות יציבות';
	@override String generatedAt({required Object time}) => 'עודכן ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalHe implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הגדר את המטרה היומית שלך';
	@override String get titleSet => 'המטרה היומית שלך';
	@override String get description => 'מוכן/ה לצאת למסע הבריאות שלך? הגדר כאן את יעד הקלוריות היומי כדי להתחיל.';
	@override String get descriptionSet => 'המצפן הוגדר! זהו יעד הקלוריות היומי שלך להנחיה.';
	@override String get yourGoal => 'המטרה שלך';
	@override String get goal => 'מטרה';
	@override String get dailyCalories => 'קלוריות יומיות (kcal)';
	@override String get setGoal => 'הגדר מטרה';
	@override String get intake => 'צריכה';
	@override String get burned => 'נשרף';
	@override String get weightImpact => 'השפעה על משקל';
	@override String get estLoss => 'אומד. אובדן של';
	@override String get estGain => 'אומד. עלייה של';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryHe implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'סיכום יומי';
	@override String get calories => 'קלוריות';
	@override String get carbs => 'פחמימות';
	@override String get protein => 'חלבון';
	@override String get fat => 'שומן';
	@override String get fiber => 'סיבים';
	@override String get grams => 'גרם';
	@override String get chartAccessibilityLabel => 'תרשים מאקרו-נוטריינטים';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressHe implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'חלוקת המאקרו של היום';
	@override String get target => 'יעד';
	@override String get current => 'נוכחי';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryHe implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'היסטוריית מאקרו ל-7 ימים';
	@override String get trendTitle => 'מגמת היום';
	@override String peakHour({required Object hour}) => 'שיא: ${hour}:00';
	@override String get noHistoryYet => 'עדיין אין היסטוריה';
	@override String get startLogging => 'התחל לרשום ארוחות כדי לראות כאן\nמגמות מאקרו ל-7 ימים';
}

// Path: home.mealLog
class _TranslationsHomeMealLogHe implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ארוחות שנרשמו';
	@override String get emptyMessage => 'צלם תמונה של הארוחה האחרונה שלך כדי לרשום כאן.';
	@override String get noMealsToday => 'אין ארוחות שנרשמו להיום';
	@override String get seeAllMeals => 'ראה את כל הארוחות';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionHe implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הוספה מהירה עם AI';
	@override String get description => 'תאר את הארוחה ותן ל-AI לדאוג לפרטים.';
	@override String get hint => 'למשל: בארוחת בוקר היה לי קערת שיבולת שועל גדולה עם בננה פרוסה וכפית אבקת חלבון...';
	@override String get analyzeMeal => 'נתח ארוחה';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsHe implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ארוחות מועדפות';
	@override String get description => 'הוסף במהירות אחת מהארוחות המועדפות עליך.';
	@override String get noFavorites => 'עדיין אין ארוחות מועדפות.';
	@override String get addFavoriteHint => 'לחץ על הכוכב על מנת לסמן ארוחה כמועדפת.';
	@override String get seeAll => 'הצג הכל';
	@override String get add => 'הוסף';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapHe implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'צלם ומעקב אחר הארוחה';
	@override String get description => 'השתמש במצלמה כדי לצלם את המזון לניתוח על ידי AI.';
	@override String get openCamera => 'פתח מצלמה';
	@override String get gallery => 'גלריה';
	@override String get compressingPhoto => 'מייעל תמונה…';
	@override String get uploadingPhoto => 'מעלה תמונה…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthHe implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'סנכרן עם Health Connect';
	@override String get description => 'סנכרן את נתוני התזונה שלך עם Health Connect';
	@override String get install => 'התקן';
	@override String get connect => 'חבר';
}

// Path: meal.nutrition
class _TranslationsMealNutritionHe implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get calories => 'קלוריות';
	@override String get carbs => 'פחמימות (ג\')';
	@override String get protein => 'חלבון (ג\')';
	@override String get fat => 'שומן (ג\')';
	@override String get fiber => 'סיבים (ג\')';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationHe implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מחיקת ארוחה';
	@override String get message => 'האם אתה בטוח שברצונך למחוק רשומת ארוחה זו?';
	@override String get cancel => 'ביטול';
	@override String get delete => 'מחק';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowHe implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'שאלה ${current} מתוך ${total}';
	@override String get noQuestionsAvailable => 'אין שאלות זמינות';
	@override String get next => 'הבא';
	@override String get continueLabel => 'המשך';
}

// Path: meal.analysis
class _TranslationsMealAnalysisHe implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מנתחים את הארוחה שלך';
	@override String get stepStarted => 'מתחילים…';
	@override String get stepDecomposition => 'מנתחים את הארוחה…';
	@override String get stepIngredients => 'מתאימים רכיבים לנתוני תזונה…';
	@override String get stepUncertainty => 'בודקים אמון…';
	@override String get stepMealTypeQuestion => 'עוד מעט…';
	@override String get stepResult => 'מסיימים את התוצאה…';
	@override String get stepError => 'משהו השתבש';
	@override String get stepDefault => 'מנתחים את הארוחה שלך…';
	@override String get progressUnderstand => 'מנסים להבין את הארוחה';
	@override String get progressMatch => 'מחפשים ערכי תזונה לרכיבים';
	@override String get progressCheck => 'בודקים כמויות ואמינות';
	@override String get progressMealType => 'מחליטים סוג ארוחה';
	@override String get progressFinish => 'מחשבים קלוריות ומאקרו-נוטריינטים';
	@override String get detectedIngredientHeading => 'רכיבים שאנו מזהים';
	@override String ingredientsOverflow({required Object count}) => '${count} עוד';
	@override String ingredientsLine({required Object count}) => 'זוהו ${count} רכיבים';
	@override String get ingredientsPending => 'סורק רכיבים…';
	@override String mealPreviewDescription({required Object text}) => '״${text}״';
	@override String get offlineTip0 => 'טיפ: עקביות עדיפה על שלמות — רישומים סדירים מגלים דפוסים חשובים.';
	@override String get offlineTip1 => 'טיפ: באור טבעי ובמבט מלמעלה מקלים דיוק הכמויות בתמונות.';
	@override String get offlineTip2 => 'טיפ: ציין משקאות, רטבים ושמן בישול — הם מוסיפים קלוריות שאנשים שוכחים לעתים קרובות.';
	@override String get offlineTip3 => 'טיפ: הערת כמות קצרה (קערה אחת, קפה גדול) משפרת משמעותית את ההערכות.';
	@override String get offlineTip4 => 'טיפ: רישום אחרי הארוחה עדיין בונה הרגל; שלמות אינה חובה.';
	@override String get offlineTip5 => 'טיפ: ציין איך הוכן האוכל כששיטה משנה קלוריות רבות (מטוגן לעומת אפוי).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceHe implements TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'בדיקת רכיבים שזוהו';
	@override String get reviewSubtitle => 'המידע פוענח במכשיר שלך. תקן שמות או כמויות לפני חישוב הערכים התזונתיים.';
	@override String get mealName => 'שם הארוחה';
	@override String get ingredient => 'רכיב';
	@override String get grams => 'גרמים מוערכים';
	@override String get removeIngredient => 'הסר רכיב';
	@override String get continueLabel => 'המשך';
	@override String get invalidProposal => 'הוסף רכיב אחד לפחות והזן כמות גרמים חיובית.';
	@override String get localUnavailable => 'ניתוח מקומי במכשיר אינו זמין כעת.';
	@override String get calculationDetails => 'כיצד זה חושב';
	@override String get interpretationLocal => 'רכיבים שפוענחו במכשיר זה';
	@override String get interpretationCloud => 'רכיבים שפוענחו בענן';
	@override String get interpretationManual => 'רכיבים שנבדקו או נערכו על ידיך';
	@override String get nutritionRemote => 'ערכים תזונתיים נשלפו מ-USDA באמצעות Calorify';
	@override String get nutritionFallback => 'חלק מהערכים התזונתיים הוערכו מרחוק';
	@override String get calculationServer => 'קלוריות ומקרוס חושבו על ידי Calorify';
	@override String get fallbackUsed => 'הניתוח המקומי עבר לעיבוד בענן';
	@override String get noRawContent => 'קבצי אבחון אינם כוללים את טקסט הארוחה או התמונה שלך.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackHe implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מה לא נראה נכון?';
	@override String get subtitle => 'עזור לנו לשפר את הניתוח על ידי בחירת אחת או יותר מהבעיות.';
	@override String get tellUsMore => 'ספר לנו עוד';
	@override String get describeIncorrect => 'תאר מה היה לא נכון';
	@override String get submit => 'שלח';
	@override String get issueFoodIdentification => 'זיהוי מזון';
	@override String get issuePortionSize => 'גודל מנה';
	@override String get issueCalorieDistribution => 'חלוקת קלוריות';
	@override String get issueMacrosWrong => 'המאקרו-ערכים שגויים';
	@override String get issueMissingItems => 'פריטים חסרים';
	@override String get issueExtraItems => 'פריטים מיותרים';
	@override String get issueOther => 'אחר';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsHe implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get recent => 'אחרונים';
	@override String get calories => 'קלוריות';
	@override String get alphabetical => 'A-ת';
}

// Path: profile.sections
class _TranslationsProfileSectionsHe implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'פרופיל';
	@override String get basicInformation => 'מידע בסיסי';
	@override String get goalsAndActivity => 'מטרות & פעילות';
	@override String get calculatedValues => 'ערכים מחושבים';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesHe implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'מטרה יומית';
	@override String get calPerDay => 'קלוריות/יום';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsHe implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'מידע אישי';
	@override String get physicalMeasurements => 'מדידות פיזיות';
	@override String get goalsAndActivity => 'מטרות & פעילות';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersHe implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get male => 'זכר';
	@override String get female => 'נקבה';
	@override String get other => 'אחר';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsHe implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightHe loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightHe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightHe maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightHe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightHe gainWeight = _TranslationsEditProfileWeightGoalsGainWeightHe._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsHe implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryHe sedentary = _TranslationsEditProfileActivityLevelsSedentaryHe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveHe lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveHe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveHe moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveHe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveHe veryActive = _TranslationsEditProfileActivityLevelsVeryActiveHe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveHe extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveHe._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsHe implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'פרופיל';
	@override String get localization => 'מיקום שפה';
	@override String get notifications => 'התראות';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get localInference => 'ניתוח במכשיר';
	@override String get supportAndLegal => 'תמיכה & משפטי';
	@override String get about => 'אודות';
	@override String get dangerZone => 'אזור מסוכן';
	@override String get developer => 'מפתח';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileHe implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ערוך פרופיל';
	@override String get subtitle => 'עדכן את המידע האישי שלך';
}

// Path: settings.language
class _TranslationsSettingsLanguageHe implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'שפה';
	@override String get subtitle => 'בחר את שפת הממשק המועדפת עליך';
	@override String get searchHint => 'חפש שפות...';
	@override String get noResults => 'לא נמצאו תוצאות';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitHe implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'יחידת גובה';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitHe implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'יחידת משקל';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersHe implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'תזכורות ארוחות';
	@override String get subtitle => 'הישאר על המסלול עם התראות בזמן';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceHe implements TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ניתוח ארוחות במכשיר';
	@override String get subtitle => 'פענוח ארוחות נתמכות באמצעות Gemini Nano לפני חישוב הערכים התזונתיים';
	@override String get unavailable => 'לא זמין במכשיר זה';
	@override String get rolloutUnavailable => 'חומרה תומכת נמצאה, אך תכונה זו אינה זמינה בגרסה זו של האפליקציה';
	@override String get modelSetup => 'Gemini Nano צריך לסיים את ההורדה לפני שניתן יהיה להפעיל זאת';
	@override String get useLocalTitle => 'השתמש בניתוח במכשיר';
	@override String get useLocalSubtitle => 'אופציונלי וכבוי כברירת מחדל. התוצאות עשויות להיות פחות אמינות עבור ארוחות מורכבות.';
	@override String get disclosureTitle => 'לפני הפעלת הניתוח במכשיר';
	@override String get disclosureBody => 'Gemini Nano יכול לזהות רכיבים ולהעריך כמויות במכשירי Android נתמכים. הצעת הרכיבים שבדקת נשלחת ל-Calorify לצורך ביסוס ערכים תזונתיים מ-USDA וחישוב.';
	@override String get disclosureLimit1 => 'מנות מורכבות, רכיבים נסתרים וגדלי מנות עשויים להיות מזוהים באופן שגוי.';
	@override String get disclosureLimit2 => 'המודל עשוי להיות לא זמין בזמן הורדה, כאשר הוא תפוס, ברקע, או בשל מגבלות המכשיר.';
	@override String get disclosureLimit3 => 'אם הפענוח המקומי לא יוכל להסתיים, גרסת בטא זו תשלח באופן אוטומטי את תיאור הארוחה המקורי ל-Calorify לצורך ניתוח בענן.';
	@override String get acknowledgement => 'אני מבין/ה שעלי לבדוק את הרכיבים והכמויות שזוהו.';
	@override String get enable => 'אישור והפעלה';
	@override String get cancel => 'ביטול';
}

// Path: settings.theme
class _TranslationsSettingsThemeHe implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'נושא';
	@override String get light => 'בהיר';
	@override String get dark => 'כהה';
	@override String get system => 'מערכת';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackHe implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'שלח משוב';
	@override String subtitle({required Object appLabel}) => 'עזור לנו לשפר את ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'משוב על אפליקציית ${appLabel}';
	@override String get emailBodyPrefix => 'אנא ספק/י את המשוב שלך למטה:';
	@override String get appVersion => 'גרסת האפליקציה';
	@override String get device => 'מכשיר';
	@override String get osVersion => 'גרסת מערכת ההפעלה';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryHe implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ייצא היסטוריית ארוחות';
	@override String get subtitle => 'שתף CSV של הארוחות שנרשמו';
	@override String get shareText => 'ייצוא היסטוריית הארוחות של Calorify שלך';
	@override String failed({required Object error}) => 'לא ניתן לייצא היסטוריית הארוחות: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataHe implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'נקה את כל הנתונים';
	@override String get subtitle => 'מחק ללא אפשרות שחזור את כל המידע שלך';
	@override String get confirmationTitle => 'לנקות את כל הנתונים?';
	@override String get confirmationMessage => 'פעולה זו לא ניתנת לביטול. כל הארוחות שנרשמו, המועדפים והגדרות הפרופיל ימחקו לצמיתות.';
	@override String get cancel => 'ביטול';
	@override String get clearEverything => 'נקה הכל';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsHe implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אפשרויות דיבוג';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectHe implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'הצג ונהל הרשאות';
	@override late final _TranslationsSettingsHealthConnectUnavailableHe unavailable = _TranslationsSettingsHealthConnectUnavailableHe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsHe permissions = _TranslationsSettingsHealthConnectPermissionsHe._(_root);
	@override String get managePermissions => 'נהל הרשאות';
	@override String get openSettings => 'פתח הגדרות Health Connect';
	@override String get requestPermissions => 'בקש הרשאות';
	@override String get permissionRequestCancelledOrFailed => 'בקשת ההרשאה בוטלה או נכשלה. אנא נסה שוב או אפשר הרשאות באופן ידני בהגדרות Health Connect.';
	@override String get permissionRequestFailed => 'לא ניתן לבקש הרשאות. אנא נסה שוב או אפשר הרשאות באופן ידני בהגדרות Health Connect.';
	@override String get requestingPermissions => 'מבקש…';
}

// Path: settings.about
class _TranslationsSettingsAboutHe implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אודות';
	@override String get tagline => 'מודעות קלוריות מהירה, חינמית ובעדיפות לפרטיות';
	@override late final _TranslationsSettingsAboutOurStoryHe ourStory = _TranslationsSettingsAboutOurStoryHe._(_root);
	@override late final _TranslationsSettingsAboutPrivacyHe privacy = _TranslationsSettingsAboutPrivacyHe._(_root);
	@override late final _TranslationsSettingsAboutDeveloperHe developer = _TranslationsSettingsAboutDeveloperHe._(_root);
	@override late final _TranslationsSettingsAboutFeedbackHe feedback = _TranslationsSettingsAboutFeedbackHe._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoHe implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'בנייה ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastHe implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן ארוחת בוקר! 🍳';
	@override String get body => 'אל תשכח/י לרשום את ארוחת הבוקר שלך';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchHe implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן ארוחת צהריים! 🥗';
	@override String get body => 'הגיע הזמן לרשום את ארוחת הצהריים';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerHe implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן ארוחת ערב! 🍽️';
	@override String get body => 'אל תשכח/י לרשום את ארוחת הערב שלך';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackHe implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן נשנוש! 🍎';
	@override String get body => 'הגיע הזמן לנשנוש בריא';
}

// Path: notifications.test
class _TranslationsNotificationsTestHe implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'התראת בדיקה';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapHe implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} מספקת מידע תזונתי מוערך. הדיוק תלוי בקלט שלך ובשונות של המזון. השתמש/י בזה כהנחיה, לא כמקור מוחלט. להתייעצות אישית התייעץ/י עם איש מקצוע.';
	@override late final _TranslationsDisclaimerSnapPortionSizeHe portionSize = _TranslationsDisclaimerSnapPortionSizeHe._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsHe preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsHe._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsHe ingredients = _TranslationsDisclaimerSnapIngredientsHe._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsHe databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsHe._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateHe implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'על אומדן שינוי משקל';
	@override String get description => 'שינוי משקל משוער הוא חישוב תאורטי המבוסס על מודל קלוריות פנימה מול קלוריות החוצה. הוא מיועד כהנעה מוטיבציונית בלבד, לא כנבואה למשקל בפועל.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyHe calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyHe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsHe biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsHe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightHe waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightHe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHe professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHe._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsHe implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get description => 'מדדים אלה עוזרים לך להבין את צרכי האנרגיה של גופך ומנחים את יעדי התזונה שלך.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrHe bmr = _TranslationsDisclaimerHealthMetricsBmrHe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeHe tdee = _TranslationsDisclaimerHealthMetricsTdeeHe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalHe dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalHe._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureHe implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אומדן הוצאה קלורית';
	@override String get description => 'כאשר נתוני Health Connect אינם זמינים, אנו מעריכים את הקלוריות שנשרפו היום באמצעות ה-BMR שלך ורמת הפעילות (TDEE), פרופורציונלית לחלק היומי שעבר.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedHe howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedHe._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHe professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHe._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionHe implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זיהוי אוכל חכם';
	@override String get description => 'צלם תמונה ותן ל-AI לזהות את הארוחה שלך';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisHe implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ניתוח AI';
	@override String get description => 'קבל נתוני תזונה מיידיים מתאורים שלך';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationHe implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אינטגרציה עם Health Connect';
	@override String get description => 'חבר ל-Health Connect לקבלת תובנות טובות יותר';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesHe implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'תת משקל';
	@override String get healthyWeight => 'משקל בריא';
	@override String get overweight => 'עודף משקל';
	@override String get obese => 'השמנת יתר';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesHe implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'נוכל לעזור לך לבנות תוכנית בריאה להגיע למשקל מאוזן עם ארוחות עשירות בתזונה.';
	@override String get healthy => 'כל הכבוד! אתה בטווח בריא. נעזור לך לשמור על החיוניות והרמות אנרגיה שלך.';
	@override String overweight({required Object appLabel}) => '${appLabel} יפשט את המסע שלך עם מעקב מונחה AI שיעזור לך להגיע ליעד בנוחות.';
	@override String get obese => 'אנחנו כאן לתמוך בך עם הנחיות מותאמות ואסטרטגיות ברות קיימא למטרות הבריאות שלך.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingHe implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מעקב קלוריות אוטומטי';
	@override String get description => 'עקוב אחר הקלוריות שנשרפו מתוך אפליקציות הכושר שלך';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsHe implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'תובנות התקדמות';
	@override String get description => 'קבל תובנות מפורטות על מגמות הבריאות שלך';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationHe implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אינטגרציה חלקה';
	@override String get description => 'סנכרן נתונים מאפליקציות הבריאות האהובות עליך';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessHe implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אתה לא לבד';
	@override String get genericMessage => 'מחקרים מראים שמעקב עקבי הוא המדד מספר 1 להצלחה לטווח הארוך.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'לאדם בגיל ${age} ובמגדר ${gender} השואף ${goal}, מעקב עקבי הוא המדד המוביל להצלחה.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} עושה את זה בעשר פעמים יותר קל מאשר ידני.';
	@override String get getStartedTitle => 'מוכן/ה להתחיל?';
	@override String get tipPhoto => 'צלם תמונה של הארוחות לקבלת ניתוח מיידי';
	@override String get tipConsistency => 'הקלד באופן עקבי כדי לראות התקדמות משמעותית';
	@override String get tipProgress => 'עקוב אחרי ההתקדמות כל יום כדי להישאר מוטיבציה';
	@override String get button => 'יאללה נתחיל';
	@override String get defaultGender => 'יחיד/ה';
	@override String get defaultGoal => 'גרסה בריאה יותר של עצמך';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileHe implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הפרופיל הבריאותי שלך';
	@override String bmiDescription({required Object bmi}) => 'בהתבסס על המידות שלך, ה-BMI שלך הוא ${bmi}.';
	@override String get finalizeDescription => 'נסיים את הפרופיל כדי להתאים עבורך את החוויה.';
	@override String get goalGain => 'להעלות';
	@override String get goalLose => 'להוריד';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'כדי להגיע ליעדך, תצטרך ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'הגעת למשקל היעד! נעזור לך לשמור עליו.';
	@override String get button => 'יאללה נתחיל';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleHe implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'תחילת מעולה!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'נקטת את הצעד הראשון לקראת ${goalText}. כיוון שאתה/את ${activityText}, ${appLabel} יתאים את היעדים שלך לסגנון החיים.';
	@override String get personalizedTargets => 'יעדי קלוריות מותאמים';
	@override String get aiMealDetection => 'זיהוי ארוחות מונע AI';
	@override String get macroBreakdowns => 'פירוט מאקרו-רכיבים מפורט';
	@override String get button => 'יאללה נתחיל';
	@override String get defaultGoal => 'המטרות שלך';
	@override String get defaultActivity => 'פעיל/ה';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightHe implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'להוריד משקל';
	@override String get description => 'יצירת גרעון קלורי להורדת משקל';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightHe implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'לשמור על משקל';
	@override String get description => 'שמירה על המשקל הנוכחי';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightHe implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'להעלות משקל';
	@override String get description => 'יצירת עודף קלורי להעלאת משקל';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryHe implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'יושבני';
	@override String get description => 'מעט או ללא פעילות גופנית';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveHe implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעילות קלה';
	@override String get description => 'אימון קל 1-3 ימים/שבוע';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveHe implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעילות מתונה';
	@override String get description => 'אימון מתון 3-5 ימים/שבוע';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveHe implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעילות גבוהה';
	@override String get description => 'אימון קשה 6-7 ימים/שבוע';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveHe implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעילות אינטנסיבית';
	@override String get description => 'עבודה פיזית קשה או אימון מאוד אינטנסיבי';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableHe implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect לא זמין';
	@override String get description => 'Health Connect אינו זמין במכשיר זה. אנא התקן את Health Connect מה-Play Store (Android 9+) או עדכן ל-Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsHe implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הרשאות';
	@override String get description => 'מבוקשות ההרשאות הבאות כדי לאפשר אינטגרציה עם Health Connect:';
	@override String get granted => 'הוענקו';
	@override String get notGranted => 'לא הוענקו';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHe caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadHe nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadHe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteHe nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteHe._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryHe implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הסיפור שלנו';
	@override String content({required Object appLabel}) => '${appLabel} נולדה מתוך תסכול פשוט: רוב אפליקציות המעקב אחרי קלוריות או מסובכות מדי, או דורשות הקלדה ידנית מתמדת, גובות דמי מנוי גבוהים, או פוגעות בפרטיות.\n\nכאשר מפתח יחיד עמד מאחורי הרעיון, רציתי לבנות משהו פשוט והוגן — אפליקציה שמשתמשת ב-AI להפחית את המאמץ, נשארת מהירה וחינמית לשימוש, ומכבדת את נתוני הבריאות שלך.\n\n${appLabel} היא האפליקציה שהייתי רוצה שתהיה קיימת: ללא חשבונות, ללא איסוף מעקב, ללא פרסומות — רק תובנות ברורות ומעשיות ומטרות בריאות אישיות.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyHe implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הפרטיות שלך חשובה';
	@override String get description => 'פרטיות אינה מחשבה מאוחרת — זו עקרון עיצובי. הנה מה זה אומר בפועל:';
	@override String get noAccounts => 'אין דרישות להקמת חשבונות\nהשתמש באפליקציה מיד. ללא הרשמות, ללא זיהויים.';
	@override String noTracking({required Object appLabel}) => 'ללא מעקב התנהגותי\n${appLabel} אינה עוקבת אחרי הפעילות שלך, אינה בונה פרופילים שימושיים, ולא עוקבת אחרי שימושך באפליקציות או אתרי אינטרנט.';
	@override String noAds({required Object appLabel}) => 'ללא פרסומות לפי עיצוב\n${appLabel} נבנתה לפעול ללא פרסומות או מונטיזציה מבוססת נתונים.';
	@override String get noDataSelling => 'אין מכירת נתונים\nנתוני הבריאות שלך אינם נמכרים או משותפים לצדדים שלישיים.';
	@override String get localStorage => 'אחסון מקומי כעיקרון\nהנתונים שלך נשארים על המכשיר שלך.';
	@override String get privacyPolicy => 'מדיניות פרטיות';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperHe implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'נבנה על ידי מפתח עצמאי';
	@override String description({required Object appLabel}) => '${appLabel} נבנתה ומנוהלת על ידי מפתח יחיד המתמקד ביצירת תוכנת בריאות רגועה המכבדת פרטיות.\n\nהמשובים נקראים באופן אישי ועוזרים לעצב את כיוון האפליקציה.';
	@override String get website => 'אתר';
	@override String get email => 'אימייל';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackHe implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'נהנים מ-${appLabel}?';
	@override String description({required Object appLabel}) => 'המשוב שלך עוזר לשפר את ${appLabel} עבור כולם.';
	@override String get rateApp => 'דרג ב-Play Store';
	@override String get sendFeedback => 'שלח משוב';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeHe implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'גודל מנה';
	@override String get description => 'דיוק הערכות תלוי במידה רבה בהערכת גודל המנה על ידך.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsHe implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'שיטות הכנה';
	@override String description({required Object appLabel}) => 'שיטות בישול יכולות לשנות משמעותית את התוכן התזונתי. ההערכות של ${appLabel} עשויות שלא תמיד להתחשב בכל השינויים האלו.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsHe implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מרכיבים';
	@override String get description => 'מנות מורכבות עם מרכיבים נסתרים רבים עלולות להוביל להערכות פחות מדויקות.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsHe implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מגבלות מאגר הנתונים';
	@override String description({required Object appLabel}) => 'מאגר המזונות של ${appLabel} הוא רחב אך עשוי שלא לכלול כל פריט או וריאציה.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyHe implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'דיוק הקלוריות';
	@override String get description => 'הערכה זו מדויקת ככל שהרישום שלך של צריכת ושריפת הקלוריות מדויק. רישום שגוי יוביל להערכה שגויה.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsHe implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'גורמים ביולוגיים';
	@override String description({required Object appLabel}) => 'הורדה/עלייה ממשית במשקל מושפעת ממטבוליזם, הורמונים, שינה, מתח, רמת נוזלים וגורמים אישיים אחרים ש-${appLabel} לא יכולה למדוד.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightHe implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'משקל מים ותנודות';
	@override String get description => 'משקל יומי רגיל יכול להשתנות משמעותית בגלל החזקת מים, עיכול וזמנים. ההערכה אינה מתחשבת בתנודות יומיות אלו.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHe implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הנחיה מקצועית';
	@override String get description => 'אל תשתמש/י בהערכה זו לקבלת החלטות רפואיות. תמיד התייעץ/י עם איש מקצוע בתחום הבריאות או דיאטן מוסמך לקבלת ייעוץ מותאם.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrHe implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) הוא מספר הקלוריות שגופך שורף במנוחה כדי לקיים פונקציות בסיסיות כמו נשימה וזרימת דם. ה-BMR תלוי בגיל, מגדר, גובה ומשקל. BMR גבוה יותר משקף שריפת קלוריות במנוחה גבוהה יותר, לעיתים בשל מסת שריר גבוהה יותר, גיל צעיר יותר או מגדר זכר. BMR נמוך יותר מעיד בדרך כלל על מסת שריר נמוכה יותר, גיל מתקדם יותר או מגדר נקבה.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeHe implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) הוא כלל הקלוריות שאתה שורף ביום, כולל ה-BMR שלך יחד עם הקלוריות מפעילות גופנית ותנועה יומית. ה-TDEE תלוי ב-BMR וברמת הפעילות שלך. TDEE גבוה יותר אומר שאתה שורף יותר קלוריות בסך הכל, בדרך כלל בגלל פעילות רבה יותר או BMR גבוה יותר. TDEE נמוך יותר מצביע על פחות פעילות יומית או BMR נמוך יותר.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalHe implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מטרה יומית';
	@override String get description => 'המטרה היומית היא צריכת הקלוריות המומלצת עבורך בהתבסס על ה-TDEE והמטרה המשקלית שלך. לאובדן משקל צורכים פחות קלוריות מה-TDEE. לשימור משקל מתאימים ל-TDEE. לעלייה במשקל צורכים יותר קלוריות מה-TDEE. זה עוזר להשיג את שינוי המשקל הרצוי בקצב בריא.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedHe implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'כיצד מחושב האומדן';
	@override String get description => 'אנו מחשבים את ה-TDEE שלך (בהתבסס על הפרופיל) ומכפילים אותו בחלק של היום שעבר (שעות + דקות) / 24 כדי להעריך את הקלוריות שנשרפו עד כה.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHe implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הנחיה מקצועית';
	@override String get description => 'אל תשתמש/י באומדן זה לקבלת החלטות רפואיות. תמיד התייעץ/י עם איש מקצוע בתחום הבריאות או דיאטן מוסמך לקבלת ייעוץ מותאם.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHe implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'קריאת סך הקלוריות שנשרפו';
	@override String get description => 'מאפשר לאפליקציה לקרוא את סך הקלוריות שנשרפו מ-Health Connect.';
	@override String get usage => 'הרשאה זו משמשת להצגת צריכת הקלוריות היומית שלך באפליקציה, ועוזרת להבין את ההוצאה האנרגטית הכוללת שלך במהלך היום.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadHe implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'קריאת נתוני תזונה';
	@override String get description => 'מאפשר לאפליקציה לקרוא נתוני תזונה מתוך Health Connect.';
	@override String get usage => 'הרשאה זו מאפשרת לאפליקציה לקרוא מידע תזונתי שאולי הוזן על ידי אפליקציות אחרות המחוברות ל-Health Connect, ולספק תמונה מקיפה של התזונה שלך.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteHe implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'כתיבת נתוני תזונה';
	@override String get description => 'מאפשר לאפליקציה לכתוב נתוני תזונה ל-Health Connect.';
	@override String get usage => 'הרשאה זו מאפשרת לאפליקציה לסנכרן את הארוחות שרשמת ל-Health Connect, ולהפוך את נתוני התזונה הזמינים לאפליקציות בריאות וכושר אחרות שבהן אתה משתמש.';
}

/// The flat map containing all translations for locale <he>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'עברית',
			'flag' => '🇮🇱',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'ביצעת יותר מדי בקשות. אנא המתן רגע ונסה שוב.',
			'errors.networkError' => 'שגיאת רשת. בדוק את חיבור האינטרנט שלך.',
			'errors.unknownError' => 'משהו השתבש. אנא נסה שוב מאוחר יותר.',
			'errors.loadingProfileData' => 'שגיאה בטעינת נתוני הפרופיל',
			'errors.somethingWentWrong' => 'משהו השתבש.',
			'errors.retry' => 'נסה שוב',
			'onboarding.welcome' => ({required Object appLabel}) => 'ברוכים הבאים ל${appLabel}',
			'onboarding.subtitle' => 'עמית התזונה האישי שלך המונע על ידי AI',
			'onboarding.getStarted' => 'התחל',
			'onboarding.features.foodRecognition.title' => 'זיהוי אוכל חכם',
			'onboarding.features.foodRecognition.description' => 'צלם תמונה ותן ל-AI לזהות את הארוחה שלך',
			'onboarding.features.aiAnalysis.title' => 'ניתוח AI',
			'onboarding.features.aiAnalysis.description' => 'קבל נתוני תזונה מיידיים מתאורים שלך',
			'onboarding.features.healthIntegration.title' => 'אינטגרציה עם Health Connect',
			'onboarding.features.healthIntegration.description' => 'חבר ל-Health Connect לקבלת תובנות טובות יותר',
			'onboarding.gender.title' => 'מה המגדר שלך?',
			'onboarding.gender.description' => 'מגדר עוזר לנו לחשב במדויק את קצב חילוף החומרים הבסיסי (BMR) שלך.',
			'onboarding.gender.next' => 'הבא',
			'onboarding.height.title' => 'כמה אתה/את גבוה/ה?',
			'onboarding.height.description' => 'הגובה שלך מסייע לנו לחשב במדויק את ה-BMI ואת צרכי האנרגיה.',
			'onboarding.height.metric' => 'מטרי',
			'onboarding.height.imperial' => 'אימפריאלי',
			'onboarding.height.next' => 'הבא',
			'onboarding.weight.currentTitle' => 'מה המשקל הנוכחי שלך?',
			'onboarding.weight.currentDescription' => 'המשקל הנוכחי חשוב להתאמת היעדים היומיים האישיים שלך.',
			'onboarding.weight.targetTitle' => 'מה המשקל היעד שלך?',
			'onboarding.weight.targetDescription' => 'קביעת משקל מטרה עוזרת לנו לתכנן תוכנית ארוכת טווח עבורך.',
			'onboarding.weight.metric' => 'מטרי',
			'onboarding.weight.imperial' => 'אימפריאלי',
			'onboarding.weight.next' => 'הבא',
			'onboarding.age.title' => 'מתי יום הולדתך?',
			'onboarding.age.description' => 'הגיל שלך מסייע לנו לחשב במדויק את צריכת הקלוריות שלך.',
			'onboarding.age.next' => 'הבא',
			'onboarding.bmiScale.underweight' => 'מתחת',
			'onboarding.bmiScale.healthy' => 'בריא',
			'onboarding.bmiScale.overweight' => 'מייגע',
			'onboarding.bmiScale.obese' => 'חולה',
			'onboarding.bmiScale.categories.underweight' => 'תת משקל',
			'onboarding.bmiScale.categories.healthyWeight' => 'משקל בריא',
			'onboarding.bmiScale.categories.overweight' => 'עודף משקל',
			'onboarding.bmiScale.categories.obese' => 'השמנת יתר',
			'onboarding.bmiScale.messages.underweight' => 'נוכל לעזור לך לבנות תוכנית בריאה להגיע למשקל מאוזן עם ארוחות עשירות בתזונה.',
			'onboarding.bmiScale.messages.healthy' => 'כל הכבוד! אתה בטווח בריא. נעזור לך לשמור על החיוניות והרמות אנרגיה שלך.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} יפשט את המסע שלך עם מעקב מונחה AI שיעזור לך להגיע ליעד בנוחות.',
			'onboarding.bmiScale.messages.obese' => 'אנחנו כאן לתמוך בך עם הנחיות מותאמות ואסטרטגיות ברות קיימא למטרות הבריאות שלך.',
			'onboarding.weightGoal.title' => 'מה היעד שלך?',
			'onboarding.weightGoal.description' => 'בחר את המטרה שמתארת הכי טוב מה ברצונך להשיג',
			'onboarding.activityLevel.title' => 'כמה אתה פעיל/ה?',
			'onboarding.activityLevel.description' => 'זה עוזר לנו לחשב במדויק יותר את צרכי הקלוריות היומיים שלך',
			'onboarding.healthConnect.title' => 'חבר ל-Health Connect',
			'onboarding.healthConnect.description' => 'סנכרן את נתוני הבריאות שלך לתובנות טובות יותר ומעקב קלוריות אוטומטי',
			'onboarding.healthConnect.automaticTracking.title' => 'מעקב קלוריות אוטומטי',
			'onboarding.healthConnect.automaticTracking.description' => 'עקוב אחר הקלוריות שנשרפו מתוך אפליקציות הכושר שלך',
			'onboarding.healthConnect.progressInsights.title' => 'תובנות התקדמות',
			'onboarding.healthConnect.progressInsights.description' => 'קבל תובנות מפורטות על מגמות הבריאות שלך',
			'onboarding.healthConnect.seamlessIntegration.title' => 'אינטגרציה חלקה',
			'onboarding.healthConnect.seamlessIntegration.description' => 'סנכרן נתונים מאפליקציות הבריאות האהובות עליך',
			'onboarding.healthConnect.connected' => 'Health Connect מחובר',
			'onboarding.healthConnect.notConnected' => 'Health Connect לא מחובר',
			'onboarding.healthConnect.setup' => 'הגדר Health Connect',
			'onboarding.healthConnect.skipForNow' => 'דלג לעכשיו',
			'onboarding.healthConnect.statusConnected' => 'Health Connect מחובר.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect חובר בהצלחה!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'הרשאה נדחתה. אנא אפשר הרשאות ל-Health Connect בהגדרות הטלפון עבור ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'שגיאה בהגדרת Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'אתה לא לבד',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'מחקרים מראים שמעקב עקבי הוא המדד מספר 1 להצלחה לטווח הארוך.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'לאדם בגיל ${age} ובמגדר ${gender} השואף ${goal}, מעקב עקבי הוא המדד המוביל להצלחה.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} עושה את זה בעשר פעמים יותר קל מאשר ידני.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'מוכן/ה להתחיל?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'צלם תמונה של הארוחות לקבלת ניתוח מיידי',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'הקלד באופן עקבי כדי לראות התקדמות משמעותית',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'עקוב אחרי ההתקדמות כל יום כדי להישאר מוטיבציה',
			'onboarding.reinforcement.trackingSuccess.button' => 'יאללה נתחיל',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'יחיד/ה',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'גרסה בריאה יותר של עצמך',
			'onboarding.reinforcement.healthProfile.title' => 'הפרופיל הבריאותי שלך',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'בהתבסס על המידות שלך, ה-BMI שלך הוא ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'נסיים את הפרופיל כדי להתאים עבורך את החוויה.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'להעלות',
			'onboarding.reinforcement.healthProfile.goalLose' => 'להוריד',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'כדי להגיע ליעדך, תצטרך ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'הגעת למשקל היעד! נעזור לך לשמור עליו.',
			'onboarding.reinforcement.healthProfile.button' => 'יאללה נתחיל',
			'onboarding.reinforcement.goalLifestyle.title' => 'תחילת מעולה!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'נקטת את הצעד הראשון לקראת ${goalText}. כיוון שאתה/את ${activityText}, ${appLabel} יתאים את היעדים שלך לסגנון החיים.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'יעדי קלוריות מותאמים',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'זיהוי ארוחות מונע AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'פירוט מאקרו-רכיבים מפורט',
			'onboarding.reinforcement.goalLifestyle.button' => 'יאללה נתחיל',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'המטרות שלך',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'פעיל/ה',
			'tabs.dashboard' => 'דשבורד',
			'tabs.history' => 'ההיסטוריה',
			'home.aiSummary.title' => 'סיכום ה-AI שלך',
			'home.aiSummary.logMore' => 'הקלד/י עוד ארוחות בימים הקרובים כדי לקבל תובנות AI מותאמות אישית.',
			'home.aiSummary.loading' => 'טוען את הסיכום...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} ארוחות רשומות',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'ציון איזון ${score}',
			'home.aiSummary.topFoods' => 'המזונות המובילים',
			'home.aiSummary.trendUp' => 'קלוריות במגמת עלייה',
			'home.aiSummary.trendDown' => 'קלוריות במגמת ירידה',
			'home.aiSummary.trendSteady' => 'קלוריות יציבות',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'עודכן ${time}',
			'home.dailyGoal.title' => 'הגדר את המטרה היומית שלך',
			'home.dailyGoal.titleSet' => 'המטרה היומית שלך',
			'home.dailyGoal.description' => 'מוכן/ה לצאת למסע הבריאות שלך? הגדר כאן את יעד הקלוריות היומי כדי להתחיל.',
			'home.dailyGoal.descriptionSet' => 'המצפן הוגדר! זהו יעד הקלוריות היומי שלך להנחיה.',
			'home.dailyGoal.yourGoal' => 'המטרה שלך',
			'home.dailyGoal.goal' => 'מטרה',
			'home.dailyGoal.dailyCalories' => 'קלוריות יומיות (kcal)',
			'home.dailyGoal.setGoal' => 'הגדר מטרה',
			'home.dailyGoal.intake' => 'צריכה',
			'home.dailyGoal.burned' => 'נשרף',
			'home.dailyGoal.weightImpact' => 'השפעה על משקל',
			'home.dailyGoal.estLoss' => 'אומד. אובדן של',
			'home.dailyGoal.estGain' => 'אומד. עלייה של',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'סיכום יומי',
			'home.dailySummary.calories' => 'קלוריות',
			'home.dailySummary.carbs' => 'פחמימות',
			'home.dailySummary.protein' => 'חלבון',
			'home.dailySummary.fat' => 'שומן',
			'home.dailySummary.fiber' => 'סיבים',
			'home.dailySummary.grams' => 'גרם',
			'home.dailySummary.chartAccessibilityLabel' => 'תרשים מאקרו-נוטריינטים',
			'home.intakeProgress.title' => 'חלוקת המאקרו של היום',
			'home.intakeProgress.target' => 'יעד',
			'home.intakeProgress.current' => 'נוכחי',
			'home.intakeHistory.title' => 'היסטוריית מאקרו ל-7 ימים',
			'home.intakeHistory.trendTitle' => 'מגמת היום',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'שיא: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'עדיין אין היסטוריה',
			'home.intakeHistory.startLogging' => 'התחל לרשום ארוחות כדי לראות כאן\nמגמות מאקרו ל-7 ימים',
			'home.mealLog.title' => 'ארוחות שנרשמו',
			'home.mealLog.emptyMessage' => 'צלם תמונה של הארוחה האחרונה שלך כדי לרשום כאן.',
			'home.mealLog.noMealsToday' => 'אין ארוחות שנרשמו להיום',
			'home.mealLog.seeAllMeals' => 'ראה את כל הארוחות',
			'home.mealDescription.title' => 'הוספה מהירה עם AI',
			'home.mealDescription.description' => 'תאר את הארוחה ותן ל-AI לדאוג לפרטים.',
			'home.mealDescription.hint' => 'למשל: בארוחת בוקר היה לי קערת שיבולת שועל גדולה עם בננה פרוסה וכפית אבקת חלבון...',
			'home.mealDescription.analyzeMeal' => 'נתח ארוחה',
			'home.favoriteMeals.title' => 'ארוחות מועדפות',
			'home.favoriteMeals.description' => 'הוסף במהירות אחת מהארוחות המועדפות עליך.',
			'home.favoriteMeals.noFavorites' => 'עדיין אין ארוחות מועדפות.',
			'home.favoriteMeals.addFavoriteHint' => 'לחץ על הכוכב על מנת לסמן ארוחה כמועדפת.',
			'home.favoriteMeals.seeAll' => 'הצג הכל',
			'home.favoriteMeals.add' => 'הוסף',
			'home.mealSnap.title' => 'צלם ומעקב אחר הארוחה',
			'home.mealSnap.description' => 'השתמש במצלמה כדי לצלם את המזון לניתוח על ידי AI.',
			'home.mealSnap.openCamera' => 'פתח מצלמה',
			'home.mealSnap.gallery' => 'גלריה',
			'home.mealSnap.compressingPhoto' => 'מייעל תמונה…',
			'home.mealSnap.uploadingPhoto' => 'מעלה תמונה…',
			'home.connectHealth.title' => 'סנכרן עם Health Connect',
			'home.connectHealth.description' => 'סנכרן את נתוני התזונה שלך עם Health Connect',
			'home.connectHealth.install' => 'התקן',
			'home.connectHealth.connect' => 'חבר',
			'history.noMeals' => 'אין ארוחות רשומות',
			'history.emptyMessage' => 'צלם תמונה של הארוחה האחרונה שלך כדי לרשום כאן.',
			'history.today' => 'היום',
			'history.yesterday' => 'אתמול',
			'meal.ohNo' => 'אוי לא!',
			'meal.delete' => 'מחק',
			'meal.editMeal' => 'ערוך ארוחה',
			'meal.addMeal' => 'הוסף ארוחה',
			'meal.saveMeal' => 'שמור ארוחה',
			'meal.save' => 'שמור',
			'meal.mealName' => 'שם הארוחה',
			'meal.mealNameHint' => 'למשל: חביתה מקושקשת עם טוסט',
			'meal.nameRequired' => 'הזן שם ארוחה לפני השמירה.',
			'meal.mealQuantity' => 'כמות הארוחה',
			'meal.mealQuantityHint' => 'למשל: קערה אחת, 2 פרוסות',
			'meal.timeOfMeal' => 'שעת הארוחה',
			'meal.timeOfMealHint' => 'בחר את השעה שבה אכלת את הארוחה',
			'meal.mealType' => 'סוג ארוחה',
			'meal.nutrition.calories' => 'קלוריות',
			'meal.nutrition.carbs' => 'פחמימות (ג\')',
			'meal.nutrition.protein' => 'חלבון (ג\')',
			'meal.nutrition.fat' => 'שומן (ג\')',
			'meal.nutrition.fiber' => 'סיבים (ג\')',
			'meal.deleteConfirmation.title' => 'מחיקת ארוחה',
			'meal.deleteConfirmation.message' => 'האם אתה בטוח שברצונך למחוק רשומת ארוחה זו?',
			'meal.deleteConfirmation.cancel' => 'ביטול',
			'meal.deleteConfirmation.delete' => 'מחק',
			'meal.addedToLog' => 'הארוחה נוספה ליומן שלך!',
			'meal.couldNotAdd' => ({required Object error}) => 'לא ניתן להוסיף ארוחה: ${error}',
			'meal.savedSuccessfully' => 'הארוחה נוספה בהצלחה!',
			'meal.updatedSuccessfully' => 'הארוחה עודכנה בהצלחה!',
			'meal.errorSaving' => ({required Object error}) => 'שגיאה בשמירת הארוחה: ${error}',
			'meal.removedFromFavorites' => 'הוסר מהמועדפים!',
			'meal.savedAsFavorite' => 'הארוחה נשמרה כמועדפת!',
			'meal.unfavorite' => 'הסר מהמועדפים',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'לא ניתן לעדכן מועדף: ${error}',
			'meal.feedbackThanks' => 'תודה על המשוב!',
			'meal.reanalysisUpdated' => 'עדכנו את ניתוח הארוחה בהתאם למשוב שלך.',
			'meal.failedToProcess' => ({required Object error}) => 'נכשל בעיבוד: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'נכשל בעיבוד התמונה: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'שגיאה בדחיסת תמונה: ${error}',
			'meal.failedToSave' => 'נכשל בשמירת הנתונים. אנא נסה שוב.',
			'meal.skip' => 'דלג',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'שאלה ${current} מתוך ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'אין שאלות זמינות',
			'meal.questionFlow.next' => 'הבא',
			'meal.questionFlow.continueLabel' => 'המשך',
			'meal.analysis.title' => 'מנתחים את הארוחה שלך',
			'meal.analysis.stepStarted' => 'מתחילים…',
			'meal.analysis.stepDecomposition' => 'מנתחים את הארוחה…',
			'meal.analysis.stepIngredients' => 'מתאימים רכיבים לנתוני תזונה…',
			'meal.analysis.stepUncertainty' => 'בודקים אמון…',
			'meal.analysis.stepMealTypeQuestion' => 'עוד מעט…',
			'meal.analysis.stepResult' => 'מסיימים את התוצאה…',
			'meal.analysis.stepError' => 'משהו השתבש',
			'meal.analysis.stepDefault' => 'מנתחים את הארוחה שלך…',
			'meal.analysis.progressUnderstand' => 'מנסים להבין את הארוחה',
			'meal.analysis.progressMatch' => 'מחפשים ערכי תזונה לרכיבים',
			'meal.analysis.progressCheck' => 'בודקים כמויות ואמינות',
			'meal.analysis.progressMealType' => 'מחליטים סוג ארוחה',
			'meal.analysis.progressFinish' => 'מחשבים קלוריות ומאקרו-נוטריינטים',
			'meal.analysis.detectedIngredientHeading' => 'רכיבים שאנו מזהים',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} עוד',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'זוהו ${count} רכיבים',
			'meal.analysis.ingredientsPending' => 'סורק רכיבים…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '״${text}״',
			'meal.analysis.offlineTip0' => 'טיפ: עקביות עדיפה על שלמות — רישומים סדירים מגלים דפוסים חשובים.',
			'meal.analysis.offlineTip1' => 'טיפ: באור טבעי ובמבט מלמעלה מקלים דיוק הכמויות בתמונות.',
			'meal.analysis.offlineTip2' => 'טיפ: ציין משקאות, רטבים ושמן בישול — הם מוסיפים קלוריות שאנשים שוכחים לעתים קרובות.',
			'meal.analysis.offlineTip3' => 'טיפ: הערת כמות קצרה (קערה אחת, קפה גדול) משפרת משמעותית את ההערכות.',
			'meal.analysis.offlineTip4' => 'טיפ: רישום אחרי הארוחה עדיין בונה הרגל; שלמות אינה חובה.',
			'meal.analysis.offlineTip5' => 'טיפ: ציין איך הוכן האוכל כששיטה משנה קלוריות רבות (מטוגן לעומת אפוי).',
			'meal.localInference.reviewTitle' => 'בדיקת רכיבים שזוהו',
			'meal.localInference.reviewSubtitle' => 'המידע פוענח במכשיר שלך. תקן שמות או כמויות לפני חישוב הערכים התזונתיים.',
			'meal.localInference.mealName' => 'שם הארוחה',
			'meal.localInference.ingredient' => 'רכיב',
			'meal.localInference.grams' => 'גרמים מוערכים',
			'meal.localInference.removeIngredient' => 'הסר רכיב',
			'meal.localInference.continueLabel' => 'המשך',
			'meal.localInference.invalidProposal' => 'הוסף רכיב אחד לפחות והזן כמות גרמים חיובית.',
			'meal.localInference.localUnavailable' => 'ניתוח מקומי במכשיר אינו זמין כעת.',
			'meal.localInference.calculationDetails' => 'כיצד זה חושב',
			'meal.localInference.interpretationLocal' => 'רכיבים שפוענחו במכשיר זה',
			'meal.localInference.interpretationCloud' => 'רכיבים שפוענחו בענן',
			'meal.localInference.interpretationManual' => 'רכיבים שנבדקו או נערכו על ידיך',
			'meal.localInference.nutritionRemote' => 'ערכים תזונתיים נשלפו מ-USDA באמצעות Calorify',
			'meal.localInference.nutritionFallback' => 'חלק מהערכים התזונתיים הוערכו מרחוק',
			'meal.localInference.calculationServer' => 'קלוריות ומקרוס חושבו על ידי Calorify',
			'meal.localInference.fallbackUsed' => 'הניתוח המקומי עבר לעיבוד בענן',
			'meal.localInference.noRawContent' => 'קבצי אבחון אינם כוללים את טקסט הארוחה או התמונה שלך.',
			'meal.feedback.title' => 'מה לא נראה נכון?',
			'meal.feedback.subtitle' => 'עזור לנו לשפר את הניתוח על ידי בחירת אחת או יותר מהבעיות.',
			'meal.feedback.tellUsMore' => 'ספר לנו עוד',
			'meal.feedback.describeIncorrect' => 'תאר מה היה לא נכון',
			'meal.feedback.submit' => 'שלח',
			'meal.feedback.issueFoodIdentification' => 'זיהוי מזון',
			'meal.feedback.issuePortionSize' => 'גודל מנה',
			'meal.feedback.issueCalorieDistribution' => 'חלוקת קלוריות',
			'meal.feedback.issueMacrosWrong' => 'המאקרו-ערכים שגויים',
			'meal.feedback.issueMissingItems' => 'פריטים חסרים',
			'meal.feedback.issueExtraItems' => 'פריטים מיותרים',
			'meal.feedback.issueOther' => 'אחר',
			'favorites.title' => 'מועדפים',
			'favorites.empty' => 'עדיין אין ארוחות מועדפות.',
			'favorites.searchPlaceholder' => 'חפש ארוחות מועדפות',
			'favorites.searchEmptyTitle' => 'אין מועדפים התואמים לחיפוש שלך',
			'favorites.searchEmptySubtitle' => 'נסה שם ארוחה, כמות או סוג ארוחה אחר.',
			'favorites.sortLabel' => 'מיין מועדפים',
			'favorites.undo' => 'בטל',
			'favorites.removed' => ({required Object name}) => 'הוסר ${name} מהמועדפים',
			'favorites.sortOptions.recent' => 'אחרונים',
			'favorites.sortOptions.calories' => 'קלוריות',
			'favorites.sortOptions.alphabetical' => 'A-ת',
			'profile.title' => 'פרופיל',
			'profile.noProfileData' => 'לא נמצאו נתוני פרופיל',
			'profile.yourProfile' => 'הפרופיל שלך',
			'profile.viewAndManage' => 'הצג ונהל את המידע הבריאותי שלך',
			'profile.sections.profile' => 'פרופיל',
			'profile.sections.basicInformation' => 'מידע בסיסי',
			'profile.sections.goalsAndActivity' => 'מטרות & פעילות',
			'profile.sections.calculatedValues' => 'ערכים מחושבים',
			'profile.gender' => 'מגדר',
			'profile.height' => 'גובה',
			'profile.weight' => 'משקל',
			'profile.age' => 'גיל',
			'profile.weightGoal' => 'מטרת משקל',
			'profile.targetWeight' => 'משקל יעד',
			'profile.activityLevel' => 'רמת פעילות',
			'profile.healthMetrics' => 'מדדי בריאות',
			'profile.notSet' => 'לא הוגדר',
			'profile.years' => 'שנים',
			'profile.updatedSuccessfully' => 'הפרופיל עודכן בהצלחה!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'מטרה יומית',
			'profile.calculatedValues.calPerDay' => 'קלוריות/יום',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'ציון בריאות',
			'healthScore.whyThisScore' => 'למה הציון הזה?',
			'healthScore.note' => 'ציון זה הוא הערכת AI המבוססת על הרכיבים המזוהים וצפיפותם התזונתית. תמיד התייעץ/י עם מקצוען לקבלת ייעוץ תזונתי מותאם.',
			'healthScore.unhealthy' => 'לא בריא',
			'healthScore.healthy' => 'בריא',
			'healthScore.neutral' => 'נייטרלי',
			'editProfile.title' => 'ערוך פרופיל',
			'editProfile.sections.personalInformation' => 'מידע אישי',
			'editProfile.sections.physicalMeasurements' => 'מדידות פיזיות',
			'editProfile.sections.goalsAndActivity' => 'מטרות & פעילות',
			'editProfile.gender' => 'מגדר',
			'editProfile.dateOfBirth' => 'תאריך לידה',
			'editProfile.height' => 'גובה',
			'editProfile.weight' => 'משקל',
			'editProfile.weightGoal' => 'מטרת משקל',
			'editProfile.activityLevel' => 'רמת פעילות',
			'editProfile.metric' => 'מטרי',
			'editProfile.imperial' => 'אימפריאלי',
			'editProfile.unitCm' => 'ס"מ',
			'editProfile.unitFt' => 'רגל',
			'editProfile.unitKg' => 'ק"ג',
			'editProfile.unitLbs' => 'lb',
			'editProfile.metricCm' => 'מטרי (ס"מ)',
			'editProfile.imperialFtIn' => 'אימפריאלי (רגל/אינץ\')',
			'editProfile.metricKg' => 'מטרי (ק"ג)',
			'editProfile.imperialLbs' => 'אימפריאלי (lbs)',
			'editProfile.genders.male' => 'זכר',
			'editProfile.genders.female' => 'נקבה',
			'editProfile.genders.other' => 'אחר',
			'editProfile.weightGoals.loseWeight.name' => 'להוריד משקל',
			'editProfile.weightGoals.loseWeight.description' => 'יצירת גרעון קלורי להורדת משקל',
			'editProfile.weightGoals.maintainWeight.name' => 'לשמור על משקל',
			'editProfile.weightGoals.maintainWeight.description' => 'שמירה על המשקל הנוכחי',
			'editProfile.weightGoals.gainWeight.name' => 'להעלות משקל',
			'editProfile.weightGoals.gainWeight.description' => 'יצירת עודף קלורי להעלאת משקל',
			'editProfile.activityLevels.sedentary.name' => 'יושבני',
			'editProfile.activityLevels.sedentary.description' => 'מעט או ללא פעילות גופנית',
			'editProfile.activityLevels.lightlyActive.name' => 'פעילות קלה',
			'editProfile.activityLevels.lightlyActive.description' => 'אימון קל 1-3 ימים/שבוע',
			'editProfile.activityLevels.moderatelyActive.name' => 'פעילות מתונה',
			'editProfile.activityLevels.moderatelyActive.description' => 'אימון מתון 3-5 ימים/שבוע',
			'editProfile.activityLevels.veryActive.name' => 'פעילות גבוהה',
			'editProfile.activityLevels.veryActive.description' => 'אימון קשה 6-7 ימים/שבוע',
			'editProfile.activityLevels.extremelyActive.name' => 'פעילות אינטנסיבית',
			'editProfile.activityLevels.extremelyActive.description' => 'עבודה פיזית קשה או אימון מאוד אינטנסיבי',
			'settings.title' => 'הגדרות',
			'settings.sections.profile' => 'פרופיל',
			'settings.sections.localization' => 'מיקום שפה',
			'settings.sections.notifications' => 'התראות',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.localInference' => 'ניתוח במכשיר',
			'settings.sections.supportAndLegal' => 'תמיכה & משפטי',
			'settings.sections.about' => 'אודות',
			'settings.sections.dangerZone' => 'אזור מסוכן',
			'settings.sections.developer' => 'מפתח',
			'settings.editProfile.title' => 'ערוך פרופיל',
			'settings.editProfile.subtitle' => 'עדכן את המידע האישי שלך',
			'settings.language.title' => 'שפה',
			'settings.language.subtitle' => 'בחר את שפת הממשק המועדפת עליך',
			'settings.language.searchHint' => 'חפש שפות...',
			'settings.language.noResults' => 'לא נמצאו תוצאות',
			'settings.heightUnit.title' => 'יחידת גובה',
			'settings.weightUnit.title' => 'יחידת משקל',
			'settings.mealReminders.title' => 'תזכורות ארוחות',
			'settings.mealReminders.subtitle' => 'הישאר על המסלול עם התראות בזמן',
			'settings.localInference.title' => 'ניתוח ארוחות במכשיר',
			'settings.localInference.subtitle' => 'פענוח ארוחות נתמכות באמצעות Gemini Nano לפני חישוב הערכים התזונתיים',
			'settings.localInference.unavailable' => 'לא זמין במכשיר זה',
			'settings.localInference.rolloutUnavailable' => 'חומרה תומכת נמצאה, אך תכונה זו אינה זמינה בגרסה זו של האפליקציה',
			'settings.localInference.modelSetup' => 'Gemini Nano צריך לסיים את ההורדה לפני שניתן יהיה להפעיל זאת',
			'settings.localInference.useLocalTitle' => 'השתמש בניתוח במכשיר',
			'settings.localInference.useLocalSubtitle' => 'אופציונלי וכבוי כברירת מחדל. התוצאות עשויות להיות פחות אמינות עבור ארוחות מורכבות.',
			'settings.localInference.disclosureTitle' => 'לפני הפעלת הניתוח במכשיר',
			'settings.localInference.disclosureBody' => 'Gemini Nano יכול לזהות רכיבים ולהעריך כמויות במכשירי Android נתמכים. הצעת הרכיבים שבדקת נשלחת ל-Calorify לצורך ביסוס ערכים תזונתיים מ-USDA וחישוב.',
			'settings.localInference.disclosureLimit1' => 'מנות מורכבות, רכיבים נסתרים וגדלי מנות עשויים להיות מזוהים באופן שגוי.',
			'settings.localInference.disclosureLimit2' => 'המודל עשוי להיות לא זמין בזמן הורדה, כאשר הוא תפוס, ברקע, או בשל מגבלות המכשיר.',
			'settings.localInference.disclosureLimit3' => 'אם הפענוח המקומי לא יוכל להסתיים, גרסת בטא זו תשלח באופן אוטומטי את תיאור הארוחה המקורי ל-Calorify לצורך ניתוח בענן.',
			'settings.localInference.acknowledgement' => 'אני מבין/ה שעלי לבדוק את הרכיבים והכמויות שזוהו.',
			'settings.localInference.enable' => 'אישור והפעלה',
			'settings.localInference.cancel' => 'ביטול',
			'settings.theme.title' => 'נושא',
			'settings.theme.light' => 'בהיר',
			'settings.theme.dark' => 'כהה',
			'settings.theme.system' => 'מערכת',
			'settings.sendFeedback.title' => 'שלח משוב',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'עזור לנו לשפר את ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'משוב על אפליקציית ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'אנא ספק/י את המשוב שלך למטה:',
			'settings.sendFeedback.appVersion' => 'גרסת האפליקציה',
			'settings.sendFeedback.device' => 'מכשיר',
			'settings.sendFeedback.osVersion' => 'גרסת מערכת ההפעלה',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'ייצא היסטוריית ארוחות',
			'settings.exportMealHistory.subtitle' => 'שתף CSV של הארוחות שנרשמו',
			'settings.exportMealHistory.shareText' => 'ייצוא היסטוריית הארוחות של Calorify שלך',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'לא ניתן לייצא היסטוריית הארוחות: ${error}',
			'settings.clearAllData.title' => 'נקה את כל הנתונים',
			'settings.clearAllData.subtitle' => 'מחק ללא אפשרות שחזור את כל המידע שלך',
			'settings.clearAllData.confirmationTitle' => 'לנקות את כל הנתונים?',
			'settings.clearAllData.confirmationMessage' => 'פעולה זו לא ניתנת לביטול. כל הארוחות שנרשמו, המועדפים והגדרות הפרופיל ימחקו לצמיתות.',
			'settings.clearAllData.cancel' => 'ביטול',
			'settings.clearAllData.clearEverything' => 'נקה הכל',
			'settings.debugOptions.title' => 'אפשרויות דיבוג',
			'settings.developerModeEnabled' => 'מצב מפתח מופעל!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'הצג ונהל הרשאות',
			'settings.healthConnect.unavailable.title' => 'Health Connect לא זמין',
			'settings.healthConnect.unavailable.description' => 'Health Connect אינו זמין במכשיר זה. אנא התקן את Health Connect מה-Play Store (Android 9+) או עדכן ל-Android 14+.',
			'settings.healthConnect.permissions.title' => 'הרשאות',
			'settings.healthConnect.permissions.description' => 'מבוקשות ההרשאות הבאות כדי לאפשר אינטגרציה עם Health Connect:',
			'settings.healthConnect.permissions.granted' => 'הוענקו',
			'settings.healthConnect.permissions.notGranted' => 'לא הוענקו',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'קריאת סך הקלוריות שנשרפו',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'מאפשר לאפליקציה לקרוא את סך הקלוריות שנשרפו מ-Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'הרשאה זו משמשת להצגת צריכת הקלוריות היומית שלך באפליקציה, ועוזרת להבין את ההוצאה האנרגטית הכוללת שלך במהלך היום.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'קריאת נתוני תזונה',
			'settings.healthConnect.permissions.nutritionRead.description' => 'מאפשר לאפליקציה לקרוא נתוני תזונה מתוך Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'הרשאה זו מאפשרת לאפליקציה לקרוא מידע תזונתי שאולי הוזן על ידי אפליקציות אחרות המחוברות ל-Health Connect, ולספק תמונה מקיפה של התזונה שלך.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'כתיבת נתוני תזונה',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'מאפשר לאפליקציה לכתוב נתוני תזונה ל-Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'הרשאה זו מאפשרת לאפליקציה לסנכרן את הארוחות שרשמת ל-Health Connect, ולהפוך את נתוני התזונה הזמינים לאפליקציות בריאות וכושר אחרות שבהן אתה משתמש.',
			'settings.healthConnect.managePermissions' => 'נהל הרשאות',
			'settings.healthConnect.openSettings' => 'פתח הגדרות Health Connect',
			'settings.healthConnect.requestPermissions' => 'בקש הרשאות',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'בקשת ההרשאה בוטלה או נכשלה. אנא נסה שוב או אפשר הרשאות באופן ידני בהגדרות Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'לא ניתן לבקש הרשאות. אנא נסה שוב או אפשר הרשאות באופן ידני בהגדרות Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'מבקש…',
			'settings.about.title' => 'אודות',
			'settings.about.tagline' => 'מודעות קלוריות מהירה, חינמית ובעדיפות לפרטיות',
			'settings.about.ourStory.title' => 'הסיפור שלנו',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} נולדה מתוך תסכול פשוט: רוב אפליקציות המעקב אחרי קלוריות או מסובכות מדי, או דורשות הקלדה ידנית מתמדת, גובות דמי מנוי גבוהים, או פוגעות בפרטיות.\n\nכאשר מפתח יחיד עמד מאחורי הרעיון, רציתי לבנות משהו פשוט והוגן — אפליקציה שמשתמשת ב-AI להפחית את המאמץ, נשארת מהירה וחינמית לשימוש, ומכבדת את נתוני הבריאות שלך.\n\n${appLabel} היא האפליקציה שהייתי רוצה שתהיה קיימת: ללא חשבונות, ללא איסוף מעקב, ללא פרסומות — רק תובנות ברורות ומעשיות ומטרות בריאות אישיות.',
			'settings.about.privacy.title' => 'הפרטיות שלך חשובה',
			'settings.about.privacy.description' => 'פרטיות אינה מחשבה מאוחרת — זו עקרון עיצובי. הנה מה זה אומר בפועל:',
			'settings.about.privacy.noAccounts' => 'אין דרישות להקמת חשבונות\nהשתמש באפליקציה מיד. ללא הרשמות, ללא זיהויים.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'ללא מעקב התנהגותי\n${appLabel} אינה עוקבת אחרי הפעילות שלך, אינה בונה פרופילים שימושיים, ולא עוקבת אחרי שימושך באפליקציות או אתרי אינטרנט.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'ללא פרסומות לפי עיצוב\n${appLabel} נבנתה לפעול ללא פרסומות או מונטיזציה מבוססת נתונים.',
			'settings.about.privacy.noDataSelling' => 'אין מכירת נתונים\nנתוני הבריאות שלך אינם נמכרים או משותפים לצדדים שלישיים.',
			'settings.about.privacy.localStorage' => 'אחסון מקומי כעיקרון\nהנתונים שלך נשארים על המכשיר שלך.',
			'settings.about.privacy.privacyPolicy' => 'מדיניות פרטיות',
			'settings.about.developer.title' => 'נבנה על ידי מפתח עצמאי',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} נבנתה ומנוהלת על ידי מפתח יחיד המתמקד ביצירת תוכנת בריאות רגועה המכבדת פרטיות.\n\nהמשובים נקראים באופן אישי ועוזרים לעצב את כיוון האפליקציה.',
			'settings.about.developer.website' => 'אתר',
			'settings.about.developer.email' => 'אימייל',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'נהנים מ-${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'המשוב שלך עוזר לשפר את ${appLabel} עבור כולם.',
			'settings.about.feedback.rateApp' => 'דרג ב-Play Store',
			'settings.about.feedback.sendFeedback' => 'שלח משוב',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'בנייה ${buildNumber}',
			'reminders.title' => 'הישארו על המסלול עם תזכורות',
			'reminders.description' => 'קבל תזכורות עדינות לרישום הארוחות והישאר עקבי עם יעדי התזונה שלך',
			'reminders.notificationsEnabled' => 'התראות מופעלות',
			'reminders.notificationsDisabled' => 'התראות מושבתות',
			'reminders.enabledSubtitle' => 'תקבל תזכורות לארוחות',
			'reminders.disabledSubtitle' => 'הפעל התראות כדי לקבל תזכורות לארוחות',
			'reminders.mealReminders' => 'תזכורות ארוחה',
			'reminders.breakfast' => 'בוקר',
			'reminders.lunch' => 'צהריים',
			'reminders.dinner' => 'ערב',
			'reminders.snack' => 'נשנוש',
			'reminders.unknown' => 'לא ידוע',
			'reminders.change' => 'שנה',
			'reminders.enableNotifications' => 'הפעל התראות',
			'reminders.skipForNow' => 'דלג לעכשיו',
			'reminders.saveChanges' => 'שמור שינויים',
			'reminders.enabledSuccessfully' => 'ההתראות הופעלו בהצלחה!',
			'reminders.permissionDenied' => 'הרשאת התראות נדחתה',
			'reminders.errorEnabling' => ({required Object error}) => 'שגיאה בהפעלת התראות: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'שגיאה בהשלמת ההגדרה: ${error}',
			'notifications.breakfast.title' => 'זמן ארוחת בוקר! 🍳',
			'notifications.breakfast.body' => 'אל תשכח/י לרשום את ארוחת הבוקר שלך',
			'notifications.lunch.title' => 'זמן ארוחת צהריים! 🥗',
			'notifications.lunch.body' => 'הגיע הזמן לרשום את ארוחת הצהריים',
			'notifications.dinner.title' => 'זמן ארוחת ערב! 🍽️',
			'notifications.dinner.body' => 'אל תשכח/י לרשום את ארוחת הערב שלך',
			'notifications.snack.title' => 'זמן נשנוש! 🍎',
			'notifications.snack.body' => 'הגיע הזמן לנשנוש בריא',
			'notifications.test.title' => 'התראת בדיקה',
			'login.title' => 'התחבר',
			'login.signInWithGoogle' => 'התחבר עם Google',
			'login.signInFailed' => 'ההתחברות עם Google נכשלה או בוטלה.',
			'disclaimer.pleaseNote' => 'שים/י לב',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} מספקת מידע תזונתי מוערך. הדיוק תלוי בקלט שלך ובשונות של המזון. השתמש/י בזה כהנחיה, לא כמקור מוחלט. להתייעצות אישית התייעץ/י עם איש מקצוע.',
			'disclaimer.snap.portionSize.title' => 'גודל מנה',
			'disclaimer.snap.portionSize.description' => 'דיוק הערכות תלוי במידה רבה בהערכת גודל המנה על ידך.',
			'disclaimer.snap.preparationMethods.title' => 'שיטות הכנה',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'שיטות בישול יכולות לשנות משמעותית את התוכן התזונתי. ההערכות של ${appLabel} עשויות שלא תמיד להתחשב בכל השינויים האלו.',
			'disclaimer.snap.ingredients.title' => 'מרכיבים',
			'disclaimer.snap.ingredients.description' => 'מנות מורכבות עם מרכיבים נסתרים רבים עלולות להוביל להערכות פחות מדויקות.',
			'disclaimer.snap.databaseLimitations.title' => 'מגבלות מאגר הנתונים',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'מאגר המזונות של ${appLabel} הוא רחב אך עשוי שלא לכלול כל פריט או וריאציה.',
			'disclaimer.weightEstimate.title' => 'על אומדן שינוי משקל',
			'disclaimer.weightEstimate.description' => 'שינוי משקל משוער הוא חישוב תאורטי המבוסס על מודל קלוריות פנימה מול קלוריות החוצה. הוא מיועד כהנעה מוטיבציונית בלבד, לא כנבואה למשקל בפועל.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'דיוק הקלוריות',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'הערכה זו מדויקת ככל שהרישום שלך של צריכת ושריפת הקלוריות מדויק. רישום שגוי יוביל להערכה שגויה.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'גורמים ביולוגיים',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'הורדה/עלייה ממשית במשקל מושפעת ממטבוליזם, הורמונים, שינה, מתח, רמת נוזלים וגורמים אישיים אחרים ש-${appLabel} לא יכולה למדוד.',
			'disclaimer.weightEstimate.waterWeight.title' => 'משקל מים ותנודות',
			'disclaimer.weightEstimate.waterWeight.description' => 'משקל יומי רגיל יכול להשתנות משמעותית בגלל החזקת מים, עיכול וזמנים. ההערכה אינה מתחשבת בתנודות יומיות אלו.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'הנחיה מקצועית',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'אל תשתמש/י בהערכה זו לקבלת החלטות רפואיות. תמיד התייעץ/י עם איש מקצוע בתחום הבריאות או דיאטן מוסמך לקבלת ייעוץ מותאם.',
			'disclaimer.healthMetrics.description' => 'מדדים אלה עוזרים לך להבין את צרכי האנרגיה של גופך ומנחים את יעדי התזונה שלך.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) הוא מספר הקלוריות שגופך שורף במנוחה כדי לקיים פונקציות בסיסיות כמו נשימה וזרימת דם. ה-BMR תלוי בגיל, מגדר, גובה ומשקל. BMR גבוה יותר משקף שריפת קלוריות במנוחה גבוהה יותר, לעיתים בשל מסת שריר גבוהה יותר, גיל צעיר יותר או מגדר זכר. BMR נמוך יותר מעיד בדרך כלל על מסת שריר נמוכה יותר, גיל מתקדם יותר או מגדר נקבה.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) הוא כלל הקלוריות שאתה שורף ביום, כולל ה-BMR שלך יחד עם הקלוריות מפעילות גופנית ותנועה יומית. ה-TDEE תלוי ב-BMR וברמת הפעילות שלך. TDEE גבוה יותר אומר שאתה שורף יותר קלוריות בסך הכל, בדרך כלל בגלל פעילות רבה יותר או BMR גבוה יותר. TDEE נמוך יותר מצביע על פחות פעילות יומית או BMR נמוך יותר.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'מטרה יומית',
			'disclaimer.healthMetrics.dailyGoal.description' => 'המטרה היומית היא צריכת הקלוריות המומלצת עבורך בהתבסס על ה-TDEE והמטרה המשקלית שלך. לאובדן משקל צורכים פחות קלוריות מה-TDEE. לשימור משקל מתאימים ל-TDEE. לעלייה במשקל צורכים יותר קלוריות מה-TDEE. זה עוזר להשיג את שינוי המשקל הרצוי בקצב בריא.',
			'disclaimer.calorieExpenditure.title' => 'אומדן הוצאה קלורית',
			'disclaimer.calorieExpenditure.description' => 'כאשר נתוני Health Connect אינם זמינים, אנו מעריכים את הקלוריות שנשרפו היום באמצעות ה-BMR שלך ורמת הפעילות (TDEE), פרופורציונלית לחלק היומי שעבר.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'כיצד מחושב האומדן',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'אנו מחשבים את ה-TDEE שלך (בהתבסס על הפרופיל) ומכפילים אותו בחלק של היום שעבר (שעות + דקות) / 24 כדי להעריך את הקלוריות שנשרפו עד כה.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'הנחיה מקצועית',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'אל תשתמש/י באומדן זה לקבלת החלטות רפואיות. תמיד התייעץ/י עם איש מקצוע בתחום הבריאות או דיאטן מוסמך לקבלת ייעוץ מותאם.',
			_ => null,
		} ?? switch (path) {
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
			'common.close' => 'סגור',
			'common.kContinue' => 'המשך',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'נהנים מ-${appLabel}?',
			'feedbackRating.yes' => 'כן, אני נהנה/ת',
			'feedbackRating.no' => 'לא ממש',
			'feedbackRating.rateStepHeading' => 'דרג ב-Play Store',
			'feedbackRating.emailStepHeading' => 'שלח משוב בדוא"ל',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'דירוג קצר עוזר לאחרים למצוא את ${appLabel} ושומר על המשך הפיתוח. האם תקדיש/י רגע להשאיר דירוג?',
			'feedbackRating.shareFeedbackViaEmail' => 'המשוב שלך מעצב את מה שיבוא אחר כך — אנו קוראים כל הודעה. תרצה/י לשתף את מחשבותיך במייל?',
			'feedbackRating.rateCta' => 'דרג ב-Play Store',
			'feedbackRating.maybeLater' => 'אולי מאוחר יותר',
			'feedbackRating.sendFeedback' => 'שלח משוב',
			'feedbackRating.noThanks' => 'לא, תודה',
			'feedbackRating.aboutUsDescription' => 'נוצר/ה בקפידה על ידי צוות קטן. אנו מתמקדים בפרטיות, בפשטות ובעזרה ביצירת הרגלי אכילה טובים יותר.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'סקרנים מי מאחורי ${appLabel}? ראו ',
			'feedbackRating.aboutUsLinkLabel' => 'אודותינו',
			'feedbackRating.thankYouMessage' => 'תודה! נשאל שוב בעתיד.',
			'health.syncFailed' => 'לא ניתן לסנכרן ל-Health Connect',
			'health.mealSynced' => 'הארוחה סונכרנה עם Health Connect',
			_ => null,
		};
	}
}
