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
class TranslationsHe extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.he,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <he>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsHe _root = this; // ignore: unused_field

	@override 
	TranslationsHe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHe(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'עברית';
	@override String get flag => '🇮🇱';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$he errors = _Translations$errors$he._(_root);
	@override late final _Translations$onboarding$he onboarding = _Translations$onboarding$he._(_root);
	@override late final _Translations$tabs$he tabs = _Translations$tabs$he._(_root);
	@override late final _Translations$home$he home = _Translations$home$he._(_root);
	@override late final _Translations$history$he history = _Translations$history$he._(_root);
	@override late final _Translations$meal$he meal = _Translations$meal$he._(_root);
	@override late final _Translations$favorites$he favorites = _Translations$favorites$he._(_root);
	@override late final _Translations$profile$he profile = _Translations$profile$he._(_root);
	@override late final _Translations$healthScore$he healthScore = _Translations$healthScore$he._(_root);
	@override late final _Translations$editProfile$he editProfile = _Translations$editProfile$he._(_root);
	@override late final _Translations$settings$he settings = _Translations$settings$he._(_root);
	@override late final _Translations$reminders$he reminders = _Translations$reminders$he._(_root);
	@override late final _Translations$notifications$he notifications = _Translations$notifications$he._(_root);
	@override late final _Translations$login$he login = _Translations$login$he._(_root);
	@override late final _Translations$disclaimer$he disclaimer = _Translations$disclaimer$he._(_root);
	@override late final _Translations$localNutritionPhase4$he localNutritionPhase4 = _Translations$localNutritionPhase4$he._(_root);
	@override late final _Translations$watch$he watch = _Translations$watch$he._(_root);
	@override late final _Translations$common$he common = _Translations$common$he._(_root);
	@override late final _Translations$feedbackRating$he feedbackRating = _Translations$feedbackRating$he._(_root);
	@override late final _Translations$health$he health = _Translations$health$he._(_root);
}

