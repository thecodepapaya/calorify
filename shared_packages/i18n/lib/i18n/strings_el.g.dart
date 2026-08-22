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
class TranslationsEl extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.el,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <el>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsEl _root = this; // ignore: unused_field

	@override 
	TranslationsEl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEl(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Ελληνικά';
	@override String get flag => '🇬🇷';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsEl errors = _TranslationsErrorsEl._(_root);
	@override late final _TranslationsOnboardingEl onboarding = _TranslationsOnboardingEl._(_root);
	@override late final _TranslationsTabsEl tabs = _TranslationsTabsEl._(_root);
	@override late final _TranslationsHomeEl home = _TranslationsHomeEl._(_root);
	@override late final _TranslationsHistoryEl history = _TranslationsHistoryEl._(_root);
	@override late final _TranslationsMealEl meal = _TranslationsMealEl._(_root);
	@override late final _TranslationsFavoritesEl favorites = _TranslationsFavoritesEl._(_root);
	@override late final _TranslationsProfileEl profile = _TranslationsProfileEl._(_root);
	@override late final _TranslationsHealthScoreEl healthScore = _TranslationsHealthScoreEl._(_root);
	@override late final _TranslationsEditProfileEl editProfile = _TranslationsEditProfileEl._(_root);
	@override late final _TranslationsSettingsEl settings = _TranslationsSettingsEl._(_root);
	@override late final _TranslationsRemindersEl reminders = _TranslationsRemindersEl._(_root);
	@override late final _TranslationsNotificationsEl notifications = _TranslationsNotificationsEl._(_root);
	@override late final _TranslationsLoginEl login = _TranslationsLoginEl._(_root);
	@override late final _TranslationsDisclaimerEl disclaimer = _TranslationsDisclaimerEl._(_root);
	@override late final _TranslationsLocalNutritionPhase4El localNutritionPhase4 = _TranslationsLocalNutritionPhase4El._(_root);
	@override late final _TranslationsCommonEl common = _TranslationsCommonEl._(_root);
	@override late final _TranslationsFeedbackRatingEl feedbackRating = _TranslationsFeedbackRatingEl._(_root);
	@override late final _TranslationsHealthEl health = _TranslationsHealthEl._(_root);
}

// Path: errors
class _TranslationsErrorsEl extends TranslationsErrorsEn {
	_TranslationsErrorsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Έχετε κάνει πάρα πολλά αιτήματα. Περιμένετε λίγο πριν προσπαθήσετε ξανά.';
	@override String get networkError => 'Σφάλμα δικτύου. Ελέγξτε τη σύνδεσή σας στο διαδίκτυο.';
	@override String get unknownError => 'Κάτι πήγε στραβά. Παρακαλώ δοκιμάστε ξανά αργότερα.';
	@override String get loadingProfileData => 'Σφάλμα κατά τη φόρτωση των δεδομένων προφίλ';
	@override String get somethingWentWrong => 'Κάτι πήγε στραβά.';
	@override String get retry => 'Δοκιμάστε ξανά';
}

// Path: onboarding
class _TranslationsOnboardingEl extends TranslationsOnboardingEn {
	_TranslationsOnboardingEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Καλώς ορίσατε στο ${appLabel}';
	@override String get subtitle => 'Ο προσωπικός σας σύμβουλος διατροφής με AI';
	@override String get getStarted => 'Ξεκινήστε';
	@override late final _TranslationsOnboardingFeaturesEl features = _TranslationsOnboardingFeaturesEl._(_root);
	@override late final _TranslationsOnboardingGenderEl gender = _TranslationsOnboardingGenderEl._(_root);
	@override late final _TranslationsOnboardingHeightEl height = _TranslationsOnboardingHeightEl._(_root);
	@override late final _TranslationsOnboardingWeightEl weight = _TranslationsOnboardingWeightEl._(_root);
	@override late final _TranslationsOnboardingAgeEl age = _TranslationsOnboardingAgeEl._(_root);
	@override late final _TranslationsOnboardingBmiScaleEl bmiScale = _TranslationsOnboardingBmiScaleEl._(_root);
	@override late final _TranslationsOnboardingWeightGoalEl weightGoal = _TranslationsOnboardingWeightGoalEl._(_root);
	@override late final _TranslationsOnboardingActivityLevelEl activityLevel = _TranslationsOnboardingActivityLevelEl._(_root);
	@override late final _TranslationsOnboardingHealthConnectEl healthConnect = _TranslationsOnboardingHealthConnectEl._(_root);
	@override late final _TranslationsOnboardingReinforcementEl reinforcement = _TranslationsOnboardingReinforcementEl._(_root);
}

// Path: tabs
class _TranslationsTabsEl extends TranslationsTabsEn {
	_TranslationsTabsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Ταμπλό';
	@override String get history => 'Ιστορικό';
}

// Path: home
class _TranslationsHomeEl extends TranslationsHomeEn {
	_TranslationsHomeEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryEl aiSummary = _TranslationsHomeAiSummaryEl._(_root);
	@override late final _TranslationsHomeDailyGoalEl dailyGoal = _TranslationsHomeDailyGoalEl._(_root);
	@override late final _TranslationsHomeDailySummaryEl dailySummary = _TranslationsHomeDailySummaryEl._(_root);
	@override late final _TranslationsHomeIntakeProgressEl intakeProgress = _TranslationsHomeIntakeProgressEl._(_root);
	@override late final _TranslationsHomeIntakeHistoryEl intakeHistory = _TranslationsHomeIntakeHistoryEl._(_root);
	@override late final _TranslationsHomeMealLogEl mealLog = _TranslationsHomeMealLogEl._(_root);
	@override late final _TranslationsHomeMealDescriptionEl mealDescription = _TranslationsHomeMealDescriptionEl._(_root);
	@override late final _TranslationsHomeFavoriteMealsEl favoriteMeals = _TranslationsHomeFavoriteMealsEl._(_root);
	@override late final _TranslationsHomeMealSnapEl mealSnap = _TranslationsHomeMealSnapEl._(_root);
	@override late final _TranslationsHomeConnectHealthEl connectHealth = _TranslationsHomeConnectHealthEl._(_root);
}

// Path: history
class _TranslationsHistoryEl extends TranslationsHistoryEn {
	_TranslationsHistoryEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Δεν έχουν καταγραφεί γεύματα';
	@override String get emptyMessage => 'Τραβήξτε μια φωτογραφία του τελευταίου γεύματός σας για να το καταγράψετε εδώ.';
	@override String get today => 'Σήμερα';
	@override String get yesterday => 'Χθες';
}

// Path: meal
class _TranslationsMealEl extends TranslationsMealEn {
	_TranslationsMealEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Ωχ όχι!';
	@override String get delete => 'Διαγραφή';
	@override String get editMeal => 'Επεξεργασία Γεύματος';
	@override String get addMeal => 'Προσθήκη Γεύματος';
	@override String get saveMeal => 'Αποθήκευση Γεύματος';
	@override String get save => 'Αποθήκευση';
	@override String get mealName => 'Όνομα Γεύματος';
	@override String get mealNameHint => 'π.χ., Αυγά σκραμπλ με τοστ';
	@override String get nameRequired => 'Εισαγάγετε ένα όνομα γεύματος πριν την αποθήκευση.';
	@override String get mealQuantity => 'Ποσότητα Γεύματος';
	@override String get mealQuantityHint => 'π.χ., 1 μπολ, 2 φέτες';
	@override String get timeOfMeal => 'Ώρα Γεύματος';
	@override String get timeOfMealHint => 'Επιλέξτε την ώρα που φάγατε';
	@override String get mealType => 'Τύπος Γεύματος';
	@override late final _TranslationsMealNutritionEl nutrition = _TranslationsMealNutritionEl._(_root);
	@override late final _TranslationsMealDeleteConfirmationEl deleteConfirmation = _TranslationsMealDeleteConfirmationEl._(_root);
	@override String get addedToLog => 'Το γεύμα προστέθηκε στο ημερολόγιό σας!';
	@override String couldNotAdd({required Object error}) => 'Δεν ήταν δυνατή η προσθήκη γεύματος: ${error}';
	@override String get savedSuccessfully => 'Το γεύμα προστέθηκε με επιτυχία!';
	@override String get updatedSuccessfully => 'Το γεύμα ενημερώθηκε με επιτυχία!';
	@override String errorSaving({required Object error}) => 'Σφάλμα κατά την αποθήκευση γεύματος: ${error}';
	@override String get removedFromFavorites => 'Αφαιρέθηκε από τα αγαπημένα!';
	@override String get savedAsFavorite => 'Το γεύμα αποθηκεύτηκε ως αγαπημένο!';
	@override String get unfavorite => 'Αφαίρεση από αγαπημένα';
	@override String couldNotUpdateFavorite({required Object error}) => 'Δεν ήταν δυνατή η ενημέρωση του αγαπημένου: ${error}';
	@override String get feedbackThanks => 'Ευχαριστούμε για τα σχόλια!';
	@override String get reanalysisUpdated => 'Ενημερώθηκε η ανάλυση γεύματος βάσει των σχολίων σας.';
	@override String failedToProcess({required Object error}) => 'Αποτυχία επεξεργασίας: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Αποτυχία επεξεργασίας εικόνας: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Σφάλμα κατά τη συμπίεση εικόνας: ${error}';
	@override String get failedToSave => 'Αποτυχία αποθήκευσης δεδομένων. Παρακαλώ δοκιμάστε ξανά.';
	@override String get skip => 'Παράλειψη';
	@override late final _TranslationsMealQuestionFlowEl questionFlow = _TranslationsMealQuestionFlowEl._(_root);
	@override late final _TranslationsMealAnalysisEl analysis = _TranslationsMealAnalysisEl._(_root);
	@override late final _TranslationsMealLocalInferenceEl localInference = _TranslationsMealLocalInferenceEl._(_root);
	@override late final _TranslationsMealFeedbackEl feedback = _TranslationsMealFeedbackEl._(_root);
}

// Path: favorites
class _TranslationsFavoritesEl extends TranslationsFavoritesEn {
	_TranslationsFavoritesEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Αγαπημένα';
	@override String get empty => 'Δεν υπάρχουν αγαπημένα γεύματα.';
	@override String get searchPlaceholder => 'Αναζήτηση αγαπημένων γευμάτων';
	@override String get searchEmptyTitle => 'Καμία αντιστοιχία στα αγαπημένα';
	@override String get searchEmptySubtitle => 'Δοκιμάστε διαφορετικό όνομα γεύματος, ποσότητα ή τύπο γεύματος.';
	@override String get sortLabel => 'Ταξινόμηση αγαπημένων';
	@override String get undo => 'Αναίρεση';
	@override String removed({required Object name}) => 'Αφαιρέθηκε ${name} από τα αγαπημένα';
	@override late final _TranslationsFavoritesSortOptionsEl sortOptions = _TranslationsFavoritesSortOptionsEl._(_root);
}

// Path: profile
class _TranslationsProfileEl extends TranslationsProfileEn {
	_TranslationsProfileEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Προφίλ';
	@override String get noProfileData => 'Δεν βρέθηκαν δεδομένα προφίλ';
	@override String get yourProfile => 'Το Προφίλ Σας';
	@override String get viewAndManage => 'Προβολή και διαχείριση των πληροφοριών υγείας σας';
	@override late final _TranslationsProfileSectionsEl sections = _TranslationsProfileSectionsEl._(_root);
	@override String get gender => 'Φύλο';
	@override String get height => 'Ύψος';
	@override String get weight => 'Βάρος';
	@override String get age => 'Ηλικία';
	@override String get weightGoal => 'Στόχος Βάρους';
	@override String get targetWeight => 'Επιδιωκόμενο Βάρος';
	@override String get activityLevel => 'Επίπεδο Δραστηριότητας';
	@override String get healthMetrics => 'Δείκτες Υγείας';
	@override String get notSet => 'Μη ορισμένο';
	@override String get years => 'έτη';
	@override String get updatedSuccessfully => 'Το προφίλ ενημερώθηκε με επιτυχία!';
	@override late final _TranslationsProfileCalculatedValuesEl calculatedValues = _TranslationsProfileCalculatedValuesEl._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreEl extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Βαθμολογία Υγείας';
	@override String get whyThisScore => 'Γιατί αυτή η βαθμολογία;';
	@override String get note => 'Αυτή η βαθμολογία είναι μια εκτίμηση AI βασισμένη στα εντοπισμένα συστατικά και τη διατροφική πυκνότητα. Συμβουλευτείτε πάντα επαγγελματία για εξατομικευμένες διατροφικές συμβουλές.';
	@override String get unhealthy => 'Ανθυγιεινό';
	@override String get healthy => 'Υγιεινό';
	@override String get neutral => 'Ουδέτερο';
}

// Path: editProfile
class _TranslationsEditProfileEl extends TranslationsEditProfileEn {
	_TranslationsEditProfileEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επεξεργασία Προφίλ';
	@override late final _TranslationsEditProfileSectionsEl sections = _TranslationsEditProfileSectionsEl._(_root);
	@override String get gender => 'Φύλο';
	@override String get dateOfBirth => 'Ημερομηνία Γέννησης';
	@override String get height => 'Ύψος';
	@override String get weight => 'Βάρος';
	@override String get weightGoal => 'Στόχος Βάρους';
	@override String get activityLevel => 'Επίπεδο Δραστηριότητας';
	@override String get metric => 'Μετρικό';
	@override String get imperial => 'Αγγλοσαξονικό';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Μετρικό (cm)';
	@override String get imperialFtIn => 'Αγγλοσαξονικό (ft/in)';
	@override String get metricKg => 'Μετρικό (kg)';
	@override String get imperialLbs => 'Αγγλοσαξονικό (lbs)';
	@override late final _TranslationsEditProfileGendersEl genders = _TranslationsEditProfileGendersEl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsEl weightGoals = _TranslationsEditProfileWeightGoalsEl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsEl activityLevels = _TranslationsEditProfileActivityLevelsEl._(_root);
}

// Path: settings
class _TranslationsSettingsEl extends TranslationsSettingsEn {
	_TranslationsSettingsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ρυθμίσεις';
	@override late final _TranslationsSettingsSectionsEl sections = _TranslationsSettingsSectionsEl._(_root);
	@override late final _TranslationsSettingsEditProfileEl editProfile = _TranslationsSettingsEditProfileEl._(_root);
	@override late final _TranslationsSettingsLanguageEl language = _TranslationsSettingsLanguageEl._(_root);
	@override late final _TranslationsSettingsHeightUnitEl heightUnit = _TranslationsSettingsHeightUnitEl._(_root);
	@override late final _TranslationsSettingsWeightUnitEl weightUnit = _TranslationsSettingsWeightUnitEl._(_root);
	@override late final _TranslationsSettingsMealRemindersEl mealReminders = _TranslationsSettingsMealRemindersEl._(_root);
	@override late final _TranslationsSettingsLocalInferenceEl localInference = _TranslationsSettingsLocalInferenceEl._(_root);
	@override late final _TranslationsSettingsThemeEl theme = _TranslationsSettingsThemeEl._(_root);
	@override late final _TranslationsSettingsSendFeedbackEl sendFeedback = _TranslationsSettingsSendFeedbackEl._(_root);
	@override late final _TranslationsSettingsExportMealHistoryEl exportMealHistory = _TranslationsSettingsExportMealHistoryEl._(_root);
	@override late final _TranslationsSettingsClearAllDataEl clearAllData = _TranslationsSettingsClearAllDataEl._(_root);
	@override late final _TranslationsSettingsDebugOptionsEl debugOptions = _TranslationsSettingsDebugOptionsEl._(_root);
	@override String get developerModeEnabled => 'Λειτουργία προγραμματιστή ενεργοποιήθηκε!';
	@override late final _TranslationsSettingsHealthConnectEl healthConnect = _TranslationsSettingsHealthConnectEl._(_root);
	@override late final _TranslationsSettingsAboutEl about = _TranslationsSettingsAboutEl._(_root);
	@override late final _TranslationsSettingsAppInfoEl appInfo = _TranslationsSettingsAppInfoEl._(_root);
}

