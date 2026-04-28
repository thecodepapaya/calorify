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
class TranslationsEl with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.el,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <el>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

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
	@override late final _TranslationsCommonEl common = _TranslationsCommonEl._(_root);
	@override late final _TranslationsFeedbackRatingEl feedbackRating = _TranslationsFeedbackRatingEl._(_root);
	@override late final _TranslationsHealthEl health = _TranslationsHealthEl._(_root);
}

// Path: errors
class _TranslationsErrorsEl implements TranslationsErrorsEn {
	_TranslationsErrorsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Έκανες πάρα πολλά αιτήματα. Περίμενε λίγο και δοκίμασε ξανά.';
	@override String get networkError => 'Σφάλμα δικτύου. Έλεγξε τη σύνδεσή σου στο διαδίκτυο.';
	@override String get unknownError => 'Κάτι πήγε στραβά. Δοκίμασε ξανά αργότερα.';
	@override String get loadingProfileData => 'Σφάλμα κατά τη φόρτωση προφίλ';
	@override String get somethingWentWrong => 'Κάτι πήγε στραβά.';
	@override String get retry => 'Ξαναπροσπάθησε';
}

// Path: onboarding
class _TranslationsOnboardingEl implements TranslationsOnboardingEn {
	_TranslationsOnboardingEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Καλώς ήρθες στο ${appLabel}';
	@override String get subtitle => 'Ο προσωπικός σου διατροφικός σύμβουλος με τη δύναμη της AI';
	@override String get getStarted => 'Ξεκίνα';
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
class _TranslationsTabsEl implements TranslationsTabsEn {
	_TranslationsTabsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Πίνακας';
	@override String get history => 'Ιστορικό';
}

// Path: home
class _TranslationsHomeEl implements TranslationsHomeEn {
	_TranslationsHomeEl._(this._root);

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
class _TranslationsHistoryEl implements TranslationsHistoryEn {
	_TranslationsHistoryEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Δεν υπάρχουν γεύματα';
	@override String get emptyMessage => 'Βγάλε φωτογραφία του τελευταίου σου γεύματος για καταγραφή εδώ.';
	@override String get today => 'Σήμερα';
	@override String get yesterday => 'Χθες';
}

// Path: meal
class _TranslationsMealEl implements TranslationsMealEn {
	_TranslationsMealEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Ωχ όχι!';
	@override String get delete => 'Διαγραφή';
	@override String get editMeal => 'Επεξεργασία γεύματος';
	@override String get addMeal => 'Προσθήκη γεύματος';
	@override String get saveMeal => 'Αποθήκευση γεύματος';
	@override String get save => 'Αποθήκευση';
	@override String get mealName => 'Όνομα γεύματος';
	@override String get mealNameHint => 'π.χ., Ομελέτα με τοστ';
	@override String get mealQuantity => 'Ποσότητα γεύματος';
	@override String get mealQuantityHint => 'π.χ., 1 μπολ, 2 φέτες';
	@override String get timeOfMeal => 'Ώρα γεύματος';
	@override String get timeOfMealHint => 'Επίλεξε την ώρα που έφαγες';
	@override String get mealType => 'Τύπος γεύματος';
	@override late final _TranslationsMealNutritionEl nutrition = _TranslationsMealNutritionEl._(_root);
	@override late final _TranslationsMealDeleteConfirmationEl deleteConfirmation = _TranslationsMealDeleteConfirmationEl._(_root);
	@override String get addedToLog => 'Το γεύμα προστέθηκε στο ιστορικό σου!';
	@override String couldNotAdd({required Object error}) => 'Δεν ήταν δυνατή η προσθήκη γεύματος: ${error}';
	@override String get savedSuccessfully => 'Το γεύμα προστέθηκε με επιτυχία!';
	@override String get updatedSuccessfully => 'Το γεύμα ενημερώθηκε με επιτυχία!';
	@override String errorSaving({required Object error}) => 'Σφάλμα κατά την αποθήκευση: ${error}';
	@override String get removedFromFavorites => 'Αφαιρέθηκε από τα αγαπημένα!';
	@override String get savedAsFavorite => 'Το γεύμα αποθηκεύτηκε στα αγαπημένα!';
	@override String get unfavorite => 'Κατάργηση από αγαπημένα';
	@override String couldNotUpdateFavorite({required Object error}) => 'Δεν ήταν δυνατή η ενημέρωση αγαπημένου: ${error}';
	@override String get feedbackThanks => 'Ευχαριστούμε για τα σχόλιά σου!';
	@override String get reanalysisUpdated => 'Ενημερώθηκε η ανάλυση βάσει των σχολίων σου.';
	@override String failedToProcess({required Object error}) => 'Αποτυχία επεξεργασίας: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Αποτυχία επεξεργασίας εικόνας: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Σφάλμα κατά τη συμπίεση εικόνας: ${error}';
	@override String get failedToSave => 'Αποτυχία αποθήκευσης δεδομένων. Δοκίμασε ξανά.';
	@override String get skip => 'Παράλειψη';
	@override late final _TranslationsMealVariationEl variation = _TranslationsMealVariationEl._(_root);
	@override late final _TranslationsMealAnalysisEl analysis = _TranslationsMealAnalysisEl._(_root);
	@override late final _TranslationsMealFeedbackEl feedback = _TranslationsMealFeedbackEl._(_root);
}

// Path: favorites
class _TranslationsFavoritesEl implements TranslationsFavoritesEn {
	_TranslationsFavoritesEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Αγαπημένα';
	@override String get empty => 'Δεν υπάρχουν αγαπημένα ακόμη.';
	@override String get searchPlaceholder => 'Αναζήτηση αγαπημένων γευμάτων';
	@override String get searchEmptyTitle => 'Δεν βρέθηκαν αγαπημένα που να ταιριάζουν';
	@override String get searchEmptySubtitle => 'Δοκίμασε διαφορετικό όνομα γεύματος, ποσότητα ή τύπο γεύματος.';
	@override String get sortLabel => 'Ταξινόμηση αγαπημένων';
	@override String get undo => 'Αναίρεση';
	@override String removed({required Object name}) => 'Αφαιρέθηκε το ${name} από τα αγαπημένα';
	@override late final _TranslationsFavoritesSortOptionsEl sortOptions = _TranslationsFavoritesSortOptionsEl._(_root);
}

// Path: profile
class _TranslationsProfileEl implements TranslationsProfileEn {
	_TranslationsProfileEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Προφίλ';
	@override String get noProfileData => 'Δεν βρέθηκαν δεδομένα προφίλ';
	@override String get yourProfile => 'Το προφίλ σου';
	@override String get viewAndManage => 'Δες και διαχειρίσου τις πληροφορίες υγείας σου';
	@override late final _TranslationsProfileSectionsEl sections = _TranslationsProfileSectionsEl._(_root);
	@override String get gender => 'Φύλο';
	@override String get height => 'Ύψος';
	@override String get weight => 'Βάρος';
	@override String get age => 'Ηλικία';
	@override String get weightGoal => 'Στόχος βάρους';
	@override String get targetWeight => 'Επιθυμητό βάρος';
	@override String get activityLevel => 'Επίπεδο δραστηριότητας';
	@override String get healthMetrics => 'Δείκτες υγείας';
	@override String get notSet => 'Μη ορισμένο';
	@override String get years => 'ετών';
	@override String get updatedSuccessfully => 'Το προφίλ ενημερώθηκε με επιτυχία!';
	@override late final _TranslationsProfileCalculatedValuesEl calculatedValues = _TranslationsProfileCalculatedValuesEl._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreEl implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Δείκτης υγείας';
	@override String get whyThisScore => 'Γιατί αυτός ο δείκτης;';
	@override String get note => 'Αυτός ο δείκτης είναι εκτίμηση AI με βάση τα αναγνωρισμένα συστατικά και τη διατροφική πυκνότητα. Πάντα να συμβουλεύεσαι επαγγελματία για διατροφικές συμβουλές.';
	@override String get unhealthy => 'Ανθυγιεινό';
	@override String get healthy => 'Υγιεινό';
	@override String get neutral => 'Ουδέτερο';
}

// Path: editProfile
class _TranslationsEditProfileEl implements TranslationsEditProfileEn {
	_TranslationsEditProfileEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επεξεργασία προφίλ';
	@override late final _TranslationsEditProfileSectionsEl sections = _TranslationsEditProfileSectionsEl._(_root);
	@override String get gender => 'Φύλο';
	@override String get dateOfBirth => 'Ημερομηνία γέννησης';
	@override String get height => 'Ύψος';
	@override String get weight => 'Βάρος';
	@override String get weightGoal => 'Στόχος βάρους';
	@override String get activityLevel => 'Επίπεδο δραστηριότητας';
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
class _TranslationsSettingsEl implements TranslationsSettingsEn {
	_TranslationsSettingsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ρυθμίσεις';
	@override late final _TranslationsSettingsSectionsEl sections = _TranslationsSettingsSectionsEl._(_root);
	@override late final _TranslationsSettingsEditProfileEl editProfile = _TranslationsSettingsEditProfileEl._(_root);
	@override late final _TranslationsSettingsLanguageEl language = _TranslationsSettingsLanguageEl._(_root);
	@override late final _TranslationsSettingsHeightUnitEl heightUnit = _TranslationsSettingsHeightUnitEl._(_root);
	@override late final _TranslationsSettingsWeightUnitEl weightUnit = _TranslationsSettingsWeightUnitEl._(_root);
	@override late final _TranslationsSettingsMealRemindersEl mealReminders = _TranslationsSettingsMealRemindersEl._(_root);
	@override late final _TranslationsSettingsThemeEl theme = _TranslationsSettingsThemeEl._(_root);
	@override late final _TranslationsSettingsSendFeedbackEl sendFeedback = _TranslationsSettingsSendFeedbackEl._(_root);
	@override late final _TranslationsSettingsExportMealHistoryEl exportMealHistory = _TranslationsSettingsExportMealHistoryEl._(_root);
	@override late final _TranslationsSettingsClearAllDataEl clearAllData = _TranslationsSettingsClearAllDataEl._(_root);
	@override late final _TranslationsSettingsDebugOptionsEl debugOptions = _TranslationsSettingsDebugOptionsEl._(_root);
	@override String get developerModeEnabled => 'Η λειτουργία προγραμματιστή ενεργοποιήθηκε!';
	@override late final _TranslationsSettingsHealthConnectEl healthConnect = _TranslationsSettingsHealthConnectEl._(_root);
	@override late final _TranslationsSettingsAboutEl about = _TranslationsSettingsAboutEl._(_root);
	@override late final _TranslationsSettingsAppInfoEl appInfo = _TranslationsSettingsAppInfoEl._(_root);
}

// Path: reminders
class _TranslationsRemindersEl implements TranslationsRemindersEn {
	_TranslationsRemindersEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μείνε συνεπής με υπενθυμίσεις';
	@override String get description => 'Λάβε ήπιες υπενθυμίσεις για να καταγράφεις τα γεύματά σου και να μένεις σταθερός/ή στους διατροφικούς σου στόχους';
	@override String get notificationsEnabled => 'Ενεργοποιημένες ειδοποιήσεις';
	@override String get notificationsDisabled => 'Απενεργοποιημένες ειδοποιήσεις';
	@override String get enabledSubtitle => 'Θα λαμβάνεις υπενθυμίσεις γευμάτων';
	@override String get disabledSubtitle => 'Ενεργοποίησε τις ειδοποιήσεις για να λάβεις υπενθυμίσεις γευμάτων';
	@override String get mealReminders => 'Υπενθυμίσεις γευμάτων';
	@override String get breakfast => 'Πρωινό';
	@override String get lunch => 'Μεσημεριανό';
	@override String get dinner => 'Βραδινό';
	@override String get snack => 'Σνακ';
	@override String get unknown => 'Άγνωστο';
	@override String get change => 'Αλλαγή';
	@override String get enableNotifications => 'Ενεργοποίηση ειδοποιήσεων';
	@override String get skipForNow => 'Παράλειψη προς το παρόν';
	@override String get saveChanges => 'Αποθήκευση αλλαγών';
	@override String get enabledSuccessfully => 'Οι ειδοποιήσεις ενεργοποιήθηκαν με επιτυχία!';
	@override String get permissionDenied => 'Άρνηση άδειας ειδοποιήσεων';
	@override String errorEnabling({required Object error}) => 'Σφάλμα κατά την ενεργοποίηση ειδοποιήσεων: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Σφάλμα κατά την ολοκλήρωση ρύθμισης: ${error}';
}

// Path: notifications
class _TranslationsNotificationsEl implements TranslationsNotificationsEn {
	_TranslationsNotificationsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastEl breakfast = _TranslationsNotificationsBreakfastEl._(_root);
	@override late final _TranslationsNotificationsLunchEl lunch = _TranslationsNotificationsLunchEl._(_root);
	@override late final _TranslationsNotificationsDinnerEl dinner = _TranslationsNotificationsDinnerEl._(_root);
	@override late final _TranslationsNotificationsSnackEl snack = _TranslationsNotificationsSnackEl._(_root);
	@override late final _TranslationsNotificationsTestEl test = _TranslationsNotificationsTestEl._(_root);
}

// Path: login
class _TranslationsLoginEl implements TranslationsLoginEn {
	_TranslationsLoginEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Σύνδεση';
	@override String get signInWithGoogle => 'Σύνδεση με Google';
	@override String get signInFailed => 'Η σύνδεση με Google απέτυχε ή ακυρώθηκε.';
}

// Path: disclaimer
class _TranslationsDisclaimerEl implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Παρακαλώ σημείωσε';
	@override late final _TranslationsDisclaimerSnapEl snap = _TranslationsDisclaimerSnapEl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateEl weightEstimate = _TranslationsDisclaimerWeightEstimateEl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsEl healthMetrics = _TranslationsDisclaimerHealthMetricsEl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureEl calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureEl._(_root);
}

// Path: common
class _TranslationsCommonEl implements TranslationsCommonEn {
	_TranslationsCommonEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get close => 'Κλείσιμο';
	@override String get kContinue => 'Συνέχεια';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingEl implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Σου αρέσει το ${appLabel};';
	@override String get yes => 'Ναι, μου αρέσει';
	@override String get no => 'Όχι ιδιαίτερα';
	@override String get rateStepHeading => 'Αξιολόγηση στο Play Store';
	@override String get emailStepHeading => 'Αποστολή σχολίων με email';
	@override String soloDevMessage({required Object appLabel}) => 'Μια γρήγορη αξιολόγηση βοηθά άλλους να βρουν το ${appLabel} και στηρίζει την ανάπτυξη. Θα αφιερώσεις ένα λεπτό;';
	@override String get shareFeedbackViaEmail => 'Τα σχόλιά σου καθορίζουν τα επόμενα βήματα — διαβάζουμε κάθε μήνυμα. Θέλεις να μοιραστείς τις σκέψεις σου με email;';
	@override String get rateCta => 'Αξιολόγηση στο Play Store';
	@override String get maybeLater => 'Ίσως αργότερα';
	@override String get sendFeedback => 'Αποστολή σχολίων';
	@override String get noThanks => 'Όχι, ευχαριστώ';
	@override String get aboutUsDescription => 'Φτιαγμένο με φροντίδα από μια μικρή ομάδα. Εστιάζουμε στην ιδιωτικότητα, την απλότητα και στο να σε βοηθήσουμε να χτίσεις καλύτερες διατροφικές συνήθειες.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Αναρωτιέσαι ποιος βρίσκεται πίσω από το ${appLabel}; Δες ';
	@override String get aboutUsLinkLabel => 'Σχετικά με εμάς';
	@override String get thankYouMessage => 'Ευχαριστούμε! Θα ρωτήσουμε ξανά κάποια άλλη στιγμή.';
}

// Path: health
class _TranslationsHealthEl implements TranslationsHealthEn {
	_TranslationsHealthEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Αδυναμία συγχρονισμού με το Health Connect';
	@override String get mealSynced => 'Το γεύμα συγχρονίστηκε με το Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesEl implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionEl foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionEl._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisEl aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisEl._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationEl healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationEl._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderEl implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ποιο είναι το φύλο σου;';
	@override String get description => 'Το φύλο βοηθά στον ακριβή υπολογισμό του βασικού μεταβολικού ρυθμού (BMR).';
	@override String get next => 'Επόμενο';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightEl implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Πόσο ψηλός/ή είσαι;';
	@override String get description => 'Το ύψος βοηθά να υπολογίσουμε σωστά τον ΔΜΣ και τις ενεργειακές σου ανάγκες.';
	@override String get metric => 'Μετρικό';
	@override String get imperial => 'Αγγλοσαξονικό';
	@override String get next => 'Επόμενο';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightEl implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Ποιο είναι το τωρινό σου βάρος;';
	@override String get currentDescription => 'Το τωρινό σου βάρος είναι απαραίτητο για την εξατομίκευση των ημερήσιων στόχων σου.';
	@override String get targetTitle => 'Ποιο είναι το επιθυμητό σου βάρος;';
	@override String get targetDescription => 'Ο καθορισμός στόχου μάς βοηθά να σχεδιάσουμε το μακροπρόθεσμο πλάνο σου.';
	@override String get metric => 'Μετρικό';
	@override String get imperial => 'Αγγλοσαξονικό';
	@override String get next => 'Επόμενο';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeEl implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Πότε γεννήθηκες;';
	@override String get description => 'Η ηλικία βοηθά να υπολογίσουμε με ακρίβεια τις θερμιδικές σου ανάγκες.';
	@override String get next => 'Επόμενο';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleEl implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleEl._(this._root);

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
class _TranslationsOnboardingWeightGoalEl implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ποιος είναι ο στόχος σου;';
	@override String get description => 'Επίλεξε τον στόχο που περιγράφει καλύτερα αυτό που θέλεις να πετύχεις';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelEl implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Πόσο δραστήριος/α είσαι;';
	@override String get description => 'Μας βοηθά να υπολογίσουμε πιο σωστά τις ημερήσιες θερμίδες σου';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectEl implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Σύνδεση με Health Connect';
	@override String get description => 'Συγχρόνισε τα δεδομένα υγείας για καλύτερες πληροφορίες και αυτόματη καταγραφή θερμίδων';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingEl automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingEl._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsEl progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsEl._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationEl seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationEl._(_root);
	@override String get connected => 'Το Health Connect συνδέθηκε';
	@override String get notConnected => 'Το Health Connect δεν έχει συνδεθεί';
	@override String get setup => 'Ρύθμιση του Health Connect';
	@override String get skipForNow => 'Παράλειψη προς το παρόν';
	@override String get statusConnected => 'Το Health Connect είναι συνδεδεμένο.';
	@override String get statusSuccess => 'Το Health Connect συνδέθηκε με επιτυχία!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Η άδεια απορρίφθηκε. Ενεργοποίησε τα δικαιώματα Health Connect από τις ρυθμίσεις του τηλεφώνου για το ${appLabel}.';
	@override String statusError({required Object error}) => 'Σφάλμα κατά τη ρύθμιση του Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementEl implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessEl trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessEl._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileEl healthProfile = _TranslationsOnboardingReinforcementHealthProfileEl._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleEl goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleEl._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryEl implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Η σύνοψη AI σου';
	@override String get logMore => 'Κατέγραψε περισσότερα γεύματα τις επόμενες ημέρες για να λάβεις εξατομικευμένες πληροφορίες AI.';
	@override String get loading => 'Φόρτωση σύνοψης...';
	@override String mealCount({required Object count}) => '${count} γεύματα καταγεγραμμένα';
	@override String macroBalanceScore({required Object score}) => 'Βαθμός ισορροπίας ${score}';
	@override String get topFoods => 'Κορυφαίες τροφές';
	@override String get trendUp => 'Θερμίδες σε ανοδική τάση';
	@override String get trendDown => 'Θερμίδες σε πτωτική τάση';
	@override String get trendSteady => 'Θερμίδες σταθερές';
	@override String generatedAt({required Object time}) => 'Ενημερώθηκε ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalEl implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Όρισε τον ημερήσιο στόχο';
	@override String get titleSet => 'Ο ημερήσιος στόχος σου';
	@override String get description => 'Έτοιμος/η για το ταξίδι ευεξίας; Όρισε τον ημερήσιο θερμιδικό σου στόχο παρακάτω για να ξεκινήσεις.';
	@override String get descriptionSet => 'Η πυξίδα σου είναι έτοιμη! Αυτός είναι ο ημερήσιος θερμιδικός σου στόχος.';
	@override String get yourGoal => 'Ο στόχος σου';
	@override String get goal => 'Στόχος';
	@override String get dailyCalories => 'Ημερήσιες θερμίδες (kcal)';
	@override String get setGoal => 'Ορισμός στόχου';
	@override String get intake => 'Πρόσληψη';
	@override String get burned => 'Καύσεις';
	@override String get weightImpact => 'Επίδραση στο βάρος';
	@override String get estLoss => 'Εκτ. απώλεια';
	@override String get estGain => 'Εκτ. αύξηση';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryEl implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ημερήσια σύνοψη';
	@override String get calories => 'Θερμίδες';
	@override String get carbs => 'Υδατ/κες';
	@override String get protein => 'Πρωτεΐνη';
	@override String get fat => 'Λιπαρά';
	@override String get fiber => 'Φυτικές ίνες';
	@override String get grams => 'γραμμάρια';
	@override String get chartAccessibilityLabel => 'Γράφημα μακροθρεπτικών';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressEl implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Κατανομή μακροθρεπτικών σήμερα';
	@override String get target => 'Στόχος';
	@override String get current => 'Τρέχον';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryEl implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ιστορικό μακροθρεπτικών 7 ημερών';
	@override String get trendTitle => 'Σημερινή τάση';
	@override String peakHour({required Object hour}) => 'Κορύφωση: ${hour}:00';
	@override String get noHistoryYet => 'Δεν υπάρχει ακόμη ιστορικό';
	@override String get startLogging => 'Ξεκίνα να καταγράφεις γεύματα για να δεις εδώ\nτις τάσεις μακροθρεπτικών των 7 ημερών σου';
}

// Path: home.mealLog
class _TranslationsHomeMealLogEl implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Καταγεγραμμένα γεύματα';
	@override String get emptyMessage => 'Βγάλε φωτογραφία του τελευταίου σου γεύματος για καταγραφή εδώ.';
	@override String get noMealsToday => 'Δεν υπάρχουν γεύματα για σήμερα';
	@override String get seeAllMeals => 'Δες όλα τα γεύματα';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionEl implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Γρήγορη προσθήκη με AI';
	@override String get description => 'Περιέγραψε το γεύμα σου και άφησε την AI να αναλάβει τα υπόλοιπα.';
	@override String get hint => 'π.χ. Για πρωινό είχα ένα μεγάλο μπολ βρώμη με μία μπανάνα και μία μεζούρα whey ...';
	@override String get analyzeMeal => 'Ανάλυση γεύματος';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsEl implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Αγαπημένα γεύματα';
	@override String get description => 'Πρόσθεσε γρήγορα ένα από τα αγαπημένα σου γεύματα.';
	@override String get noFavorites => 'Δεν υπάρχουν αγαπημένα ακόμη.';
	@override String get addFavoriteHint => 'Πάτησε το αστέρι σε ένα γεύμα για να το κάνεις αγαπημένο.';
	@override String get seeAll => 'Δες όλα';
	@override String get add => 'Προσθήκη';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapEl implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Φωτογράφισε και κατέγραψε το γεύμα σου';
	@override String get description => 'Χρησιμοποίησε την κάμερα για να βγάλεις φωτογραφία του φαγητού για ανάλυση με AI.';
	@override String get openCamera => 'Άνοιγμα κάμερας';
	@override String get gallery => 'Συλλογή';
	@override String get compressingPhoto => 'Βελτιστοποίηση φωτογραφίας…';
	@override String get uploadingPhoto => 'Μεταφόρτωση φωτογραφίας…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthEl implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Συγχρονισμός με Health Connect';
	@override String get description => 'Συγχρόνισε τα διατροφικά σου δεδομένα με το Health Connect';
	@override String get install => 'Εγκατάσταση';
	@override String get connect => 'Σύνδεση';
}

// Path: meal.nutrition
class _TranslationsMealNutritionEl implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Θερμίδες';
	@override String get carbs => 'Υδατ/κες (g)';
	@override String get protein => 'Πρωτεΐνη (g)';
	@override String get fat => 'Λιπαρά (g)';
	@override String get fiber => 'Φυτικές ίνες (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationEl implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Διαγραφή γεύματος';
	@override String get message => 'Είσαι σίγουρος/η ότι θέλεις να διαγράψεις αυτήν την καταχώριση;';
	@override String get cancel => 'Άκυρο';
	@override String get delete => 'Διαγραφή';
}

