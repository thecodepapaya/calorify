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
	@override String appLabel({required Object env}) => 'קלוריפיי${env}';
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
	@override late final _TranslationsErrorsHe errors = _TranslationsErrorsHe._(_root);
	@override late final _TranslationsDebugHe debug = _TranslationsDebugHe._(_root);
	@override late final _TranslationsHealthHe health = _TranslationsHealthHe._(_root);
}

// Path: onboarding
class _TranslationsOnboardingHe implements TranslationsOnboardingEn {
	_TranslationsOnboardingHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'ברוך הבא ל${appLabel}';
	@override String get subtitle => 'בן זוגך האישי לתזונה המונע על ידי בינה מלאכותית';
	@override String get getStarted => 'בוא נתחיל';
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
	@override String get dashboard => 'לוח בקרה';
	@override String get history => 'היסטוריה';
}

// Path: home
class _TranslationsHomeHe implements TranslationsHomeEn {
	_TranslationsHomeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
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
	@override String get noMeals => 'אין ארוחות מוקלטות';
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
	@override String get mealNameHint => 'למשל: ביצים מקושקשות עם טוסט';
	@override String get mealQuantity => 'כמות הארוחה';
	@override String get mealQuantityHint => 'למשל, 1 קערה, 2 פרוסות';
	@override String get timeOfMeal => 'שעת הארוחה';
	@override String get timeOfMealHint => 'בחר את השעה שבה אכלת את הארוחה';
	@override String get mealType => 'סוג הארוחה';
	@override late final _TranslationsMealNutritionHe nutrition = _TranslationsMealNutritionHe._(_root);
	@override late final _TranslationsMealDeleteConfirmationHe deleteConfirmation = _TranslationsMealDeleteConfirmationHe._(_root);
	@override String get addedToLog => 'הארוחה נוספה לרשומתך!';
	@override String couldNotAdd({required Object error}) => 'לא ניתן להוסיף ארוחה: ${error}';
	@override String get savedSuccessfully => 'הארוחה נוספה בהצלחה!';
	@override String get updatedSuccessfully => 'הארוחה עודכנה בהצלחה!';
	@override String errorSaving({required Object error}) => 'שגיאה בשמירת הארוחה: ${error}';
	@override String get removedFromFavorites => 'הוסר מהאהובים!';
	@override String get savedAsFavorite => 'הארוחה נשמרה כאהובה!';
	@override String couldNotUpdateFavorite({required Object error}) => 'לא ניתן לעדכן אהוב: ${error}';
	@override String failedToProcess({required Object error}) => 'נכשל בעיבוד: ${error}';
	@override String failedToProcessImage({required Object error}) => 'נכשל בעיבוד התמונה: ${error}';
	@override String errorCompressingImage({required Object error}) => 'שגיאה בצמצום התמונה: ${error}';
	@override String get failedToSave => 'נכשל בשמירת הנתונים. אנא נסה שוב.';
	@override String get skip => 'דלג';
	@override late final _TranslationsMealVariationHe variation = _TranslationsMealVariationHe._(_root);
}

// Path: favorites
class _TranslationsFavoritesHe implements TranslationsFavoritesEn {
	_TranslationsFavoritesHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אהובים';
	@override String get empty => 'אין ארוחות אהובות עדיין.';
}

// Path: profile
class _TranslationsProfileHe implements TranslationsProfileEn {
	_TranslationsProfileHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'פרופיל';
	@override String get noProfileData => 'לא נמצאו נתוני פרופיל';
	@override String get yourProfile => 'הפרופיל שלך';
	@override String get viewAndManage => 'צפה ונהל את המידע הבריאותי שלך';
	@override late final _TranslationsProfileSectionsHe sections = _TranslationsProfileSectionsHe._(_root);
	@override String get gender => 'מגדר';
	@override String get height => 'גובה';
	@override String get weight => 'משקל';
	@override String get age => 'גיל';
	@override String get weightGoal => 'מטרת משקל';
	@override String get targetWeight => 'משקל יעד';
	@override String get activityLevel => 'רמת פעילות';
	@override String get healthMetrics => 'מדדי בריאות';
	@override String get notSet => 'לא מוגדר';
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
	@override String get whyThisScore => 'למה ציון זה?';
	@override String get note => 'הציון הזה הוא הערכה על סמך המרכיבים המזוהים ואת צפיפות התזונה. תמיד התייעץ עם מקצוען לגבי תזונה.';
	@override String get unhealthy => 'לא בריא';
	@override String get healthy => 'בריא';
	@override String get neutral => 'ניטרלי';
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
	@override String get unitLbs => 'ליב\'';
	@override String get metricCm => 'מטרי (ס"מ)';
	@override String get imperialFtIn => 'אימפריאלי (רגל/אינצ\'ס)';
	@override String get metricKg => 'מטרי (ק"ג)';
	@override String get imperialLbs => 'אימפריאלי (ליברות)';
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
	@override String get title => 'שמור על הקצב עם תזכורות';
	@override String get description => 'קבל תזכורות עדינות לרשום את הארוחות שלך ולשמור על עקביות עם מטרות התזונה שלך';
	@override String get notificationsEnabled => 'התראות הופעלו';
	@override String get notificationsDisabled => 'התראות הופסקו';
	@override String get enabledSubtitle => 'תקבל תזכורות לארוחות';
	@override String get disabledSubtitle => 'אפשר התראות כדי לקבל תזכורות לארוחות';
	@override String get mealReminders => 'תזכורות לארוחות';
	@override String get breakfast => 'ארוחת בוקר';
	@override String get lunch => 'ארוחת צהריים';
	@override String get dinner => 'ארוחת ערב';
	@override String get snack => 'נשנוש';
	@override String get unknown => 'לא ידוע';
	@override String get change => 'שנה';
	@override String get enableNotifications => 'אפשר התראות';
	@override String get skipForNow => 'דלג לעכשיו';
	@override String get saveChanges => 'שמור שינויים';
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
	@override String get signInWithGoogle => 'התחבר עם גוגל';
	@override String get signInFailed => 'ההתחברות עם גוגל נכשלה או בוטלה.';
}

// Path: disclaimer
class _TranslationsDisclaimerHe implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'אנא שים לב';
	@override late final _TranslationsDisclaimerSnapHe snap = _TranslationsDisclaimerSnapHe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateHe weightEstimate = _TranslationsDisclaimerWeightEstimateHe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsHe healthMetrics = _TranslationsDisclaimerHealthMetricsHe._(_root);
}

// Path: common
class _TranslationsCommonHe implements TranslationsCommonEn {
	_TranslationsCommonHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get close => 'סגור';
	@override String get kContinue => 'להמשיך';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingHe implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'נהנים מהשימוש ב${appLabel}?';
	@override String get yes => 'כן, אני נהנה/נהנית';
	@override String get no => 'לא ממש';
	@override String soloDevMessage({required Object appLabel}) => 'דירוג קצר עוזר לאחרים למצוא את ${appLabel} ומאפשר לנו להמשיך בפיתוח. האם ברצונך להקדיש רגע ולהשאיר דירוג?';
	@override String get shareFeedbackViaEmail => 'המשוב שלך מעצב את הצעדים הבאים — אנחנו קוראים כל הודעה. האם ברצונך לשתף את מחשבותיך בדוא"ל?';
	@override String get rateCta => 'דרגו אותנו ב-Google Play';
	@override String get maybeLater => 'אולי אחר כך';
	@override String get sendFeedback => 'שלח משוב';
	@override String get noThanks => 'לא תודה';
	@override String get aboutUsDescription => 'נוצר בקפידה על ידי צוות קטן. אנו שמים דגש על פרטיות, על פשטות, ועל סיוע לך בפיתוח הרגלי אכילה בריאים יותר.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'סקרנים מי עומד מאחורי ${appLabel}? ראה ';
	@override String get aboutUsLinkLabel => 'עלינו';
	@override String get thankYouMessage => 'תודה! נשאל שוב בהזדמנות אחרת.';
}

// Path: errors
class _TranslationsErrorsHe implements TranslationsErrorsEn {
	_TranslationsErrorsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'שגיאה בהטענת נתוני פרופיל';
	@override String get somethingWentWrong => 'משהו השתבש.';
}