// Path: reminders
class _TranslationsRemindersEl extends TranslationsRemindersEn {
	_TranslationsRemindersEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μείνετε στην πορεία με υπενθυμίσεις';
	@override String get description => 'Λάβετε ήπιες υπενθυμίσεις για να καταγράφετε τα γεύματά σας και να τηρείτε τους διατροφικούς σας στόχους';
	@override String get notificationsEnabled => 'Ειδοποιήσεις Ενεργοποιημένες';
	@override String get notificationsDisabled => 'Ειδοποιήσεις Απενεργοποιημένες';
	@override String get enabledSubtitle => 'Θα λαμβάνετε υπενθυμίσεις γευμάτων';
	@override String get disabledSubtitle => 'Ενεργοποιήστε τις ειδοποιήσεις για να λαμβάνετε υπενθυμίσεις γευμάτων';
	@override String get mealReminders => 'Υπενθυμίσεις Γευμάτων';
	@override String get breakfast => 'Πρωινό';
	@override String get lunch => 'Μεσημεριανό';
	@override String get dinner => 'Βραδινό';
	@override String get snack => 'Σνακ';
	@override String get unknown => 'Άγνωστο';
	@override String get change => 'Αλλαγή';
	@override String get enableNotifications => 'Ενεργοποίηση Ειδοποιήσεων';
	@override String get skipForNow => 'Παράλειψη προς το παρόν';
	@override String get saveChanges => 'Αποθήκευση Αλλαγών';
	@override String get enabledSuccessfully => 'Οι ειδοποιήσεις ενεργοποιήθηκαν με επιτυχία!';
	@override String get permissionDenied => 'Αρνήθηκε η άδεια ειδοποιήσεων';
	@override String errorEnabling({required Object error}) => 'Σφάλμα ενεργοποίησης ειδοποιήσεων: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Σφάλμα κατά την ολοκλήρωση της ρύθμισης: ${error}';
}

// Path: notifications
class _TranslationsNotificationsEl extends TranslationsNotificationsEn {
	_TranslationsNotificationsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastEl breakfast = _TranslationsNotificationsBreakfastEl._(_root);
	@override late final _TranslationsNotificationsLunchEl lunch = _TranslationsNotificationsLunchEl._(_root);
	@override late final _TranslationsNotificationsDinnerEl dinner = _TranslationsNotificationsDinnerEl._(_root);
	@override late final _TranslationsNotificationsSnackEl snack = _TranslationsNotificationsSnackEl._(_root);
	@override late final _TranslationsNotificationsTestEl test = _TranslationsNotificationsTestEl._(_root);
}

// Path: login
class _TranslationsLoginEl extends TranslationsLoginEn {
	_TranslationsLoginEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Σύνδεση';
	@override String get signInWithGoogle => 'Σύνδεση με Google';
	@override String get signInFailed => 'Η Σύνδεση με Google απέτυχε ή ακυρώθηκε.';
}

// Path: disclaimer
class _TranslationsDisclaimerEl extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Σημειώστε';
	@override late final _TranslationsDisclaimerSnapEl snap = _TranslationsDisclaimerSnapEl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateEl weightEstimate = _TranslationsDisclaimerWeightEstimateEl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsEl healthMetrics = _TranslationsDisclaimerHealthMetricsEl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureEl calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureEl._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4El extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4El._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'Τα διατροφικά στοιχεία αντιστοιχίστηκαν από το ληφθέν πακέτο USDA';
	@override String get nutritionCached => 'Τα διατροφικά στοιχεία αντιστοιχίστηκαν από την προσωρινή μνήμη USDA της συσκευής';
	@override String get nutritionMixed => 'Τα διατροφικά στοιχεία συνδυάστηκαν από ληφθείσες, αποθηκευμένες και απομακρυσμένες γραμμές USDA';
	@override String get calculationLocal => 'Οι θερμίδες και τα μακροθρεπτικά υπολογίστηκαν σε αυτή τη συσκευή';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: ληφθέν πακέτο USDA';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: προσωρινή μνήμη USDA στη συσκευή';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: γραμμή USDA που ανακτήθηκε μέσω Calorify';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: ντετερμινιστική διατροφική σταθερά';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · σύνολο δεδομένων ${datasetVersion}';
	@override String get portionSmaller => 'Μικρότερη';
	@override String get portionEstimated => 'Εκτιμώμενη';
	@override String get portionLarger => 'Μεγαλύτερη';
	@override String portionQuestion({required Object ingredient}) => 'Ποια μερίδα ήταν πιο κοντά για το ${ingredient};';
	@override String get mealTypeQuestion => 'Ποιο γεύμα ήταν αυτό;';
	@override String get localNutritionTip => 'Υπολογίστηκε από επαληθευμένα τοπικά διατροφικά δεδομένα.';
	@override String get offlineNutritionTitle => 'Λήψη διατροφικών δεδομένων';
	@override String get offlineNutritionSubtitle => 'Χρησιμοποιήστε επαληθευμένες γραμμές USDA και ντετερμινιστικό υπολογισμό σε αυτή τη συσκευή όταν καλύπτονται όλα τα συστατικά.';
	@override String get offlineNutritionUnavailable => 'Τα τοπικά διατροφικά δεδομένα δεν είναι διαθέσιμα για αυτή την έκδοση της εφαρμογής.';
	@override String get offlineNutritionNotDownloaded => 'Δεν έχει ληφθεί επαληθευμένο πακέτο διατροφικών δεδομένων.';
	@override String get offlineNutritionInstalling => 'Γίνεται λήψη και επαλήθευση διατροφικών δεδομένων…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Πακέτο ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} γραμμές USDA στην προσωρινή μνήμη · ${size}';
	@override String get offlineNutritionUpdate => 'Έλεγχος για ενημέρωση';
	@override String get offlineNutritionClear => 'Εκκαθάριση τοπικών διατροφικών δεδομένων';
	@override String get offlineNutritionClearTitle => 'Να εκκαθαριστούν τα τοπικά διατροφικά δεδομένα;';
	@override String get offlineNutritionClearBody => 'Αυτό αφαιρεί το ληφθέν πακέτο USDA και την προσωρινή μνήμη αναζήτησης. Τα καταγεγραμμένα γεύματα διατηρούν το ακριβές στιγμιότυπο διατροφικών στοιχείων που χρησιμοποιήθηκε κατά την αποθήκευση.';
	@override String get offlineNutritionClearConfirm => 'Εκκαθάριση δεδομένων';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Δεν ήταν δυνατή η λήψη και επαλήθευση των τοπικών διατροφικών δεδομένων: ${error}';
	@override String get offlineNutritionCleared => 'Τα τοπικά διατροφικά δεδομένα εκκαθαρίστηκαν';
}

// Path: common
class _TranslationsCommonEl extends TranslationsCommonEn {
	_TranslationsCommonEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get close => 'Κλείσιμο';
	@override String get kContinue => 'Συνέχεια';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingEl extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Σας αρέσει το ${appLabel};';
	@override String get yes => 'Ναι, μου αρέσει';
	@override String get no => 'Όχι τόσο';
	@override String get rateStepHeading => 'Βαθμολογήστε στο Play Store';
	@override String get emailStepHeading => 'Στείλτε σχόλια με email';
	@override String soloDevMessage({required Object appLabel}) => 'Μια γρήγορη αξιολόγηση βοηθά άλλους να βρουν το ${appLabel} και στηρίζει την ανάπτυξη. Θα αφιερώσετε μια στιγμή για να αφήσετε μία;';
	@override String get shareFeedbackViaEmail => 'Τα σχόλιά σας διαμορφώνουν το επόμενο — διαβάζουμε κάθε μήνυμα. Θέλετε να μοιραστείτε τις σκέψεις σας μέσω email;';
	@override String get rateCta => 'Βαθμολογήστε στο Play Store';
	@override String get maybeLater => 'Ίσως αργότερα';
	@override String get sendFeedback => 'Αποστολή σχολίων';
	@override String get noThanks => 'Όχι, ευχαριστώ';
	@override String get aboutUsDescription => 'Κατασκευάστηκε με φροντίδα από μια μικρή ομάδα. Εστιάζουμε στην ιδιωτικότητα, την απλότητα και το να σας βοηθήσουμε να χτίσετε καλύτερες διατροφικές συνήθειες.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Περιεργάζεστε ποιος βρίσκεται πίσω από το ${appLabel}; Δείτε ';
	@override String get aboutUsLinkLabel => 'Σχετικά με εμάς';
	@override String get thankYouMessage => 'Ευχαριστούμε! Θα ρωτήσουμε πάλι άλλη στιγμή.';
}

// Path: health
class _TranslationsHealthEl extends TranslationsHealthEn {
	_TranslationsHealthEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Δεν ήταν δυνατή η συγχρονισμός με το Health Connect';
	@override String get mealSynced => 'Το γεύμα συγχρονίστηκε με το Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesEl extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionEl foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionEl._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisEl aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisEl._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationEl healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationEl._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderEl extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ποιο είναι το φύλο σας;';
	@override String get description => 'Το φύλο μας βοηθά να υπολογίσουμε με ακρίβεια τον βασικό μεταβολικό σας ρυθμό (BMR).';
	@override String get next => 'Επόμενο';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightEl extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Πόσο ύψος έχετε;';
	@override String get description => 'Το ύψος σας βοηθά να υπολογίσουμε με ακρίβεια το BMI και τις ενεργειακές σας ανάγκες.';
	@override String get metric => 'Μετρικό';
	@override String get imperial => 'Αγγλοσαξονικό';
	@override String get next => 'Επόμενο';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightEl extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Ποιο είναι το τωρινό σας βάρος;';
	@override String get currentDescription => 'Το τωρινό σας βάρος είναι απαραίτητο για την προσωποποίηση των καθημερινών σας στόχων.';
	@override String get targetTitle => 'Ποιο είναι το επιδιωκόμενο σας βάρος;';
	@override String get targetDescription => 'Ορισμός στόχου βάρους για να καθορίσουμε το μακροπρόθεσμο πλάνο σας.';
	@override String get metric => 'Μετρικό';
	@override String get imperial => 'Αγγλοσαξονικό';
	@override String get next => 'Επόμενο';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeEl extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Πότε είναι τα γενέθλιά σας;';
	@override String get description => 'Η ηλικία σας βοηθά να υπολογίσουμε με ακρίβεια τις θερμιδικές σας ανάγκες.';
	@override String get next => 'Επόμενο';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleEl extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Κάτω';
	@override String get healthy => 'Υγιές';
	@override String get overweight => 'Πάνω';
	@override String get obese => 'Παχύσαρκο';
	@override late final _TranslationsOnboardingBmiScaleCategoriesEl categories = _TranslationsOnboardingBmiScaleCategoriesEl._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesEl messages = _TranslationsOnboardingBmiScaleMessagesEl._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalEl extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ποιος είναι ο στόχος σας;';
	@override String get description => 'Επιλέξτε τον στόχο που περιγράφει καλύτερα αυτό που θέλετε να πετύχετε';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelEl extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Πόσο δραστήριος/α είστε;';
	@override String get description => 'Αυτό μας βοηθά να υπολογίσουμε πιο ακριβώς τις καθημερινές σας θερμιδικές ανάγκες';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectEl extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Συνδέστε με Health Connect';
	@override String get description => 'Συγχρονίστε τα δεδομένα υγείας σας για καλύτερες πληροφορίες και αυτόματη καταγραφή θερμίδων';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingEl automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingEl._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsEl progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsEl._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationEl seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationEl._(_root);
	@override String get connected => 'Health Connect Συνδεδεμένο';
	@override String get notConnected => 'Health Connect Δεν Συνδεδεμένο';
	@override String get setup => 'Ρύθμιση Health Connect';
	@override String get skipForNow => 'Παράλειψη προς το παρόν';
	@override String get statusConnected => 'Το Health Connect είναι συνδεδεμένο.';
	@override String get statusSuccess => 'Το Health Connect συνδέθηκε επιτυχώς!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Απαγορεύτηκε η άδεια. Ενεργοποιήστε τα δικαιώματα του Health Connect στις ρυθμίσεις του τηλεφώνου για ${appLabel}.';
	@override String statusError({required Object error}) => 'Σφάλμα κατά τη ρύθμιση του Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementEl extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessEl trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessEl._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileEl healthProfile = _TranslationsOnboardingReinforcementHealthProfileEl._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleEl goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleEl._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryEl extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Η Σύνοψη AI σας';
	@override String get logMore => 'Καταγράψτε περισσότερα γεύματα τις επόμενες μέρες για να λάβετε προσωποποιημένα AI συμπεράσματα.';
	@override String get loading => 'Φόρτωση της σύνοψης σας...';
	@override String mealCount({required Object count}) => '${count} γεύματα καταχωρήθηκαν';
	@override String macroBalanceScore({required Object score}) => 'Βαθμολογία ισορροπίας ${score}';
	@override String get topFoods => 'Κορυφαία τρόφιμα';
	@override String get trendUp => 'Θερμίδες σε άνοδο';
	@override String get trendDown => 'Θερμίδες σε πτώση';
	@override String get trendSteady => 'Θερμίδες σταθερές';
	@override String generatedAt({required Object time}) => 'Ενημερώθηκε ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalEl extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ορίστε το Ημερήσιο Στόχο σας';
	@override String get titleSet => 'Ο Ημερήσιος Στόχος σας';
	@override String get description => 'Έτοιμοι για το ταξίδι ευεξίας σας; Ορίστε παρακάτω τον καθημερινό στόχο θερμίδων για να ξεκινήσετε την πρόοδό σας.';
	@override String get descriptionSet => 'Η πυξίδα σας έχει οριστεί! Αυτός είναι ο καθημερινός σας στόχος θερμίδων για καθοδήγηση.';
	@override String get yourGoal => 'Ο Στόχος σας';
	@override String get goal => 'Στόχος';
	@override String get dailyCalories => 'Ημερήσιες θερμίδες (kcal)';
	@override String get setGoal => 'Ορισμός Στόχου';
	@override String get intake => 'Είσοδος';
	@override String get burned => 'Καμένες';
	@override String get weightImpact => 'Επίδραση στο βάρος';
	@override String get estLoss => 'Προβλ. απώλεια';
	@override String get estGain => 'Προβλ. αύξηση';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryEl extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ημερήσια Σύνοψη';
	@override String get calories => 'Θερμίδες';
	@override String get carbs => 'Υδατάνθρακες';
	@override String get protein => 'Πρωτεΐνη';
	@override String get fat => 'Λίπος';
	@override String get fiber => 'Ινες';
	@override String get grams => 'γραμ.';
	@override String get chartAccessibilityLabel => 'Διάγραμμα μακροθρεπτικών';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressEl extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Σημερινή Κατανομή Μακροθρεπτικών';
	@override String get target => 'Στόχος';
	@override String get current => 'Τρέχον';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryEl extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ιστορικό Μακροθρεπτικών 7 ημερών';
	@override String get trendTitle => 'Σημερινή Τάση';
	@override String peakHour({required Object hour}) => 'Κορύφωση: ${hour}:00';
	@override String get noHistoryYet => 'Δεν υπάρχει ιστορικό ακόμα';
	@override String get startLogging => 'Ξεκινήστε να καταγράφετε γεύματα για να δείτε τις\n7ήμερες τάσεις μακροθρεπτικών εδώ';
}