// Path: meal.variation
class _TranslationsMealVariationEl implements TranslationsMealVariationEn {
	_TranslationsMealVariationEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Ερώτηση ${current} από ${total}';
	@override String get noVariationsAvailable => 'Δεν υπάρχουν διαθέσιμες παραλλαγές';
}

// Path: meal.analysis
class _TranslationsMealAnalysisEl implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ανάλυση γεύματος με AI';
	@override String get reassurance => 'Συνήθως διαρκεί λίγα δευτερόλεπτα.';
	@override String get stepStarted => 'Ξεκινάμε…';
	@override String get stepDecomposition => 'Κατανόηση του γεύματός σου…';
	@override String get stepIngredients => 'Αντιστοίχιση συστατικών με διατροφικά δεδομένα…';
	@override String get stepUncertainty => 'Έλεγχος βεβαιότητας…';
	@override String get stepMealTypeQuestion => 'Σχεδόν έτοιμοι…';
	@override String get stepResult => 'Οριστικοποίηση αποτελέσματος…';
	@override String get stepError => 'Κάτι πήγε στραβά';
	@override String get stepDefault => 'Ανάλυση του γεύματός σου…';
	@override String get progressUnderstand => 'Κατανόηση';
	@override String get progressMatch => 'Αντιστοίχιση';
	@override String get progressCheck => 'Έλεγχος';
	@override String get progressFinish => 'Τελικό';
	@override String ingredientsLine({required Object count}) => 'Εντοπίστηκαν ${count} συστατικά';
	@override String get ingredientsPending => 'Σάρωση συστατικών…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackEl implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Τι φαίνεται λάθος;';
	@override String get subtitle => 'Βοήθησέ μας να βελτιώσουμε την ανάλυση επιλέγοντας ένα ή περισσότερα προβλήματα.';
	@override String get tellUsMore => 'Πες μας περισσότερα';
	@override String get describeIncorrect => 'Περιέγραψε τι ήταν λάθος';
	@override String get submit => 'Υποβολή';
	@override String get issueFoodIdentification => 'Αναγνώριση φαγητού';
	@override String get issuePortionSize => 'Μέγεθος μερίδας';
	@override String get issueCalorieDistribution => 'Κατανομή θερμίδων';
	@override String get issueMacrosWrong => 'Λάθος μακροθρεπτικά';
	@override String get issueMissingItems => 'Στοιχεία που λείπουν';
	@override String get issueExtraItems => 'Επιπλέον στοιχεία';
	@override String get issueOther => 'Άλλο';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsEl implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Πρόσφατα';
	@override String get calories => 'Θερμίδες';
	@override String get alphabetical => 'Α-Ω';
}