// Path: errors
class _Translations$errors$he extends Translations$errors$en {
	_Translations$errors$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$he extends Translations$onboarding$en {
	_Translations$onboarding$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'ברוכים הבאים ל${appLabel}';
	@override String get subtitle => 'עמית התזונה האישי שלך המונע על ידי AI';
	@override String get getStarted => 'התחל';
	@override late final _Translations$onboarding$features$he features = _Translations$onboarding$features$he._(_root);
	@override late final _Translations$onboarding$gender$he gender = _Translations$onboarding$gender$he._(_root);
	@override late final _Translations$onboarding$height$he height = _Translations$onboarding$height$he._(_root);
	@override late final _Translations$onboarding$weight$he weight = _Translations$onboarding$weight$he._(_root);
	@override late final _Translations$onboarding$age$he age = _Translations$onboarding$age$he._(_root);
	@override late final _Translations$onboarding$bmiScale$he bmiScale = _Translations$onboarding$bmiScale$he._(_root);
	@override late final _Translations$onboarding$weightGoal$he weightGoal = _Translations$onboarding$weightGoal$he._(_root);
	@override late final _Translations$onboarding$activityLevel$he activityLevel = _Translations$onboarding$activityLevel$he._(_root);
	@override late final _Translations$onboarding$healthConnect$he healthConnect = _Translations$onboarding$healthConnect$he._(_root);
	@override late final _Translations$onboarding$reinforcement$he reinforcement = _Translations$onboarding$reinforcement$he._(_root);
}

// Path: tabs
class _Translations$tabs$he extends Translations$tabs$en {
	_Translations$tabs$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'דשבורד';
	@override String get history => 'ההיסטוריה';
}

// Path: home
class _Translations$home$he extends Translations$home$en {
	_Translations$home$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$he aiSummary = _Translations$home$aiSummary$he._(_root);
	@override late final _Translations$home$dailyGoal$he dailyGoal = _Translations$home$dailyGoal$he._(_root);
	@override late final _Translations$home$dailySummary$he dailySummary = _Translations$home$dailySummary$he._(_root);
	@override late final _Translations$home$intakeProgress$he intakeProgress = _Translations$home$intakeProgress$he._(_root);
	@override late final _Translations$home$intakeHistory$he intakeHistory = _Translations$home$intakeHistory$he._(_root);
	@override late final _Translations$home$mealLog$he mealLog = _Translations$home$mealLog$he._(_root);
	@override late final _Translations$home$mealDescription$he mealDescription = _Translations$home$mealDescription$he._(_root);
	@override late final _Translations$home$favoriteMeals$he favoriteMeals = _Translations$home$favoriteMeals$he._(_root);
	@override late final _Translations$home$mealSnap$he mealSnap = _Translations$home$mealSnap$he._(_root);
	@override late final _Translations$home$connectHealth$he connectHealth = _Translations$home$connectHealth$he._(_root);
}

// Path: history
class _Translations$history$he extends Translations$history$en {
	_Translations$history$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'אין ארוחות רשומות';
	@override String get emptyMessage => 'צלם תמונה של הארוחה האחרונה שלך כדי לרשום כאן.';
	@override String get today => 'היום';
	@override String get yesterday => 'אתמול';
}

// Path: meal
class _Translations$meal$he extends Translations$meal$en {
	_Translations$meal$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
	@override late final _Translations$meal$nutrition$he nutrition = _Translations$meal$nutrition$he._(_root);
	@override late final _Translations$meal$deleteConfirmation$he deleteConfirmation = _Translations$meal$deleteConfirmation$he._(_root);
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
	@override late final _Translations$meal$questionFlow$he questionFlow = _Translations$meal$questionFlow$he._(_root);
	@override late final _Translations$meal$analysis$he analysis = _Translations$meal$analysis$he._(_root);
	@override late final _Translations$meal$localInference$he localInference = _Translations$meal$localInference$he._(_root);
	@override late final _Translations$meal$feedback$he feedback = _Translations$meal$feedback$he._(_root);
}

// Path: favorites
class _Translations$favorites$he extends Translations$favorites$en {
	_Translations$favorites$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
	@override late final _Translations$favorites$sortOptions$he sortOptions = _Translations$favorites$sortOptions$he._(_root);
}

// Path: profile
class _Translations$profile$he extends Translations$profile$en {
	_Translations$profile$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'פרופיל';
	@override String get noProfileData => 'לא נמצאו נתוני פרופיל';
	@override String get yourProfile => 'הפרופיל שלך';
	@override String get viewAndManage => 'הצג ונהל את המידע הבריאותי שלך';
	@override late final _Translations$profile$sections$he sections = _Translations$profile$sections$he._(_root);
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
	@override late final _Translations$profile$calculatedValues$he calculatedValues = _Translations$profile$calculatedValues$he._(_root);
}

// Path: healthScore
class _Translations$healthScore$he extends Translations$healthScore$en {
	_Translations$healthScore$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$he extends Translations$editProfile$en {
	_Translations$editProfile$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ערוך פרופיל';
	@override late final _Translations$editProfile$sections$he sections = _Translations$editProfile$sections$he._(_root);
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
	@override late final _Translations$editProfile$genders$he genders = _Translations$editProfile$genders$he._(_root);
	@override late final _Translations$editProfile$weightGoals$he weightGoals = _Translations$editProfile$weightGoals$he._(_root);
	@override late final _Translations$editProfile$activityLevels$he activityLevels = _Translations$editProfile$activityLevels$he._(_root);
}

// Path: settings
class _Translations$settings$he extends Translations$settings$en {
	_Translations$settings$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הגדרות';
	@override late final _Translations$settings$sections$he sections = _Translations$settings$sections$he._(_root);
	@override late final _Translations$settings$editProfile$he editProfile = _Translations$settings$editProfile$he._(_root);
	@override late final _Translations$settings$language$he language = _Translations$settings$language$he._(_root);
	@override late final _Translations$settings$heightUnit$he heightUnit = _Translations$settings$heightUnit$he._(_root);
	@override late final _Translations$settings$weightUnit$he weightUnit = _Translations$settings$weightUnit$he._(_root);
	@override late final _Translations$settings$mealReminders$he mealReminders = _Translations$settings$mealReminders$he._(_root);
	@override late final _Translations$settings$localInference$he localInference = _Translations$settings$localInference$he._(_root);
	@override late final _Translations$settings$theme$he theme = _Translations$settings$theme$he._(_root);
	@override late final _Translations$settings$sendFeedback$he sendFeedback = _Translations$settings$sendFeedback$he._(_root);
	@override late final _Translations$settings$exportMealHistory$he exportMealHistory = _Translations$settings$exportMealHistory$he._(_root);
	@override late final _Translations$settings$clearAllData$he clearAllData = _Translations$settings$clearAllData$he._(_root);
	@override late final _Translations$settings$debugOptions$he debugOptions = _Translations$settings$debugOptions$he._(_root);
	@override String get developerModeEnabled => 'מצב מפתח מופעל!';
	@override late final _Translations$settings$healthConnect$he healthConnect = _Translations$settings$healthConnect$he._(_root);
	@override late final _Translations$settings$about$he about = _Translations$settings$about$he._(_root);
	@override late final _Translations$settings$appInfo$he appInfo = _Translations$settings$appInfo$he._(_root);
}

// Path: reminders
class _Translations$reminders$he extends Translations$reminders$en {
	_Translations$reminders$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$notifications$he extends Translations$notifications$en {
	_Translations$notifications$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$he breakfast = _Translations$notifications$breakfast$he._(_root);
	@override late final _Translations$notifications$lunch$he lunch = _Translations$notifications$lunch$he._(_root);
	@override late final _Translations$notifications$dinner$he dinner = _Translations$notifications$dinner$he._(_root);
	@override late final _Translations$notifications$snack$he snack = _Translations$notifications$snack$he._(_root);
	@override late final _Translations$notifications$test$he test = _Translations$notifications$test$he._(_root);
}

// Path: login
class _Translations$login$he extends Translations$login$en {
	_Translations$login$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'התחבר';
	@override String get signInWithGoogle => 'התחבר עם Google';
	@override String get signInFailed => 'ההתחברות עם Google נכשלה או בוטלה.';
}

// Path: disclaimer
class _Translations$disclaimer$he extends Translations$disclaimer$en {
	_Translations$disclaimer$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'שים/י לב';
	@override late final _Translations$disclaimer$snap$he snap = _Translations$disclaimer$snap$he._(_root);
	@override late final _Translations$disclaimer$weightEstimate$he weightEstimate = _Translations$disclaimer$weightEstimate$he._(_root);
	@override late final _Translations$disclaimer$healthMetrics$he healthMetrics = _Translations$disclaimer$healthMetrics$he._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$he calorieExpenditure = _Translations$disclaimer$calorieExpenditure$he._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$he extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'נתוני התזונה הותאמו מחבילת USDA שהורדה';
	@override String get nutritionCached => 'נתוני התזונה הותאמו ממטמון USDA במכשיר';
	@override String get nutritionMixed => 'נתוני התזונה שולבו משורות USDA שהורדו, נשמרו במטמון ונשלפו מרחוק';
	@override String get calculationLocal => 'הקלוריות והמאקרו חושבו במכשיר הזה';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: חבילת USDA שהורדה';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: מטמון USDA במכשיר';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: שורת USDA שנשלפה דרך Calorify';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: קבוע תזונתי דטרמיניסטי';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · מערך נתונים ${datasetVersion}';
	@override String get portionSmaller => 'קטנה יותר';
	@override String get portionEstimated => 'משוערת';
	@override String get portionLarger => 'גדולה יותר';
	@override String portionQuestion({required Object ingredient}) => 'איזו מנה הייתה הקרובה ביותר עבור ${ingredient}?';
	@override String get mealTypeQuestion => 'איזו ארוחה זו הייתה?';
	@override String get localNutritionTip => 'חושב מנתוני תזונה מקומיים מאומתים.';
	@override String get offlineNutritionTitle => 'הורדת נתוני תזונה';
	@override String get offlineNutritionSubtitle => 'השתמשו בשורות USDA מאומתות ובחישוב דטרמיניסטי במכשיר הזה כאשר כל המרכיבים מכוסים.';
	@override String get offlineNutritionUnavailable => 'נתוני תזונה מקומיים אינם זמינים לגרסת האפליקציה הזו.';
	@override String get offlineNutritionNotDownloaded => 'לא הורדה חבילת תזונה מאומתת.';
	@override String get offlineNutritionInstalling => 'נתוני התזונה מורדים ומאומתים…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'חבילה ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} שורות USDA במטמון · ${size}';
	@override String get offlineNutritionUpdate => 'בדיקת עדכון';
	@override String get offlineNutritionClear => 'ניקוי נתוני תזונה מקומיים';
	@override String get offlineNutritionClearTitle => 'לנקות את נתוני התזונה המקומיים?';
	@override String get offlineNutritionClearBody => 'פעולה זו מסירה את חבילת USDA שהורדה ואת מטמון החיפוש. ארוחות שנרשמו שומרות את תמונת המצב התזונתית המדויקת ששימשה בעת שמירתן.';
	@override String get offlineNutritionClearConfirm => 'ניקוי נתונים';
	@override String offlineNutritionInstallFailed({required Object error}) => 'לא ניתן היה להוריד ולאמת את נתוני התזונה המקומיים: ${error}';
	@override String get offlineNutritionCleared => 'נתוני התזונה המקומיים נוקו';
}

// Path: watch
class _Translations$watch$he extends Translations$watch$en {
	_Translations$watch$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$he common = _Translations$watch$common$he._(_root);
	@override late final _Translations$watch$nutrition$he nutrition = _Translations$watch$nutrition$he._(_root);
	@override late final _Translations$watch$sync$he sync = _Translations$watch$sync$he._(_root);
	@override late final _Translations$watch$home$he home = _Translations$watch$home$he._(_root);
	@override late final _Translations$watch$history$he history = _Translations$watch$history$he._(_root);
	@override late final _Translations$watch$favorites$he favorites = _Translations$watch$favorites$he._(_root);
	@override late final _Translations$watch$meal$he meal = _Translations$watch$meal$he._(_root);
	@override late final _Translations$watch$voice$he voice = _Translations$watch$voice$he._(_root);
	@override late final _Translations$watch$result$he result = _Translations$watch$result$he._(_root);
}

// Path: common
class _Translations$common$he extends Translations$common$en {
	_Translations$common$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'גרסת בטא';
	@override String get close => 'סגור';
	@override String get kContinue => 'המשך';
}

// Path: feedbackRating
class _Translations$feedbackRating$he extends Translations$feedbackRating$en {
	_Translations$feedbackRating$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$health$he extends Translations$health$en {
	_Translations$health$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'לא ניתן לסנכרן ל-Health Connect';
	@override String get mealSynced => 'הארוחה סונכרנה עם Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$he extends Translations$onboarding$features$en {
	_Translations$onboarding$features$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$he foodRecognition = _Translations$onboarding$features$foodRecognition$he._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$he aiAnalysis = _Translations$onboarding$features$aiAnalysis$he._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$he healthIntegration = _Translations$onboarding$features$healthIntegration$he._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$he extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מה המגדר שלך?';
	@override String get description => 'מגדר עוזר לנו לחשב במדויק את קצב חילוף החומרים הבסיסי (BMR) שלך.';
	@override String get next => 'הבא';
}

// Path: onboarding.height
class _Translations$onboarding$height$he extends Translations$onboarding$height$en {
	_Translations$onboarding$height$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'כמה אתה/את גבוה/ה?';
	@override String get description => 'הגובה שלך מסייע לנו לחשב במדויק את ה-BMI ואת צרכי האנרגיה.';
	@override String get metric => 'מטרי';
	@override String get imperial => 'אימפריאלי';
	@override String get next => 'הבא';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$he extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$age$he extends Translations$onboarding$age$en {
	_Translations$onboarding$age$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מתי יום הולדתך?';
	@override String get description => 'הגיל שלך מסייע לנו לחשב במדויק את צריכת הקלוריות שלך.';
	@override String get next => 'הבא';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$he extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'מתחת';
	@override String get healthy => 'בריא';
	@override String get overweight => 'מייגע';
	@override String get obese => 'חולה';
	@override late final _Translations$onboarding$bmiScale$categories$he categories = _Translations$onboarding$bmiScale$categories$he._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$he messages = _Translations$onboarding$bmiScale$messages$he._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$he extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מה היעד שלך?';
	@override String get description => 'בחר את המטרה שמתארת הכי טוב מה ברצונך להשיג';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$he extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'כמה אתה פעיל/ה?';
	@override String get description => 'זה עוזר לנו לחשב במדויק יותר את צרכי הקלוריות היומיים שלך';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$he extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'חבר ל-Health Connect';
	@override String get description => 'סנכרן את נתוני הבריאות שלך לתובנות טובות יותר ומעקב קלוריות אוטומטי';
	@override String get overviewDescription => 'השתמשו בקלוריות שנשרפו ביעד היומי ושתפו לפי בחירה ארוחות שתועדו עם Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$he automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$he._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$he caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$he._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$he progressInsights = _Translations$onboarding$healthConnect$progressInsights$he._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$he shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$he._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$he seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$he._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$he userControl = _Translations$onboarding$healthConnect$userControl$he._(_root);
	@override String get connected => 'Health Connect מחובר';
	@override String get notConnected => 'Health Connect לא מחובר';
	@override String get setup => 'הגדר Health Connect';
	@override String get skipForNow => 'דלג לעכשיו';
	@override String get statusConnected => 'Health Connect מחובר.';
	@override String get statusSuccess => 'Health Connect חובר בהצלחה!';
	@override String get statusNotConnected => 'בחרו את תכונות Health Connect שברצונכם להפעיל.';
	@override String get statusPartial => 'Health Connect מחובר חלקית. הפעילו את ההרשאה הנותרת כדי להשתמש בשתי התכונות.';
	@override String get statusProviderUpdateRequired => 'התקינו או עדכנו את Health Connect כדי להמשיך.';
	@override String get statusUnavailable => 'Health Connect אינו נתמך במכשיר הזה.';
	@override String get installOrUpdate => 'התקנה או עדכון';
	@override String get manageAccess => 'ניהול גישה';
	@override String statusPermissionDenied({required Object appLabel}) => 'הרשאה נדחתה. אנא אפשר הרשאות ל-Health Connect בהגדרות הטלפון עבור ${appLabel}.';
	@override String statusError({required Object error}) => 'שגיאה בהגדרת Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$he extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$he trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$he._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$he healthProfile = _Translations$onboarding$reinforcement$healthProfile$he._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$he goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$he._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$he extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$home$dailyGoal$he extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
	@override String get kcal => 'קק״ל';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$he extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$home$intakeProgress$he extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'חלוקת המאקרו של היום';
	@override String get target => 'יעד';
	@override String get current => 'נוכחי';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$he extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'היסטוריית מאקרו ל-7 ימים';
	@override String get trendTitle => 'מגמת היום';
	@override String peakHour({required Object hour}) => 'שיא: ${hour}:00';
	@override String get noHistoryYet => 'עדיין אין היסטוריה';
	@override String get startLogging => 'התחל לרשום ארוחות כדי לראות כאן\nמגמות מאקרו ל-7 ימים';
}

// Path: home.mealLog
class _Translations$home$mealLog$he extends Translations$home$mealLog$en {
	_Translations$home$mealLog$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ארוחות שנרשמו';
	@override String get emptyMessage => 'צלם תמונה של הארוחה האחרונה שלך כדי לרשום כאן.';
	@override String get noMealsToday => 'אין ארוחות שנרשמו להיום';
	@override String get seeAllMeals => 'ראה את כל הארוחות';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$he extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הוספה מהירה עם AI';
	@override String get description => 'תאר את הארוחה ותן ל-AI לדאוג לפרטים.';
	@override String get hint => 'למשל: בארוחת בוקר היה לי קערת שיבולת שועל גדולה עם בננה פרוסה וכפית אבקת חלבון...';
	@override String get analyzeMeal => 'נתח ארוחה';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$he extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$home$mealSnap$he extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$home$connectHealth$he extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'סנכרן עם Health Connect';
	@override String get description => 'סנכרן את נתוני התזונה שלך עם Health Connect';
	@override String get install => 'התקן';
	@override String get dataUseDescription => 'השתמשו בקלוריות שנשרפו ביעד ושתפו ארוחות שתועדו';
	@override String get installOrUpdate => 'התקנה או עדכון';
	@override String get connect => 'חבר';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$he extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get calories => 'קלוריות';
	@override String get carbs => 'פחמימות (ג\')';
	@override String get protein => 'חלבון (ג\')';
	@override String get fat => 'שומן (ג\')';
	@override String get fiber => 'סיבים (ג\')';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$he extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מחיקת ארוחה';
	@override String get message => 'האם אתה בטוח שברצונך למחוק רשומת ארוחה זו?';
	@override String get cancel => 'ביטול';
	@override String get delete => 'מחק';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$he extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'שאלה ${current} מתוך ${total}';
	@override String get noQuestionsAvailable => 'אין שאלות זמינות';
	@override String get next => 'הבא';
	@override String get continueLabel => 'המשך';
}

// Path: meal.analysis
class _Translations$meal$analysis$he extends Translations$meal$analysis$en {
	_Translations$meal$analysis$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$meal$localInference$he extends Translations$meal$localInference$en {
	_Translations$meal$localInference$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$meal$feedback$he extends Translations$meal$feedback$en {
	_Translations$meal$feedback$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$favorites$sortOptions$he extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get recent => 'אחרונים';
	@override String get calories => 'קלוריות';
	@override String get alphabetical => 'A-ת';
}

// Path: profile.sections
class _Translations$profile$sections$he extends Translations$profile$sections$en {
	_Translations$profile$sections$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'פרופיל';
	@override String get basicInformation => 'מידע בסיסי';
	@override String get goalsAndActivity => 'מטרות & פעילות';
	@override String get calculatedValues => 'ערכים מחושבים';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$he extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'מטרה יומית';
	@override String get calPerDay => 'קלוריות/יום';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$he extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'מידע אישי';
	@override String get physicalMeasurements => 'מדידות פיזיות';
	@override String get goalsAndActivity => 'מטרות & פעילות';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$he extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get male => 'זכר';
	@override String get female => 'נקבה';
	@override String get other => 'אחר';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$he extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$he loseWeight = _Translations$editProfile$weightGoals$loseWeight$he._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$he maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$he._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$he gainWeight = _Translations$editProfile$weightGoals$gainWeight$he._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$he extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$he sedentary = _Translations$editProfile$activityLevels$sedentary$he._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$he lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$he._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$he moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$he._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$he veryActive = _Translations$editProfile$activityLevels$veryActive$he._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$he extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$he._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$he extends Translations$settings$sections$en {
	_Translations$settings$sections$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'פרופיל';
	@override String get localization => 'מיקום שפה';
	@override String get notifications => 'התראות';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'ניתוח במכשיר';
	@override String get supportAndLegal => 'תמיכה & משפטי';
	@override String get about => 'אודות';
	@override String get dangerZone => 'אזור מסוכן';
	@override String get developer => 'מפתח';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$he extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ערוך פרופיל';
	@override String get subtitle => 'עדכן את המידע האישי שלך';
}

// Path: settings.language
class _Translations$settings$language$he extends Translations$settings$language$en {
	_Translations$settings$language$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'שפה';
	@override String get subtitle => 'בחר את שפת הממשק המועדפת עליך';
	@override String get searchHint => 'חפש שפות...';
	@override String get noResults => 'לא נמצאו תוצאות';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$he extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'יחידת גובה';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$he extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'יחידת משקל';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$he extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'תזכורות ארוחות';
	@override String get subtitle => 'הישאר על המסלול עם התראות בזמן';
}

// Path: settings.localInference
class _Translations$settings$localInference$he extends Translations$settings$localInference$en {
	_Translations$settings$localInference$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$settings$theme$he extends Translations$settings$theme$en {
	_Translations$settings$theme$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'נושא';
	@override String get light => 'בהיר';
	@override String get dark => 'כהה';
	@override String get system => 'מערכת';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$he extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$settings$exportMealHistory$he extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ייצא היסטוריית ארוחות';
	@override String get subtitle => 'שתף CSV של הארוחות שנרשמו';
	@override String get shareText => 'ייצוא היסטוריית הארוחות של Calorify שלך';
	@override String failed({required Object error}) => 'לא ניתן לייצא היסטוריית הארוחות: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$he extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'נקה את כל הנתונים';
	@override String get subtitle => 'מחק ללא אפשרות שחזור את כל המידע שלך';
	@override String get localOnlySubtitle => 'מחיקת נתוני Calorify המאוחסנים במכשיר הזה';
	@override String get confirmationTitle => 'לנקות את כל הנתונים?';
	@override String get confirmationMessage => 'פעולה זו לא ניתנת לביטול. כל הארוחות שנרשמו, המועדפים והגדרות הפרופיל ימחקו לצמיתות.';
	@override String get localOnlyConfirmationMessage => 'פעולה זו מוחקת לצמיתות מהמכשיר הזה ארוחות שתועדו, מועדפים והגדרות פרופיל. ארוחות שכבר שותפו עם Health Connect והגישה ל-Health Connect מנוהלות בנפרד בהגדרות > Health Connect.';
	@override String get cancel => 'ביטול';
	@override String get clearEverything => 'נקה הכל';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$he extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אפשרויות דיבוג';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$he extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'הצג ונהל הרשאות';
	@override late final _Translations$settings$healthConnect$unavailable$he unavailable = _Translations$settings$healthConnect$unavailable$he._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$he updateRequired = _Translations$settings$healthConnect$updateRequired$he._(_root);
	@override late final _Translations$settings$healthConnect$permissions$he permissions = _Translations$settings$healthConnect$permissions$he._(_root);
	@override String get managePermissions => 'נהל הרשאות';
	@override String get openSettings => 'פתח הגדרות Health Connect';
	@override String get disconnect => 'ניתוק Health Connect';
	@override String get disconnectConfirmationTitle => 'לנתק את Health Connect?';
	@override String get disconnectConfirmationMessage => 'ל-Calorify לא תהיה עוד גישה ל-Health Connect. נתונים שכבר נכתבו שם לא יימחקו.';
	@override String get disconnectConfirmationAction => 'ניתוק';
	@override String get deleteSyncedMeals => 'מחיקת ארוחות Calorify מ-Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'למחוק ארוחות מסונכרנות?';
	@override String get deleteSyncedMealsConfirmationMessage => 'למחוק מ-Health Connect ארוחות שסונכרנו באמצעות גרסה זו של Calorify? יומן הארוחות המקומי לא ישתנה. ייתכן שיהיה צורך למחוק רשומות ישנות יותר של Calorify בנפרד באמצעות ניהול נתונים ב-Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'מחיקת ארוחות מסונכרנות';
	@override String get deleteSyncedMealsSuccess => 'ארוחות Calorify נמחקו מ-Health Connect.';
	@override String get deleteSyncedMealsFailed => 'לא ניתן למחוק את הארוחות המסונכרנות. נסו שוב.';
	@override String get connectionPartial => 'חלק מתכונות Health Connect מופעלות.';
	@override String get connectionComplete => 'שתי התכונות של Health Connect מופעלות.';
	@override String get actionFailed => 'לא ניתן לפתוח את Health Connect. נסו שוב.';
	@override String get requestPermissions => 'בקש הרשאות';
	@override String get permissionRequestCancelledOrFailed => 'בקשת ההרשאה בוטלה או נכשלה. אנא נסה שוב או אפשר הרשאות באופן ידני בהגדרות Health Connect.';
	@override String get permissionRequestFailed => 'לא ניתן לבקש הרשאות. אנא נסה שוב או אפשר הרשאות באופן ידני בהגדרות Health Connect.';
	@override String get requestingPermissions => 'מבקש…';
}

// Path: settings.about
class _Translations$settings$about$he extends Translations$settings$about$en {
	_Translations$settings$about$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אודות';
	@override String get tagline => 'מודעות קלוריות מהירה, חינמית ובעדיפות לפרטיות';
	@override late final _Translations$settings$about$ourStory$he ourStory = _Translations$settings$about$ourStory$he._(_root);
	@override late final _Translations$settings$about$privacy$he privacy = _Translations$settings$about$privacy$he._(_root);
	@override late final _Translations$settings$about$developer$he developer = _Translations$settings$about$developer$he._(_root);
	@override late final _Translations$settings$about$feedback$he feedback = _Translations$settings$about$feedback$he._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$he extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify גרסה ${version}';
	@override String build({required Object buildNumber}) => 'בנייה ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$he extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן ארוחת בוקר! 🍳';
	@override String get body => 'אל תשכח/י לרשום את ארוחת הבוקר שלך';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$he extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן ארוחת צהריים! 🥗';
	@override String get body => 'הגיע הזמן לרשום את ארוחת הצהריים';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$he extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן ארוחת ערב! 🍽️';
	@override String get body => 'אל תשכח/י לרשום את ארוחת הערב שלך';
}

// Path: notifications.snack
class _Translations$notifications$snack$he extends Translations$notifications$snack$en {
	_Translations$notifications$snack$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זמן נשנוש! 🍎';
	@override String get body => 'הגיע הזמן לנשנוש בריא';
}

// Path: notifications.test
class _Translations$notifications$test$he extends Translations$notifications$test$en {
	_Translations$notifications$test$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'התראת בדיקה';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$he extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} מספקת מידע תזונתי מוערך. הדיוק תלוי בקלט שלך ובשונות של המזון. השתמש/י בזה כהנחיה, לא כמקור מוחלט. להתייעצות אישית התייעץ/י עם איש מקצוע.';
	@override late final _Translations$disclaimer$snap$portionSize$he portionSize = _Translations$disclaimer$snap$portionSize$he._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$he preparationMethods = _Translations$disclaimer$snap$preparationMethods$he._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$he ingredients = _Translations$disclaimer$snap$ingredients$he._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$he databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$he._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$he extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'על אומדן שינוי משקל';
	@override String get description => 'שינוי משקל משוער הוא חישוב תאורטי המבוסס על מודל קלוריות פנימה מול קלוריות החוצה. הוא מיועד כהנעה מוטיבציונית בלבד, לא כנבואה למשקל בפועל.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$he calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$he._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$he biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$he._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$he waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$he._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$he professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$he._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$he extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get description => 'מדדים אלה עוזרים לך להבין את צרכי האנרגיה של גופך ומנחים את יעדי התזונה שלך.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$he bmr = _Translations$disclaimer$healthMetrics$bmr$he._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$he tdee = _Translations$disclaimer$healthMetrics$tdee$he._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$he dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$he._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$he extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אומדן הוצאה קלורית';
	@override String get description => 'כאשר נתוני Health Connect אינם זמינים, אנו מעריכים את הקלוריות שנשרפו היום באמצעות ה-BMR שלך ורמת הפעילות (TDEE), פרופורציונלית לחלק היומי שעבר.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$he howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$he._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$he professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$he._(_root);
}

// Path: watch.common
class _Translations$watch$common$he extends Translations$watch$common$en {
	_Translations$watch$common$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get back => 'חזור';
	@override String get cancel => 'ביטול';
	@override String get delete => 'מחק';
	@override String get retry => 'נסה שוב';
	@override String get kcal => 'קק"ל';
	@override String get gramsShort => 'ג׳';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$he extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'רכיב תזונתי';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} גרם';
	@override String get protein => 'חלבון';
	@override String get carbs => 'פחמימות';
	@override String get fat => 'שומן';
	@override String get fiber => 'סיבים תזונתיים';
}

// Path: watch.sync
class _Translations$watch$sync$he extends Translations$watch$sync$en {
	_Translations$watch$sync$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'סנכרן עם הטלפון';
	@override String get syncing => 'מסנכרן…';
	@override String get synced => 'סונכרן';
	@override String get syncedJustNow => 'סונכרן זה עתה';
	@override String syncedMinutesAgo({required Object minutes}) => 'סונכרן לפני ${minutes} דק׳';
	@override String get failed => 'הסנכרון נכשל';
	@override String get phoneDisconnected => 'הטלפון מנותק';
	@override String get tapToSync => 'הקש לסנכרון';
	@override String get refreshFailed => 'לא ניתן לרענן. בדוק את הטלפון שלך.';
	@override String get openPhone => 'פתח את Calorify בטלפון שלך, ואז הקש רענן.';
}

// Path: watch.home
class _Translations$watch$home$he extends Translations$watch$home$en {
	_Translations$watch$home$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get today => 'היום';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} קלוריות נצרכו מתוך ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} מעל היעד';
	@override String remaining({required Object calories}) => '${calories} נותרו';
	@override String left({required Object calories}) => '${calories} נותרו';
	@override String goal({required Object calories}) => 'יעד: ${calories} קק"ל';
	@override String get logMeal => 'תעד ארוחה';
	@override String get todayMeals => 'הארוחות של היום';
	@override String todayMealsCount({required Object count}) => 'הארוחות של היום, ${count}';
	@override String viewMore({required Object count}) => 'הצג ${count} נוספות';
	@override String viewMoreSemantics({required Object count}) => '${count} ארוחות נוספות, הקש כדי להציג את כולן';
	@override String get noMeals => 'לא תועדו ארוחות';
	@override String get noMealsSemantics => 'לא תועדו ארוחות היום';
	@override String get tapLog => 'הקש \'תעד\' כדי להתחיל';
	@override String get removedFromQueue => 'הארוחה הוסרה מהתור הלא מקוון.';
	@override String get removedOffline => 'הארוחה הוסרה באופן לא מקוון. היא תסונכרן כשהטלפון שלך יתחבר מחדש.';
	@override String get deleteFailed => 'לא ניתן למחוק ארוחה';
}

// Path: watch.history
class _Translations$watch$history$he extends Translations$watch$history$en {
	_Translations$watch$history$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הארוחות של היום';
	@override String get refresh => 'רענן ארוחות';
	@override String get loadFailed => 'לא ניתן לטעון ארוחות';
	@override String get syncFailed => 'לא ניתן לסנכרן';
	@override String get emptyTitle => 'אין ארוחות עדיין';
	@override String get emptyMessage => 'תעד ארוחה ממסך הבית כדי לראות אותה כאן.';
}

// Path: watch.favorites
class _Translations$watch$favorites$he extends Translations$watch$favorites$en {
	_Translations$watch$favorites$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מועדפים';
	@override String get refresh => 'רענן מועדפים';
	@override String get loadFailed => 'לא ניתן לטעון מועדפים';
	@override String get syncFailed => 'לא ניתן לסנכרן';
	@override String get emptyTitle => 'אין מועדפים עדיין';
	@override String get emptyMessage => 'סמן ארוחות בכוכב באפליקציית הטלפון לתיעוד בלחיצה אחת כאן.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} קלוריות. הקש כדי לתעד.';
	@override String logged({required Object name}) => '${name} תועדה!';
	@override String savedOffline({required Object name}) => '${name} נשמרה באופן לא מקוון. היא תסונכרן כשהטלפון שלך יתחבר מחדש.';
	@override String get saveFailed => 'לא ניתן לשמור את הארוחה. אנא נסה שוב.';
	@override String get log => 'תעד';
}

// Path: watch.meal
class _Translations$watch$meal$he extends Translations$watch$meal$en {
	_Translations$watch$meal$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} קלוריות, תועדה ב-${time}.';
	@override String get longPressDelete => 'לחץ לחיצה ארוכה למחיקה.';
	@override String get deleteTitle => 'למחוק ארוחה?';
}

// Path: watch.voice
class _Translations$watch$voice$he extends Translations$watch$voice$en {
	_Translations$watch$voice$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'תיעוד ארוחה קולי';
	@override String get processing => 'בודק את הארוחה שלך…';
	@override String get processingDescription => 'מעריך מנות ותזונה';
	@override String get listening => 'מאזין';
	@override String secondsLeft({required Object seconds}) => '${seconds} שנ׳';
	@override String get stop => 'הפסק הקלטה';
	@override String get start => 'הקש כדי להתחיל להקליט';
	@override String get starting => 'מפעיל מיקרופון…';
	@override String get prompt => 'הקש, ואז תאר את הארוחה שלך';
	@override String get tapToRetry => 'הקש כדי לנסות שוב';
	@override String get example => 'נסה ״2 רוטי עם דאל״';
	@override String get unavailable => 'קלט קולי אינו זמין. בדוק את הרשאת המיקרופון בהגדרות השעון.';
	@override String get didNotStart => 'המיקרופון לא התחיל. הקש כדי לנסות שוב.';
	@override String get startFailed => 'לא ניתן להתחיל הקלטה. בדוק הרשאות מיקרופון.';
	@override String get allowMicrophone => 'אפשר גישה למיקרופון כדי לתעד ארוחות בקול.';
	@override String get needsConnection => 'זיהוי קולי דורש חיבור. הקש כדי לנסות שוב.';
	@override String get microphoneUnavailable => 'המיקרופון אינו זמין. הקש כדי לנסות שוב.';
	@override String get microphoneBusy => 'המיקרופון תפוס. המתן רגע ונסה שוב.';
	@override String get languageUnsupported => 'קלט קולי אינו תומך בשפת השעון.';
	@override String get temporarilyBusy => 'קלט קולי תפוס זמנית. המתן רגע ונסה שוב.';
	@override String get notRecognized => 'לא קלטתי את זה. הקש על המיקרופון ונסה שוב.';
	@override String get noSpeech => 'לא זוהתה דיבור. הקש על המיקרופון כדי לנסות שוב.';
	@override String get analysisFailed => 'הניתוח נכשל. אנא נסה שוב.';
	@override String get mealNotIdentified => 'לא ניתן לזהות את הארוחה הזו. נסה לתאר אותה אחרת.';
}

// Path: watch.result
class _Translations$watch$result$he extends Translations$watch$result$en {
	_Translations$watch$result$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'פרטי ארוחה';
	@override String get savedOffline => 'נשמר באופן לא מקוון';
	@override String get logged => 'תועדה!';
	@override String get mealFound => 'ארוחה נמצאה';
	@override String get estimatedEnergy => 'אנרגיה מוערכת';
	@override String get logMeal => 'תעד ארוחה';
	@override String get logging => 'מתעד…';
	@override String get logAnother => 'תעד ארוחה נוספת';
	@override String get goingBack => 'חוזר אחורה…';
	@override String get savedOfflineMessage => 'הארוחה נשמרה באופן לא מקוון. היא תסונכרן כשהטלפון שלך יתחבר מחדש.';
	@override String get saveFailed => 'לא ניתן לשמור את הארוחה. אנא נסה שוב.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$he extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'זיהוי אוכל חכם';
	@override String get description => 'צלם תמונה ותן ל-AI לזהות את הארוחה שלך';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$he extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ניתוח AI';
	@override String get description => 'קבל נתוני תזונה מיידיים מתאורים שלך';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$he extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אינטגרציה עם Health Connect';
	@override String get description => 'חבר ל-Health Connect לקבלת תובנות טובות יותר';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$he extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'תת משקל';
	@override String get healthyWeight => 'משקל בריא';
	@override String get overweight => 'עודף משקל';
	@override String get obese => 'השמנת יתר';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$he extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'נוכל לעזור לך לבנות תוכנית בריאה להגיע למשקל מאוזן עם ארוחות עשירות בתזונה.';
	@override String get healthy => 'כל הכבוד! אתה בטווח בריא. נעזור לך לשמור על החיוניות והרמות אנרגיה שלך.';
	@override String overweight({required Object appLabel}) => '${appLabel} יפשט את המסע שלך עם מעקב מונחה AI שיעזור לך להגיע ליעד בנוחות.';
	@override String get obese => 'אנחנו כאן לתמוך בך עם הנחיות מותאמות ואסטרטגיות ברות קיימא למטרות הבריאות שלך.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$he extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מעקב קלוריות אוטומטי';
	@override String get description => 'עקוב אחר הקלוריות שנשרפו מתוך אפליקציות הכושר שלך';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$he extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'קלוריות שנשרפו';
	@override String get description => 'קראו את סך הקלוריות שנשרפו היום מ-Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$he extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'תובנות התקדמות';
	@override String get description => 'קבל תובנות מפורטות על מגמות הבריאות שלך';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$he extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'שיתוף ארוחות שתועדו';
	@override String get description => 'כתבו ארוחות שתועדו ב-Calorify אל Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$he extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'אינטגרציה חלקה';
	@override String get description => 'סנכרן נתונים מאפליקציות הבריאות האהובות עליך';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$he extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'השליטה בידיים שלכם';
	@override String get description => 'בחרו באחת מההרשאות ושנו את הגישה בכל עת';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$he extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$healthProfile$he extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$goalLifestyle$he extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$weightGoals$loseWeight$he extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'להוריד משקל';
	@override String get description => 'יצירת גרעון קלורי להורדת משקל';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$he extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'לשמור על משקל';
	@override String get description => 'שמירה על המשקל הנוכחי';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$he extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'להעלות משקל';
	@override String get description => 'יצירת עודף קלורי להעלאת משקל';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$he extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'יושבני';
	@override String get description => 'מעט או ללא פעילות גופנית';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$he extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעילות קלה';
	@override String get description => 'אימון קל 1-3 ימים/שבוע';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$he extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעילות מתונה';
	@override String get description => 'אימון מתון 3-5 ימים/שבוע';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$he extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעילות גבוהה';
	@override String get description => 'אימון קשה 6-7 ימים/שבוע';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$he extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get name => 'פעילות אינטנסיבית';
	@override String get description => 'עבודה פיזית קשה או אימון מאוד אינטנסיבי';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$he extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect לא זמין';
	@override String get description => 'Health Connect אינו זמין במכשיר זה. אנא התקן את Health Connect מה-Play Store (Android 9+) או עדכן ל-Android 14+.';
	@override String get unsupportedDescription => 'Health Connect אינו נתמך במכשיר הזה.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$he extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect דורש טיפול';
	@override String get description => 'יש להתקין או לעדכן את Health Connect לפני ניהול הגישה.';
	@override String get action => 'התקנה או עדכון';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$he extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הרשאות';
	@override String get description => 'מבוקשות ההרשאות הבאות כדי לאפשר אינטגרציה עם Health Connect:';
	@override String get granted => 'הוענקו';
	@override String get notGranted => 'לא הוענקו';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$he caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$he._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$he nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$he._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$he nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$he._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$he extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הסיפור שלנו';
	@override String content({required Object appLabel}) => '${appLabel} נולדה מתוך תסכול פשוט: רוב אפליקציות המעקב אחרי קלוריות או מסובכות מדי, או דורשות הקלדה ידנית מתמדת, גובות דמי מנוי גבוהים, או פוגעות בפרטיות.\n\nכאשר מפתח יחיד עמד מאחורי הרעיון, רציתי לבנות משהו פשוט והוגן — אפליקציה שמשתמשת ב-AI להפחית את המאמץ, נשארת מהירה וחינמית לשימוש, ומכבדת את נתוני הבריאות שלך.\n\n${appLabel} היא האפליקציה שהייתי רוצה שתהיה קיימת: ללא חשבונות, ללא איסוף מעקב, ללא פרסומות — רק תובנות ברורות ומעשיות ומטרות בריאות אישיות.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$he extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הפרטיות שלך חשובה';
	@override String get description => 'פרטיות אינה מחשבה מאוחרת — זו עקרון עיצובי. הנה מה זה אומר בפועל:';
	@override String get noAccounts => 'אין דרישות להקמת חשבונות\nהשתמש באפליקציה מיד. ללא הרשמות, ללא זיהויים.';
	@override String noTracking({required Object appLabel}) => 'ללא מעקב התנהגותי\n${appLabel} אינה עוקבת אחרי הפעילות שלך, אינה בונה פרופילים שימושיים, ולא עוקבת אחרי שימושך באפליקציות או אתרי אינטרנט.';
	@override String analyticsDisclosure({required Object appLabel}) => 'ניתוח ואבחון מוגבלים\n${appLabel} משתמשת באירועי אפליקציה בסיסיים ובאבחון קריסות כדי לשפר את האמינות. ערכי רשומות בריאות אינם משמשים לפרסום ואינם נמכרים.';
	@override String noAds({required Object appLabel}) => 'ללא פרסומות לפי עיצוב\n${appLabel} נבנתה לפעול ללא פרסומות או מונטיזציה מבוססת נתונים.';
	@override String get noDataSelling => 'אין מכירת נתונים\nנתוני הבריאות שלך אינם נמכרים או משותפים לצדדים שלישיים.';
	@override String get localStorage => 'אחסון מקומי כעיקרון\nהנתונים שלך נשארים על המכשיר שלך.';
	@override String get privacyPolicy => 'מדיניות פרטיות';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$he extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'נבנה על ידי מפתח עצמאי';
	@override String description({required Object appLabel}) => '${appLabel} נבנתה ומנוהלת על ידי מפתח יחיד המתמקד ביצירת תוכנת בריאות רגועה המכבדת פרטיות.\n\nהמשובים נקראים באופן אישי ועוזרים לעצב את כיוון האפליקציה.';
	@override String get website => 'אתר';
	@override String get email => 'אימייל';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$he extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'נהנים מ-${appLabel}?';
	@override String description({required Object appLabel}) => 'המשוב שלך עוזר לשפר את ${appLabel} עבור כולם.';
	@override String get rateApp => 'דרג ב-Play Store';
	@override String get sendFeedback => 'שלח משוב';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$he extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'גודל מנה';
	@override String get description => 'דיוק הערכות תלוי במידה רבה בהערכת גודל המנה על ידך.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$he extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'שיטות הכנה';
	@override String description({required Object appLabel}) => 'שיטות בישול יכולות לשנות משמעותית את התוכן התזונתי. ההערכות של ${appLabel} עשויות שלא תמיד להתחשב בכל השינויים האלו.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$he extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מרכיבים';
	@override String get description => 'מנות מורכבות עם מרכיבים נסתרים רבים עלולות להוביל להערכות פחות מדויקות.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$he extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מגבלות מאגר הנתונים';
	@override String description({required Object appLabel}) => 'מאגר המזונות של ${appLabel} הוא רחב אך עשוי שלא לכלול כל פריט או וריאציה.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$he extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'דיוק הקלוריות';
	@override String get description => 'הערכה זו מדויקת ככל שהרישום שלך של צריכת ושריפת הקלוריות מדויק. רישום שגוי יוביל להערכה שגויה.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$he extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'גורמים ביולוגיים';
	@override String description({required Object appLabel}) => 'הורדה/עלייה ממשית במשקל מושפעת ממטבוליזם, הורמונים, שינה, מתח, רמת נוזלים וגורמים אישיים אחרים ש-${appLabel} לא יכולה למדוד.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$he extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'משקל מים ותנודות';
	@override String get description => 'משקל יומי רגיל יכול להשתנות משמעותית בגלל החזקת מים, עיכול וזמנים. ההערכה אינה מתחשבת בתנודות יומיות אלו.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$he extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הנחיה מקצועית';
	@override String get description => 'אל תשתמש/י בהערכה זו לקבלת החלטות רפואיות. תמיד התייעץ/י עם איש מקצוע בתחום הבריאות או דיאטן מוסמך לקבלת ייעוץ מותאם.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$he extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) הוא מספר הקלוריות שגופך שורף במנוחה כדי לקיים פונקציות בסיסיות כמו נשימה וזרימת דם. ה-BMR תלוי בגיל, מגדר, גובה ומשקל. BMR גבוה יותר משקף שריפת קלוריות במנוחה גבוהה יותר, לעיתים בשל מסת שריר גבוהה יותר, גיל צעיר יותר או מגדר זכר. BMR נמוך יותר מעיד בדרך כלל על מסת שריר נמוכה יותר, גיל מתקדם יותר או מגדר נקבה.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$he extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) הוא כלל הקלוריות שאתה שורף ביום, כולל ה-BMR שלך יחד עם הקלוריות מפעילות גופנית ותנועה יומית. ה-TDEE תלוי ב-BMR וברמת הפעילות שלך. TDEE גבוה יותר אומר שאתה שורף יותר קלוריות בסך הכל, בדרך כלל בגלל פעילות רבה יותר או BMR גבוה יותר. TDEE נמוך יותר מצביע על פחות פעילות יומית או BMR נמוך יותר.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$he extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'מטרה יומית';
	@override String get description => 'המטרה היומית היא צריכת הקלוריות המומלצת עבורך בהתבסס על ה-TDEE והמטרה המשקלית שלך. לאובדן משקל צורכים פחות קלוריות מה-TDEE. לשימור משקל מתאימים ל-TDEE. לעלייה במשקל צורכים יותר קלוריות מה-TDEE. זה עוזר להשיג את שינוי המשקל הרצוי בקצב בריא.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$he extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'כיצד מחושב האומדן';
	@override String get description => 'אנו מחשבים את ה-TDEE שלך (בהתבסס על הפרופיל) ומכפילים אותו בחלק של היום שעבר (שעות + דקות) / 24 כדי להעריך את הקלוריות שנשרפו עד כה.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$he extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'הנחיה מקצועית';
	@override String get description => 'אל תשתמש/י באומדן זה לקבלת החלטות רפואיות. תמיד התייעץ/י עם איש מקצוע בתחום הבריאות או דיאטן מוסמך לקבלת ייעוץ מותאם.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$he extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'קריאת סך הקלוריות שנשרפו';
	@override String get description => 'מאפשר לאפליקציה לקרוא את סך הקלוריות שנשרפו מ-Health Connect.';
	@override String get usage => 'הרשאה זו משמשת להצגת צריכת הקלוריות היומית שלך באפליקציה, ועוזרת להבין את ההוצאה האנרגטית הכוללת שלך במהלך היום.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$he extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$he._(TranslationsHe root) : this._root = root, super.internal(root);