// Path: home.mealLog
class _TranslationsHomeMealLogEl extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Καταχωρημένα Γεύματα';
	@override String get emptyMessage => 'Τραβήξτε μια φωτογραφία του τελευταίου γεύματός σας για να το καταγράψετε εδώ.';
	@override String get noMealsToday => 'Δεν έχει καταγραφεί κανένα γεύμα για σήμερα';
	@override String get seeAllMeals => 'Δείτε όλα τα γεύματα';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionEl extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Γρήγορη Προσθήκη με AI';
	@override String get description => 'Περιγράψτε το γεύμα σας και αφήστε το AI να αναλάβει τις λεπτομέρειες.';
	@override String get hint => 'π.χ. Στο πρωινό είχα ένα μεγάλο μπολ βρώμης με μια μπανάνα σε φέτες και μια μεζούρα πρωτεΐνης ...';
	@override String get analyzeMeal => 'Ανάλυση γεύματος';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsEl extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Αγαπημένα Γεύματα';
	@override String get description => 'Προσθέστε γρήγορα ένα από τα αγαπημένα σας γεύματα.';
	@override String get noFavorites => 'Δεν υπάρχουν αγαπημένα ακόμη.';
	@override String get addFavoriteHint => 'Κάντε κλικ στο αστέρι σε ένα γεύμα για να το σημειώσετε ως αγαπημένο.';
	@override String get seeAll => 'Δείτε όλα';
	@override String get add => 'Προσθήκη';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapEl extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Φωτογραφίστε & Καταγράψτε το Γεύμα σας';
	@override String get description => 'Χρησιμοποιήστε την κάμερα για να τραβήξετε μια εικόνα του φαγητού για ανάλυση με AI.';
	@override String get openCamera => 'Άνοιγμα Κάμερας';
	@override String get gallery => 'Σύλλογος';
	@override String get compressingPhoto => 'Βελτιστοποίηση φωτογραφίας…';
	@override String get uploadingPhoto => 'Αποστολή φωτογραφίας…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthEl extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Συγχρονισμός με Health Connect';
	@override String get description => 'Συγχρονίστε τα διατροφικά σας με το Health Connect';
	@override String get install => 'Εγκατάσταση';
	@override String get connect => 'Σύνδεση';
}

// Path: meal.nutrition
class _TranslationsMealNutritionEl extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Θερμίδες';
	@override String get carbs => 'Υδατάνθρακες (g)';
	@override String get protein => 'Πρωτεΐνη (g)';
	@override String get fat => 'Λίπος (g)';
	@override String get fiber => 'Ίνες (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationEl extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Διαγραφή Γεύματος';
	@override String get message => 'Είστε βέβαιοι ότι θέλετε να διαγράψετε αυτή την καταχώριση γεύματος;';
	@override String get cancel => 'Ακύρωση';
	@override String get delete => 'Διαγραφή';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowEl extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Ερώτηση ${current} από ${total}';
	@override String get noQuestionsAvailable => 'Δεν υπάρχουν διαθέσιμες ερωτήσεις';
	@override String get next => 'Επόμενο';
	@override String get continueLabel => 'Συνέχεια';
}

// Path: meal.analysis
class _TranslationsMealAnalysisEl extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ανάλυση του γεύματός σας';
	@override String get stepStarted => 'Εκκίνηση…';
	@override String get stepDecomposition => 'Κατανόηση του γεύματος…';
	@override String get stepIngredients => 'Αντιστοίχιση συστατικών με διατροφικά δεδομένα…';
	@override String get stepUncertainty => 'Έλεγχος εμπιστοσύνης…';
	@override String get stepMealTypeQuestion => 'Λίγο ακόμα…';
	@override String get stepResult => 'Ολοκλήρωση αποτελέσματος…';
	@override String get stepError => 'Κάτι πήγε στραβά';
	@override String get stepDefault => 'Ανάλυση του γεύματός σας…';
	@override String get progressUnderstand => 'Κατανόηση του γεύματος';
	@override String get progressMatch => 'Αναζήτηση διατροφικών στοιχείων συστατικών';
	@override String get progressCheck => 'Έλεγχος μερίδων και εμπιστοσύνης';
	@override String get progressMealType => 'Επιλογή τύπου γεύματος';
	@override String get progressFinish => 'Υπολογισμός θερμίδων και μακροθρεπτικών';
	@override String get detectedIngredientHeading => 'Συστατικά που εντοπίζουμε';
	@override String ingredientsOverflow({required Object count}) => '${count} ακόμη';
	@override String ingredientsLine({required Object count}) => 'Εντοπίστηκαν ${count} συστατικά';
	@override String get ingredientsPending => 'Σάρωση συστατικών…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Συμβουλή: Η συνέπεια ξεπερνά την τελειότητα — οι τακτικές εγγραφές αποκαλύπτουν τα μοτίβα που έχουν σημασία.';
	@override String get offlineTip1 => 'Συμβουλή: Για φωτογραφίες, ο φυσικός φωτισμός και η λήψη από πάνω βοηθούν στην ακρίβεια των μερίδων.';
	@override String get offlineTip2 => 'Συμβουλή: Αναφέρετε ροφήματα, σάλτσες και λάδι μαγειρέματος — προσθέτουν θερμίδες που συχνά ξεχνιούνται.';
	@override String get offlineTip3 => 'Συμβουλή: Μια σύντομη σημείωση μερίδας (1 μπολ, μεγάλο καφέ) βελτιώνει σημαντικά τις εκτιμήσεις.';
	@override String get offlineTip4 => 'Συμβουλή: Η καταγραφή μετά το γεύμα χτίζει ακόμη τη συνήθεια· η τελειότητα δεν είναι υποχρεωτική.';
	@override String get offlineTip5 => 'Συμβουλή: Πείτε πώς μαγειρεύτηκε το φαγητό όταν αλλάζει πολύ τις θερμίδες (τηγανητό vs ψητό).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceEl extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Ελεγχος ανιχνευμένων συστατικών';
	@override String get reviewSubtitle => 'Αυτό ερμηνεύτηκε στη συσκευή σας. Διορθώστε τα ονόματα ή τις ποσότητες πριν υπολογιστεί η θρεπτική αξία.';
	@override String get mealName => 'Όνομα γεύματος';
	@override String get ingredient => 'Συστατικό';
	@override String get grams => 'Εκτιμώμενα γραμμάρια';
	@override String get removeIngredient => 'Αφαίρεση συστατικού';
	@override String get continueLabel => 'Συνέχεια';
	@override String get invalidProposal => 'Προσθέστε τουλάχιστον ένα συστατικό και χρησιμοποιήστε μια θετική ποσότητα γραμμαρίων.';
	@override String get localUnavailable => 'Η ανάλυση στη συσκευή δεν είναι διαθέσιμη αυτή τη στιγμή.';
	@override String get calculationDetails => 'Πώς υπολογίστηκε αυτό';
	@override String get interpretationLocal => 'Συστατικά που ερμηνεύτηκαν σε αυτή τη συσκευή';
	@override String get interpretationCloud => 'Συστατικά που ερμηνεύτηκαν στο cloud';
	@override String get interpretationManual => 'Συστατικά που ελέγξατε ή επεξεργαστήκατε εσείς';
	@override String get nutritionRemote => 'Θρεπτικά στοιχεία από το USDA μέσω του Calorify';
	@override String get nutritionFallback => 'Ορισμένες θρεπτικές τιμές εκτιμήθηκαν απομακρυσμένα';
	@override String get calculationServer => 'Θερμίδες και μακροθρεπτικά υπολογίστηκαν από το Calorify';
	@override String get fallbackUsed => 'Η τοπική ανάλυση μεταφέρθηκε σε επεξεργασία cloud';
	@override String get noRawContent => 'Οι διαγνωστικές αποδείξεις δεν περιλαμβάνουν το κείμενο ή τη φωτογραφία του γεύματός σας.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackEl extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Τι φαίνεται λανθασμένο;';
	@override String get subtitle => 'Βοηθήστε μας να βελτιώσουμε την ανάλυση επιλέγοντας ένα ή περισσότερα ζητήματα.';
	@override String get tellUsMore => 'Πείτε μας περισσότερα';
	@override String get describeIncorrect => 'Περιγράψτε τι ήταν λάθος';
	@override String get submit => 'Υποβολή';
	@override String get issueFoodIdentification => 'Αναγνώριση τροφίμου';
	@override String get issuePortionSize => 'Μέγεθος μερίδας';
	@override String get issueCalorieDistribution => 'Κατανομή θερμίδων';
	@override String get issueMacrosWrong => 'Λάθος μακροθρεπτικά';
	@override String get issueMissingItems => 'Λείπουν είδη';
	@override String get issueExtraItems => 'Περιττά είδη';
	@override String get issueOther => 'Άλλο';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsEl extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Πρόσφατα';
	@override String get calories => 'Θερμίδες';
	@override String get alphabetical => 'A-Ω';
}

// Path: profile.sections
class _TranslationsProfileSectionsEl extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ΠΡΟΦΙΛ';
	@override String get basicInformation => 'ΒΑΣΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ';
	@override String get goalsAndActivity => 'ΣΤΟΧΟΙ & ΔΡΑΣΤΗΡΙΟΤΗΤΑ';
	@override String get calculatedValues => 'ΥΠΟΛΟΓΙΣΜΕΝΕΣ ΤΙΜΕΣ';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesEl extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Ημερήσιος Στόχος';
	@override String get calPerDay => 'cal/ημέρα';
	@override String get notAvailable => 'Μη διαθέσιμο';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsEl extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ΠΡΟΣΩΠΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ';
	@override String get physicalMeasurements => 'ΣΩΜΑΤΙΚΕΣ ΜΕΤΡΗΣΕΙΣ';
	@override String get goalsAndActivity => 'ΣΤΟΧΟΙ & ΔΡΑΣΤΗΡΙΟΤΗΤΑ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersEl extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get male => 'Άνδρας';
	@override String get female => 'Γυναίκα';
	@override String get other => 'Άλλο';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsEl extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightEl loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightEl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightEl maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightEl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightEl gainWeight = _TranslationsEditProfileWeightGoalsGainWeightEl._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsEl extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryEl sedentary = _TranslationsEditProfileActivityLevelsSedentaryEl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveEl lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveEl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveEl moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveEl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveEl veryActive = _TranslationsEditProfileActivityLevelsVeryActiveEl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveEl extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveEl._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsEl extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ΠΡΟΦΙΛ';
	@override String get localization => 'ΤΟΠΟΠΟΙΗΣΗ';
	@override String get notifications => 'ΕΙΔΟΠΟΙΗΣΕΙΣ';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get localInference => 'ΑΝΑΛΥΣΗ ΣΤΗ ΣΥΣΚΕΥΗ';
	@override String get supportAndLegal => 'ΥΠΟΣΤΗΡΙΞΗ & ΝΟΜΙΚΑ';
	@override String get about => 'ΠΛΗΡΟΦΟΡΙΕΣ';
	@override String get dangerZone => 'ΠΕΡΙΟΧΗ ΚΙΝΔΥΝΟΥ';
	@override String get developer => 'ΑΝΑΠΤΥΞΗΣ';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileEl extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επεξεργασία Προφίλ';
	@override String get subtitle => 'Ενημερώστε τις προσωπικές σας πληροφορίες';
}

// Path: settings.language
class _TranslationsSettingsLanguageEl extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Γλώσσα';
	@override String get subtitle => 'Επιλέξτε την προτιμώμενη γλώσσα σας';
	@override String get searchHint => 'Αναζήτηση γλωσσών...';
	@override String get noResults => 'Δεν βρέθηκαν αποτελέσματα';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitEl extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μονάδα Ύψους';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitEl extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μονάδα Βάρους';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersEl extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Υπενθυμίσεις Γευμάτων';
	@override String get subtitle => 'Μείνετε στην πορεία με έγκαιρες ειδοποιήσεις';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceEl extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ανάλυση γεύματος στη συσκευή';
	@override String get subtitle => 'Ερμηνεία υποστηριζόμενων γευμάτων με το Gemini Nano πριν τον υπολογισμό της θρεπτικής αξίας';
	@override String get unavailable => 'Δεν είναι διαθέσιμο σε αυτή τη συσκευή';
	@override String get rolloutUnavailable => 'Βρέθηκε συμβατό υλικό, αλλά αυτή η λειτουργία δεν είναι ενεργοποιημένη για αυτή την έκδοση της εφαρμογής';
	@override String get modelSetup => 'Το Gemini Nano πρέπει να ολοκληρώσει τη λήψη πριν ενεργοποιηθεί αυτή η λειτουργία';
	@override String get useLocalTitle => 'Χρήση ανάλυσης στη συσκευή';
	@override String get useLocalSubtitle => 'Προαιρετικό και απενεργοποιημένο από προεπιλογή. Τα αποτελέσματα ενδέχεται να είναι λιγότερο αξιόπιστα για σύνθετα γεύματα.';
	@override String get disclosureTitle => 'Πριν ενεργοποιήσετε την ανάλυση στη συσκευή';
	@override String get disclosureBody => 'Το Gemini Nano μπορεί να αναγνωρίσει συστατικά και να εκτιμήσει μερίδες σε υποστηριζόμενες συσκευές Android. Η πρόταση συστατικών που ελέγξατε αποστέλλεται στο Calorify για τεκμηρίωση θρεπτικών στοιχείων από το USDA και υπολογισμό.';
	@override String get disclosureLimit1 => 'Σύνθετα πιάτα, κρυμμένα συστατικά και μεγέθη μερίδων ενδέχεται να αναγνωριστούν λανθασμένα.';
	@override String get disclosureLimit2 => 'Το μοντέλο ενδέχεται να είναι μη διαθέσιμο κατά τη λήψη, όταν είναι απασχολημένο, στο παρασκήνιο ή λόγω περιορισμών της συσκευής.';
	@override String get disclosureLimit3 => 'Εάν η τοπική ερμηνεία δεν μπορεί να ολοκληρωθεί, αυτή η beta έκδοση στέλνει αυτόματα την αρχική περιγραφή του γεύματός σας στο Calorify για ανάλυση στο cloud.';
	@override String get acknowledgement => 'Κατανοώ ότι πρέπει να ελέγχω τα ανιχνευμένα συστατικά και τις μερίδες.';
	@override String get enable => 'Αποδοχή και ενεργοποίηση';
	@override String get cancel => 'Ακύρωση';
}

// Path: settings.theme
class _TranslationsSettingsThemeEl extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Θέμα';
	@override String get light => 'Φωτεινό';
	@override String get dark => 'Σκοτεινό';
	@override String get system => 'Σύστημα';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackEl extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Αποστολή Σχολίων';
	@override String subtitle({required Object appLabel}) => 'Βοηθήστε να βελτιώσουμε το ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} Σχόλια εφαρμογής';
	@override String get emailBodyPrefix => 'Παρακαλώ δώστε τα σχόλιά σας παρακάτω:';
	@override String get appVersion => 'Έκδοση εφαρμογής';
	@override String get device => 'Συσκευή';
	@override String get osVersion => 'Έκδοση OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryEl extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Εξαγωγή Ιστορικού Γευμάτων';
	@override String get subtitle => 'Μοιραστείτε ένα CSV με τα καταχωρημένα γεύματά σας';
	@override String get shareText => 'Εξαγωγή ιστορικού γευμάτων Calorify';
	@override String failed({required Object error}) => 'Δεν ήταν δυνατή η εξαγωγή ιστορικού γευμάτων: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataEl extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Διαγραφή Όλων των Δεδομένων';
	@override String get subtitle => 'Διαγραφή όλων των πληροφοριών σας χωρίς επιστροφή';
	@override String get confirmationTitle => 'Διαγραφή όλων των δεδομένων;';
	@override String get confirmationMessage => 'Αυτή η ενέργεια δεν μπορεί να αναιρεθεί. Όλα τα καταγεγραμμένα γεύματα, τα αγαπημένα και οι ρυθμίσεις προφίλ θα διαγραφούν οριστικά.';
	@override String get cancel => 'Ακύρωση';
	@override String get clearEverything => 'Διαγραφή Όλων';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsEl extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επιλογές Αποσφαλμάτωσης';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectEl extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Προβολή και διαχείριση αδειών';
	@override late final _TranslationsSettingsHealthConnectUnavailableEl unavailable = _TranslationsSettingsHealthConnectUnavailableEl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsEl permissions = _TranslationsSettingsHealthConnectPermissionsEl._(_root);
	@override String get managePermissions => 'Διαχείριση Δικαιωμάτων';
	@override String get openSettings => 'Άνοιγμα Ρυθμίσεων Health Connect';
	@override String get requestPermissions => 'Αίτηση Δικαιωμάτων';
	@override String get permissionRequestCancelledOrFailed => 'Το αίτημα άδειας ακυρώθηκε ή απέτυχε. Παρακαλώ δοκιμάστε ξανά ή δώστε άδειες χειροκίνητα στις ρυθμίσεις του Health Connect.';
	@override String get permissionRequestFailed => 'Αδυναμία αιτήματος αδειών. Παρακαλώ δοκιμάστε ξανά ή δώστε άδειες χειροκίνητα στις ρυθμίσεις του Health Connect.';
	@override String get requestingPermissions => 'Αίτηση...';
}