// Path: debug
class _TranslationsDebugHe implements TranslationsDebugEn {
	_TranslationsDebugHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אפשרויות דיבוג';
	@override String get searchHint => 'אפשרויות חיפוש...';
	@override late final _TranslationsDebugSectionsHe sections = _TranslationsDebugSectionsHe._(_root);
	@override String get showActiveNotifications => 'הצג התראות פעילות';
	@override String get scheduleTestNotification => 'תזמן התראה ניסי (10ש)';
	@override String get triggerBreakfastNotification => 'הפעל התראת ארוחת בוקר';
	@override String get cancelAllNotifications => 'בטל את כל ההתראות';
	@override String get activeNotifications => 'התראות פעילות';
	@override String get noTitle => 'אין כותרת';
	@override String get noBody => 'אין תוכן';
	@override String get fetchTodaysSteps => 'שחזר את צעדי היום';
	@override String get fetchTodaysCalories => 'שחזר את קלוריות היום';
	@override String get fetchLatestWeight => 'שחזר את המשקל הרלוונטי ביותר';
	@override String get fetchLatestHeight => 'שחזר את הגובה הרלוונטי ביותר';
	@override String get writeTestWeight => 'כתוב משקל ניסי (70ק"ג)';
	@override String get writeTestHeight => 'כתוב גובה ניסי (175ס"מ)';
	@override String get syncLast7Days => 'סנכרן את 7 הימים האחרונים';
	@override String get sync7DaysTitle => 'סנכרון של 7 ימים';
	@override String get checkCurrentLocale => 'בדוק את המיקום הנוכחי';
	@override String get currentLocale => 'מיקום נוכחי';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'שפה: ${languageCode}\nמדינה: ${countryCode}\nמערכת יחידות: ${unitSystem}';
	@override String get latestWeight => 'המשקל האחרון';
	@override String get latestHeight => 'הגובה האחרון';
	@override String get todaysCalories => 'קלוריות להיום';
	@override String totalCaloriesBurned({required Object calories}) => 'סה"כ קלוריות שנשרפו: ${calories}';
	@override String syncSuccess({required Object count}) => 'התקבלו בהצלחה ${count} נתונים לנוגעים לצעדים, קלוריות ומשקל במהלך 7 הימים האחרונים.';
	@override String get noWeightData => 'לא נמצאה נתוני משקל במהלך 30 הימים האחרונים.';
	@override String get noHeightData => 'לא נמצאה נתוני גובה במהלך השנה האחרונה.';
	@override String get noCalorieData => 'לא נמצאה נתוני קלוריות להיום.';
	@override String get weightWritten => 'נכתב בהצלחה משקל ניסי (70ק"ג).';
	@override String get weightWriteFailed => 'נכשל לכתוב משקל ניסי.';
	@override String get heightWritten => 'נכתב בהצלחה גובה ניסי (175ס"מ).';
	@override String get heightWriteFailed => 'נכשל לכתוב גובה ניסי.';
	@override String get noNotifications => 'אין התראות פעילות.';
	@override String get testNotificationScheduled => 'התראת ניסי מתוזמנת ל-10 שניות מהיום.';
	@override String get testNotificationBody => 'זוהי התראת ניסי מתוזמנת ל-10 שניות מהיום.';
	@override String get breakfastNotificationTriggered => 'הופעלה התראת ארוחת בוקר.';
	@override String get allNotificationsCancelled => 'כל ההתראות בוטלו.';
	@override String get fetchingData => 'שחזור נתונים עבור 7 הימים האחרונים...';
	@override String id({required Object id}) => 'מזהה: ${id}';
	@override String get showFeedbackRatingSheet => 'הצג טופס משוב/דירוג';
	@override String get clearUserPreferences => 'נקה העדפות משתמש';
	@override String get clearUserPreferencesConfirmationTitle => 'למחוק את העדפות המשתמש?';
	@override String get clearUserPreferencesConfirmationMessage => 'הנושא, השפה והעדפות המשוב יאופסו. הארוחות והפרופיל לא יושפעו.';
	@override String get clearUserProfile => 'נקה פרופיל משתמש';
	@override String get clearUserProfileConfirmationTitle => 'למחוק את פרופיל המשתמש?';
	@override String get clearUserProfileConfirmationMessage => 'נתוני הפרופיל שלך (מטרת יום, גובה, משקל וכו\') יימחקו. הארוחות וההעדפות לא יושפעו.';
	@override String get clear => 'נקה';
	@override String get cancel => 'ביטול';
	@override String get checkWatchConnection => 'בדוק חיבור לשעון';
	@override String get sendTestMessage => 'שלח הודעת בדיקה';
	@override String get sendTestMessageSubtitle => 'שלח הודעת בדיקה פשוטה לשעון';
	@override String get sendTestMealData => 'שלח נתוני ארוחה לדוגמה';
	@override String get sendTestMealDataSubtitle => 'שלח נתוני ארוחה לדוגמה לשעון';
	@override String get sendTestCalorieGoal => 'שלח יעד קלוריות לדוגמה';
	@override String get sendTestCalorieGoalSubtitle => 'שלח יעד קלוריות לדוגמה לשעון';
	@override String get viewReceivedMessages => 'הצג הודעות שהתקבלו';
	@override String get viewReceivedMessagesSubtitle => 'הצג הודעות שהתקבלו מהשעון';
	@override String get watchConnected => 'השעון מחובר ✓';
	@override String get device => 'מכשיר';
	@override String get nearby => 'בקרבה';
	@override String get yes => 'כן';
	@override String get no => 'לא';
	@override String get connectedDevices => 'מכשירים מחוברים';
	@override String get deviceInfoUnavailable => '(מידע על המכשיר אינו זמין)';
	@override String get unknownDevice => 'מכשיר לא ידוע';
	@override String get watchNotConnected => 'השעון אינו מחובר ✗';
	@override String get watchNotConnectedHint => 'ודא:\n• שני המכשירים מזווגים\n• אפליקציית השעון פועלת\n• שתי האפליקציות במצב דיבאג/סטייג\'ינג';
	@override String get watchConnection => 'חיבור לשעון';
	@override String errorCheckingConnection({required Object error}) => 'שגיאה בבדיקת החיבור: ${error}';
	@override String get helloFromPhone => 'שלום מהטלפון!';
	@override String get testMessageSentSuccess => 'הודעת בדיקה נשלחה בהצלחה!';
	@override String get testMessageFailed => 'שליחת הודעת בדיקה נכשלה. בדוק את החיבור לשעון.';
	@override String errorSendingMessage({required Object error}) => 'שגיאה בשליחת ההודעה: ${error}';
	@override String get testMeal => 'ארוחת בדיקה';
	@override String get testMealDataSentSuccess => 'נתוני הארוחה נשלחו בהצלחה!';
	@override String get failedToSendMealData => 'שליחת נתוני הארוחה נכשלה. בדוק את החיבור לשעון.';
	@override String errorSendingMealData({required Object error}) => 'שגיאה בשליחת נתוני הארוחה: ${error}';
	@override String get testCalorieGoalSentSuccess => 'יעד הקלוריות נשלח בהצלחה!';
	@override String get failedToSendCalorieGoal => 'שליחת יעד הקלוריות נכשלה. בדוק את החיבור לשעון.';
	@override String errorSendingCalorieGoal({required Object error}) => 'שגיאה בשליחת יעד הקלוריות: ${error}';
	@override String get testAnalyzeImage => 'בדיקת ניתוח תמונה';
	@override String get testAnalyzeImageSubtitle => 'העלה תמונת בדיקה מובנית';
	@override String get testDetectImage => 'בדיקת זיהוי תמונה';
	@override String get testDetectImageSubtitle => 'זיהוי ארוחה מתוך כתובת URL של תמונה';
	@override String get detectImageFromGallery => 'זיהוי תמונה מהגלריה';
	@override String get detectImageFromGallerySubtitle => 'בחר תמונה, העלה לאחסון והערך את הקלוריות';
	@override String get testDetectText => 'בדיקת זיהוי טקסט';
	@override String get testDetectTextSubtitle => 'זהה ארוחה מתוך תיאור טקסטואלי';
	@override String get testMealLoggingWithVariations => 'בדיקת רישום ארוחה עם וריאציות';
	@override String get testMealLoggingWithVariationsSubtitle => 'בדוק את זרימת רישום הארוחה המלאה עם וריאציות';
	@override String get mockMealWithVariations => 'ארוחה מדומה עם וריאציות';
	@override String get mockMealWithVariationsSubtitle => 'תצוגה מקדימה של וריאציות + דף טיפים ללא רישום';
	@override String get mockMealName => 'עוף בגריל עם אורז וירקות';
	@override String get mockTip => 'זהו טיפ מדומה לתצוגת ממשק. הארוחה לא נרשמה.';
	@override String get mockMealDescription => 'ארוחת דיבאג מדומה';
	@override String get portionSizeQuestion => 'מה היה גודל המנה?';
	@override String get extraSidesQuestion => 'יש תוספות בצד?';
	@override String get optionSmall => 'קטן';
	@override String get optionMedium => 'בינוני';
	@override String get optionLarge => 'גדול';
	@override String get optionNone => 'ללא';
	@override String get optionSideSalad => 'סלט בצד';
	@override String get optionBreadRoll => 'לחמניה';
	@override String get testingAnalyzeImage => 'בודק API ניתוח תמונה...';
	@override String get testingDetectImage => 'בודק API זיהוי תמונה...';
	@override String get testingDetectText => 'בודק API זיהוי טקסט...';
	@override String get selectingImageFromGallery => 'בוחרים תמונה מהגלריה...';
	@override String get noImageSelected => 'לא נבחרה תמונה';
	@override String get compressingImage => 'מכווץ את התמונה...';
	@override String get uploadingImageAndDetecting => 'מעלה תמונה לאחסון ומזהה את הארוחה...';
	@override String get testingMealLoggingFlow => 'בודק את זרימת רישום הארוחה עם וריאציות...';
	@override String get testUpdateProfile => 'בדיקת עדכון פרופיל';
	@override String get testUpdateProfileSubtitle => 'שלח פרופיל דוגמה לשרת באמצעות POST';
	@override String get testingProfileApi => 'בודק את ה-API של הפרופיל...';
	@override String get profileUpdateSuccess => 'ה-API של הפרופיל הגיב בהצלחה';
	@override String profileUpdateFailed({required Object error}) => 'שגיאה ב-API של הפרופיל: ${error}';
	@override String get noMealIdentifiedInResponse => 'לא זוהתה ארוחה בתשובה';
	@override String get mealIdentified => 'זוהתה ארוחה';
	@override String get confidence => 'רמת ביטחון';
	@override String get tip => 'טיפ';
	@override String get mealName => 'שם הארוחה';
	@override String get calories => 'קלוריות';
	@override String get protein => 'חלבון';
	@override String get carbs => 'פחמימות';
	@override String get fat => 'שומן';
	@override String get noMealInfo => 'אין מידע על הארוחה';
	@override String get na => 'לא זמין';
	@override String get analyzeImageResult => 'תוצאת ניתוח תמונה';
	@override String get detectImageResult => 'תוצאת זיהוי תמונה';
	@override String get detectImageFromGalleryResult => 'תוצאת זיהוי תמונה מהגלריה';
	@override String get detectTextResult => 'תוצאת זיהוי טקסט';
	@override String errorGeneric({required Object error}) => 'שגיאה: ${error}';
	@override String get variationsCount => 'וריאציות';
	@override String get userPreferencesCleared => 'העדפות המשתמש נמחקו';
	@override String get userProfileCleared => 'פרופיל המשתמש נוקה';
	@override String get checkForUpdate => 'בדוק עדכונים';
	@override String get showPatchNumber => 'הצג מספר הפאץ\'';
	@override String get showUpdateAvailable => 'הצג עדכון זמין';
	@override String get updateAvailable => 'עדכון זמין';
	@override String get upToDate => 'מעודכן';
	@override String get shorebirdUnavailable => 'Shorebird אינו זמין בסביבה זו.';
	@override String get patchNumberLabel => 'מספר הפאץ\'';
	@override String get noPatchInstalled => 'אין פאץ\' מותקן';
	@override String get todaysSteps => 'צעדים להיום';
	@override String get stepsLabel => 'צעדים';
	@override String weightLabel({required Object value}) => 'משקל: ${value} ק"ג';
	@override String heightLabel({required Object value}) => 'גובה: ${value} ס"מ';
	@override String get receivedMessagesFromWatch => 'הודעות שהתקבלו מהשעון';
	@override String get noMessagesReceivedYet => 'עדיין לא התקבלו הודעות.\n\nשלח נתוני בדיקה מהשעון כדי לראות הודעות כאן.';
	@override String get messagesCleared => 'הודעות נמחקו';
}

// Path: health
class _TranslationsHealthHe implements TranslationsHealthEn {
	_TranslationsHealthHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'לא ניתן לסנכרן עם Health Connect';
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
	@override String get title => 'מהו המגדר שלך?';
	@override String get description => 'המגדר עוזר לנו לחשב את שיעור חילוף החומרים הבסיסי (BMR) שלך בצורה מדויקת.';
	@override String get next => 'הבא';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightHe implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'כמה גבוה אתה?';
	@override String get description => 'גובהך עוזר לנו לחשב את ה-BMI ואת צרכי האנרגיה שלך בצורה מדויקת.';
	@override String get metric => 'מטרי';
	@override String get imperial => 'אימפריאלי';
	@override String get next => 'הבא';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightHe implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'מהו המשקל הנוכחי שלך?';
	@override String get currentDescription => 'המשקל הנוכחי שלך חיוני להתאמת המטרות היומיות שלך.';
	@override String get targetTitle => 'מהו המשקל היעד שלך?';
	@override String get targetDescription => 'קביעת משקל יעד עוזרת לנו לקבוע את התוכנית ארוכת הטווח שלך.';
	@override String get metric => 'מטרי';
	@override String get imperial => 'אימפריאלי';
	@override String get next => 'הבא';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeHe implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מתי יום ההולדת שלך?';
	@override String get description => 'גילך עוזר לנו לחשב את צרכי הקלוריות שלך בצורה מדויקת.';
	@override String get next => 'הבא';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleHe implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'תת משקל';
	@override String get healthy => 'משקל בריא';
	@override String get overweight => 'עודף משקל';
	@override String get obese => 'השמנה';
	@override late final _TranslationsOnboardingBmiScaleCategoriesHe categories = _TranslationsOnboardingBmiScaleCategoriesHe._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesHe messages = _TranslationsOnboardingBmiScaleMessagesHe._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalHe implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מהי מטרתך?';
	@override String get description => 'בחר את המטרה שמתארת בצורה הטובה ביותר מה אתה רוצה להשיג';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelHe implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'כמה פעיל אתה?';
	@override String get description => 'זה עוזר לנו לחשב את צרכי הקלוריות היומיות שלך בצורה מדויקת יותר';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectHe implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'חבר עם Health Connect';
	@override String get description => 'סנכרן את נתוני הבריאות שלך לקבלת תובנות טובות יותר ומעקב אוטומטי אחרי קלוריות';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingHe automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingHe._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsHe progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsHe._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationHe seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationHe._(_root);
	@override String get connected => 'Health Connect מחובר';
	@override String get notConnected => 'Health Connect לא מחובר';
	@override String get setup => 'הגדר את Health Connect';
	@override String get skipForNow => 'דלג לעכשיו';
	@override String get statusConnected => 'Health Connect מחובר.';
	@override String get statusSuccess => 'Health Connect הוגדר בהצלחה!';
	@override String statusPermissionDenied({required Object appLabel}) => 'גישה נדחתה. אנא אפשר את הרשאות Health Connect בהגדרות הטלפון שלך עבור ${appLabel}.';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalHe implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'קבע את המטרה היומית שלך';
	@override String get titleSet => 'המטרה היומית שלך';
	@override String get description => 'מוכן לצאת לדרך לבריאותך? קבע את יעד הקלוריות היומי שלך למטה כדי להתחיל את ההתקדמות שלך.';
	@override String get descriptionSet => 'המצפן שלך מוגדר! זהו יעד הקלוריות היומי שלך להנחות אותך.';
	@override String get yourGoal => 'המטרה שלך';
	@override String get goal => 'יעד';
	@override String get dailyCalories => 'קלוריות יומיות (קק"ל)';
	@override String get setGoal => 'קבע מטרה';
	@override String get intake => 'צריכה';
	@override String get burned => 'נשרף';
	@override String get weightImpact => 'השפעה על המשקל';
	@override String get estLoss => 'הערכה של ירידה ב-';
	@override String get estGain => 'הערכה של עלייה ב-';
	@override String get kcal => 'קק"ל';
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
	@override String get grams => 'גרמים';
	@override String get chartAccessibilityLabel => 'תרשים מאקרו-תזונה';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressHe implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'חלוקת המקרו להיום';
	@override String get target => 'יעד';
	@override String get current => 'נוכחי';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryHe implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'היסטוריית המקרו של 7 ימים';
	@override String get noHistoryYet => 'אין היסטוריה עדיין';
	@override String get startLogging => 'התחל לרשום ארוחות כדי לראות את מגמות המקרו שלך כאן במהלך 7 הימים';
}

