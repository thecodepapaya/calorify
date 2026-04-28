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
	@override late final _TranslationsCommonHe common = _TranslationsCommonHe._(_root);
	@override late final _TranslationsFeedbackRatingHe feedbackRating = _TranslationsFeedbackRatingHe._(_root);
	@override late final _TranslationsHealthHe health = _TranslationsHealthHe._(_root);
}

// Path: errors
class _TranslationsErrorsHe implements TranslationsErrorsEn {
	_TranslationsErrorsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'ביצעת יותר מדי בקשות. אנא המתן/י רגע ונסה/י שוב.';
	@override String get networkError => 'שגיאת רשת. בדוק/י את חיבור האינטרנט שלך.';
	@override String get unknownError => 'משהו השתבש. אנא נסה/י שוב מאוחר יותר.';
	@override String get loadingProfileData => 'שגיאה בטעינת נתוני הפרופיל';
	@override String get somethingWentWrong => 'משהו השתבש.';
	@override String get retry => 'נסה/י שוב';
}

// Path: onboarding
class _TranslationsOnboardingHe implements TranslationsOnboardingEn {
	_TranslationsOnboardingHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'ברוך/ה הבא/ה אל ${appLabel}';
	@override String get subtitle => 'בן/בת הלוויה התזונתי/ת האישי/ת שלך, מופעל/ת ב-AI';
	@override String get getStarted => 'התחל/י';
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
	@override String get dashboard => 'ראשי';
	@override String get history => 'היסטוריה';
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
	@override String get emptyMessage => 'צלם/י תמונה של הארוחה האחרונה כדי לתעד כאן.';
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
	@override String get mealNameHint => 'לדוגמה, חביתת ביצים עם טוסט';
	@override String get mealQuantity => 'כמות הארוחה';
	@override String get mealQuantityHint => 'לדוגמה, קערה אחת, 2 פרוסות';
	@override String get timeOfMeal => 'שעת הארוחה';
	@override String get timeOfMealHint => 'בחר/י את השעה שבה אכלת את הארוחה';
	@override String get mealType => 'סוג ארוחה';
	@override late final _TranslationsMealNutritionHe nutrition = _TranslationsMealNutritionHe._(_root);
	@override late final _TranslationsMealDeleteConfirmationHe deleteConfirmation = _TranslationsMealDeleteConfirmationHe._(_root);
	@override String get addedToLog => 'הארוחה נוספה ליומן שלך!';
	@override String couldNotAdd({required Object error}) => 'לא ניתן היה להוסיף ארוחה: ${error}';
	@override String get savedSuccessfully => 'הארוחה נוספה בהצלחה!';
	@override String get updatedSuccessfully => 'הארוחה עודכנה בהצלחה!';
	@override String errorSaving({required Object error}) => 'שגיאה בשמירת הארוחה: ${error}';
	@override String get removedFromFavorites => 'הוסר מהמועדפים!';
	@override String get savedAsFavorite => 'הארוחה נשמרה כמועדפת!';
	@override String get unfavorite => 'הסר ממועדפים';
	@override String couldNotUpdateFavorite({required Object error}) => 'לא ניתן היה לעדכן מועדף: ${error}';
	@override String get feedbackThanks => 'תודה על המשוב!';
	@override String get reanalysisUpdated => 'הניתוח עודכן בהתאם למשוב שלך.';
	@override String failedToProcess({required Object error}) => 'העיבוד נכשל: ${error}';
	@override String failedToProcessImage({required Object error}) => 'עיבוד התמונה נכשל: ${error}';
	@override String errorCompressingImage({required Object error}) => 'שגיאה במיטוב התמונה: ${error}';
	@override String get failedToSave => 'שמירת הנתונים נכשלה. אנא נסה/י שוב.';
	@override String get skip => 'דלג/י';
	@override late final _TranslationsMealVariationHe variation = _TranslationsMealVariationHe._(_root);
	@override late final _TranslationsMealAnalysisHe analysis = _TranslationsMealAnalysisHe._(_root);
	@override late final _TranslationsMealFeedbackHe feedback = _TranslationsMealFeedbackHe._(_root);
}

// Path: favorites
class _TranslationsFavoritesHe implements TranslationsFavoritesEn {
	_TranslationsFavoritesHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מועדפים';
	@override String get empty => 'עדיין אין ארוחות מועדפות.';
	@override String get searchPlaceholder => 'חפש/י ארוחות מועדפות';
	@override String get searchEmptyTitle => 'אין מועדפים תואמים לחיפוש';
	@override String get searchEmptySubtitle => 'נסו שם ארוחה אחר, כמות או סוג ארוחה שונה.';
	@override String get sortLabel => 'מיון מועדפים';
	@override String get undo => 'בטל';
	@override String removed({required Object name}) => '${name} הוסר מהמועדפים';
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
	@override String get viewAndManage => 'צפה/י ונהלי/ה את פרטי הבריאות שלך';
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
	@override String get note => 'ציון זה הוא הערכה של ה-AI המבוססת על הרכיבים שזוהו ועל צפיפות תזונתית. תמיד כדאי להתייעץ עם איש מקצוע לקבלת ייעוץ תזונתי.';
	@override String get unhealthy => 'לא בריא';
	@override String get healthy => 'בריא';
	@override String get neutral => 'ניטרלי';
}

// Path: editProfile
class _TranslationsEditProfileHe implements TranslationsEditProfileEn {
	_TranslationsEditProfileHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'עריכת פרופיל';
	@override late final _TranslationsEditProfileSectionsHe sections = _TranslationsEditProfileSectionsHe._(_root);
	@override String get gender => 'מגדר';
	@override String get dateOfBirth => 'תאריך לידה';
	@override String get height => 'גובה';
	@override String get weight => 'משקל';
	@override String get weightGoal => 'מטרת משקל';
	@override String get activityLevel => 'רמת פעילות';
	@override String get metric => 'מטרי';
	@override String get imperial => 'אימפריאלי';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'מטרי (ס"מ)';
	@override String get imperialFtIn => 'אימפריאלי (ft/in)';
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
	@override late final _TranslationsSettingsThemeHe theme = _TranslationsSettingsThemeHe._(_root);
	@override late final _TranslationsSettingsSendFeedbackHe sendFeedback = _TranslationsSettingsSendFeedbackHe._(_root);
	@override late final _TranslationsSettingsExportMealHistoryHe exportMealHistory = _TranslationsSettingsExportMealHistoryHe._(_root);
	@override late final _TranslationsSettingsClearAllDataHe clearAllData = _TranslationsSettingsClearAllDataHe._(_root);
	@override late final _TranslationsSettingsDebugOptionsHe debugOptions = _TranslationsSettingsDebugOptionsHe._(_root);
	@override String get developerModeEnabled => 'מצב מפתח הופעל!';
	@override late final _TranslationsSettingsHealthConnectHe healthConnect = _TranslationsSettingsHealthConnectHe._(_root);
	@override late final _TranslationsSettingsAboutHe about = _TranslationsSettingsAboutHe._(_root);
	@override late final _TranslationsSettingsAppInfoHe appInfo = _TranslationsSettingsAppInfoHe._(_root);
}

// Path: reminders
class _TranslationsRemindersHe implements TranslationsRemindersEn {
	_TranslationsRemindersHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הישאר/י על המסלול עם תזכורות';
	@override String get description => 'קבל/י תזכורות עדינות לתעד את הארוחות ולהתמיד ביעדי התזונה שלך';
	@override String get notificationsEnabled => 'התראות מופעלות';
	@override String get notificationsDisabled => 'התראות כבויות';
	@override String get enabledSubtitle => 'תקבל/י תזכורות לארוחות';
	@override String get disabledSubtitle => 'אפשר/י התראות כדי לקבל תזכורות לארוחות';
	@override String get mealReminders => 'תזכורות לארוחות';
	@override String get breakfast => 'ארוחת בוקר';
	@override String get lunch => 'ארוחת צהריים';
	@override String get dinner => 'ארוחת ערב';
	@override String get snack => 'חטיף';
	@override String get unknown => 'לא ידוע';
	@override String get change => 'שנה/י';
	@override String get enableNotifications => 'אפשר/י התראות';
	@override String get skipForNow => 'דלג/י לעת עתה';
	@override String get saveChanges => 'שמור/י שינויים';
	@override String get enabledSuccessfully => 'התראות הופעלו בהצלחה!';
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
	@override String get title => 'התחברות';
	@override String get signInWithGoogle => 'התחבר/י עם Google';
	@override String get signInFailed => 'ההתחברות עם Google נכשלה או בוטלה.';
}

// Path: disclaimer
class _TranslationsDisclaimerHe implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'לתשומת לבך';
	@override late final _TranslationsDisclaimerSnapHe snap = _TranslationsDisclaimerSnapHe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateHe weightEstimate = _TranslationsDisclaimerWeightEstimateHe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsHe healthMetrics = _TranslationsDisclaimerHealthMetricsHe._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureHe calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureHe._(_root);
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
	@override String enjoyingQuestion({required Object appLabel}) => 'נהנ/ית מ-${appLabel}?';
	@override String get yes => 'כן, אני נהנ/ית';
	@override String get no => 'לא ממש';
	@override String get rateStepHeading => 'דרג/י בחנות Play';
	@override String get emailStepHeading => 'שליחת משוב בדוא"ל';
	@override String soloDevMessage({required Object appLabel}) => 'דירוג קצר עוזר לאחרים למצוא את ${appLabel} ושומר על המשך הפיתוח. תקדיש/י רגע להשאיר אחד?';
	@override String get shareFeedbackViaEmail => 'המשוב שלך מעצב את הצעד הבא — אנחנו קוראים כל הודעה. לשתף מחשבות בדוא"ל?';
	@override String get rateCta => 'דרג/י בחנות Play';
	@override String get maybeLater => 'אולי אחר כך';
	@override String get sendFeedback => 'שלח/י משוב';
	@override String get noThanks => 'לא תודה';
	@override String get aboutUsDescription => 'נבנה באהבה על ידי צוות קטן. אנחנו מתמקדים בפרטיות, פשטות ובבניית הרגלי אכילה טובים יותר.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'סקרנים מי עומד מאחורי ${appLabel}? ראו ';
	@override String get aboutUsLinkLabel => 'אודותינו';
	@override String get thankYouMessage => 'תודה! נשאל שוב בפעם אחרת.';
}