// Path: settings.about
class _TranslationsSettingsAboutEl extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Πληροφορίες';
	@override String get tagline => 'Γρήγορο, δωρεάν και με σεβασμό στην ιδιωτικότητα για την επίγνωση θερμίδων';
	@override late final _TranslationsSettingsAboutOurStoryEl ourStory = _TranslationsSettingsAboutOurStoryEl._(_root);
	@override late final _TranslationsSettingsAboutPrivacyEl privacy = _TranslationsSettingsAboutPrivacyEl._(_root);
	@override late final _TranslationsSettingsAboutDeveloperEl developer = _TranslationsSettingsAboutDeveloperEl._(_root);
	@override late final _TranslationsSettingsAboutFeedbackEl feedback = _TranslationsSettingsAboutFeedbackEl._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoEl extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastEl extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ώρα για Πρωινό! 🍳';
	@override String get body => 'Μην ξεχάσετε να καταγράψετε το πρωινό σας';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchEl extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ώρα για Μεσημεριανό! 🥗';
	@override String get body => 'Ώρα να καταγράψετε το μεσημεριανό σας';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerEl extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ώρα για Βραδινό! 🍽️';
	@override String get body => 'Μην ξεχάσετε να καταγράψετε το βραδινό σας';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackEl extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ώρα για Σνακ! 🍎';
	@override String get body => 'Ώρα για ένα υγιεινό σνακ';
}

// Path: notifications.test
class _TranslationsNotificationsTestEl extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Δοκιμαστική Ειδοποίηση';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapEl extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} παρέχει εκτιμώμενες διατροφικές πληροφορίες. Η ακρίβεια εξαρτάται από τα στοιχεία που δίνετε και τις παραλλαγές του φαγητού. Χρησιμοποιήστε το ως οδηγό, όχι ως οριστική πηγή. Συμβουλευτείτε επαγγελματία για εξατομικευμένες διατροφικές συμβουλές.';
	@override late final _TranslationsDisclaimerSnapPortionSizeEl portionSize = _TranslationsDisclaimerSnapPortionSizeEl._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsEl preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsEl._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsEl ingredients = _TranslationsDisclaimerSnapIngredientsEl._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsEl databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsEl._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateEl extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Σχετικά με την Εκτίμηση Βάρους';
	@override String get description => 'Η προβλεπόμενη αλλαγή βάρους είναι μια θεωρητική εκτίμηση βασισμένη στο απλό μοντέλο θερμίδες-εισόδου vs θερμίδες-εξόδου. Προορίζεται μόνο για κινητοποίηση, όχι ως πρόβλεψη του πραγματικού σας βάρους.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyEl calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyEl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsEl biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsEl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightEl waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightEl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEl professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEl._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsEl extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get description => 'Αυτοί οι δείκτες σας βοηθούν να κατανοήσετε τις ενεργειακές ανάγκες του σώματός σας και να καθοδηγήσετε τους διατροφικούς σας στόχους.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrEl bmr = _TranslationsDisclaimerHealthMetricsBmrEl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeEl tdee = _TranslationsDisclaimerHealthMetricsTdeeEl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalEl dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalEl._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureEl extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Εκτίμηση Δαπάνης Θερμίδων';
	@override String get description => 'Όταν τα δεδομένα Health Connect δεν είναι διαθέσιμα, εκτιμούμε τις θερμίδες που κάηκαν σήμερα χρησιμοποιώντας τον BMR και το επίπεδο δραστηριότητάς σας (TDEE), κλιμακωμένα για το ποσοστό της ημέρας που έχει περάσει.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedEl howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedEl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEl professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEl._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionEl extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Έξυπνη Αναγνώριση Τροφίμων';
	@override String get description => 'Τραβήξτε μια φωτογραφία και αφήστε το AI να αναγνωρίσει το γεύμα σας';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisEl extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI Ανάλυση';
	@override String get description => 'Λάβετε άμεσα διατροφικά στοιχεία από τις περιγραφές σας';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationEl extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ενσωμάτωση Υγείας';
	@override String get description => 'Συνδεθείτε με Health Connect για καλύτερες πληροφορίες';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesEl extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Λιποβαρής';
	@override String get healthyWeight => 'Υγιές βάρος';
	@override String get overweight => 'Υπέρβαρος';
	@override String get obese => 'Παχύσαρκος';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesEl extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Μπορούμε να σας βοηθήσουμε να φτιάξετε ένα υγιές πλάνο για να φτάσετε σε ισορροπημένο βάρος με θρεπτικά γεύματα.';
	@override String get healthy => 'Μπράβο! Βρίσκεστε σε υγιή περιοχή. Θα σας βοηθήσουμε να διατηρήσετε τη ζωτικότητα και τα επίπεδα ενέργειάς σας.';
	@override String overweight({required Object appLabel}) => '${appLabel} θα απλοποιήσει το ταξίδι σας με παρακολούθηση με AI για να φτάσετε άνετα στο στόχο σας.';
	@override String get obese => 'Είμαστε εδώ για να σας υποστηρίξουμε με εξατομικευμένη καθοδήγηση και βιώσιμες στρατηγικές για τους στόχους υγείας σας.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingEl extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Αυτόματη Καταγραφή Θερμίδων';
	@override String get description => 'Καταγραφή θερμίδων που κάηκαν από τις εφαρμογές fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsEl extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ενδείξεις Προόδου';
	@override String get description => 'Λάβετε λεπτομερείς ενδείξεις για τις τάσεις της υγείας σας';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationEl extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Απρόσκοπτη Ενσωμάτωση';
	@override String get description => 'Συγχρονίστε δεδομένα από τις αγαπημένες σας εφαρμογές υγείας';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessEl extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Δεν είστε μόνος/η';
	@override String get genericMessage => 'Έρευνες δείχνουν ότι η συνεπής καταγραφή είναι ο πιο σημαντικός δείκτης μακροπρόθεσμης επιτυχίας.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Για έναν/μια ${age} ετών ${gender} που θέλει να ${goal}, η συνεπής καταγραφή είναι ο πιο σημαντικός δείκτης επιτυχίας.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} το κάνει 10x πιο εύκολο από το να το κάνετε χειροκίνητα.';
	@override String get getStartedTitle => 'Έτοιμος/η να ξεκινήσετε;';
	@override String get tipPhoto => 'Τραβήξτε φωτογραφία των γευμάτων σας για άμεση ανάλυση';
	@override String get tipConsistency => 'Καταγράψτε με συνέπεια για να δείτε ουσιαστική πρόοδο';
	@override String get tipProgress => 'Καταγράψτε την πρόοδό σας καθημερινά για να παραμείνετε κινητοποιημένοι';
	@override String get button => 'Ας ξεκινήσουμε';
	@override String get defaultGender => 'άτομο';
	@override String get defaultGoal => 'υγιέστερος/η εσείς';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileEl extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Το Προφίλ Υγείας σας';
	@override String bmiDescription({required Object bmi}) => 'Βάσει των μετρήσεών σας, το BMI σας είναι ${bmi}.';
	@override String get finalizeDescription => 'Ας ολοκληρώσουμε το προφίλ σας για να προσαρμόσουμε την εμπειρία σας.';
	@override String get goalGain => 'αυξήσετε';
	@override String get goalLose => 'χάσετε';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Για να φτάσετε το στόχο σας, θα ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Έχετε φτάσει το στόχο βάρους! Θα σας βοηθήσουμε να το διατηρήσετε.';
	@override String get button => 'Ας ξεκινήσουμε';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleEl extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Εξαιρετική αρχή!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Έχετε κάνει το πρώτο βήμα προς το ${goalText}. Εφόσον είστε ${activityText}, το ${appLabel} θα προσαρμόσει τους στόχους σας στο τρόπο ζωής σας.';
	@override String get personalizedTargets => 'Προσωποποιημένοι στόχοι θερμίδων';
	@override String get aiMealDetection => 'Ανίχνευση γευμάτων με AI';
	@override String get macroBreakdowns => 'Λεπτομερείς αναλύσεις μακροθρεπτικών';
	@override String get button => 'Ας ξεκινήσουμε';
	@override String get defaultGoal => 'τους στόχους σας';
	@override String get defaultActivity => 'δραστήριος/α';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightEl extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Χάσιμο Βάρους';
	@override String get description => 'Δημιουργία θερμιδικού ελλείμματος για απώλεια βάρους';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightEl extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Διατήρηση Βάρους';
	@override String get description => 'Διατήρηση του τρέχοντος βάρους';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightEl extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Αύξηση Βάρους';
	@override String get description => 'Δημιουργία θερμιδικού πλεονάσματος για αύξηση βάρους';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryEl extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Καθιστικός';
	@override String get description => 'Λίγη έως καθόλου άσκηση';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveEl extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ελαφρώς Δραστήριος';
	@override String get description => 'Ελαφριά άσκηση 1-3 ημέρες/εβδ.';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveEl extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Μέτρια Δραστήριος';
	@override String get description => 'Μέτρια άσκηση 3-5 ημέρες/εβδ.';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveEl extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Πολύ Δραστήριος';
	@override String get description => 'Σκληρή άσκηση 6-7 ημέρες/εβδ.';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveEl extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ακραία Δραστήριος';
	@override String get description => 'Πολύ σκληρή άσκηση, φυσική εργασία';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableEl extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Το Health Connect Δεν Διατίθεται';
	@override String get description => 'Το Health Connect δεν είναι διαθέσιμο σε αυτή τη συσκευή. Εγκαταστήστε το Health Connect από το Play Store (Android 9+) ή αναβαθμίστε σε Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsEl extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Δικαιώματα';
	@override String get description => 'Ζητούνται τα παρακάτω δικαιώματα για την ενσωμάτωση με το Health Connect:';
	@override String get granted => 'Επιτράπηκε';
	@override String get notGranted => 'Δεν Επιτράπηκε';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEl caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadEl nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadEl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteEl nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteEl._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryEl extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Η Ιστορία Μας';
	@override String content({required Object appLabel}) => 'Το ${appLabel} γεννήθηκε από μια απλή απογοήτευση: οι περισσότερες εφαρμογές καταγραφής θερμίδων είναι είτε υπερβολικά περίπλοκες, απαιτούν συνεχή μη αυτόματη εισαγωγή, χρεώνουν υψηλές συνδρομές ή θέτουν σε κίνδυνο το απόρρητο.\n\nΩς μοναδικός προγραμματιστής, ήθελα να δημιουργήσω κάτι απλούστερο και δικαιότερο — μια εφαρμογή που χρησιμοποιεί AI για να μειώσει την προσπάθεια, παραμένει γρήγορη και δωρεάν στη χρήση και αντιμετωπίζει τα δεδομένα υγείας σας με σεβασμό.\n\nΤο ${appLabel} είναι η εφαρμογή που θα ήθελα να υπάρχει: χωρίς λογαριασμούς, χωρίς παρακολούθηση, χωρίς διαφημίσεις — μόνο σαφείς, πρακτικές πληροφορίες και τους στόχους υγείας σας.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyEl extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Η Ιδιωτικότητά σας Μετράει';
	@override String get description => 'Η ιδιωτικότητα δεν είναι μετά -σκέψη — είναι αρχή σχεδιασμού. Αυτό σημαίνει στην πράξη:';
	@override String get noAccounts => 'Χωρίς λογαριασμούς\nΧρησιμοποιήστε την εφαρμογή αμέσως. Χωρίς εγγραφές, χωρίς ταυτότητες.';
	@override String noTracking({required Object appLabel}) => 'Χωρίς συμπεριφορική παρακολούθηση\nΤο ${appLabel} δεν παρακολουθεί τη δραστηριότητά σας, δεν δημιουργεί προφίλ χρήσης ούτε σας παρακολουθεί σε εφαρμογές ή ιστοσελίδες.';
	@override String noAds({required Object appLabel}) => 'Χωρίς διαφημίσεις εξ ορισμού\nΤο ${appLabel} σχεδιάστηκε να λειτουργεί χωρίς διαφημίσεις ή εμπορικοποίηση βασισμένη σε δεδομένα.';
	@override String get noDataSelling => 'Δεν πωλούμε δεδομένα\nΤα δεδομένα υγείας σας δεν πωλούνται ούτε κοινοποιούνται σε τρίτους.';
	@override String get localStorage => 'Τοπική αποθήκευση ως προτεραιότητα\nΤα δεδομένα σας παραμένουν στη συσκευή σας.';
	@override String get privacyPolicy => 'Πολιτική Ιδιωτικότητας';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperEl extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Δημιουργήθηκε από έναν Μεμονωμένο Προγραμματιστή';
	@override String description({required Object appLabel}) => 'Το ${appLabel} είναι χτισμένο και συντηρείται από έναν μοναδικό ανεξάρτητο προγραμματιστή που επικεντρώνεται στη δημιουργία ήρεμου λογισμικού υγείας που σέβεται την ιδιωτικότητα.\n\nΤα σχόλια διαβάζονται προσωπικά και βοηθούν στη διαμόρφωση της κατεύθυνσης της εφαρμογής.';
	@override String get website => 'Ιστοσελίδα';
	@override String get email => 'Ηλ. ταχυδρομείο';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackEl extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Σας Αρέσει το ${appLabel};';
	@override String description({required Object appLabel}) => 'Τα σχόλιά σας βοηθούν το ${appLabel} να γίνει καλύτερο για όλους.';
	@override String get rateApp => 'Βαθμολογήστε στο Play Store';
	@override String get sendFeedback => 'Αποστολή σχολίων';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeEl extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μέγεθος Μερίδας';
	@override String get description => 'Η ακρίβεια των εκτιμήσεων εξαρτάται σε μεγάλο βαθμό από τη σωστή εκτίμηση του μεγέθους της μερίδας.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsEl extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Τρόποι Προετοιμασίας';
	@override String description({required Object appLabel}) => 'Οι μέθοδοι μαγειρέματος μπορούν να αλλάξουν σημαντικά το διατροφικό περιεχόμενο. Οι εκτιμήσεις του ${appLabel} ενδέχεται να μην λαμβάνουν πάντα υπόψη αυτές τις παραλλαγές.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsEl extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Συστατικά';
	@override String get description => 'Τα σύνθετα πιάτα με πολλά κρυφά συστατικά μπορεί να οδηγήσουν σε λιγότερο ακριβείς εκτιμήσεις.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsEl extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Περιορισμοί Βάσης Δεδομένων';
	@override String description({required Object appLabel}) => 'Η βάση δεδομένων τροφίμων του ${appLabel} είναι εκτεταμένη αλλά ενδέχεται να μην περιλαμβάνει κάθε είδος ή παραλλαγή.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyEl extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ακρίβεια Θερμίδων';
	@override String get description => 'Αυτή η εκτίμηση είναι τόσο ακριβής όσο και η καταγραφή της πρόσληψης και δαπάνης θερμίδων. Ανακριβής καταγραφή θα οδηγήσει σε ανακριβή προβολή.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsEl extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Βιολογικοί Παράγοντες';
	@override String description({required Object appLabel}) => 'Η πραγματική απώλεια/αύξηση βάρους επηρεάζεται από τον μεταβολισμό, τις ορμόνες, τον ύπνο, το στρες, την ενυδάτωση και άλλους ατομικούς παράγοντες που το ${appLabel} δεν μπορεί να μετρήσει.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightEl extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Βάρος Νερού & Διακυμάνσεις';
	@override String get description => 'Το φυσιολογικό βάρος μπορεί να διακυμανθεί σημαντικά καθημερινά λόγω συγκράτησης νερού, πέψης και χρονισμού. Η εκτίμηση δεν λαμβάνει υπόψη αυτές τις καθημερινές αλλαγές.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEl extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επαγγελματική Καθοδήγηση';
	@override String get description => 'Μην χρησιμοποιείτε αυτή την εκτίμηση για ιατρικές αποφάσεις. Συμβουλευτείτε πάντα έναν επαγγελματία υγείας ή έναν διαιτολόγο για εξατομικευμένη διαχείριση βάρους.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrEl extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Ο Βασικός Μεταβολικός Ρυθμός (BMR) είναι οι θερμίδες που καίει το σώμα σας σε ηρεμία για να διατηρήσει βασικές λειτουργίες όπως η αναπνοή και η κυκλοφορία. Ο BMR εξαρτάται από την ηλικία, το φύλο, το ύψος και το βάρος. Ένας υψηλότερος BMR σημαίνει ότι το σώμα σας καίει φυσικά περισσότερες θερμίδες σε ηρεμία, συχνά λόγω μεγαλύτερης μυϊκής μάζας, νεότερης ηλικίας ή αρσενικού φύλου. Ένας χαμηλότερος BMR τυπικά υποδεικνύει λιγότερη μυϊκή μάζα, μεγαλύτερη ηλικία ή θηλυκό φύλο.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeEl extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Το Συνολικό Ημερήσιο Ενεργειακό Έξοδο (TDEE) είναι οι συνολικές θερμίδες που καίτε καθημερινά, συμπεριλαμβανομένου του BMR συν τις θερμίδες από σωματική δραστηριότητα και καθημερινή κίνηση. Το TDEE εξαρτάται από τον BMR και το επίπεδο δραστηριότητας. Ένα υψηλότερο TDEE σημαίνει ότι καίτε περισσότερες θερμίδες συνολικά, συνήθως λόγω μεγαλύτερης δραστηριότητας ή υψηλότερου BMR. Ένα χαμηλότερο TDEE υποδηλώνει λιγότερη καθημερινή δραστηριότητα ή χαμηλότερο BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalEl extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ημερήσιος Στόχος';
	@override String get description => 'Ο Ημερήσιος Στόχος είναι η προτεινόμενη ημερήσια πρόσληψη θερμίδων βασισμένη στο TDEE και τον στόχο βάρους σας. Για απώλεια βάρους, καταναλώνετε λιγότερες θερμίδες από το TDEE. Για διατήρηση, ταιριάζετε το TDEE. Για αύξηση, καταναλώνετε περισσότερες θερμίδες από το TDEE. Αυτό βοηθά να πετύχετε την επιθυμητή αλλαγή βάρους με υγιή ρυθμό.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedEl extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Πώς Υπολογίζεται η Εκτίμηση';
	@override String get description => 'Υπολογίζουμε το TDEE σας (βάσει του προφίλ σας) και το πολλαπλασιάζουμε με το κλάσμα της ημέρας που έχει περάσει (ώρες + λεπτά) / 24 για να εκτιμήσουμε τις θερμίδες που κάηκαν μέχρι στιγμής.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEl extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επαγγελματική Καθοδήγηση';
	@override String get description => 'Μην χρησιμοποιείτε αυτή την εκτίμηση για ιατρικές αποφάσεις. Συμβουλευτείτε πάντα έναν επαγγελματία υγείας ή έναν διαιτολόγο για εξατομικευμένη διαχείριση βάρους.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEl extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ανάγνωση Συνολικών Θερμίδων που Κάηκαν';
	@override String get description => 'Επιτρέπει στην εφαρμογή να διαβάζει τις συνολικές θερμίδες που κάηκαν από το Health Connect.';
	@override String get usage => 'Αυτό το δικαίωμα χρησιμοποιείται για να εμφανιστεί η ημερήσια καύση θερμίδων στην εφαρμογή, βοηθώντας σας να κατανοήσετε τη συνολική ενεργειακή δαπάνη.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadEl extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ανάγνωση Δεδομένων Διατροφής';
	@override String get description => 'Επιτρέπει στην εφαρμογή να διαβάζει τα δεδομένα διατροφής από το Health Connect.';
	@override String get usage => 'Αυτό επιτρέπει στην εφαρμογή να διαβάζει διατροφικές πληροφορίες που μπορεί να έχουν καταχωρήσει άλλες εφαρμογές συνδεδεμένες με το Health Connect, παρέχοντας μια ολοκληρωμένη εικόνα της διατροφής σας.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteEl extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteEl._(TranslationsEl root) : this._root = root, super.internal(root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Εγγραφή Δεδομένων Διατροφής';
	@override String get description => 'Επιτρέπει στην εφαρμογή να γράφει δεδομένα διατροφής στο Health Connect.';
	@override String get usage => 'Αυτό επιτρέπει στην εφαρμογή να συγχρονίζει τα καταγεγραμμένα γεύματά σας στο Health Connect, κάνοντας τα διατροφικά σας δεδομένα διαθέσιμα σε άλλες εφαρμογές υγείας και fitness που χρησιμοποιείτε.';
}

