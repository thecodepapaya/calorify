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
	@override late final _TranslationsErrorsEl errors = _TranslationsErrorsEl._(_root);
	@override late final _TranslationsDebugEl debug = _TranslationsDebugEl._(_root);
	@override late final _TranslationsHealthEl health = _TranslationsHealthEl._(_root);
}

// Path: onboarding
class _TranslationsOnboardingEl implements TranslationsOnboardingEn {
	_TranslationsOnboardingEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Καλώς ήρθατε στο ${appLabel}';
	@override String get subtitle => 'Ο προσωπικός σου συνοδοιπόρος στη διατροφή που στηρίζεται στην τεχνητή νοημοσύνη';
	@override String get getStarted => 'Ας ξεκινήσουμε';
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
	@override String get dashboard => 'Πίνακας Ελέγχου';
	@override String get history => 'Ιστορικό';
}

// Path: home
class _TranslationsHomeEl implements TranslationsHomeEn {
	_TranslationsHomeEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
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
	@override String get noMeals => 'Δεν υπάρχουν καταγεγραμμένα γεύματα';
	@override String get emptyMessage => 'Τράβηξε μια φωτογραφία του τελευταίου γεύματος σου για να το καταγράψεις εδώ.';
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
	@override String get editMeal => 'Επεξεργασία Γεύματος';
	@override String get addMeal => 'Προσθήκη Γεύματος';
	@override String get saveMeal => 'Αποθήκευση Γεύματος';
	@override String get save => 'Αποθήκευση';
	@override String get mealName => 'Όνομα Γεύματος';
	@override String get mealNameHint => 'π.χ., Αυγά ανακατεμένα με τοστ';
	@override String get mealQuantity => 'Ποσότητα Γεύματος';
	@override String get mealQuantityHint => 'π.χ. 1 μπολ, 2 φέτες';
	@override String get timeOfMeal => 'Ώρα Γεύματος';
	@override String get timeOfMealHint => 'Επίλεξε την ώρα που είχες το γεύμα';
	@override String get mealType => 'Τύπος Γεύματος';
	@override late final _TranslationsMealNutritionEl nutrition = _TranslationsMealNutritionEl._(_root);
	@override late final _TranslationsMealDeleteConfirmationEl deleteConfirmation = _TranslationsMealDeleteConfirmationEl._(_root);
	@override String get addedToLog => 'Το γεύμα προστέθηκε στο ημερολόγιό σου!';
	@override String couldNotAdd({required Object error}) => 'Δεν μπόρεσα να προσθέσω γεύμα: ${error}';
	@override String get savedSuccessfully => 'Το γεύμα προστέθηκε με επιτυχία!';
	@override String get updatedSuccessfully => 'Το γεύμα ενημερώθηκε με επιτυχία!';
	@override String errorSaving({required Object error}) => 'Σφάλμα κατά την αποθήκευση του γεύματος: ${error}';
	@override String get removedFromFavorites => 'Αφαιρέθηκε από τα αγαπημένα!';
	@override String get savedAsFavorite => 'Το γεύμα αποθηκεύτηκε ως αγαπημένο!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Δεν μπόρεσα να ενημερώσω το αγαπημένο: ${error}';
	@override String failedToProcess({required Object error}) => 'Αποτυχία επεξεργασίας: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Αποτυχία επεξεργασίας εικόνας: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Λάθος συμπίεσης εικόνας: ${error}';
	@override String get failedToSave => 'Αποτυχία αποθήκευσης δεδομένων. Παρακαλώ δοκίμασε ξανά.';
	@override String get skip => 'Παράλειψη';
	@override late final _TranslationsMealVariationEl variation = _TranslationsMealVariationEl._(_root);
}

// Path: favorites
class _TranslationsFavoritesEl implements TranslationsFavoritesEn {
	_TranslationsFavoritesEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Αγαπημένα';
	@override String get empty => 'Δεν υπάρχουν αγαπημένα γεύματα ακόμη.';
}

// Path: profile
class _TranslationsProfileEl implements TranslationsProfileEn {
	_TranslationsProfileEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Προφίλ';
	@override String get noProfileData => 'Δεν βρέθηκαν δεδομένα προφίλ';
	@override String get yourProfile => 'Το Προφίλ Σου';
	@override String get viewAndManage => 'Δες και διαχείριση τις πληροφορίες υγείας σου';
	@override late final _TranslationsProfileSectionsEl sections = _TranslationsProfileSectionsEl._(_root);
	@override String get gender => 'Φύλο';
	@override String get height => 'Ύψος';
	@override String get weight => 'Βάρος';
	@override String get age => 'Ηλικία';
	@override String get weightGoal => 'Στόχος Βάρους';
	@override String get targetWeight => 'Στόχος Βάρους';
	@override String get activityLevel => 'Επίπεδο Δραστηριότητας';
	@override String get healthMetrics => 'Μετρήσεις Υγείας';
	@override String get notSet => 'Μη καθορισμένος';
	@override String get years => 'χρόνια';
	@override String get updatedSuccessfully => 'Το προφίλ ενημερώθηκε με επιτυχία!';
	@override late final _TranslationsProfileCalculatedValuesEl calculatedValues = _TranslationsProfileCalculatedValuesEl._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreEl implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Βαθμολογία Υγείας';
	@override String get whyThisScore => 'Γιατί αυτός ο βαθμός;';
	@override String get note => 'Αυτή η βαθμολογία είναι μια εκτίμηση της AI με βάση τα αναγνωρισμένα συστατικά και την θρεπτική πυκνότητα. Πάντα να συμβουλεύεσαι έναν επαγγελματία για διατροφικές συμβουλές.';
	@override String get unhealthy => 'Ανθυγιεινός';
	@override String get healthy => 'Υγιής';
	@override String get neutral => 'Ουδέτερος';
}

// Path: editProfile
class _TranslationsEditProfileEl implements TranslationsEditProfileEn {
	_TranslationsEditProfileEl._(this._root);

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
	@override String get imperial => 'Αμερικανικό';
	@override String get unitCm => 'εκ.';
	@override String get unitFt => 'πόδ.';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'λβ.';
	@override String get metricCm => 'Μετρικό (cm)';
	@override String get imperialFtIn => 'Αμερικανικό (ft/in)';
	@override String get metricKg => 'Μετρικό (kg)';
	@override String get imperialLbs => 'Αμερικανικό (lbs)';
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
	@override late final _TranslationsSettingsClearAllDataEl clearAllData = _TranslationsSettingsClearAllDataEl._(_root);
	@override late final _TranslationsSettingsDebugOptionsEl debugOptions = _TranslationsSettingsDebugOptionsEl._(_root);
	@override String get developerModeEnabled => 'Η λειτουργία προγραμματιστή έχει ενεργοποιηθεί!';
	@override late final _TranslationsSettingsHealthConnectEl healthConnect = _TranslationsSettingsHealthConnectEl._(_root);
	@override late final _TranslationsSettingsAboutEl about = _TranslationsSettingsAboutEl._(_root);
	@override late final _TranslationsSettingsAppInfoEl appInfo = _TranslationsSettingsAppInfoEl._(_root);
}

// Path: reminders
class _TranslationsRemindersEl implements TranslationsRemindersEn {
	_TranslationsRemindersEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μείνε συνεπής με τις υπενθυμίσεις';
	@override String get description => 'Λάβετε ήπιες υπενθυμίσεις για να καταγράψεις τα γεύματα σου και να παραμείνεις συνεπής στους στόχους διατροφής σου';
	@override String get notificationsEnabled => 'Ειδοποιήσεις Ενεργοποιημένες';
	@override String get notificationsDisabled => 'Ειδοποιήσεις Απενεργοποιημένες';
	@override String get enabledSubtitle => 'Θα λάβεις υπενθυμίσεις για τα γεύματα';
	@override String get disabledSubtitle => 'Ενεργοποίησε τις ειδοποιήσεις για να λάβεις υπενθυμίσεις για τα γεύματα';
	@override String get mealReminders => 'Υπενθυμίσεις Γευμάτων';
	@override String get breakfast => 'Πρωινό';
	@override String get lunch => 'Μεσημεριανό';
	@override String get dinner => 'Βραδινό';
	@override String get snack => 'Σνακ';
	@override String get unknown => 'Άγνωστο';
	@override String get change => 'Αλλαγή';
	@override String get enableNotifications => 'Ενεργοποίηση Ειδοποιήσεων';
	@override String get skipForNow => 'Παράκαμψε προς το παρόν';
	@override String get saveChanges => 'Αποθήκευση Αλλαγών';
	@override String get enabledSuccessfully => 'Οι ειδοποιήσεις ενεργοποιήθηκαν με επιτυχία!';
	@override String get permissionDenied => 'Απορρίφθηκε η άδεια ειδοποιήσεων';
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
	@override String get pleaseNote => 'Παρακαλώ Σημείωσε';
	@override late final _TranslationsDisclaimerSnapEl snap = _TranslationsDisclaimerSnapEl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateEl weightEstimate = _TranslationsDisclaimerWeightEstimateEl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsEl healthMetrics = _TranslationsDisclaimerHealthMetricsEl._(_root);
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
	@override String enjoyingQuestion({required Object appLabel}) => 'Απολαμβάνεις το ${appLabel};';
	@override String get yes => 'Ναι, το απολαμβάνω';
	@override String get no => 'Όχι και τόσο';
	@override String soloDevMessage({required Object appLabel}) => 'Μια σύντομη αξιολόγηση βοηθάει άλλους να βρουν το ${appLabel} και στηρίζει την ανάπτυξή του. Θα αφιερώσετε ένα λεπτό για να αφήσετε μια αξιολόγηση;';
	@override String get shareFeedbackViaEmail => 'Τα σχόλιά σας διαμορφώνουν ό,τι έρχεται — διαβάζουμε κάθε μήνυμα. Θα θέλατε να μοιραστείτε τις σκέψεις σας μέσω email;';
	@override String get rateCta => 'Αξιολογήστε στο Play Store';
	@override String get maybeLater => 'Ίσως αργότερα';
	@override String get sendFeedback => 'Στείλτε μας τα σχόλιά σας';
	@override String get noThanks => 'Όχι, ευχαριστώ';
	@override String get aboutUsDescription => 'Δημιουργήθηκε με φροντίδα από μια μικρή ομάδα. Δίνουμε προτεραιότητα στην ιδιωτικότητα, την απλότητα και στο να σας βοηθάμε να αποκτήσετε καλύτερες διατροφικές συνήθειες.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Σε ενδιαφέρει ποιος βρίσκεται πίσω από το ${appLabel}? Δες ';
	@override String get aboutUsLinkLabel => 'Σχετικά με εμάς';
}

// Path: errors
class _TranslationsErrorsEl implements TranslationsErrorsEn {
	_TranslationsErrorsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Σφάλμα κατά τη φόρτωση των δεδομένων προφίλ';
	@override String get somethingWentWrong => 'Κάτι πήγε στραβά.';
}