// Path: health
class _TranslationsHealthHe implements TranslationsHealthEn {
	_TranslationsHealthHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'לא ניתן היה לסנכרן ל-Health Connect';
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
	@override String get description => 'מגדר עוזר לנו לחשב במדויק את קצב חילוף החומרים הבסיסי (BMR).';
	@override String get next => 'הבא';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightHe implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מה הגובה שלך?';
	@override String get description => 'הגובה עוזר לנו לחשב במדויק את ה-BMI וצרכי האנרגיה שלך.';
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
	@override String get currentDescription => 'המשקל הנוכחי חיוני להתאמה אישית של היעדים היומיים שלך.';
	@override String get targetTitle => 'מהו משקל היעד שלך?';
	@override String get targetDescription => 'קביעת משקל יעד עוזרת לנו לבנות תוכנית לטווח ארוך.';
	@override String get metric => 'מטרי';
	@override String get imperial => 'אימפריאלי';
	@override String get next => 'הבא';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeHe implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מהי תאריך הלידה שלך?';
	@override String get description => 'הגיל עוזר לנו לחשב במדויק את צריכת הקלוריות המומלצת עבורך.';
	@override String get next => 'הבא';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleHe implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'תת';
	@override String get healthy => 'תקין';
	@override String get overweight => 'עודף';
	@override String get obese => 'השמנה';
	@override late final _TranslationsOnboardingBmiScaleCategoriesHe categories = _TranslationsOnboardingBmiScaleCategoriesHe._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesHe messages = _TranslationsOnboardingBmiScaleMessagesHe._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalHe implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מה המטרה שלך?';
	@override String get description => 'בחר/י את המטרה שמתארת הכי טוב את מה שתרצה/י להשיג';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelHe implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'כמה את/ה פעיל/ה?';
	@override String get description => 'זה יעזור לנו לחשב במדויק יותר את צריכת הקלוריות היומית שלך';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectHe implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'התחבר/י ל-Health Connect';
	@override String get description => 'סנכרן/ני את נתוני הבריאות שלך לתובנות טובות יותר ומעקב קלוריות אוטומטי';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingHe automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingHe._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsHe progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsHe._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationHe seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationHe._(_root);
	@override String get connected => 'Health Connect מחובר';
	@override String get notConnected => 'Health Connect לא מחובר';
	@override String get setup => 'הגדרת Health Connect';
	@override String get skipForNow => 'דלג/י לעת עתה';
	@override String get statusConnected => 'Health Connect מחובר.';
	@override String get statusSuccess => 'Health Connect חובר בהצלחה!';
	@override String statusPermissionDenied({required Object appLabel}) => 'ההרשאה נדחתה. אנא אפשר/י הרשאות Health Connect מהגדרות הטלפון עבור ${appLabel}.';
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
	@override String get logMore => 'תעד/י עוד ארוחות בימים הקרובים כדי לקבל תובנות מותאמות אישית מה-AI.';
	@override String get loading => 'טוען/ת את הסיכום שלך...';
	@override String mealCount({required Object count}) => '${count} ארוחות תועדו';
	@override String macroBalanceScore({required Object score}) => 'ציון איזון ${score}';
	@override String get topFoods => 'המזונות המובילים';
	@override String get trendUp => 'הקלוריות במגמת עלייה';
	@override String get trendDown => 'הקלוריות במגמת ירידה';
	@override String get trendSteady => 'הקלוריות יציבות';
	@override String generatedAt({required Object time}) => 'עודכן ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalHe implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הגדר/י את היעד היומי שלך';
	@override String get titleSet => 'היעד היומי שלך';
	@override String get description => 'מוכנים לצאת לדרך הבריאותית? קבע/י למטה את יעד הקלוריות היומי כדי להתחיל להתקדם.';
	@override String get descriptionSet => 'המצפן מכוון! זהו יעד הקלוריות היומי שלך להנחיה.';
	@override String get yourGoal => 'היעד שלך';
	@override String get goal => 'יעד';
	@override String get dailyCalories => 'קלוריות יומיות (kcal)';
	@override String get setGoal => 'קבע/י יעד';
	@override String get intake => 'נצרך';
	@override String get burned => 'נשרף';
	@override String get weightImpact => 'השפעת המשקל';
	@override String get estLoss => 'הפסד משוער של';
	@override String get estGain => 'עלייה משוערת של';
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
	@override String get chartAccessibilityLabel => 'תרשים מאקרו';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressHe implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'פיצול המאקרו של היום';
	@override String get target => 'יעד';
	@override String get current => 'נוכחי';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryHe implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'היסטוריית מאקרו ל-7 ימים';
	@override String get trendTitle => 'המגמה של היום';
	@override String peakHour({required Object hour}) => 'שיא: ${hour}:00';
	@override String get noHistoryYet => 'אין היסטוריה עדיין';
	@override String get startLogging => 'התחל/י לתעד ארוחות כדי לראות כאן\nמגמות מאקרו ל-7 ימים';
}

// Path: home.mealLog
class _TranslationsHomeMealLogHe implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ארוחות מתועדות';
	@override String get emptyMessage => 'צלם/י תמונה של הארוחה האחרונה כדי לתעד כאן.';
	@override String get noMealsToday => 'אין ארוחות רשומות להיום';
	@override String get seeAllMeals => 'הצג את כל הארוחות';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionHe implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הוספה מהירה עם AI';
	@override String get description => 'תאר/י את הארוחה שלך, וה-AI יטפל בפרטים.';
	@override String get hint => 'לדוגמה: לארוחת בוקר אכלתי קערה גדולה של שיבולת שועל עם בננה פרוסה וכף מי גבינה...';
	@override String get analyzeMeal => 'נתח ארוחה';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsHe implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ארוחות מועדפות';
	@override String get description => 'הוספה מהירה של אחת מהארוחות המועדפות עליך.';
	@override String get noFavorites => 'עדיין אין ארוחות מועדפות.';
	@override String get addFavoriteHint => 'לחץ/י על הכוכב בארוחה כדי לסמן כמועדף.';
	@override String get seeAll => 'הצג הכל';
	@override String get add => 'הוסף';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapHe implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'צלם/י ותעד/י את הארוחה שלך';
	@override String get description => 'השתמש/י במצלמה כדי לצלם את האוכל לניתוח AI.';
	@override String get openCamera => 'פתח/י מצלמה';
	@override String get gallery => 'גלריה';
	@override String get compressingPhoto => 'מיטוב התמונה…';
	@override String get uploadingPhoto => 'מעלה את התמונה…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthHe implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'סנכרון עם Health Connect';
	@override String get description => 'סנכרן/ני את נתוני התזונה שלך עם Health Connect';
	@override String get install => 'התקן';
	@override String get connect => 'התחבר/י';
}

// Path: meal.nutrition
class _TranslationsMealNutritionHe implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get calories => 'קלוריות';
	@override String get carbs => 'פחמימות (גרם)';
	@override String get protein => 'חלבון (גרם)';
	@override String get fat => 'שומן (גרם)';
	@override String get fiber => 'סיבים (גרם)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationHe implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מחיקת ארוחה';
	@override String get message => 'למחוק את רשומת הארוחה הזו?';
	@override String get cancel => 'בטל';
	@override String get delete => 'מחק';
}

// Path: meal.variation
class _TranslationsMealVariationHe implements TranslationsMealVariationEn {
	_TranslationsMealVariationHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'שאלה ${current} מתוך ${total}';
	@override String get noVariationsAvailable => 'אין וריאציות זמינות';
}

// Path: meal.analysis
class _TranslationsMealAnalysisHe implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ניתוח ארוחה בעזרת AI';
	@override String get reassurance => 'לרוב זה לוקח כמה שניות.';
	@override String get stepStarted => 'מתחילים…';
	@override String get stepDecomposition => 'מבינים את הארוחה שלך…';
	@override String get stepIngredients => 'מתאימים רכיבים לנתוני תזונה…';
	@override String get stepUncertainty => 'בודקים רמת ביטחון…';
	@override String get stepMealTypeQuestion => 'כמעט סיימנו…';
	@override String get stepResult => 'מסיימים את התוצאה…';
	@override String get stepError => 'משהו השתבש';
	@override String get stepDefault => 'מנתחים את הארוחה…';
	@override String get progressUnderstand => 'הבנה';
	@override String get progressMatch => 'התאמה';
	@override String get progressCheck => 'בדיקה';
	@override String get progressFinish => 'סיום';
	@override String ingredientsLine({required Object count}) => 'זוהו ${count} רכיבים';
	@override String get ingredientsPending => 'סורקים רכיבים…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackHe implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'What looks wrong?';
	@override String get subtitle => 'Help us improve the analysis by selecting one or more issues.';
	@override String get tellUsMore => 'Tell us more';
	@override String get describeIncorrect => 'Describe what was incorrect';
	@override String get submit => 'Submit';
	@override String get issueFoodIdentification => 'Food identification';
	@override String get issuePortionSize => 'Portion size';
	@override String get issueCalorieDistribution => 'Calorie distribution';
	@override String get issueMacrosWrong => 'Macros are wrong';
	@override String get issueMissingItems => 'Missing items';
	@override String get issueExtraItems => 'Extra items';
	@override String get issueOther => 'Other';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsHe implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get recent => 'אחרונים';
	@override String get calories => 'קלוריות';
	@override String get alphabetical => 'א-ת';
}