/// The flat map containing all translations for locale <el>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Ελληνικά',
			'flag' => '🇬🇷',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Έχετε κάνει πάρα πολλά αιτήματα. Περιμένετε λίγο πριν προσπαθήσετε ξανά.',
			'errors.networkError' => 'Σφάλμα δικτύου. Ελέγξτε τη σύνδεσή σας στο διαδίκτυο.',
			'errors.unknownError' => 'Κάτι πήγε στραβά. Παρακαλώ δοκιμάστε ξανά αργότερα.',
			'errors.loadingProfileData' => 'Σφάλμα κατά τη φόρτωση των δεδομένων προφίλ',
			'errors.somethingWentWrong' => 'Κάτι πήγε στραβά.',
			'errors.retry' => 'Δοκιμάστε ξανά',
			'onboarding.welcome' => ({required Object appLabel}) => 'Καλώς ορίσατε στο ${appLabel}',
			'onboarding.subtitle' => 'Ο προσωπικός σας σύμβουλος διατροφής με AI',
			'onboarding.getStarted' => 'Ξεκινήστε',
			'onboarding.features.foodRecognition.title' => 'Έξυπνη Αναγνώριση Τροφίμων',
			'onboarding.features.foodRecognition.description' => 'Τραβήξτε μια φωτογραφία και αφήστε το AI να αναγνωρίσει το γεύμα σας',
			'onboarding.features.aiAnalysis.title' => 'AI Ανάλυση',
			'onboarding.features.aiAnalysis.description' => 'Λάβετε άμεσα διατροφικά στοιχεία από τις περιγραφές σας',
			'onboarding.features.healthIntegration.title' => 'Ενσωμάτωση Υγείας',
			'onboarding.features.healthIntegration.description' => 'Συνδεθείτε με Health Connect για καλύτερες πληροφορίες',
			'onboarding.gender.title' => 'Ποιο είναι το φύλο σας;',
			'onboarding.gender.description' => 'Το φύλο μας βοηθά να υπολογίσουμε με ακρίβεια τον βασικό μεταβολικό σας ρυθμό (BMR).',
			'onboarding.gender.next' => 'Επόμενο',
			'onboarding.height.title' => 'Πόσο ύψος έχετε;',
			'onboarding.height.description' => 'Το ύψος σας βοηθά να υπολογίσουμε με ακρίβεια το BMI και τις ενεργειακές σας ανάγκες.',
			'onboarding.height.metric' => 'Μετρικό',
			'onboarding.height.imperial' => 'Αγγλοσαξονικό',
			'onboarding.height.next' => 'Επόμενο',
			'onboarding.weight.currentTitle' => 'Ποιο είναι το τωρινό σας βάρος;',
			'onboarding.weight.currentDescription' => 'Το τωρινό σας βάρος είναι απαραίτητο για την προσωποποίηση των καθημερινών σας στόχων.',
			'onboarding.weight.targetTitle' => 'Ποιο είναι το επιδιωκόμενο σας βάρος;',
			'onboarding.weight.targetDescription' => 'Ορισμός στόχου βάρους για να καθορίσουμε το μακροπρόθεσμο πλάνο σας.',
			'onboarding.weight.metric' => 'Μετρικό',
			'onboarding.weight.imperial' => 'Αγγλοσαξονικό',
			'onboarding.weight.next' => 'Επόμενο',
			'onboarding.age.title' => 'Πότε είναι τα γενέθλιά σας;',
			'onboarding.age.description' => 'Η ηλικία σας βοηθά να υπολογίσουμε με ακρίβεια τις θερμιδικές σας ανάγκες.',
			'onboarding.age.next' => 'Επόμενο',
			'onboarding.bmiScale.underweight' => 'Κάτω',
			'onboarding.bmiScale.healthy' => 'Υγιές',
			'onboarding.bmiScale.overweight' => 'Πάνω',
			'onboarding.bmiScale.obese' => 'Παχύσαρκο',
			'onboarding.bmiScale.categories.underweight' => 'Λιποβαρής',
			'onboarding.bmiScale.categories.healthyWeight' => 'Υγιές βάρος',
			'onboarding.bmiScale.categories.overweight' => 'Υπέρβαρος',
			'onboarding.bmiScale.categories.obese' => 'Παχύσαρκος',
			'onboarding.bmiScale.messages.underweight' => 'Μπορούμε να σας βοηθήσουμε να φτιάξετε ένα υγιές πλάνο για να φτάσετε σε ισορροπημένο βάρος με θρεπτικά γεύματα.',
			'onboarding.bmiScale.messages.healthy' => 'Μπράβο! Βρίσκεστε σε υγιή περιοχή. Θα σας βοηθήσουμε να διατηρήσετε τη ζωτικότητα και τα επίπεδα ενέργειάς σας.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} θα απλοποιήσει το ταξίδι σας με παρακολούθηση με AI για να φτάσετε άνετα στο στόχο σας.',
			'onboarding.bmiScale.messages.obese' => 'Είμαστε εδώ για να σας υποστηρίξουμε με εξατομικευμένη καθοδήγηση και βιώσιμες στρατηγικές για τους στόχους υγείας σας.',
			'onboarding.weightGoal.title' => 'Ποιος είναι ο στόχος σας;',
			'onboarding.weightGoal.description' => 'Επιλέξτε τον στόχο που περιγράφει καλύτερα αυτό που θέλετε να πετύχετε',
			'onboarding.activityLevel.title' => 'Πόσο δραστήριος/α είστε;',
			'onboarding.activityLevel.description' => 'Αυτό μας βοηθά να υπολογίσουμε πιο ακριβώς τις καθημερινές σας θερμιδικές ανάγκες',
			'onboarding.healthConnect.title' => 'Συνδέστε με Health Connect',
			'onboarding.healthConnect.description' => 'Συγχρονίστε τα δεδομένα υγείας σας για καλύτερες πληροφορίες και αυτόματη καταγραφή θερμίδων',
			'onboarding.healthConnect.automaticTracking.title' => 'Αυτόματη Καταγραφή Θερμίδων',
			'onboarding.healthConnect.automaticTracking.description' => 'Καταγραφή θερμίδων που κάηκαν από τις εφαρμογές fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Ενδείξεις Προόδου',
			'onboarding.healthConnect.progressInsights.description' => 'Λάβετε λεπτομερείς ενδείξεις για τις τάσεις της υγείας σας',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Απρόσκοπτη Ενσωμάτωση',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Συγχρονίστε δεδομένα από τις αγαπημένες σας εφαρμογές υγείας',
			'onboarding.healthConnect.connected' => 'Health Connect Συνδεδεμένο',
			'onboarding.healthConnect.notConnected' => 'Health Connect Δεν Συνδεδεμένο',
			'onboarding.healthConnect.setup' => 'Ρύθμιση Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Παράλειψη προς το παρόν',
			'onboarding.healthConnect.statusConnected' => 'Το Health Connect είναι συνδεδεμένο.',
			'onboarding.healthConnect.statusSuccess' => 'Το Health Connect συνδέθηκε επιτυχώς!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Απαγορεύτηκε η άδεια. Ενεργοποιήστε τα δικαιώματα του Health Connect στις ρυθμίσεις του τηλεφώνου για ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Σφάλμα κατά τη ρύθμιση του Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Δεν είστε μόνος/η',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Έρευνες δείχνουν ότι η συνεπής καταγραφή είναι ο πιο σημαντικός δείκτης μακροπρόθεσμης επιτυχίας.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Για έναν/μια ${age} ετών ${gender} που θέλει να ${goal}, η συνεπής καταγραφή είναι ο πιο σημαντικός δείκτης επιτυχίας.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} το κάνει 10x πιο εύκολο από το να το κάνετε χειροκίνητα.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Έτοιμος/η να ξεκινήσετε;',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Τραβήξτε φωτογραφία των γευμάτων σας για άμεση ανάλυση',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Καταγράψτε με συνέπεια για να δείτε ουσιαστική πρόοδο',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Καταγράψτε την πρόοδό σας καθημερινά για να παραμείνετε κινητοποιημένοι',
			'onboarding.reinforcement.trackingSuccess.button' => 'Ας ξεκινήσουμε',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'άτομο',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'υγιέστερος/η εσείς',
			'onboarding.reinforcement.healthProfile.title' => 'Το Προφίλ Υγείας σας',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Βάσει των μετρήσεών σας, το BMI σας είναι ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Ας ολοκληρώσουμε το προφίλ σας για να προσαρμόσουμε την εμπειρία σας.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'αυξήσετε',
			'onboarding.reinforcement.healthProfile.goalLose' => 'χάσετε',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Για να φτάσετε το στόχο σας, θα ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Έχετε φτάσει το στόχο βάρους! Θα σας βοηθήσουμε να το διατηρήσετε.',
			'onboarding.reinforcement.healthProfile.button' => 'Ας ξεκινήσουμε',
			'onboarding.reinforcement.goalLifestyle.title' => 'Εξαιρετική αρχή!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Έχετε κάνει το πρώτο βήμα προς το ${goalText}. Εφόσον είστε ${activityText}, το ${appLabel} θα προσαρμόσει τους στόχους σας στο τρόπο ζωής σας.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Προσωποποιημένοι στόχοι θερμίδων',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Ανίχνευση γευμάτων με AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Λεπτομερείς αναλύσεις μακροθρεπτικών',
			'onboarding.reinforcement.goalLifestyle.button' => 'Ας ξεκινήσουμε',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'τους στόχους σας',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'δραστήριος/α',
			'tabs.dashboard' => 'Ταμπλό',
			'tabs.history' => 'Ιστορικό',
			'home.aiSummary.title' => 'Η Σύνοψη AI σας',
			'home.aiSummary.logMore' => 'Καταγράψτε περισσότερα γεύματα τις επόμενες μέρες για να λάβετε προσωποποιημένα AI συμπεράσματα.',
			'home.aiSummary.loading' => 'Φόρτωση της σύνοψης σας...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} γεύματα καταχωρήθηκαν',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Βαθμολογία ισορροπίας ${score}',
			'home.aiSummary.topFoods' => 'Κορυφαία τρόφιμα',
			'home.aiSummary.trendUp' => 'Θερμίδες σε άνοδο',
			'home.aiSummary.trendDown' => 'Θερμίδες σε πτώση',
			'home.aiSummary.trendSteady' => 'Θερμίδες σταθερές',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Ενημερώθηκε ${time}',
			'home.dailyGoal.title' => 'Ορίστε το Ημερήσιο Στόχο σας',
			'home.dailyGoal.titleSet' => 'Ο Ημερήσιος Στόχος σας',
			'home.dailyGoal.description' => 'Έτοιμοι για το ταξίδι ευεξίας σας; Ορίστε παρακάτω τον καθημερινό στόχο θερμίδων για να ξεκινήσετε την πρόοδό σας.',
			'home.dailyGoal.descriptionSet' => 'Η πυξίδα σας έχει οριστεί! Αυτός είναι ο καθημερινός σας στόχος θερμίδων για καθοδήγηση.',
			'home.dailyGoal.yourGoal' => 'Ο Στόχος σας',
			'home.dailyGoal.goal' => 'Στόχος',
			'home.dailyGoal.dailyCalories' => 'Ημερήσιες θερμίδες (kcal)',
			'home.dailyGoal.setGoal' => 'Ορισμός Στόχου',
			'home.dailyGoal.intake' => 'Είσοδος',
			'home.dailyGoal.burned' => 'Καμένες',
			'home.dailyGoal.weightImpact' => 'Επίδραση στο βάρος',
			'home.dailyGoal.estLoss' => 'Προβλ. απώλεια',
			'home.dailyGoal.estGain' => 'Προβλ. αύξηση',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Ημερήσια Σύνοψη',
			'home.dailySummary.calories' => 'Θερμίδες',
			'home.dailySummary.carbs' => 'Υδατάνθρακες',
			'home.dailySummary.protein' => 'Πρωτεΐνη',
			'home.dailySummary.fat' => 'Λίπος',
			'home.dailySummary.fiber' => 'Ινες',
			'home.dailySummary.grams' => 'γραμ.',
			'home.dailySummary.chartAccessibilityLabel' => 'Διάγραμμα μακροθρεπτικών',
			'home.intakeProgress.title' => 'Σημερινή Κατανομή Μακροθρεπτικών',
			'home.intakeProgress.target' => 'Στόχος',
			'home.intakeProgress.current' => 'Τρέχον',
			'home.intakeHistory.title' => 'Ιστορικό Μακροθρεπτικών 7 ημερών',
			'home.intakeHistory.trendTitle' => 'Σημερινή Τάση',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Κορύφωση: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Δεν υπάρχει ιστορικό ακόμα',
			'home.intakeHistory.startLogging' => 'Ξεκινήστε να καταγράφετε γεύματα για να δείτε τις\n7ήμερες τάσεις μακροθρεπτικών εδώ',
			'home.mealLog.title' => 'Καταχωρημένα Γεύματα',
			'home.mealLog.emptyMessage' => 'Τραβήξτε μια φωτογραφία του τελευταίου γεύματός σας για να το καταγράψετε εδώ.',
			'home.mealLog.noMealsToday' => 'Δεν έχει καταγραφεί κανένα γεύμα για σήμερα',
			'home.mealLog.seeAllMeals' => 'Δείτε όλα τα γεύματα',
			'home.mealDescription.title' => 'Γρήγορη Προσθήκη με AI',
			'home.mealDescription.description' => 'Περιγράψτε το γεύμα σας και αφήστε το AI να αναλάβει τις λεπτομέρειες.',
			'home.mealDescription.hint' => 'π.χ. Στο πρωινό είχα ένα μεγάλο μπολ βρώμης με μια μπανάνα σε φέτες και μια μεζούρα πρωτεΐνης ...',
			'home.mealDescription.analyzeMeal' => 'Ανάλυση γεύματος',
			'home.favoriteMeals.title' => 'Αγαπημένα Γεύματα',
			'home.favoriteMeals.description' => 'Προσθέστε γρήγορα ένα από τα αγαπημένα σας γεύματα.',
			'home.favoriteMeals.noFavorites' => 'Δεν υπάρχουν αγαπημένα ακόμη.',
			'home.favoriteMeals.addFavoriteHint' => 'Κάντε κλικ στο αστέρι σε ένα γεύμα για να το σημειώσετε ως αγαπημένο.',
			'home.favoriteMeals.seeAll' => 'Δείτε όλα',
			'home.favoriteMeals.add' => 'Προσθήκη',
			'home.mealSnap.title' => 'Φωτογραφίστε & Καταγράψτε το Γεύμα σας',
			'home.mealSnap.description' => 'Χρησιμοποιήστε την κάμερα για να τραβήξετε μια εικόνα του φαγητού για ανάλυση με AI.',
			'home.mealSnap.openCamera' => 'Άνοιγμα Κάμερας',
			'home.mealSnap.gallery' => 'Σύλλογος',
			'home.mealSnap.compressingPhoto' => 'Βελτιστοποίηση φωτογραφίας…',
			'home.mealSnap.uploadingPhoto' => 'Αποστολή φωτογραφίας…',
			'home.connectHealth.title' => 'Συγχρονισμός με Health Connect',
			'home.connectHealth.description' => 'Συγχρονίστε τα διατροφικά σας με το Health Connect',
			'home.connectHealth.install' => 'Εγκατάσταση',
			'home.connectHealth.connect' => 'Σύνδεση',
			'history.noMeals' => 'Δεν έχουν καταγραφεί γεύματα',
			'history.emptyMessage' => 'Τραβήξτε μια φωτογραφία του τελευταίου γεύματός σας για να το καταγράψετε εδώ.',
			'history.today' => 'Σήμερα',
			'history.yesterday' => 'Χθες',
			'meal.ohNo' => 'Ωχ όχι!',
			'meal.delete' => 'Διαγραφή',
			'meal.editMeal' => 'Επεξεργασία Γεύματος',
			'meal.addMeal' => 'Προσθήκη Γεύματος',
			'meal.saveMeal' => 'Αποθήκευση Γεύματος',
			'meal.save' => 'Αποθήκευση',
			'meal.mealName' => 'Όνομα Γεύματος',
			'meal.mealNameHint' => 'π.χ., Αυγά σκραμπλ με τοστ',
			'meal.nameRequired' => 'Εισαγάγετε ένα όνομα γεύματος πριν την αποθήκευση.',
			'meal.mealQuantity' => 'Ποσότητα Γεύματος',
			'meal.mealQuantityHint' => 'π.χ., 1 μπολ, 2 φέτες',
			'meal.timeOfMeal' => 'Ώρα Γεύματος',
			'meal.timeOfMealHint' => 'Επιλέξτε την ώρα που φάγατε',
			'meal.mealType' => 'Τύπος Γεύματος',
			'meal.nutrition.calories' => 'Θερμίδες',
			'meal.nutrition.carbs' => 'Υδατάνθρακες (g)',
			'meal.nutrition.protein' => 'Πρωτεΐνη (g)',
			'meal.nutrition.fat' => 'Λίπος (g)',
			'meal.nutrition.fiber' => 'Ίνες (g)',
			'meal.deleteConfirmation.title' => 'Διαγραφή Γεύματος',
			'meal.deleteConfirmation.message' => 'Είστε βέβαιοι ότι θέλετε να διαγράψετε αυτή την καταχώριση γεύματος;',
			'meal.deleteConfirmation.cancel' => 'Ακύρωση',
			'meal.deleteConfirmation.delete' => 'Διαγραφή',
			'meal.addedToLog' => 'Το γεύμα προστέθηκε στο ημερολόγιό σας!',
			'meal.couldNotAdd' => ({required Object error}) => 'Δεν ήταν δυνατή η προσθήκη γεύματος: ${error}',
			'meal.savedSuccessfully' => 'Το γεύμα προστέθηκε με επιτυχία!',
			'meal.updatedSuccessfully' => 'Το γεύμα ενημερώθηκε με επιτυχία!',
			'meal.errorSaving' => ({required Object error}) => 'Σφάλμα κατά την αποθήκευση γεύματος: ${error}',
			'meal.removedFromFavorites' => 'Αφαιρέθηκε από τα αγαπημένα!',
			'meal.savedAsFavorite' => 'Το γεύμα αποθηκεύτηκε ως αγαπημένο!',
			'meal.unfavorite' => 'Αφαίρεση από αγαπημένα',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Δεν ήταν δυνατή η ενημέρωση του αγαπημένου: ${error}',
			'meal.feedbackThanks' => 'Ευχαριστούμε για τα σχόλια!',
			'meal.reanalysisUpdated' => 'Ενημερώθηκε η ανάλυση γεύματος βάσει των σχολίων σας.',
			'meal.failedToProcess' => ({required Object error}) => 'Αποτυχία επεξεργασίας: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Αποτυχία επεξεργασίας εικόνας: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Σφάλμα κατά τη συμπίεση εικόνας: ${error}',
			'meal.failedToSave' => 'Αποτυχία αποθήκευσης δεδομένων. Παρακαλώ δοκιμάστε ξανά.',
			'meal.skip' => 'Παράλειψη',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Ερώτηση ${current} από ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Δεν υπάρχουν διαθέσιμες ερωτήσεις',
			'meal.questionFlow.next' => 'Επόμενο',
			'meal.questionFlow.continueLabel' => 'Συνέχεια',
			'meal.analysis.title' => 'Ανάλυση του γεύματός σας',
			'meal.analysis.stepStarted' => 'Εκκίνηση…',
			'meal.analysis.stepDecomposition' => 'Κατανόηση του γεύματος…',
			'meal.analysis.stepIngredients' => 'Αντιστοίχιση συστατικών με διατροφικά δεδομένα…',
			'meal.analysis.stepUncertainty' => 'Έλεγχος εμπιστοσύνης…',
			'meal.analysis.stepMealTypeQuestion' => 'Λίγο ακόμα…',
			'meal.analysis.stepResult' => 'Ολοκλήρωση αποτελέσματος…',
			'meal.analysis.stepError' => 'Κάτι πήγε στραβά',
			'meal.analysis.stepDefault' => 'Ανάλυση του γεύματός σας…',
			'meal.analysis.progressUnderstand' => 'Κατανόηση του γεύματος',
			'meal.analysis.progressMatch' => 'Αναζήτηση διατροφικών στοιχείων συστατικών',
			'meal.analysis.progressCheck' => 'Έλεγχος μερίδων και εμπιστοσύνης',
			'meal.analysis.progressMealType' => 'Επιλογή τύπου γεύματος',
			'meal.analysis.progressFinish' => 'Υπολογισμός θερμίδων και μακροθρεπτικών',
			'meal.analysis.detectedIngredientHeading' => 'Συστατικά που εντοπίζουμε',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} ακόμη',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'Εντοπίστηκαν ${count} συστατικά',
			'meal.analysis.ingredientsPending' => 'Σάρωση συστατικών…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Συμβουλή: Η συνέπεια ξεπερνά την τελειότητα — οι τακτικές εγγραφές αποκαλύπτουν τα μοτίβα που έχουν σημασία.',
			'meal.analysis.offlineTip1' => 'Συμβουλή: Για φωτογραφίες, ο φυσικός φωτισμός και η λήψη από πάνω βοηθούν στην ακρίβεια των μερίδων.',
			'meal.analysis.offlineTip2' => 'Συμβουλή: Αναφέρετε ροφήματα, σάλτσες και λάδι μαγειρέματος — προσθέτουν θερμίδες που συχνά ξεχνιούνται.',
			'meal.analysis.offlineTip3' => 'Συμβουλή: Μια σύντομη σημείωση μερίδας (1 μπολ, μεγάλο καφέ) βελτιώνει σημαντικά τις εκτιμήσεις.',
			'meal.analysis.offlineTip4' => 'Συμβουλή: Η καταγραφή μετά το γεύμα χτίζει ακόμη τη συνήθεια· η τελειότητα δεν είναι υποχρεωτική.',
			'meal.analysis.offlineTip5' => 'Συμβουλή: Πείτε πώς μαγειρεύτηκε το φαγητό όταν αλλάζει πολύ τις θερμίδες (τηγανητό vs ψητό).',
			'meal.localInference.reviewTitle' => 'Ελεγχος ανιχνευμένων συστατικών',
			'meal.localInference.reviewSubtitle' => 'Αυτό ερμηνεύτηκε στη συσκευή σας. Διορθώστε τα ονόματα ή τις ποσότητες πριν υπολογιστεί η θρεπτική αξία.',
			'meal.localInference.mealName' => 'Όνομα γεύματος',
			'meal.localInference.ingredient' => 'Συστατικό',
			'meal.localInference.grams' => 'Εκτιμώμενα γραμμάρια',
			'meal.localInference.removeIngredient' => 'Αφαίρεση συστατικού',
			'meal.localInference.continueLabel' => 'Συνέχεια',
			'meal.localInference.invalidProposal' => 'Προσθέστε τουλάχιστον ένα συστατικό και χρησιμοποιήστε μια θετική ποσότητα γραμμαρίων.',
			'meal.localInference.localUnavailable' => 'Η ανάλυση στη συσκευή δεν είναι διαθέσιμη αυτή τη στιγμή.',
			'meal.localInference.calculationDetails' => 'Πώς υπολογίστηκε αυτό',
			'meal.localInference.interpretationLocal' => 'Συστατικά που ερμηνεύτηκαν σε αυτή τη συσκευή',
			'meal.localInference.interpretationCloud' => 'Συστατικά που ερμηνεύτηκαν στο cloud',
			'meal.localInference.interpretationManual' => 'Συστατικά που ελέγξατε ή επεξεργαστήκατε εσείς',
			'meal.localInference.nutritionRemote' => 'Θρεπτικά στοιχεία από το USDA μέσω του Calorify',
			'meal.localInference.nutritionFallback' => 'Ορισμένες θρεπτικές τιμές εκτιμήθηκαν απομακρυσμένα',
			'meal.localInference.calculationServer' => 'Θερμίδες και μακροθρεπτικά υπολογίστηκαν από το Calorify',
			'meal.localInference.fallbackUsed' => 'Η τοπική ανάλυση μεταφέρθηκε σε επεξεργασία cloud',
			'meal.localInference.noRawContent' => 'Οι διαγνωστικές αποδείξεις δεν περιλαμβάνουν το κείμενο ή τη φωτογραφία του γεύματός σας.',
			'meal.feedback.title' => 'Τι φαίνεται λανθασμένο;',
			'meal.feedback.subtitle' => 'Βοηθήστε μας να βελτιώσουμε την ανάλυση επιλέγοντας ένα ή περισσότερα ζητήματα.',
			'meal.feedback.tellUsMore' => 'Πείτε μας περισσότερα',
			'meal.feedback.describeIncorrect' => 'Περιγράψτε τι ήταν λάθος',
			'meal.feedback.submit' => 'Υποβολή',
			'meal.feedback.issueFoodIdentification' => 'Αναγνώριση τροφίμου',
			'meal.feedback.issuePortionSize' => 'Μέγεθος μερίδας',
			'meal.feedback.issueCalorieDistribution' => 'Κατανομή θερμίδων',
			'meal.feedback.issueMacrosWrong' => 'Λάθος μακροθρεπτικά',
			'meal.feedback.issueMissingItems' => 'Λείπουν είδη',
			'meal.feedback.issueExtraItems' => 'Περιττά είδη',
			'meal.feedback.issueOther' => 'Άλλο',
			'favorites.title' => 'Αγαπημένα',
			'favorites.empty' => 'Δεν υπάρχουν αγαπημένα γεύματα.',
			'favorites.searchPlaceholder' => 'Αναζήτηση αγαπημένων γευμάτων',
			'favorites.searchEmptyTitle' => 'Καμία αντιστοιχία στα αγαπημένα',
			'favorites.searchEmptySubtitle' => 'Δοκιμάστε διαφορετικό όνομα γεύματος, ποσότητα ή τύπο γεύματος.',
			'favorites.sortLabel' => 'Ταξινόμηση αγαπημένων',
			'favorites.undo' => 'Αναίρεση',
			'favorites.removed' => ({required Object name}) => 'Αφαιρέθηκε ${name} από τα αγαπημένα',
			'favorites.sortOptions.recent' => 'Πρόσφατα',
			'favorites.sortOptions.calories' => 'Θερμίδες',
			'favorites.sortOptions.alphabetical' => 'A-Ω',
			'profile.title' => 'Προφίλ',
			'profile.noProfileData' => 'Δεν βρέθηκαν δεδομένα προφίλ',
			'profile.yourProfile' => 'Το Προφίλ Σας',
			'profile.viewAndManage' => 'Προβολή και διαχείριση των πληροφοριών υγείας σας',
			'profile.sections.profile' => 'ΠΡΟΦΙΛ',
			'profile.sections.basicInformation' => 'ΒΑΣΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ',
			'profile.sections.goalsAndActivity' => 'ΣΤΟΧΟΙ & ΔΡΑΣΤΗΡΙΟΤΗΤΑ',
			'profile.sections.calculatedValues' => 'ΥΠΟΛΟΓΙΣΜΕΝΕΣ ΤΙΜΕΣ',
			'profile.gender' => 'Φύλο',
			'profile.height' => 'Ύψος',
			'profile.weight' => 'Βάρος',
			'profile.age' => 'Ηλικία',
			'profile.weightGoal' => 'Στόχος Βάρους',
			'profile.targetWeight' => 'Επιδιωκόμενο Βάρος',
			'profile.activityLevel' => 'Επίπεδο Δραστηριότητας',
			'profile.healthMetrics' => 'Δείκτες Υγείας',
			'profile.notSet' => 'Μη ορισμένο',
			'profile.years' => 'έτη',
			'profile.updatedSuccessfully' => 'Το προφίλ ενημερώθηκε με επιτυχία!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Ημερήσιος Στόχος',
			'profile.calculatedValues.calPerDay' => 'cal/ημέρα',
			'profile.calculatedValues.notAvailable' => 'Μη διαθέσιμο',
			'healthScore.title' => 'Βαθμολογία Υγείας',
			'healthScore.whyThisScore' => 'Γιατί αυτή η βαθμολογία;',
			'healthScore.note' => 'Αυτή η βαθμολογία είναι μια εκτίμηση AI βασισμένη στα εντοπισμένα συστατικά και τη διατροφική πυκνότητα. Συμβουλευτείτε πάντα επαγγελματία για εξατομικευμένες διατροφικές συμβουλές.',
			'healthScore.unhealthy' => 'Ανθυγιεινό',
			'healthScore.healthy' => 'Υγιεινό',
			'healthScore.neutral' => 'Ουδέτερο',
			'editProfile.title' => 'Επεξεργασία Προφίλ',
			'editProfile.sections.personalInformation' => 'ΠΡΟΣΩΠΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ',
			'editProfile.sections.physicalMeasurements' => 'ΣΩΜΑΤΙΚΕΣ ΜΕΤΡΗΣΕΙΣ',
			'editProfile.sections.goalsAndActivity' => 'ΣΤΟΧΟΙ & ΔΡΑΣΤΗΡΙΟΤΗΤΑ',
			'editProfile.gender' => 'Φύλο',
			'editProfile.dateOfBirth' => 'Ημερομηνία Γέννησης',
			'editProfile.height' => 'Ύψος',
			'editProfile.weight' => 'Βάρος',
			'editProfile.weightGoal' => 'Στόχος Βάρους',
			'editProfile.activityLevel' => 'Επίπεδο Δραστηριότητας',
			'editProfile.metric' => 'Μετρικό',
			'editProfile.imperial' => 'Αγγλοσαξονικό',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Μετρικό (cm)',
			'editProfile.imperialFtIn' => 'Αγγλοσαξονικό (ft/in)',
			'editProfile.metricKg' => 'Μετρικό (kg)',
			'editProfile.imperialLbs' => 'Αγγλοσαξονικό (lbs)',
			'editProfile.genders.male' => 'Άνδρας',
			'editProfile.genders.female' => 'Γυναίκα',
			'editProfile.genders.other' => 'Άλλο',
			'editProfile.weightGoals.loseWeight.name' => 'Χάσιμο Βάρους',
			'editProfile.weightGoals.loseWeight.description' => 'Δημιουργία θερμιδικού ελλείμματος για απώλεια βάρους',
			'editProfile.weightGoals.maintainWeight.name' => 'Διατήρηση Βάρους',
			'editProfile.weightGoals.maintainWeight.description' => 'Διατήρηση του τρέχοντος βάρους',
			'editProfile.weightGoals.gainWeight.name' => 'Αύξηση Βάρους',
			'editProfile.weightGoals.gainWeight.description' => 'Δημιουργία θερμιδικού πλεονάσματος για αύξηση βάρους',
			'editProfile.activityLevels.sedentary.name' => 'Καθιστικός',
			'editProfile.activityLevels.sedentary.description' => 'Λίγη έως καθόλου άσκηση',
			'editProfile.activityLevels.lightlyActive.name' => 'Ελαφρώς Δραστήριος',
			'editProfile.activityLevels.lightlyActive.description' => 'Ελαφριά άσκηση 1-3 ημέρες/εβδ.',
			'editProfile.activityLevels.moderatelyActive.name' => 'Μέτρια Δραστήριος',
			'editProfile.activityLevels.moderatelyActive.description' => 'Μέτρια άσκηση 3-5 ημέρες/εβδ.',
			'editProfile.activityLevels.veryActive.name' => 'Πολύ Δραστήριος',
			'editProfile.activityLevels.veryActive.description' => 'Σκληρή άσκηση 6-7 ημέρες/εβδ.',
			'editProfile.activityLevels.extremelyActive.name' => 'Ακραία Δραστήριος',
			'editProfile.activityLevels.extremelyActive.description' => 'Πολύ σκληρή άσκηση, φυσική εργασία',
			'settings.title' => 'Ρυθμίσεις',
			'settings.sections.profile' => 'ΠΡΟΦΙΛ',
			'settings.sections.localization' => 'ΤΟΠΟΠΟΙΗΣΗ',
			'settings.sections.notifications' => 'ΕΙΔΟΠΟΙΗΣΕΙΣ',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.localInference' => 'ΑΝΑΛΥΣΗ ΣΤΗ ΣΥΣΚΕΥΗ',
			'settings.sections.supportAndLegal' => 'ΥΠΟΣΤΗΡΙΞΗ & ΝΟΜΙΚΑ',
			'settings.sections.about' => 'ΠΛΗΡΟΦΟΡΙΕΣ',
			'settings.sections.dangerZone' => 'ΠΕΡΙΟΧΗ ΚΙΝΔΥΝΟΥ',
			'settings.sections.developer' => 'ΑΝΑΠΤΥΞΗΣ',
			'settings.editProfile.title' => 'Επεξεργασία Προφίλ',
			'settings.editProfile.subtitle' => 'Ενημερώστε τις προσωπικές σας πληροφορίες',
			'settings.language.title' => 'Γλώσσα',
			'settings.language.subtitle' => 'Επιλέξτε την προτιμώμενη γλώσσα σας',
			'settings.language.searchHint' => 'Αναζήτηση γλωσσών...',
			'settings.language.noResults' => 'Δεν βρέθηκαν αποτελέσματα',
			'settings.heightUnit.title' => 'Μονάδα Ύψους',
			'settings.weightUnit.title' => 'Μονάδα Βάρους',
			'settings.mealReminders.title' => 'Υπενθυμίσεις Γευμάτων',
			'settings.mealReminders.subtitle' => 'Μείνετε στην πορεία με έγκαιρες ειδοποιήσεις',
			'settings.localInference.title' => 'Ανάλυση γεύματος στη συσκευή',
			'settings.localInference.subtitle' => 'Ερμηνεία υποστηριζόμενων γευμάτων με το Gemini Nano πριν τον υπολογισμό της θρεπτικής αξίας',
			'settings.localInference.unavailable' => 'Δεν είναι διαθέσιμο σε αυτή τη συσκευή',
			'settings.localInference.rolloutUnavailable' => 'Βρέθηκε συμβατό υλικό, αλλά αυτή η λειτουργία δεν είναι ενεργοποιημένη για αυτή την έκδοση της εφαρμογής',
			'settings.localInference.modelSetup' => 'Το Gemini Nano πρέπει να ολοκληρώσει τη λήψη πριν ενεργοποιηθεί αυτή η λειτουργία',
			'settings.localInference.useLocalTitle' => 'Χρήση ανάλυσης στη συσκευή',
			'settings.localInference.useLocalSubtitle' => 'Προαιρετικό και απενεργοποιημένο από προεπιλογή. Τα αποτελέσματα ενδέχεται να είναι λιγότερο αξιόπιστα για σύνθετα γεύματα.',
			'settings.localInference.disclosureTitle' => 'Πριν ενεργοποιήσετε την ανάλυση στη συσκευή',
			'settings.localInference.disclosureBody' => 'Το Gemini Nano μπορεί να αναγνωρίσει συστατικά και να εκτιμήσει μερίδες σε υποστηριζόμενες συσκευές Android. Η πρόταση συστατικών που ελέγξατε αποστέλλεται στο Calorify για τεκμηρίωση θρεπτικών στοιχείων από το USDA και υπολογισμό.',
			'settings.localInference.disclosureLimit1' => 'Σύνθετα πιάτα, κρυμμένα συστατικά και μεγέθη μερίδων ενδέχεται να αναγνωριστούν λανθασμένα.',
			'settings.localInference.disclosureLimit2' => 'Το μοντέλο ενδέχεται να είναι μη διαθέσιμο κατά τη λήψη, όταν είναι απασχολημένο, στο παρασκήνιο ή λόγω περιορισμών της συσκευής.',
			'settings.localInference.disclosureLimit3' => 'Εάν η τοπική ερμηνεία δεν μπορεί να ολοκληρωθεί, αυτή η beta έκδοση στέλνει αυτόματα την αρχική περιγραφή του γεύματός σας στο Calorify για ανάλυση στο cloud.',
			'settings.localInference.acknowledgement' => 'Κατανοώ ότι πρέπει να ελέγχω τα ανιχνευμένα συστατικά και τις μερίδες.',
			'settings.localInference.enable' => 'Αποδοχή και ενεργοποίηση',
			'settings.localInference.cancel' => 'Ακύρωση',
			'settings.theme.title' => 'Θέμα',
			'settings.theme.light' => 'Φωτεινό',
			'settings.theme.dark' => 'Σκοτεινό',
			'settings.theme.system' => 'Σύστημα',
			'settings.sendFeedback.title' => 'Αποστολή Σχολίων',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Βοηθήστε να βελτιώσουμε το ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} Σχόλια εφαρμογής',
			'settings.sendFeedback.emailBodyPrefix' => 'Παρακαλώ δώστε τα σχόλιά σας παρακάτω:',
			'settings.sendFeedback.appVersion' => 'Έκδοση εφαρμογής',
			'settings.sendFeedback.device' => 'Συσκευή',
			'settings.sendFeedback.osVersion' => 'Έκδοση OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Εξαγωγή Ιστορικού Γευμάτων',
			'settings.exportMealHistory.subtitle' => 'Μοιραστείτε ένα CSV με τα καταχωρημένα γεύματά σας',
			'settings.exportMealHistory.shareText' => 'Εξαγωγή ιστορικού γευμάτων Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Δεν ήταν δυνατή η εξαγωγή ιστορικού γευμάτων: ${error}',
			'settings.clearAllData.title' => 'Διαγραφή Όλων των Δεδομένων',
			'settings.clearAllData.subtitle' => 'Διαγραφή όλων των πληροφοριών σας χωρίς επιστροφή',
			'settings.clearAllData.confirmationTitle' => 'Διαγραφή όλων των δεδομένων;',
			'settings.clearAllData.confirmationMessage' => 'Αυτή η ενέργεια δεν μπορεί να αναιρεθεί. Όλα τα καταγεγραμμένα γεύματα, τα αγαπημένα και οι ρυθμίσεις προφίλ θα διαγραφούν οριστικά.',
			'settings.clearAllData.cancel' => 'Ακύρωση',
			'settings.clearAllData.clearEverything' => 'Διαγραφή Όλων',
			'settings.debugOptions.title' => 'Επιλογές Αποσφαλμάτωσης',
			'settings.developerModeEnabled' => 'Λειτουργία προγραμματιστή ενεργοποιήθηκε!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Προβολή και διαχείριση αδειών',
			'settings.healthConnect.unavailable.title' => 'Το Health Connect Δεν Διατίθεται',
			'settings.healthConnect.unavailable.description' => 'Το Health Connect δεν είναι διαθέσιμο σε αυτή τη συσκευή. Εγκαταστήστε το Health Connect από το Play Store (Android 9+) ή αναβαθμίστε σε Android 14+.',
			'settings.healthConnect.permissions.title' => 'Δικαιώματα',
			'settings.healthConnect.permissions.description' => 'Ζητούνται τα παρακάτω δικαιώματα για την ενσωμάτωση με το Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Επιτράπηκε',
			'settings.healthConnect.permissions.notGranted' => 'Δεν Επιτράπηκε',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Ανάγνωση Συνολικών Θερμίδων που Κάηκαν',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Επιτρέπει στην εφαρμογή να διαβάζει τις συνολικές θερμίδες που κάηκαν από το Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Αυτό το δικαίωμα χρησιμοποιείται για να εμφανιστεί η ημερήσια καύση θερμίδων στην εφαρμογή, βοηθώντας σας να κατανοήσετε τη συνολική ενεργειακή δαπάνη.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Ανάγνωση Δεδομένων Διατροφής',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Επιτρέπει στην εφαρμογή να διαβάζει τα δεδομένα διατροφής από το Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Αυτό επιτρέπει στην εφαρμογή να διαβάζει διατροφικές πληροφορίες που μπορεί να έχουν καταχωρήσει άλλες εφαρμογές συνδεδεμένες με το Health Connect, παρέχοντας μια ολοκληρωμένη εικόνα της διατροφής σας.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Εγγραφή Δεδομένων Διατροφής',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Επιτρέπει στην εφαρμογή να γράφει δεδομένα διατροφής στο Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Αυτό επιτρέπει στην εφαρμογή να συγχρονίζει τα καταγεγραμμένα γεύματά σας στο Health Connect, κάνοντας τα διατροφικά σας δεδομένα διαθέσιμα σε άλλες εφαρμογές υγείας και fitness που χρησιμοποιείτε.',
			'settings.healthConnect.managePermissions' => 'Διαχείριση Δικαιωμάτων',
			'settings.healthConnect.openSettings' => 'Άνοιγμα Ρυθμίσεων Health Connect',
			'settings.healthConnect.requestPermissions' => 'Αίτηση Δικαιωμάτων',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Το αίτημα άδειας ακυρώθηκε ή απέτυχε. Παρακαλώ δοκιμάστε ξανά ή δώστε άδειες χειροκίνητα στις ρυθμίσεις του Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Αδυναμία αιτήματος αδειών. Παρακαλώ δοκιμάστε ξανά ή δώστε άδειες χειροκίνητα στις ρυθμίσεις του Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Αίτηση...',
			'settings.about.title' => 'Πληροφορίες',
			'settings.about.tagline' => 'Γρήγορο, δωρεάν και με σεβασμό στην ιδιωτικότητα για την επίγνωση θερμίδων',
			'settings.about.ourStory.title' => 'Η Ιστορία Μας',
			'settings.about.ourStory.content' => ({required Object appLabel}) => 'Το ${appLabel} γεννήθηκε από μια απλή απογοήτευση: οι περισσότερες εφαρμογές καταγραφής θερμίδων είναι είτε υπερβολικά περίπλοκες, απαιτούν συνεχή μη αυτόματη εισαγωγή, χρεώνουν υψηλές συνδρομές ή θέτουν σε κίνδυνο το απόρρητο.\n\nΩς μοναδικός προγραμματιστής, ήθελα να δημιουργήσω κάτι απλούστερο και δικαιότερο — μια εφαρμογή που χρησιμοποιεί AI για να μειώσει την προσπάθεια, παραμένει γρήγορη και δωρεάν στη χρήση και αντιμετωπίζει τα δεδομένα υγείας σας με σεβασμό.\n\nΤο ${appLabel} είναι η εφαρμογή που θα ήθελα να υπάρχει: χωρίς λογαριασμούς, χωρίς παρακολούθηση, χωρίς διαφημίσεις — μόνο σαφείς, πρακτικές πληροφορίες και τους στόχους υγείας σας.',
			'settings.about.privacy.title' => 'Η Ιδιωτικότητά σας Μετράει',
			'settings.about.privacy.description' => 'Η ιδιωτικότητα δεν είναι μετά -σκέψη — είναι αρχή σχεδιασμού. Αυτό σημαίνει στην πράξη:',
			'settings.about.privacy.noAccounts' => 'Χωρίς λογαριασμούς\nΧρησιμοποιήστε την εφαρμογή αμέσως. Χωρίς εγγραφές, χωρίς ταυτότητες.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Χωρίς συμπεριφορική παρακολούθηση\nΤο ${appLabel} δεν παρακολουθεί τη δραστηριότητά σας, δεν δημιουργεί προφίλ χρήσης ούτε σας παρακολουθεί σε εφαρμογές ή ιστοσελίδες.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Χωρίς διαφημίσεις εξ ορισμού\nΤο ${appLabel} σχεδιάστηκε να λειτουργεί χωρίς διαφημίσεις ή εμπορικοποίηση βασισμένη σε δεδομένα.',
			'settings.about.privacy.noDataSelling' => 'Δεν πωλούμε δεδομένα\nΤα δεδομένα υγείας σας δεν πωλούνται ούτε κοινοποιούνται σε τρίτους.',
			'settings.about.privacy.localStorage' => 'Τοπική αποθήκευση ως προτεραιότητα\nΤα δεδομένα σας παραμένουν στη συσκευή σας.',
			'settings.about.privacy.privacyPolicy' => 'Πολιτική Ιδιωτικότητας',
			'settings.about.developer.title' => 'Δημιουργήθηκε από έναν Μεμονωμένο Προγραμματιστή',
			'settings.about.developer.description' => ({required Object appLabel}) => 'Το ${appLabel} είναι χτισμένο και συντηρείται από έναν μοναδικό ανεξάρτητο προγραμματιστή που επικεντρώνεται στη δημιουργία ήρεμου λογισμικού υγείας που σέβεται την ιδιωτικότητα.\n\nΤα σχόλια διαβάζονται προσωπικά και βοηθούν στη διαμόρφωση της κατεύθυνσης της εφαρμογής.',
			'settings.about.developer.website' => 'Ιστοσελίδα',
			'settings.about.developer.email' => 'Ηλ. ταχυδρομείο',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Σας Αρέσει το ${appLabel};',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Τα σχόλιά σας βοηθούν το ${appLabel} να γίνει καλύτερο για όλους.',
			'settings.about.feedback.rateApp' => 'Βαθμολογήστε στο Play Store',
			'settings.about.feedback.sendFeedback' => 'Αποστολή σχολίων',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Μείνετε στην πορεία με υπενθυμίσεις',
			'reminders.description' => 'Λάβετε ήπιες υπενθυμίσεις για να καταγράφετε τα γεύματά σας και να τηρείτε τους διατροφικούς σας στόχους',
			'reminders.notificationsEnabled' => 'Ειδοποιήσεις Ενεργοποιημένες',
			'reminders.notificationsDisabled' => 'Ειδοποιήσεις Απενεργοποιημένες',
			'reminders.enabledSubtitle' => 'Θα λαμβάνετε υπενθυμίσεις γευμάτων',
			'reminders.disabledSubtitle' => 'Ενεργοποιήστε τις ειδοποιήσεις για να λαμβάνετε υπενθυμίσεις γευμάτων',
			'reminders.mealReminders' => 'Υπενθυμίσεις Γευμάτων',
			'reminders.breakfast' => 'Πρωινό',
			'reminders.lunch' => 'Μεσημεριανό',
			'reminders.dinner' => 'Βραδινό',
			'reminders.snack' => 'Σνακ',
			'reminders.unknown' => 'Άγνωστο',
			'reminders.change' => 'Αλλαγή',
			'reminders.enableNotifications' => 'Ενεργοποίηση Ειδοποιήσεων',
			'reminders.skipForNow' => 'Παράλειψη προς το παρόν',
			'reminders.saveChanges' => 'Αποθήκευση Αλλαγών',
			'reminders.enabledSuccessfully' => 'Οι ειδοποιήσεις ενεργοποιήθηκαν με επιτυχία!',
			'reminders.permissionDenied' => 'Αρνήθηκε η άδεια ειδοποιήσεων',
			'reminders.errorEnabling' => ({required Object error}) => 'Σφάλμα ενεργοποίησης ειδοποιήσεων: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Σφάλμα κατά την ολοκλήρωση της ρύθμισης: ${error}',
			'notifications.breakfast.title' => 'Ώρα για Πρωινό! 🍳',
			'notifications.breakfast.body' => 'Μην ξεχάσετε να καταγράψετε το πρωινό σας',
			'notifications.lunch.title' => 'Ώρα για Μεσημεριανό! 🥗',
			'notifications.lunch.body' => 'Ώρα να καταγράψετε το μεσημεριανό σας',
			'notifications.dinner.title' => 'Ώρα για Βραδινό! 🍽️',
			'notifications.dinner.body' => 'Μην ξεχάσετε να καταγράψετε το βραδινό σας',
			'notifications.snack.title' => 'Ώρα για Σνακ! 🍎',
			'notifications.snack.body' => 'Ώρα για ένα υγιεινό σνακ',
			'notifications.test.title' => 'Δοκιμαστική Ειδοποίηση',
			'login.title' => 'Σύνδεση',
			'login.signInWithGoogle' => 'Σύνδεση με Google',
			'login.signInFailed' => 'Η Σύνδεση με Google απέτυχε ή ακυρώθηκε.',
			'disclaimer.pleaseNote' => 'Σημειώστε',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} παρέχει εκτιμώμενες διατροφικές πληροφορίες. Η ακρίβεια εξαρτάται από τα στοιχεία που δίνετε και τις παραλλαγές του φαγητού. Χρησιμοποιήστε το ως οδηγό, όχι ως οριστική πηγή. Συμβουλευτείτε επαγγελματία για εξατομικευμένες διατροφικές συμβουλές.',
			'disclaimer.snap.portionSize.title' => 'Μέγεθος Μερίδας',
			'disclaimer.snap.portionSize.description' => 'Η ακρίβεια των εκτιμήσεων εξαρτάται σε μεγάλο βαθμό από τη σωστή εκτίμηση του μεγέθους της μερίδας.',
			'disclaimer.snap.preparationMethods.title' => 'Τρόποι Προετοιμασίας',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Οι μέθοδοι μαγειρέματος μπορούν να αλλάξουν σημαντικά το διατροφικό περιεχόμενο. Οι εκτιμήσεις του ${appLabel} ενδέχεται να μην λαμβάνουν πάντα υπόψη αυτές τις παραλλαγές.',
			'disclaimer.snap.ingredients.title' => 'Συστατικά',
			'disclaimer.snap.ingredients.description' => 'Τα σύνθετα πιάτα με πολλά κρυφά συστατικά μπορεί να οδηγήσουν σε λιγότερο ακριβείς εκτιμήσεις.',
			'disclaimer.snap.databaseLimitations.title' => 'Περιορισμοί Βάσης Δεδομένων',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Η βάση δεδομένων τροφίμων του ${appLabel} είναι εκτεταμένη αλλά ενδέχεται να μην περιλαμβάνει κάθε είδος ή παραλλαγή.',
			'disclaimer.weightEstimate.title' => 'Σχετικά με την Εκτίμηση Βάρους',
			'disclaimer.weightEstimate.description' => 'Η προβλεπόμενη αλλαγή βάρους είναι μια θεωρητική εκτίμηση βασισμένη στο απλό μοντέλο θερμίδες-εισόδου vs θερμίδες-εξόδου. Προορίζεται μόνο για κινητοποίηση, όχι ως πρόβλεψη του πραγματικού σας βάρους.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Ακρίβεια Θερμίδων',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Αυτή η εκτίμηση είναι τόσο ακριβής όσο και η καταγραφή της πρόσληψης και δαπάνης θερμίδων. Ανακριβής καταγραφή θα οδηγήσει σε ανακριβή προβολή.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Βιολογικοί Παράγοντες',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Η πραγματική απώλεια/αύξηση βάρους επηρεάζεται από τον μεταβολισμό, τις ορμόνες, τον ύπνο, το στρες, την ενυδάτωση και άλλους ατομικούς παράγοντες που το ${appLabel} δεν μπορεί να μετρήσει.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Βάρος Νερού & Διακυμάνσεις',
			'disclaimer.weightEstimate.waterWeight.description' => 'Το φυσιολογικό βάρος μπορεί να διακυμανθεί σημαντικά καθημερινά λόγω συγκράτησης νερού, πέψης και χρονισμού. Η εκτίμηση δεν λαμβάνει υπόψη αυτές τις καθημερινές αλλαγές.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Επαγγελματική Καθοδήγηση',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Μην χρησιμοποιείτε αυτή την εκτίμηση για ιατρικές αποφάσεις. Συμβουλευτείτε πάντα έναν επαγγελματία υγείας ή έναν διαιτολόγο για εξατομικευμένη διαχείριση βάρους.',
			'disclaimer.healthMetrics.description' => 'Αυτοί οι δείκτες σας βοηθούν να κατανοήσετε τις ενεργειακές ανάγκες του σώματός σας και να καθοδηγήσετε τους διατροφικούς σας στόχους.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Ο Βασικός Μεταβολικός Ρυθμός (BMR) είναι οι θερμίδες που καίει το σώμα σας σε ηρεμία για να διατηρήσει βασικές λειτουργίες όπως η αναπνοή και η κυκλοφορία. Ο BMR εξαρτάται από την ηλικία, το φύλο, το ύψος και το βάρος. Ένας υψηλότερος BMR σημαίνει ότι το σώμα σας καίει φυσικά περισσότερες θερμίδες σε ηρεμία, συχνά λόγω μεγαλύτερης μυϊκής μάζας, νεότερης ηλικίας ή αρσενικού φύλου. Ένας χαμηλότερος BMR τυπικά υποδεικνύει λιγότερη μυϊκή μάζα, μεγαλύτερη ηλικία ή θηλυκό φύλο.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Το Συνολικό Ημερήσιο Ενεργειακό Έξοδο (TDEE) είναι οι συνολικές θερμίδες που καίτε καθημερινά, συμπεριλαμβανομένου του BMR συν τις θερμίδες από σωματική δραστηριότητα και καθημερινή κίνηση. Το TDEE εξαρτάται από τον BMR και το επίπεδο δραστηριότητας. Ένα υψηλότερο TDEE σημαίνει ότι καίτε περισσότερες θερμίδες συνολικά, συνήθως λόγω μεγαλύτερης δραστηριότητας ή υψηλότερου BMR. Ένα χαμηλότερο TDEE υποδηλώνει λιγότερη καθημερινή δραστηριότητα ή χαμηλότερο BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Ημερήσιος Στόχος',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Ο Ημερήσιος Στόχος είναι η προτεινόμενη ημερήσια πρόσληψη θερμίδων βασισμένη στο TDEE και τον στόχο βάρους σας. Για απώλεια βάρους, καταναλώνετε λιγότερες θερμίδες από το TDEE. Για διατήρηση, ταιριάζετε το TDEE. Για αύξηση, καταναλώνετε περισσότερες θερμίδες από το TDEE. Αυτό βοηθά να πετύχετε την επιθυμητή αλλαγή βάρους με υγιή ρυθμό.',
			'disclaimer.calorieExpenditure.title' => 'Εκτίμηση Δαπάνης Θερμίδων',
			'disclaimer.calorieExpenditure.description' => 'Όταν τα δεδομένα Health Connect δεν είναι διαθέσιμα, εκτιμούμε τις θερμίδες που κάηκαν σήμερα χρησιμοποιώντας τον BMR και το επίπεδο δραστηριότητάς σας (TDEE), κλιμακωμένα για το ποσοστό της ημέρας που έχει περάσει.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Πώς Υπολογίζεται η Εκτίμηση',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Υπολογίζουμε το TDEE σας (βάσει του προφίλ σας) και το πολλαπλασιάζουμε με το κλάσμα της ημέρας που έχει περάσει (ώρες + λεπτά) / 24 για να εκτιμήσουμε τις θερμίδες που κάηκαν μέχρι στιγμής.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Επαγγελματική Καθοδήγηση',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Μην χρησιμοποιείτε αυτή την εκτίμηση για ιατρικές αποφάσεις. Συμβουλευτείτε πάντα έναν επαγγελματία υγείας ή έναν διαιτολόγο για εξατομικευμένη διαχείριση βάρους.',
			_ => null,
		} ?? switch (path) {
			'localNutritionPhase4.nutritionBundled' => 'Τα διατροφικά στοιχεία αντιστοιχίστηκαν από το ληφθέν πακέτο USDA',
			'localNutritionPhase4.nutritionCached' => 'Τα διατροφικά στοιχεία αντιστοιχίστηκαν από την προσωρινή μνήμη USDA της συσκευής',
			'localNutritionPhase4.nutritionMixed' => 'Τα διατροφικά στοιχεία συνδυάστηκαν από ληφθείσες, αποθηκευμένες και απομακρυσμένες γραμμές USDA',
			'localNutritionPhase4.calculationLocal' => 'Οι θερμίδες και τα μακροθρεπτικά υπολογίστηκαν σε αυτή τη συσκευή',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: ληφθέν πακέτο USDA',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: προσωρινή μνήμη USDA στη συσκευή',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: γραμμή USDA που ανακτήθηκε μέσω Calorify',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: ντετερμινιστική διατροφική σταθερά',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · σύνολο δεδομένων ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Μικρότερη',
			'localNutritionPhase4.portionEstimated' => 'Εκτιμώμενη',
			'localNutritionPhase4.portionLarger' => 'Μεγαλύτερη',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Ποια μερίδα ήταν πιο κοντά για το ${ingredient};',
			'localNutritionPhase4.mealTypeQuestion' => 'Ποιο γεύμα ήταν αυτό;',
			'localNutritionPhase4.localNutritionTip' => 'Υπολογίστηκε από επαληθευμένα τοπικά διατροφικά δεδομένα.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Λήψη διατροφικών δεδομένων',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Χρησιμοποιήστε επαληθευμένες γραμμές USDA και ντετερμινιστικό υπολογισμό σε αυτή τη συσκευή όταν καλύπτονται όλα τα συστατικά.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Τα τοπικά διατροφικά δεδομένα δεν είναι διαθέσιμα για αυτή την έκδοση της εφαρμογής.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Δεν έχει ληφθεί επαληθευμένο πακέτο διατροφικών δεδομένων.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Γίνεται λήψη και επαλήθευση διατροφικών δεδομένων…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Πακέτο ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} γραμμές USDA στην προσωρινή μνήμη · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Έλεγχος για ενημέρωση',
			'localNutritionPhase4.offlineNutritionClear' => 'Εκκαθάριση τοπικών διατροφικών δεδομένων',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Να εκκαθαριστούν τα τοπικά διατροφικά δεδομένα;',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Αυτό αφαιρεί το ληφθέν πακέτο USDA και την προσωρινή μνήμη αναζήτησης. Τα καταγεγραμμένα γεύματα διατηρούν το ακριβές στιγμιότυπο διατροφικών στοιχείων που χρησιμοποιήθηκε κατά την αποθήκευση.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Εκκαθάριση δεδομένων',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Δεν ήταν δυνατή η λήψη και επαλήθευση των τοπικών διατροφικών δεδομένων: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Τα τοπικά διατροφικά δεδομένα εκκαθαρίστηκαν',
			'common.close' => 'Κλείσιμο',
			'common.kContinue' => 'Συνέχεια',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Σας αρέσει το ${appLabel};',
			'feedbackRating.yes' => 'Ναι, μου αρέσει',
			'feedbackRating.no' => 'Όχι τόσο',
			'feedbackRating.rateStepHeading' => 'Βαθμολογήστε στο Play Store',
			'feedbackRating.emailStepHeading' => 'Στείλτε σχόλια με email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Μια γρήγορη αξιολόγηση βοηθά άλλους να βρουν το ${appLabel} και στηρίζει την ανάπτυξη. Θα αφιερώσετε μια στιγμή για να αφήσετε μία;',
			'feedbackRating.shareFeedbackViaEmail' => 'Τα σχόλιά σας διαμορφώνουν το επόμενο — διαβάζουμε κάθε μήνυμα. Θέλετε να μοιραστείτε τις σκέψεις σας μέσω email;',
			'feedbackRating.rateCta' => 'Βαθμολογήστε στο Play Store',
			'feedbackRating.maybeLater' => 'Ίσως αργότερα',
			'feedbackRating.sendFeedback' => 'Αποστολή σχολίων',
			'feedbackRating.noThanks' => 'Όχι, ευχαριστώ',
			'feedbackRating.aboutUsDescription' => 'Κατασκευάστηκε με φροντίδα από μια μικρή ομάδα. Εστιάζουμε στην ιδιωτικότητα, την απλότητα και το να σας βοηθήσουμε να χτίσετε καλύτερες διατροφικές συνήθειες.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Περιεργάζεστε ποιος βρίσκεται πίσω από το ${appLabel}; Δείτε ',
			'feedbackRating.aboutUsLinkLabel' => 'Σχετικά με εμάς',
			'feedbackRating.thankYouMessage' => 'Ευχαριστούμε! Θα ρωτήσουμε πάλι άλλη στιγμή.',
			'health.syncFailed' => 'Δεν ήταν δυνατή η συγχρονισμός με το Health Connect',
			'health.mealSynced' => 'Το γεύμα συγχρονίστηκε με το Health Connect',
			_ => null,
		};
	}
}