// Path: home.mealLog
class _TranslationsHomeMealLogHe implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ארוחות רשומות';
	@override String get emptyMessage => 'צלם תמונה של הארוחה האחרונה שלך כדי לרשום כאן.';
	@override String get noMealsToday => 'אין ארוחות מוקלטות להיום';
	@override String get seeAllMeals => 'ראה את כל הארוחות';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionHe implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הוסף במהירות עם בינה מלאכותית';
	@override String get description => 'תאר את הארוחה שלך, ותן לבינה המלאכותית לטפל בפרטים.';
	@override String get hint => 'למשל, לארוחת הבוקר אכלתי קערה גדולה של קוואקר עם בננה פרוסה וכף של מי גבינה ...';
	@override String get analyzeMeal => 'נתח את הארוחה';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsHe implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ארוחות אהובות';
	@override String get description => 'הוסף במהירות אחת מהארוחות האהובות עליך.';
	@override String get noFavorites => 'אין ארוחות אהובות עדיין.';
	@override String get addFavoriteHint => 'לחץ על הכוכב בארוחה כדי לסמן אותה כאהובה.';
	@override String get seeAll => 'ראה הכל';
	@override String get add => 'הוסף';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapHe implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'צלם ועקוב אחרי הארוחה שלך';
	@override String get description => 'השתמש במצלמה שלך כדי לצלם תמונה של האוכל שלך לניתוח בינה מלאכותית.';
	@override String get openCamera => 'פתח מצלמה';
	@override String get gallery => 'גלריה';
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
	@override String get title => 'מחק ארוחה';
	@override String get message => 'האם אתה בטוח שברצונך למחוק רשומה זו של הארוחה?';
	@override String get cancel => 'ביטול';
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

// Path: profile.sections
class _TranslationsProfileSectionsHe implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'פרופיל';
	@override String get basicInformation => 'מידע בסיסי';
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
	@override String get dailyGoal => 'מטרה יומית';
	@override String get calPerDay => 'קל ביום';
	@override String get notAvailable => 'לא זמין';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsHe implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'מידע אישי';
	@override String get physicalMeasurements => 'מדידות פיזיות';
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
	@override String get localization => 'התאמה מקומית';
	@override String get notifications => 'התראות';
	@override String get healthConnect => 'חיבור בריאות';
	@override String get supportAndLegal => 'תמיכה וחוקי';
	@override String get about => 'אודות';
	@override String get dangerZone => 'אזור מסוכן';
	@override String get developer => 'מפתחים';
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
	@override String get subtitle => 'בחר את השפה המועדפת עליך';
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
	@override String get title => 'תזכורות לארוחת';
	@override String get subtitle => 'שמור על הקצב עם התראות בזמן';
}