// Path: debug
class _TranslationsDebugEl implements TranslationsDebugEn {
	_TranslationsDebugEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επιλογές Αποσφαλμάτωσης';
	@override late final _TranslationsDebugSectionsEl sections = _TranslationsDebugSectionsEl._(_root);
	@override String get showActiveNotifications => 'Δείξε τις Ενεργές Ειδοποιήσεις';
	@override String get scheduleTestNotification => 'Προγραμματισμός Δοκιμής Ειδοποίησης (10s)';
	@override String get triggerBreakfastNotification => 'Ενεργοποίηση Ειδοποίησης Πρωινού';
	@override String get cancelAllNotifications => 'Ακύρωση Όλων των Ειδοποιήσεων';
	@override String get activeNotifications => 'Ενεργές Ειδοποιήσεις';
	@override String get noTitle => 'Χωρίς Τίτλο';
	@override String get noBody => 'Χωρίς Κείμενο';
	@override String get fetchTodaysSteps => 'Εξαγωγή Βημάτων Σήμερα';
	@override String get fetchTodaysCalories => 'Εξαγωγή Θερμίδων Σήμερα';
	@override String get fetchLatestWeight => 'Εξαγωγή Τελευταίου Βάρους';
	@override String get fetchLatestHeight => 'Εξαγωγή Τελευταίου Ύψους';
	@override String get writeTestWeight => 'Εγγραφή Δοκιμαστικού Βάρους (70kg)';
	@override String get writeTestHeight => 'Εγγραφή Δοκιμαστικού Ύψους (175cm)';
	@override String get syncLast7Days => 'Συγχρονισμός Τελευταίων 7 Ημερών';
	@override String get sync7DaysTitle => 'Συγχρονισμός 7 Ημερών';
	@override String get checkCurrentLocale => 'Έλεγχος Τρέχουσας Τοποθεσίας';
	@override String get currentLocale => 'Τρέχουσα Τοποθεσία';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Γλώσσα: ${languageCode}\nΧώρα: ${countryCode}\nΣύστημα Μονάδων: ${unitSystem}';
	@override String get latestWeight => 'Τελευταίο Βάρος';
	@override String get latestHeight => 'Τελευταίο Ύψος';
	@override String get todaysCalories => 'Θερμίδες Σήμερα';
	@override String totalCaloriesBurned({required Object calories}) => 'Συνολικές θερμίδες που κάηκαν: ${calories}';
	@override String syncSuccess({required Object count}) => 'Η συγχρονισμένη διαδικασία ολοκληρώθηκε ${count} δεδομένα για Βήματα, Θερμίδες και Βάρος κατά τη διάρκεια των τελευταίων 7 ημερών.';
	@override String get noWeightData => 'Δεν βρέθηκαν δεδομένα βάρους τις τελευταίες 30 ημέρες.';
	@override String get noHeightData => 'Δεν βρέθηκαν δεδομένα ύψους τον τελευταίο χρόνο.';
	@override String get noCalorieData => 'Δεν βρέθηκαν δεδομένα θερμίδων για σήμερα.';
	@override String get weightWritten => 'Η εγγραφή του δοκιμαστικού βάρους (70kg) ολοκληρώθηκε με επιτυχία.';
	@override String get weightWriteFailed => 'Αποτυχία εγγραφής δοκιμαστικού βάρους.';
	@override String get heightWritten => 'Η εγγραφή του δοκιμαστικού ύψους (175cm) ολοκληρώθηκε με επιτυχία.';
	@override String get heightWriteFailed => 'Αποτυχία εγγραφής δοκιμαστικού ύψους.';
	@override String get noNotifications => 'Δεν υπάρχουν ενεργές ειδοποιήσεις.';
	@override String get testNotificationScheduled => 'Η δοκιμαστική ειδοποίηση προγραμματίστηκε για 10 δευτερόλεπτα από τώρα.';
	@override String get testNotificationBody => 'Αυτή είναι μια δοκιμαστική ειδοποίηση που έχει προγραμματιστεί για 10 δευτερόλεπτα από τώρα.';
	@override String get breakfastNotificationTriggered => 'Η ειδοποίηση πρωινού ενεργοποιήθηκε.';
	@override String get allNotificationsCancelled => 'Όλες οι ειδοποιήσεις ακυρώθηκαν.';
	@override String get fetchingData => 'Εξαγωγή δεδομένων για τις τελευταίες 7 ημέρες...';
	@override String id({required Object id}) => 'ID: ${id}';
	@override String get showFeedbackRatingSheet => 'Εμφάνιση φόρμας σχολίων/αξιολόγησης';
	@override String get clearUserPreferences => 'Επαναφορά προτιμήσεων χρήστη';
	@override String get clearUserPreferencesConfirmationTitle => 'Επαναφορά προτιμήσεων χρήστη?';
	@override String get clearUserPreferencesConfirmationMessage => 'Οι ρυθμίσεις θέματος, γλώσσας και οι προτιμήσεις ανατροφοδότησης θα επαναφερθούν. Τα γεύματα και το προφίλ δεν επηρεάζονται.';
	@override String get clearUserProfile => 'Διαγραφή προφίλ χρήστη';
	@override String get clearUserProfileConfirmationTitle => 'Διαγραφή προφίλ χρήστη?';
	@override String get clearUserProfileConfirmationMessage => 'Τα δεδομένα του προφίλ σου (ημερήσιος στόχος, ύψος, βάρος κ.λπ.) θα διαγραφούν. Τα γεύματα και οι προτιμήσεις δεν επηρεάζονται.';
	@override String get clear => 'Διαγραφή';
	@override String get cancel => 'Ακύρωση';
}

// Path: health
class _TranslationsHealthEl implements TranslationsHealthEn {
	_TranslationsHealthEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Δεν μπόρεσα να συγχρονίσω με το Health Connect';
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
	@override String get description => 'Το φύλο βοηθά να υπολογίσουμε με ακρίβεια το βασικό μεταβολικό ρυθμό (BMR).';
	@override String get next => 'Επόμενο';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightEl implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Πόσο ψηλός/ή είσαι;';
	@override String get description => 'Το ύψος σου βοηθά στη σωστή υπολογιστική του ΔΜΣ και των ενεργειακών σου αναγκών.';
	@override String get metric => 'Μετρικό';
	@override String get imperial => 'Αμερικανικό';
	@override String get next => 'Επόμενο';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightEl implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Ποιο είναι το τρέχον βάρος σου;';
	@override String get currentDescription => 'Το τρέχον βάρος σου είναι ουσιαστικό για την εξατομίκευση των καθημερινών στόχων σου.';
	@override String get targetTitle => 'Ποιος είναι ο στόχος βάρους σου;';
	@override String get targetDescription => 'Η θέσπιση στόχου βάρους μας βοηθά να καθορίσουμε το μακροπρόθεσμο σχέδιο σου.';
	@override String get metric => 'Μετρικό';
	@override String get imperial => 'Αμερικανικό';
	@override String get next => 'Επόμενο';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeEl implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Πότε έχεις γενέθλια;';
	@override String get description => 'Η ηλικία σου βοηθά να υπολογίσουμε ακριβώς τις θερμιδικές σου ανάγκες.';
	@override String get next => 'Επόμενο';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleEl implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Ανεπαρκές βάρος';
	@override String get healthy => 'Υγιές';
	@override String get overweight => 'Υπερβολικό βάρος';
	@override String get obese => 'Παχυσαρκία';
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
	@override String get title => 'Πόσο ενεργός/ή είσαι;';
	@override String get description => 'Αυτό μας βοηθά να υπολογίσουμε πιο ακριβείς τις καθημερινές θερμιδικές σου ανάγκες';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectEl implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Σύνδεση με Health Connect';
	@override String get description => 'Συγχρόνισε τα δεδομένα υγείας σου για καλύτερες πληροφορίες και αυτόματη καταγραφή θερμίδων';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingEl automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingEl._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsEl progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsEl._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationEl seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationEl._(_root);
	@override String get connected => 'Η υγειονομική σύνδεση είναι συνδεδεμένη';
	@override String get notConnected => 'Η υγειονομική σύνδεση δεν είναι συνδεδεμένη';
	@override String get setup => 'Ρύθμιση Υγειονομικής Σύνδεσης';
	@override String get skipForNow => 'Παράκαμψη για τώρα';
	@override String get statusConnected => 'Η υγειονομική σύνδεση είναι συνδεδεμένη.';
	@override String get statusSuccess => 'Η υγειονομική σύνδεση έχει συνδεθεί με επιτυχία!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Η άδεια απορρίφθηκε. Παρακαλώ ενεργοποιήστε τις άδειες Health Connect από τις ρυθμίσεις του τηλεφώνου σας για το ${appLabel}.';
	@override String statusError({required Object error}) => 'Λάθος κατά τη ρύθμιση της Υγειονομικής Σύνδεσης: ${error}';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalEl implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ορίστε τον Καθημερινό Στόχο σας';
	@override String get titleSet => 'Ο Καθημερινός σας Στόχος';
	@override String get description => 'Έτοιμος να ξεκινήσεις το ταξίδι ευεξίας σου; Ορίστε τον καθημερινό σας στόχο θερμίδων παρακάτω για να ξεκινήσεις την πρόοδό σου.';
	@override String get descriptionSet => 'Ο προσανατολισμός σας είναι έτοιμος! Αυτός είναι ο καθημερινός σας στόχος θερμίδων για καθοδήγηση.';
	@override String get yourGoal => 'Ο Στόχος σας';
	@override String get dailyCalories => 'Καθημερινές θερμίδες (kcal)';
	@override String get setGoal => 'Ορίστε Στόχο';
	@override String get intake => 'Κατανάλωση';
	@override String get burned => 'Καύση';
	@override String get weightImpact => 'Επίδραση Βάρους';
	@override String get estLoss => 'Εκτιμώμενη απώλεια';
	@override String get estGain => 'Εκτιμώμενη αύξηση';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryEl implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Η Καθημερινή Σύνοψη';
	@override String get calories => 'Θερμίδες';
	@override String get carbs => 'Υδατάνθρακες';
	@override String get protein => 'Πρωτεΐνη';
	@override String get fat => 'Λίπος';
	@override String get fiber => 'Ίνες';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressEl implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ο Σημερινός Διαχωρισμός Μακροθρεπτικών Συστατικών';
	@override String get target => 'Στόχος';
	@override String get current => 'Τρέχων';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryEl implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ιστορικό 7 Ημερών Μακροθρεπτικών Συστατικών';
	@override String get noHistoryYet => 'Δεν υπάρχει ιστορικό μέχρι τώρα';
	@override String get startLogging => 'Άρχισε να καταγράφεις γεύματα για να δεις τις τάσεις μακροθρεπτικών συστατικών σου εδώ';
}

// Path: home.mealLog
class _TranslationsHomeMealLogEl implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Καταγεγραμμένα Γεύματα';
	@override String get emptyMessage => 'Τράβηξε μια φωτογραφία του τελευταίου γεύματος σου για να το καταγράψεις εδώ.';
	@override String get noMealsToday => 'Δεν καταγράφηκαν γεύματα για σήμερα';
	@override String get seeAllMeals => 'Δείτε όλα τα γεύματα';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionEl implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Γρήγορη Προσθήκη με Τεχνητή Νοημοσύνη';
	@override String get description => 'Περιγράψε το γεύμα σου και άσε την τεχνητή νοημοσύνη να αναλάβει τις λεπτομέρειες.';
	@override String get hint => 'π.χ. Για πρωινό είχα ένα μεγάλο μπολ με βρώμη με φέτες μπανάνας και μια μερίδα πρωτεΐνης ...';
	@override String get analyzeMeal => 'Ανάλυση γεύματος';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsEl implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Αγαπημένα Γεύματα';
	@override String get description => 'Πρόσθεσε γρήγορα ένα από τα αγαπημένα σου γεύματα.';
	@override String get noFavorites => 'Δεν υπάρχουν αγαπημένα γεύματα ακόμη.';
	@override String get addFavoriteHint => 'Κάνε κλικ στο αστέρι σε ένα γεύμα για να το σημειώσεις ως αγαπημένο.';
	@override String get seeAll => 'Δείτε όλα';
	@override String get add => 'Προσθήκη';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapEl implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Τράβηξε & Καταγράψε το Γεύμα Σου';
	@override String get description => 'Χρησιμοποίησε την κάμερά σου για να τραβήξεις μια φωτογραφία του φαγητού σου για ανάλυση με AI.';
	@override String get openCamera => 'Άνοιγμα Κάμερας';
	@override String get gallery => 'Συλλογή';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthEl implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Συγχρονίστε με Health Connect';
	@override String get description => 'Συγχρόνισε τα δεδομένα διατροφής σου με το Health Connect';
	@override String get install => 'Εγκατάσταση';
	@override String get connect => 'Σύνδεση';
}

// Path: meal.nutrition
class _TranslationsMealNutritionEl implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Θερμίδες';
	@override String get carbs => 'Υδατάνθρακες (g)';
	@override String get protein => 'Πρωτεΐνη (g)';
	@override String get fat => 'Λίπος (g)';
	@override String get fiber => 'Ίνες (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationEl implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Διαγραφή Γεύματος';
	@override String get message => 'Είσαι σίγουρος/η ότι θέλεις να διαγράψεις αυτήν την καταχώρηση γεύματος;';
	@override String get cancel => 'Ακύρωση';
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