	final TranslationsHe _root; // ignore: unused_field

	// Translations
	@override String get title => 'קריאת נתוני תזונה';
	@override String get description => 'מאפשר לאפליקציה לקרוא נתוני תזונה מתוך Health Connect.';
	@override String get usage => 'הרשאה זו מאפשרת לאפליקציה לקרוא מידע תזונתי שאולי הוזן על ידי אפליקציות אחרות המחוברות ל-Health Connect, ולספק תמונה מקיפה של התזונה שלך.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$he extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$he._(TranslationsHe root) : this._root = root, super.internal(root);

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
			'onboarding.healthConnect.overviewDescription' => 'השתמשו בקלוריות שנשרפו ביעד היומי ושתפו לפי בחירה ארוחות שתועדו עם Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'מעקב קלוריות אוטומטי',
			'onboarding.healthConnect.automaticTracking.description' => 'עקוב אחר הקלוריות שנשרפו מתוך אפליקציות הכושר שלך',
			'onboarding.healthConnect.caloriesBurned.title' => 'קלוריות שנשרפו',
			'onboarding.healthConnect.caloriesBurned.description' => 'קראו את סך הקלוריות שנשרפו היום מ-Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'תובנות התקדמות',
			'onboarding.healthConnect.progressInsights.description' => 'קבל תובנות מפורטות על מגמות הבריאות שלך',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'שיתוף ארוחות שתועדו',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'כתבו ארוחות שתועדו ב-Calorify אל Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => 'אינטגרציה חלקה',
			'onboarding.healthConnect.seamlessIntegration.description' => 'סנכרן נתונים מאפליקציות הבריאות האהובות עליך',
			'onboarding.healthConnect.userControl.title' => 'השליטה בידיים שלכם',
			'onboarding.healthConnect.userControl.description' => 'בחרו באחת מההרשאות ושנו את הגישה בכל עת',
			'onboarding.healthConnect.connected' => 'Health Connect מחובר',
			'onboarding.healthConnect.notConnected' => 'Health Connect לא מחובר',
			'onboarding.healthConnect.setup' => 'הגדר Health Connect',
			'onboarding.healthConnect.skipForNow' => 'דלג לעכשיו',
			'onboarding.healthConnect.statusConnected' => 'Health Connect מחובר.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect חובר בהצלחה!',
			'onboarding.healthConnect.statusNotConnected' => 'בחרו את תכונות Health Connect שברצונכם להפעיל.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect מחובר חלקית. הפעילו את ההרשאה הנותרת כדי להשתמש בשתי התכונות.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'התקינו או עדכנו את Health Connect כדי להמשיך.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect אינו נתמך במכשיר הזה.',
			'onboarding.healthConnect.installOrUpdate' => 'התקנה או עדכון',
			'onboarding.healthConnect.manageAccess' => 'ניהול גישה',
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
			'home.dailyGoal.kcal' => 'קק״ל',
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
			'home.connectHealth.dataUseDescription' => 'השתמשו בקלוריות שנשרפו ביעד ושתפו ארוחות שתועדו',
			'home.connectHealth.installOrUpdate' => 'התקנה או עדכון',
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
			'settings.sections.healthConnect' => 'Health Connect',
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
			'settings.clearAllData.localOnlySubtitle' => 'מחיקת נתוני Calorify המאוחסנים במכשיר הזה',
			'settings.clearAllData.confirmationTitle' => 'לנקות את כל הנתונים?',
			'settings.clearAllData.confirmationMessage' => 'פעולה זו לא ניתנת לביטול. כל הארוחות שנרשמו, המועדפים והגדרות הפרופיל ימחקו לצמיתות.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'פעולה זו מוחקת לצמיתות מהמכשיר הזה ארוחות שתועדו, מועדפים והגדרות פרופיל. ארוחות שכבר שותפו עם Health Connect והגישה ל-Health Connect מנוהלות בנפרד בהגדרות > Health Connect.',
			'settings.clearAllData.cancel' => 'ביטול',
			'settings.clearAllData.clearEverything' => 'נקה הכל',
			'settings.debugOptions.title' => 'אפשרויות דיבוג',
			'settings.developerModeEnabled' => 'מצב מפתח מופעל!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'הצג ונהל הרשאות',
			'settings.healthConnect.unavailable.title' => 'Health Connect לא זמין',
			'settings.healthConnect.unavailable.description' => 'Health Connect אינו זמין במכשיר זה. אנא התקן את Health Connect מה-Play Store (Android 9+) או עדכן ל-Android 14+.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect אינו נתמך במכשיר הזה.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect דורש טיפול',
			'settings.healthConnect.updateRequired.description' => 'יש להתקין או לעדכן את Health Connect לפני ניהול הגישה.',
			'settings.healthConnect.updateRequired.action' => 'התקנה או עדכון',
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
			'settings.healthConnect.disconnect' => 'ניתוק Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'לנתק את Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'ל-Calorify לא תהיה עוד גישה ל-Health Connect. נתונים שכבר נכתבו שם לא יימחקו.',
			'settings.healthConnect.disconnectConfirmationAction' => 'ניתוק',
			'settings.healthConnect.deleteSyncedMeals' => 'מחיקת ארוחות Calorify מ-Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'למחוק ארוחות מסונכרנות?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'למחוק מ-Health Connect ארוחות שסונכרנו באמצעות גרסה זו של Calorify? יומן הארוחות המקומי לא ישתנה. ייתכן שיהיה צורך למחוק רשומות ישנות יותר של Calorify בנפרד באמצעות ניהול נתונים ב-Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'מחיקת ארוחות מסונכרנות',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'ארוחות Calorify נמחקו מ-Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'לא ניתן למחוק את הארוחות המסונכרנות. נסו שוב.',
			'settings.healthConnect.connectionPartial' => 'חלק מתכונות Health Connect מופעלות.',
			'settings.healthConnect.connectionComplete' => 'שתי התכונות של Health Connect מופעלות.',
			'settings.healthConnect.actionFailed' => 'לא ניתן לפתוח את Health Connect. נסו שוב.',
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
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'ניתוח ואבחון מוגבלים\n${appLabel} משתמשת באירועי אפליקציה בסיסיים ובאבחון קריסות כדי לשפר את האמינות. ערכי רשומות בריאות אינם משמשים לפרסום ואינם נמכרים.',
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
			'settings.appInfo.version' => ({required Object version}) => 'Calorify גרסה ${version}',
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
			_ => null,
		} ?? switch (path) {
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
			'localNutritionPhase4.nutritionBundled' => 'נתוני התזונה הותאמו מחבילת USDA שהורדה',
			'localNutritionPhase4.nutritionCached' => 'נתוני התזונה הותאמו ממטמון USDA במכשיר',
			'localNutritionPhase4.nutritionMixed' => 'נתוני התזונה שולבו משורות USDA שהורדו, נשמרו במטמון ונשלפו מרחוק',
			'localNutritionPhase4.calculationLocal' => 'הקלוריות והמאקרו חושבו במכשיר הזה',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: חבילת USDA שהורדה',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: מטמון USDA במכשיר',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: שורת USDA שנשלפה דרך Calorify',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: קבוע תזונתי דטרמיניסטי',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · מערך נתונים ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'קטנה יותר',
			'localNutritionPhase4.portionEstimated' => 'משוערת',
			'localNutritionPhase4.portionLarger' => 'גדולה יותר',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'איזו מנה הייתה הקרובה ביותר עבור ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'איזו ארוחה זו הייתה?',
			'localNutritionPhase4.localNutritionTip' => 'חושב מנתוני תזונה מקומיים מאומתים.',
			'localNutritionPhase4.offlineNutritionTitle' => 'הורדת נתוני תזונה',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'השתמשו בשורות USDA מאומתות ובחישוב דטרמיניסטי במכשיר הזה כאשר כל המרכיבים מכוסים.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'נתוני תזונה מקומיים אינם זמינים לגרסת האפליקציה הזו.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'לא הורדה חבילת תזונה מאומתת.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'נתוני התזונה מורדים ומאומתים…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'חבילה ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} שורות USDA במטמון · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'בדיקת עדכון',
			'localNutritionPhase4.offlineNutritionClear' => 'ניקוי נתוני תזונה מקומיים',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'לנקות את נתוני התזונה המקומיים?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'פעולה זו מסירה את חבילת USDA שהורדה ואת מטמון החיפוש. ארוחות שנרשמו שומרות את תמונת המצב התזונתית המדויקת ששימשה בעת שמירתן.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'ניקוי נתונים',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'לא ניתן היה להוריד ולאמת את נתוני התזונה המקומיים: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'נתוני התזונה המקומיים נוקו',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'חזור',
			'watch.common.cancel' => 'ביטול',
			'watch.common.delete' => 'מחק',
			'watch.common.retry' => 'נסה שוב',
			'watch.common.kcal' => 'קק"ל',
			'watch.common.gramsShort' => 'ג׳',
			'watch.nutrition.nutrient' => 'רכיב תזונתי',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} גרם',
			'watch.nutrition.protein' => 'חלבון',
			'watch.nutrition.carbs' => 'פחמימות',
			'watch.nutrition.fat' => 'שומן',
			'watch.nutrition.fiber' => 'סיבים תזונתיים',
			'watch.sync.syncWithPhone' => 'סנכרן עם הטלפון',
			'watch.sync.syncing' => 'מסנכרן…',
			'watch.sync.synced' => 'סונכרן',
			'watch.sync.syncedJustNow' => 'סונכרן זה עתה',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'סונכרן לפני ${minutes} דק׳',
			'watch.sync.failed' => 'הסנכרון נכשל',
			'watch.sync.phoneDisconnected' => 'הטלפון מנותק',
			'watch.sync.tapToSync' => 'הקש לסנכרון',
			'watch.sync.refreshFailed' => 'לא ניתן לרענן. בדוק את הטלפון שלך.',
			'watch.sync.openPhone' => 'פתח את Calorify בטלפון שלך, ואז הקש רענן.',
			'watch.home.today' => 'היום',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} קלוריות נצרכו מתוך ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} מעל היעד',
			'watch.home.remaining' => ({required Object calories}) => '${calories} נותרו',
			'watch.home.left' => ({required Object calories}) => '${calories} נותרו',
			'watch.home.goal' => ({required Object calories}) => 'יעד: ${calories} קק"ל',
			'watch.home.logMeal' => 'תעד ארוחה',
			'watch.home.todayMeals' => 'הארוחות של היום',
			'watch.home.todayMealsCount' => ({required Object count}) => 'הארוחות של היום, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'הצג ${count} נוספות',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} ארוחות נוספות, הקש כדי להציג את כולן',
			'watch.home.noMeals' => 'לא תועדו ארוחות',
			'watch.home.noMealsSemantics' => 'לא תועדו ארוחות היום',
			'watch.home.tapLog' => 'הקש \'תעד\' כדי להתחיל',
			'watch.home.removedFromQueue' => 'הארוחה הוסרה מהתור הלא מקוון.',
			'watch.home.removedOffline' => 'הארוחה הוסרה באופן לא מקוון. היא תסונכרן כשהטלפון שלך יתחבר מחדש.',
			'watch.home.deleteFailed' => 'לא ניתן למחוק ארוחה',
			'watch.history.title' => 'הארוחות של היום',
			'watch.history.refresh' => 'רענן ארוחות',
			'watch.history.loadFailed' => 'לא ניתן לטעון ארוחות',
			'watch.history.syncFailed' => 'לא ניתן לסנכרן',
			'watch.history.emptyTitle' => 'אין ארוחות עדיין',
			'watch.history.emptyMessage' => 'תעד ארוחה ממסך הבית כדי לראות אותה כאן.',
			'watch.favorites.title' => 'מועדפים',
			'watch.favorites.refresh' => 'רענן מועדפים',
			'watch.favorites.loadFailed' => 'לא ניתן לטעון מועדפים',
			'watch.favorites.syncFailed' => 'לא ניתן לסנכרן',
			'watch.favorites.emptyTitle' => 'אין מועדפים עדיין',
			'watch.favorites.emptyMessage' => 'סמן ארוחות בכוכב באפליקציית הטלפון לתיעוד בלחיצה אחת כאן.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} קלוריות. הקש כדי לתעד.',
			'watch.favorites.logged' => ({required Object name}) => '${name} תועדה!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} נשמרה באופן לא מקוון. היא תסונכרן כשהטלפון שלך יתחבר מחדש.',
			'watch.favorites.saveFailed' => 'לא ניתן לשמור את הארוחה. אנא נסה שוב.',
			'watch.favorites.log' => 'תעד',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} קלוריות, תועדה ב-${time}.',
			'watch.meal.longPressDelete' => 'לחץ לחיצה ארוכה למחיקה.',
			'watch.meal.deleteTitle' => 'למחוק ארוחה?',
			'watch.voice.title' => 'תיעוד ארוחה קולי',
			'watch.voice.processing' => 'בודק את הארוחה שלך…',
			'watch.voice.processingDescription' => 'מעריך מנות ותזונה',
			'watch.voice.listening' => 'מאזין',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds} שנ׳',
			'watch.voice.stop' => 'הפסק הקלטה',
			'watch.voice.start' => 'הקש כדי להתחיל להקליט',
			'watch.voice.starting' => 'מפעיל מיקרופון…',
			'watch.voice.prompt' => 'הקש, ואז תאר את הארוחה שלך',
			'watch.voice.tapToRetry' => 'הקש כדי לנסות שוב',
			'watch.voice.example' => 'נסה ״2 רוטי עם דאל״',
			'watch.voice.unavailable' => 'קלט קולי אינו זמין. בדוק את הרשאת המיקרופון בהגדרות השעון.',
			'watch.voice.didNotStart' => 'המיקרופון לא התחיל. הקש כדי לנסות שוב.',
			'watch.voice.startFailed' => 'לא ניתן להתחיל הקלטה. בדוק הרשאות מיקרופון.',
			'watch.voice.allowMicrophone' => 'אפשר גישה למיקרופון כדי לתעד ארוחות בקול.',
			'watch.voice.needsConnection' => 'זיהוי קולי דורש חיבור. הקש כדי לנסות שוב.',
			'watch.voice.microphoneUnavailable' => 'המיקרופון אינו זמין. הקש כדי לנסות שוב.',
			'watch.voice.microphoneBusy' => 'המיקרופון תפוס. המתן רגע ונסה שוב.',
			'watch.voice.languageUnsupported' => 'קלט קולי אינו תומך בשפת השעון.',
			'watch.voice.temporarilyBusy' => 'קלט קולי תפוס זמנית. המתן רגע ונסה שוב.',
			'watch.voice.notRecognized' => 'לא קלטתי את זה. הקש על המיקרופון ונסה שוב.',
			'watch.voice.noSpeech' => 'לא זוהתה דיבור. הקש על המיקרופון כדי לנסות שוב.',
			'watch.voice.analysisFailed' => 'הניתוח נכשל. אנא נסה שוב.',
			'watch.voice.mealNotIdentified' => 'לא ניתן לזהות את הארוחה הזו. נסה לתאר אותה אחרת.',
			'watch.result.title' => 'פרטי ארוחה',
			'watch.result.savedOffline' => 'נשמר באופן לא מקוון',
			'watch.result.logged' => 'תועדה!',
			'watch.result.mealFound' => 'ארוחה נמצאה',
			'watch.result.estimatedEnergy' => 'אנרגיה מוערכת',
			'watch.result.logMeal' => 'תעד ארוחה',
			'watch.result.logging' => 'מתעד…',
			'watch.result.logAnother' => 'תעד ארוחה נוספת',
			'watch.result.goingBack' => 'חוזר אחורה…',
			'watch.result.savedOfflineMessage' => 'הארוחה נשמרה באופן לא מקוון. היא תסונכרן כשהטלפון שלך יתחבר מחדש.',
			'watch.result.saveFailed' => 'לא ניתן לשמור את הארוחה. אנא נסה שוב.',
			'common.betaTag' => 'גרסת בטא',
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