// Path: settings.theme
class _TranslationsSettingsThemeHe implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'נושא';
	@override String get light => 'בהיר';
	@override String get dark => 'חשוך';
	@override String get system => 'מערכת';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackHe implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'שלח משוב';
	@override String subtitle({required Object appLabel}) => 'עזור לנו לשפר את ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} משוב על האפליקציה';
	@override String get emailBodyPrefix => 'אנא ספק את המשוב שלך למטה:';
	@override String get appVersion => 'גרסת אפליקציה';
	@override String get device => 'מכשיר';
	@override String get osVersion => 'גרסת מערכת הפעלה';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataHe implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מחק את כל הנתונים';
	@override String get subtitle => 'מחק לצמיתות את כל המידע שלך';
	@override String get confirmationTitle => 'מחק את כל הנתונים?';
	@override String get confirmationMessage => 'פעולה זאת אינה ניתנת לביטול. כל הארוחות המוקלטות שלך, מועדפים, והגדרות פרופיל יימחקו לצמיתות.';
	@override String get cancel => 'ביטול';
	@override String get clearEverything => 'מחק את הכל';
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
	@override String get title => 'חיבור בריאות';
	@override String get subtitle => 'הצג וניהול הרשאות';
	@override late final _TranslationsSettingsHealthConnectUnavailableHe unavailable = _TranslationsSettingsHealthConnectUnavailableHe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsHe permissions = _TranslationsSettingsHealthConnectPermissionsHe._(_root);
	@override String get managePermissions => 'ניהול הרשאות';
	@override String get openSettings => 'פתח את הגדרות בריאות קונקט';
	@override String get requestPermissions => 'בקש הרשאות';
	@override String get permissionRequestCancelledOrFailed => 'בקשת ההרשאות בוטלה או נכשלה. נסו שוב או העניקו הרשאות ידנית בהגדרות Health Connect.';
	@override String get permissionRequestFailed => 'לא ניתן לבקש הרשאות. נסו שוב או העניקו הרשאות ידנית בהגדרות Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutHe implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אודות';
	@override String get tagline => 'מודעות קלוריות מהירה, חינמית ופוקחת עיניים על פרטיות';
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
	@override String build({required Object buildNumber}) => 'בניית גרסה ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastHe implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן ארוחת בוקר! 🍳';
	@override String get body => 'אל תשכח לרשום את ארוחת הבוקר שלך';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchHe implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן ארוחת צהריים! 🥗';
	@override String get body => 'הגיע הזמן לרשום את ארוחת הצהריים שלך';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerHe implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן ארוחת ערב! 🍽️';
	@override String get body => 'אל תשכח לרשום את ארוחת ערב שלך';
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
	@override String get title => 'התראת ניסיון';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapHe implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} מספק מידע תזונתי משוער. דיוק תלוי בקלט שלך ובשונות המזון. השתמש בזה כמדריך, ולא כמקור סופי. התייעץ עם מקצוען עבור ייעוץ תזונתי מותאם אישית.';
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
	@override String get title => 'על הערכת המשקל';
	@override String get description => 'שינוי המשקל המשוער הוא הערכה תיאורטית המבוססת על מודל הקלוריות הנכנסות מול הקלוריות היוצאות. היא מיועדת למדריך מוטיבציה בלבד, לא ככלי לחזות את המשקל שלך.';
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
	@override String get description => 'מטריקות אלו עוזרות לך להבין את צורכי האנרגיה של הגוף שלך ומנחות את מטרות התזונה שלך.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrHe bmr = _TranslationsDisclaimerHealthMetricsBmrHe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeHe tdee = _TranslationsDisclaimerHealthMetricsTdeeHe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalHe dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalHe._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsHe implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'התראות';
	@override String get healthConnect => 'Health Connect';
	@override String get wearOs => 'Wear OS';
	@override String get foodApiTests => 'בדיקות Food API';
	@override String get profileApiTests => 'בדיקות API של הפרופיל';
	@override String get feedback => 'משוב';
	@override String get dataReset => 'איפוס נתונים';
	@override String get appInfo => 'מידע על האפליקציה';
	@override String get shorebird => 'Shorebird';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionHe implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זיהוי מזון חכם';
	@override String get description => 'צלם תמונה ותן לבינה מלאכותית לזהות את הארוחה שלך';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisHe implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ניתוח בינה מלאכותית';
	@override String get description => 'קבל עובדות תזונה מיידיות מתיאורים שלך';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationHe implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'שילוב בריאות';
	@override String get description => 'חבר את הנתונים שלך עם Health Connect לקבלת תובנות טובות יותר';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesHe implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'תת משקל';
	@override String get healthyWeight => 'משקל בריא';
	@override String get overweight => 'עודף משקל';
	@override String get obese => 'השמנה';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesHe implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'נוכל לעזור לך לבנות תוכנית בריאה להגיע למשקל מאוזן עם ארוחות עשירות בחומרים המזינים.';
	@override String get healthy => 'עבודה מצוינת! אתה בטווח בריא. נעזור לך לשמור על חיוניות ורמות אנרגיה.';
	@override String overweight({required Object appLabel}) => '${appLabel} יפשט את המסע שלך עם מעקב מבוסס בינה מלאכותית כדי לעזור לך להגיע למטרה שלך בנוחות.';
	@override String get obese => 'אנחנו כאן כדי לתמוך בך עם הנחיות מותאמות ואסטרטגיות ברות קיימא למטרות הבריאות שלך.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingHe implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מעקב קלוריות אוטומטי';
	@override String get description => 'עקוב אחרי קלוריות שנשרפו מהאפליקציות שלך בכושר';
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
	@override String get title => 'שילוב חלק';
	@override String get description => 'סנכרן נתונים מאפליקציות הבריאות האהובות עליך';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessHe implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אתה לא לבד';
	@override String get genericMessage => 'מחקרים מראים שמעקב מתמיד הוא המנבא מספר 1 להצלחה ארוכת טווח.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'עבור ${age} שנים ${gender} שמעוניין ב-${goal}, מעקב מתמיד הוא המנבא מספר 1 להצלחה.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} מקל 10 פעמים יותר מאשר לעשות את זה ידנית.';
	@override String get getStartedTitle => 'מוכן להתחיל?';
	@override String get tipPhoto => 'צלם תמונה של הארוחות שלך לניתוח מיידי';
	@override String get tipConsistency => 'נהל יומן באופן קבוע כדי לראות שיפורים משמעותיים';
	@override String get tipProgress => 'עקוב אחר ההתקדמות שלך יומית כדי להישאר במוטיבציה';
	@override String get button => 'בוא נלך';
	@override String get defaultGender => 'אדם';
	@override String get defaultGoal => 'בגרסה בריאה יותר';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileHe implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'פרופיל הבריאות שלך';
	@override String bmiDescription({required Object bmi}) => 'בהתבסס על המדדים שלך, ה-BMI שלך הוא ${bmi}.';
	@override String get finalizeDescription => 'בוא נשלים את הפרופיל שלך כדי להתאים אישית את החוויה שלך.';
	@override String get goalGain => 'לעלות';
	@override String get goalLose => 'להוריד';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'כדי להשיג את המטרה שלך, אתה צריך ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'אתה במשקל היעד שלך! נעזור לך לשמור עליו.';
	@override String get button => 'בוא נלך';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleHe implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'התחלה מצוינת!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'עשית את הצעד הראשון לקראת ${goalText}. מכיוון ש${activityText}, ${appLabel} יתאים את המטרות שלך כדי להתאים לאורח החיים שלך.';
	@override String get personalizedTargets => 'יעדי קלוריות מותאמים אישית';
	@override String get aiMealDetection => 'זיהוי ארוחות המונע על ידי בינה מלאכותית';
	@override String get macroBreakdowns => 'פירוטים מפורטים של מאקרו-נוטריינטים';
	@override String get button => 'בוא נלך';
	@override String get defaultGoal => 'היעדים שלך';
	@override String get defaultActivity => 'פעיל';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightHe implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'לרדת במשקל';
	@override String get description => 'צור חיסור קלורי כדי לרדת במשקל';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightHe implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'לשמור על משקל';
	@override String get description => 'שמור על המשקל הנוכחי שלך';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightHe implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'לעלות במשקל';
	@override String get description => 'צור תוספת קלורית כדי לעלות במשקל';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryHe implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'ישבני';
	@override String get description => 'מעט מאוד פעילות גופנית';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveHe implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעיל מעט';
	@override String get description => 'פעילות גופנית קלה 1-3 ימים בשבוע';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveHe implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעיל עד בינוני';
	@override String get description => 'פעילות גופנית בינונית 3-5 ימים בשבוע';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveHe implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעיל מאוד';
	@override String get description => 'פעילות גופנית קשה 6-7 ימים בשבוע';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveHe implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעיל ביותר';
	@override String get description => 'פעילות גופנית קשה מאוד, עבודה פיזית';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableHe implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect לא זמין';
	@override String get description => 'Health Connect אינו זמין במכשיר זה. נא להתקין את Health Connect מחנות Play ‏(Android 9+) או לעדכן ל-Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsHe implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הרשאות';
	@override String get description => 'ההרשאות הבאות נדרשות כדי לספק אינטגרציה עם חיבור בריאות:';
	@override String get granted => 'ניתן';
	@override String get notGranted => 'לא ניתן';
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
	@override String content({required Object appLabel}) => '${appLabel} נוצר מתוך תסכול פשוט: רוב אפליקציות המעקב אחרי קלוריות הן מסובכות מדי, דורשות קלט ידני מתמשך, גובות תשלומים גבוהים עבור מנוי, או פוגעות בפרטיות.\n\nכמפתח עצמאי, רציתי לבנות משהו פשוט יותר והוגן יותר — אפליקציה שמשתמשת בבינה מלאכותית כדי להפחית מאמץ, נותרת מהירה וחינמית לשימוש, ומתייחסת לנתוני הבריאות שלך בכבוד.\n\n${appLabel} היא האפליקציה שאני מאחל שהיא הייתה קיימת: ללא חשבונות, ללא מעקב, ללא פרסומות — רק תובנות בריאותיות ברורות ומעשיות ומטרות הבריאות שלך.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyHe implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הפרטיות שלך חשובה';
	@override String get description => 'הפרטיות אינה מחשבה מאוחרת — זהו עיקרון עיצובי. הנה מה שזה אומר הלכה למעשה:';
	@override String get noAccounts => 'אין צורך בחשבונות\nשימוש מיידי באפליקציה. אין רישום, אין זהויות.';
	@override String noTracking({required Object appLabel}) => 'אין מעקב התנהגותי\n${appLabel} אינה עוקבת אחרי הפעילות שלך, אינה בונה פרופילי שימוש, ואינה עוקבת אחריך באפליקציות או באתרי אינטרנט.';
	@override String noAds({required Object appLabel}) => 'ללא פרסומות בעיצוב\n${appLabel} נבנתה לפעול ללא פרסומות או מונטיזציה מבוססת נתונים.';
	@override String get noDataSelling => 'אין מכירת נתונים\nנתוני הבריאות שלך לא נמכרים ולא משותפים עם צדדים שלישיים.';
	@override String get localStorage => 'אחסון מקומי קודם\nהנתונים שלך נשמרים במכשיר שלך.';
	@override String get privacyPolicy => 'מדיניות פרטיות';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperHe implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'נבנה על ידי מפתח עצמאי';
	@override String description({required Object appLabel}) => '${appLabel} נבנית ונתמכת על ידי מפתח עצמאי שמתרכז ביצירת תוכנה לפיתוח בריאות בכבוד לפרטיות.\n\nפידבק נקרא באופן אישי ועוזר לעצב את כיוון האפליקציה.';
	@override String get website => 'אתר האינטרנט';
	@override String get email => 'דוא"ל';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackHe implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'נהנים מ-${appLabel}?';
	@override String description({required Object appLabel}) => 'הפידבק שלכם עוזר לשפר את ${appLabel} לכולם.';
	@override String get rateApp => 'דרגו בחנות Play';
	@override String get sendFeedback => 'שלחו פידבק';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeHe implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'גודל המנה';
	@override String get description => 'הדיוק של ההערכות תלוי במידה רבה בהערכה הנכונה שלך של גודל המנה.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsHe implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'שיטות הכנה';
	@override String description({required Object appLabel}) => 'שיטות הבישול יכולות לשנות באופן משמעותי את התוכן התזונתי של המזון. ההערכות של ${appLabel} עשויות שלא לקחת תמיד בחשבון את השונות הללו.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsHe implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מרכיבים';
	@override String get description => 'מנות מורכבות עם מרכיבים מוסתרים רבים עשויות להוביל להערכות פחות מדויקות.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsHe implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מגבלות בסיס נתונים';
	@override String description({required Object appLabel}) => 'המאגר המזון של ${appLabel} רחב מאוד אך עשוי שלא לכלול כל פריט מזון או וריאציה.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyHe implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'דיוק קלורי';
	@override String get description => 'ההערכה הזו מדויקת רק כמו צריכת הקלוריות שעקבת אחריה וההוצאות. רישום לא מדויק יגרום להערכה לא מדויקת.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsHe implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'גורמים ביולוגיים';
	@override String description({required Object appLabel}) => 'ירידה/עלייה במשקל בפועל מושפעת מהמטבוליזם, הורמונים, שינה, לחץ, הידרציה וגורמים אישיים אחרים ש${appLabel} לא יכול למדוד.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightHe implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'משקל מים ותנודות';
	@override String get description => 'משקל יומי רגיל יכול להשתנות באופן משמעותי בגלל החזקת מים, עיכול וזמן. ההערכה לא לוקחת בחשבון את השינויים היומיים הללו.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHe implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הנחיה מקצועית';
	@override String get description => 'אל תשתמש בהערכה זו כדי לקבל החלטות רפואיות. תמיד התייעץ עם איש מקצוע בריאות או דיאטנית רשומה להמלצות ניהול משקל מותאמות אישית.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrHe implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'קצב חילוף החומרים הבסיסי (BMR) הוא מספר הקלוריות שהגוף שלך שורף במנוחה כדי לשמור על פונקציות בסיסיות כמו נשימה וזרימת דם. ה-BMR תלוי בגיל, במגדר, בגובה ובמשקל שלך. BMR גבוה יותר פירושו שהגוף שלך שורף באופן טבעי יותר קלוריות במנוחה, לעיתים קרובות בגלל מסת שריר גבוהה יותר, גיל צעיר יותר או היותך גבר. BMR נמוך יותר בדרך כלל מצביע על פחות מסת שריר, גיל מבוגר יותר או היותך אישה.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeHe implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'ההוצאה הקולורית היומית הכוללת (TDEE) היא סך הקלוריות שאתה שורף ביום, כולל את ה-BMR שלך פלוס קלוריות מפעילות גופנית ותנועה יומית. ה-TDEE תלוי ב-BMR שלך וברמת הפעילות שלך. TDEE גבוה יותר פירושו שאתה שורף יותר קלוריות בסך הכל, בדרך כלל כתוצאה מפעילות רבה יותר או BMR גבוה יותר. TDEE נמוך יותר מצביע על פחות פעילות יומיומית או BMR נמוך יותר.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalHe implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מטרה יומית';
	@override String get description => 'המטרה היומית היא צריכת הקלוריות היומית המומלצת שלך בהתבסס על ה-TDEE שלך ומטרת המשקל שלך. לצורך ירידת משקל, אתה צורך פחות קלוריות מה-TDEE שלך. לשמירה על משקל, אתה תואם את ה-TDEE שלך. לצורך עליית משקל, אתה צורך יותר קלוריות מה-TDEE שלך. זה עוזר לך להגיע לשינוי המשקל הרצוי שלך בקצב בריא.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHe implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'קריאת קלוריות שנשרפות בסך הכל';
	@override String get description => 'מאפשר לאפליקציה לקרוא את סך הקלוריות שנשרפו שלך מחיבור בריאות.';
	@override String get usage => 'הרשאה זו משמשת כדי להציג את שריפת הקלוריות היומית שלך באפליקציה, ועוזרת לך להבין את סך הוצאת האנרגיה שלך במהלך היום.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadHe implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'קריאת נתוני תזונה';
	@override String get description => 'מאפשר לאפליקציה לקרוא נתוני תזונה מחיבור בריאות.';
	@override String get usage => 'הרשאה זו מאפשרת לאפליקציה לקרוא מידע תזונתי שעשוי להיות מעודכן על ידי אפליקציות אחרות מחוברות לחיבור בריאות, ומספקת תמונה מקיפה של התזונה שלך.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteHe implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteHe._(this._root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'כתיבת נתוני תזונה';
	@override String get description => 'מאפשר לאפליקציה לכתוב נתוני תזונה לחיבור בריאות.';
	@override String get usage => 'הרשאה זו מאפשרת לאפליקציה לסנכרן את הארוחות שלך לחיבור בריאות, מה שהופך את נתוני התזונה שלך לזמינים לאפליקציות בריאות וכושר אחרות שבהן אתה משתמש.';
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
			'appLabel' => ({required Object env}) => 'קלוריפיי${env}',
			'onboarding.welcome' => ({required Object appLabel}) => 'ברוך הבא ל${appLabel}',
			'onboarding.subtitle' => 'בן זוגך האישי לתזונה המונע על ידי בינה מלאכותית',
			'onboarding.getStarted' => 'בוא נתחיל',
			'onboarding.features.foodRecognition.title' => 'זיהוי מזון חכם',
			'onboarding.features.foodRecognition.description' => 'צלם תמונה ותן לבינה מלאכותית לזהות את הארוחה שלך',
			'onboarding.features.aiAnalysis.title' => 'ניתוח בינה מלאכותית',
			'onboarding.features.aiAnalysis.description' => 'קבל עובדות תזונה מיידיות מתיאורים שלך',
			'onboarding.features.healthIntegration.title' => 'שילוב בריאות',
			'onboarding.features.healthIntegration.description' => 'חבר את הנתונים שלך עם Health Connect לקבלת תובנות טובות יותר',
			'onboarding.gender.title' => 'מהו המגדר שלך?',
			'onboarding.gender.description' => 'המגדר עוזר לנו לחשב את שיעור חילוף החומרים הבסיסי (BMR) שלך בצורה מדויקת.',
			'onboarding.gender.next' => 'הבא',
			'onboarding.height.title' => 'כמה גבוה אתה?',
			'onboarding.height.description' => 'גובהך עוזר לנו לחשב את ה-BMI ואת צרכי האנרגיה שלך בצורה מדויקת.',
			'onboarding.height.metric' => 'מטרי',
			'onboarding.height.imperial' => 'אימפריאלי',
			'onboarding.height.next' => 'הבא',
			'onboarding.weight.currentTitle' => 'מהו המשקל הנוכחי שלך?',
			'onboarding.weight.currentDescription' => 'המשקל הנוכחי שלך חיוני להתאמת המטרות היומיות שלך.',
			'onboarding.weight.targetTitle' => 'מהו המשקל היעד שלך?',
			'onboarding.weight.targetDescription' => 'קביעת משקל יעד עוזרת לנו לקבוע את התוכנית ארוכת הטווח שלך.',
			'onboarding.weight.metric' => 'מטרי',
			'onboarding.weight.imperial' => 'אימפריאלי',
			'onboarding.weight.next' => 'הבא',
			'onboarding.age.title' => 'מתי יום ההולדת שלך?',
			'onboarding.age.description' => 'גילך עוזר לנו לחשב את צרכי הקלוריות שלך בצורה מדויקת.',
			'onboarding.age.next' => 'הבא',
			'onboarding.bmiScale.underweight' => 'תת משקל',
			'onboarding.bmiScale.healthy' => 'משקל בריא',
			'onboarding.bmiScale.overweight' => 'עודף משקל',
			'onboarding.bmiScale.obese' => 'השמנה',
			'onboarding.bmiScale.categories.underweight' => 'תת משקל',
			'onboarding.bmiScale.categories.healthyWeight' => 'משקל בריא',
			'onboarding.bmiScale.categories.overweight' => 'עודף משקל',
			'onboarding.bmiScale.categories.obese' => 'השמנה',
			'onboarding.bmiScale.messages.underweight' => 'נוכל לעזור לך לבנות תוכנית בריאה להגיע למשקל מאוזן עם ארוחות עשירות בחומרים המזינים.',
			'onboarding.bmiScale.messages.healthy' => 'עבודה מצוינת! אתה בטווח בריא. נעזור לך לשמור על חיוניות ורמות אנרגיה.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} יפשט את המסע שלך עם מעקב מבוסס בינה מלאכותית כדי לעזור לך להגיע למטרה שלך בנוחות.',
			'onboarding.bmiScale.messages.obese' => 'אנחנו כאן כדי לתמוך בך עם הנחיות מותאמות ואסטרטגיות ברות קיימא למטרות הבריאות שלך.',
			'onboarding.weightGoal.title' => 'מהי מטרתך?',
			'onboarding.weightGoal.description' => 'בחר את המטרה שמתארת בצורה הטובה ביותר מה אתה רוצה להשיג',
			'onboarding.activityLevel.title' => 'כמה פעיל אתה?',
			'onboarding.activityLevel.description' => 'זה עוזר לנו לחשב את צרכי הקלוריות היומיות שלך בצורה מדויקת יותר',
			'onboarding.healthConnect.title' => 'חבר עם Health Connect',
			'onboarding.healthConnect.description' => 'סנכרן את נתוני הבריאות שלך לקבלת תובנות טובות יותר ומעקב אוטומטי אחרי קלוריות',
			'onboarding.healthConnect.automaticTracking.title' => 'מעקב קלוריות אוטומטי',
			'onboarding.healthConnect.automaticTracking.description' => 'עקוב אחרי קלוריות שנשרפו מהאפליקציות שלך בכושר',
			'onboarding.healthConnect.progressInsights.title' => 'תובנות התקדמות',
			'onboarding.healthConnect.progressInsights.description' => 'קבל תובנות מפורטות על מגמות הבריאות שלך',
			'onboarding.healthConnect.seamlessIntegration.title' => 'שילוב חלק',
			'onboarding.healthConnect.seamlessIntegration.description' => 'סנכרן נתונים מאפליקציות הבריאות האהובות עליך',
			'onboarding.healthConnect.connected' => 'Health Connect מחובר',
			'onboarding.healthConnect.notConnected' => 'Health Connect לא מחובר',
			'onboarding.healthConnect.setup' => 'הגדר את Health Connect',
			'onboarding.healthConnect.skipForNow' => 'דלג לעכשיו',
			'onboarding.healthConnect.statusConnected' => 'Health Connect מחובר.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect הוגדר בהצלחה!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'גישה נדחתה. אנא אפשר את הרשאות Health Connect בהגדרות הטלפון שלך עבור ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'שגיאה בהגדרת Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'אתה לא לבד',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'מחקרים מראים שמעקב מתמיד הוא המנבא מספר 1 להצלחה ארוכת טווח.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'עבור ${age} שנים ${gender} שמעוניין ב-${goal}, מעקב מתמיד הוא המנבא מספר 1 להצלחה.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} מקל 10 פעמים יותר מאשר לעשות את זה ידנית.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'מוכן להתחיל?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'צלם תמונה של הארוחות שלך לניתוח מיידי',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'נהל יומן באופן קבוע כדי לראות שיפורים משמעותיים',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'עקוב אחר ההתקדמות שלך יומית כדי להישאר במוטיבציה',
			'onboarding.reinforcement.trackingSuccess.button' => 'בוא נלך',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'אדם',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'בגרסה בריאה יותר',
			'onboarding.reinforcement.healthProfile.title' => 'פרופיל הבריאות שלך',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'בהתבסס על המדדים שלך, ה-BMI שלך הוא ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'בוא נשלים את הפרופיל שלך כדי להתאים אישית את החוויה שלך.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'לעלות',
			'onboarding.reinforcement.healthProfile.goalLose' => 'להוריד',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'כדי להשיג את המטרה שלך, אתה צריך ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'אתה במשקל היעד שלך! נעזור לך לשמור עליו.',
			'onboarding.reinforcement.healthProfile.button' => 'בוא נלך',
			'onboarding.reinforcement.goalLifestyle.title' => 'התחלה מצוינת!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'עשית את הצעד הראשון לקראת ${goalText}. מכיוון ש${activityText}, ${appLabel} יתאים את המטרות שלך כדי להתאים לאורח החיים שלך.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'יעדי קלוריות מותאמים אישית',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'זיהוי ארוחות המונע על ידי בינה מלאכותית',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'פירוטים מפורטים של מאקרו-נוטריינטים',
			'onboarding.reinforcement.goalLifestyle.button' => 'בוא נלך',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'היעדים שלך',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'פעיל',
			'tabs.dashboard' => 'לוח בקרה',
			'tabs.history' => 'היסטוריה',
			'home.dailyGoal.title' => 'קבע את המטרה היומית שלך',
			'home.dailyGoal.titleSet' => 'המטרה היומית שלך',
			'home.dailyGoal.description' => 'מוכן לצאת לדרך לבריאותך? קבע את יעד הקלוריות היומי שלך למטה כדי להתחיל את ההתקדמות שלך.',
			'home.dailyGoal.descriptionSet' => 'המצפן שלך מוגדר! זהו יעד הקלוריות היומי שלך להנחות אותך.',
			'home.dailyGoal.yourGoal' => 'המטרה שלך',
			'home.dailyGoal.goal' => 'יעד',
			'home.dailyGoal.dailyCalories' => 'קלוריות יומיות (קק"ל)',
			'home.dailyGoal.setGoal' => 'קבע מטרה',
			'home.dailyGoal.intake' => 'צריכה',
			'home.dailyGoal.burned' => 'נשרף',
			'home.dailyGoal.weightImpact' => 'השפעה על המשקל',
			'home.dailyGoal.estLoss' => 'הערכה של ירידה ב-',
			'home.dailyGoal.estGain' => 'הערכה של עלייה ב-',
			'home.dailyGoal.kcal' => 'קק"ל',
			'home.dailySummary.title' => 'סיכום יומי',
			'home.dailySummary.calories' => 'קלוריות',
			'home.dailySummary.carbs' => 'פחמימות',
			'home.dailySummary.protein' => 'חלבון',
			'home.dailySummary.fat' => 'שומן',
			'home.dailySummary.fiber' => 'סיבים',
			'home.dailySummary.grams' => 'גרמים',
			'home.dailySummary.chartAccessibilityLabel' => 'תרשים מאקרו-תזונה',
			'home.intakeProgress.title' => 'חלוקת המקרו להיום',
			'home.intakeProgress.target' => 'יעד',
			'home.intakeProgress.current' => 'נוכחי',
			'home.intakeHistory.title' => 'היסטוריית המקרו של 7 ימים',
			'home.intakeHistory.noHistoryYet' => 'אין היסטוריה עדיין',
			'home.intakeHistory.startLogging' => 'התחל לרשום ארוחות כדי לראות את מגמות המקרו שלך כאן במהלך 7 הימים',
			'home.mealLog.title' => 'ארוחות רשומות',
			'home.mealLog.emptyMessage' => 'צלם תמונה של הארוחה האחרונה שלך כדי לרשום כאן.',
			'home.mealLog.noMealsToday' => 'אין ארוחות מוקלטות להיום',
			'home.mealLog.seeAllMeals' => 'ראה את כל הארוחות',
			'home.mealDescription.title' => 'הוסף במהירות עם בינה מלאכותית',
			'home.mealDescription.description' => 'תאר את הארוחה שלך, ותן לבינה המלאכותית לטפל בפרטים.',
			'home.mealDescription.hint' => 'למשל, לארוחת הבוקר אכלתי קערה גדולה של קוואקר עם בננה פרוסה וכף של מי גבינה ...',
			'home.mealDescription.analyzeMeal' => 'נתח את הארוחה',
			'home.favoriteMeals.title' => 'ארוחות אהובות',
			'home.favoriteMeals.description' => 'הוסף במהירות אחת מהארוחות האהובות עליך.',
			'home.favoriteMeals.noFavorites' => 'אין ארוחות אהובות עדיין.',
			'home.favoriteMeals.addFavoriteHint' => 'לחץ על הכוכב בארוחה כדי לסמן אותה כאהובה.',
			'home.favoriteMeals.seeAll' => 'ראה הכל',
			'home.favoriteMeals.add' => 'הוסף',
			'home.mealSnap.title' => 'צלם ועקוב אחרי הארוחה שלך',
			'home.mealSnap.description' => 'השתמש במצלמה שלך כדי לצלם תמונה של האוכל שלך לניתוח בינה מלאכותית.',
			'home.mealSnap.openCamera' => 'פתח מצלמה',
			'home.mealSnap.gallery' => 'גלריה',
			'home.connectHealth.title' => 'סנכרן עם Health Connect',
			'home.connectHealth.description' => 'סנכרן את נתוני התזונה שלך עם Health Connect',
			'home.connectHealth.install' => 'התקן',
			'home.connectHealth.connect' => 'חבר',
			'history.noMeals' => 'אין ארוחות מוקלטות',
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
			'meal.mealNameHint' => 'למשל: ביצים מקושקשות עם טוסט',
			'meal.mealQuantity' => 'כמות הארוחה',
			'meal.mealQuantityHint' => 'למשל, 1 קערה, 2 פרוסות',
			'meal.timeOfMeal' => 'שעת הארוחה',
			'meal.timeOfMealHint' => 'בחר את השעה שבה אכלת את הארוחה',
			'meal.mealType' => 'סוג הארוחה',
			'meal.nutrition.calories' => 'קלוריות',
			'meal.nutrition.carbs' => 'פחמימות (גרם)',
			'meal.nutrition.protein' => 'חלבון (גרם)',
			'meal.nutrition.fat' => 'שומן (גרם)',
			'meal.nutrition.fiber' => 'סיבים (גרם)',
			'meal.deleteConfirmation.title' => 'מחק ארוחה',
			'meal.deleteConfirmation.message' => 'האם אתה בטוח שברצונך למחוק רשומה זו של הארוחה?',
			'meal.deleteConfirmation.cancel' => 'ביטול',
			'meal.deleteConfirmation.delete' => 'מחק',
			'meal.addedToLog' => 'הארוחה נוספה לרשומתך!',
			'meal.couldNotAdd' => ({required Object error}) => 'לא ניתן להוסיף ארוחה: ${error}',
			'meal.savedSuccessfully' => 'הארוחה נוספה בהצלחה!',
			'meal.updatedSuccessfully' => 'הארוחה עודכנה בהצלחה!',
			'meal.errorSaving' => ({required Object error}) => 'שגיאה בשמירת הארוחה: ${error}',
			'meal.removedFromFavorites' => 'הוסר מהאהובים!',
			'meal.savedAsFavorite' => 'הארוחה נשמרה כאהובה!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'לא ניתן לעדכן אהוב: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'נכשל בעיבוד: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'נכשל בעיבוד התמונה: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'שגיאה בצמצום התמונה: ${error}',
			'meal.failedToSave' => 'נכשל בשמירת הנתונים. אנא נסה שוב.',
			'meal.skip' => 'דלג',
			'meal.variation.question' => ({required Object current, required Object total}) => 'שאלה ${current} מתוך ${total}',
			'meal.variation.noVariationsAvailable' => 'אין וריאציות זמינות',
			'favorites.title' => 'אהובים',
			'favorites.empty' => 'אין ארוחות אהובות עדיין.',
			'profile.title' => 'פרופיל',
			'profile.noProfileData' => 'לא נמצאו נתוני פרופיל',
			'profile.yourProfile' => 'הפרופיל שלך',
			'profile.viewAndManage' => 'צפה ונהל את המידע הבריאותי שלך',
			'profile.sections.profile' => 'פרופיל',
			'profile.sections.basicInformation' => 'מידע בסיסי',
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
			'profile.notSet' => 'לא מוגדר',
			'profile.years' => 'שנים',
			'profile.updatedSuccessfully' => 'הפרופיל עודכן בהצלחה!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'מטרה יומית',
			'profile.calculatedValues.calPerDay' => 'קל ביום',
			'profile.calculatedValues.notAvailable' => 'לא זמין',
			'healthScore.title' => 'ציון בריאות',
			'healthScore.whyThisScore' => 'למה ציון זה?',
			'healthScore.note' => 'הציון הזה הוא הערכה על סמך המרכיבים המזוהים ואת צפיפות התזונה. תמיד התייעץ עם מקצוען לגבי תזונה.',
			'healthScore.unhealthy' => 'לא בריא',
			'healthScore.healthy' => 'בריא',
			'healthScore.neutral' => 'ניטרלי',
			'editProfile.title' => 'ערוך פרופיל',
			'editProfile.sections.personalInformation' => 'מידע אישי',
			'editProfile.sections.physicalMeasurements' => 'מדידות פיזיות',
			'editProfile.sections.goalsAndActivity' => 'מטרות ופעילות',
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
			'editProfile.unitLbs' => 'ליב\'',
			'editProfile.metricCm' => 'מטרי (ס"מ)',
			'editProfile.imperialFtIn' => 'אימפריאלי (רגל/אינצ\'ס)',
			'editProfile.metricKg' => 'מטרי (ק"ג)',
			'editProfile.imperialLbs' => 'אימפריאלי (ליברות)',
			'editProfile.genders.male' => 'זכר',
			'editProfile.genders.female' => 'נקבה',
			'editProfile.genders.other' => 'אחר',
			'editProfile.weightGoals.loseWeight.name' => 'לרדת במשקל',
			'editProfile.weightGoals.loseWeight.description' => 'צור חיסור קלורי כדי לרדת במשקל',
			'editProfile.weightGoals.maintainWeight.name' => 'לשמור על משקל',
			'editProfile.weightGoals.maintainWeight.description' => 'שמור על המשקל הנוכחי שלך',
			'editProfile.weightGoals.gainWeight.name' => 'לעלות במשקל',
			'editProfile.weightGoals.gainWeight.description' => 'צור תוספת קלורית כדי לעלות במשקל',
			'editProfile.activityLevels.sedentary.name' => 'ישבני',
			'editProfile.activityLevels.sedentary.description' => 'מעט מאוד פעילות גופנית',
			'editProfile.activityLevels.lightlyActive.name' => 'פעיל מעט',
			'editProfile.activityLevels.lightlyActive.description' => 'פעילות גופנית קלה 1-3 ימים בשבוע',
			'editProfile.activityLevels.moderatelyActive.name' => 'פעיל עד בינוני',
			'editProfile.activityLevels.moderatelyActive.description' => 'פעילות גופנית בינונית 3-5 ימים בשבוע',
			'editProfile.activityLevels.veryActive.name' => 'פעיל מאוד',
			'editProfile.activityLevels.veryActive.description' => 'פעילות גופנית קשה 6-7 ימים בשבוע',
			'editProfile.activityLevels.extremelyActive.name' => 'פעיל ביותר',
			'editProfile.activityLevels.extremelyActive.description' => 'פעילות גופנית קשה מאוד, עבודה פיזית',
			'settings.title' => 'הגדרות',
			'settings.sections.profile' => 'פרופיל',
			'settings.sections.localization' => 'התאמה מקומית',
			'settings.sections.notifications' => 'התראות',
			'settings.sections.healthConnect' => 'חיבור בריאות',
			'settings.sections.supportAndLegal' => 'תמיכה וחוקי',
			'settings.sections.about' => 'אודות',
			'settings.sections.dangerZone' => 'אזור מסוכן',
			'settings.sections.developer' => 'מפתחים',
			'settings.editProfile.title' => 'ערוך פרופיל',
			'settings.editProfile.subtitle' => 'עדכן את המידע האישי שלך',
			'settings.language.title' => 'שפה',
			'settings.language.subtitle' => 'בחר את השפה המועדפת עליך',
			'settings.language.searchHint' => 'חפש שפות...',
			'settings.language.noResults' => 'לא נמצאו תוצאות',
			'settings.heightUnit.title' => 'יחידת גובה',
			'settings.weightUnit.title' => 'יחידת משקל',
			'settings.mealReminders.title' => 'תזכורות לארוחת',
			'settings.mealReminders.subtitle' => 'שמור על הקצב עם התראות בזמן',
			'settings.theme.title' => 'נושא',
			'settings.theme.light' => 'בהיר',
			'settings.theme.dark' => 'חשוך',
			'settings.theme.system' => 'מערכת',
			'settings.sendFeedback.title' => 'שלח משוב',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'עזור לנו לשפר את ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} משוב על האפליקציה',
			'settings.sendFeedback.emailBodyPrefix' => 'אנא ספק את המשוב שלך למטה:',
			'settings.sendFeedback.appVersion' => 'גרסת אפליקציה',
			'settings.sendFeedback.device' => 'מכשיר',
			'settings.sendFeedback.osVersion' => 'גרסת מערכת הפעלה',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'מחק את כל הנתונים',
			'settings.clearAllData.subtitle' => 'מחק לצמיתות את כל המידע שלך',
			'settings.clearAllData.confirmationTitle' => 'מחק את כל הנתונים?',
			'settings.clearAllData.confirmationMessage' => 'פעולה זאת אינה ניתנת לביטול. כל הארוחות המוקלטות שלך, מועדפים, והגדרות פרופיל יימחקו לצמיתות.',
			'settings.clearAllData.cancel' => 'ביטול',
			'settings.clearAllData.clearEverything' => 'מחק את הכל',
			'settings.debugOptions.title' => 'אפשרויות דיבוג',
			'settings.developerModeEnabled' => 'מצב מפתח הופעל!',
			'settings.healthConnect.title' => 'חיבור בריאות',
			'settings.healthConnect.subtitle' => 'הצג וניהול הרשאות',
			'settings.healthConnect.unavailable.title' => 'Health Connect לא זמין',
			'settings.healthConnect.unavailable.description' => 'Health Connect אינו זמין במכשיר זה. נא להתקין את Health Connect מחנות Play ‏(Android 9+) או לעדכן ל-Android 14+.',
			'settings.healthConnect.permissions.title' => 'הרשאות',
			'settings.healthConnect.permissions.description' => 'ההרשאות הבאות נדרשות כדי לספק אינטגרציה עם חיבור בריאות:',
			'settings.healthConnect.permissions.granted' => 'ניתן',
			'settings.healthConnect.permissions.notGranted' => 'לא ניתן',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'קריאת קלוריות שנשרפות בסך הכל',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'מאפשר לאפליקציה לקרוא את סך הקלוריות שנשרפו שלך מחיבור בריאות.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'הרשאה זו משמשת כדי להציג את שריפת הקלוריות היומית שלך באפליקציה, ועוזרת לך להבין את סך הוצאת האנרגיה שלך במהלך היום.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'קריאת נתוני תזונה',
			'settings.healthConnect.permissions.nutritionRead.description' => 'מאפשר לאפליקציה לקרוא נתוני תזונה מחיבור בריאות.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'הרשאה זו מאפשרת לאפליקציה לקרוא מידע תזונתי שעשוי להיות מעודכן על ידי אפליקציות אחרות מחוברות לחיבור בריאות, ומספקת תמונה מקיפה של התזונה שלך.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'כתיבת נתוני תזונה',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'מאפשר לאפליקציה לכתוב נתוני תזונה לחיבור בריאות.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'הרשאה זו מאפשרת לאפליקציה לסנכרן את הארוחות שלך לחיבור בריאות, מה שהופך את נתוני התזונה שלך לזמינים לאפליקציות בריאות וכושר אחרות שבהן אתה משתמש.',
			'settings.healthConnect.managePermissions' => 'ניהול הרשאות',
			'settings.healthConnect.openSettings' => 'פתח את הגדרות בריאות קונקט',
			'settings.healthConnect.requestPermissions' => 'בקש הרשאות',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'בקשת ההרשאות בוטלה או נכשלה. נסו שוב או העניקו הרשאות ידנית בהגדרות Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'לא ניתן לבקש הרשאות. נסו שוב או העניקו הרשאות ידנית בהגדרות Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'אודות',
			'settings.about.tagline' => 'מודעות קלוריות מהירה, חינמית ופוקחת עיניים על פרטיות',
			'settings.about.ourStory.title' => 'הסיפור שלנו',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} נוצר מתוך תסכול פשוט: רוב אפליקציות המעקב אחרי קלוריות הן מסובכות מדי, דורשות קלט ידני מתמשך, גובות תשלומים גבוהים עבור מנוי, או פוגעות בפרטיות.\n\nכמפתח עצמאי, רציתי לבנות משהו פשוט יותר והוגן יותר — אפליקציה שמשתמשת בבינה מלאכותית כדי להפחית מאמץ, נותרת מהירה וחינמית לשימוש, ומתייחסת לנתוני הבריאות שלך בכבוד.\n\n${appLabel} היא האפליקציה שאני מאחל שהיא הייתה קיימת: ללא חשבונות, ללא מעקב, ללא פרסומות — רק תובנות בריאותיות ברורות ומעשיות ומטרות הבריאות שלך.',
			'settings.about.privacy.title' => 'הפרטיות שלך חשובה',
			'settings.about.privacy.description' => 'הפרטיות אינה מחשבה מאוחרת — זהו עיקרון עיצובי. הנה מה שזה אומר הלכה למעשה:',
			'settings.about.privacy.noAccounts' => 'אין צורך בחשבונות\nשימוש מיידי באפליקציה. אין רישום, אין זהויות.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'אין מעקב התנהגותי\n${appLabel} אינה עוקבת אחרי הפעילות שלך, אינה בונה פרופילי שימוש, ואינה עוקבת אחריך באפליקציות או באתרי אינטרנט.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'ללא פרסומות בעיצוב\n${appLabel} נבנתה לפעול ללא פרסומות או מונטיזציה מבוססת נתונים.',
			'settings.about.privacy.noDataSelling' => 'אין מכירת נתונים\nנתוני הבריאות שלך לא נמכרים ולא משותפים עם צדדים שלישיים.',
			'settings.about.privacy.localStorage' => 'אחסון מקומי קודם\nהנתונים שלך נשמרים במכשיר שלך.',
			'settings.about.privacy.privacyPolicy' => 'מדיניות פרטיות',
			'settings.about.developer.title' => 'נבנה על ידי מפתח עצמאי',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} נבנית ונתמכת על ידי מפתח עצמאי שמתרכז ביצירת תוכנה לפיתוח בריאות בכבוד לפרטיות.\n\nפידבק נקרא באופן אישי ועוזר לעצב את כיוון האפליקציה.',
			'settings.about.developer.website' => 'אתר האינטרנט',
			'settings.about.developer.email' => 'דוא"ל',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'נהנים מ-${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'הפידבק שלכם עוזר לשפר את ${appLabel} לכולם.',
			'settings.about.feedback.rateApp' => 'דרגו בחנות Play',
			'settings.about.feedback.sendFeedback' => 'שלחו פידבק',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'בניית גרסה ${buildNumber}',
			'reminders.title' => 'שמור על הקצב עם תזכורות',
			'reminders.description' => 'קבל תזכורות עדינות לרשום את הארוחות שלך ולשמור על עקביות עם מטרות התזונה שלך',
			'reminders.notificationsEnabled' => 'התראות הופעלו',
			'reminders.notificationsDisabled' => 'התראות הופסקו',
			'reminders.enabledSubtitle' => 'תקבל תזכורות לארוחות',
			'reminders.disabledSubtitle' => 'אפשר התראות כדי לקבל תזכורות לארוחות',
			'reminders.mealReminders' => 'תזכורות לארוחות',
			'reminders.breakfast' => 'ארוחת בוקר',
			'reminders.lunch' => 'ארוחת צהריים',
			'reminders.dinner' => 'ארוחת ערב',
			'reminders.snack' => 'נשנוש',
			'reminders.unknown' => 'לא ידוע',
			'reminders.change' => 'שנה',
			'reminders.enableNotifications' => 'אפשר התראות',
			'reminders.skipForNow' => 'דלג לעכשיו',
			'reminders.saveChanges' => 'שמור שינויים',
			'reminders.enabledSuccessfully' => 'התראות הופעלו בהצלחה!',
			'reminders.permissionDenied' => 'הרשאת התראות נדחתה',
			'reminders.errorEnabling' => ({required Object error}) => 'שגיאה בהפעלת התראות: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'שגיאה בהשלמת ההגדרה: ${error}',
			'notifications.breakfast.title' => 'זמן ארוחת בוקר! 🍳',
			'notifications.breakfast.body' => 'אל תשכח לרשום את ארוחת הבוקר שלך',
			'notifications.lunch.title' => 'זמן ארוחת צהריים! 🥗',
			'notifications.lunch.body' => 'הגיע הזמן לרשום את ארוחת הצהריים שלך',
			'notifications.dinner.title' => 'זמן ארוחת ערב! 🍽️',
			'notifications.dinner.body' => 'אל תשכח לרשום את ארוחת ערב שלך',
			'notifications.snack.title' => 'זמן נשנוש! 🍎',
			'notifications.snack.body' => 'הגיע הזמן לנשנוש בריא',
			'notifications.test.title' => 'התראת ניסיון',
			'login.title' => 'התחברות',
			'login.signInWithGoogle' => 'התחבר עם גוגל',
			'login.signInFailed' => 'ההתחברות עם גוגל נכשלה או בוטלה.',
			'disclaimer.pleaseNote' => 'אנא שים לב',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} מספק מידע תזונתי משוער. דיוק תלוי בקלט שלך ובשונות המזון. השתמש בזה כמדריך, ולא כמקור סופי. התייעץ עם מקצוען עבור ייעוץ תזונתי מותאם אישית.',
			'disclaimer.snap.portionSize.title' => 'גודל המנה',
			'disclaimer.snap.portionSize.description' => 'הדיוק של ההערכות תלוי במידה רבה בהערכה הנכונה שלך של גודל המנה.',
			'disclaimer.snap.preparationMethods.title' => 'שיטות הכנה',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'שיטות הבישול יכולות לשנות באופן משמעותי את התוכן התזונתי של המזון. ההערכות של ${appLabel} עשויות שלא לקחת תמיד בחשבון את השונות הללו.',
			'disclaimer.snap.ingredients.title' => 'מרכיבים',
			'disclaimer.snap.ingredients.description' => 'מנות מורכבות עם מרכיבים מוסתרים רבים עשויות להוביל להערכות פחות מדויקות.',
			'disclaimer.snap.databaseLimitations.title' => 'מגבלות בסיס נתונים',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'המאגר המזון של ${appLabel} רחב מאוד אך עשוי שלא לכלול כל פריט מזון או וריאציה.',
			'disclaimer.weightEstimate.title' => 'על הערכת המשקל',
			'disclaimer.weightEstimate.description' => 'שינוי המשקל המשוער הוא הערכה תיאורטית המבוססת על מודל הקלוריות הנכנסות מול הקלוריות היוצאות. היא מיועדת למדריך מוטיבציה בלבד, לא ככלי לחזות את המשקל שלך.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'דיוק קלורי',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'ההערכה הזו מדויקת רק כמו צריכת הקלוריות שעקבת אחריה וההוצאות. רישום לא מדויק יגרום להערכה לא מדויקת.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'גורמים ביולוגיים',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'ירידה/עלייה במשקל בפועל מושפעת מהמטבוליזם, הורמונים, שינה, לחץ, הידרציה וגורמים אישיים אחרים ש${appLabel} לא יכול למדוד.',
			'disclaimer.weightEstimate.waterWeight.title' => 'משקל מים ותנודות',
			'disclaimer.weightEstimate.waterWeight.description' => 'משקל יומי רגיל יכול להשתנות באופן משמעותי בגלל החזקת מים, עיכול וזמן. ההערכה לא לוקחת בחשבון את השינויים היומיים הללו.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'הנחיה מקצועית',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'אל תשתמש בהערכה זו כדי לקבל החלטות רפואיות. תמיד התייעץ עם איש מקצוע בריאות או דיאטנית רשומה להמלצות ניהול משקל מותאמות אישית.',
			'disclaimer.healthMetrics.description' => 'מטריקות אלו עוזרות לך להבין את צורכי האנרגיה של הגוף שלך ומנחות את מטרות התזונה שלך.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'קצב חילוף החומרים הבסיסי (BMR) הוא מספר הקלוריות שהגוף שלך שורף במנוחה כדי לשמור על פונקציות בסיסיות כמו נשימה וזרימת דם. ה-BMR תלוי בגיל, במגדר, בגובה ובמשקל שלך. BMR גבוה יותר פירושו שהגוף שלך שורף באופן טבעי יותר קלוריות במנוחה, לעיתים קרובות בגלל מסת שריר גבוהה יותר, גיל צעיר יותר או היותך גבר. BMR נמוך יותר בדרך כלל מצביע על פחות מסת שריר, גיל מבוגר יותר או היותך אישה.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'ההוצאה הקולורית היומית הכוללת (TDEE) היא סך הקלוריות שאתה שורף ביום, כולל את ה-BMR שלך פלוס קלוריות מפעילות גופנית ותנועה יומית. ה-TDEE תלוי ב-BMR שלך וברמת הפעילות שלך. TDEE גבוה יותר פירושו שאתה שורף יותר קלוריות בסך הכל, בדרך כלל כתוצאה מפעילות רבה יותר או BMR גבוה יותר. TDEE נמוך יותר מצביע על פחות פעילות יומיומית או BMR נמוך יותר.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'מטרה יומית',
			'disclaimer.healthMetrics.dailyGoal.description' => 'המטרה היומית היא צריכת הקלוריות היומית המומלצת שלך בהתבסס על ה-TDEE שלך ומטרת המשקל שלך. לצורך ירידת משקל, אתה צורך פחות קלוריות מה-TDEE שלך. לשמירה על משקל, אתה תואם את ה-TDEE שלך. לצורך עליית משקל, אתה צורך יותר קלוריות מה-TDEE שלך. זה עוזר לך להגיע לשינוי המשקל הרצוי שלך בקצב בריא.',
			'common.close' => 'סגור',
			'common.kContinue' => 'להמשיך',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'נהנים מהשימוש ב${appLabel}?',
			'feedbackRating.yes' => 'כן, אני נהנה/נהנית',
			'feedbackRating.no' => 'לא ממש',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'דירוג קצר עוזר לאחרים למצוא את ${appLabel} ומאפשר לנו להמשיך בפיתוח. האם ברצונך להקדיש רגע ולהשאיר דירוג?',
			'feedbackRating.shareFeedbackViaEmail' => 'המשוב שלך מעצב את הצעדים הבאים — אנחנו קוראים כל הודעה. האם ברצונך לשתף את מחשבותיך בדוא"ל?',
			'feedbackRating.rateCta' => 'דרגו אותנו ב-Google Play',
			'feedbackRating.maybeLater' => 'אולי אחר כך',
			'feedbackRating.sendFeedback' => 'שלח משוב',
			'feedbackRating.noThanks' => 'לא תודה',
			'feedbackRating.aboutUsDescription' => 'נוצר בקפידה על ידי צוות קטן. אנו שמים דגש על פרטיות, על פשטות, ועל סיוע לך בפיתוח הרגלי אכילה בריאים יותר.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'סקרנים מי עומד מאחורי ${appLabel}? ראה ',
			'feedbackRating.aboutUsLinkLabel' => 'עלינו',
			'feedbackRating.thankYouMessage' => 'תודה! נשאל שוב בהזדמנות אחרת.',
			'errors.loadingProfileData' => 'שגיאה בהטענת נתוני פרופיל',
			'errors.somethingWentWrong' => 'משהו השתבש.',
			'debug.title' => 'אפשרויות דיבוג',
			'debug.searchHint' => 'אפשרויות חיפוש...',
			'debug.sections.notifications' => 'התראות',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.wearOs' => 'Wear OS',
			'debug.sections.foodApiTests' => 'בדיקות Food API',
			'debug.sections.profileApiTests' => 'בדיקות API של הפרופיל',
			'debug.sections.feedback' => 'משוב',
			'debug.sections.dataReset' => 'איפוס נתונים',
			'debug.sections.appInfo' => 'מידע על האפליקציה',
			'debug.sections.shorebird' => 'Shorebird',
			'debug.showActiveNotifications' => 'הצג התראות פעילות',
			'debug.scheduleTestNotification' => 'תזמן התראה ניסי (10ש)',
			'debug.triggerBreakfastNotification' => 'הפעל התראת ארוחת בוקר',
			'debug.cancelAllNotifications' => 'בטל את כל ההתראות',
			'debug.activeNotifications' => 'התראות פעילות',
			'debug.noTitle' => 'אין כותרת',
			'debug.noBody' => 'אין תוכן',
			'debug.fetchTodaysSteps' => 'שחזר את צעדי היום',
			'debug.fetchTodaysCalories' => 'שחזר את קלוריות היום',
			'debug.fetchLatestWeight' => 'שחזר את המשקל הרלוונטי ביותר',
			'debug.fetchLatestHeight' => 'שחזר את הגובה הרלוונטי ביותר',
			'debug.writeTestWeight' => 'כתוב משקל ניסי (70ק"ג)',
			'debug.writeTestHeight' => 'כתוב גובה ניסי (175ס"מ)',
			'debug.syncLast7Days' => 'סנכרן את 7 הימים האחרונים',
			'debug.sync7DaysTitle' => 'סנכרון של 7 ימים',
			'debug.checkCurrentLocale' => 'בדוק את המיקום הנוכחי',
			'debug.currentLocale' => 'מיקום נוכחי',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'שפה: ${languageCode}\nמדינה: ${countryCode}\nמערכת יחידות: ${unitSystem}',
			'debug.latestWeight' => 'המשקל האחרון',
			'debug.latestHeight' => 'הגובה האחרון',
			'debug.todaysCalories' => 'קלוריות להיום',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'סה"כ קלוריות שנשרפו: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'התקבלו בהצלחה ${count} נתונים לנוגעים לצעדים, קלוריות ומשקל במהלך 7 הימים האחרונים.',
			'debug.noWeightData' => 'לא נמצאה נתוני משקל במהלך 30 הימים האחרונים.',
			'debug.noHeightData' => 'לא נמצאה נתוני גובה במהלך השנה האחרונה.',
			'debug.noCalorieData' => 'לא נמצאה נתוני קלוריות להיום.',
			'debug.weightWritten' => 'נכתב בהצלחה משקל ניסי (70ק"ג).',
			'debug.weightWriteFailed' => 'נכשל לכתוב משקל ניסי.',
			'debug.heightWritten' => 'נכתב בהצלחה גובה ניסי (175ס"מ).',
			'debug.heightWriteFailed' => 'נכשל לכתוב גובה ניסי.',
			'debug.noNotifications' => 'אין התראות פעילות.',
			'debug.testNotificationScheduled' => 'התראת ניסי מתוזמנת ל-10 שניות מהיום.',
			'debug.testNotificationBody' => 'זוהי התראת ניסי מתוזמנת ל-10 שניות מהיום.',
			'debug.breakfastNotificationTriggered' => 'הופעלה התראת ארוחת בוקר.',
			'debug.allNotificationsCancelled' => 'כל ההתראות בוטלו.',
			'debug.fetchingData' => 'שחזור נתונים עבור 7 הימים האחרונים...',
			'debug.id' => ({required Object id}) => 'מזהה: ${id}',
			'debug.showFeedbackRatingSheet' => 'הצג טופס משוב/דירוג',
			'debug.clearUserPreferences' => 'נקה העדפות משתמש',
			'debug.clearUserPreferencesConfirmationTitle' => 'למחוק את העדפות המשתמש?',
			'debug.clearUserPreferencesConfirmationMessage' => 'הנושא, השפה והעדפות המשוב יאופסו. הארוחות והפרופיל לא יושפעו.',
			'debug.clearUserProfile' => 'נקה פרופיל משתמש',
			'debug.clearUserProfileConfirmationTitle' => 'למחוק את פרופיל המשתמש?',
			'debug.clearUserProfileConfirmationMessage' => 'נתוני הפרופיל שלך (מטרת יום, גובה, משקל וכו\') יימחקו. הארוחות וההעדפות לא יושפעו.',
			'debug.clear' => 'נקה',
			'debug.cancel' => 'ביטול',
			'debug.checkWatchConnection' => 'בדוק חיבור לשעון',
			'debug.sendTestMessage' => 'שלח הודעת בדיקה',
			'debug.sendTestMessageSubtitle' => 'שלח הודעת בדיקה פשוטה לשעון',
			'debug.sendTestMealData' => 'שלח נתוני ארוחה לדוגמה',
			'debug.sendTestMealDataSubtitle' => 'שלח נתוני ארוחה לדוגמה לשעון',
			'debug.sendTestCalorieGoal' => 'שלח יעד קלוריות לדוגמה',
			'debug.sendTestCalorieGoalSubtitle' => 'שלח יעד קלוריות לדוגמה לשעון',
			'debug.viewReceivedMessages' => 'הצג הודעות שהתקבלו',
			'debug.viewReceivedMessagesSubtitle' => 'הצג הודעות שהתקבלו מהשעון',
			'debug.watchConnected' => 'השעון מחובר ✓',
			'debug.device' => 'מכשיר',
			'debug.nearby' => 'בקרבה',
			'debug.yes' => 'כן',
			'debug.no' => 'לא',
			'debug.connectedDevices' => 'מכשירים מחוברים',
			'debug.deviceInfoUnavailable' => '(מידע על המכשיר אינו זמין)',
			'debug.unknownDevice' => 'מכשיר לא ידוע',
			'debug.watchNotConnected' => 'השעון אינו מחובר ✗',
			'debug.watchNotConnectedHint' => 'ודא:\n• שני המכשירים מזווגים\n• אפליקציית השעון פועלת\n• שתי האפליקציות במצב דיבאג/סטייג\'ינג',
			'debug.watchConnection' => 'חיבור לשעון',
			'debug.errorCheckingConnection' => ({required Object error}) => 'שגיאה בבדיקת החיבור: ${error}',
			'debug.helloFromPhone' => 'שלום מהטלפון!',
			'debug.testMessageSentSuccess' => 'הודעת בדיקה נשלחה בהצלחה!',
			'debug.testMessageFailed' => 'שליחת הודעת בדיקה נכשלה. בדוק את החיבור לשעון.',
			'debug.errorSendingMessage' => ({required Object error}) => 'שגיאה בשליחת ההודעה: ${error}',
			'debug.testMeal' => 'ארוחת בדיקה',
			'debug.testMealDataSentSuccess' => 'נתוני הארוחה נשלחו בהצלחה!',
			'debug.failedToSendMealData' => 'שליחת נתוני הארוחה נכשלה. בדוק את החיבור לשעון.',
			'debug.errorSendingMealData' => ({required Object error}) => 'שגיאה בשליחת נתוני הארוחה: ${error}',
			'debug.testCalorieGoalSentSuccess' => 'יעד הקלוריות נשלח בהצלחה!',
			'debug.failedToSendCalorieGoal' => 'שליחת יעד הקלוריות נכשלה. בדוק את החיבור לשעון.',
			'debug.errorSendingCalorieGoal' => ({required Object error}) => 'שגיאה בשליחת יעד הקלוריות: ${error}',
			'debug.testAnalyzeImage' => 'בדיקת ניתוח תמונה',
			'debug.testAnalyzeImageSubtitle' => 'העלה תמונת בדיקה מובנית',
			'debug.testDetectImage' => 'בדיקת זיהוי תמונה',
			'debug.testDetectImageSubtitle' => 'זיהוי ארוחה מתוך כתובת URL של תמונה',
			'debug.detectImageFromGallery' => 'זיהוי תמונה מהגלריה',
			'debug.detectImageFromGallerySubtitle' => 'בחר תמונה, העלה לאחסון והערך את הקלוריות',
			'debug.testDetectText' => 'בדיקת זיהוי טקסט',
			'debug.testDetectTextSubtitle' => 'זהה ארוחה מתוך תיאור טקסטואלי',
			'debug.testMealLoggingWithVariations' => 'בדיקת רישום ארוחה עם וריאציות',
			'debug.testMealLoggingWithVariationsSubtitle' => 'בדוק את זרימת רישום הארוחה המלאה עם וריאציות',
			_ => null,
		} ?? switch (path) {
			'debug.mockMealWithVariations' => 'ארוחה מדומה עם וריאציות',
			'debug.mockMealWithVariationsSubtitle' => 'תצוגה מקדימה של וריאציות + דף טיפים ללא רישום',
			'debug.mockMealName' => 'עוף בגריל עם אורז וירקות',
			'debug.mockTip' => 'זהו טיפ מדומה לתצוגת ממשק. הארוחה לא נרשמה.',
			'debug.mockMealDescription' => 'ארוחת דיבאג מדומה',
			'debug.portionSizeQuestion' => 'מה היה גודל המנה?',
			'debug.extraSidesQuestion' => 'יש תוספות בצד?',
			'debug.optionSmall' => 'קטן',
			'debug.optionMedium' => 'בינוני',
			'debug.optionLarge' => 'גדול',
			'debug.optionNone' => 'ללא',
			'debug.optionSideSalad' => 'סלט בצד',
			'debug.optionBreadRoll' => 'לחמניה',
			'debug.testingAnalyzeImage' => 'בודק API ניתוח תמונה...',
			'debug.testingDetectImage' => 'בודק API זיהוי תמונה...',
			'debug.testingDetectText' => 'בודק API זיהוי טקסט...',
			'debug.selectingImageFromGallery' => 'בוחרים תמונה מהגלריה...',
			'debug.noImageSelected' => 'לא נבחרה תמונה',
			'debug.compressingImage' => 'מכווץ את התמונה...',
			'debug.uploadingImageAndDetecting' => 'מעלה תמונה לאחסון ומזהה את הארוחה...',
			'debug.testingMealLoggingFlow' => 'בודק את זרימת רישום הארוחה עם וריאציות...',
			'debug.testUpdateProfile' => 'בדיקת עדכון פרופיל',
			'debug.testUpdateProfileSubtitle' => 'שלח פרופיל דוגמה לשרת באמצעות POST',
			'debug.testingProfileApi' => 'בודק את ה-API של הפרופיל...',
			'debug.profileUpdateSuccess' => 'ה-API של הפרופיל הגיב בהצלחה',
			'debug.profileUpdateFailed' => ({required Object error}) => 'שגיאה ב-API של הפרופיל: ${error}',
			'debug.noMealIdentifiedInResponse' => 'לא זוהתה ארוחה בתשובה',
			'debug.mealIdentified' => 'זוהתה ארוחה',
			'debug.confidence' => 'רמת ביטחון',
			'debug.tip' => 'טיפ',
			'debug.mealName' => 'שם הארוחה',
			'debug.calories' => 'קלוריות',
			'debug.protein' => 'חלבון',
			'debug.carbs' => 'פחמימות',
			'debug.fat' => 'שומן',
			'debug.noMealInfo' => 'אין מידע על הארוחה',
			'debug.na' => 'לא זמין',
			'debug.analyzeImageResult' => 'תוצאת ניתוח תמונה',
			'debug.detectImageResult' => 'תוצאת זיהוי תמונה',
			'debug.detectImageFromGalleryResult' => 'תוצאת זיהוי תמונה מהגלריה',
			'debug.detectTextResult' => 'תוצאת זיהוי טקסט',
			'debug.errorGeneric' => ({required Object error}) => 'שגיאה: ${error}',
			'debug.variationsCount' => 'וריאציות',
			'debug.userPreferencesCleared' => 'העדפות המשתמש נמחקו',
			'debug.userProfileCleared' => 'פרופיל המשתמש נוקה',
			'debug.checkForUpdate' => 'בדוק עדכונים',
			'debug.showPatchNumber' => 'הצג מספר הפאץ\'',
			'debug.showUpdateAvailable' => 'הצג עדכון זמין',
			'debug.updateAvailable' => 'עדכון זמין',
			'debug.upToDate' => 'מעודכן',
			'debug.shorebirdUnavailable' => 'Shorebird אינו זמין בסביבה זו.',
			'debug.patchNumberLabel' => 'מספר הפאץ\'',
			'debug.noPatchInstalled' => 'אין פאץ\' מותקן',
			'debug.todaysSteps' => 'צעדים להיום',
			'debug.stepsLabel' => 'צעדים',
			'debug.weightLabel' => ({required Object value}) => 'משקל: ${value} ק"ג',
			'debug.heightLabel' => ({required Object value}) => 'גובה: ${value} ס"מ',
			'debug.receivedMessagesFromWatch' => 'הודעות שהתקבלו מהשעון',
			'debug.noMessagesReceivedYet' => 'עדיין לא התקבלו הודעות.\n\nשלח נתוני בדיקה מהשעון כדי לראות הודעות כאן.',
			'debug.messagesCleared' => 'הודעות נמחקו',
			'health.syncFailed' => 'לא ניתן לסנכרן עם Health Connect',
			'health.mealSynced' => 'הארוחה סונכרנה עם Health Connect',
			_ => null,
		};
	}
}