// Path: profile.sections
class _TranslationsProfileSectionsHe implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'פרופיל';
	@override String get basicInformation => 'פרטים בסיסיים';
	@override String get goalsAndActivity => 'מטרות ופעילות';
	@override String get calculatedValues => 'ערכים מחושבים';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesHe implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'יעד יומי';
	@override String get calPerDay => 'cal/day';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsHe implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'פרטים אישיים';
	@override String get physicalMeasurements => 'מדדים גופניים';
	@override String get goalsAndActivity => 'מטרות ופעילות';
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
	@override String get localization => 'התאמה לשפה ואזור';
	@override String get notifications => 'התראות';
	@override String get healthConnect => 'Health Connect';
	@override String get supportAndLegal => 'תמיכה וחוקיות';
	@override String get about => 'אודות';
	@override String get dangerZone => 'אזור מסוכן';
	@override String get developer => 'מפתח';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileHe implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'עריכת פרופיל';
	@override String get subtitle => 'עדכון המידע האישי שלך';
}

// Path: settings.language
class _TranslationsSettingsLanguageHe implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'שפה';
	@override String get subtitle => 'בחר/י את השפה המועדפת';
	@override String get searchHint => 'חפש/י שפות...';
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
	@override String get title => 'תזכורות לארוחות';
	@override String get subtitle => 'הישאר/י על המסלול עם התראות בזמן';
}

// Path: settings.theme
class _TranslationsSettingsThemeHe implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ערכת נושא';
	@override String get light => 'בהיר';
	@override String get dark => 'כהה';
	@override String get system => 'מערכת';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackHe implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'שליחת משוב';
	@override String subtitle({required Object appLabel}) => 'עזר/י לנו לשפר את ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'משוב על ${appLabel}';
	@override String get emailBodyPrefix => 'אנא ספק/י את המשוב שלך כאן:';
	@override String get appVersion => 'גרסת אפליקציה';
	@override String get device => 'מכשיר';
	@override String get osVersion => 'גרסת מערכת הפעלה';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryHe implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ייצוא היסטוריית ארוחות';
	@override String get subtitle => 'שיתוף קובץ CSV של הארוחות שתיעדת';
	@override String get shareText => 'ייצוא היסטוריית הארוחות שלך מ-Calorify';
	@override String failed({required Object error}) => 'לא ניתן היה לייצא את היסטוריית הארוחות: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataHe implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מחיקת כל הנתונים';
	@override String get subtitle => 'מחיקה בלתי הפיכה של כל המידע שלך';
	@override String get confirmationTitle => 'למחוק את כל הנתונים?';
	@override String get confirmationMessage => 'לא ניתן לבטל פעולה זו. כל הארוחות, המועדפים והגדרות הפרופיל יימחקו לצמיתות.';
	@override String get cancel => 'בטל';
	@override String get clearEverything => 'מחק הכל';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsHe implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אפשרויות ניפוי שגיאות';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectHe implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'צפייה וניהול הרשאות';
	@override late final _TranslationsSettingsHealthConnectUnavailableHe unavailable = _TranslationsSettingsHealthConnectUnavailableHe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsHe permissions = _TranslationsSettingsHealthConnectPermissionsHe._(_root);
	@override String get managePermissions => 'ניהול הרשאות';
	@override String get openSettings => 'פתח/י את הגדרות Health Connect';
	@override String get requestPermissions => 'בקש/י הרשאות';
	@override String get permissionRequestCancelledOrFailed => 'בקשת ההרשאות בוטלה או נכשלה. נסה/י שוב או אשר/י הרשאות ידנית בהגדרות Health Connect.';
	@override String get permissionRequestFailed => 'אין אפשרות לבקש הרשאות. נסה/י שוב או אשר/י הרשאות ידנית בהגדרות Health Connect.';
	@override String get requestingPermissions => 'מבקשים הרשאות...';
}