// Path: profile.sections
class _TranslationsProfileSectionsEl implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ΠΡΟΦΙΛ';
	@override String get basicInformation => 'ΒΑΣΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ';
	@override String get goalsAndActivity => 'ΣΤΟΧΟΙ & ΔΡΑΣΤΗΡΙΟΤΗΤΑ';
	@override String get calculatedValues => 'ΥΠΟΛΟΓΙΖΟΜΕΝΕΣ ΤΙΜΕΣ';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesEl implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Καθημερινός Στόχος';
	@override String get calPerDay => 'θερμίδες/ημ.';
	@override String get notAvailable => 'ΜΗ ΔΙΑΘΕΣΙΜΟ';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsEl implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ΠΡΟΣΩΠΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ';
	@override String get physicalMeasurements => 'ΦΥΣΙΚΕΣ ΜΕΤΡΗΣΕΙΣ';
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
	@override String get localization => 'ΤΟΠΟΘΕΣΙΑ';
	@override String get notifications => 'ΕΙΔΟΠΟΙΗΣΕΙΣ';
	@override String get healthConnect => 'ΣΥΝΔΕΣΗ ΥΓΕΙΑΣ';
	@override String get supportAndLegal => 'ΥΠΟΣΤΗΡΙΞΗ & ΝΟΜΙΚΑ';
	@override String get about => 'ΣΧΕΤΙΚΑ';
	@override String get dangerZone => 'ΕΠΙΚΙΝΔΥΝΗ ΖΩΝΗ';
	@override String get developer => 'ΑΝΑΠΤΥΞΗ';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileEl implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επεξεργασία Προφίλ';
	@override String get subtitle => 'Ενημέρωσε τις προσωπικές σου πληροφορίες';
}

// Path: settings.language
class _TranslationsSettingsLanguageEl implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Γλώσσα';
	@override String get subtitle => 'Επίλεξε την προτιμώμενη γλώσσα σου';
	@override String get searchHint => 'Αναζήτηση γλωσσών...';
	@override String get noResults => 'Δεν βρέθηκαν αποτελέσματα';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitEl implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μονάδα Ύψους';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitEl implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μονάδα Βάρους';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersEl implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Υπενθυμίσεις Γευμάτων';
	@override String get subtitle => 'Μείνε συνεπής με κατάλληλες ειδοποιήσεις';
}

// Path: settings.theme
class _TranslationsSettingsThemeEl implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Θέμα';
	@override String get light => 'Φωτεινό';
	@override String get dark => 'Σκοτεινό';
	@override String get system => 'Σύστημα';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackEl implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Στείλε Σχόλιο';
	@override String subtitle({required Object appLabel}) => 'Βοηθήστε μας να βελτιώσουμε το ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} Σχόλια Εφαρμογής';
	@override String get emailBodyPrefix => 'Παρακαλώ παρέχετε τη γνώμη σου παρακάτω:';
	@override String get appVersion => 'Έκδοση Εφαρμογής';
	@override String get device => 'Συσκευή';
	@override String get osVersion => 'Έκδοση OS';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataEl implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Διαγραφή Όλων των Δεδομένων';
	@override String get subtitle => 'Διαγράφει ανεπιστρεπτί όλες τις πληροφορίες σου';
	@override String get confirmationTitle => 'Διαγραφή Όλων των Δεδομένων;';
	@override String get confirmationMessage => 'Αυτή η ενέργεια δεν μπορεί να αναιρεθεί. Όλα τα καταγεγραμμένα γεύματα, τα αγαπημένα και οι ρυθμίσεις προφίλ σου θα διαγραφούν μόνιμα.';
	@override String get cancel => 'Ακύρωση';
	@override String get clearEverything => 'Διαγράφει τα Πάντα';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsEl implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επιλογές Αποσφαλμάτωσης';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectEl implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Σύνδεση Υγείας';
	@override String get subtitle => 'Δείτε και διαχειριστείτε τις άδειες';
	@override late final _TranslationsSettingsHealthConnectUnavailableEl unavailable = _TranslationsSettingsHealthConnectUnavailableEl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsEl permissions = _TranslationsSettingsHealthConnectPermissionsEl._(_root);
	@override String get managePermissions => 'Διαχείριση Αδειών';
	@override String get openSettings => 'Άνοιγμα Ρυθμίσεων Health Connect';
	@override String get requestPermissions => 'Αίτημα Αδειών';
	@override String get permissionRequestCancelledOrFailed => 'Το αίτημα αδειών ακυρώθηκε ή απέτυχε. Δοκιμάστε ξανά ή δώστε τις άδειες χειροκίνητα στις ρυθμίσεις του Health Connect.';
	@override String get permissionRequestFailed => 'Δεν ήταν δυνατή η αίτηση αδειών. Δοκιμάστε ξανά ή δώστε τις άδειες χειροκίνητα στις ρυθμίσεις του Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutEl implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Σχετικά';
	@override String get tagline => 'Γρήγορη, δωρεάν και με σεβασμό στην ιδιωτικότητα επίγνωση θερμίδων';
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
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastEl implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ώρα Πρωινού! 🍳';
	@override String get body => 'Μην ξεχάσεις να καταγράψεις το πρωινό σου';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchEl implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ώρα Μεσημεριανού! 🥗';
	@override String get body => 'Ώρα να καταγράψεις το μεσημεριανό σου';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerEl implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ώρα Βραδινού! 🍽️';
	@override String get body => 'Μην ξεχάσεις να καταγράψεις το βραδινό σου';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackEl implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ώρα Σνακ! 🍎';
	@override String get body => 'Ώρα για ένα υγιεινό σνακ';
}