// Path: profile.sections
class _TranslationsProfileSectionsEl implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ΠΡΟΦΙΛ';
	@override String get basicInformation => 'ΒΑΣΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ';
	@override String get goalsAndActivity => 'ΣΤΟΧΟΙ & ΔΡΑΣΤΗΡΙΟΤΗΤΑ';
	@override String get calculatedValues => 'ΥΠΟΛΟΓΙΣΜΕΝΕΣ ΤΙΜΕΣ';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesEl implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Ημερήσιος στόχος';
	@override String get calPerDay => 'cal/ημέρα';
	@override String get notAvailable => 'Μ/Δ';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsEl implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ΠΡΟΣΩΠΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ';
	@override String get physicalMeasurements => 'ΣΩΜΑΤΟΜΕΤΡΙΚΑ ΣΤΟΙΧΕΙΑ';
	@override String get goalsAndActivity => 'ΣΤΟΧΟΙ & ΔΡΑΣΤΗΡΙΟΤΗΤΑ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersEl implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get male => 'Άνδρας';
	@override String get female => 'Γυναίκα';
	@override String get other => 'Άλλο';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsEl implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightEl loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightEl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightEl maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightEl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightEl gainWeight = _TranslationsEditProfileWeightGoalsGainWeightEl._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsEl implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryEl sedentary = _TranslationsEditProfileActivityLevelsSedentaryEl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveEl lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveEl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveEl moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveEl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveEl veryActive = _TranslationsEditProfileActivityLevelsVeryActiveEl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveEl extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveEl._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsEl implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ΠΡΟΦΙΛ';
	@override String get localization => 'ΓΛΩΣΣΑ & ΜΟΝΑΔΕΣ';
	@override String get notifications => 'ΕΙΔΟΠΟΙΗΣΕΙΣ';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'ΥΠΟΣΤΗΡΙΞΗ & ΝΟΜΙΚΑ';
	@override String get about => 'ΣΧΕΤΙΚΑ';
	@override String get dangerZone => 'ΖΩΝΗ ΚΙΝΔΥΝΟΥ';
	@override String get developer => 'ΠΡΟΓΡΑΜΜΑΤΙΣΤΗΣ';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileEl implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επεξεργασία προφίλ';
	@override String get subtitle => 'Ενημέρωσε τα προσωπικά σου στοιχεία';
}

// Path: settings.language
class _TranslationsSettingsLanguageEl implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Γλώσσα';
	@override String get subtitle => 'Επίλεξε την προτιμώμενη γλώσσα';
	@override String get searchHint => 'Αναζήτηση γλωσσών...';
	@override String get noResults => 'Δεν βρέθηκαν αποτελέσματα';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitEl implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μονάδα ύψους';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitEl implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μονάδα βάρους';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersEl implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Υπενθυμίσεις γευμάτων';
	@override String get subtitle => 'Μείνε συνεπής με έγκαιρα μηνύματα';
}

// Path: settings.theme
class _TranslationsSettingsThemeEl implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Θέμα';
	@override String get light => 'Φωτεινό';
	@override String get dark => 'Σκουρό';
	@override String get system => 'Σύστημα';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackEl implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Στείλε σχόλια';
	@override String subtitle({required Object appLabel}) => 'Βοήθησέ μας να βελτιώσουμε το ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Σχόλια για την εφαρμογή ${appLabel}';
	@override String get emailBodyPrefix => 'Παρακαλούμε γράψε τα σχόλιά σου παρακάτω:';
	@override String get appVersion => 'Έκδοση εφαρμογής';
	@override String get device => 'Συσκευή';
	@override String get osVersion => 'Έκδοση OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryEl implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Εξαγωγή ιστορικού γευμάτων';
	@override String get subtitle => 'Μοιράσου ένα CSV με τα καταγεγραμμένα γεύματά σου';
	@override String get shareText => 'Η εξαγωγή του ιστορικού γευμάτων σου από το Calorify';
	@override String failed({required Object error}) => 'Δεν ήταν δυνατή η εξαγωγή ιστορικού γευμάτων: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataEl implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Διαγραφή όλων των δεδομένων';
	@override String get subtitle => 'Μη αναστρέψιμη διαγραφή όλων των πληροφοριών';
	@override String get confirmationTitle => 'Διαγραφή όλων των δεδομένων;';
	@override String get confirmationMessage => 'Αυτή η ενέργεια δεν μπορεί να αναιρεθεί. Όλα τα γεύματα, τα αγαπημένα και οι ρυθμίσεις προφίλ θα διαγραφούν οριστικά.';
	@override String get cancel => 'Άκυρο';
	@override String get clearEverything => 'Διαγραφή όλων';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsEl implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επιλογές αποσφαλμάτωσης';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectEl implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Προβολή και διαχείριση δικαιωμάτων';
	@override late final _TranslationsSettingsHealthConnectUnavailableEl unavailable = _TranslationsSettingsHealthConnectUnavailableEl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsEl permissions = _TranslationsSettingsHealthConnectPermissionsEl._(_root);
	@override String get managePermissions => 'Διαχείριση δικαιωμάτων';
	@override String get openSettings => 'Άνοιγμα ρυθμίσεων Health Connect';
	@override String get requestPermissions => 'Αίτημα δικαιωμάτων';
	@override String get permissionRequestCancelledOrFailed => 'Το αίτημα δικαιωμάτων ακυρώθηκε ή απέτυχε. Δοκίμασε ξανά ή δώσε δικαιώματα χειροκίνητα από τις ρυθμίσεις του Health Connect.';
	@override String get permissionRequestFailed => 'Δεν ήταν δυνατό το αίτημα δικαιωμάτων. Δοκίμασε ξανά ή δώσε δικαιώματα χειροκίνητα από τις ρυθμίσεις του Health Connect.';
	@override String get requestingPermissions => 'Γίνεται αίτημα...';
}

// Path: settings.about
class _TranslationsSettingsAboutEl implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Σχετικά';
	@override String get tagline => 'Γρήγορη, δωρεάν και με προτεραιότητα στην ιδιωτικότητα επίγνωση θερμίδων';
	@override late final _TranslationsSettingsAboutOurStoryEl ourStory = _TranslationsSettingsAboutOurStoryEl._(_root);
	@override late final _TranslationsSettingsAboutPrivacyEl privacy = _TranslationsSettingsAboutPrivacyEl._(_root);
	@override late final _TranslationsSettingsAboutDeveloperEl developer = _TranslationsSettingsAboutDeveloperEl._(_root);
	@override late final _TranslationsSettingsAboutFeedbackEl feedback = _TranslationsSettingsAboutFeedbackEl._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoEl implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Δόμηση ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastEl implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ώρα για πρωινό! 🍳';
	@override String get body => 'Μην ξεχάσεις να καταγράψεις το πρωινό σου';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchEl implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ώρα για μεσημεριανό! 🥗';
	@override String get body => 'Ήρθε η ώρα να καταγράψεις το μεσημεριανό σου';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerEl implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ώρα για βραδινό! 🍽️';
	@override String get body => 'Μην ξεχάσεις να καταγράψεις το βραδινό σου';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackEl implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ώρα για σνακ! 🍎';
	@override String get body => 'Ώρα για ένα υγιεινό σνακ';
}