// Path: settings.about
class _TranslationsSettingsAboutHe implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אודות';
	@override String get tagline => 'מודעות לקלוריות מהירה, חינמית ומבוססת פרטיות';
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
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastHe implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן לארוחת בוקר! 🍳';
	@override String get body => 'אל תשכח/י לתעד את ארוחת הבוקר';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchHe implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן לארוחת צהריים! 🥗';
	@override String get body => 'זה הזמן לתעד את ארוחת הצהריים';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerHe implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן לארוחת ערב! 🍽️';
	@override String get body => 'אל תשכח/י לתעד את ארוחת הערב';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackHe implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן לחטיף! 🍎';
	@override String get body => 'זה הזמן לחטיף בריא';
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
	@override String description({required Object appLabel}) => '${appLabel} מספקת מידע תזונתי משוער. הדיוק תלוי בקלט שלך ובשונות בין מזונות. השתמש/י בכך כהנחיה, לא כמקור מוחלט. תמיד התייעצ/י עם איש מקצוע לייעוץ תזונתי אישי.';
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
	@override String get title => 'אודות הערכת משקל';
	@override String get description => 'השינוי החזוי במשקל הוא הערכה תיאורטית המבוססת על מודל פשוט של קלוריות נכנסות מול קלוריות נשרפות. זה מיועד כהנחיה למוטיבציה בלבד, ולא כניבוי למשקל בפועל.';
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
	@override String get description => 'מדדים אלה עוזרים לך להבין את צרכי האנרגיה של הגוף ולהנחות את יעדי התזונה שלך.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrHe bmr = _TranslationsDisclaimerHealthMetricsBmrHe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeHe tdee = _TranslationsDisclaimerHealthMetricsTdeeHe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalHe dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalHe._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureHe implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הערכת הוצאת קלוריות';
	@override String get description => 'כאשר נתוני Health Connect אינם זמינים, אנו מעריכים את הקלוריות שנשרפו היום באמצעות קצב חילוף החומרים הבסיסי (BMR) ורמת הפעילות (TDEE), מותאמים לחלק היום שעבר.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedHe howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedHe._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHe professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHe._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionHe implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זיהוי מזון חכם';
	@override String get description => 'צלם/י תמונה ותן/י ל-AI לזהות את הארוחה שלך';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisHe implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ניתוח בעזרת AI';
	@override String get description => 'קבל/י מיד נתוני תזונה מהתיאור שלך';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationHe implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אינטגרציה עם Health Connect';
	@override String get description => 'התחבר/י ל-Health Connect לתובנות טובות יותר';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesHe implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'תת־משקל';
	@override String get healthyWeight => 'משקל תקין';
	@override String get overweight => 'עודף משקל';
	@override String get obese => 'השמנת יתר';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesHe implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'נוכל לעזור לך לבנות תוכנית בריאה להגיע למשקל מאוזן עם ארוחות עשירות בערכים תזונתיים.';
	@override String get healthy => 'כל הכבוד! את/ה בטווח בריא. נעזור לך לשמור על חיוניות ורמות אנרגיה.';
	@override String overweight({required Object appLabel}) => '${appLabel} תהפוך את הדרך שלך לפשוטה יותר עם מעקב מונע-AI שיעזור לך להגיע ליעד בנוחות.';
	@override String get obese => 'אנחנו כאן כדי לתמוך בך עם הנחיות מותאמות אישית ואסטרטגיות ברות־קיימא להשגת מטרות הבריאות שלך.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingHe implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מעקב קלוריות אוטומטי';
	@override String get description => 'עקוב/י אחרי קלוריות שנשרפו מאפליקציות הכושר שלך';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsHe implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'תובנות התקדמות';
	@override String get description => 'קבל/י תובנות מפורטות על מגמות הבריאות שלך';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationHe implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אינטגרציה חלקה';
	@override String get description => 'סנכרון נתונים מאפליקציות הבריאות האהובות עליך';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessHe implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'את/ה לא לבד';
	@override String get genericMessage => 'מחקרים מראים שמעקב עקבי הוא המנבא מספר 1 להצלחה ארוכת טווח.';
	@override String personalizedMessage({required Object gender, required Object age, required Object goal}) => 'עבור ${gender} בגיל ${age} השואפ/ת ל${goal}, מעקב עקבי הוא המנבא מספר 1 להצלחה.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} הופכת את זה לקל פי 10 מביצוע ידני.';
	@override String get getStartedTitle => 'מוכנים להתחיל?';
	@override String get tipPhoto => 'צלם/י את הארוחות שלך לניתוח מיידי';
	@override String get tipConsistency => 'תעד/י בעקביות כדי לראות התקדמות משמעותית';
	@override String get tipProgress => 'עקוב/י מדי יום אחרי ההתקדמות שלך כדי להישאר במוטיבציה';
	@override String get button => 'בואו נתחיל';
	@override String get defaultGender => 'אדם';
	@override String get defaultGoal => 'בריאה/בריא יותר';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileHe implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'פרופיל הבריאות שלך';
	@override String bmiDescription({required Object bmi}) => 'בהתבסס על המדדים שלך, ה-BMI הוא ${bmi}.';
	@override String get finalizeDescription => 'בוא/י נסיים את הפרופיל כדי להתאים את החוויה אישית.';
	@override String get goalGain => 'להעלות';
	@override String get goalLose => 'להוריד';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'כדי להגיע ליעד, תצטרך/י ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'את/ה במשקל היעד! נעזור לך לשמור עליו.';
	@override String get button => 'בואו נתחיל';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleHe implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'תחילת דרך מצוינת!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'עשית את הצעד הראשון לקראת ${goalText}. מאחר שאת/ה ${activityText}, ${appLabel} תתאים את היעדים שלך לסגנון החיים שלך.';
	@override String get personalizedTargets => 'יעדי קלוריות מותאמים אישית';
	@override String get aiMealDetection => 'זיהוי ארוחות מונע-AI';
	@override String get macroBreakdowns => 'פירוט מפורט של מקרו-נוטריינטים';
	@override String get button => 'בואו נתחיל';
	@override String get defaultGoal => 'המטרות שלך';
	@override String get defaultActivity => 'פעיל/ה';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightHe implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'ירידה במשקל';
	@override String get description => 'יצירת גירעון קלורי לירידה במשקל';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightHe implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'שמירה על משקל';
	@override String get description => 'שמירה על המשקל הנוכחי שלך';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightHe implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'עלייה במשקל';
	@override String get description => 'יצירת עודף קלורי לעלייה במשקל';
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
	@override String get description => 'פעילות קלה 1–3 ימים בשבוע';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveHe implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעילות מתונה';
	@override String get description => 'פעילות מתונה 3–5 ימים בשבוע';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveHe implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעילות גבוהה';
	@override String get description => 'אימונים קשים 6–7 ימים בשבוע';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveHe implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעילות קיצונית';
	@override String get description => 'מאמץ קשה מאוד, עבודה פיזית';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableHe implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect אינו זמין';
	@override String get description => 'Health Connect אינו זמין במכשיר זה. אנא התקן/י את Health Connect מחנות Play (Android 9+) או עדכן/י ל-Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsHe implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הרשאות';
	@override String get description => 'ההרשאות הבאות נדרשות כדי לספק אינטגרציה עם Health Connect:';
	@override String get granted => 'מאושרת';
	@override String get notGranted => 'לא מאושרת';
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
	@override String content({required Object appLabel}) => '${appLabel} נולדה מתסכול פשוט: רוב אפליקציות ספירת הקלוריות מורכבות מדי, דורשות הזנה ידנית מתמדת, גובות דמי מנוי גבוהים או פוגעות בפרטיות.\n\nכמפתח יחיד, רציתי לבנות משהו פשוט והוגן יותר — אפליקציה שמשתמשת ב-AI כדי להפחית מאמץ, נשארת מהירה וחינמית, ומתייחסת לנתוני הבריאות שלך בכבוד.\n\n${appLabel} היא האפליקציה שרציתי שתתקיים: בלי חשבונות, בלי מעקב, בלי פרסומות — רק תובנות ברורות ומעשיות ומטרות הבריאות שלך.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyHe implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הפרטיות שלך חשובה';
	@override String get description => 'הפרטיות אינה מחשבה מאוחרת — היא עקרון תכנוני. כך זה נראה בפועל:';
	@override String get noAccounts => 'אין צורך בחשבונות\nהשתמש/י באפליקציה מיד. בלי הרשמה, בלי זיהוי.';
	@override String noTracking({required Object appLabel}) => 'ללא מעקב התנהגותי\n${appLabel} אינה עוקבת אחרי הפעילות שלך, אינה בונה פרופילי שימוש ואינה עוקבת אחריך באפליקציות או אתרים.';
	@override String noAds({required Object appLabel}) => 'ללא פרסומות כברירת מחדל\n${appLabel} בנויה לפעול ללא פרסומות או מוניטיזציה מבוססת נתונים.';
	@override String get noDataSelling => 'ללא מכירת נתונים\nנתוני הבריאות שלך לעולם לא נמכרים או משותפים לצדדים שלישיים.';
	@override String get localStorage => 'אחסון מקומי תחילה\nהנתונים שלך נשארים במכשיר שלך.';
	@override String get privacyPolicy => 'מדיניות פרטיות';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperHe implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'פותחה על ידי מפתח יחיד';
	@override String description({required Object appLabel}) => '${appLabel} מפותחת ומתוחזקת על ידי מפתח יחיד, המתמקד ביצירת תוכנת בריאות שקטה ומכבדת פרטיות.\n\nמשוב נקרא אישית ותורם לעיצוב כיוון האפליקציה.';
	@override String get website => 'אתר';
	@override String get email => 'דוא"ל';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackHe implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'נהנ/ית מ-${appLabel}?';
	@override String description({required Object appLabel}) => 'המשוב שלך עוזר להפוך את ${appLabel} לטובה יותר עבור כולם.';
	@override String get rateApp => 'דרג/י בחנות Play';
	@override String get sendFeedback => 'שליחת משוב';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeHe implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'גודל מנה';
	@override String get description => 'הדיוק של ההערכות תלוי מאוד בהערכתך הנכונה של גודל המנה.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsHe implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'שיטות הכנה';
	@override String description({required Object appLabel}) => 'שיטות בישול עשויות להשפיע באופן משמעותי על הערך התזונתי. ההערכות של ${appLabel} אינן תמיד לוקחות בחשבון את כל השינויים הללו.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsHe implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'רכיבים';
	@override String get description => 'מנות מורכבות עם רכיבים רבים ונסתרים עשויות להוביל להערכות פחות מדויקות.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsHe implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מגבלות מאגר המידע';
	@override String description({required Object appLabel}) => 'מאגר המזון של ${appLabel} רחב, אך ייתכן שאינו כולל כל פריט מזון או וריאציה.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyHe implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'דיוק הקלוריות';
	@override String get description => 'ההערכה מדויקת רק כפי דיוק המעקב אחרי צריכת ושריפת הקלוריות שלך. תיעוד לא מדויק יוביל להערכה לא מדויקת.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsHe implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'גורמים ביולוגיים';
	@override String description({required Object appLabel}) => 'ירידה/עלייה בפועל במשקל מושפעת מחילוף חומרים, הורמונים, שינה, סטרס, הידרציה ועוד גורמים אישיים ש-${appLabel} אינה יכולה למדוד.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightHe implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'משקל מים ותנודות';
	@override String get description => 'משקל יומי תקין יכול להשתנות משמעותית עקב אגירת נוזלים, עיכול ותזמון. ההערכה אינה מתחשבת בשינויים היומיים הללו.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHe implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הנחיה מקצועית';
	@override String get description => 'אל תשתמש/י בהערכה זו לקבלת החלטות רפואיות. תמיד התייעצ/י עם איש מקצוע רפואי או דיאטנ/ית קליני/ת לניהול משקל מותאם אישית.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrHe implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'קצב חילוף החומרים הבסיסי (BMR) הוא מספר הקלוריות שהגוף שורף במנוחה כדי לקיים תפקודים בסיסיים כמו נשימה וזרימת דם. BMR תלוי בגיל, מגדר, גובה ומשקל. BMR גבוה יותר משמעו שהגוף שורף יותר קלוריות במנוחה, לעיתים בשל מסת שריר גבוהה יותר, גיל צעיר יותר, או היותך זכר. BMR נמוך יותר מעיד לרוב על מסת שריר נמוכה יותר, גיל מבוגר יותר, או היותך נקבה.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeHe implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'הוצאה אנרגטית יומית כוללת (TDEE) היא סך הקלוריות שאת/ה שורפ/ת ביום, כולל ה-BMR שלך בתוספת קלוריות מפעילות גופנית ותנועה יומית. TDEE תלוי ב-BMR וברמת הפעילות שלך. TDEE גבוה יותר משמעו שאת/ה שורפ/ת יותר קלוריות בסך הכול, בדרך כלל עקב פעילות גבוהה יותר או BMR גבוה יותר. TDEE נמוך יותר מצביע על פעילות יומית מועטה יותר או BMR נמוך.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalHe implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'יעד יומי';
	@override String get description => 'היעד היומי הוא צריכת הקלוריות היומית המומלצת שלך בהתבסס על ה-TDEE ומטרת המשקל. לירידה במשקל, צורכים פחות קלוריות מה-TDEE. לשמירה על משקל, מתאימים ל-TDEE. לעלייה במשקל, צורכים יותר קלוריות מה-TDEE. זה עוזר לך להשיג שינוי משקל בקצב בריא.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedHe implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'כיצד מחושבת ההערכה';
	@override String get description => 'אנחנו מחשבים את ה-TDEE שלך (על בסיס הפרופיל) ומכפילים אותו בשבריר היום שעבר (שעות + דקות) / 24 כדי להעריך את הקלוריות שנשרפו עד כה.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHe implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הנחיה מקצועית';
	@override String get description => 'אל תשתמש/י בהערכה זו לקבלת החלטות רפואיות. תמיד התייעצ/י עם איש מקצוע רפואי או דיאטנ/ית קליני/ת להמלצות מותאמות אישית.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHe implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'קריאת סך הקלוריות שנשרפו';
	@override String get description => 'מאפשר לאפליקציה לקרוא את סך הקלוריות שנשרפו מ-Health Connect.';
	@override String get usage => 'הרשאה זו משמשת להצגת שריפת הקלוריות היומית שלך באפליקציה, כדי לעזור לך להבין את הוצאה האנרגטית הכוללת לאורך היום.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadHe implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'קריאת נתוני תזונה';
	@override String get description => 'מאפשר לאפליקציה לקרוא נתוני תזונה מ-Health Connect.';
	@override String get usage => 'הרשאה זו מאפשרת לאפליקציה לקרוא מידע תזונתי שעשוי להיות מתועד באפליקציות אחרות המחוברות ל-Health Connect, כדי לספק תמונה מקיפה של התזונה שלך.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteHe implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'כתיבת נתוני תזונה';
	@override String get description => 'מאפשר לאפליקציה לכתוב נתוני תזונה ל-Health Connect.';
	@override String get usage => 'הרשאה זו מאפשרת לאפליקציה לסנכרן את הארוחות שתיעדת ל-Health Connect, כך שנתוני התזונה שלך יהיו זמינים גם באפליקציות בריאות וכושר אחרות שבהן את/ה משתמש/ת.';
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
			'errors.rateLimitExceeded' => 'ביצעת יותר מדי בקשות. אנא המתן/י רגע ונסה/י שוב.',
			'errors.networkError' => 'שגיאת רשת. בדוק/י את חיבור האינטרנט שלך.',
			'errors.unknownError' => 'משהו השתבש. אנא נסה/י שוב מאוחר יותר.',
			'errors.loadingProfileData' => 'שגיאה בטעינת נתוני הפרופיל',
			'errors.somethingWentWrong' => 'משהו השתבש.',
			'errors.retry' => 'נסה/י שוב',
			'onboarding.welcome' => ({required Object appLabel}) => 'ברוך/ה הבא/ה אל ${appLabel}',
			'onboarding.subtitle' => 'בן/בת הלוויה התזונתי/ת האישי/ת שלך, מופעל/ת ב-AI',
			'onboarding.getStarted' => 'התחל/י',
			'onboarding.features.foodRecognition.title' => 'זיהוי מזון חכם',
			'onboarding.features.foodRecognition.description' => 'צלם/י תמונה ותן/י ל-AI לזהות את הארוחה שלך',
			'onboarding.features.aiAnalysis.title' => 'ניתוח בעזרת AI',
			'onboarding.features.aiAnalysis.description' => 'קבל/י מיד נתוני תזונה מהתיאור שלך',
			'onboarding.features.healthIntegration.title' => 'אינטגרציה עם Health Connect',
			'onboarding.features.healthIntegration.description' => 'התחבר/י ל-Health Connect לתובנות טובות יותר',
			'onboarding.gender.title' => 'מה המגדר שלך?',
			'onboarding.gender.description' => 'מגדר עוזר לנו לחשב במדויק את קצב חילוף החומרים הבסיסי (BMR).',
			'onboarding.gender.next' => 'הבא',
			'onboarding.height.title' => 'מה הגובה שלך?',
			'onboarding.height.description' => 'הגובה עוזר לנו לחשב במדויק את ה-BMI וצרכי האנרגיה שלך.',
			'onboarding.height.metric' => 'מטרי',
			'onboarding.height.imperial' => 'אימפריאלי',
			'onboarding.height.next' => 'הבא',
			'onboarding.weight.currentTitle' => 'מה המשקל הנוכחי שלך?',
			'onboarding.weight.currentDescription' => 'המשקל הנוכחי חיוני להתאמה אישית של היעדים היומיים שלך.',
			'onboarding.weight.targetTitle' => 'מהו משקל היעד שלך?',
			'onboarding.weight.targetDescription' => 'קביעת משקל יעד עוזרת לנו לבנות תוכנית לטווח ארוך.',
			'onboarding.weight.metric' => 'מטרי',
			'onboarding.weight.imperial' => 'אימפריאלי',
			'onboarding.weight.next' => 'הבא',
			'onboarding.age.title' => 'מהי תאריך הלידה שלך?',
			'onboarding.age.description' => 'הגיל עוזר לנו לחשב במדויק את צריכת הקלוריות המומלצת עבורך.',
			'onboarding.age.next' => 'הבא',
			'onboarding.bmiScale.underweight' => 'תת',
			'onboarding.bmiScale.healthy' => 'תקין',
			'onboarding.bmiScale.overweight' => 'עודף',
			'onboarding.bmiScale.obese' => 'השמנה',
			'onboarding.bmiScale.categories.underweight' => 'תת־משקל',
			'onboarding.bmiScale.categories.healthyWeight' => 'משקל תקין',
			'onboarding.bmiScale.categories.overweight' => 'עודף משקל',
			'onboarding.bmiScale.categories.obese' => 'השמנת יתר',
			'onboarding.bmiScale.messages.underweight' => 'נוכל לעזור לך לבנות תוכנית בריאה להגיע למשקל מאוזן עם ארוחות עשירות בערכים תזונתיים.',
			'onboarding.bmiScale.messages.healthy' => 'כל הכבוד! את/ה בטווח בריא. נעזור לך לשמור על חיוניות ורמות אנרגיה.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} תהפוך את הדרך שלך לפשוטה יותר עם מעקב מונע-AI שיעזור לך להגיע ליעד בנוחות.',
			'onboarding.bmiScale.messages.obese' => 'אנחנו כאן כדי לתמוך בך עם הנחיות מותאמות אישית ואסטרטגיות ברות־קיימא להשגת מטרות הבריאות שלך.',
			'onboarding.weightGoal.title' => 'מה המטרה שלך?',
			'onboarding.weightGoal.description' => 'בחר/י את המטרה שמתארת הכי טוב את מה שתרצה/י להשיג',
			'onboarding.activityLevel.title' => 'כמה את/ה פעיל/ה?',
			'onboarding.activityLevel.description' => 'זה יעזור לנו לחשב במדויק יותר את צריכת הקלוריות היומית שלך',
			'onboarding.healthConnect.title' => 'התחבר/י ל-Health Connect',
			'onboarding.healthConnect.description' => 'סנכרן/ני את נתוני הבריאות שלך לתובנות טובות יותר ומעקב קלוריות אוטומטי',
			'onboarding.healthConnect.automaticTracking.title' => 'מעקב קלוריות אוטומטי',
			'onboarding.healthConnect.automaticTracking.description' => 'עקוב/י אחרי קלוריות שנשרפו מאפליקציות הכושר שלך',
			'onboarding.healthConnect.progressInsights.title' => 'תובנות התקדמות',
			'onboarding.healthConnect.progressInsights.description' => 'קבל/י תובנות מפורטות על מגמות הבריאות שלך',
			'onboarding.healthConnect.seamlessIntegration.title' => 'אינטגרציה חלקה',
			'onboarding.healthConnect.seamlessIntegration.description' => 'סנכרון נתונים מאפליקציות הבריאות האהובות עליך',
			'onboarding.healthConnect.connected' => 'Health Connect מחובר',
			'onboarding.healthConnect.notConnected' => 'Health Connect לא מחובר',
			'onboarding.healthConnect.setup' => 'הגדרת Health Connect',
			'onboarding.healthConnect.skipForNow' => 'דלג/י לעת עתה',
			'onboarding.healthConnect.statusConnected' => 'Health Connect מחובר.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect חובר בהצלחה!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'ההרשאה נדחתה. אנא אפשר/י הרשאות Health Connect מהגדרות הטלפון עבור ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'שגיאה בהגדרת Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'את/ה לא לבד',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'מחקרים מראים שמעקב עקבי הוא המנבא מספר 1 להצלחה ארוכת טווח.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object gender, required Object age, required Object goal}) => 'עבור ${gender} בגיל ${age} השואפ/ת ל${goal}, מעקב עקבי הוא המנבא מספר 1 להצלחה.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} הופכת את זה לקל פי 10 מביצוע ידני.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'מוכנים להתחיל?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'צלם/י את הארוחות שלך לניתוח מיידי',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'תעד/י בעקביות כדי לראות התקדמות משמעותית',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'עקוב/י מדי יום אחרי ההתקדמות שלך כדי להישאר במוטיבציה',
			'onboarding.reinforcement.trackingSuccess.button' => 'בואו נתחיל',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'אדם',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'בריאה/בריא יותר',
			'onboarding.reinforcement.healthProfile.title' => 'פרופיל הבריאות שלך',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'בהתבסס על המדדים שלך, ה-BMI הוא ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'בוא/י נסיים את הפרופיל כדי להתאים את החוויה אישית.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'להעלות',
			'onboarding.reinforcement.healthProfile.goalLose' => 'להוריד',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'כדי להגיע ליעד, תצטרך/י ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'את/ה במשקל היעד! נעזור לך לשמור עליו.',
			'onboarding.reinforcement.healthProfile.button' => 'בואו נתחיל',
			'onboarding.reinforcement.goalLifestyle.title' => 'תחילת דרך מצוינת!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'עשית את הצעד הראשון לקראת ${goalText}. מאחר שאת/ה ${activityText}, ${appLabel} תתאים את היעדים שלך לסגנון החיים שלך.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'יעדי קלוריות מותאמים אישית',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'זיהוי ארוחות מונע-AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'פירוט מפורט של מקרו-נוטריינטים',
			'onboarding.reinforcement.goalLifestyle.button' => 'בואו נתחיל',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'המטרות שלך',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'פעיל/ה',
			'tabs.dashboard' => 'ראשי',
			'tabs.history' => 'היסטוריה',
			'home.aiSummary.title' => 'סיכום ה-AI שלך',
			'home.aiSummary.logMore' => 'תעד/י עוד ארוחות בימים הקרובים כדי לקבל תובנות מותאמות אישית מה-AI.',
			'home.aiSummary.loading' => 'טוען/ת את הסיכום שלך...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} ארוחות תועדו',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'ציון איזון ${score}',
			'home.aiSummary.topFoods' => 'המזונות המובילים',
			'home.aiSummary.trendUp' => 'הקלוריות במגמת עלייה',
			'home.aiSummary.trendDown' => 'הקלוריות במגמת ירידה',
			'home.aiSummary.trendSteady' => 'הקלוריות יציבות',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'עודכן ${time}',
			'home.dailyGoal.title' => 'הגדר/י את היעד היומי שלך',
			'home.dailyGoal.titleSet' => 'היעד היומי שלך',
			'home.dailyGoal.description' => 'מוכנים לצאת לדרך הבריאותית? קבע/י למטה את יעד הקלוריות היומי כדי להתחיל להתקדם.',
			'home.dailyGoal.descriptionSet' => 'המצפן מכוון! זהו יעד הקלוריות היומי שלך להנחיה.',
			'home.dailyGoal.yourGoal' => 'היעד שלך',
			'home.dailyGoal.goal' => 'יעד',
			'home.dailyGoal.dailyCalories' => 'קלוריות יומיות (kcal)',
			'home.dailyGoal.setGoal' => 'קבע/י יעד',
			'home.dailyGoal.intake' => 'נצרך',
			'home.dailyGoal.burned' => 'נשרף',
			'home.dailyGoal.weightImpact' => 'השפעת המשקל',
			'home.dailyGoal.estLoss' => 'הפסד משוער של',
			'home.dailyGoal.estGain' => 'עלייה משוערת של',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'סיכום יומי',
			'home.dailySummary.calories' => 'קלוריות',
			'home.dailySummary.carbs' => 'פחמימות',
			'home.dailySummary.protein' => 'חלבון',
			'home.dailySummary.fat' => 'שומן',
			'home.dailySummary.fiber' => 'סיבים',
			'home.dailySummary.grams' => 'גרם',
			'home.dailySummary.chartAccessibilityLabel' => 'תרשים מאקרו',
			'home.intakeProgress.title' => 'פיצול המאקרו של היום',
			'home.intakeProgress.target' => 'יעד',
			'home.intakeProgress.current' => 'נוכחי',
			'home.intakeHistory.title' => 'היסטוריית מאקרו ל-7 ימים',
			'home.intakeHistory.trendTitle' => 'המגמה של היום',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'שיא: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'אין היסטוריה עדיין',
			'home.intakeHistory.startLogging' => 'התחל/י לתעד ארוחות כדי לראות כאן\nמגמות מאקרו ל-7 ימים',
			'home.mealLog.title' => 'ארוחות מתועדות',
			'home.mealLog.emptyMessage' => 'צלם/י תמונה של הארוחה האחרונה כדי לתעד כאן.',
			'home.mealLog.noMealsToday' => 'אין ארוחות רשומות להיום',
			'home.mealLog.seeAllMeals' => 'הצג את כל הארוחות',
			'home.mealDescription.title' => 'הוספה מהירה עם AI',
			'home.mealDescription.description' => 'תאר/י את הארוחה שלך, וה-AI יטפל בפרטים.',
			'home.mealDescription.hint' => 'לדוגמה: לארוחת בוקר אכלתי קערה גדולה של שיבולת שועל עם בננה פרוסה וכף מי גבינה...',
			'home.mealDescription.analyzeMeal' => 'נתח ארוחה',
			'home.favoriteMeals.title' => 'ארוחות מועדפות',
			'home.favoriteMeals.description' => 'הוספה מהירה של אחת מהארוחות המועדפות עליך.',
			'home.favoriteMeals.noFavorites' => 'עדיין אין ארוחות מועדפות.',
			'home.favoriteMeals.addFavoriteHint' => 'לחץ/י על הכוכב בארוחה כדי לסמן כמועדף.',
			'home.favoriteMeals.seeAll' => 'הצג הכל',
			'home.favoriteMeals.add' => 'הוסף',
			'home.mealSnap.title' => 'צלם/י ותעד/י את הארוחה שלך',
			'home.mealSnap.description' => 'השתמש/י במצלמה כדי לצלם את האוכל לניתוח AI.',
			'home.mealSnap.openCamera' => 'פתח/י מצלמה',
			'home.mealSnap.gallery' => 'גלריה',
			'home.mealSnap.compressingPhoto' => 'מיטוב התמונה…',
			'home.mealSnap.uploadingPhoto' => 'מעלה את התמונה…',
			'home.connectHealth.title' => 'סנכרון עם Health Connect',
			'home.connectHealth.description' => 'סנכרן/ני את נתוני התזונה שלך עם Health Connect',
			'home.connectHealth.install' => 'התקן',
			'home.connectHealth.connect' => 'התחבר/י',
			'history.noMeals' => 'אין ארוחות רשומות',
			'history.emptyMessage' => 'צלם/י תמונה של הארוחה האחרונה כדי לתעד כאן.',
			'history.today' => 'היום',
			'history.yesterday' => 'אתמול',
			'meal.ohNo' => 'אוי לא!',
			'meal.delete' => 'מחק',
			'meal.editMeal' => 'ערוך ארוחה',
			'meal.addMeal' => 'הוסף ארוחה',
			'meal.saveMeal' => 'שמור ארוחה',
			'meal.save' => 'שמור',
			'meal.mealName' => 'שם הארוחה',
			'meal.mealNameHint' => 'לדוגמה, חביתת ביצים עם טוסט',
			'meal.mealQuantity' => 'כמות הארוחה',
			'meal.mealQuantityHint' => 'לדוגמה, קערה אחת, 2 פרוסות',
			'meal.timeOfMeal' => 'שעת הארוחה',
			'meal.timeOfMealHint' => 'בחר/י את השעה שבה אכלת את הארוחה',
			'meal.mealType' => 'סוג ארוחה',
			'meal.nutrition.calories' => 'קלוריות',
			'meal.nutrition.carbs' => 'פחמימות (גרם)',
			'meal.nutrition.protein' => 'חלבון (גרם)',
			'meal.nutrition.fat' => 'שומן (גרם)',
			'meal.nutrition.fiber' => 'סיבים (גרם)',
			'meal.deleteConfirmation.title' => 'מחיקת ארוחה',
			'meal.deleteConfirmation.message' => 'למחוק את רשומת הארוחה הזו?',
			'meal.deleteConfirmation.cancel' => 'בטל',
			'meal.deleteConfirmation.delete' => 'מחק',
			'meal.addedToLog' => 'הארוחה נוספה ליומן שלך!',
			'meal.couldNotAdd' => ({required Object error}) => 'לא ניתן היה להוסיף ארוחה: ${error}',
			'meal.savedSuccessfully' => 'הארוחה נוספה בהצלחה!',
			'meal.updatedSuccessfully' => 'הארוחה עודכנה בהצלחה!',
			'meal.errorSaving' => ({required Object error}) => 'שגיאה בשמירת הארוחה: ${error}',
			'meal.removedFromFavorites' => 'הוסר מהמועדפים!',
			'meal.savedAsFavorite' => 'הארוחה נשמרה כמועדפת!',
			'meal.unfavorite' => 'הסר ממועדפים',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'לא ניתן היה לעדכן מועדף: ${error}',
			'meal.feedbackThanks' => 'תודה על המשוב!',
			'meal.reanalysisUpdated' => 'הניתוח עודכן בהתאם למשוב שלך.',
			'meal.failedToProcess' => ({required Object error}) => 'העיבוד נכשל: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'עיבוד התמונה נכשל: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'שגיאה במיטוב התמונה: ${error}',
			'meal.failedToSave' => 'שמירת הנתונים נכשלה. אנא נסה/י שוב.',
			'meal.skip' => 'דלג/י',
			'meal.variation.question' => ({required Object current, required Object total}) => 'שאלה ${current} מתוך ${total}',
			'meal.variation.noVariationsAvailable' => 'אין וריאציות זמינות',
			'meal.analysis.title' => 'ניתוח ארוחה בעזרת AI',
			'meal.analysis.reassurance' => 'לרוב זה לוקח כמה שניות.',
			'meal.analysis.stepStarted' => 'מתחילים…',
			'meal.analysis.stepDecomposition' => 'מבינים את הארוחה שלך…',
			'meal.analysis.stepIngredients' => 'מתאימים רכיבים לנתוני תזונה…',
			'meal.analysis.stepUncertainty' => 'בודקים רמת ביטחון…',
			'meal.analysis.stepMealTypeQuestion' => 'כמעט סיימנו…',
			'meal.analysis.stepResult' => 'מסיימים את התוצאה…',
			'meal.analysis.stepError' => 'משהו השתבש',
			'meal.analysis.stepDefault' => 'מנתחים את הארוחה…',
			'meal.analysis.progressUnderstand' => 'הבנה',
			'meal.analysis.progressMatch' => 'התאמה',
			'meal.analysis.progressCheck' => 'בדיקה',
			'meal.analysis.progressFinish' => 'סיום',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'זוהו ${count} רכיבים',
			'meal.analysis.ingredientsPending' => 'סורקים רכיבים…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
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
			'favorites.title' => 'מועדפים',
			'favorites.empty' => 'עדיין אין ארוחות מועדפות.',
			'favorites.searchPlaceholder' => 'חפש/י ארוחות מועדפות',
			'favorites.searchEmptyTitle' => 'אין מועדפים תואמים לחיפוש',
			'favorites.searchEmptySubtitle' => 'נסו שם ארוחה אחר, כמות או סוג ארוחה שונה.',
			'favorites.sortLabel' => 'מיון מועדפים',
			'favorites.undo' => 'בטל',
			'favorites.removed' => ({required Object name}) => '${name} הוסר מהמועדפים',
			'favorites.sortOptions.recent' => 'אחרונים',
			'favorites.sortOptions.calories' => 'קלוריות',
			'favorites.sortOptions.alphabetical' => 'א-ת',
			'profile.title' => 'פרופיל',
			'profile.noProfileData' => 'לא נמצאו נתוני פרופיל',
			'profile.yourProfile' => 'הפרופיל שלך',
			'profile.viewAndManage' => 'צפה/י ונהלי/ה את פרטי הבריאות שלך',
			'profile.sections.profile' => 'פרופיל',
			'profile.sections.basicInformation' => 'פרטים בסיסיים',
			'profile.sections.goalsAndActivity' => 'מטרות ופעילות',
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
			'profile.calculatedValues.dailyGoal' => 'יעד יומי',
			'profile.calculatedValues.calPerDay' => 'cal/day',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'ציון בריאות',
			'healthScore.whyThisScore' => 'למה הציון הזה?',
			'healthScore.note' => 'ציון זה הוא הערכה של ה-AI המבוססת על הרכיבים שזוהו ועל צפיפות תזונתית. תמיד כדאי להתייעץ עם איש מקצוע לקבלת ייעוץ תזונתי.',
			'healthScore.unhealthy' => 'לא בריא',
			'healthScore.healthy' => 'בריא',
			'healthScore.neutral' => 'ניטרלי',
			'editProfile.title' => 'עריכת פרופיל',
			'editProfile.sections.personalInformation' => 'פרטים אישיים',
			'editProfile.sections.physicalMeasurements' => 'מדדים גופניים',
			'editProfile.sections.goalsAndActivity' => 'מטרות ופעילות',
			'editProfile.gender' => 'מגדר',
			'editProfile.dateOfBirth' => 'תאריך לידה',
			'editProfile.height' => 'גובה',
			'editProfile.weight' => 'משקל',
			'editProfile.weightGoal' => 'מטרת משקל',
			'editProfile.activityLevel' => 'רמת פעילות',
			'editProfile.metric' => 'מטרי',
			'editProfile.imperial' => 'אימפריאלי',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'מטרי (ס"מ)',
			'editProfile.imperialFtIn' => 'אימפריאלי (ft/in)',
			'editProfile.metricKg' => 'מטרי (ק"ג)',
			'editProfile.imperialLbs' => 'אימפריאלי (lbs)',
			'editProfile.genders.male' => 'זכר',
			'editProfile.genders.female' => 'נקבה',
			'editProfile.genders.other' => 'אחר',
			'editProfile.weightGoals.loseWeight.name' => 'ירידה במשקל',
			'editProfile.weightGoals.loseWeight.description' => 'יצירת גירעון קלורי לירידה במשקל',
			'editProfile.weightGoals.maintainWeight.name' => 'שמירה על משקל',
			'editProfile.weightGoals.maintainWeight.description' => 'שמירה על המשקל הנוכחי שלך',
			'editProfile.weightGoals.gainWeight.name' => 'עלייה במשקל',
			'editProfile.weightGoals.gainWeight.description' => 'יצירת עודף קלורי לעלייה במשקל',
			'editProfile.activityLevels.sedentary.name' => 'יושבני',
			'editProfile.activityLevels.sedentary.description' => 'מעט או ללא פעילות גופנית',
			'editProfile.activityLevels.lightlyActive.name' => 'פעילות קלה',
			'editProfile.activityLevels.lightlyActive.description' => 'פעילות קלה 1–3 ימים בשבוע',
			'editProfile.activityLevels.moderatelyActive.name' => 'פעילות מתונה',
			'editProfile.activityLevels.moderatelyActive.description' => 'פעילות מתונה 3–5 ימים בשבוע',
			'editProfile.activityLevels.veryActive.name' => 'פעילות גבוהה',
			'editProfile.activityLevels.veryActive.description' => 'אימונים קשים 6–7 ימים בשבוע',
			'editProfile.activityLevels.extremelyActive.name' => 'פעילות קיצונית',
			'editProfile.activityLevels.extremelyActive.description' => 'מאמץ קשה מאוד, עבודה פיזית',
			'settings.title' => 'הגדרות',
			'settings.sections.profile' => 'פרופיל',
			'settings.sections.localization' => 'התאמה לשפה ואזור',
			'settings.sections.notifications' => 'התראות',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.supportAndLegal' => 'תמיכה וחוקיות',
			'settings.sections.about' => 'אודות',
			'settings.sections.dangerZone' => 'אזור מסוכן',
			'settings.sections.developer' => 'מפתח',
			'settings.editProfile.title' => 'עריכת פרופיל',
			'settings.editProfile.subtitle' => 'עדכון המידע האישי שלך',
			'settings.language.title' => 'שפה',
			'settings.language.subtitle' => 'בחר/י את השפה המועדפת',
			'settings.language.searchHint' => 'חפש/י שפות...',
			'settings.language.noResults' => 'לא נמצאו תוצאות',
			'settings.heightUnit.title' => 'יחידת גובה',
			'settings.weightUnit.title' => 'יחידת משקל',
			'settings.mealReminders.title' => 'תזכורות לארוחות',
			'settings.mealReminders.subtitle' => 'הישאר/י על המסלול עם התראות בזמן',
			'settings.theme.title' => 'ערכת נושא',
			'settings.theme.light' => 'בהיר',
			'settings.theme.dark' => 'כהה',
			'settings.theme.system' => 'מערכת',
			'settings.sendFeedback.title' => 'שליחת משוב',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'עזר/י לנו לשפר את ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'משוב על ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'אנא ספק/י את המשוב שלך כאן:',
			'settings.sendFeedback.appVersion' => 'גרסת אפליקציה',
			'settings.sendFeedback.device' => 'מכשיר',
			'settings.sendFeedback.osVersion' => 'גרסת מערכת הפעלה',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'ייצוא היסטוריית ארוחות',
			'settings.exportMealHistory.subtitle' => 'שיתוף קובץ CSV של הארוחות שתיעדת',
			'settings.exportMealHistory.shareText' => 'ייצוא היסטוריית הארוחות שלך מ-Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'לא ניתן היה לייצא את היסטוריית הארוחות: ${error}',
			'settings.clearAllData.title' => 'מחיקת כל הנתונים',
			'settings.clearAllData.subtitle' => 'מחיקה בלתי הפיכה של כל המידע שלך',
			'settings.clearAllData.confirmationTitle' => 'למחוק את כל הנתונים?',
			'settings.clearAllData.confirmationMessage' => 'לא ניתן לבטל פעולה זו. כל הארוחות, המועדפים והגדרות הפרופיל יימחקו לצמיתות.',
			'settings.clearAllData.cancel' => 'בטל',
			'settings.clearAllData.clearEverything' => 'מחק הכל',
			'settings.debugOptions.title' => 'אפשרויות ניפוי שגיאות',
			'settings.developerModeEnabled' => 'מצב מפתח הופעל!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'צפייה וניהול הרשאות',
			'settings.healthConnect.unavailable.title' => 'Health Connect אינו זמין',
			'settings.healthConnect.unavailable.description' => 'Health Connect אינו זמין במכשיר זה. אנא התקן/י את Health Connect מחנות Play (Android 9+) או עדכן/י ל-Android 14+.',
			'settings.healthConnect.permissions.title' => 'הרשאות',
			'settings.healthConnect.permissions.description' => 'ההרשאות הבאות נדרשות כדי לספק אינטגרציה עם Health Connect:',
			'settings.healthConnect.permissions.granted' => 'מאושרת',
			'settings.healthConnect.permissions.notGranted' => 'לא מאושרת',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'קריאת סך הקלוריות שנשרפו',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'מאפשר לאפליקציה לקרוא את סך הקלוריות שנשרפו מ-Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'הרשאה זו משמשת להצגת שריפת הקלוריות היומית שלך באפליקציה, כדי לעזור לך להבין את הוצאה האנרגטית הכוללת לאורך היום.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'קריאת נתוני תזונה',
			'settings.healthConnect.permissions.nutritionRead.description' => 'מאפשר לאפליקציה לקרוא נתוני תזונה מ-Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'הרשאה זו מאפשרת לאפליקציה לקרוא מידע תזונתי שעשוי להיות מתועד באפליקציות אחרות המחוברות ל-Health Connect, כדי לספק תמונה מקיפה של התזונה שלך.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'כתיבת נתוני תזונה',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'מאפשר לאפליקציה לכתוב נתוני תזונה ל-Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'הרשאה זו מאפשרת לאפליקציה לסנכרן את הארוחות שתיעדת ל-Health Connect, כך שנתוני התזונה שלך יהיו זמינים גם באפליקציות בריאות וכושר אחרות שבהן את/ה משתמש/ת.',
			'settings.healthConnect.managePermissions' => 'ניהול הרשאות',
			'settings.healthConnect.openSettings' => 'פתח/י את הגדרות Health Connect',
			'settings.healthConnect.requestPermissions' => 'בקש/י הרשאות',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'בקשת ההרשאות בוטלה או נכשלה. נסה/י שוב או אשר/י הרשאות ידנית בהגדרות Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'אין אפשרות לבקש הרשאות. נסה/י שוב או אשר/י הרשאות ידנית בהגדרות Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'מבקשים הרשאות...',
			'settings.about.title' => 'אודות',
			'settings.about.tagline' => 'מודעות לקלוריות מהירה, חינמית ומבוססת פרטיות',
			'settings.about.ourStory.title' => 'הסיפור שלנו',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} נולדה מתסכול פשוט: רוב אפליקציות ספירת הקלוריות מורכבות מדי, דורשות הזנה ידנית מתמדת, גובות דמי מנוי גבוהים או פוגעות בפרטיות.\n\nכמפתח יחיד, רציתי לבנות משהו פשוט והוגן יותר — אפליקציה שמשתמשת ב-AI כדי להפחית מאמץ, נשארת מהירה וחינמית, ומתייחסת לנתוני הבריאות שלך בכבוד.\n\n${appLabel} היא האפליקציה שרציתי שתתקיים: בלי חשבונות, בלי מעקב, בלי פרסומות — רק תובנות ברורות ומעשיות ומטרות הבריאות שלך.',
			'settings.about.privacy.title' => 'הפרטיות שלך חשובה',
			'settings.about.privacy.description' => 'הפרטיות אינה מחשבה מאוחרת — היא עקרון תכנוני. כך זה נראה בפועל:',
			'settings.about.privacy.noAccounts' => 'אין צורך בחשבונות\nהשתמש/י באפליקציה מיד. בלי הרשמה, בלי זיהוי.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'ללא מעקב התנהגותי\n${appLabel} אינה עוקבת אחרי הפעילות שלך, אינה בונה פרופילי שימוש ואינה עוקבת אחריך באפליקציות או אתרים.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'ללא פרסומות כברירת מחדל\n${appLabel} בנויה לפעול ללא פרסומות או מוניטיזציה מבוססת נתונים.',
			'settings.about.privacy.noDataSelling' => 'ללא מכירת נתונים\nנתוני הבריאות שלך לעולם לא נמכרים או משותפים לצדדים שלישיים.',
			'settings.about.privacy.localStorage' => 'אחסון מקומי תחילה\nהנתונים שלך נשארים במכשיר שלך.',
			'settings.about.privacy.privacyPolicy' => 'מדיניות פרטיות',
			'settings.about.developer.title' => 'פותחה על ידי מפתח יחיד',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} מפותחת ומתוחזקת על ידי מפתח יחיד, המתמקד ביצירת תוכנת בריאות שקטה ומכבדת פרטיות.\n\nמשוב נקרא אישית ותורם לעיצוב כיוון האפליקציה.',
			'settings.about.developer.website' => 'אתר',
			'settings.about.developer.email' => 'דוא"ל',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'נהנ/ית מ-${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'המשוב שלך עוזר להפוך את ${appLabel} לטובה יותר עבור כולם.',
			'settings.about.feedback.rateApp' => 'דרג/י בחנות Play',
			'settings.about.feedback.sendFeedback' => 'שליחת משוב',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'הישאר/י על המסלול עם תזכורות',
			'reminders.description' => 'קבל/י תזכורות עדינות לתעד את הארוחות ולהתמיד ביעדי התזונה שלך',
			'reminders.notificationsEnabled' => 'התראות מופעלות',
			'reminders.notificationsDisabled' => 'התראות כבויות',
			'reminders.enabledSubtitle' => 'תקבל/י תזכורות לארוחות',
			'reminders.disabledSubtitle' => 'אפשר/י התראות כדי לקבל תזכורות לארוחות',
			'reminders.mealReminders' => 'תזכורות לארוחות',
			'reminders.breakfast' => 'ארוחת בוקר',
			'reminders.lunch' => 'ארוחת צהריים',
			'reminders.dinner' => 'ארוחת ערב',
			'reminders.snack' => 'חטיף',
			'reminders.unknown' => 'לא ידוע',
			'reminders.change' => 'שנה/י',
			'reminders.enableNotifications' => 'אפשר/י התראות',
			'reminders.skipForNow' => 'דלג/י לעת עתה',
			'reminders.saveChanges' => 'שמור/י שינויים',
			'reminders.enabledSuccessfully' => 'התראות הופעלו בהצלחה!',
			'reminders.permissionDenied' => 'הרשאת התראות נדחתה',
			'reminders.errorEnabling' => ({required Object error}) => 'שגיאה בהפעלת התראות: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'שגיאה בהשלמת ההגדרה: ${error}',
			'notifications.breakfast.title' => 'זמן לארוחת בוקר! 🍳',
			'notifications.breakfast.body' => 'אל תשכח/י לתעד את ארוחת הבוקר',
			'notifications.lunch.title' => 'זמן לארוחת צהריים! 🥗',
			'notifications.lunch.body' => 'זה הזמן לתעד את ארוחת הצהריים',
			'notifications.dinner.title' => 'זמן לארוחת ערב! 🍽️',
			'notifications.dinner.body' => 'אל תשכח/י לתעד את ארוחת הערב',
			'notifications.snack.title' => 'זמן לחטיף! 🍎',
			'notifications.snack.body' => 'זה הזמן לחטיף בריא',
			'notifications.test.title' => 'התראת בדיקה',
			'login.title' => 'התחברות',
			'login.signInWithGoogle' => 'התחבר/י עם Google',
			'login.signInFailed' => 'ההתחברות עם Google נכשלה או בוטלה.',
			'disclaimer.pleaseNote' => 'לתשומת לבך',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} מספקת מידע תזונתי משוער. הדיוק תלוי בקלט שלך ובשונות בין מזונות. השתמש/י בכך כהנחיה, לא כמקור מוחלט. תמיד התייעצ/י עם איש מקצוע לייעוץ תזונתי אישי.',
			'disclaimer.snap.portionSize.title' => 'גודל מנה',
			'disclaimer.snap.portionSize.description' => 'הדיוק של ההערכות תלוי מאוד בהערכתך הנכונה של גודל המנה.',
			'disclaimer.snap.preparationMethods.title' => 'שיטות הכנה',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'שיטות בישול עשויות להשפיע באופן משמעותי על הערך התזונתי. ההערכות של ${appLabel} אינן תמיד לוקחות בחשבון את כל השינויים הללו.',
			'disclaimer.snap.ingredients.title' => 'רכיבים',
			'disclaimer.snap.ingredients.description' => 'מנות מורכבות עם רכיבים רבים ונסתרים עשויות להוביל להערכות פחות מדויקות.',
			'disclaimer.snap.databaseLimitations.title' => 'מגבלות מאגר המידע',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'מאגר המזון של ${appLabel} רחב, אך ייתכן שאינו כולל כל פריט מזון או וריאציה.',
			'disclaimer.weightEstimate.title' => 'אודות הערכת משקל',
			'disclaimer.weightEstimate.description' => 'השינוי החזוי במשקל הוא הערכה תיאורטית המבוססת על מודל פשוט של קלוריות נכנסות מול קלוריות נשרפות. זה מיועד כהנחיה למוטיבציה בלבד, ולא כניבוי למשקל בפועל.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'דיוק הקלוריות',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'ההערכה מדויקת רק כפי דיוק המעקב אחרי צריכת ושריפת הקלוריות שלך. תיעוד לא מדויק יוביל להערכה לא מדויקת.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'גורמים ביולוגיים',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'ירידה/עלייה בפועל במשקל מושפעת מחילוף חומרים, הורמונים, שינה, סטרס, הידרציה ועוד גורמים אישיים ש-${appLabel} אינה יכולה למדוד.',
			'disclaimer.weightEstimate.waterWeight.title' => 'משקל מים ותנודות',
			'disclaimer.weightEstimate.waterWeight.description' => 'משקל יומי תקין יכול להשתנות משמעותית עקב אגירת נוזלים, עיכול ותזמון. ההערכה אינה מתחשבת בשינויים היומיים הללו.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'הנחיה מקצועית',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'אל תשתמש/י בהערכה זו לקבלת החלטות רפואיות. תמיד התייעצ/י עם איש מקצוע רפואי או דיאטנ/ית קליני/ת לניהול משקל מותאם אישית.',
			'disclaimer.healthMetrics.description' => 'מדדים אלה עוזרים לך להבין את צרכי האנרגיה של הגוף ולהנחות את יעדי התזונה שלך.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'קצב חילוף החומרים הבסיסי (BMR) הוא מספר הקלוריות שהגוף שורף במנוחה כדי לקיים תפקודים בסיסיים כמו נשימה וזרימת דם. BMR תלוי בגיל, מגדר, גובה ומשקל. BMR גבוה יותר משמעו שהגוף שורף יותר קלוריות במנוחה, לעיתים בשל מסת שריר גבוהה יותר, גיל צעיר יותר, או היותך זכר. BMR נמוך יותר מעיד לרוב על מסת שריר נמוכה יותר, גיל מבוגר יותר, או היותך נקבה.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'הוצאה אנרגטית יומית כוללת (TDEE) היא סך הקלוריות שאת/ה שורפ/ת ביום, כולל ה-BMR שלך בתוספת קלוריות מפעילות גופנית ותנועה יומית. TDEE תלוי ב-BMR וברמת הפעילות שלך. TDEE גבוה יותר משמעו שאת/ה שורפ/ת יותר קלוריות בסך הכול, בדרך כלל עקב פעילות גבוהה יותר או BMR גבוה יותר. TDEE נמוך יותר מצביע על פעילות יומית מועטה יותר או BMR נמוך.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'יעד יומי',
			'disclaimer.healthMetrics.dailyGoal.description' => 'היעד היומי הוא צריכת הקלוריות היומית המומלצת שלך בהתבסס על ה-TDEE ומטרת המשקל. לירידה במשקל, צורכים פחות קלוריות מה-TDEE. לשמירה על משקל, מתאימים ל-TDEE. לעלייה במשקל, צורכים יותר קלוריות מה-TDEE. זה עוזר לך להשיג שינוי משקל בקצב בריא.',
			'disclaimer.calorieExpenditure.title' => 'הערכת הוצאת קלוריות',
			'disclaimer.calorieExpenditure.description' => 'כאשר נתוני Health Connect אינם זמינים, אנו מעריכים את הקלוריות שנשרפו היום באמצעות קצב חילוף החומרים הבסיסי (BMR) ורמת הפעילות (TDEE), מותאמים לחלק היום שעבר.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'כיצד מחושבת ההערכה',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'אנחנו מחשבים את ה-TDEE שלך (על בסיס הפרופיל) ומכפילים אותו בשבריר היום שעבר (שעות + דקות) / 24 כדי להעריך את הקלוריות שנשרפו עד כה.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'הנחיה מקצועית',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'אל תשתמש/י בהערכה זו לקבלת החלטות רפואיות. תמיד התייעצ/י עם איש מקצוע רפואי או דיאטנ/ית קליני/ת להמלצות מותאמות אישית.',
			'common.close' => 'סגור',
			'common.kContinue' => 'המשך',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'נהנ/ית מ-${appLabel}?',
			'feedbackRating.yes' => 'כן, אני נהנ/ית',
			'feedbackRating.no' => 'לא ממש',
			'feedbackRating.rateStepHeading' => 'דרג/י בחנות Play',
			'feedbackRating.emailStepHeading' => 'שליחת משוב בדוא"ל',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'דירוג קצר עוזר לאחרים למצוא את ${appLabel} ושומר על המשך הפיתוח. תקדיש/י רגע להשאיר אחד?',
			'feedbackRating.shareFeedbackViaEmail' => 'המשוב שלך מעצב את הצעד הבא — אנחנו קוראים כל הודעה. לשתף מחשבות בדוא"ל?',
			'feedbackRating.rateCta' => 'דרג/י בחנות Play',
			'feedbackRating.maybeLater' => 'אולי אחר כך',
			'feedbackRating.sendFeedback' => 'שלח/י משוב',
			'feedbackRating.noThanks' => 'לא תודה',
			'feedbackRating.aboutUsDescription' => 'נבנה באהבה על ידי צוות קטן. אנחנו מתמקדים בפרטיות, פשטות ובבניית הרגלי אכילה טובים יותר.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'סקרנים מי עומד מאחורי ${appLabel}? ראו ',
			'feedbackRating.aboutUsLinkLabel' => 'אודותינו',
			'feedbackRating.thankYouMessage' => 'תודה! נשאל שוב בפעם אחרת.',
			'health.syncFailed' => 'לא ניתן היה לסנכרן ל-Health Connect',
			'health.mealSynced' => 'הארוחה סונכרנה עם Health Connect',
			_ => null,
		};
	}
}