// Path: notifications.test
class _TranslationsNotificationsTestEl implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ειδοποίηση Δοκιμής';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapEl implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => 'Το ${appLabel} παρέχει εκτιμήσεις διατροφικών πληροφοριών. Η ακρίβεια εξαρτάται από την είσοδό σας και τις παραλλαγές τροφίμων. Χρησιμοποιήστε το ως οδηγό, όχι ως ακριβή πηγή. Συμβουλευτείτε έναν επαγγελματία για εξατομικευμένες διατροφικές συμβουλές.';
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
	@override String get title => 'Σχετικά με την Εκτίμηση Βάρους';
	@override String get description => 'Η προβλεπόμενη αλλαγή βάρους είναι μια θεωρητική εκτίμηση που βασίζεται στο απλό μοντέλο θερμίδων-εισόδου και θερμίδων-εξόδου. Προορίζεται μόνο για κινητοποίηση και όχι ως πρόβλεψη του πραγματικού σας βάρους.';
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
	@override String get description => 'Αυτές οι μετρήσεις σας βοηθούν να κατανοήσετε τις ανάγκες ενέργειας του σώματός σας και καθοδηγούν τους διατροφικούς σας στόχους.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrEl bmr = _TranslationsDisclaimerHealthMetricsBmrEl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeEl tdee = _TranslationsDisclaimerHealthMetricsTdeeEl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalEl dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalEl._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsEl implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Ειδοποιήσεις';
	@override String get healthConnect => 'Health Connect';
	@override String get feedback => 'Ανατροφοδότηση';
	@override String get dataReset => 'Επαναφορά δεδομένων';
	@override String get appInfo => 'Πληροφορίες Εφαρμογής';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionEl implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Έξυπνη Αναγνώριση Φαγητού';
	@override String get description => 'Τράβηξε μια φωτογραφία και άσε την τεχνητή νοημοσύνη να αναγνωρίσει το γεύμα σου';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisEl implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ανάλυση Τεχνητής Νοημοσύνης';
	@override String get description => 'Λάβε άμεσα διατροφικά στοιχεία από τις περιγραφές σου';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationEl implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ενοποίηση Υγείας';
	@override String get description => 'Σύνδεσε με το Health Connect για καλύτερες πληροφορίες';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesEl implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Ανεπαρκές βάρος';
	@override String get healthyWeight => 'Υγιές βάρος';
	@override String get overweight => 'Υπερβολικό βάρος';
	@override String get obese => 'Παχυσαρκία';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesEl implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Μπορούμε να σε βοηθήσουμε να δημιουργήσεις ένα υγιές σχέδιο για να φτάσεις σε ισορροπημένο βάρος με πλούσιες σε θρεπτικά συστατικά γεύματα.';
	@override String get healthy => 'Μπράβο! Είσαι σε μια υγιή κατηγορία. Θα σε βοηθήσουμε να διατηρήσεις την ενέργεια και τη ζωτικότητά σου.';
	@override String overweight({required Object appLabel}) => 'Το ${appLabel} θα απλοποιήσει το ταξίδι σας με παρακολούθηση ενισχυμένη από AI, για να σας βοηθήσει να φτάσετε στον στόχο σας άνετα.';
	@override String get obese => 'Είμαστε εδώ για να σε υποστηρίξουμε με εξατομικευμένη καθοδήγηση και βιώσιμες στρατηγικές για τους στόχους υγείας σου.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingEl implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Αυτόματη Καταγραφή Θερμίδων';
	@override String get description => 'Κατέγραψε τις θερμίδες που καίγονται από τις εφαρμογές φυσικής κατάστασης';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsEl implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Στοιχεία Προόδου';
	@override String get description => 'Λάβε λεπτομερείς πληροφορίες για τις τάσεις υγείας σου';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationEl implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Αδιάκοπη Ενοποίηση';
	@override String get description => 'Συγχρόνισε δεδομένα από τις αγαπημένες σου εφαρμογές υγείας';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessEl implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Δεν Είσαι Μόνος/η';
	@override String get genericMessage => 'Η έρευνα δείχνει ότι η συνεπής καταγραφή είναι ο νούμερο ένα προάγγελος μακροχρόνιας επιτυχίας.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Για έναν ${age} χρονών ${gender} που προσπαθεί να ${goal}, η συνεπής καταγραφή είναι ο νούμερο ένα προάγγελος επιτυχίας.';
	@override String closingMessage({required Object appLabel}) => 'Το ${appLabel} το καθιστά 10 φορές πιο εύκολο από το να το κάνετε χειροκίνητα.';
	@override String get getStartedTitle => 'Έτοιμος να ξεκινήσεις;';
	@override String get tipPhoto => 'Βγάλε μια φωτογραφία των γευμάτων σου για άμεση ανάλυση';
	@override String get tipConsistency => 'Κατέγραψε τακτικά για να δεις ουσιαστική πρόοδο';
	@override String get tipProgress => 'Παρακολούθησε την πρόοδό σου καθημερινά για να παραμείνεις κινητοποιημένος';
	@override String get button => 'Πάμε';
	@override String get defaultGender => 'άτομο';
	@override String get defaultGoal => 'πιο υγιής εσύ';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileEl implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Το Προφίλ Υγείας σου';
	@override String bmiDescription({required Object bmi}) => 'Με βάση τις μετρήσεις σου, ο ΔΜΣ σου είναι ${bmi}.';
	@override String get finalizeDescription => 'Ας ολοκληρώσουμε το προφίλ σου για να εξατομικεύσουμε την εμπειρία σου.';
	@override String get goalGain => 'να κερδίσεις';
	@override String get goalLose => 'να χάσεις';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Για να φτάσεις στο στόχο σου, θα ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Είσαι στο στοχοθετημένο βάρος σου! Θα σε βοηθήσουμε να το διατηρήσεις.';
	@override String get button => 'Πάμε';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleEl implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Εξαιρετική Αφετηρία!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Έχετε κάνει το πρώτο βήμα προς το ${goalText}. Εφόσον είστε ${activityText}, το ${appLabel} θα προσαρμόσει τους στόχους σας για να ταιριάζουν με τον τρόπο ζωής σας.';
	@override String get personalizedTargets => 'Εξατομικευμένοι στόχοι θερμίδων';
	@override String get aiMealDetection => 'Αναγνώριση γεύματος με υποστήριξη τεχνητής νοημοσύνης';
	@override String get macroBreakdowns => 'Λεπτομερείς αναλύσεις μακροθρεπτικών συστατικών';
	@override String get button => 'Πάμε';
	@override String get defaultGoal => 'τους στόχους σου';
	@override String get defaultActivity => 'ενεργός';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightEl implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Να Χάσεις Βάρος';
	@override String get description => 'Δημιούργησε έλλειμμα θερμίδων για να χάσεις βάρος';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightEl implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Να Διατηρήσεις Βάρος';
	@override String get description => 'Διατήρησε το τρέχον βάρος σου';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightEl implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Να Κερδίσεις Βάρος';
	@override String get description => 'Δημιούργησε πλεόνασμα θερμίδων για να κερδίσεις βάρος';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryEl implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Καθιστικός';
	@override String get description => 'Λίγη ή καθόλου άσκηση';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveEl implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Λίγο Ενεργός';
	@override String get description => 'Ελαφριά άσκηση 1-3 μέρες/εβδομάδα';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveEl implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Μέτρια Ενεργός';
	@override String get description => 'Μέτρια άσκηση 3-5 μέρες/εβδομάδα';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveEl implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Πολύ Ενεργός';
	@override String get description => 'Σκληρή άσκηση 6-7 μέρες/εβδομάδα';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveEl implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Πάρα Πολύ Ενεργός';
	@override String get description => 'Πολύ σκληρή άσκηση, φυσική εργασία';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableEl implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Το Health Connect δεν είναι διαθέσιμο';
	@override String get description => 'Το Health Connect δεν είναι διαθέσιμο σε αυτή τη συσκευή. Εγκαταστήστε το Health Connect από το Play Store (Android 9+) ή ενημερώστε σε Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsEl implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Άδειες';
	@override String get description => 'Οι παρακάτω άδειες ζητούνται για να παρέχουν ενσωμάτωση με την Σύνδεση Υγείας:';
	@override String get granted => 'Χορηγήθηκε';
	@override String get notGranted => 'Δεν Χορηγήθηκε';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEl caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadEl nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadEl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteEl nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteEl._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryEl implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Η Ιστορία μας';
	@override String content({required Object appLabel}) => '${appLabel} γεννήθηκε από μια απλή απογοήτευση: οι περισσότερες εφαρμογές καταμέτρησης θερμίδων είναι είτε υπερβολικά περίπλοκες, απαιτούν συνεχής χειροκίνητη εισαγωγή, χρεώνουν υψηλές συνδρομές ή παραβιάζουν την ιδιωτικότητα.\n\nΩς ανεξάρτητος προγραμματιστής, ήθελα να δημιουργήσω κάτι πιο απλό και δίκαιο — μια εφαρμογή που χρησιμοποιεί AI για να μειώσει την προσπάθεια, παραμένει γρήγορη και δωρεάν στη χρήση και σέβεται τα δεδομένα υγείας σας.\n\n${appLabel} είναι η εφαρμογή που εύχομαι να υπήρχε: χωρίς λογαριασμούς, χωρίς παρακολούθηση, χωρίς διαφημίσεις — μόνο σαφείς, πρακτικές πληροφορίες και τους στόχους υγείας σας.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyEl implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Η Ιδιωτικότητά σας είναι Σημαντική';
	@override String get description => 'Η ιδιωτικότητα δεν είναι μια μεταγενέστερη σκέψη — είναι αρχή σχεδίασης. Ορίστε τι σημαίνει αυτό στην πράξη:';
	@override String get noAccounts => 'Δεν απαιτούνται λογαριασμοί\nΧρησιμοποιήστε την εφαρμογή αμέσως. Χωρίς εγγραφές, χωρίς ταυτότητες.';
	@override String noTracking({required Object appLabel}) => 'Καμία παρακολούθηση συμπεριφοράς\n${appLabel} δεν παρακολουθεί τη δραστηριότητά σας, δεν δημιουργεί προφίλ χρήσης και δεν σας παρακολουθεί σε άλλες εφαρμογές ή ιστοσελίδες.';
	@override String noAds({required Object appLabel}) => 'Χωρίς διαφημίσεις εξ ορισμού\nΗ ${appLabel} έχει σχεδιαστεί να λειτουργεί χωρίς διαφημίσεις ή κερδοφόρες πρακτικές με δεδομένα.';
	@override String get noDataSelling => 'Καμία πώληση δεδομένων\nΤα δεδομένα υγείας σας δεν πωλούνται ή κοινοποιούνται σε τρίτους.';
	@override String get localStorage => 'Αποθήκευση τοπικά πρώτα\nΤα δεδομένα σας παραμένουν στη συσκευή σας.';
	@override String get privacyPolicy => 'Πολιτική Απορρήτου';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperEl implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Κατασκευασμένο από έναν Ανεξάρτητο Προγραμματιστή';
	@override String description({required Object appLabel}) => '${appLabel} είναι κατασκευασμένο και συντηρημένο από έναν μόνο ανεξάρτητο προγραμματιστή που επικεντρώνεται στη δημιουργία ήρεμου, σεβαστού software υγείας.\n\nΗ ανατροφοδότηση διαβάζεται προσωπικά και βοηθά στη διαμόρφωση της κατεύθυνσης της εφαρμογής.';
	@override String get website => 'Ιστοσελίδα';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackEl implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Απολαμβάνετε το ${appLabel} ;';
	@override String description({required Object appLabel}) => 'Η ανατροφοδότησή σας βοηθά να γίνει το ${appLabel} καλύτερο για όλους.';
	@override String get rateApp => 'Βαθμολογήστε στο Play Store';
	@override String get sendFeedback => 'Στείλτε Ανατροφοδότηση';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeEl implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μέγεθος Μερίδας';
	@override String get description => 'Η ακρίβεια των εκτιμήσεων εξαρτάται σε μεγάλο βαθμό από την σωστή εκτίμηση του μεγέθους της μερίδας.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsEl implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Μέθοδοι Παρασκευής';
	@override String description({required Object appLabel}) => 'Οι μέθοδοι μαγειρέματος μπορούν να αλλάξουν σημαντικά το θρεπτικό περιεχόμενο των τροφίμων. Οι εκτιμήσεις του ${appLabel} δεν λαμβάνουν πάντα υπόψη αυτές τις παραλλαγές.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsEl implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Συστατικά';
	@override String get description => 'Σύνθετα πιάτα με πολλά κρυμμένα συστατικά μπορεί να οδηγήσουν σε λιγότερο ακριβείς εκτιμήσεις.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsEl implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Περιορισμοί Βάσης Δεδομένων';
	@override String description({required Object appLabel}) => 'Η βάση δεδομένων τροφίμων του ${appLabel} είναι εκτενής, αλλά ενδέχεται να μην περιλαμβάνει κάθε ενιαίο τρόφιμο ή παραλλαγή.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyEl implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ακρίβεια Θερμίδων';
	@override String get description => 'Αυτή η εκτίμηση είναι μόνο όσο ακριβής είναι η καταγραμμένη πρόσληψη και κατανάλωση θερμίδων σου. Η ανακριβής καταγραφή θα έχει ως αποτέλεσμα ανακριβή πρόβλεψη.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsEl implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Βιολογικοί Παράγοντες';
	@override String description({required Object appLabel}) => 'Η πραγματική απώλεια/κέρδος βάρους επηρεάζεται από το μεταβολισμό, τις ορμόνες, τον ύπνο, το άγχος, την ενυδάτωση και άλλους ατομικούς παράγοντες που το ${appLabel} δεν μπορεί να μετρήσει.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightEl implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Βάρος Νερού & Διακυμάνσεις';
	@override String get description => 'Το φυσιολογικό καθημερινό βάρος μπορεί να διακυμανθεί σημαντικά λόγω κατακράτησης νερού, πέψης και χρονοδιαγράμματος. Η εκτίμηση δεν λαμβάνει υπόψη αυτές τις ημερήσιες αλλαγές.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceEl implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Επαγγελματική Καθοδήγηση';
	@override String get description => 'Μην χρησιμοποιείς αυτή την εκτίμηση για ιατρικές αποφάσεις. Πάντα να συμβουλεύεσαι ένα επαγγελματία υγείας ή εγγεγραμμένο διαιτολόγο για προσωπικές συμβουλές διαχείρισης βάρους.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrEl implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Ο Βασικός Μεταβολικός Ρυθμός (BMR) είναι ο αριθμός θερμίδων που καίει το σώμα σας σε κατάσταση ηρεμίας για να διατηρήσει βασικές λειτουργίες όπως η αναπνοή και η κυκλοφορία. Ο BMR εξαρτάται από την ηλικία, το φύλο, το ύψος και το βάρος σας. Ένας υψηλότερος BMR σημαίνει ότι το σώμα σας καίει φυσικά περισσότερες θερμίδες σε κατάσταση ηρεμίας, συχνά λόγω μεγαλύτερης μυϊκής μάζας, νεαρότερης ηλικίας ή λόγω της ανδρικής φύσης. Ένας χαμηλότερος BMR συνήθως υποδηλώνει λιγότερη μυϊκή μάζα, μεγαλύτερη ηλικία ή γυναικείο φύλο.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeEl implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Η Συνολική Ημερήσια Ενεργειακή Δαπάνη (TDEE) είναι οι συνολικές θερμίδες που καίτε ανά ημέρα, συμπεριλαμβανομένου του BMR σας και τις θερμίδες που προέρχονται από τη σωματική δραστηριότητα και την καθημερινή κίνηση. Το TDEE εξαρτάται από τον BMR σας και το επίπεδο δραστηριότητάς σας. Ένας υψηλότερος TDEE σημαίνει ότι καίτε περισσότερες θερμίδες συνολικά, συνήθως από την περισσότερη δραστηριότητα ή έναν υψηλότερο BMR. Ένας χαμηλότερος TDEE υποδεικνύει λιγότερη καθημερινή δραστηριότητα ή χαμηλότερο BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalEl implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ημερήσιος Στόχος';
	@override String get description => 'Ο Ημερήσιος Στόχος είναι η συνιστώμενη ημερήσια θερμιδική σας πρόσληψη με βάση το TDEE σας και τον στόχο βάρους σας. Για απώλεια βάρους, καταναλώνετε λιγότερες θερμίδες από το TDEE σας. Για συντήρηση βάρους, ισοφαρίζετε το TDEE σας. Για αύξηση βάρους, καταναλώνετε περισσότερες θερμίδες από το TDEE σας. Αυτό σας βοηθά να επιτύχετε την επιθυμητή αλλαγή βάρους σας με υγιή ρυθμό.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEl implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Διαβάστε Σύνολο Καύσεων Θερμίδων';
	@override String get description => 'Επιτρέπει στην εφαρμογή να διαβάσει το συνολικό σας ποσό θερμίδων που κάψατε από τη Σύνδεση Υγείας.';
	@override String get usage => 'Αυτή η άδεια χρησιμοποιείται για να εμφανίζει την καθημερινή σας καύση θερμίδων στην εφαρμογή, βοηθώντας σας να κατανοήσετε τη συνολική σας ενέργεια κατά τη διάρκεια της ημέρας.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadEl implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Διαβάστε Δεδομένα Διατροφής';
	@override String get description => 'Επιτρέπει στην εφαρμογή να διαβάσει δεδομένα διατροφής από τη Σύνδεση Υγείας.';
	@override String get usage => 'Αυτή η άδεια επιτρέπει στην εφαρμογή να διαβάσει πληροφορίες διατροφής που μπορεί να έχουν καταχωρηθεί από άλλες εφαρμογές συνδεδεμένες με τη Σύνδεση Υγείας, παρέχοντας μια συνολική εικόνα της διατροφής σας.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteEl implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteEl._(this._root);

	final TranslationsEl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Γράψτε Δεδομένα Διατροφής';
	@override String get description => 'Επιτρέπει στην εφαρμογή να γράψει δεδομένα διατροφής στη Σύνδεση Υγείας.';
	@override String get usage => 'Αυτή η άδεια επιτρέπει στην εφαρμογή να συγχρονίσει τα καταχωρημένα γεύματά σας στη Σύνδεση Υγείας, καθιστώντας τα δεδομένα διατροφής διαθέσιμα σε άλλες εφαρμογές υγείας και φυσικής κατάστασης που χρησιμοποιείτε.';
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
			'onboarding.welcome' => ({required Object appLabel}) => 'Καλώς ήρθατε στο ${appLabel}',
			'onboarding.subtitle' => 'Ο προσωπικός σου συνοδοιπόρος στη διατροφή που στηρίζεται στην τεχνητή νοημοσύνη',
			'onboarding.getStarted' => 'Ας ξεκινήσουμε',
			'onboarding.features.foodRecognition.title' => 'Έξυπνη Αναγνώριση Φαγητού',
			'onboarding.features.foodRecognition.description' => 'Τράβηξε μια φωτογραφία και άσε την τεχνητή νοημοσύνη να αναγνωρίσει το γεύμα σου',
			'onboarding.features.aiAnalysis.title' => 'Ανάλυση Τεχνητής Νοημοσύνης',
			'onboarding.features.aiAnalysis.description' => 'Λάβε άμεσα διατροφικά στοιχεία από τις περιγραφές σου',
			'onboarding.features.healthIntegration.title' => 'Ενοποίηση Υγείας',
			'onboarding.features.healthIntegration.description' => 'Σύνδεσε με το Health Connect για καλύτερες πληροφορίες',
			'onboarding.gender.title' => 'Ποιο είναι το φύλο σου;',
			'onboarding.gender.description' => 'Το φύλο βοηθά να υπολογίσουμε με ακρίβεια το βασικό μεταβολικό ρυθμό (BMR).',
			'onboarding.gender.next' => 'Επόμενο',
			'onboarding.height.title' => 'Πόσο ψηλός/ή είσαι;',
			'onboarding.height.description' => 'Το ύψος σου βοηθά στη σωστή υπολογιστική του ΔΜΣ και των ενεργειακών σου αναγκών.',
			'onboarding.height.metric' => 'Μετρικό',
			'onboarding.height.imperial' => 'Αμερικανικό',
			'onboarding.height.next' => 'Επόμενο',
			'onboarding.weight.currentTitle' => 'Ποιο είναι το τρέχον βάρος σου;',
			'onboarding.weight.currentDescription' => 'Το τρέχον βάρος σου είναι ουσιαστικό για την εξατομίκευση των καθημερινών στόχων σου.',
			'onboarding.weight.targetTitle' => 'Ποιος είναι ο στόχος βάρους σου;',
			'onboarding.weight.targetDescription' => 'Η θέσπιση στόχου βάρους μας βοηθά να καθορίσουμε το μακροπρόθεσμο σχέδιο σου.',
			'onboarding.weight.metric' => 'Μετρικό',
			'onboarding.weight.imperial' => 'Αμερικανικό',
			'onboarding.weight.next' => 'Επόμενο',
			'onboarding.age.title' => 'Πότε έχεις γενέθλια;',
			'onboarding.age.description' => 'Η ηλικία σου βοηθά να υπολογίσουμε ακριβώς τις θερμιδικές σου ανάγκες.',
			'onboarding.age.next' => 'Επόμενο',
			'onboarding.bmiScale.underweight' => 'Ανεπαρκές βάρος',
			'onboarding.bmiScale.healthy' => 'Υγιές',
			'onboarding.bmiScale.overweight' => 'Υπερβολικό βάρος',
			'onboarding.bmiScale.obese' => 'Παχυσαρκία',
			'onboarding.bmiScale.categories.underweight' => 'Ανεπαρκές βάρος',
			'onboarding.bmiScale.categories.healthyWeight' => 'Υγιές βάρος',
			'onboarding.bmiScale.categories.overweight' => 'Υπερβολικό βάρος',
			'onboarding.bmiScale.categories.obese' => 'Παχυσαρκία',
			'onboarding.bmiScale.messages.underweight' => 'Μπορούμε να σε βοηθήσουμε να δημιουργήσεις ένα υγιές σχέδιο για να φτάσεις σε ισορροπημένο βάρος με πλούσιες σε θρεπτικά συστατικά γεύματα.',
			'onboarding.bmiScale.messages.healthy' => 'Μπράβο! Είσαι σε μια υγιή κατηγορία. Θα σε βοηθήσουμε να διατηρήσεις την ενέργεια και τη ζωτικότητά σου.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => 'Το ${appLabel} θα απλοποιήσει το ταξίδι σας με παρακολούθηση ενισχυμένη από AI, για να σας βοηθήσει να φτάσετε στον στόχο σας άνετα.',
			'onboarding.bmiScale.messages.obese' => 'Είμαστε εδώ για να σε υποστηρίξουμε με εξατομικευμένη καθοδήγηση και βιώσιμες στρατηγικές για τους στόχους υγείας σου.',
			'onboarding.weightGoal.title' => 'Ποιος είναι ο στόχος σου;',
			'onboarding.weightGoal.description' => 'Επίλεξε τον στόχο που περιγράφει καλύτερα αυτό που θέλεις να πετύχεις',
			'onboarding.activityLevel.title' => 'Πόσο ενεργός/ή είσαι;',
			'onboarding.activityLevel.description' => 'Αυτό μας βοηθά να υπολογίσουμε πιο ακριβείς τις καθημερινές θερμιδικές σου ανάγκες',
			'onboarding.healthConnect.title' => 'Σύνδεση με Health Connect',
			'onboarding.healthConnect.description' => 'Συγχρόνισε τα δεδομένα υγείας σου για καλύτερες πληροφορίες και αυτόματη καταγραφή θερμίδων',
			'onboarding.healthConnect.automaticTracking.title' => 'Αυτόματη Καταγραφή Θερμίδων',
			'onboarding.healthConnect.automaticTracking.description' => 'Κατέγραψε τις θερμίδες που καίγονται από τις εφαρμογές φυσικής κατάστασης',
			'onboarding.healthConnect.progressInsights.title' => 'Στοιχεία Προόδου',
			'onboarding.healthConnect.progressInsights.description' => 'Λάβε λεπτομερείς πληροφορίες για τις τάσεις υγείας σου',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Αδιάκοπη Ενοποίηση',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Συγχρόνισε δεδομένα από τις αγαπημένες σου εφαρμογές υγείας',
			'onboarding.healthConnect.connected' => 'Η υγειονομική σύνδεση είναι συνδεδεμένη',
			'onboarding.healthConnect.notConnected' => 'Η υγειονομική σύνδεση δεν είναι συνδεδεμένη',
			'onboarding.healthConnect.setup' => 'Ρύθμιση Υγειονομικής Σύνδεσης',
			'onboarding.healthConnect.skipForNow' => 'Παράκαμψη για τώρα',
			'onboarding.healthConnect.statusConnected' => 'Η υγειονομική σύνδεση είναι συνδεδεμένη.',
			'onboarding.healthConnect.statusSuccess' => 'Η υγειονομική σύνδεση έχει συνδεθεί με επιτυχία!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Η άδεια απορρίφθηκε. Παρακαλώ ενεργοποιήστε τις άδειες Health Connect από τις ρυθμίσεις του τηλεφώνου σας για το ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Λάθος κατά τη ρύθμιση της Υγειονομικής Σύνδεσης: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Δεν Είσαι Μόνος/η',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Η έρευνα δείχνει ότι η συνεπής καταγραφή είναι ο νούμερο ένα προάγγελος μακροχρόνιας επιτυχίας.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Για έναν ${age} χρονών ${gender} που προσπαθεί να ${goal}, η συνεπής καταγραφή είναι ο νούμερο ένα προάγγελος επιτυχίας.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => 'Το ${appLabel} το καθιστά 10 φορές πιο εύκολο από το να το κάνετε χειροκίνητα.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Έτοιμος να ξεκινήσεις;',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Βγάλε μια φωτογραφία των γευμάτων σου για άμεση ανάλυση',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Κατέγραψε τακτικά για να δεις ουσιαστική πρόοδο',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Παρακολούθησε την πρόοδό σου καθημερινά για να παραμείνεις κινητοποιημένος',
			'onboarding.reinforcement.trackingSuccess.button' => 'Πάμε',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'άτομο',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'πιο υγιής εσύ',
			'onboarding.reinforcement.healthProfile.title' => 'Το Προφίλ Υγείας σου',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Με βάση τις μετρήσεις σου, ο ΔΜΣ σου είναι ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Ας ολοκληρώσουμε το προφίλ σου για να εξατομικεύσουμε την εμπειρία σου.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'να κερδίσεις',
			'onboarding.reinforcement.healthProfile.goalLose' => 'να χάσεις',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Για να φτάσεις στο στόχο σου, θα ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Είσαι στο στοχοθετημένο βάρος σου! Θα σε βοηθήσουμε να το διατηρήσεις.',
			'onboarding.reinforcement.healthProfile.button' => 'Πάμε',
			'onboarding.reinforcement.goalLifestyle.title' => 'Εξαιρετική Αφετηρία!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Έχετε κάνει το πρώτο βήμα προς το ${goalText}. Εφόσον είστε ${activityText}, το ${appLabel} θα προσαρμόσει τους στόχους σας για να ταιριάζουν με τον τρόπο ζωής σας.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Εξατομικευμένοι στόχοι θερμίδων',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Αναγνώριση γεύματος με υποστήριξη τεχνητής νοημοσύνης',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Λεπτομερείς αναλύσεις μακροθρεπτικών συστατικών',
			'onboarding.reinforcement.goalLifestyle.button' => 'Πάμε',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'τους στόχους σου',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'ενεργός',
			'tabs.dashboard' => 'Πίνακας Ελέγχου',
			'tabs.history' => 'Ιστορικό',
			'home.dailyGoal.title' => 'Ορίστε τον Καθημερινό Στόχο σας',
			'home.dailyGoal.titleSet' => 'Ο Καθημερινός σας Στόχος',
			'home.dailyGoal.description' => 'Έτοιμος να ξεκινήσεις το ταξίδι ευεξίας σου; Ορίστε τον καθημερινό σας στόχο θερμίδων παρακάτω για να ξεκινήσεις την πρόοδό σου.',
			'home.dailyGoal.descriptionSet' => 'Ο προσανατολισμός σας είναι έτοιμος! Αυτός είναι ο καθημερινός σας στόχος θερμίδων για καθοδήγηση.',
			'home.dailyGoal.yourGoal' => 'Ο Στόχος σας',
			'home.dailyGoal.dailyCalories' => 'Καθημερινές θερμίδες (kcal)',
			'home.dailyGoal.setGoal' => 'Ορίστε Στόχο',
			'home.dailyGoal.intake' => 'Κατανάλωση',
			'home.dailyGoal.burned' => 'Καύση',
			'home.dailyGoal.weightImpact' => 'Επίδραση Βάρους',
			'home.dailyGoal.estLoss' => 'Εκτιμώμενη απώλεια',
			'home.dailyGoal.estGain' => 'Εκτιμώμενη αύξηση',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Η Καθημερινή Σύνοψη',
			'home.dailySummary.calories' => 'Θερμίδες',
			'home.dailySummary.carbs' => 'Υδατάνθρακες',
			'home.dailySummary.protein' => 'Πρωτεΐνη',
			'home.dailySummary.fat' => 'Λίπος',
			'home.dailySummary.fiber' => 'Ίνες',
			'home.intakeProgress.title' => 'Ο Σημερινός Διαχωρισμός Μακροθρεπτικών Συστατικών',
			'home.intakeProgress.target' => 'Στόχος',
			'home.intakeProgress.current' => 'Τρέχων',
			'home.intakeHistory.title' => 'Ιστορικό 7 Ημερών Μακροθρεπτικών Συστατικών',
			'home.intakeHistory.noHistoryYet' => 'Δεν υπάρχει ιστορικό μέχρι τώρα',
			'home.intakeHistory.startLogging' => 'Άρχισε να καταγράφεις γεύματα για να δεις τις τάσεις μακροθρεπτικών συστατικών σου εδώ',
			'home.mealLog.title' => 'Καταγεγραμμένα Γεύματα',
			'home.mealLog.emptyMessage' => 'Τράβηξε μια φωτογραφία του τελευταίου γεύματος σου για να το καταγράψεις εδώ.',
			'home.mealLog.noMealsToday' => 'Δεν καταγράφηκαν γεύματα για σήμερα',
			'home.mealLog.seeAllMeals' => 'Δείτε όλα τα γεύματα',
			'home.mealDescription.title' => 'Γρήγορη Προσθήκη με Τεχνητή Νοημοσύνη',
			'home.mealDescription.description' => 'Περιγράψε το γεύμα σου και άσε την τεχνητή νοημοσύνη να αναλάβει τις λεπτομέρειες.',
			'home.mealDescription.hint' => 'π.χ. Για πρωινό είχα ένα μεγάλο μπολ με βρώμη με φέτες μπανάνας και μια μερίδα πρωτεΐνης ...',
			'home.mealDescription.analyzeMeal' => 'Ανάλυση γεύματος',
			'home.favoriteMeals.title' => 'Αγαπημένα Γεύματα',
			'home.favoriteMeals.description' => 'Πρόσθεσε γρήγορα ένα από τα αγαπημένα σου γεύματα.',
			'home.favoriteMeals.noFavorites' => 'Δεν υπάρχουν αγαπημένα γεύματα ακόμη.',
			'home.favoriteMeals.addFavoriteHint' => 'Κάνε κλικ στο αστέρι σε ένα γεύμα για να το σημειώσεις ως αγαπημένο.',
			'home.favoriteMeals.seeAll' => 'Δείτε όλα',
			'home.favoriteMeals.add' => 'Προσθήκη',
			'home.mealSnap.title' => 'Τράβηξε & Καταγράψε το Γεύμα Σου',
			'home.mealSnap.description' => 'Χρησιμοποίησε την κάμερά σου για να τραβήξεις μια φωτογραφία του φαγητού σου για ανάλυση με AI.',
			'home.mealSnap.openCamera' => 'Άνοιγμα Κάμερας',
			'home.mealSnap.gallery' => 'Συλλογή',
			'home.connectHealth.title' => 'Συγχρονίστε με Health Connect',
			'home.connectHealth.description' => 'Συγχρόνισε τα δεδομένα διατροφής σου με το Health Connect',
			'home.connectHealth.install' => 'Εγκατάσταση',
			'home.connectHealth.connect' => 'Σύνδεση',
			'history.noMeals' => 'Δεν υπάρχουν καταγεγραμμένα γεύματα',
			'history.emptyMessage' => 'Τράβηξε μια φωτογραφία του τελευταίου γεύματος σου για να το καταγράψεις εδώ.',
			'history.today' => 'Σήμερα',
			'history.yesterday' => 'Χθες',
			'meal.ohNo' => 'Ωχ όχι!',
			'meal.delete' => 'Διαγραφή',
			'meal.editMeal' => 'Επεξεργασία Γεύματος',
			'meal.addMeal' => 'Προσθήκη Γεύματος',
			'meal.saveMeal' => 'Αποθήκευση Γεύματος',
			'meal.save' => 'Αποθήκευση',
			'meal.mealName' => 'Όνομα Γεύματος',
			'meal.mealNameHint' => 'π.χ., Αυγά ανακατεμένα με τοστ',
			'meal.mealQuantity' => 'Ποσότητα Γεύματος',
			'meal.mealQuantityHint' => 'π.χ. 1 μπολ, 2 φέτες',
			'meal.timeOfMeal' => 'Ώρα Γεύματος',
			'meal.timeOfMealHint' => 'Επίλεξε την ώρα που είχες το γεύμα',
			'meal.mealType' => 'Τύπος Γεύματος',
			'meal.nutrition.calories' => 'Θερμίδες',
			'meal.nutrition.carbs' => 'Υδατάνθρακες (g)',
			'meal.nutrition.protein' => 'Πρωτεΐνη (g)',
			'meal.nutrition.fat' => 'Λίπος (g)',
			'meal.nutrition.fiber' => 'Ίνες (g)',
			'meal.deleteConfirmation.title' => 'Διαγραφή Γεύματος',
			'meal.deleteConfirmation.message' => 'Είσαι σίγουρος/η ότι θέλεις να διαγράψεις αυτήν την καταχώρηση γεύματος;',
			'meal.deleteConfirmation.cancel' => 'Ακύρωση',
			'meal.deleteConfirmation.delete' => 'Διαγραφή',
			'meal.addedToLog' => 'Το γεύμα προστέθηκε στο ημερολόγιό σου!',
			'meal.couldNotAdd' => ({required Object error}) => 'Δεν μπόρεσα να προσθέσω γεύμα: ${error}',
			'meal.savedSuccessfully' => 'Το γεύμα προστέθηκε με επιτυχία!',
			'meal.updatedSuccessfully' => 'Το γεύμα ενημερώθηκε με επιτυχία!',
			'meal.errorSaving' => ({required Object error}) => 'Σφάλμα κατά την αποθήκευση του γεύματος: ${error}',
			'meal.removedFromFavorites' => 'Αφαιρέθηκε από τα αγαπημένα!',
			'meal.savedAsFavorite' => 'Το γεύμα αποθηκεύτηκε ως αγαπημένο!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Δεν μπόρεσα να ενημερώσω το αγαπημένο: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Αποτυχία επεξεργασίας: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Αποτυχία επεξεργασίας εικόνας: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Λάθος συμπίεσης εικόνας: ${error}',
			'meal.failedToSave' => 'Αποτυχία αποθήκευσης δεδομένων. Παρακαλώ δοκίμασε ξανά.',
			'meal.skip' => 'Παράλειψη',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Ερώτηση ${current} από ${total}',
			'meal.variation.noVariationsAvailable' => 'Δεν υπάρχουν διαθέσιμες παραλλαγές',
			'favorites.title' => 'Αγαπημένα',
			'favorites.empty' => 'Δεν υπάρχουν αγαπημένα γεύματα ακόμη.',
			'profile.title' => 'Προφίλ',
			'profile.noProfileData' => 'Δεν βρέθηκαν δεδομένα προφίλ',
			'profile.yourProfile' => 'Το Προφίλ Σου',
			'profile.viewAndManage' => 'Δες και διαχείριση τις πληροφορίες υγείας σου',
			'profile.sections.profile' => 'ΠΡΟΦΙΛ',
			'profile.sections.basicInformation' => 'ΒΑΣΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ',
			'profile.sections.goalsAndActivity' => 'ΣΤΟΧΟΙ & ΔΡΑΣΤΗΡΙΟΤΗΤΑ',
			'profile.sections.calculatedValues' => 'ΥΠΟΛΟΓΙΖΟΜΕΝΕΣ ΤΙΜΕΣ',
			'profile.gender' => 'Φύλο',
			'profile.height' => 'Ύψος',
			'profile.weight' => 'Βάρος',
			'profile.age' => 'Ηλικία',
			'profile.weightGoal' => 'Στόχος Βάρους',
			'profile.targetWeight' => 'Στόχος Βάρους',
			'profile.activityLevel' => 'Επίπεδο Δραστηριότητας',
			'profile.healthMetrics' => 'Μετρήσεις Υγείας',
			'profile.notSet' => 'Μη καθορισμένος',
			'profile.years' => 'χρόνια',
			'profile.updatedSuccessfully' => 'Το προφίλ ενημερώθηκε με επιτυχία!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Καθημερινός Στόχος',
			'profile.calculatedValues.calPerDay' => 'θερμίδες/ημ.',
			'profile.calculatedValues.notAvailable' => 'ΜΗ ΔΙΑΘΕΣΙΜΟ',
			'healthScore.title' => 'Βαθμολογία Υγείας',
			'healthScore.whyThisScore' => 'Γιατί αυτός ο βαθμός;',
			'healthScore.note' => 'Αυτή η βαθμολογία είναι μια εκτίμηση της AI με βάση τα αναγνωρισμένα συστατικά και την θρεπτική πυκνότητα. Πάντα να συμβουλεύεσαι έναν επαγγελματία για διατροφικές συμβουλές.',
			'healthScore.unhealthy' => 'Ανθυγιεινός',
			'healthScore.healthy' => 'Υγιής',
			'healthScore.neutral' => 'Ουδέτερος',
			'editProfile.title' => 'Επεξεργασία Προφίλ',
			'editProfile.sections.personalInformation' => 'ΠΡΟΣΩΠΙΚΕΣ ΠΛΗΡΟΦΟΡΙΕΣ',
			'editProfile.sections.physicalMeasurements' => 'ΦΥΣΙΚΕΣ ΜΕΤΡΗΣΕΙΣ',
			'editProfile.sections.goalsAndActivity' => 'ΣΤΟΧΟΙ & ΔΡΑΣΤΗΡΙΟΤΗΤΑ',
			'editProfile.gender' => 'Φύλο',
			'editProfile.dateOfBirth' => 'Ημερομηνία Γέννησης',
			'editProfile.height' => 'Ύψος',
			'editProfile.weight' => 'Βάρος',
			'editProfile.weightGoal' => 'Στόχος Βάρους',
			'editProfile.activityLevel' => 'Επίπεδο Δραστηριότητας',
			'editProfile.metric' => 'Μετρικό',
			'editProfile.imperial' => 'Αμερικανικό',
			'editProfile.unitCm' => 'εκ.',
			'editProfile.unitFt' => 'πόδ.',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'λβ.',
			'editProfile.metricCm' => 'Μετρικό (cm)',
			'editProfile.imperialFtIn' => 'Αμερικανικό (ft/in)',
			'editProfile.metricKg' => 'Μετρικό (kg)',
			'editProfile.imperialLbs' => 'Αμερικανικό (lbs)',
			'editProfile.genders.male' => 'Άνδρας',
			'editProfile.genders.female' => 'Γυναίκα',
			'editProfile.genders.other' => 'Άλλο',
			'editProfile.weightGoals.loseWeight.name' => 'Να Χάσεις Βάρος',
			'editProfile.weightGoals.loseWeight.description' => 'Δημιούργησε έλλειμμα θερμίδων για να χάσεις βάρος',
			'editProfile.weightGoals.maintainWeight.name' => 'Να Διατηρήσεις Βάρος',
			'editProfile.weightGoals.maintainWeight.description' => 'Διατήρησε το τρέχον βάρος σου',
			'editProfile.weightGoals.gainWeight.name' => 'Να Κερδίσεις Βάρος',
			'editProfile.weightGoals.gainWeight.description' => 'Δημιούργησε πλεόνασμα θερμίδων για να κερδίσεις βάρος',
			'editProfile.activityLevels.sedentary.name' => 'Καθιστικός',
			'editProfile.activityLevels.sedentary.description' => 'Λίγη ή καθόλου άσκηση',
			'editProfile.activityLevels.lightlyActive.name' => 'Λίγο Ενεργός',
			'editProfile.activityLevels.lightlyActive.description' => 'Ελαφριά άσκηση 1-3 μέρες/εβδομάδα',
			'editProfile.activityLevels.moderatelyActive.name' => 'Μέτρια Ενεργός',
			'editProfile.activityLevels.moderatelyActive.description' => 'Μέτρια άσκηση 3-5 μέρες/εβδομάδα',
			'editProfile.activityLevels.veryActive.name' => 'Πολύ Ενεργός',
			'editProfile.activityLevels.veryActive.description' => 'Σκληρή άσκηση 6-7 μέρες/εβδομάδα',
			'editProfile.activityLevels.extremelyActive.name' => 'Πάρα Πολύ Ενεργός',
			'editProfile.activityLevels.extremelyActive.description' => 'Πολύ σκληρή άσκηση, φυσική εργασία',
			'settings.title' => 'Ρυθμίσεις',
			'settings.sections.profile' => 'ΠΡΟΦΙΛ',
			'settings.sections.localization' => 'ΤΟΠΟΘΕΣΙΑ',
			'settings.sections.notifications' => 'ΕΙΔΟΠΟΙΗΣΕΙΣ',
			'settings.sections.healthConnect' => 'ΣΥΝΔΕΣΗ ΥΓΕΙΑΣ',
			'settings.sections.supportAndLegal' => 'ΥΠΟΣΤΗΡΙΞΗ & ΝΟΜΙΚΑ',
			'settings.sections.about' => 'ΣΧΕΤΙΚΑ',
			'settings.sections.dangerZone' => 'ΕΠΙΚΙΝΔΥΝΗ ΖΩΝΗ',
			'settings.sections.developer' => 'ΑΝΑΠΤΥΞΗ',
			'settings.editProfile.title' => 'Επεξεργασία Προφίλ',
			'settings.editProfile.subtitle' => 'Ενημέρωσε τις προσωπικές σου πληροφορίες',
			'settings.language.title' => 'Γλώσσα',
			'settings.language.subtitle' => 'Επίλεξε την προτιμώμενη γλώσσα σου',
			'settings.language.searchHint' => 'Αναζήτηση γλωσσών...',
			'settings.language.noResults' => 'Δεν βρέθηκαν αποτελέσματα',
			'settings.heightUnit.title' => 'Μονάδα Ύψους',
			'settings.weightUnit.title' => 'Μονάδα Βάρους',
			'settings.mealReminders.title' => 'Υπενθυμίσεις Γευμάτων',
			'settings.mealReminders.subtitle' => 'Μείνε συνεπής με κατάλληλες ειδοποιήσεις',
			'settings.theme.title' => 'Θέμα',
			'settings.theme.light' => 'Φωτεινό',
			'settings.theme.dark' => 'Σκοτεινό',
			'settings.theme.system' => 'Σύστημα',
			'settings.sendFeedback.title' => 'Στείλε Σχόλιο',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Βοηθήστε μας να βελτιώσουμε το ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} Σχόλια Εφαρμογής',
			'settings.sendFeedback.emailBodyPrefix' => 'Παρακαλώ παρέχετε τη γνώμη σου παρακάτω:',
			'settings.sendFeedback.appVersion' => 'Έκδοση Εφαρμογής',
			'settings.sendFeedback.device' => 'Συσκευή',
			'settings.sendFeedback.osVersion' => 'Έκδοση OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Διαγραφή Όλων των Δεδομένων',
			'settings.clearAllData.subtitle' => 'Διαγράφει ανεπιστρεπτί όλες τις πληροφορίες σου',
			'settings.clearAllData.confirmationTitle' => 'Διαγραφή Όλων των Δεδομένων;',
			'settings.clearAllData.confirmationMessage' => 'Αυτή η ενέργεια δεν μπορεί να αναιρεθεί. Όλα τα καταγεγραμμένα γεύματα, τα αγαπημένα και οι ρυθμίσεις προφίλ σου θα διαγραφούν μόνιμα.',
			'settings.clearAllData.cancel' => 'Ακύρωση',
			'settings.clearAllData.clearEverything' => 'Διαγράφει τα Πάντα',
			'settings.debugOptions.title' => 'Επιλογές Αποσφαλμάτωσης',
			'settings.developerModeEnabled' => 'Η λειτουργία προγραμματιστή έχει ενεργοποιηθεί!',
			'settings.healthConnect.title' => 'Σύνδεση Υγείας',
			'settings.healthConnect.subtitle' => 'Δείτε και διαχειριστείτε τις άδειες',
			'settings.healthConnect.unavailable.title' => 'Το Health Connect δεν είναι διαθέσιμο',
			'settings.healthConnect.unavailable.description' => 'Το Health Connect δεν είναι διαθέσιμο σε αυτή τη συσκευή. Εγκαταστήστε το Health Connect από το Play Store (Android 9+) ή ενημερώστε σε Android 14+.',
			'settings.healthConnect.permissions.title' => 'Άδειες',
			'settings.healthConnect.permissions.description' => 'Οι παρακάτω άδειες ζητούνται για να παρέχουν ενσωμάτωση με την Σύνδεση Υγείας:',
			'settings.healthConnect.permissions.granted' => 'Χορηγήθηκε',
			'settings.healthConnect.permissions.notGranted' => 'Δεν Χορηγήθηκε',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Διαβάστε Σύνολο Καύσεων Θερμίδων',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Επιτρέπει στην εφαρμογή να διαβάσει το συνολικό σας ποσό θερμίδων που κάψατε από τη Σύνδεση Υγείας.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Αυτή η άδεια χρησιμοποιείται για να εμφανίζει την καθημερινή σας καύση θερμίδων στην εφαρμογή, βοηθώντας σας να κατανοήσετε τη συνολική σας ενέργεια κατά τη διάρκεια της ημέρας.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Διαβάστε Δεδομένα Διατροφής',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Επιτρέπει στην εφαρμογή να διαβάσει δεδομένα διατροφής από τη Σύνδεση Υγείας.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Αυτή η άδεια επιτρέπει στην εφαρμογή να διαβάσει πληροφορίες διατροφής που μπορεί να έχουν καταχωρηθεί από άλλες εφαρμογές συνδεδεμένες με τη Σύνδεση Υγείας, παρέχοντας μια συνολική εικόνα της διατροφής σας.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Γράψτε Δεδομένα Διατροφής',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Επιτρέπει στην εφαρμογή να γράψει δεδομένα διατροφής στη Σύνδεση Υγείας.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Αυτή η άδεια επιτρέπει στην εφαρμογή να συγχρονίσει τα καταχωρημένα γεύματά σας στη Σύνδεση Υγείας, καθιστώντας τα δεδομένα διατροφής διαθέσιμα σε άλλες εφαρμογές υγείας και φυσικής κατάστασης που χρησιμοποιείτε.',
			'settings.healthConnect.managePermissions' => 'Διαχείριση Αδειών',
			'settings.healthConnect.openSettings' => 'Άνοιγμα Ρυθμίσεων Health Connect',
			'settings.healthConnect.requestPermissions' => 'Αίτημα Αδειών',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Το αίτημα αδειών ακυρώθηκε ή απέτυχε. Δοκιμάστε ξανά ή δώστε τις άδειες χειροκίνητα στις ρυθμίσεις του Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Δεν ήταν δυνατή η αίτηση αδειών. Δοκιμάστε ξανά ή δώστε τις άδειες χειροκίνητα στις ρυθμίσεις του Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Σχετικά',
			'settings.about.tagline' => 'Γρήγορη, δωρεάν και με σεβασμό στην ιδιωτικότητα επίγνωση θερμίδων',
			'settings.about.ourStory.title' => 'Η Ιστορία μας',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} γεννήθηκε από μια απλή απογοήτευση: οι περισσότερες εφαρμογές καταμέτρησης θερμίδων είναι είτε υπερβολικά περίπλοκες, απαιτούν συνεχής χειροκίνητη εισαγωγή, χρεώνουν υψηλές συνδρομές ή παραβιάζουν την ιδιωτικότητα.\n\nΩς ανεξάρτητος προγραμματιστής, ήθελα να δημιουργήσω κάτι πιο απλό και δίκαιο — μια εφαρμογή που χρησιμοποιεί AI για να μειώσει την προσπάθεια, παραμένει γρήγορη και δωρεάν στη χρήση και σέβεται τα δεδομένα υγείας σας.\n\n${appLabel} είναι η εφαρμογή που εύχομαι να υπήρχε: χωρίς λογαριασμούς, χωρίς παρακολούθηση, χωρίς διαφημίσεις — μόνο σαφείς, πρακτικές πληροφορίες και τους στόχους υγείας σας.',
			'settings.about.privacy.title' => 'Η Ιδιωτικότητά σας είναι Σημαντική',
			'settings.about.privacy.description' => 'Η ιδιωτικότητα δεν είναι μια μεταγενέστερη σκέψη — είναι αρχή σχεδίασης. Ορίστε τι σημαίνει αυτό στην πράξη:',
			'settings.about.privacy.noAccounts' => 'Δεν απαιτούνται λογαριασμοί\nΧρησιμοποιήστε την εφαρμογή αμέσως. Χωρίς εγγραφές, χωρίς ταυτότητες.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Καμία παρακολούθηση συμπεριφοράς\n${appLabel} δεν παρακολουθεί τη δραστηριότητά σας, δεν δημιουργεί προφίλ χρήσης και δεν σας παρακολουθεί σε άλλες εφαρμογές ή ιστοσελίδες.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Χωρίς διαφημίσεις εξ ορισμού\nΗ ${appLabel} έχει σχεδιαστεί να λειτουργεί χωρίς διαφημίσεις ή κερδοφόρες πρακτικές με δεδομένα.',
			'settings.about.privacy.noDataSelling' => 'Καμία πώληση δεδομένων\nΤα δεδομένα υγείας σας δεν πωλούνται ή κοινοποιούνται σε τρίτους.',
			'settings.about.privacy.localStorage' => 'Αποθήκευση τοπικά πρώτα\nΤα δεδομένα σας παραμένουν στη συσκευή σας.',
			'settings.about.privacy.privacyPolicy' => 'Πολιτική Απορρήτου',
			'settings.about.developer.title' => 'Κατασκευασμένο από έναν Ανεξάρτητο Προγραμματιστή',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} είναι κατασκευασμένο και συντηρημένο από έναν μόνο ανεξάρτητο προγραμματιστή που επικεντρώνεται στη δημιουργία ήρεμου, σεβαστού software υγείας.\n\nΗ ανατροφοδότηση διαβάζεται προσωπικά και βοηθά στη διαμόρφωση της κατεύθυνσης της εφαρμογής.',
			'settings.about.developer.website' => 'Ιστοσελίδα',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Απολαμβάνετε το ${appLabel} ;',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Η ανατροφοδότησή σας βοηθά να γίνει το ${appLabel} καλύτερο για όλους.',
			'settings.about.feedback.rateApp' => 'Βαθμολογήστε στο Play Store',
			'settings.about.feedback.sendFeedback' => 'Στείλτε Ανατροφοδότηση',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Μείνε συνεπής με τις υπενθυμίσεις',
			'reminders.description' => 'Λάβετε ήπιες υπενθυμίσεις για να καταγράψεις τα γεύματα σου και να παραμείνεις συνεπής στους στόχους διατροφής σου',
			'reminders.notificationsEnabled' => 'Ειδοποιήσεις Ενεργοποιημένες',
			'reminders.notificationsDisabled' => 'Ειδοποιήσεις Απενεργοποιημένες',
			'reminders.enabledSubtitle' => 'Θα λάβεις υπενθυμίσεις για τα γεύματα',
			'reminders.disabledSubtitle' => 'Ενεργοποίησε τις ειδοποιήσεις για να λάβεις υπενθυμίσεις για τα γεύματα',
			'reminders.mealReminders' => 'Υπενθυμίσεις Γευμάτων',
			'reminders.breakfast' => 'Πρωινό',
			'reminders.lunch' => 'Μεσημεριανό',
			'reminders.dinner' => 'Βραδινό',
			'reminders.snack' => 'Σνακ',
			'reminders.unknown' => 'Άγνωστο',
			'reminders.change' => 'Αλλαγή',
			'reminders.enableNotifications' => 'Ενεργοποίηση Ειδοποιήσεων',
			'reminders.skipForNow' => 'Παράκαμψε προς το παρόν',
			'reminders.saveChanges' => 'Αποθήκευση Αλλαγών',
			'reminders.enabledSuccessfully' => 'Οι ειδοποιήσεις ενεργοποιήθηκαν με επιτυχία!',
			'reminders.permissionDenied' => 'Απορρίφθηκε η άδεια ειδοποιήσεων',
			'reminders.errorEnabling' => ({required Object error}) => 'Σφάλμα κατά την ενεργοποίηση ειδοποιήσεων: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Σφάλμα κατά την ολοκλήρωση ρύθμισης: ${error}',
			'notifications.breakfast.title' => 'Ώρα Πρωινού! 🍳',
			'notifications.breakfast.body' => 'Μην ξεχάσεις να καταγράψεις το πρωινό σου',
			'notifications.lunch.title' => 'Ώρα Μεσημεριανού! 🥗',
			'notifications.lunch.body' => 'Ώρα να καταγράψεις το μεσημεριανό σου',
			'notifications.dinner.title' => 'Ώρα Βραδινού! 🍽️',
			'notifications.dinner.body' => 'Μην ξεχάσεις να καταγράψεις το βραδινό σου',
			'notifications.snack.title' => 'Ώρα Σνακ! 🍎',
			'notifications.snack.body' => 'Ώρα για ένα υγιεινό σνακ',
			'notifications.test.title' => 'Ειδοποίηση Δοκιμής',
			'login.title' => 'Σύνδεση',
			'login.signInWithGoogle' => 'Σύνδεση με Google',
			'login.signInFailed' => 'Η σύνδεση με Google απέτυχε ή ακυρώθηκε.',
			'disclaimer.pleaseNote' => 'Παρακαλώ Σημείωσε',
			'disclaimer.snap.description' => ({required Object appLabel}) => 'Το ${appLabel} παρέχει εκτιμήσεις διατροφικών πληροφοριών. Η ακρίβεια εξαρτάται από την είσοδό σας και τις παραλλαγές τροφίμων. Χρησιμοποιήστε το ως οδηγό, όχι ως ακριβή πηγή. Συμβουλευτείτε έναν επαγγελματία για εξατομικευμένες διατροφικές συμβουλές.',
			'disclaimer.snap.portionSize.title' => 'Μέγεθος Μερίδας',
			'disclaimer.snap.portionSize.description' => 'Η ακρίβεια των εκτιμήσεων εξαρτάται σε μεγάλο βαθμό από την σωστή εκτίμηση του μεγέθους της μερίδας.',
			'disclaimer.snap.preparationMethods.title' => 'Μέθοδοι Παρασκευής',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Οι μέθοδοι μαγειρέματος μπορούν να αλλάξουν σημαντικά το θρεπτικό περιεχόμενο των τροφίμων. Οι εκτιμήσεις του ${appLabel} δεν λαμβάνουν πάντα υπόψη αυτές τις παραλλαγές.',
			'disclaimer.snap.ingredients.title' => 'Συστατικά',
			'disclaimer.snap.ingredients.description' => 'Σύνθετα πιάτα με πολλά κρυμμένα συστατικά μπορεί να οδηγήσουν σε λιγότερο ακριβείς εκτιμήσεις.',
			'disclaimer.snap.databaseLimitations.title' => 'Περιορισμοί Βάσης Δεδομένων',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Η βάση δεδομένων τροφίμων του ${appLabel} είναι εκτενής, αλλά ενδέχεται να μην περιλαμβάνει κάθε ενιαίο τρόφιμο ή παραλλαγή.',
			'disclaimer.weightEstimate.title' => 'Σχετικά με την Εκτίμηση Βάρους',
			'disclaimer.weightEstimate.description' => 'Η προβλεπόμενη αλλαγή βάρους είναι μια θεωρητική εκτίμηση που βασίζεται στο απλό μοντέλο θερμίδων-εισόδου και θερμίδων-εξόδου. Προορίζεται μόνο για κινητοποίηση και όχι ως πρόβλεψη του πραγματικού σας βάρους.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Ακρίβεια Θερμίδων',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Αυτή η εκτίμηση είναι μόνο όσο ακριβής είναι η καταγραμμένη πρόσληψη και κατανάλωση θερμίδων σου. Η ανακριβής καταγραφή θα έχει ως αποτέλεσμα ανακριβή πρόβλεψη.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Βιολογικοί Παράγοντες',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Η πραγματική απώλεια/κέρδος βάρους επηρεάζεται από το μεταβολισμό, τις ορμόνες, τον ύπνο, το άγχος, την ενυδάτωση και άλλους ατομικούς παράγοντες που το ${appLabel} δεν μπορεί να μετρήσει.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Βάρος Νερού & Διακυμάνσεις',
			'disclaimer.weightEstimate.waterWeight.description' => 'Το φυσιολογικό καθημερινό βάρος μπορεί να διακυμανθεί σημαντικά λόγω κατακράτησης νερού, πέψης και χρονοδιαγράμματος. Η εκτίμηση δεν λαμβάνει υπόψη αυτές τις ημερήσιες αλλαγές.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Επαγγελματική Καθοδήγηση',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Μην χρησιμοποιείς αυτή την εκτίμηση για ιατρικές αποφάσεις. Πάντα να συμβουλεύεσαι ένα επαγγελματία υγείας ή εγγεγραμμένο διαιτολόγο για προσωπικές συμβουλές διαχείρισης βάρους.',
			'disclaimer.healthMetrics.description' => 'Αυτές οι μετρήσεις σας βοηθούν να κατανοήσετε τις ανάγκες ενέργειας του σώματός σας και καθοδηγούν τους διατροφικούς σας στόχους.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Ο Βασικός Μεταβολικός Ρυθμός (BMR) είναι ο αριθμός θερμίδων που καίει το σώμα σας σε κατάσταση ηρεμίας για να διατηρήσει βασικές λειτουργίες όπως η αναπνοή και η κυκλοφορία. Ο BMR εξαρτάται από την ηλικία, το φύλο, το ύψος και το βάρος σας. Ένας υψηλότερος BMR σημαίνει ότι το σώμα σας καίει φυσικά περισσότερες θερμίδες σε κατάσταση ηρεμίας, συχνά λόγω μεγαλύτερης μυϊκής μάζας, νεαρότερης ηλικίας ή λόγω της ανδρικής φύσης. Ένας χαμηλότερος BMR συνήθως υποδηλώνει λιγότερη μυϊκή μάζα, μεγαλύτερη ηλικία ή γυναικείο φύλο.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Η Συνολική Ημερήσια Ενεργειακή Δαπάνη (TDEE) είναι οι συνολικές θερμίδες που καίτε ανά ημέρα, συμπεριλαμβανομένου του BMR σας και τις θερμίδες που προέρχονται από τη σωματική δραστηριότητα και την καθημερινή κίνηση. Το TDEE εξαρτάται από τον BMR σας και το επίπεδο δραστηριότητάς σας. Ένας υψηλότερος TDEE σημαίνει ότι καίτε περισσότερες θερμίδες συνολικά, συνήθως από την περισσότερη δραστηριότητα ή έναν υψηλότερο BMR. Ένας χαμηλότερος TDEE υποδεικνύει λιγότερη καθημερινή δραστηριότητα ή χαμηλότερο BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Ημερήσιος Στόχος',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Ο Ημερήσιος Στόχος είναι η συνιστώμενη ημερήσια θερμιδική σας πρόσληψη με βάση το TDEE σας και τον στόχο βάρους σας. Για απώλεια βάρους, καταναλώνετε λιγότερες θερμίδες από το TDEE σας. Για συντήρηση βάρους, ισοφαρίζετε το TDEE σας. Για αύξηση βάρους, καταναλώνετε περισσότερες θερμίδες από το TDEE σας. Αυτό σας βοηθά να επιτύχετε την επιθυμητή αλλαγή βάρους σας με υγιή ρυθμό.',
			'common.close' => 'Κλείσιμο',
			'common.kContinue' => 'Συνέχεια',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Απολαμβάνεις το ${appLabel};',
			'feedbackRating.yes' => 'Ναι, το απολαμβάνω',
			'feedbackRating.no' => 'Όχι και τόσο',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Μια σύντομη αξιολόγηση βοηθάει άλλους να βρουν το ${appLabel} και στηρίζει την ανάπτυξή του. Θα αφιερώσετε ένα λεπτό για να αφήσετε μια αξιολόγηση;',
			'feedbackRating.shareFeedbackViaEmail' => 'Τα σχόλιά σας διαμορφώνουν ό,τι έρχεται — διαβάζουμε κάθε μήνυμα. Θα θέλατε να μοιραστείτε τις σκέψεις σας μέσω email;',
			'feedbackRating.rateCta' => 'Αξιολογήστε στο Play Store',
			'feedbackRating.maybeLater' => 'Ίσως αργότερα',
			'feedbackRating.sendFeedback' => 'Στείλτε μας τα σχόλιά σας',
			'feedbackRating.noThanks' => 'Όχι, ευχαριστώ',
			'feedbackRating.aboutUsDescription' => 'Δημιουργήθηκε με φροντίδα από μια μικρή ομάδα. Δίνουμε προτεραιότητα στην ιδιωτικότητα, την απλότητα και στο να σας βοηθάμε να αποκτήσετε καλύτερες διατροφικές συνήθειες.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Σε ενδιαφέρει ποιος βρίσκεται πίσω από το ${appLabel}? Δες ',
			'feedbackRating.aboutUsLinkLabel' => 'Σχετικά με εμάς',
			'errors.loadingProfileData' => 'Σφάλμα κατά τη φόρτωση των δεδομένων προφίλ',
			'errors.somethingWentWrong' => 'Κάτι πήγε στραβά.',
			'debug.title' => 'Επιλογές Αποσφαλμάτωσης',
			'debug.sections.notifications' => 'Ειδοποιήσεις',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.feedback' => 'Ανατροφοδότηση',
			'debug.sections.dataReset' => 'Επαναφορά δεδομένων',
			'debug.sections.appInfo' => 'Πληροφορίες Εφαρμογής',
			'debug.showActiveNotifications' => 'Δείξε τις Ενεργές Ειδοποιήσεις',
			'debug.scheduleTestNotification' => 'Προγραμματισμός Δοκιμής Ειδοποίησης (10s)',
			'debug.triggerBreakfastNotification' => 'Ενεργοποίηση Ειδοποίησης Πρωινού',
			'debug.cancelAllNotifications' => 'Ακύρωση Όλων των Ειδοποιήσεων',
			'debug.activeNotifications' => 'Ενεργές Ειδοποιήσεις',
			'debug.noTitle' => 'Χωρίς Τίτλο',
			'debug.noBody' => 'Χωρίς Κείμενο',
			'debug.fetchTodaysSteps' => 'Εξαγωγή Βημάτων Σήμερα',
			'debug.fetchTodaysCalories' => 'Εξαγωγή Θερμίδων Σήμερα',
			'debug.fetchLatestWeight' => 'Εξαγωγή Τελευταίου Βάρους',
			'debug.fetchLatestHeight' => 'Εξαγωγή Τελευταίου Ύψους',
			'debug.writeTestWeight' => 'Εγγραφή Δοκιμαστικού Βάρους (70kg)',
			'debug.writeTestHeight' => 'Εγγραφή Δοκιμαστικού Ύψους (175cm)',
			'debug.syncLast7Days' => 'Συγχρονισμός Τελευταίων 7 Ημερών',
			'debug.sync7DaysTitle' => 'Συγχρονισμός 7 Ημερών',
			'debug.checkCurrentLocale' => 'Έλεγχος Τρέχουσας Τοποθεσίας',
			'debug.currentLocale' => 'Τρέχουσα Τοποθεσία',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Γλώσσα: ${languageCode}\nΧώρα: ${countryCode}\nΣύστημα Μονάδων: ${unitSystem}',
			'debug.latestWeight' => 'Τελευταίο Βάρος',
			'debug.latestHeight' => 'Τελευταίο Ύψος',
			'debug.todaysCalories' => 'Θερμίδες Σήμερα',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Συνολικές θερμίδες που κάηκαν: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Η συγχρονισμένη διαδικασία ολοκληρώθηκε ${count} δεδομένα για Βήματα, Θερμίδες και Βάρος κατά τη διάρκεια των τελευταίων 7 ημερών.',
			'debug.noWeightData' => 'Δεν βρέθηκαν δεδομένα βάρους τις τελευταίες 30 ημέρες.',
			'debug.noHeightData' => 'Δεν βρέθηκαν δεδομένα ύψους τον τελευταίο χρόνο.',
			'debug.noCalorieData' => 'Δεν βρέθηκαν δεδομένα θερμίδων για σήμερα.',
			'debug.weightWritten' => 'Η εγγραφή του δοκιμαστικού βάρους (70kg) ολοκληρώθηκε με επιτυχία.',
			'debug.weightWriteFailed' => 'Αποτυχία εγγραφής δοκιμαστικού βάρους.',
			'debug.heightWritten' => 'Η εγγραφή του δοκιμαστικού ύψους (175cm) ολοκληρώθηκε με επιτυχία.',
			'debug.heightWriteFailed' => 'Αποτυχία εγγραφής δοκιμαστικού ύψους.',
			'debug.noNotifications' => 'Δεν υπάρχουν ενεργές ειδοποιήσεις.',
			'debug.testNotificationScheduled' => 'Η δοκιμαστική ειδοποίηση προγραμματίστηκε για 10 δευτερόλεπτα από τώρα.',
			'debug.testNotificationBody' => 'Αυτή είναι μια δοκιμαστική ειδοποίηση που έχει προγραμματιστεί για 10 δευτερόλεπτα από τώρα.',
			'debug.breakfastNotificationTriggered' => 'Η ειδοποίηση πρωινού ενεργοποιήθηκε.',
			'debug.allNotificationsCancelled' => 'Όλες οι ειδοποιήσεις ακυρώθηκαν.',
			'debug.fetchingData' => 'Εξαγωγή δεδομένων για τις τελευταίες 7 ημέρες...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'debug.showFeedbackRatingSheet' => 'Εμφάνιση φόρμας σχολίων/αξιολόγησης',
			'debug.clearUserPreferences' => 'Επαναφορά προτιμήσεων χρήστη',
			'debug.clearUserPreferencesConfirmationTitle' => 'Επαναφορά προτιμήσεων χρήστη?',
			'debug.clearUserPreferencesConfirmationMessage' => 'Οι ρυθμίσεις θέματος, γλώσσας και οι προτιμήσεις ανατροφοδότησης θα επαναφερθούν. Τα γεύματα και το προφίλ δεν επηρεάζονται.',
			'debug.clearUserProfile' => 'Διαγραφή προφίλ χρήστη',
			'debug.clearUserProfileConfirmationTitle' => 'Διαγραφή προφίλ χρήστη?',
			'debug.clearUserProfileConfirmationMessage' => 'Τα δεδομένα του προφίλ σου (ημερήσιος στόχος, ύψος, βάρος κ.λπ.) θα διαγραφούν. Τα γεύματα και οι προτιμήσεις δεν επηρεάζονται.',
			'debug.clear' => 'Διαγραφή',
			'debug.cancel' => 'Ακύρωση',
			'health.syncFailed' => 'Δεν μπόρεσα να συγχρονίσω με το Health Connect',
			'health.mealSynced' => 'Το γεύμα συγχρονίστηκε με το Health Connect',
			_ => null,
		};
	}
}