// Path: notifications.test
class _TranslationsNotificationsTestEl implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Δοκιμαστική ειδοποίηση';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapEl implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => 'Το ${appLabel} παρέχει εκτιμώμενες διατροφικές πληροφορίες. Η ακρίβεια εξαρτάται από την είσοδό σου και τις διαφορές στα τρόφιμα. Χρησιμοποίησέ το ως οδηγό, όχι ως απόλυτη πηγή. Συμβουλεύσου επαγγελματία για εξατομικευμένες διατροφικές συμβουλές.';
	@override late final _TranslationsDisclaimerSnapPortionSizeEl portionSize = _TranslationsDisclaimerSnapPortionSizeEl._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsEl preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsEl._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsEl ingredients = _TranslationsDisclaimerSnapIngredientsEl._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsEl databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsEl._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateEl implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Σχετικά με την εκτίμηση βάρους';
	@override String get description => 'Η προβλεπόμενη αλλαγή βάρους είναι θεωρητική εκτίμηση που βασίζεται στο απλό μοντέλο θερμίδες-εντός έναντι θερμίδων-εκτός. Σκοπός της είναι το κίνητρο, όχι η πρόβλεψη του πραγματικού βάρους σου.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyEl calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyEl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsEl biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsEl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightEl waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightEl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEl professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEl._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsEl implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get description => 'Αυτοί οι δείκτες βοηθούν να κατανοήσεις τις ενεργειακές ανάγκες του σώματός σου και να καθοδηγήσεις τους διατροφικούς σου στόχους.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrEl bmr = _TranslationsDisclaimerHealthMetricsBmrEl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeEl tdee = _TranslationsDisclaimerHealthMetricsTdeeEl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalEl dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalEl._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureEl implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Εκτίμηση δαπάνης θερμίδων';
	@override String get description => 'Όταν δεν υπάρχουν δεδομένα Health Connect, εκτιμούμε τις θερμίδες που κάηκαν σήμερα χρησιμοποιώντας το BMR και το επίπεδο δραστηριότητάς σου (TDEE), κλιμακωμένα με το ποσοστό της ημέρας που έχει περάσει.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedEl howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedEl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEl professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEl._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionEl implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Έξυπνη αναγνώριση τροφίμων';
	@override String get description => 'Βγάλε μια φωτογραφία και άφησε την AI να αναγνωρίσει το γεύμα σου';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisEl implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ανάλυση με AI';
	@override String get description => 'Άμεσα διατροφικά στοιχεία από τις περιγραφές σου';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationEl implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Σύνδεση με Health Connect';
	@override String get description => 'Σύνδεσε το Health Connect για καλύτερες πληροφορίες';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesEl implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Ελλιποβαρής';
	@override String get healthyWeight => 'Υγιές βάρος';
	@override String get overweight => 'Υπέρβαρος';
	@override String get obese => 'Παχύσαρκος';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesEl implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Μπορούμε να σε βοηθήσουμε να χτίσεις ένα υγιεινό πλάνο για να φτάσεις σε ισορροπημένο βάρος με θρεπτικά γεύματα.';
	@override String get healthy => 'Μπράβο! Βρίσκεσαι σε υγιές εύρος. Θα σε βοηθήσουμε να διατηρήσεις τη ζωντάνια και την ενέργειά σου.';
	@override String overweight({required Object appLabel}) => 'Το ${appLabel} θα απλοποιήσει το ταξίδι σου με έξυπνη καταγραφή για να φτάσεις άνετα στον στόχο σου.';
	@override String get obese => 'Είμαστε εδώ για να σε στηρίξουμε με εξατομικευμένη καθοδήγηση και βιώσιμες στρατηγικές για τους στόχους υγείας σου.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingEl implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Αυτόματη καταγραφή θερμίδων';
	@override String get description => 'Κατέγραψε θερμίδες που κάηκαν από τις εφαρμογές fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsEl implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Εικόνα προόδου';
	@override String get description => 'Λάβε λεπτομερή στοιχεία για τις τάσεις της υγείας σου';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationEl implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Απρόσκοπτη ενσωμάτωση';
	@override String get description => 'Συγχρόνισε δεδομένα από τις αγαπημένες σου εφαρμογές υγείας';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessEl implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Δεν είσαι μόνος/η';
	@override String get genericMessage => 'Έρευνες δείχνουν ότι η σταθερή καταγραφή είναι ο Νο1 προγνωστικός παράγοντας μακροχρόνιας επιτυχίας.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Για άτομο ${age} ετών (${gender}) που θέλει να ${goal}, η σταθερή καταγραφή είναι ο Νο1 προγνωστικός παράγοντας επιτυχίας.';
	@override String closingMessage({required Object appLabel}) => 'Το ${appLabel} το κάνει 10 φορές πιο εύκολο από τη χειροκίνητη καταγραφή.';
	@override String get getStartedTitle => 'Έτοιμος/η να ξεκινήσεις;';
	@override String get tipPhoto => 'Βγάλε φωτογραφία τα γεύματά σου για άμεση ανάλυση';
	@override String get tipConsistency => 'Κατέγραφε σταθερά για να δεις ουσιαστική πρόοδο';
	@override String get tipProgress => 'Παρακολούθησε την πρόοδό σου καθημερινά για κίνητρο';
	@override String get button => 'Πάμε';
	@override String get defaultGender => 'άτομο';
	@override String get defaultGoal => 'πιο υγιή εαυτό';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileEl implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Το προφίλ υγείας σου';
	@override String bmiDescription({required Object bmi}) => 'Με βάση τα στοιχεία σου, ο ΔΜΣ είναι ${bmi}.';
	@override String get finalizeDescription => 'Ας ολοκληρώσουμε το προφίλ σου για να προσαρμόσουμε την εμπειρία.';
	@override String get goalGain => 'πάρεις';
	@override String get goalLose => 'χάσεις';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Για να πετύχεις τον στόχο σου, θα ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Έφτασες στο επιθυμητό βάρος! Θα σε βοηθήσουμε να το διατηρήσεις.';
	@override String get button => 'Πάμε';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleEl implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Εξαιρετική αρχή!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Έκανες το πρώτο βήμα προς ${goalText}. Εφόσον είσαι ${activityText}, το ${appLabel} θα προσαρμόσει τους στόχους σου στο στιλ ζωής σου.';
	@override String get personalizedTargets => 'Εξατομικευμένοι θερμιδικοί στόχοι';
	@override String get aiMealDetection => 'Ανίχνευση γευμάτων με AI';
	@override String get macroBreakdowns => 'Αναλυτικές κατανομές μακροθρεπτικών';
	@override String get button => 'Πάμε';
	@override String get defaultGoal => 'τους στόχους σου';
	@override String get defaultActivity => 'δραστήριος/α';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightEl implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Απώλεια βάρους';
	@override String get description => 'Δημιούργησε θερμιδικό έλλειμμα για να χάσεις βάρος';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightEl implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Διατήρηση βάρους';
	@override String get description => 'Διατήρησε το τωρινό σου βάρος';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightEl implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Αύξηση βάρους';
	@override String get description => 'Δημιούργησε θερμιδικό πλεόνασμα για να πάρεις βάρος';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryEl implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Καθιστικός';
	@override String get description => 'Ελάχιστη ή καθόλου άσκηση';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveEl implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ελαφρά δραστήριος/α';
	@override String get description => 'Ελαφριά άσκηση 1-3 ημέρες/εβδομάδα';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveEl implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Μέτρια δραστήριος/α';
	@override String get description => 'Μέτρια άσκηση 3-5 ημέρες/εβδομάδα';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveEl implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Πολύ δραστήριος/α';
	@override String get description => 'Έντονη άσκηση 6-7 ημέρες/εβδομάδα';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveEl implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Εξαιρετικά δραστήριος/α';
	@override String get description => 'Πολύ έντονη άσκηση, χειρωνακτική εργασία';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableEl implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Το Health Connect δεν είναι διαθέσιμο';
	@override String get description => 'Το Health Connect δεν είναι διαθέσιμο σε αυτή τη συσκευή. Εγκατάστησε το από το Play Store (Android 9+) ή αναβάθμισε σε Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsEl implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Δικαιώματα';
	@override String get description => 'Ζητούνται τα παρακάτω δικαιώματα για την ενσωμάτωση με το Health Connect:';
	@override String get granted => 'Χορηγήθηκε';
	@override String get notGranted => 'Δεν χορηγήθηκε';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEl caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadEl nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadEl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteEl nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteEl._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryEl implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Η ιστορία μας';
	@override String content({required Object appLabel}) => 'Το ${appLabel} γεννήθηκε από μια απλή απογοήτευση: οι περισσότερες εφαρμογές καταγραφής θερμίδων είναι είτε υπερβολικά πολύπλοκες, απαιτούν συνεχώς χειροκίνητη εισαγωγή, χρεώνουν ακριβά συνδρομές ή δεν σέβονται την ιδιωτικότητα.\n\nΩς solo προγραμματιστής, ήθελα κάτι πιο απλό και δίκαιο — μια εφαρμογή που χρησιμοποιεί AI για να μειώνει την προσπάθεια, παραμένει γρήγορη και δωρεάν, και αντιμετωπίζει με σεβασμό τα δεδομένα υγείας σου.\n\nΤο ${appLabel} είναι η εφαρμογή που θα ήθελα να υπάρχει: χωρίς λογαριασμούς, χωρίς παρακολούθηση, χωρίς διαφημίσεις — μόνο καθαρές, πρακτικές πληροφορίες και οι στόχοι υγείας σου.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyEl implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Η ιδιωτικότητά σου μετράει';
	@override String get description => 'Η ιδιωτικότητα δεν είναι υστερόγραφο — είναι αρχή σχεδιασμού. Τι σημαίνει αυτό στην πράξη:';
	@override String get noAccounts => 'Χωρίς λογαριασμούς\nΧρησιμοποίησε την εφαρμογή άμεσα. Χωρίς εγγραφές, χωρίς ταυτοποίηση.';
	@override String noTracking({required Object appLabel}) => 'Χωρίς συμπεριφορική παρακολούθηση\nΤο ${appLabel} δεν παρακολουθεί τη δραστηριότητά σου, δεν δημιουργεί προφίλ χρήσης και δεν σε ανιχνεύει σε εφαρμογές ή ιστότοπους.';
	@override String noAds({required Object appLabel}) => 'Χωρίς διαφημίσεις από σχεδιασμό\nΤο ${appLabel} είναι φτιαγμένο να λειτουργεί χωρίς διαφημίσεις ή εμπορευματοποίηση δεδομένων.';
	@override String get noDataSelling => 'Χωρίς πώληση δεδομένων\nΤα δεδομένα υγείας σου δεν πωλούνται ούτε κοινοποιούνται σε τρίτους.';
	@override String get localStorage => 'Πρωτίστως τοπική αποθήκευση\nΤα δεδομένα σου παραμένουν στη συσκευή σου.';
	@override String get privacyPolicy => 'Πολιτική απορρήτου';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperEl implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Κατασκευάστηκε από έναν solo προγραμματιστή';
	@override String description({required Object appLabel}) => 'Το ${appLabel} δημιουργείται και συντηρείται από έναν solo προγραμματιστή που εστιάζει σε ήσυχο, με σεβασμό στην ιδιωτικότητα λογισμικό υγείας.\n\nΤα σχόλια διαβάζονται προσωπικά και διαμορφώνουν την κατεύθυνση της εφαρμογής.';
	@override String get website => 'Ιστότοπος';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackEl implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Σου αρέσει το ${appLabel};';
	@override String description({required Object appLabel}) => 'Τα σχόλιά σου βοηθούν να γίνει το ${appLabel} καλύτερο για όλους.';
	@override String get rateApp => 'Αξιολόγηση στο Play Store';
	@override String get sendFeedback => 'Αποστολή σχολίων';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeEl implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μέγεθος μερίδας';
	@override String get description => 'Η ακρίβεια των εκτιμήσεων βασίζεται σε μεγάλο βαθμό στη σωστή εκτίμηση του μεγέθους της μερίδας.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsEl implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μέθοδοι παρασκευής';
	@override String description({required Object appLabel}) => 'Οι τρόποι μαγειρέματος μπορούν να επηρεάσουν σημαντικά τα διατροφικά στοιχεία. Οι εκτιμήσεις του ${appLabel} ενδέχεται να μην λαμβάνουν πάντα υπόψη αυτές τις διαφορές.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsEl implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Συστατικά';
	@override String get description => 'Σύνθετα πιάτα με πολλά «κρυφά» συστατικά μπορεί να οδηγήσουν σε λιγότερο ακριβείς εκτιμήσεις.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsEl implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Περιορισμοί βάσης δεδομένων';
	@override String description({required Object appLabel}) => 'Η βάση τροφίμων του ${appLabel} είναι εκτενής αλλά ενδέχεται να μην περιλαμβάνει κάθε τρόφιμο ή παραλλαγή.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyEl implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ακρίβεια θερμίδων';
	@override String get description => 'Η εκτίμηση είναι τόσο ακριβής όσο η καταγραφή πρόσληψης και δαπάνης θερμίδων. Ανακριβής καταγραφή οδηγεί σε ανακριβή εκτίμηση.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsEl implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Βιολογικοί παράγοντες';
	@override String description({required Object appLabel}) => 'Η πραγματική απώλεια/αύξηση βάρους επηρεάζεται από μεταβολισμό, ορμόνες, ύπνο, στρες, ενυδάτωση και άλλους ατομικούς παράγοντες που το ${appLabel} δεν μπορεί να μετρήσει.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightEl implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Κατακράτηση υγρών & διακυμάνσεις';
	@override String get description => 'Το καθημερινό βάρος μπορεί να μεταβάλλεται σημαντικά λόγω κατακράτησης υγρών, πέψης και χρονισμού. Η εκτίμηση δεν λαμβάνει υπόψη αυτές τις καθημερινές αλλαγές.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEl implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επαγγελματική καθοδήγηση';
	@override String get description => 'Μην χρησιμοποιείς αυτήν την εκτίμηση για ιατρικές αποφάσεις. Πάντα να συμβουλεύεσαι έναν επαγγελματία υγείας ή πιστοποιημένο διαιτολόγο για εξατομικευμένη διαχείριση βάρους.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrEl implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Ο Βασικός Μεταβολικός Ρυθμός (BMR) είναι οι θερμίδες που καίει το σώμα σου σε κατάσταση ηρεμίας για βασικές λειτουργίες όπως αναπνοή και κυκλοφορία. Εξαρτάται από ηλικία, φύλο, ύψος και βάρος. Υψηλότερο BMR σημαίνει ότι καίγονται περισσότερες θερμίδες σε ηρεμία, συνήθως λόγω περισσότερης μυϊκής μάζας, νεότερης ηλικίας ή ανδρικού φύλου. Χαμηλότερο BMR συνδέεται συνήθως με λιγότερη μυϊκή μάζα, μεγαλύτερη ηλικία ή γυναικείο φύλο.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeEl implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Η Συνολική Ημερήσια Ενεργειακή Δαπάνη (TDEE) είναι οι συνολικές θερμίδες που καίγεις μέσα στην ημέρα, δηλαδή το BMR συν τη σωματική δραστηριότητα και την κίνηση. Εξαρτάται από το BMR και το επίπεδο δραστηριότητας. Υψηλότερο TDEE σημαίνει περισσότερες καύσεις, συνήθως λόγω μεγαλύτερης δραστηριότητας ή υψηλότερου BMR. Χαμηλότερο TDEE υποδηλώνει λιγότερη καθημερινή δραστηριότητα ή χαμηλότερο BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalEl implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ημερήσιος στόχος';
	@override String get description => 'Ο Ημερήσιος Στόχος είναι η προτεινόμενη ημερήσια πρόσληψη θερμίδων βάσει TDEE και στόχου βάρους. Για απώλεια βάρους, καταναλώνεις λιγότερες θερμίδες από το TDEE. Για διατήρηση, ταιριάζεις το TDEE. Για αύξηση, καταναλώνεις περισσότερες. Αυτό βοηθά να πετύχεις την επιθυμητή αλλαγή βάρους με υγιή ρυθμό.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedEl implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Πώς υπολογίζεται η εκτίμηση';
	@override String get description => 'Υπολογίζουμε το TDEE (βάσει προφίλ) και το πολλαπλασιάζουμε με το κλάσμα της ημέρας που έχει παρέλθει (ώρες + λεπτά) / 24 για να εκτιμήσουμε τις έως τώρα καύσεις.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEl implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επαγγελματική καθοδήγηση';
	@override String get description => 'Μην χρησιμοποιείς αυτήν την εκτίμηση για ιατρικές αποφάσεις. Πάντα να συμβουλεύεσαι επαγγελματία υγείας ή πιστοποιημένο διαιτολόγο για εξατομικευμένες συμβουλές.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEl implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ανάγνωση συνολικών θερμίδων που κάηκαν';
	@override String get description => 'Επιτρέπει στην εφαρμογή να διαβάζει τις συνολικές θερμίδες που κάηκαν από το Health Connect.';
	@override String get usage => 'Αυτό το δικαίωμα χρησιμοποιείται για να εμφανίζει η εφαρμογή τις ημερήσιες καύσεις θερμίδων, ώστε να κατανοείς τη συνολική ενεργειακή σου δαπάνη μέσα στην ημέρα.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadEl implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ανάγνωση διατροφικών δεδομένων';
	@override String get description => 'Επιτρέπει στην εφαρμογή να διαβάζει διατροφικά δεδομένα από το Health Connect.';
	@override String get usage => 'Αυτό το δικαίωμα επιτρέπει την ανάγνωση διατροφικών πληροφοριών που μπορεί να έχουν καταγραφεί από άλλες εφαρμογές συνδεδεμένες στο Health Connect, προσφέροντας μια ολοκληρωμένη εικόνα της διατροφής σου.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteEl implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Εγγραφή διατροφικών δεδομένων';
	@override String get description => 'Επιτρέπει στην εφαρμογή να γράφει διατροφικά δεδομένα στο Health Connect.';
	@override String get usage => 'Αυτό το δικαίωμα επιτρέπει τον συγχρονισμό των καταγεγραμμένων γευμάτων σου στο Health Connect, ώστε τα διατροφικά σου δεδομένα να είναι διαθέσιμα και σε άλλες εφαρμογές υγείας και fitness που χρησιμοποιείς.';
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
			'errors.rateLimitExceeded' => 'Έκανες πάρα πολλά αιτήματα. Περίμενε λίγο και δοκίμασε ξανά.',
			'errors.networkError' => 'Σφάλμα δικτύου. Έλεγξε τη σύνδεσή σου στο διαδίκτυο.',
			'errors.unknownError' => 'Κάτι πήγε στραβά. Δοκίμασε ξανά αργότερα.',
			'errors.loadingProfileData' => 'Σφάλμα κατά τη φόρτωση προφίλ',
			'errors.somethingWentWrong' => 'Κάτι πήγε στραβά.',
			'errors.retry' => 'Ξαναπροσπάθησε',
			'onboarding.welcome' => ({required Object appLabel}) => 'Καλώς ήρθες στο ${appLabel}',
			'onboarding.subtitle' => 'Ο προσωπικός σου διατροφικός σύμβουλος με τη δύναμη της AI',
			'onboarding.getStarted' => 'Ξεκίνα',
			'onboarding.features.foodRecognition.title' => 'Έξυπνη αναγνώριση τροφίμων',
			'onboarding.features.foodRecognition.description' => 'Βγάλε μια φωτογραφία και άφησε την AI να αναγνωρίσει το γεύμα σου',
			'onboarding.features.aiAnalysis.title' => 'Ανάλυση με AI',
			'onboarding.features.aiAnalysis.description' => 'Άμεσα διατροφικά στοιχεία από τις περιγραφές σου',
			'onboarding.features.healthIntegration.title' => 'Σύνδεση με Health Connect',
			'onboarding.features.healthIntegration.description' => 'Σύνδεσε το Health Connect για καλύτερες πληροφορίες',
			'onboarding.gender.title' => 'Ποιο είναι το φύλο σου;',
			'onboarding.gender.description' => 'Το φύλο βοηθά στον ακριβή υπολογισμό του βασικού μεταβολικού ρυθμού (BMR).',
			'onboarding.gender.next' => 'Επόμενο',
			'onboarding.height.title' => 'Πόσο ψηλός/ή είσαι;',
			'onboarding.height.description' => 'Το ύψος βοηθά να υπολογίσουμε σωστά τον ΔΜΣ και τις ενεργειακές σου ανάγκες.',
			'onboarding.height.metric' => 'Μετρικό',
			'onboarding.height.imperial' => 'Αγγλοσαξονικό',
			'onboarding.height.next' => 'Επόμενο',
			'onboarding.weight.currentTitle' => 'Ποιο είναι το τωρινό σου βάρος;',
			'onboarding.weight.currentDescription' => 'Το τωρινό σου βάρος είναι απαραίτητο για την εξατομίκευση των ημερήσιων στόχων σου.',
			'onboarding.weight.targetTitle' => 'Ποιο είναι το επιθυμητό σου βάρος;',
			'onboarding.weight.targetDescription' => 'Ο καθορισμός στόχου μάς βοηθά να σχεδιάσουμε το μακροπρόθεσμο πλάνο σου.',
			'onboarding.weight.metric' => 'Μετρικό',
			'onboarding.weight.imperial' => 'Αγγλοσαξονικό',
			'onboarding.weight.next' => 'Επόμενο',
			'onboarding.age.title' => 'Πότε γεννήθηκες;',
			'onboarding.age.description' => 'Η ηλικία βοηθά να υπολογίσουμε με ακρίβεια τις θερμιδικές σου ανάγκες.',
			'onboarding.age.next' => 'Επόμενο',
			'onboarding.bmiScale.underweight' => 'Κάτω',
			'onboarding.bmiScale.healthy' => 'Υγιές',
			'onboarding.bmiScale.overweight' => 'Πάνω',
			'onboarding.bmiScale.obese' => 'Παχύσαρκο',
			'onboarding.bmiScale.categories.underweight' => 'Ελλιποβαρής',
			'onboarding.bmiScale.categories.healthyWeight' => 'Υγιές βάρος',
			'onboarding.bmiScale.categories.overweight' => 'Υπέρβαρος',
			'onboarding.bmiScale.categories.obese' => 'Παχύσαρκος',
			'onboarding.bmiScale.messages.underweight' => 'Μπορούμε να σε βοηθήσουμε να χτίσεις ένα υγιεινό πλάνο για να φτάσεις σε ισορροπημένο βάρος με θρεπτικά γεύματα.',
			'onboarding.bmiScale.messages.healthy' => 'Μπράβο! Βρίσκεσαι σε υγιές εύρος. Θα σε βοηθήσουμε να διατηρήσεις τη ζωντάνια και την ενέργειά σου.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => 'Το ${appLabel} θα απλοποιήσει το ταξίδι σου με έξυπνη καταγραφή για να φτάσεις άνετα στον στόχο σου.',
			'onboarding.bmiScale.messages.obese' => 'Είμαστε εδώ για να σε στηρίξουμε με εξατομικευμένη καθοδήγηση και βιώσιμες στρατηγικές για τους στόχους υγείας σου.',
			'onboarding.weightGoal.title' => 'Ποιος είναι ο στόχος σου;',
			'onboarding.weightGoal.description' => 'Επίλεξε τον στόχο που περιγράφει καλύτερα αυτό που θέλεις να πετύχεις',
			'onboarding.activityLevel.title' => 'Πόσο δραστήριος/α είσαι;',
			'onboarding.activityLevel.description' => 'Μας βοηθά να υπολογίσουμε πιο σωστά τις ημερήσιες θερμίδες σου',
			'onboarding.healthConnect.title' => 'Σύνδεση με Health Connect',
			'onboarding.healthConnect.description' => 'Συγχρόνισε τα δεδομένα υγείας για καλύτερες πληροφορίες και αυτόματη καταγραφή θερμίδων',
			'onboarding.healthConnect.automaticTracking.title' => 'Αυτόματη καταγραφή θερμίδων',
			'onboarding.healthConnect.automaticTracking.description' => 'Κατέγραψε θερμίδες που κάηκαν από τις εφαρμογές fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Εικόνα προόδου',
			'onboarding.healthConnect.progressInsights.description' => 'Λάβε λεπτομερή στοιχεία για τις τάσεις της υγείας σου',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Απρόσκοπτη ενσωμάτωση',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Συγχρόνισε δεδομένα από τις αγαπημένες σου εφαρμογές υγείας',
			'onboarding.healthConnect.connected' => 'Το Health Connect συνδέθηκε',
			'onboarding.healthConnect.notConnected' => 'Το Health Connect δεν έχει συνδεθεί',
			'onboarding.healthConnect.setup' => 'Ρύθμιση του Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Παράλειψη προς το παρόν',
			'onboarding.healthConnect.statusConnected' => 'Το Health Connect είναι συνδεδεμένο.',
			'onboarding.healthConnect.statusSuccess' => 'Το Health Connect συνδέθηκε με επιτυχία!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Η άδεια απορρίφθηκε. Ενεργοποίησε τα δικαιώματα Health Connect από τις ρυθμίσεις του τηλεφώνου για το ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Σφάλμα κατά τη ρύθμιση του Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Δεν είσαι μόνος/η',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Έρευνες δείχνουν ότι η σταθερή καταγραφή είναι ο Νο1 προγνωστικός παράγοντας μακροχρόνιας επιτυχίας.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Για άτομο ${age} ετών (${gender}) που θέλει να ${goal}, η σταθερή καταγραφή είναι ο Νο1 προγνωστικός παράγοντας επιτυχίας.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => 'Το ${appLabel} το κάνει 10 φορές πιο εύκολο από τη χειροκίνητη καταγραφή.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Έτοιμος/η να ξεκινήσεις;',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Βγάλε φωτογραφία τα γεύματά σου για άμεση ανάλυση',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Κατέγραφε σταθερά για να δεις ουσιαστική πρόοδο',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Παρακολούθησε την πρόοδό σου καθημερινά για κίνητρο',
			'onboarding.reinforcement.trackingSuccess.button' => 'Πάμε',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'άτομο',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'πιο υγιή εαυτό',
			'onboarding.reinforcement.healthProfile.title' => 'Το προφίλ υγείας σου',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Με βάση τα στοιχεία σου, ο ΔΜΣ είναι ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Ας ολοκληρώσουμε το προφίλ σου για να προσαρμόσουμε την εμπειρία.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'πάρεις',
			'onboarding.reinforcement.healthProfile.goalLose' => 'χάσεις',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Για να πετύχεις τον στόχο σου, θα ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Έφτασες στο επιθυμητό βάρος! Θα σε βοηθήσουμε να το διατηρήσεις.',
			'onboarding.reinforcement.healthProfile.button' => 'Πάμε',
			'onboarding.reinforcement.goalLifestyle.title' => 'Εξαιρετική αρχή!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Έκανες το πρώτο βήμα προς ${goalText}. Εφόσον είσαι ${activityText}, το ${appLabel} θα προσαρμόσει τους στόχους σου στο στιλ ζωής σου.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Εξατομικευμένοι θερμιδικοί στόχοι',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Ανίχνευση γευμάτων με AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Αναλυτικές κατανομές μακροθρεπτικών',
			'onboarding.reinforcement.goalLifestyle.button' => 'Πάμε',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'τους στόχους σου',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'δραστήριος/α',
			'tabs.dashboard' => 'Πίνακας',
			'tabs.history' => 'Ιστορικό',
			'home.aiSummary.title' => 'Η σύνοψη AI σου',
			'home.aiSummary.logMore' => 'Κατέγραψε περισσότερα γεύματα τις επόμενες ημέρες για να λάβεις εξατομικευμένες πληροφορίες AI.',
			'home.aiSummary.loading' => 'Φόρτωση σύνοψης...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} γεύματα καταγεγραμμένα',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Βαθμός ισορροπίας ${score}',
			'home.aiSummary.topFoods' => 'Κορυφαίες τροφές',
			'home.aiSummary.trendUp' => 'Θερμίδες σε ανοδική τάση',
			'home.aiSummary.trendDown' => 'Θερμίδες σε πτωτική τάση',
			'home.aiSummary.trendSteady' => 'Θερμίδες σταθερές',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Ενημερώθηκε ${time}',
			'home.dailyGoal.title' => 'Όρισε τον ημερήσιο στόχο',
			'home.dailyGoal.titleSet' => 'Ο ημερήσιος στόχος σου',
			'home.dailyGoal.description' => 'Έτοιμος/η για το ταξίδι ευεξίας; Όρισε τον ημερήσιο θερμιδικό σου στόχο παρακάτω για να ξεκινήσεις.',
			'home.dailyGoal.descriptionSet' => 'Η πυξίδα σου είναι έτοιμη! Αυτός είναι ο ημερήσιος θερμιδικός σου στόχος.',
			'home.dailyGoal.yourGoal' => 'Ο στόχος σου',
			'home.dailyGoal.goal' => 'Στόχος',
			'home.dailyGoal.dailyCalories' => 'Ημερήσιες θερμίδες (kcal)',
			'home.dailyGoal.setGoal' => 'Ορισμός στόχου',
			'home.dailyGoal.intake' => 'Πρόσληψη',
			'home.dailyGoal.burned' => 'Καύσεις',
			'home.dailyGoal.weightImpact' => 'Επίδραση στο βάρος',
			'home.dailyGoal.estLoss' => 'Εκτ. απώλεια',
			'home.dailyGoal.estGain' => 'Εκτ. αύξηση',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Ημερήσια σύνοψη',
			'home.dailySummary.calories' => 'Θερμίδες',
			'home.dailySummary.carbs' => 'Υδατ/κες',
			'home.dailySummary.protein' => 'Πρωτεΐνη',
			'home.dailySummary.fat' => 'Λιπαρά',
			'home.dailySummary.fiber' => 'Φυτικές ίνες',
			'home.dailySummary.grams' => 'γραμμάρια',
			'home.dailySummary.chartAccessibilityLabel' => 'Γράφημα μακροθρεπτικών',
			'home.intakeProgress.title' => 'Κατανομή μακροθρεπτικών σήμερα',
			'home.intakeProgress.target' => 'Στόχος',
			'home.intakeProgress.current' => 'Τρέχον',
			'home.intakeHistory.title' => 'Ιστορικό μακροθρεπτικών 7 ημερών',
			'home.intakeHistory.trendTitle' => 'Σημερινή τάση',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Κορύφωση: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Δεν υπάρχει ακόμη ιστορικό',
			'home.intakeHistory.startLogging' => 'Ξεκίνα να καταγράφεις γεύματα για να δεις εδώ\nτις τάσεις μακροθρεπτικών των 7 ημερών σου',
			'home.mealLog.title' => 'Καταγεγραμμένα γεύματα',
			'home.mealLog.emptyMessage' => 'Βγάλε φωτογραφία του τελευταίου σου γεύματος για καταγραφή εδώ.',
			'home.mealLog.noMealsToday' => 'Δεν υπάρχουν γεύματα για σήμερα',
			'home.mealLog.seeAllMeals' => 'Δες όλα τα γεύματα',
			'home.mealDescription.title' => 'Γρήγορη προσθήκη με AI',
			'home.mealDescription.description' => 'Περιέγραψε το γεύμα σου και άφησε την AI να αναλάβει τα υπόλοιπα.',
			'home.mealDescription.hint' => 'π.χ. Για πρωινό είχα ένα μεγάλο μπολ βρώμη με μία μπανάνα και μία μεζούρα whey ...',
			'home.mealDescription.analyzeMeal' => 'Ανάλυση γεύματος',
			'home.favoriteMeals.title' => 'Αγαπημένα γεύματα',
			'home.favoriteMeals.description' => 'Πρόσθεσε γρήγορα ένα από τα αγαπημένα σου γεύματα.',
			'home.favoriteMeals.noFavorites' => 'Δεν υπάρχουν αγαπημένα ακόμη.',
			'home.favoriteMeals.addFavoriteHint' => 'Πάτησε το αστέρι σε ένα γεύμα για να το κάνεις αγαπημένο.',
			'home.favoriteMeals.seeAll' => 'Δες όλα',
			'home.favoriteMeals.add' => 'Προσθήκη',
			'home.mealSnap.title' => 'Φωτογράφισε και κατέγραψε το γεύμα σου',
			'home.mealSnap.description' => 'Χρησιμοποίησε την κάμερα για να βγάλεις φωτογραφία του φαγητού για ανάλυση με AI.',
			'home.mealSnap.openCamera' => 'Άνοιγμα κάμερας',
			'home.mealSnap.gallery' => 'Συλλογή',
			'home.mealSnap.compressingPhoto' => 'Βελτιστοποίηση φωτογραφίας…',
			'home.mealSnap.uploadingPhoto' => 'Μεταφόρτωση φωτογραφίας…',
			'home.connectHealth.title' => 'Συγχρονισμός με Health Connect',
			'home.connectHealth.description' => 'Συγχρόνισε τα διατροφικά σου δεδομένα με το Health Connect',
			'home.connectHealth.install' => 'Εγκατάσταση',
			'home.connectHealth.connect' => 'Σύνδεση',
			'history.noMeals' => 'Δεν υπάρχουν γεύματα',
			'history.emptyMessage' => 'Βγάλε φωτογραφία του τελευταίου σου γεύματος για καταγραφή εδώ.',
			'history.today' => 'Σήμερα',
			'history.yesterday' => 'Χθες',
			'meal.ohNo' => 'Ωχ όχι!',
			'meal.delete' => 'Διαγραφή',
			'meal.editMeal' => 'Επεξεργασία γεύματος',
			'meal.addMeal' => 'Προσθήκη γεύματος',
			'meal.saveMeal' => 'Αποθήκευση γεύματος',
			'meal.save' => 'Αποθήκευση',
			'meal.mealName' => 'Όνομα γεύματος',
			'meal.mealNameHint' => 'π.χ., Ομελέτα με τοστ',
			'meal.mealQuantity' => 'Ποσότητα γεύματος',
			'meal.mealQuantityHint' => 'π.χ., 1 μπολ, 2 φέτες',
			'meal.timeOfMeal' => 'Ώρα γεύματος',
			'meal.timeOfMealHint' => 'Επίλεξε την ώρα που έφαγες',
			'meal.mealType' => 'Τύπος γεύματος',
			'meal.nutrition.calories' => 'Θερμίδες',
			'meal.nutrition.carbs' => 'Υδατ/κες (g)',
			'meal.nutrition.protein' => 'Πρωτεΐνη (g)',
			'meal.nutrition.fat' => 'Λιπαρά (g)',
			'meal.nutrition.fiber' => 'Φυτικές ίνες (g)',
			'meal.deleteConfirmation.title' => 'Διαγραφή γεύματος',
			'meal.deleteConfirmation.message' => 'Είσαι σίγουρος/η ότι θέλεις να διαγράψεις αυτήν την καταχώριση;',
			'meal.deleteConfirmation.cancel' => 'Άκυρο',
			'meal.deleteConfirmation.delete' => 'Διαγραφή',
			'meal.addedToLog' => 'Το γεύμα προστέθηκε στο ιστορικό σου!',
			'meal.couldNotAdd' => ({required Object error}) => 'Δεν ήταν δυνατή η προσθήκη γεύματος: ${error}',
			'meal.savedSuccessfully' => 'Το γεύμα προστέθηκε με επιτυχία!',
			'meal.updatedSuccessfully' => 'Το γεύμα ενημερώθηκε με επιτυχία!',
			'meal.errorSaving' => ({required Object error}) => 'Σφάλμα κατά την αποθήκευση: ${error}',
			'meal.removedFromFavorites' => 'Αφαιρέθηκε από τα αγαπημένα!',
			'meal.savedAsFavorite' => 'Το γεύμα αποθηκεύτηκε στα αγαπημένα!',
			'meal.unfavorite' => 'Κατάργηση από αγαπημένα',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Δεν ήταν δυνατή η ενημέρωση αγαπημένου: ${error}',
			'meal.feedbackThanks' => 'Ευχαριστούμε για τα σχόλιά σου!',
			'meal.reanalysisUpdated' => 'Ενημερώθηκε η ανάλυση βάσει των σχολίων σου.',
			'meal.failedToProcess' => ({required Object error}) => 'Αποτυχία επεξεργασίας: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Αποτυχία επεξεργασίας εικόνας: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Σφάλμα κατά τη συμπίεση εικόνας: ${error}',
			'meal.failedToSave' => 'Αποτυχία αποθήκευσης δεδομένων. Δοκίμασε ξανά.',
			'meal.skip' => 'Παράλειψη',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Ερώτηση ${current} από ${total}',
			'meal.variation.noVariationsAvailable' => 'Δεν υπάρχουν διαθέσιμες παραλλαγές',
			'meal.analysis.title' => 'Ανάλυση γεύματος με AI',
			'meal.analysis.reassurance' => 'Συνήθως διαρκεί λίγα δευτερόλεπτα.',
			'meal.analysis.stepStarted' => 'Ξεκινάμε…',
			'meal.analysis.stepDecomposition' => 'Κατανόηση του γεύματός σου…',
			'meal.analysis.stepIngredients' => 'Αντιστοίχιση συστατικών με διατροφικά δεδομένα…',
			'meal.analysis.stepUncertainty' => 'Έλεγχος βεβαιότητας…',
			'meal.analysis.stepMealTypeQuestion' => 'Σχεδόν έτοιμοι…',
			'meal.analysis.stepResult' => 'Οριστικοποίηση αποτελέσματος…',
			'meal.analysis.stepError' => 'Κάτι πήγε στραβά',
			'meal.analysis.stepDefault' => 'Ανάλυση του γεύματός σου…',
			'meal.analysis.progressUnderstand' => 'Κατανόηση',
			'meal.analysis.progressMatch' => 'Αντιστοίχιση',
			'meal.analysis.progressCheck' => 'Έλεγχος',
			'meal.analysis.progressFinish' => 'Τελικό',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'Εντοπίστηκαν ${count} συστατικά',
			'meal.analysis.ingredientsPending' => 'Σάρωση συστατικών…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'Τι φαίνεται λάθος;',
			'meal.feedback.subtitle' => 'Βοήθησέ μας να βελτιώσουμε την ανάλυση επιλέγοντας ένα ή περισσότερα προβλήματα.',
			'meal.feedback.tellUsMore' => 'Πες μας περισσότερα',
			'meal.feedback.describeIncorrect' => 'Περιέγραψε τι ήταν λάθος',
			'meal.feedback.submit' => 'Υποβολή',
			'meal.feedback.issueFoodIdentification' => 'Αναγνώριση φαγητού',
			'meal.feedback.issuePortionSize' => 'Μέγεθος μερίδας',
			'meal.feedback.issueCalorieDistribution' => 'Κατανομή θερμίδων',
			'meal.feedback.issueMacrosWrong' => 'Λάθος μακροθρεπτικά',
			'meal.feedback.issueMissingItems' => 'Στοιχεία που λείπουν',
			'meal.feedback.issueExtraItems' => 'Επιπλέον στοιχεία',
			'meal.feedback.issueOther' => 'Άλλο',
			'favorites.title' => 'Αγαπημένα',
			'favorites.empty' => 'Δεν υπάρχουν αγαπημένα ακόμη.',
			'favorites.searchPlaceholder' => 'Αναζήτηση αγαπημένων γευμάτων',
			'favorites.searchEmptyTitle' => 'Δεν βρέθηκαν αγαπημένα που να ταιριάζουν',
			'favorites.searchEmptySubtitle' => 'Δοκίμασε διαφορετικό όνομα γεύματος, ποσότητα ή τύπο γεύματος.',
			'favorites.sortLabel' => 'Ταξινόμηση αγαπημένων',
			'favorites.undo' => 'Αναίρεση',
			'favorites.removed' => ({required Object name}) => 'Αφαιρέθηκε το ${name} από τα αγαπημένα',
			'favorites.sortOptions.recent' => 'Πρόσφατα',
			'favorites.sortOptions.calories' => 'Θερμίδες',
			'favorites.sortOptions.alphabetical' => 'Α-Ω',
			'profile.title' => 'Προφίλ',
			'profile.noProfileData' => 'Δεν βρέθηκαν δεδομένα προφίλ',
			'profile.yourProfile' => 'Το προφίλ σου',
			'profile.viewAndManage' => 'Δες και διαχειρίσου τις πληροφορίες υγείας σου',
			'profile.sections.profile' => 'ΠΡΟΦΙΛ',
			'profile.sections.basicInformation' => 'ΒΑΣΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ',
			'profile.sections.goalsAndActivity' => 'ΣΤΟΧΟΙ & ΔΡΑΣΤΗΡΙΟΤΗΤΑ',
			'profile.sections.calculatedValues' => 'ΥΠΟΛΟΓΙΣΜΕΝΕΣ ΤΙΜΕΣ',
			'profile.gender' => 'Φύλο',
			'profile.height' => 'Ύψος',
			'profile.weight' => 'Βάρος',
			'profile.age' => 'Ηλικία',
			'profile.weightGoal' => 'Στόχος βάρους',
			'profile.targetWeight' => 'Επιθυμητό βάρος',
			'profile.activityLevel' => 'Επίπεδο δραστηριότητας',
			'profile.healthMetrics' => 'Δείκτες υγείας',
			'profile.notSet' => 'Μη ορισμένο',
			'profile.years' => 'ετών',
			'profile.updatedSuccessfully' => 'Το προφίλ ενημερώθηκε με επιτυχία!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Ημερήσιος στόχος',
			'profile.calculatedValues.calPerDay' => 'cal/ημέρα',
			'profile.calculatedValues.notAvailable' => 'Μ/Δ',
			'healthScore.title' => 'Δείκτης υγείας',
			'healthScore.whyThisScore' => 'Γιατί αυτός ο δείκτης;',
			'healthScore.note' => 'Αυτός ο δείκτης είναι εκτίμηση AI με βάση τα αναγνωρισμένα συστατικά και τη διατροφική πυκνότητα. Πάντα να συμβουλεύεσαι επαγγελματία για διατροφικές συμβουλές.',
			'healthScore.unhealthy' => 'Ανθυγιεινό',
			'healthScore.healthy' => 'Υγιεινό',
			'healthScore.neutral' => 'Ουδέτερο',
			'editProfile.title' => 'Επεξεργασία προφίλ',
			'editProfile.sections.personalInformation' => 'ΠΡΟΣΩΠΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ',
			'editProfile.sections.physicalMeasurements' => 'ΣΩΜΑΤΟΜΕΤΡΙΚΑ ΣΤΟΙΧΕΙΑ',
			'editProfile.sections.goalsAndActivity' => 'ΣΤΟΧΟΙ & ΔΡΑΣΤΗΡΙΟΤΗΤΑ',
			'editProfile.gender' => 'Φύλο',
			'editProfile.dateOfBirth' => 'Ημερομηνία γέννησης',
			'editProfile.height' => 'Ύψος',
			'editProfile.weight' => 'Βάρος',
			'editProfile.weightGoal' => 'Στόχος βάρους',
			'editProfile.activityLevel' => 'Επίπεδο δραστηριότητας',
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
			'editProfile.weightGoals.loseWeight.name' => 'Απώλεια βάρους',
			'editProfile.weightGoals.loseWeight.description' => 'Δημιούργησε θερμιδικό έλλειμμα για να χάσεις βάρος',
			'editProfile.weightGoals.maintainWeight.name' => 'Διατήρηση βάρους',
			'editProfile.weightGoals.maintainWeight.description' => 'Διατήρησε το τωρινό σου βάρος',
			'editProfile.weightGoals.gainWeight.name' => 'Αύξηση βάρους',
			'editProfile.weightGoals.gainWeight.description' => 'Δημιούργησε θερμιδικό πλεόνασμα για να πάρεις βάρος',
			'editProfile.activityLevels.sedentary.name' => 'Καθιστικός',
			'editProfile.activityLevels.sedentary.description' => 'Ελάχιστη ή καθόλου άσκηση',
			'editProfile.activityLevels.lightlyActive.name' => 'Ελαφρά δραστήριος/α',
			'editProfile.activityLevels.lightlyActive.description' => 'Ελαφριά άσκηση 1-3 ημέρες/εβδομάδα',
			'editProfile.activityLevels.moderatelyActive.name' => 'Μέτρια δραστήριος/α',
			'editProfile.activityLevels.moderatelyActive.description' => 'Μέτρια άσκηση 3-5 ημέρες/εβδομάδα',
			'editProfile.activityLevels.veryActive.name' => 'Πολύ δραστήριος/α',
			'editProfile.activityLevels.veryActive.description' => 'Έντονη άσκηση 6-7 ημέρες/εβδομάδα',
			'editProfile.activityLevels.extremelyActive.name' => 'Εξαιρετικά δραστήριος/α',
			'editProfile.activityLevels.extremelyActive.description' => 'Πολύ έντονη άσκηση, χειρωνακτική εργασία',
			'settings.title' => 'Ρυθμίσεις',
			'settings.sections.profile' => 'ΠΡΟΦΙΛ',
			'settings.sections.localization' => 'ΓΛΩΣΣΑ & ΜΟΝΑΔΕΣ',
			'settings.sections.notifications' => 'ΕΙΔΟΠΟΙΗΣΕΙΣ',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'ΥΠΟΣΤΗΡΙΞΗ & ΝΟΜΙΚΑ',
			'settings.sections.about' => 'ΣΧΕΤΙΚΑ',
			'settings.sections.dangerZone' => 'ΖΩΝΗ ΚΙΝΔΥΝΟΥ',
			'settings.sections.developer' => 'ΠΡΟΓΡΑΜΜΑΤΙΣΤΗΣ',
			'settings.editProfile.title' => 'Επεξεργασία προφίλ',
			'settings.editProfile.subtitle' => 'Ενημέρωσε τα προσωπικά σου στοιχεία',
			'settings.language.title' => 'Γλώσσα',
			'settings.language.subtitle' => 'Επίλεξε την προτιμώμενη γλώσσα',
			'settings.language.searchHint' => 'Αναζήτηση γλωσσών...',
			'settings.language.noResults' => 'Δεν βρέθηκαν αποτελέσματα',
			'settings.heightUnit.title' => 'Μονάδα ύψους',
			'settings.weightUnit.title' => 'Μονάδα βάρους',
			'settings.mealReminders.title' => 'Υπενθυμίσεις γευμάτων',
			'settings.mealReminders.subtitle' => 'Μείνε συνεπής με έγκαιρα μηνύματα',
			'settings.theme.title' => 'Θέμα',
			'settings.theme.light' => 'Φωτεινό',
			'settings.theme.dark' => 'Σκουρό',
			'settings.theme.system' => 'Σύστημα',
			'settings.sendFeedback.title' => 'Στείλε σχόλια',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Βοήθησέ μας να βελτιώσουμε το ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Σχόλια για την εφαρμογή ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Παρακαλούμε γράψε τα σχόλιά σου παρακάτω:',
			'settings.sendFeedback.appVersion' => 'Έκδοση εφαρμογής',
			'settings.sendFeedback.device' => 'Συσκευή',
			'settings.sendFeedback.osVersion' => 'Έκδοση OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Εξαγωγή ιστορικού γευμάτων',
			'settings.exportMealHistory.subtitle' => 'Μοιράσου ένα CSV με τα καταγεγραμμένα γεύματά σου',
			'settings.exportMealHistory.shareText' => 'Η εξαγωγή του ιστορικού γευμάτων σου από το Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Δεν ήταν δυνατή η εξαγωγή ιστορικού γευμάτων: ${error}',
			'settings.clearAllData.title' => 'Διαγραφή όλων των δεδομένων',
			'settings.clearAllData.subtitle' => 'Μη αναστρέψιμη διαγραφή όλων των πληροφοριών',
			'settings.clearAllData.confirmationTitle' => 'Διαγραφή όλων των δεδομένων;',
			'settings.clearAllData.confirmationMessage' => 'Αυτή η ενέργεια δεν μπορεί να αναιρεθεί. Όλα τα γεύματα, τα αγαπημένα και οι ρυθμίσεις προφίλ θα διαγραφούν οριστικά.',
			'settings.clearAllData.cancel' => 'Άκυρο',
			'settings.clearAllData.clearEverything' => 'Διαγραφή όλων',
			'settings.debugOptions.title' => 'Επιλογές αποσφαλμάτωσης',
			'settings.developerModeEnabled' => 'Η λειτουργία προγραμματιστή ενεργοποιήθηκε!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Προβολή και διαχείριση δικαιωμάτων',
			'settings.healthConnect.unavailable.title' => 'Το Health Connect δεν είναι διαθέσιμο',
			'settings.healthConnect.unavailable.description' => 'Το Health Connect δεν είναι διαθέσιμο σε αυτή τη συσκευή. Εγκατάστησε το από το Play Store (Android 9+) ή αναβάθμισε σε Android 14+.',
			'settings.healthConnect.permissions.title' => 'Δικαιώματα',
			'settings.healthConnect.permissions.description' => 'Ζητούνται τα παρακάτω δικαιώματα για την ενσωμάτωση με το Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Χορηγήθηκε',
			'settings.healthConnect.permissions.notGranted' => 'Δεν χορηγήθηκε',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Ανάγνωση συνολικών θερμίδων που κάηκαν',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Επιτρέπει στην εφαρμογή να διαβάζει τις συνολικές θερμίδες που κάηκαν από το Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Αυτό το δικαίωμα χρησιμοποιείται για να εμφανίζει η εφαρμογή τις ημερήσιες καύσεις θερμίδων, ώστε να κατανοείς τη συνολική ενεργειακή σου δαπάνη μέσα στην ημέρα.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Ανάγνωση διατροφικών δεδομένων',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Επιτρέπει στην εφαρμογή να διαβάζει διατροφικά δεδομένα από το Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Αυτό το δικαίωμα επιτρέπει την ανάγνωση διατροφικών πληροφοριών που μπορεί να έχουν καταγραφεί από άλλες εφαρμογές συνδεδεμένες στο Health Connect, προσφέροντας μια ολοκληρωμένη εικόνα της διατροφής σου.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Εγγραφή διατροφικών δεδομένων',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Επιτρέπει στην εφαρμογή να γράφει διατροφικά δεδομένα στο Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Αυτό το δικαίωμα επιτρέπει τον συγχρονισμό των καταγεγραμμένων γευμάτων σου στο Health Connect, ώστε τα διατροφικά σου δεδομένα να είναι διαθέσιμα και σε άλλες εφαρμογές υγείας και fitness που χρησιμοποιείς.',
			'settings.healthConnect.managePermissions' => 'Διαχείριση δικαιωμάτων',
			'settings.healthConnect.openSettings' => 'Άνοιγμα ρυθμίσεων Health Connect',
			'settings.healthConnect.requestPermissions' => 'Αίτημα δικαιωμάτων',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Το αίτημα δικαιωμάτων ακυρώθηκε ή απέτυχε. Δοκίμασε ξανά ή δώσε δικαιώματα χειροκίνητα από τις ρυθμίσεις του Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Δεν ήταν δυνατό το αίτημα δικαιωμάτων. Δοκίμασε ξανά ή δώσε δικαιώματα χειροκίνητα από τις ρυθμίσεις του Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Γίνεται αίτημα...',
			'settings.about.title' => 'Σχετικά',
			'settings.about.tagline' => 'Γρήγορη, δωρεάν και με προτεραιότητα στην ιδιωτικότητα επίγνωση θερμίδων',
			'settings.about.ourStory.title' => 'Η ιστορία μας',
			'settings.about.ourStory.content' => ({required Object appLabel}) => 'Το ${appLabel} γεννήθηκε από μια απλή απογοήτευση: οι περισσότερες εφαρμογές καταγραφής θερμίδων είναι είτε υπερβολικά πολύπλοκες, απαιτούν συνεχώς χειροκίνητη εισαγωγή, χρεώνουν ακριβά συνδρομές ή δεν σέβονται την ιδιωτικότητα.\n\nΩς solo προγραμματιστής, ήθελα κάτι πιο απλό και δίκαιο — μια εφαρμογή που χρησιμοποιεί AI για να μειώνει την προσπάθεια, παραμένει γρήγορη και δωρεάν, και αντιμετωπίζει με σεβασμό τα δεδομένα υγείας σου.\n\nΤο ${appLabel} είναι η εφαρμογή που θα ήθελα να υπάρχει: χωρίς λογαριασμούς, χωρίς παρακολούθηση, χωρίς διαφημίσεις — μόνο καθαρές, πρακτικές πληροφορίες και οι στόχοι υγείας σου.',
			'settings.about.privacy.title' => 'Η ιδιωτικότητά σου μετράει',
			'settings.about.privacy.description' => 'Η ιδιωτικότητα δεν είναι υστερόγραφο — είναι αρχή σχεδιασμού. Τι σημαίνει αυτό στην πράξη:',
			'settings.about.privacy.noAccounts' => 'Χωρίς λογαριασμούς\nΧρησιμοποίησε την εφαρμογή άμεσα. Χωρίς εγγραφές, χωρίς ταυτοποίηση.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Χωρίς συμπεριφορική παρακολούθηση\nΤο ${appLabel} δεν παρακολουθεί τη δραστηριότητά σου, δεν δημιουργεί προφίλ χρήσης και δεν σε ανιχνεύει σε εφαρμογές ή ιστότοπους.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Χωρίς διαφημίσεις από σχεδιασμό\nΤο ${appLabel} είναι φτιαγμένο να λειτουργεί χωρίς διαφημίσεις ή εμπορευματοποίηση δεδομένων.',
			'settings.about.privacy.noDataSelling' => 'Χωρίς πώληση δεδομένων\nΤα δεδομένα υγείας σου δεν πωλούνται ούτε κοινοποιούνται σε τρίτους.',
			'settings.about.privacy.localStorage' => 'Πρωτίστως τοπική αποθήκευση\nΤα δεδομένα σου παραμένουν στη συσκευή σου.',
			'settings.about.privacy.privacyPolicy' => 'Πολιτική απορρήτου',
			'settings.about.developer.title' => 'Κατασκευάστηκε από έναν solo προγραμματιστή',
			'settings.about.developer.description' => ({required Object appLabel}) => 'Το ${appLabel} δημιουργείται και συντηρείται από έναν solo προγραμματιστή που εστιάζει σε ήσυχο, με σεβασμό στην ιδιωτικότητα λογισμικό υγείας.\n\nΤα σχόλια διαβάζονται προσωπικά και διαμορφώνουν την κατεύθυνση της εφαρμογής.',
			'settings.about.developer.website' => 'Ιστότοπος',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Σου αρέσει το ${appLabel};',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Τα σχόλιά σου βοηθούν να γίνει το ${appLabel} καλύτερο για όλους.',
			'settings.about.feedback.rateApp' => 'Αξιολόγηση στο Play Store',
			'settings.about.feedback.sendFeedback' => 'Αποστολή σχολίων',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Δόμηση ${buildNumber}',
			'reminders.title' => 'Μείνε συνεπής με υπενθυμίσεις',
			'reminders.description' => 'Λάβε ήπιες υπενθυμίσεις για να καταγράφεις τα γεύματά σου και να μένεις σταθερός/ή στους διατροφικούς σου στόχους',
			'reminders.notificationsEnabled' => 'Ενεργοποιημένες ειδοποιήσεις',
			'reminders.notificationsDisabled' => 'Απενεργοποιημένες ειδοποιήσεις',
			'reminders.enabledSubtitle' => 'Θα λαμβάνεις υπενθυμίσεις γευμάτων',
			'reminders.disabledSubtitle' => 'Ενεργοποίησε τις ειδοποιήσεις για να λάβεις υπενθυμίσεις γευμάτων',
			'reminders.mealReminders' => 'Υπενθυμίσεις γευμάτων',
			'reminders.breakfast' => 'Πρωινό',
			'reminders.lunch' => 'Μεσημεριανό',
			'reminders.dinner' => 'Βραδινό',
			'reminders.snack' => 'Σνακ',
			'reminders.unknown' => 'Άγνωστο',
			'reminders.change' => 'Αλλαγή',
			'reminders.enableNotifications' => 'Ενεργοποίηση ειδοποιήσεων',
			'reminders.skipForNow' => 'Παράλειψη προς το παρόν',
			'reminders.saveChanges' => 'Αποθήκευση αλλαγών',
			'reminders.enabledSuccessfully' => 'Οι ειδοποιήσεις ενεργοποιήθηκαν με επιτυχία!',
			'reminders.permissionDenied' => 'Άρνηση άδειας ειδοποιήσεων',
			'reminders.errorEnabling' => ({required Object error}) => 'Σφάλμα κατά την ενεργοποίηση ειδοποιήσεων: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Σφάλμα κατά την ολοκλήρωση ρύθμισης: ${error}',
			'notifications.breakfast.title' => 'Ώρα για πρωινό! 🍳',
			'notifications.breakfast.body' => 'Μην ξεχάσεις να καταγράψεις το πρωινό σου',
			'notifications.lunch.title' => 'Ώρα για μεσημεριανό! 🥗',
			'notifications.lunch.body' => 'Ήρθε η ώρα να καταγράψεις το μεσημεριανό σου',
			'notifications.dinner.title' => 'Ώρα για βραδινό! 🍽️',
			'notifications.dinner.body' => 'Μην ξεχάσεις να καταγράψεις το βραδινό σου',
			'notifications.snack.title' => 'Ώρα για σνακ! 🍎',
			'notifications.snack.body' => 'Ώρα για ένα υγιεινό σνακ',
			'notifications.test.title' => 'Δοκιμαστική ειδοποίηση',
			'login.title' => 'Σύνδεση',
			'login.signInWithGoogle' => 'Σύνδεση με Google',
			'login.signInFailed' => 'Η σύνδεση με Google απέτυχε ή ακυρώθηκε.',
			'disclaimer.pleaseNote' => 'Παρακαλώ σημείωσε',
			'disclaimer.snap.description' => ({required Object appLabel}) => 'Το ${appLabel} παρέχει εκτιμώμενες διατροφικές πληροφορίες. Η ακρίβεια εξαρτάται από την είσοδό σου και τις διαφορές στα τρόφιμα. Χρησιμοποίησέ το ως οδηγό, όχι ως απόλυτη πηγή. Συμβουλεύσου επαγγελματία για εξατομικευμένες διατροφικές συμβουλές.',
			'disclaimer.snap.portionSize.title' => 'Μέγεθος μερίδας',
			'disclaimer.snap.portionSize.description' => 'Η ακρίβεια των εκτιμήσεων βασίζεται σε μεγάλο βαθμό στη σωστή εκτίμηση του μεγέθους της μερίδας.',
			'disclaimer.snap.preparationMethods.title' => 'Μέθοδοι παρασκευής',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Οι τρόποι μαγειρέματος μπορούν να επηρεάσουν σημαντικά τα διατροφικά στοιχεία. Οι εκτιμήσεις του ${appLabel} ενδέχεται να μην λαμβάνουν πάντα υπόψη αυτές τις διαφορές.',
			'disclaimer.snap.ingredients.title' => 'Συστατικά',
			'disclaimer.snap.ingredients.description' => 'Σύνθετα πιάτα με πολλά «κρυφά» συστατικά μπορεί να οδηγήσουν σε λιγότερο ακριβείς εκτιμήσεις.',
			'disclaimer.snap.databaseLimitations.title' => 'Περιορισμοί βάσης δεδομένων',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Η βάση τροφίμων του ${appLabel} είναι εκτενής αλλά ενδέχεται να μην περιλαμβάνει κάθε τρόφιμο ή παραλλαγή.',
			'disclaimer.weightEstimate.title' => 'Σχετικά με την εκτίμηση βάρους',
			'disclaimer.weightEstimate.description' => 'Η προβλεπόμενη αλλαγή βάρους είναι θεωρητική εκτίμηση που βασίζεται στο απλό μοντέλο θερμίδες-εντός έναντι θερμίδων-εκτός. Σκοπός της είναι το κίνητρο, όχι η πρόβλεψη του πραγματικού βάρους σου.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Ακρίβεια θερμίδων',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Η εκτίμηση είναι τόσο ακριβής όσο η καταγραφή πρόσληψης και δαπάνης θερμίδων. Ανακριβής καταγραφή οδηγεί σε ανακριβή εκτίμηση.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Βιολογικοί παράγοντες',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Η πραγματική απώλεια/αύξηση βάρους επηρεάζεται από μεταβολισμό, ορμόνες, ύπνο, στρες, ενυδάτωση και άλλους ατομικούς παράγοντες που το ${appLabel} δεν μπορεί να μετρήσει.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Κατακράτηση υγρών & διακυμάνσεις',
			'disclaimer.weightEstimate.waterWeight.description' => 'Το καθημερινό βάρος μπορεί να μεταβάλλεται σημαντικά λόγω κατακράτησης υγρών, πέψης και χρονισμού. Η εκτίμηση δεν λαμβάνει υπόψη αυτές τις καθημερινές αλλαγές.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Επαγγελματική καθοδήγηση',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Μην χρησιμοποιείς αυτήν την εκτίμηση για ιατρικές αποφάσεις. Πάντα να συμβουλεύεσαι έναν επαγγελματία υγείας ή πιστοποιημένο διαιτολόγο για εξατομικευμένη διαχείριση βάρους.',
			'disclaimer.healthMetrics.description' => 'Αυτοί οι δείκτες βοηθούν να κατανοήσεις τις ενεργειακές ανάγκες του σώματός σου και να καθοδηγήσεις τους διατροφικούς σου στόχους.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Ο Βασικός Μεταβολικός Ρυθμός (BMR) είναι οι θερμίδες που καίει το σώμα σου σε κατάσταση ηρεμίας για βασικές λειτουργίες όπως αναπνοή και κυκλοφορία. Εξαρτάται από ηλικία, φύλο, ύψος και βάρος. Υψηλότερο BMR σημαίνει ότι καίγονται περισσότερες θερμίδες σε ηρεμία, συνήθως λόγω περισσότερης μυϊκής μάζας, νεότερης ηλικίας ή ανδρικού φύλου. Χαμηλότερο BMR συνδέεται συνήθως με λιγότερη μυϊκή μάζα, μεγαλύτερη ηλικία ή γυναικείο φύλο.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Η Συνολική Ημερήσια Ενεργειακή Δαπάνη (TDEE) είναι οι συνολικές θερμίδες που καίγεις μέσα στην ημέρα, δηλαδή το BMR συν τη σωματική δραστηριότητα και την κίνηση. Εξαρτάται από το BMR και το επίπεδο δραστηριότητας. Υψηλότερο TDEE σημαίνει περισσότερες καύσεις, συνήθως λόγω μεγαλύτερης δραστηριότητας ή υψηλότερου BMR. Χαμηλότερο TDEE υποδηλώνει λιγότερη καθημερινή δραστηριότητα ή χαμηλότερο BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Ημερήσιος στόχος',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Ο Ημερήσιος Στόχος είναι η προτεινόμενη ημερήσια πρόσληψη θερμίδων βάσει TDEE και στόχου βάρους. Για απώλεια βάρους, καταναλώνεις λιγότερες θερμίδες από το TDEE. Για διατήρηση, ταιριάζεις το TDEE. Για αύξηση, καταναλώνεις περισσότερες. Αυτό βοηθά να πετύχεις την επιθυμητή αλλαγή βάρους με υγιή ρυθμό.',
			'disclaimer.calorieExpenditure.title' => 'Εκτίμηση δαπάνης θερμίδων',
			'disclaimer.calorieExpenditure.description' => 'Όταν δεν υπάρχουν δεδομένα Health Connect, εκτιμούμε τις θερμίδες που κάηκαν σήμερα χρησιμοποιώντας το BMR και το επίπεδο δραστηριότητάς σου (TDEE), κλιμακωμένα με το ποσοστό της ημέρας που έχει περάσει.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Πώς υπολογίζεται η εκτίμηση',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Υπολογίζουμε το TDEE (βάσει προφίλ) και το πολλαπλασιάζουμε με το κλάσμα της ημέρας που έχει παρέλθει (ώρες + λεπτά) / 24 για να εκτιμήσουμε τις έως τώρα καύσεις.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Επαγγελματική καθοδήγηση',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Μην χρησιμοποιείς αυτήν την εκτίμηση για ιατρικές αποφάσεις. Πάντα να συμβουλεύεσαι επαγγελματία υγείας ή πιστοποιημένο διαιτολόγο για εξατομικευμένες συμβουλές.',
			'common.close' => 'Κλείσιμο',
			'common.kContinue' => 'Συνέχεια',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Σου αρέσει το ${appLabel};',
			'feedbackRating.yes' => 'Ναι, μου αρέσει',
			'feedbackRating.no' => 'Όχι ιδιαίτερα',
			'feedbackRating.rateStepHeading' => 'Αξιολόγηση στο Play Store',
			'feedbackRating.emailStepHeading' => 'Αποστολή σχολίων με email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Μια γρήγορη αξιολόγηση βοηθά άλλους να βρουν το ${appLabel} και στηρίζει την ανάπτυξη. Θα αφιερώσεις ένα λεπτό;',
			'feedbackRating.shareFeedbackViaEmail' => 'Τα σχόλιά σου καθορίζουν τα επόμενα βήματα — διαβάζουμε κάθε μήνυμα. Θέλεις να μοιραστείς τις σκέψεις σου με email;',
			'feedbackRating.rateCta' => 'Αξιολόγηση στο Play Store',
			'feedbackRating.maybeLater' => 'Ίσως αργότερα',
			'feedbackRating.sendFeedback' => 'Αποστολή σχολίων',
			'feedbackRating.noThanks' => 'Όχι, ευχαριστώ',
			'feedbackRating.aboutUsDescription' => 'Φτιαγμένο με φροντίδα από μια μικρή ομάδα. Εστιάζουμε στην ιδιωτικότητα, την απλότητα και στο να σε βοηθήσουμε να χτίσεις καλύτερες διατροφικές συνήθειες.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Αναρωτιέσαι ποιος βρίσκεται πίσω από το ${appLabel}; Δες ',
			'feedbackRating.aboutUsLinkLabel' => 'Σχετικά με εμάς',
			'feedbackRating.thankYouMessage' => 'Ευχαριστούμε! Θα ρωτήσουμε ξανά κάποια άλλη στιγμή.',
			'health.syncFailed' => 'Αδυναμία συγχρονισμού με το Health Connect',
			'health.mealSynced' => 'Το γεύμα συγχρονίστηκε με το Health Connect',
			_ => null,
		};
	}
}
