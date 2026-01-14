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
class TranslationsKn with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.kn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <kn>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsKn _root = this; // ignore: unused_field

	@override 
	TranslationsKn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKn(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Kannada';
	@override String get flag => '🇮🇳';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingKn onboarding = _TranslationsOnboardingKn._(_root);
	@override late final _TranslationsTabsKn tabs = _TranslationsTabsKn._(_root);
	@override late final _TranslationsHomeKn home = _TranslationsHomeKn._(_root);
	@override late final _TranslationsHistoryKn history = _TranslationsHistoryKn._(_root);
	@override late final _TranslationsMealKn meal = _TranslationsMealKn._(_root);
	@override late final _TranslationsFavoritesKn favorites = _TranslationsFavoritesKn._(_root);
	@override late final _TranslationsProfileKn profile = _TranslationsProfileKn._(_root);
	@override late final _TranslationsHealthScoreKn healthScore = _TranslationsHealthScoreKn._(_root);
	@override late final _TranslationsEditProfileKn editProfile = _TranslationsEditProfileKn._(_root);
	@override late final _TranslationsSettingsKn settings = _TranslationsSettingsKn._(_root);
	@override late final _TranslationsRemindersKn reminders = _TranslationsRemindersKn._(_root);
	@override late final _TranslationsNotificationsKn notifications = _TranslationsNotificationsKn._(_root);
	@override late final _TranslationsLoginKn login = _TranslationsLoginKn._(_root);
	@override late final _TranslationsDisclaimerKn disclaimer = _TranslationsDisclaimerKn._(_root);
	@override late final _TranslationsCommonKn common = _TranslationsCommonKn._(_root);
	@override late final _TranslationsErrorsKn errors = _TranslationsErrorsKn._(_root);
	@override late final _TranslationsDebugKn debug = _TranslationsDebugKn._(_root);
	@override late final _TranslationsHealthKn health = _TranslationsHealthKn._(_root);
}

// Path: onboarding
class _TranslationsOnboardingKn implements TranslationsOnboardingEn {
	_TranslationsOnboardingKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} ಗೆ ಸುಸ್ವಾಗತ';
	@override String get subtitle => 'ಎಐ ಗೆ ಶಕ್ತಿಯಾದ ನಿಮ್ಮ ವೈಯುಕ್ತಿಕ ಪೋಷಣಾ ಸಂಗಾತಿ';
	@override String get getStarted => 'ಪ್ರಾರಂಭಿಸಿ';
	@override late final _TranslationsOnboardingFeaturesKn features = _TranslationsOnboardingFeaturesKn._(_root);
	@override late final _TranslationsOnboardingGenderKn gender = _TranslationsOnboardingGenderKn._(_root);
	@override late final _TranslationsOnboardingHeightKn height = _TranslationsOnboardingHeightKn._(_root);
	@override late final _TranslationsOnboardingWeightKn weight = _TranslationsOnboardingWeightKn._(_root);
	@override late final _TranslationsOnboardingAgeKn age = _TranslationsOnboardingAgeKn._(_root);
	@override late final _TranslationsOnboardingBmiScaleKn bmiScale = _TranslationsOnboardingBmiScaleKn._(_root);
	@override late final _TranslationsOnboardingWeightGoalKn weightGoal = _TranslationsOnboardingWeightGoalKn._(_root);
	@override late final _TranslationsOnboardingActivityLevelKn activityLevel = _TranslationsOnboardingActivityLevelKn._(_root);
	@override late final _TranslationsOnboardingHealthConnectKn healthConnect = _TranslationsOnboardingHealthConnectKn._(_root);
	@override late final _TranslationsOnboardingReinforcementKn reinforcement = _TranslationsOnboardingReinforcementKn._(_root);
}

// Path: tabs
class _TranslationsTabsKn implements TranslationsTabsEn {
	_TranslationsTabsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'ಡ್ಯಾಶ್‌ಬೋರ್ಡ್';
	@override String get history => 'ಅವರಿಗೆ ನಾನು ಏನು ಮಾಡಿದ್ದೆನು';
}

// Path: home
class _TranslationsHomeKn implements TranslationsHomeEn {
	_TranslationsHomeKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalKn dailyGoal = _TranslationsHomeDailyGoalKn._(_root);
	@override late final _TranslationsHomeDailySummaryKn dailySummary = _TranslationsHomeDailySummaryKn._(_root);
	@override late final _TranslationsHomeIntakeProgressKn intakeProgress = _TranslationsHomeIntakeProgressKn._(_root);
	@override late final _TranslationsHomeIntakeHistoryKn intakeHistory = _TranslationsHomeIntakeHistoryKn._(_root);
	@override late final _TranslationsHomeMealLogKn mealLog = _TranslationsHomeMealLogKn._(_root);
	@override late final _TranslationsHomeMealDescriptionKn mealDescription = _TranslationsHomeMealDescriptionKn._(_root);
	@override late final _TranslationsHomeFavoriteMealsKn favoriteMeals = _TranslationsHomeFavoriteMealsKn._(_root);
	@override late final _TranslationsHomeMealSnapKn mealSnap = _TranslationsHomeMealSnapKn._(_root);
	@override late final _TranslationsHomeConnectHealthKn connectHealth = _TranslationsHomeConnectHealthKn._(_root);
}

// Path: history
class _TranslationsHistoryKn implements TranslationsHistoryEn {
	_TranslationsHistoryKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'ಏನೂ भोजन ದಾಖಲಿಲಿಲ್ಲ';
	@override String get emptyMessage => 'ನೀವು ಹಾಕಿದ ಹಕ್ಕಿನಿಂದ ಸ್ನಾಪ್ ತೆಗೆದುಕೊಳ್ಳಿ.';
	@override String get today => 'ಇಂದು';
	@override String get yesterday => 'ಕಳೆದ ದಿನ';
}

// Path: meal
class _TranslationsMealKn implements TranslationsMealEn {
	_TranslationsMealKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'ಓ ಹಾ!';
	@override String get delete => 'ಅಳಿಸಿ';
	@override String get editMeal => 'ಆಹಾರವನ್ನು ಸಂಪಾದಿಸಿ';
	@override String get addMeal => 'ಆಹಾರ ಸೇರಿಸಿ';
	@override String get saveMeal => 'ಆಹಾರ ಶೇಖರಿಸಿ';
	@override String get save => 'ಉಳಿತಾಯ';
	@override String get mealName => 'ಆಹಾರದ ಹೆಸರು';
	@override String get mealQuantity => 'ಆಹಾರ ಪ್ರಮಾಣ';
	@override String get mealQuantityHint => 'ಉಪಾಯ, 1 ತಟ್ಟೆ, 2 ಕ್ಕಕಲು';
	@override String get timeOfMeal => 'ಆಹಾರದ ಸಮಯ';
	@override String get timeOfMealHint => 'ನೀವು ಕಳೆಯುತ್ತಿದ್ದಾಗ ಆಯ್ಕೆ ಮಾಡಿ';
	@override String get mealType => 'ಆಹಾರದ ವರ್ಗ';
	@override late final _TranslationsMealNutritionKn nutrition = _TranslationsMealNutritionKn._(_root);
	@override late final _TranslationsMealDeleteConfirmationKn deleteConfirmation = _TranslationsMealDeleteConfirmationKn._(_root);
	@override String get addedToLog => 'ಆಹಾರ ನಿಮ್ಮ ಲಾಗ್‌ನಲ್ಲಿ ಸೇರಿಸಲಾಗಿದೆ!';
	@override String couldNotAdd({required Object error}) => 'ಆಹಾರವನ್ನು ಸೇರಿಸುವುದಾಗಿ ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: ${error}';
	@override String get removedFromFavorites => 'ಮುಗಿಯಲು ತೆಗೆದು ಹಾಕಲಾಯಿತು!';
	@override String get savedAsFavorite => 'ಆಹಾರವು ಮುಗಿಯಲು ಉಳಿಸಲಾಗಿದೆ!';
	@override String couldNotUpdateFavorite({required Object error}) => 'ಮುಗಿಯಲು ನವೀಕರಣ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: ${error}';
	@override String failedToProcess({required Object error}) => 'ಆಹಾರವನ್ನು ಒಂದು ಕಂಪೊಜುತ್ತಾರೆ: ${error}';
	@override String failedToProcessImage({required Object error}) => 'ಚಿತ್ರವನ್ನು ಒಂದು ಕಂಪೊಜಿದ್ದರು: ${error}';
	@override String errorCompressingImage({required Object error}) => 'ಚಿತ್ರವನ್ನು ಒಪ್ಪಿಸಿ: ${error}';
	@override String get failedToSave => 'ಮಾಹಿತಿಯ ಉಳಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಪುನರಯಿಸಲು ಪ್ರಯತ್ನಿಸಿ.';
}

// Path: favorites
class _TranslationsFavoritesKn implements TranslationsFavoritesEn {
	_TranslationsFavoritesKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಮುಗಿಯಲು';
	@override String get empty => 'ಏನೂ ಮುಗಿಯಿಲ್ಲ.';
}

// Path: profile
class _TranslationsProfileKn implements TranslationsProfileEn {
	_TranslationsProfileKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಪ್ರೊಫೈಲ್';
	@override String get noProfileData => 'ಯಾವುದೇ ಪ್ರೊಫೈಲ್ ಡೇಟಾ ಬಂದಿಲ್ಲ';
	@override String get yourProfile => 'ನಿಮ್ಮ ಪ್ರೊಫೈಲ್';
	@override String get viewAndManage => 'ನಿಮ್ಮ ಆರೋಗ್ಯದ ಮಾಹಿತಿಯನ್ನು ನೋಡುವ ಮತ್ತು ನಿರ್ವಹಿಸಲು';
	@override late final _TranslationsProfileSectionsKn sections = _TranslationsProfileSectionsKn._(_root);
	@override String get gender => 'ಲಿಂಗ';
	@override String get height => 'ಎತ್ತರ';
	@override String get weight => 'ತೂಕ';
	@override String get age => 'ವಯಸ್ಸು';
	@override String get weightGoal => 'ತೂಕ ಗುರಿ';
	@override String get activityLevel => 'ಚಟುವಟಿಕೆ ಹಂತ';
	@override String get healthMetrics => 'ಆರೋಗ್ಯ ಅಂಕಿಅಂಗಗಳು';
	@override String get notSet => 'ಸೆಟ್ನಿಲ್ಲ';
	@override String get years => 'ಆಯು';
	@override String get updatedSuccessfully => 'ಪ್ರೊಫೈಲ್ ಯಶಸ್ವಿಯಾಗಿ ನವೀಕರಣ ಮಾಡಲಾಗಿದೆ!';
	@override late final _TranslationsProfileCalculatedValuesKn calculatedValues = _TranslationsProfileCalculatedValuesKn._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreKn implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಆರೋಗ್ಯ ಶ್ರೇಣೀಕರಣ';
	@override String get whyThisScore => 'ನೀವು ಈ ಶ್ರೇಣಿಕೆಯು ಏಕೆ?';
	@override String get note => 'ಈ ಶ್ರೇಣೀಕರಣವು ಗುರುತಿಸಲಾದ ಅಂಶಗಳು ಮತ್ತು ಪೋಷಣಾ ತೀವ್ರತೆಗೆ ಆಧಾರಿತ ಎಐ ಅಂದಾಜು. ವ್ಯಾಖ್ಯಾನದಿಂದಲೇ ಸಲಹೆಗೆ ಸಾರ್ವಜನಿಕ ವೈದ್ಯಕೀಯ ಸಲಹೆಯನ್ನು ಕೇಳಿರಿ.';
	@override String get unhealthy => 'ಅರೋಗ್ಯಕರ';
	@override String get healthy => 'ಆರೋಗ್ಯಕರ';
	@override String get neutral => 'ನಿಷ್ಕ್ರಿಯ';
}

// Path: editProfile
class _TranslationsEditProfileKn implements TranslationsEditProfileEn {
	_TranslationsEditProfileKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಪ್ರೊಫೈಲ್ ಸಂಪಾದಿಸಿ';
	@override late final _TranslationsEditProfileSectionsKn sections = _TranslationsEditProfileSectionsKn._(_root);
	@override String get gender => 'ಲಿಂಗ';
	@override String get dateOfBirth => 'ಜನ್ಮ ತಾರೀಕು';
	@override String get height => 'ಎತ್ತರ';
	@override String get weight => 'ತೂಕ';
	@override String get weightGoal => 'ತೂಕ ಗುರಿ';
	@override String get activityLevel => 'ಚಟುವಟಿಕೆ ಹಂತ';
	@override String get metric => 'ಮೆಟ್ರಿಕ್';
	@override String get imperial => 'ಮೊಸ';
	@override String get metricCm => 'ಮೆಟ್ರಿಕ್ (ಸೆಂಚಿ)';
	@override String get imperialFtIn => 'ಮೊಸದ (ಅಂಗುಕ)';
	@override String get metricKg => 'ಮೆಟ್ರಿಕ್ (ಕಿಲೋ)';
	@override String get imperialLbs => 'ಮೊಸದ (ಪೌಂಡು)';
	@override late final _TranslationsEditProfileGendersKn genders = _TranslationsEditProfileGendersKn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsKn weightGoals = _TranslationsEditProfileWeightGoalsKn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsKn activityLevels = _TranslationsEditProfileActivityLevelsKn._(_root);
}

// Path: settings
class _TranslationsSettingsKn implements TranslationsSettingsEn {
	_TranslationsSettingsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಅನುದಾನ';
	@override late final _TranslationsSettingsSectionsKn sections = _TranslationsSettingsSectionsKn._(_root);
	@override late final _TranslationsSettingsEditProfileKn editProfile = _TranslationsSettingsEditProfileKn._(_root);
	@override late final _TranslationsSettingsLanguageKn language = _TranslationsSettingsLanguageKn._(_root);
	@override late final _TranslationsSettingsHeightUnitKn heightUnit = _TranslationsSettingsHeightUnitKn._(_root);
	@override late final _TranslationsSettingsWeightUnitKn weightUnit = _TranslationsSettingsWeightUnitKn._(_root);
	@override late final _TranslationsSettingsMealRemindersKn mealReminders = _TranslationsSettingsMealRemindersKn._(_root);
	@override late final _TranslationsSettingsThemeKn theme = _TranslationsSettingsThemeKn._(_root);
	@override late final _TranslationsSettingsSendFeedbackKn sendFeedback = _TranslationsSettingsSendFeedbackKn._(_root);
	@override late final _TranslationsSettingsClearAllDataKn clearAllData = _TranslationsSettingsClearAllDataKn._(_root);
	@override late final _TranslationsSettingsDebugOptionsKn debugOptions = _TranslationsSettingsDebugOptionsKn._(_root);
	@override String get developerModeEnabled => 'ವಿಕಾಸಕ ಮೋಡ್ ಸಕ್ರಿಯ!';
}

// Path: reminders
class _TranslationsRemindersKn implements TranslationsRemindersEn {
	_TranslationsRemindersKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನಿಮ್ಮ ಎನಕ ಸುಂದರವಾಗಿ ನೆನಪಿಸಲು';
	@override String get description => 'ನಿಮ್ಮ ಆಹಾರವನ್ನು ಲೆಕ್ಕ ಹಾಕಲು ಮತ್ತು ನಿಖರವಾಗಬೇಕಾದ ಐತಿಹಾಸಿಕ ಮಾರ್ಗದರ್ಶನವನ್ನು ದೊರಕಿಸಿ';
	@override String get notificationsEnabled => 'ಅಗತ್ಯಗಳು ಸೇರಿಸಿದವು';
	@override String get notificationsDisabled => 'ಅಗತ್ಯಗಳು ವಿಫಲ ಲಕ್ಷಣಗಳು';
	@override String get enabledSubtitle => 'ನೀವು ಆಹಾರವನ್ನು ನೆನೆಪಿಸಲು ಬೇಕಾದುದಿಲ್ಲ';
	@override String get disabledSubtitle => 'ಅಗತ್ಯಗಳನ್ನು ಪ್ರವೇಶಿಸಲು ವಿನಂತಿ ಮಾಡಿ';
	@override String get mealReminders => 'ಆಹಾರಗಳನ್ನು ನೆನಪಿಸುವಿಕೆ';
	@override String get breakfast => 'ಬೆಳಗಿನ ಊಟ';
	@override String get lunch => 'ಮಧ್ಯಾಹ್ನದ ಊಟ';
	@override String get dinner => 'ರಾತ್ರಿ ಊಟ';
	@override String get snack => 'ಸ್ನಾಕ್ಸ್';
	@override String get unknown => 'ಅಜ್ಞಾತ';
	@override String get change => 'ಬದಲಾಯಿಸು';
	@override String get enableNotifications => 'ಅಗತ್ಯದ ಸೇರಿಸು';
	@override String get skipForNow => 'ಈಗ ಬಿಡುತ್ತೇನೆ';
	@override String get saveChanges => 'ಹೆಸರು ಬದಲಾಯಿಸು';
	@override String get enabledSuccessfully => 'ಅಗತ್ಯವನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಸ್ಥಾಪಿಸಲಾಗಿದೆ!';
	@override String get permissionDenied => 'ಅಗತ್ಯಕ್ಕೆ ವಕರ್ಮ ಸ್ಥಳಾಂತರ ನಿರಾಕರಿಸಲಾಗಿದೆ.';
	@override String errorEnabling({required Object error}) => 'ಅಗತ್ಯವನ್ನು ಸಕ್ರಿಯ ಮಾಡಲು ತಪ್ಪು: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'ಸ್ಥಾಪನೆಯು ಸಂಪೂರ್ಣವಾದಾಗಂತ ತಪ್ಪು: ${error}';
}

// Path: notifications
class _TranslationsNotificationsKn implements TranslationsNotificationsEn {
	_TranslationsNotificationsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastKn breakfast = _TranslationsNotificationsBreakfastKn._(_root);
	@override late final _TranslationsNotificationsLunchKn lunch = _TranslationsNotificationsLunchKn._(_root);
	@override late final _TranslationsNotificationsDinnerKn dinner = _TranslationsNotificationsDinnerKn._(_root);
	@override late final _TranslationsNotificationsSnackKn snack = _TranslationsNotificationsSnackKn._(_root);
	@override late final _TranslationsNotificationsTestKn test = _TranslationsNotificationsTestKn._(_root);
}

// Path: login
class _TranslationsLoginKn implements TranslationsLoginEn {
	_TranslationsLoginKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಲಾಗಿನ್';
	@override String get signInWithGoogle => 'ಗೂಗಲ್ ನೊಂದಿಗೆ ಲಾಗಿನ್';
	@override String get signInFailed => 'ಗೂಗಲ್ ಲಾಗಿನ್ ವಿಫಲವಾಗಿರುವುದು ಅಥವಾ ರದ್ದುವಾದಾಗ.';
}

// Path: disclaimer
class _TranslationsDisclaimerKn implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'ದಯವಿಟ್ಟು ಗಮನಿಸಿ';
	@override late final _TranslationsDisclaimerSnapKn snap = _TranslationsDisclaimerSnapKn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateKn weightEstimate = _TranslationsDisclaimerWeightEstimateKn._(_root);
}

// Path: common
class _TranslationsCommonKn implements TranslationsCommonEn {
	_TranslationsCommonKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get close => 'ಹೊರೆಯಿರಿ';
	@override String get kContinue => 'ಮುಂದೆ';
}

// Path: errors
class _TranslationsErrorsKn implements TranslationsErrorsEn {
	_TranslationsErrorsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'ಪ್ರೊಫೈಲ್ ಡೇಟಾ ಲೋಡ್ ಮಾಡುವಾಗ ತಪ್ಪು';
	@override String get somethingWentWrong => 'ಏನೋ ತಪ್ಪಾಗಿದೆ.';
}

// Path: debug
class _TranslationsDebugKn implements TranslationsDebugEn {
	_TranslationsDebugKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಡಿಬಗ್ ಆಯ್ಕೆಗಳು';
	@override late final _TranslationsDebugSectionsKn sections = _TranslationsDebugSectionsKn._(_root);
	@override String get showActiveNotifications => 'ಚಾಲನೆಯ ಅಗತ್ಯಗಳನ್ನು ತೋರಿಸಲು';
	@override String get scheduleTestNotification => 'ಪರೀಕ್ಷ್ಸಾಮಾಗ್ರಿಕ ಅವರ ಅಗತ್ಯಾ ಸೂಚಿಯು ಕಾರ್ಯನಿರ್ವಹಣೆಗೆ (10ಸೆ)';
	@override String get triggerBreakfastNotification => 'ಬೆಳಗಿನ ಆಹಾರವನ್ನು ಒಳಗೊಳ್ಳಲು';
	@override String get cancelAllNotifications => 'ಎಲ್ಲಾ ಅಗತ್ಯವನ್ನು ರದ್ದು';
	@override String get activeNotifications => 'ಚಾಲನೆ ಅಗತ್ಯಗಳು';
	@override String get noTitle => 'ಯಾವುದೇ ಶೀರ್ಷಿಕೆ ಇಲ್ಲ';
	@override String get noBody => 'ಯಾವುದೇ ಶರೀರವಿಲ್ಲ';
	@override String get fetchTodaysSteps => 'ಈಗ ಆರಧ್ಯ ಪ್ರಗತಿಯೇನು?';
	@override String get fetchTodaysCalories => 'ಈಗ ಅಣಿಯವು ಯಾವಾಗ?';
	@override String get fetchLatestWeight => 'ಈಗ ತೋರುವ ಅಳೆಯಷ್ಟು?';
	@override String get fetchLatestHeight => 'ಈಗ ಎತ್ತರವನ್ನು ಪ್ರಗತಿಯೇನು?';
	@override String get writeTestWeight => '70 ಕಿಲೋತ್ಲಕದ ಸಂಪನ್ಮೂಲವನ್ನು ಬರಿಯಿರಿ';
	@override String get writeTestHeight => '175 ಸೆಂ.ಮೀ. ಬರೆಯಿರಿ';
	@override String get syncLast7Days => 'ಕಳೆದ 7 ದಿನಗಳ ಅನುಕೂಲವನ್ನು ಸಿಂಕ್ಚಿಂಡಾ';
	@override String get sync7DaysTitle => '7-ದಿನಾಂಕ ಅನುവുമായി';
	@override String get checkCurrentLocale => 'ಪಿಎಸಿ ಕನ್ನಡ';
	@override String get currentLocale => 'ಪ್ರದರ್ಶನ ಸ್ಥಳೀಯ';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'ಭಾಷೆ: ${languageCode}\nರಾಜ್ಯ: ${countryCode}\n ಘಟನಾಂತರ ವ್ಯವಸ್ಥೆ: ${unitSystem}';
	@override String get latestWeight => 'ಇತ್ತೀಚಿನ ತೂಕ';
	@override String get latestHeight => 'ಇತ್ತೀಚಿನ ಎತ್ತರ';
	@override String get todaysCalories => 'ಇಂದು ಕ್ಯಾಲೊರಿ';
	@override String totalCaloriesBurned({required Object calories}) => 'ತುಂಬಾ ಹೊಂದಿರ(node): ${calories}';
	@override String syncSuccess({required Object count}) => 'ಕ_LAST 7 ದಿನಗಳಲ್ಲಿ ${count} ಮಾಹಿತಿ ಪಡೆಯಲು ಯಶಸ್ವಿಯಾಗಿ ಹೊಂದಿಸಿದ್ದೀರಿ.';
	@override String get noWeightData => 'ಕೇವಲ 30 ದಿನಗಳಲ್ಲಿ ತೂಕದ ಬಗ್ಗೆ ಯಾವುದೇ ಮಾಹಿತಿಯು ಕಂಡಿಲ್ಲ.';
	@override String get noHeightData => 'ಕೇವಲ 1 ವರ್ಷದಲ್ಲಿ ಎತ್ತರದಿಂದ ಪ್ರಕಾರಕ್ಕೆ ಯಾವುದೇ ಮಾಹಿತಿಯು ಕಂಡಿಲ್ಲ.';
	@override String get noCalorieData => 'ಇಂದು ಕ್ಯಾಲೊರಿಗಳ ಬಗ್ಗೆ ಯಾವುದೇ ಮಾಹಿತಿ ನಿರ್ಧಾರೆಯಿಲ್ಲ.';
	@override String get weightWritten => 'ವಿಭಗಿನ ಮೋದಿ ತೂಕವನ್ನು ನಿರ್ಧಾಯಿಸಲಾಗಿದೆ (70 ಕಿಲೋ).';
	@override String get weightWriteFailed => 'ಲೇಖೆ ಬೆಂಬ್ರವರೆಗೆ ಬಾಗಗಳೆಯು.';
	@override String get heightWritten => '175 ಸೆಂ.ಮೀ. ಒಳ. ತಲುಪಿಸಿದ್ದು.';
	@override String get heightWriteFailed => 'ಈಗ ದಾಖಲಿಸಲು ಸಮಯವನ್ನು ಸಂಪರ್ಕಿಸಿ.';
	@override String get noNotifications => 'ಯಾವುದೇ ಕರೆಯದ ಅಗತ್ಯಗಳಲ್ಲಿ ಇಲ್ಲ.';
	@override String get testNotificationScheduled => 'ನೀವು ಕಲ್ಪನೆಯ ತರավարման ಹೊಸ್ತಾರ್ನ ಮೇಲೆ 10 ಸೆಕೆಂಡು.';
	@override String get testNotificationBody => 'ಈವು ನಿಯೋಜನೆಯು 10 ಸೆಕೆಂಡುಗಳಲ್ಲಿಯಲ್ಲೂ.';
	@override String get breakfastNotificationTriggered => 'ನೀವು ಬೆಳಗಿನ ಆಹಾರದ ಸೂಚನೆಯನ್ನು ಪೊಲೀಸರು.';
	@override String get allNotificationsCancelled => 'ಎಲ್ಲಾ ಅಗತ್ಯವನ್ನು ನಿರ್ದಿಷ್ಟನಾಡಿಲ್ಲ.';
	@override String get fetchingData => 'ಕಳೆದ 7 ದಿನಗಳಲ್ಲಿ ಮಾಹಿತಿಗಳನ್ನು ವೀಕ್ಷಿಸುತ್ತೇವೆ...';
	@override String id({required Object id}) => 'ಐಡಿ: ${id}';
}

// Path: health
class _TranslationsHealthKn implements TranslationsHealthEn {
	_TranslationsHealthKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕಕ್ಕೆ ಸಮಾನೂಕರಣ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';
	@override String get mealSynced => 'ಆಹಾರವನ್ನು ಆರೋಗ್ಯ ಸಂಪರ್ಕದೊಂದಿಗೆ ಸಮನ್ವಯಿತವಾಗಿತ್ತು';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesKn implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionKn foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionKn._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisKn aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisKn._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationKn healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationKn._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderKn implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನೀವು ಯಾವುದೇ ಲಿಂಗದದ್ದೇ?';
	@override String get description => 'ಲಿಂಗವು ನಿಮ್ಮ ಮೂಲ ವರ್ಗ ಪರಿಚಯವನ್ನು (ಬಿಎಂಆರ್) ನಿಖರವಾಗಿ ಗಣನೆ ಮಾಡಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ.';
	@override String get next => 'ಮುಂದೆ';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightKn implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನೀವು ಎಷ್ಟು ಎದ್ದಿದ್ದಾರೆ?';
	@override String get description => 'ನಿಮ್ಮ ಎತ್ತರವು ನಿಮ್ಮ ಬಿಎಂಐ ಮತ್ತು ಶಕ್ತಿಯ ಅಗತ್ಯಗಳನ್ನು ನಿಖರವಾಗಿ ಗಣನೆ ಮಾಡುತ್ತವೆ.';
	@override String get metric => 'ಮೆಟ್ರಿಕ್';
	@override String get imperial => 'ಮೋಸದ';
	@override String get next => 'ಮುಂದೆ';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightKn implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'ನಿಮ್ಮ ಪ್ರಸ್ತುತ ತೂಕ ಎಷ್ಟು?';
	@override String get currentDescription => 'ನಿಮ್ಮ ಪ್ರಸ್ತುತ ತೂಕವು ನಿಮ್ಮ ದೈನಂದಿನ ಗುರಿಗಳನ್ನು ವೈಯುಕ್ತಿಕಗೊಳಿಸಲು ಅಗತ್ಯವಿದೆ.';
	@override String get targetTitle => 'ನಿಮ್ಮ ಗುರಿ ತೂಕ ಯಾವುದು?';
	@override String get targetDescription => 'ಲೆಕ್ಕ ಹಾಕಲಾದ ಗುರಿ ತೂಕವು ನಿಮ್ಮ ದೀರ್ಘಕಾಲीन ಯೋಧೆಯಲ್ಲಿ ನಮಗೆ ಸಹಾಯ ಮಾಡುತ್ತದೆ.';
	@override String get metric => 'ಮೆಟ್ರಿಕ್';
	@override String get imperial => 'ಮೋಸದ';
	@override String get next => 'ಮುಂದೆ';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeKn implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನಿಮ್ಮ ಜನ್ಮದಿನ ಏನು?';
	@override String get description => 'ನಿಮ್ಮ ಬಳಿಯ ವಯಸ್ಸು ನೀವು ಎಷ್ಟು ಕ್ಯಾಲೊರಿಗೆ ಅಗತ್ಯವಿದೆ ಎಂದು ನಿಖರವಾಗಿ ಗಣನೆ ಮಾಡಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ.';
	@override String get next => 'ಮುಂದೆ';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleKn implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ಇಳಿವಟ್ಟ';
	@override String get healthy => 'ಆರೋಗ್ಯಕರ';
	@override String get overweight => 'ಒಬ್ಬರಿಗೂ ಹೆಚ್ಚು';
	@override String get obese => 'ಮೋಡೋಣ';
	@override late final _TranslationsOnboardingBmiScaleCategoriesKn categories = _TranslationsOnboardingBmiScaleCategoriesKn._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesKn messages = _TranslationsOnboardingBmiScaleMessagesKn._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalKn implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನಿಮ್ಮ ಗುರಿ ಯಾವುದು?';
	@override String get description => 'ನೀವು ಏನು ಸಾಧಿಸಲು ಬಯಸುತ್ತೀರಿ ಎಂಬುದನ್ನು ಉತ್ತಮವಾಗಿ ವಿವರಿಸುವ ಗುರಿಯನ್ನು ಆಯ್ಕೆ ಮಾಡಿ';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelKn implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನೀವು ಎಷ್ಟು ಕ್ರಿಯಾತ್ಮಕ?';
	@override String get description => 'ಇದು ನಿಮ್ಮ ದೈನಂದಿನ ಕ್ಯಾಲೊರಿಗಳನ್ನು ಹೆಚ್ಚು ನಿಖರವಾಗಿ ಗಣನೆ ಮಾಡಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectKn implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕವನ್ನು ಸಂಪರ್ಕಿಸಿ';
	@override String get description => 'ಉತ್ತಮ ಪರಿಣಾಮಗಳು ಮತ್ತು ಸ್ವಾಯತ್ತ ಕ್ಯಾಲೊರಿ ಲೆಕ್ಕಾಂಶಕ್ಕಾಗಿ ನಿಮ್ಮ ಆರೋಗ್ಯದ ಮಾಹಿತಿ ಸಂಕಲನ ಮಾಡಿ';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingKn automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingKn._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsKn progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsKn._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationKn seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationKn._(_root);
	@override String get connected => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕ ಬಿಗಿಯಾದ';
	@override String get notConnected => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕ ಬಿಗಿಯಿಲ್ಲ';
	@override String get setup => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕವನ್ನು ನೀಡಲು';
	@override String get skipForNow => 'ಈಗ ಉಲ್ಲೇಖವನ್ನು ತಪ್ಪಿಸಲು';
	@override String get statusConnected => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕ ಜೋಡಿಸಲಾಗಿದೆ.';
	@override String get statusSuccess => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕ ಯಶಸ್ವಿಯಾಗಿ ಜೋಡಿಸಲಾಗಿಯೋದು!';
	@override String statusPermissionDenied({required Object appLabel}) => 'ಅನುಮತಿ ನಿರಾಕರಿಸಲಾಗಿದೆ. ದಯವಿಟ್ಟು ${appLabel} ಗೆ ಸೋಮವಾರದ ಮಾಹಿತಿಯ ಅನುಮತಿಯನ್ನು ಚಲಾಯಿಸಿ.';
	@override String statusError({required Object error}) => 'ಆರೋಗ್ಯವನ್ನು ಹೊಂದಿಸಲು ಸಮಸ್ಯೆ: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementKn implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessKn trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessKn._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileKn healthProfile = _TranslationsOnboardingReinforcementHealthProfileKn._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleKn goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleKn._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalKn implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನಿಮ್ಮ ದೈನಂದಿನ ಗುರಿ ಹೊಂದಿಸಲು';
	@override String get titleSet => 'ನಿಮ್ಮ ದೈನಂದಿನ ಗುರಿ';
	@override String get description => 'ನಿಮ್ಮ ಆರೋಗ್ಯದ ಪ್ರವಾಸವನ್ನು ಪ್ರಾರಂಭಿಸಲು ದೊರೆತ ಕರವೇ, ನಿಮ್ಮ ದೈನಂದಿನ ಕ್ಯಾಲೊರಿಗಳನ್ನು ಇಲ್ಲಿ ಕಿಕ್‌ಆರ್ ಅನ್ನು ಹೊಂದಿಸಲು.';
	@override String get descriptionSet => 'ನಿಮ್ಮ ಸುಕ್ತಿಯು ಹೊಂದಿಸಲಾಗಿದೆ! ಇದು ನಿಮ್ಮ ದೈನಂದಿನ ಕ್ಯಾಲೊರಿಗಳನ್ನು ನಿಮಗೆ ಮಾರ್ಗದರ್ಶನ ನೀಡುತ್ತದೆ.';
	@override String get yourGoal => 'ನಿನ್ನ ಗುರಿ';
	@override String get dailyCalories => 'ದೈನಂದಿನ ಕ್ಯಾಲೊರಿ (ಕೆಕ್ಯಲ್)';
	@override String get setGoal => 'ಗುರಿ ಹೊಂದಿಸಿ';
	@override String get intake => 'ಭೋಜನ';
	@override String get burned => 'ಹರಿದ';
	@override String get weightImpact => 'ತೂಕ ಪರಿಣಾಮ';
	@override String get estLoss => 'ಎಂ. ಇಷ್ಟ. ಕಳೆದುಕೊಂಡು';
	@override String get estGain => 'ಎಂ. ಇಷ್ಟ. ಗಳಿಸುವ';
	@override String get kcal => 'ಕೆಕ್ಯಲ್';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryKn implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ದೈನಂದಿನ ಸಾರಾಂಶ';
	@override String get calories => 'ಕ್ಯಾಲೊರಿ';
	@override String get carbs => 'ಕೋಶ';
	@override String get protein => 'ಪ್ರೋಟೀನ್';
	@override String get fat => 'ಹೆಣ್ಣೆ';
	@override String get fiber => 'ಕಬ್ಬು';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressKn implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಇಂದು ಮತ್ತು ಪೂರೈಸುವ ಸ್ಥಳ';
	@override String get target => 'ಗುರಿ';
	@override String get current => 'ಪ್ರಸ್ತುತ';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryKn implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => '7-ದಿನ ಕರುಡ ಕಹವು';
	@override String get noHistoryYet => 'ಇನ್ನು ಯಾವುದೇ ಐತಿಹಾಸಿಕ ದಾಖಲೆ ಇಲ್ಲ';
	@override String get startLogging => 'ನಿಮ್ಮ ಆಹಾರವನ್ನು ಲೆಕ್ಕ ಹಾಕುವುದು ಇಲ್ಲಿ 7 ದಿನಗಳ ಕಾಲ ಪ್ರಮಾಣವನ್ನು ನೋಡಲು ಹೊಂದಿಸುತ್ತದೆ.';
}

// Path: home.mealLog
class _TranslationsHomeMealLogKn implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಲಾಗ್ ಮಾಡಿದ ಆಹಾರ';
	@override String get emptyMessage => 'ನಿಮ್ಮ ಅಂತಿಮ ಆಹಾರವನ್ನು ಲೆಕ್ಕ ಹಾಕಲು ಛಾಯಾಚಿತ್ರವನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ.';
	@override String get noMealsToday => 'ಇಂದ ಮೊದಲಾದ ಆಹಾರ ಯಾವುದೇ ದಾಖಲೆ ಇಲ್ಲ';
	@override String get seeAllMeals => 'ಎಲ್ಲಾ ಆಹಾರಗಳನ್ನು ನೋಡಿ';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionKn implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಎಐ ಮೂಲಕ ತ್ವರಿತ ಸೇರಿಸುವಿಕೆ';
	@override String get description => 'ನಿಮ್ಮ ಆಹಾರವನ್ನು ವಿವರಿಸಿರಿ ಮತ್ತು ಏಐ ವಿವರಗಳನ್ನು ನಿರ್ವಹಿಸಲು ಬಿಡಿ.';
	@override String get hint => 'ಉದಾಹರಣೆಗೆ: ನಾನು ಬೆಳಗಿನ ಕಾಳಲ್ಲಿ ಒಂದು ದೊಡ್ಡ ತಟ್ಟೆ ಒಡೆಯಿತು ...';
	@override String get analyzeMeal => 'ಆಹಾರವನ್ನು ವಿಶ್ಲೇಷಿಸಿ';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsKn implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಮುಗಿಯುತ್ತಿರುವ ಆಹಾರ';
	@override String get description => 'ನಿಮ್ಮ ಮೆಚ್ಚಿನ ಆಹಾರದಲ್ಲಿ ಸುಲಭವಾಗಿ ಸೇರಿಸಿ.';
	@override String get noFavorites => 'ಏನೂ ಶುಭಾಶಯ ವಹಿಸುವ ಆಹಾರ ಇಲ್ಲ.';
	@override String get addFavoriteHint => 'ಅವಶ್ಯ ಫಾಕ್ನ್ನಿ, ಆಹಾರವನ್ನು ಮರು ಪ್ರಮುಖ ಹಾಗೆ ಪ್ರಕಟಿಸಲು.';
	@override String get seeAll => 'ಎಲ್ಲಾ ನೋಡಿ';
	@override String get add => 'ಸೇರಿಸು';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapKn implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನಿಮ್ಮ ಆಹಾರವನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ ಮತ್ತು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ';
	@override String get description => 'ನಿಮ್ಮ ಆಹಾರಕ್ಕೆ ಛಾಯಾಚಿತ್ರವನ್ನು ತೆಗೆದುಕೊಂಡು, ಏಐ ವಿಶ್ಲೇಷಣೆಗಾಗಿ ಬಿಡಿ.';
	@override String get openCamera => 'ಕ್ಯಾಮೆರಾವನ್ನು ತೆರೆಯಿರಿ';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthKn implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಆರೋಗ್ಯವನ್ನು ಆರ್ ಬಾಗಣೆ';
	@override String get description => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕದೊಂದಿಗೆ ನಿಮ್ಮ ಪೋಷಣಾ ಮಂಡಿತೆಯನ್ನು ಸಂಪೂರ್ಣಗೊಳಿಸು';
	@override String get install => 'ಸ್ಥಾಪಿಸು';
	@override String get connect => 'ಸಂಪರ್ಕ';
}

// Path: meal.nutrition
class _TranslationsMealNutritionKn implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get calories => 'ಕ್ಯಾಲೊರಿ';
	@override String get carbs => 'ಕೋಶ (ಗಾಗಿ)';
	@override String get protein => 'ಪ್ರೋಟೀನ (ಗಾಗಿ)';
	@override String get fat => 'ಹೆಣ್ಣೆ (ಗಾಗಿ)';
	@override String get fiber => 'ಕಬ್ಬು (ಗಾಗಿ)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationKn implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಆಹಾರವನ್ನು ಅಳಿಸುವಿರಾ?';
	@override String get message => 'ನೀವು ಈ ಆಹಾರವನ್ನು ಅಳಿಸಲು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳುತ್ತೀರಾ?';
	@override String get cancel => 'ರದ್ದು';
	@override String get delete => 'ಅಳಿಸಿ';
}

// Path: profile.sections
class _TranslationsProfileSectionsKn implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ಪ್ರೊಫೈಲ್';
	@override String get basicInformation => 'ಮೂಲ ಮಾಹಿತಿ';
	@override String get goalsAndActivity => 'ಗುರಿಗಳು ಮತ್ತು ಚಟುವಟಿಕೆ';
	@override String get calculatedValues => 'ಚೆನ್ನಾಗಳ ತ್ಯಾಜ್ಯ';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesKn implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'ಬಿಎಂಆರ್';
	@override String get tdee => 'ಟಿಡಿಈಇ';
	@override String get dailyGoal => 'ದೈನಂದಿನ ಗುರಿ';
	@override String get calPerDay => 'ಕ್ಯಾಲೊರಿ/ದಿನ';
	@override String get notAvailable => 'ಲಭ್ಯವಿಲ್ಲ';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsKn implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ವೈಯುಕ್ತಿಕ ಮಾಹಿತಿ';
	@override String get physicalMeasurements => 'ದೇಹದ ಅಳೆಯೆಗಳು';
	@override String get goalsAndActivity => 'ಗುರಿಗಳು ಮತ್ತು ಚಟುವಟಿಕೆ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersKn implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get male => 'ಮಹಿಳ';
	@override String get female => 'ಹೆಣ್ಣು';
	@override String get other => 'ಇತರ';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsKn implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightKn loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightKn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightKn maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightKn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightKn gainWeight = _TranslationsEditProfileWeightGoalsGainWeightKn._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsKn implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryKn sedentary = _TranslationsEditProfileActivityLevelsSedentaryKn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveKn lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveKn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveKn moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveKn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveKn veryActive = _TranslationsEditProfileActivityLevelsVeryActiveKn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveKn extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveKn._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsKn implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ಪ್ರೊಫೈಲ್';
	@override String get localization => 'ಸ್ಥಳಾಂತರ';
	@override String get notifications => 'ಅಗತ್ಯದ';
	@override String get supportAndLegal => 'ಸೆಟರ್ ಮತ್ತು ಕಾನೂನು';
	@override String get dangerZone => 'ಸ್ವಯಂ ದಾರಿಯಿಂದ';
	@override String get developer => 'ಅನಿ ಈವೆಂಟ್';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileKn implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಪ್ರೊಫೈಲ್ ಸಂಪಾದಿಸಿ';
	@override String get subtitle => 'ನಿಮ್ಮ ವೈಯುಕ್ತಿಕ ಮಾಹಿತಿಯನ್ನು ನವೀಕರಣ ಮಾಡಲು';
}

// Path: settings.language
class _TranslationsSettingsLanguageKn implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಭಾಷೆ';
	@override String get subtitle => 'ನೀವು ಇಷ್ಟಪಡುವ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆ ಮಾಡಿ';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitKn implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಎತ್ತರದ ಘಟಕ';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitKn implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ತೂಕದ ಘಟಕ';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersKn implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಆಹಾರವನ್ನು ನೆನಪಿಸುವಿಕೆ';
	@override String get subtitle => 'ಸಮಯವು ತೊಂದರೆಯಿಲ್ಲವನ್ನು ತಡೆಯುತ್ತಿದೆ';
}

// Path: settings.theme
class _TranslationsSettingsThemeKn implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಥೀಮ್';
	@override String get subtitle => 'ನೀವು ಇಷ್ಟಪಟ್ಟ ಥೀಮ್ ಅನ್ನು ಆಯ್ಕೆ ಮಾಡಿ';
	@override String get light => 'ಬೆಳಕಿನ';
	@override String get dark => 'ಕಾರಣ';
	@override String get system => 'ಸಿಸ್ಟಮ್';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackKn implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಫೀಡ್‌ಬಾಕ್ ನೀಡುವಿಕೆ';
	@override String subtitle({required Object appLabel}) => '${appLabel} ಅನ್ನು ಉತ್ತಮವಾಗಿ ಮಾಡಲು ಸಹಾಯ';
	@override String emailSubject({required Object appLabel}) => '${appLabel} ನ ಆರೋಪ';
	@override String get emailBodyPrefix => 'ದಯವಿಟ್ಟು, ನಿಮ್ಮ ಫೀಡ್‌ಬಾಕ್ ನೀಡಿ:';
	@override String get appVersion => 'ಆಪ್ಲಿಕೇಶನ್ ಆವೃತ್ತಿ';
	@override String get device => ' ಸಾಧನ';
	@override String get osVersion => 'ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಮ್ ಆವೃತ್ತಿ';
	@override String get uid => 'ಯುಐಡಿ';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataKn implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಎಲ್ಲಾ ಮಾಹಿತಿಗೆ ತೆರವುಗೊಳಿಸಲು';
	@override String get subtitle => 'ನೀವು ಎಲ್ಲಾ ಮಾಹಿತಿ ಅಳಿಸಿದರೆ, ನಿಮ್ಮ ಭಾಗಾತ್ಮಕ ಚಿತ್ರ ಸ್ಥಾಯ್ಡಿನ್ ಅನ್ನು ಸುರಕ್ಷಿತವಾಗಿ ತೆಗೆದುಕೊಳ್ಳಿರಿ.';
	@override String get confirmationTitle => 'ಹವಾ ಇಲ್ಲಿ ತೆರವುಗೊಳಿಸುತ್ತಿರಾ?';
	@override String get confirmationMessage => 'ಈ ಕ್ರಮವನ್ನು ಯಶಸ್ವಿಯಾಗಿಸುವುದು ಸಾಧ್ಯವಿಲ್ಲ. ನಿಮ್ಮ ಎಲ್ಲಾ ಲಾಗ್ ಮಾಡಿದ ಆಹಾರ, ಮುತನಗಳು ಮತ್ತು ಪ್ರೊಫೈಲ್ ಸೆಟಿಂಗ್‌ಗಳನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಲಾಗುವುದು.';
	@override String get cancel => 'ರದ್ದು';
	@override String get clearEverything => 'ಎಲ್ಲವನ್ನು ತೆರವುಗೊಳಿಸಲು';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsKn implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಡಿಬಗ್ ಆಯ-options';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastKn implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಬೆಳಗಾಗುವ ಹೊಸ್ತಲು! 🍳';
	@override String get body => 'ನೀವು ಬೆಳಗಿನ ಆಹಾರವನ್ನು ತಪ್ಪಿಸಲು ಮರೆಯುವಿಕೆ';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchKn implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಮಧ್ಯಾಹ್ನದಲ್ಲಿ ಹೊಸ್ಟಲು! 🥗';
	@override String get body => 'ನಾನು ಮಧ್ಯಾಹ್ನದ ಆಹಾರವನ್ನು ತಪ್ಪಿಸಲು ಮರೆಯುವಿಕೆ';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerKn implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಯಜಮಾನದ ಹೊಸ್ತಲು! 🍽️';
	@override String get body => 'ನೀವು ರಾತ್ರಿ ಆಹಾರವನ್ನು ತಪ್ಪಿಸಲು ಮರೆಯುವಿಕೆ';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackKn implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಸ್ನ್ಯಾಕ್ ಸಮಯ! 🍎';
	@override String get body => 'ಅರೋಗ್ಯಕರ ಸ್ನಾಕ್ಗೆ ಸಮಯ';
}

// Path: notifications.test
class _TranslationsNotificationsTestKn implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಪರೀಕ್ಷಾರೂಪ : ಸಾಯಿಸಿ';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapKn implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} ಸುಮಾರು ಹಂಪಿಯಿಂದ ಎನ್ಕಳಾದ ಮಾಹಿತಿಯನ್ನು ಒದಗಿಸುವುದು. ನಿಮ್ಮ ಪೂರಕ ಬದಲಾವಣೆಯ ಮೇಲೆ ಆದಾರಿತ ವೈರುದ್ದು. ಮಾರ್ಗದರ್ಶಕವಾಗಿ ಬಳಸಬೇಕು, ಖಚಿತ ಮೂಲವಾಗಿ ಇಲ್ಲ. ವೈಯುಕ್ತಿಕ ಪೋಷಣಾ ಸಲಹೆಗೆ ಸಾರ್ವಜನಿಕ ವೈದ್ಯಕೀಯ ಸಲಹೆ ಪಡೆಯಿರಿ.';
	@override late final _TranslationsDisclaimerSnapPortionSizeKn portionSize = _TranslationsDisclaimerSnapPortionSizeKn._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsKn preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsKn._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsKn ingredients = _TranslationsDisclaimerSnapIngredientsKn._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsKn databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsKn._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateKn implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ತರಾಷ್ಟ್ರೀಯ ತುIm';
	@override String get description => 'ಹೊರೆಯದ ಪ್ರಮಾಣವು ಸ್ಥಳೀಯ ಸಾಮಾನ್ಯ ಪ್ರಧಾನಿಗಳ ಮೇಲೆ ಬಲವಾದ ಸಂಪೂರ್ಣ ಸೂಚಕ.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyKn calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyKn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsKn biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsKn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightKn waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightKn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceKn professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceKn._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsKn implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'ಅಗತ್ಯಗಳು';
	@override String get healthConnect => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕ';
	@override String get appInfo => 'ಆಪ್ಲಿಕೇಶನ್ ಮಾಹಿತಿಗೆ';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionKn implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಸುಧಾರಿತ ಆಹಾರ ಗುರುತಿಸುವಿಕೆ';
	@override String get description => 'ಒಬ್ಬ ಫೋಟೋ ತೆಗೆದು, ಏಐ ಅವರಿಗೆ ನಿಮ್ಮ ಆಹಾರವನ್ನು ಗುರುತಿಸಲು ಬಿಡಿ';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisKn implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಎಐ ವಿಶ್ಲೇಷಣೆ';
	@override String get description => 'ನಿಮ್ಮ ವಿವರಣೆಗಳಿಂದ ತಕ್ಷಣದ ಪೋಷಣಾ ಮಾಹಿತಿಯನ್ನು ಪಡೆಯಿರಿ';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationKn implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಆರೋಗ್ಯ ಸಮಾವೇಶ';
	@override String get description => 'ಬಹುದೂರವಾದ ಒಳನೋಟಗಳಿಗಾಗಿ ಆರೋಗ್ಯ ಸಂಪರ್ಕವನ್ನು ಸಂಪರ್ಕಿಸಿ';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesKn implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ಇಳಿವಟ್ಟ';
	@override String get healthyWeight => 'ಆರೋಗ್ಯಕರ ತೂಕ';
	@override String get overweight => 'ಒಬ್ಬರಿಗೂ ಹೆಚ್ಚು';
	@override String get obese => 'ಮೋಡೋಣ';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesKn implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ನಾವು ನಿಮಗೆ ಪೋಷಕ-ಸಮೃದ್ಧವಾದ ನೀಡುವ ಮೂಲಕ ಸಮತೋಲನ ತೂಕವನ್ನು ತಲುಪಲು ಸಹಾಯ ಮಾಡಬಹುದು.';
	@override String get healthy => 'ಚೆನ್ನಾಗಿದೆ! ನೀವು ಆರೋಗ್ಯಕರ ಶ್ರೇಣಿಯಲ್ಲಿ ಇದ್ದೀರಿ. ನಾವು ನಿಮ್ಮ ಜೀವಂತತೆ ಮತ್ತು ಶಕ್ತಿ ಮಟ್ಟವನ್ನು ಉಳಿಸಲು ಸಹಾಯ ಮಾಡುತ್ತೇವೆ.';
	@override String overweight({required Object appLabel}) => '${appLabel} ನಿಮ್ಮ ಗುರಿಯನ್ನು ಸುಲಭವಾಗಿ ತಲುಪಲು ಎಐ-ಶಕ್ತಿಯ ಉಲ್ಲೇಖವನ್ನು ಸಹಾಯ ಮಾಡುತ್ತದೆ.';
	@override String get obese => 'ನಾವು ನಿಮ್ಮ ಆರೋಗ್ಯದ ಗುರಿಗಳಿಗಾಗಿ ವೈಯುಕ್ತಿಕ ಮಾರ್ಗದರ್ಶನ ಮತ್ತು ನಿರಂತರ ತಂತ್ರಗಳನ್ನು ಬೆಂಬಲಿಸುತ್ತೇವೆ.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingKn implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಸ್ವಾಯತ್ತ ಕ್ಯಾಲೊರಿ ಲೆಕ್ಕಾಚಾರ';
	@override String get description => 'ನಿಮ್ಮ ಫಿಟ್ನೆಸ್ ಆಪ್‌ಗಳಿಂದ ಉಲ್ಲೇಖಿತ ಫಲಾನುಭವಗಳನ್ನು ಲೆಕ್ಕ ಹಾಕಿ';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsKn implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಪ್ರಗತಿ ಒಳನೋಟಗಳು';
	@override String get description => 'ನೀವು ಆರೋಗ್ಯದ ತ್ರೇಂಡುಗಳ ಬಗ್ಗೆ ವಿವರವಾದ ಒಳನೋಟಗಳನ್ನು ಪಡೆಯಿರಿ';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationKn implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಸರಳವಾದ ಸಮಾವೇಶ';
	@override String get description => 'ನಿಮ್ಮ ಆಯ್ಕೆಪಡಿಸಿದ ಆರೋಗ್ಯ ಆಪ್ಸ್ ಸ್ಥಳಾಂತರಿಸಿ';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessKn implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನೀವು ಒಬ್ಬರಿಗೆ ಮಾತ್ರ ಅಲ್ಲ';
	@override String get genericMessage => 'ಶೋಧನೆ ನಿಖರವಾಗಿ ಲೆಕ್ಕವನ್ನು ಹೊಂದಿದ್ದು, ದೀರ್ಘಕಾಲದ ಯಶಸ್ಸಿನ #1 ನಿರ್ಧಾರವನ್ನು ಹೊಂದಿದೆ.';
	@override String personalizedMessage({required Object goal, required Object age, required Object gender}) => 'ನೀವು ${goal} ಪಡೆಯಲು ಹುಡುಕುತ್ತಿರುವ ${age} ವರ್ಷದ ${gender} ಗೆ, ನಿಖರ ಮಾಹಿತಿಯ ಲೆಕ್ಕವೂ #1 ಯಶಸ್ಸಿನ ನಿರ್ಧಾರ.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} ಕೈಯಿಂದ ಮಾಡುವುದು ವಿನ್ಯಾಸವಾಗುತ್ತದೆ, 10x ಸುಲಭವಾಗಿದೆ.';
	@override String get getStartedTitle => 'ಪ್ರಾರಂಭಿಸಲು ತಯಾರಾಗಿದ್ದೀರಾ?';
	@override String get tipPhoto => 'ತ್ವರಿತ ವಿಶ್ಲೇಶಣೆಗಾಗಿ ನಿಮ್ಮ ಆಹಾರಗಳ ಛಾಯಾಚಿತ್ರವನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ';
	@override String get tipConsistency => 'ಸಂಯೋಜಿತವಾಗಿರುವ ಲೆಕ್ಕವನ್ನು ಲೆಕ್ಕಹಾಕಲು ನಿರಂತರವಾಗಿ ಲೆಕ್ಕ ಹಾಕಿ';
	@override String get tipProgress => 'ಪ್ರೇರಿತವಾಗಲು ನಿಮ್ಮ ಪ್ರಗತಿ ಪ್ರತಿ ದಿನವು ಅನ್ವಯವಾಗುತ್ತದೆ';
	@override String get button => 'ಹೋಗೋಣ';
	@override String get defaultGender => 'ವ್ಯಕ್ತಿ';
	@override String get defaultGoal => 'ಹೆಚ್ಚಿನ ಆರೋಗ್ಯ';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileKn implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನಿಮ್ಮ ಆರೋಗ್ಯ ಪ್ರವೃತ್ತಿ';
	@override String bmiDescription({required Object bmi}) => 'ನಿಮ್ಮ ಮೆಟ್ರಿಕ್‌ಗಳನ್ನು ಆಧರಿಸಿ, ನಿಮ್ಮ BMI ${bmi} ಆಗಿದೆ.';
	@override String get finalizeDescription => 'ನಿಮ್ಮ ಅನುಭವವನ್ನು ವ್ಯಾಪಕವಾಗಿ ರೂಪಿಸಲು ನಿಮ್ಮ ಪ್ರವೃತ್ತಿಯನ್ನು النهಾಯಿ ಮಾಡೋಣ.';
	@override String get goalGain => 'ಹಾಡಿಕೊಳ್ಳು';
	@override String get goalLose => 'ಲಾಭ';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'ನೀವು ನಿಮ್ಮ ಗುರಿಯನ್ನು ತಲುಪಲು ${direction} ${diff} ${unit} ಮಾಡಬೇಕು.';
	@override String get goalReached => 'ನೀವು ನಿಮ್ಮ ಗುರಿಯ ತೂಕವನ್ನು ತಲುಪಿದ್ದೀರಿ! ನಾವು ನಿಮ್ಮನ್ನು ಇದನ್ನು ಕಾಪಾಡಲು ಸಹಾಯಿಸುತ್ತೇವೆ.';
	@override String get button => 'ಹೋಗೋಣ';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleKn implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಅದ್ಭುತ ಪ್ರಾರಂಭ!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'ನೀವು ${goalText} ಬದ್ಧವಾದ ಪ್ರಥಮ ಹೆಜ್ಜೆ எடுத்தಿದ್ದೀರಿ. ನೀವು ${activityText} ಇದ್ದಾಗ, ${appLabel} ನಿಮ್ಮ ಜೀವನ ಶೈಲಿಗೆ ಹೊಂದುವಂತೆ ನಿಮ್ಮ ಗುರಿಗಳನ್ನು ಹೊಂದಿಸುತ್ತದೆ.';
	@override String get personalizedTargets => 'ವೈಯಕ್ತಿಕ calorie ಗುರಿಗಳು';
	@override String get aiMealDetection => 'AI ಮೂಲಕ ತಿನಿಸುವ ಮೇಲೆ ಪತ್ತೆ';
	@override String get macroBreakdowns => 'ವಿವರವಾದ ಮಾಕ್ರೋ-ಜೀರ್ಣಪದಾರ್ಥ ಮೇಲ್ವಿಚಾರಣೆಗಳು';
	@override String get button => 'ಹೋಗೋಣ';
	@override String get defaultGoal => 'ನಿಮ್ಮ ಗುರಿಗಳು';
	@override String get defaultActivity => 'ಸಕ್ರಿಯ';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightKn implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ತೂಕ ಕಳೆದುಕೊಳ್ಳಿ';
	@override String get description => 'ತೂಕವನ್ನು ಕಳೆದುಕೊಳ್ಳುವುದು ಮಾಡಲು ಕ್ಯಾಲೊರಿ ಕಡಿಮೆ ಮಾಡಿ';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightKn implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ತೂಕವನ್ನು ಉಳಿಸಿ';
	@override String get description => 'ನಿಮ್ಮ ಪ್ರಸ್ತುತ ತೂಕವನ್ನು ಉಳಿಸುವುದು';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightKn implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ತೂಕ ಹೆಚ್ಚಿಸಿ';
	@override String get description => 'ಹೆಚ್ಚನ್ನು ಪಡೆಯಲು ಕ್ಯಾಲೊರಿ ಹೆಚ್ಚಿಸಿ';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryKn implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ಹೆಸರಾಯಿತ';
	@override String get description => 'ಊಟಸದ ಇರನೆಯನ್ನು ಮಾಡಿಲ್ಲ';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveKn implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ಸ್ವಲ್ಪ ಕ್ರಿಯಾತ್ಮಕ';
	@override String get description => 'ಮೆದುಳ ಚಟುವಟಿಕೆ 1-3 ದಿನ/ನೀವು';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveKn implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ಮದ್ವಿನಾ ಕ್ರಿಯಾತ್ಮಕ';
	@override String get description => 'ಮದ್ಯಮ ಚಟುವಟಿಕೆ 3-5 ದಿನ/ನೀವು';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveKn implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ಚಂಡಾಲವಾದ ಚಟುವಟಿಕೆ';
	@override String get description => 'ಕಠಿಣ ಚಟುವಟಿಕೆಗಳು 6-7 ದಿನ/ನೀವು';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveKn implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ಅತಿ ಚಟುವಟಿಕೆ';
	@override String get description => 'ಲೆಕ್ಕ ಹಾಕುವ ದುಡಿಯುವಂತೆ કંಸು ಸೇರುವಂತೆ';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeKn implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಕೋಶದ ಗಾತ್ರ';
	@override String get description => 'ಮೌಲ್ಯವನ್ನು ನಿಖರವಾಗಿ ಪರಿಗಣಿಸುವ ನೀವು ಪ್ರಮಾಣವನ್ನು ಸರಿ ಮಾಡಲು ಸದಾ ಬಳಸಬೇಕು.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsKn implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಆಹಾರ ನಿರ್ಣಯಗಳು';
	@override String description({required Object appLabel}) => 'ಚೆನ್ನಾಗು ಶೇಖರಣೆ ವಿಧಾನಗಳು ಆಹಾರದ ಪೋಷಕಾಂಶ ಬೆಲೆಗಳನ್ನು ಮಹತ್ವಪೂರ್ಣವಾಗಿ ಬದಲಾಯಿಸಬಹುದು. ${appLabel} ಸಹಜವಾಗಿ ಈ ಬದಲಾವಣೆಗಳನ್ನು ಪರಿಗಣಿಸುವುದಿಲ್ಲ.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsKn implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಪದಾರ್ಥಗಳು';
	@override String get description => 'ಒಂದು ಸಾಕಷ್ಟು ಮಾಹಿತಿಯಿಂದ ವಂಚಿತ ಮಾಡಲು ಅಂಗಸಂಭಂಧವಿದ್ದರೂ, ಆಡಳಿತ ಅಥವಾ ಏನೂ ಸಹ ವ್ಯಕ್ತಿಯನ್ನು ಸೂಚಿಸುತ್ತದೆ.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsKn implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಡೇಟಾಬೇಸ್ ಪ್ರಯೋಜನಗಳ';
	@override String description({required Object appLabel}) => '${appLabel} ಆಹಾರ ಡೇಟಾಬೇಸ್ ಅನೇಕದಾದರೂ ಅಧಿಕ ಪ್ರಾಬಲ್ಯದವಾದ ಆಹಾರ ವಸ್ತುವನ್ನು ಒಳಗೊಂಡಿಲ್ಲ.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyKn implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಕ್ಯಾಲೊರಿ ಖಚಿತತೆಗೆ';
	@override String get description => 'ಈ ಅಂದಾಜು ನೀವು ದಾಖಲಿಸಿರುವ ಕ್ಯಾಲೊರಿ ಸೇರ್ಪಡೆಯು ಮತ್ತು ವ್ಯಯಕ್ಕಿಂತ ಬೇರೆ ಯಾವುದಕ್ಕೂ ಸಚಾಟ್ ಆಗಿಯೇ ಇರುವಂತಾಗಿಲ್ಲ. ತಪ್ಪಾದ ಲಾಗಿಂಗ್‌ನಲ್ಲಿ ತಪ್ಪಾಗಿ ಮುನಿಸಿಕೊಂಡ ಸಂಪೂರ್ಣವಾಗಿ ಹಾನಿ ಅಂದಾಜು ಹೊರತಾಗಿದೆ.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsKn implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ಜೀವಶಾಸ್ತ್ರಾತ್ಮಕ ಕಾರಣಗಳು';
	@override String description({required Object appLabel}) => 'ನಿಜವಾದ ತೂಕ ಕಣ್ಮರೆಯಾಗಲು/ಲಾಭಕ್ಕೆ ಮೆಟಬೊಲಿಸ್, ಹಾರ್ಮೋನ್ಸ್, ನಿದ್ರೆ, ಒತ್ತಣೆ, ನೀರಿನ ಮಟ್ಟ ಮತ್ತು ಇತರೆ ವ್ಯಕ್ತಿಗತ ಕಾರಣಗಳು ಅವಶ್ಯಕವನ್ನು ಗುಣಪಡಿಸುತ್ತವೆ ಎಂದು ${appLabel} ಅಳೆಯಲಾರದು.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightKn implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನೀರು ತೂಕ ಮತ್ತು ಏರಿಳಿತಗಳು';
	@override String get description => 'ನಿಯಮಿತ ದಿನದ ತೂಕವು ನೀರಿನ ಹೊಡೆತ, ಜೀರ್ಣಪ್ರಕ್ರಿಯೆ ಮತ್ತು ಸಮಯದ ಕಾರಣದಿಂದ ಸಾಕಷ್ಟು ಬದಲಾಯಿಸಬಹುದು. ಅಂದಾಜು ಇದರಿಂದ ಸಂಭವಿಸುವ ದಿನಸಿ ಬದಲಾವಣೆಗಳನ್ನು ಪರಿಗಣಿಸುವುದಿಲ್ಲ.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceKn implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceKn._(this._root);

	final TranslationsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ವೃತ್ತಿಪರ ಮಾರ್ಗದರ್ಶನ';
	@override String get description => 'ಈ ಅಂದಾಜನ್ನು ವೈದ್ಯಕೀಯ ತೀರ್ಮಾನಗಳನ್ನು ಮಾಡುವುದಕ್ಕಾಗಿ ಬಳಸные. ವೈಯಕ್ತಿಕ ತೂಕ ನಿರ್ವಹಣೆಯ ಸಲಹೆಗಾಗಿ ಯಾವಾಗಲೂ ಆರೋಗ್ಯೋಪಾಯ ವೃತ್ತಿಪರ ಅಥವಾ ನೋಂದಾಯಿತ ವ್ಯಕ್ತಿವಿಶಾರೆಜ್ ಆಗಬೇಕು.';
}

/// The flat map containing all translations for locale <kn>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsKn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Kannada',
			'flag' => '🇮🇳',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} ಗೆ ಸುಸ್ವಾಗತ',
			'onboarding.subtitle' => 'ಎಐ ಗೆ ಶಕ್ತಿಯಾದ ನಿಮ್ಮ ವೈಯುಕ್ತಿಕ ಪೋಷಣಾ ಸಂಗಾತಿ',
			'onboarding.getStarted' => 'ಪ್ರಾರಂಭಿಸಿ',
			'onboarding.features.foodRecognition.title' => 'ಸುಧಾರಿತ ಆಹಾರ ಗುರುತಿಸುವಿಕೆ',
			'onboarding.features.foodRecognition.description' => 'ಒಬ್ಬ ಫೋಟೋ ತೆಗೆದು, ಏಐ ಅವರಿಗೆ ನಿಮ್ಮ ಆಹಾರವನ್ನು ಗುರುತಿಸಲು ಬಿಡಿ',
			'onboarding.features.aiAnalysis.title' => 'ಎಐ ವಿಶ್ಲೇಷಣೆ',
			'onboarding.features.aiAnalysis.description' => 'ನಿಮ್ಮ ವಿವರಣೆಗಳಿಂದ ತಕ್ಷಣದ ಪೋಷಣಾ ಮಾಹಿತಿಯನ್ನು ಪಡೆಯಿರಿ',
			'onboarding.features.healthIntegration.title' => 'ಆರೋಗ್ಯ ಸಮಾವೇಶ',
			'onboarding.features.healthIntegration.description' => 'ಬಹುದೂರವಾದ ಒಳನೋಟಗಳಿಗಾಗಿ ಆರೋಗ್ಯ ಸಂಪರ್ಕವನ್ನು ಸಂಪರ್ಕಿಸಿ',
			'onboarding.gender.title' => 'ನೀವು ಯಾವುದೇ ಲಿಂಗದದ್ದೇ?',
			'onboarding.gender.description' => 'ಲಿಂಗವು ನಿಮ್ಮ ಮೂಲ ವರ್ಗ ಪರಿಚಯವನ್ನು (ಬಿಎಂಆರ್) ನಿಖರವಾಗಿ ಗಣನೆ ಮಾಡಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ.',
			'onboarding.gender.next' => 'ಮುಂದೆ',
			'onboarding.height.title' => 'ನೀವು ಎಷ್ಟು ಎದ್ದಿದ್ದಾರೆ?',
			'onboarding.height.description' => 'ನಿಮ್ಮ ಎತ್ತರವು ನಿಮ್ಮ ಬಿಎಂಐ ಮತ್ತು ಶಕ್ತಿಯ ಅಗತ್ಯಗಳನ್ನು ನಿಖರವಾಗಿ ಗಣನೆ ಮಾಡುತ್ತವೆ.',
			'onboarding.height.metric' => 'ಮೆಟ್ರಿಕ್',
			'onboarding.height.imperial' => 'ಮೋಸದ',
			'onboarding.height.next' => 'ಮುಂದೆ',
			'onboarding.weight.currentTitle' => 'ನಿಮ್ಮ ಪ್ರಸ್ತುತ ತೂಕ ಎಷ್ಟು?',
			'onboarding.weight.currentDescription' => 'ನಿಮ್ಮ ಪ್ರಸ್ತುತ ತೂಕವು ನಿಮ್ಮ ದೈನಂದಿನ ಗುರಿಗಳನ್ನು ವೈಯುಕ್ತಿಕಗೊಳಿಸಲು ಅಗತ್ಯವಿದೆ.',
			'onboarding.weight.targetTitle' => 'ನಿಮ್ಮ ಗುರಿ ತೂಕ ಯಾವುದು?',
			'onboarding.weight.targetDescription' => 'ಲೆಕ್ಕ ಹಾಕಲಾದ ಗುರಿ ತೂಕವು ನಿಮ್ಮ ದೀರ್ಘಕಾಲीन ಯೋಧೆಯಲ್ಲಿ ನಮಗೆ ಸಹಾಯ ಮಾಡುತ್ತದೆ.',
			'onboarding.weight.metric' => 'ಮೆಟ್ರಿಕ್',
			'onboarding.weight.imperial' => 'ಮೋಸದ',
			'onboarding.weight.next' => 'ಮುಂದೆ',
			'onboarding.age.title' => 'ನಿಮ್ಮ ಜನ್ಮದಿನ ಏನು?',
			'onboarding.age.description' => 'ನಿಮ್ಮ ಬಳಿಯ ವಯಸ್ಸು ನೀವು ಎಷ್ಟು ಕ್ಯಾಲೊರಿಗೆ ಅಗತ್ಯವಿದೆ ಎಂದು ನಿಖರವಾಗಿ ಗಣನೆ ಮಾಡಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ.',
			'onboarding.age.next' => 'ಮುಂದೆ',
			'onboarding.bmiScale.underweight' => 'ಇಳಿವಟ್ಟ',
			'onboarding.bmiScale.healthy' => 'ಆರೋಗ್ಯಕರ',
			'onboarding.bmiScale.overweight' => 'ಒಬ್ಬರಿಗೂ ಹೆಚ್ಚು',
			'onboarding.bmiScale.obese' => 'ಮೋಡೋಣ',
			'onboarding.bmiScale.categories.underweight' => 'ಇಳಿವಟ್ಟ',
			'onboarding.bmiScale.categories.healthyWeight' => 'ಆರೋಗ್ಯಕರ ತೂಕ',
			'onboarding.bmiScale.categories.overweight' => 'ಒಬ್ಬರಿಗೂ ಹೆಚ್ಚು',
			'onboarding.bmiScale.categories.obese' => 'ಮೋಡೋಣ',
			'onboarding.bmiScale.messages.underweight' => 'ನಾವು ನಿಮಗೆ ಪೋಷಕ-ಸಮೃದ್ಧವಾದ ನೀಡುವ ಮೂಲಕ ಸಮತೋಲನ ತೂಕವನ್ನು ತಲುಪಲು ಸಹಾಯ ಮಾಡಬಹುದು.',
			'onboarding.bmiScale.messages.healthy' => 'ಚೆನ್ನಾಗಿದೆ! ನೀವು ಆರೋಗ್ಯಕರ ಶ್ರೇಣಿಯಲ್ಲಿ ಇದ್ದೀರಿ. ನಾವು ನಿಮ್ಮ ಜೀವಂತತೆ ಮತ್ತು ಶಕ್ತಿ ಮಟ್ಟವನ್ನು ಉಳಿಸಲು ಸಹಾಯ ಮಾಡುತ್ತೇವೆ.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} ನಿಮ್ಮ ಗುರಿಯನ್ನು ಸುಲಭವಾಗಿ ತಲುಪಲು ಎಐ-ಶಕ್ತಿಯ ಉಲ್ಲೇಖವನ್ನು ಸಹಾಯ ಮಾಡುತ್ತದೆ.',
			'onboarding.bmiScale.messages.obese' => 'ನಾವು ನಿಮ್ಮ ಆರೋಗ್ಯದ ಗುರಿಗಳಿಗಾಗಿ ವೈಯುಕ್ತಿಕ ಮಾರ್ಗದರ್ಶನ ಮತ್ತು ನಿರಂತರ ತಂತ್ರಗಳನ್ನು ಬೆಂಬಲಿಸುತ್ತೇವೆ.',
			'onboarding.weightGoal.title' => 'ನಿಮ್ಮ ಗುರಿ ಯಾವುದು?',
			'onboarding.weightGoal.description' => 'ನೀವು ಏನು ಸಾಧಿಸಲು ಬಯಸುತ್ತೀರಿ ಎಂಬುದನ್ನು ಉತ್ತಮವಾಗಿ ವಿವರಿಸುವ ಗುರಿಯನ್ನು ಆಯ್ಕೆ ಮಾಡಿ',
			'onboarding.activityLevel.title' => 'ನೀವು ಎಷ್ಟು ಕ್ರಿಯಾತ್ಮಕ?',
			'onboarding.activityLevel.description' => 'ಇದು ನಿಮ್ಮ ದೈನಂದಿನ ಕ್ಯಾಲೊರಿಗಳನ್ನು ಹೆಚ್ಚು ನಿಖರವಾಗಿ ಗಣನೆ ಮಾಡಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ',
			'onboarding.healthConnect.title' => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕವನ್ನು ಸಂಪರ್ಕಿಸಿ',
			'onboarding.healthConnect.description' => 'ಉತ್ತಮ ಪರಿಣಾಮಗಳು ಮತ್ತು ಸ್ವಾಯತ್ತ ಕ್ಯಾಲೊರಿ ಲೆಕ್ಕಾಂಶಕ್ಕಾಗಿ ನಿಮ್ಮ ಆರೋಗ್ಯದ ಮಾಹಿತಿ ಸಂಕಲನ ಮಾಡಿ',
			'onboarding.healthConnect.automaticTracking.title' => 'ಸ್ವಾಯತ್ತ ಕ್ಯಾಲೊರಿ ಲೆಕ್ಕಾಚಾರ',
			'onboarding.healthConnect.automaticTracking.description' => 'ನಿಮ್ಮ ಫಿಟ್ನೆಸ್ ಆಪ್‌ಗಳಿಂದ ಉಲ್ಲೇಖಿತ ಫಲಾನುಭವಗಳನ್ನು ಲೆಕ್ಕ ಹಾಕಿ',
			'onboarding.healthConnect.progressInsights.title' => 'ಪ್ರಗತಿ ಒಳನೋಟಗಳು',
			'onboarding.healthConnect.progressInsights.description' => 'ನೀವು ಆರೋಗ್ಯದ ತ್ರೇಂಡುಗಳ ಬಗ್ಗೆ ವಿವರವಾದ ಒಳನೋಟಗಳನ್ನು ಪಡೆಯಿರಿ',
			'onboarding.healthConnect.seamlessIntegration.title' => 'ಸರಳವಾದ ಸಮಾವೇಶ',
			'onboarding.healthConnect.seamlessIntegration.description' => 'ನಿಮ್ಮ ಆಯ್ಕೆಪಡಿಸಿದ ಆರೋಗ್ಯ ಆಪ್ಸ್ ಸ್ಥಳಾಂತರಿಸಿ',
			'onboarding.healthConnect.connected' => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕ ಬಿಗಿಯಾದ',
			'onboarding.healthConnect.notConnected' => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕ ಬಿಗಿಯಿಲ್ಲ',
			'onboarding.healthConnect.setup' => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕವನ್ನು ನೀಡಲು',
			'onboarding.healthConnect.skipForNow' => 'ಈಗ ಉಲ್ಲೇಖವನ್ನು ತಪ್ಪಿಸಲು',
			'onboarding.healthConnect.statusConnected' => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕ ಜೋಡಿಸಲಾಗಿದೆ.',
			'onboarding.healthConnect.statusSuccess' => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕ ಯಶಸ್ವಿಯಾಗಿ ಜೋಡಿಸಲಾಗಿಯೋದು!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'ಅನುಮತಿ ನಿರಾಕರಿಸಲಾಗಿದೆ. ದಯವಿಟ್ಟು ${appLabel} ಗೆ ಸೋಮವಾರದ ಮಾಹಿತಿಯ ಅನುಮತಿಯನ್ನು ಚಲಾಯಿಸಿ.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'ಆರೋಗ್ಯವನ್ನು ಹೊಂದಿಸಲು ಸಮಸ್ಯೆ: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'ನೀವು ಒಬ್ಬರಿಗೆ ಮಾತ್ರ ಅಲ್ಲ',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'ಶೋಧನೆ ನಿಖರವಾಗಿ ಲೆಕ್ಕವನ್ನು ಹೊಂದಿದ್ದು, ದೀರ್ಘಕಾಲದ ಯಶಸ್ಸಿನ #1 ನಿರ್ಧಾರವನ್ನು ಹೊಂದಿದೆ.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object goal, required Object age, required Object gender}) => 'ನೀವು ${goal} ಪಡೆಯಲು ಹುಡುಕುತ್ತಿರುವ ${age} ವರ್ಷದ ${gender} ಗೆ, ನಿಖರ ಮಾಹಿತಿಯ ಲೆಕ್ಕವೂ #1 ಯಶಸ್ಸಿನ ನಿರ್ಧಾರ.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} ಕೈಯಿಂದ ಮಾಡುವುದು ವಿನ್ಯಾಸವಾಗುತ್ತದೆ, 10x ಸುಲಭವಾಗಿದೆ.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'ಪ್ರಾರಂಭಿಸಲು ತಯಾರಾಗಿದ್ದೀರಾ?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'ತ್ವರಿತ ವಿಶ್ಲೇಶಣೆಗಾಗಿ ನಿಮ್ಮ ಆಹಾರಗಳ ಛಾಯಾಚಿತ್ರವನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'ಸಂಯೋಜಿತವಾಗಿರುವ ಲೆಕ್ಕವನ್ನು ಲೆಕ್ಕಹಾಕಲು ನಿರಂತರವಾಗಿ ಲೆಕ್ಕ ಹಾಕಿ',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'ಪ್ರೇರಿತವಾಗಲು ನಿಮ್ಮ ಪ್ರಗತಿ ಪ್ರತಿ ದಿನವು ಅನ್ವಯವಾಗುತ್ತದೆ',
			'onboarding.reinforcement.trackingSuccess.button' => 'ಹೋಗೋಣ',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'ವ್ಯಕ್ತಿ',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'ಹೆಚ್ಚಿನ ಆರೋಗ್ಯ',
			'onboarding.reinforcement.healthProfile.title' => 'ನಿಮ್ಮ ಆರೋಗ್ಯ ಪ್ರವೃತ್ತಿ',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'ನಿಮ್ಮ ಮೆಟ್ರಿಕ್‌ಗಳನ್ನು ಆಧರಿಸಿ, ನಿಮ್ಮ BMI ${bmi} ಆಗಿದೆ.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'ನಿಮ್ಮ ಅನುಭವವನ್ನು ವ್ಯಾಪಕವಾಗಿ ರೂಪಿಸಲು ನಿಮ್ಮ ಪ್ರವೃತ್ತಿಯನ್ನು النهಾಯಿ ಮಾಡೋಣ.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'ಹಾಡಿಕೊಳ್ಳು',
			'onboarding.reinforcement.healthProfile.goalLose' => 'ಲಾಭ',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'ನೀವು ನಿಮ್ಮ ಗುರಿಯನ್ನು ತಲುಪಲು ${direction} ${diff} ${unit} ಮಾಡಬೇಕು.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'ನೀವು ನಿಮ್ಮ ಗುರಿಯ ತೂಕವನ್ನು ತಲುಪಿದ್ದೀರಿ! ನಾವು ನಿಮ್ಮನ್ನು ಇದನ್ನು ಕಾಪಾಡಲು ಸಹಾಯಿಸುತ್ತೇವೆ.',
			'onboarding.reinforcement.healthProfile.button' => 'ಹೋಗೋಣ',
			'onboarding.reinforcement.goalLifestyle.title' => 'ಅದ್ಭುತ ಪ್ರಾರಂಭ!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'ನೀವು ${goalText} ಬದ್ಧವಾದ ಪ್ರಥಮ ಹೆಜ್ಜೆ எடுத்தಿದ್ದೀರಿ. ನೀವು ${activityText} ಇದ್ದಾಗ, ${appLabel} ನಿಮ್ಮ ಜೀವನ ಶೈಲಿಗೆ ಹೊಂದುವಂತೆ ನಿಮ್ಮ ಗುರಿಗಳನ್ನು ಹೊಂದಿಸುತ್ತದೆ.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'ವೈಯಕ್ತಿಕ calorie ಗುರಿಗಳು',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI ಮೂಲಕ ತಿನಿಸುವ ಮೇಲೆ ಪತ್ತೆ',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'ವಿವರವಾದ ಮಾಕ್ರೋ-ಜೀರ್ಣಪದಾರ್ಥ ಮೇಲ್ವಿಚಾರಣೆಗಳು',
			'onboarding.reinforcement.goalLifestyle.button' => 'ಹೋಗೋಣ',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'ನಿಮ್ಮ ಗುರಿಗಳು',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'ಸಕ್ರಿಯ',
			'tabs.dashboard' => 'ಡ್ಯಾಶ್‌ಬೋರ್ಡ್',
			'tabs.history' => 'ಅವರಿಗೆ ನಾನು ಏನು ಮಾಡಿದ್ದೆನು',
			'home.dailyGoal.title' => 'ನಿಮ್ಮ ದೈನಂದಿನ ಗುರಿ ಹೊಂದಿಸಲು',
			'home.dailyGoal.titleSet' => 'ನಿಮ್ಮ ದೈನಂದಿನ ಗುರಿ',
			'home.dailyGoal.description' => 'ನಿಮ್ಮ ಆರೋಗ್ಯದ ಪ್ರವಾಸವನ್ನು ಪ್ರಾರಂಭಿಸಲು ದೊರೆತ ಕರವೇ, ನಿಮ್ಮ ದೈನಂದಿನ ಕ್ಯಾಲೊರಿಗಳನ್ನು ಇಲ್ಲಿ ಕಿಕ್‌ಆರ್ ಅನ್ನು ಹೊಂದಿಸಲು.',
			'home.dailyGoal.descriptionSet' => 'ನಿಮ್ಮ ಸುಕ್ತಿಯು ಹೊಂದಿಸಲಾಗಿದೆ! ಇದು ನಿಮ್ಮ ದೈನಂದಿನ ಕ್ಯಾಲೊರಿಗಳನ್ನು ನಿಮಗೆ ಮಾರ್ಗದರ್ಶನ ನೀಡುತ್ತದೆ.',
			'home.dailyGoal.yourGoal' => 'ನಿನ್ನ ಗುರಿ',
			'home.dailyGoal.dailyCalories' => 'ದೈನಂದಿನ ಕ್ಯಾಲೊರಿ (ಕೆಕ್ಯಲ್)',
			'home.dailyGoal.setGoal' => 'ಗುರಿ ಹೊಂದಿಸಿ',
			'home.dailyGoal.intake' => 'ಭೋಜನ',
			'home.dailyGoal.burned' => 'ಹರಿದ',
			'home.dailyGoal.weightImpact' => 'ತೂಕ ಪರಿಣಾಮ',
			'home.dailyGoal.estLoss' => 'ಎಂ. ಇಷ್ಟ. ಕಳೆದುಕೊಂಡು',
			'home.dailyGoal.estGain' => 'ಎಂ. ಇಷ್ಟ. ಗಳಿಸುವ',
			'home.dailyGoal.kcal' => 'ಕೆಕ್ಯಲ್',
			'home.dailySummary.title' => 'ದೈನಂದಿನ ಸಾರಾಂಶ',
			'home.dailySummary.calories' => 'ಕ್ಯಾಲೊರಿ',
			'home.dailySummary.carbs' => 'ಕೋಶ',
			'home.dailySummary.protein' => 'ಪ್ರೋಟೀನ್',
			'home.dailySummary.fat' => 'ಹೆಣ್ಣೆ',
			'home.dailySummary.fiber' => 'ಕಬ್ಬು',
			'home.intakeProgress.title' => 'ಇಂದು ಮತ್ತು ಪೂರೈಸುವ ಸ್ಥಳ',
			'home.intakeProgress.target' => 'ಗುರಿ',
			'home.intakeProgress.current' => 'ಪ್ರಸ್ತುತ',
			'home.intakeHistory.title' => '7-ದಿನ ಕರುಡ ಕಹವು',
			'home.intakeHistory.noHistoryYet' => 'ಇನ್ನು ಯಾವುದೇ ಐತಿಹಾಸಿಕ ದಾಖಲೆ ಇಲ್ಲ',
			'home.intakeHistory.startLogging' => 'ನಿಮ್ಮ ಆಹಾರವನ್ನು ಲೆಕ್ಕ ಹಾಕುವುದು ಇಲ್ಲಿ 7 ದಿನಗಳ ಕಾಲ ಪ್ರಮಾಣವನ್ನು ನೋಡಲು ಹೊಂದಿಸುತ್ತದೆ.',
			'home.mealLog.title' => 'ಲಾಗ್ ಮಾಡಿದ ಆಹಾರ',
			'home.mealLog.emptyMessage' => 'ನಿಮ್ಮ ಅಂತಿಮ ಆಹಾರವನ್ನು ಲೆಕ್ಕ ಹಾಕಲು ಛಾಯಾಚಿತ್ರವನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ.',
			'home.mealLog.noMealsToday' => 'ಇಂದ ಮೊದಲಾದ ಆಹಾರ ಯಾವುದೇ ದಾಖಲೆ ಇಲ್ಲ',
			'home.mealLog.seeAllMeals' => 'ಎಲ್ಲಾ ಆಹಾರಗಳನ್ನು ನೋಡಿ',
			'home.mealDescription.title' => 'ಎಐ ಮೂಲಕ ತ್ವರಿತ ಸೇರಿಸುವಿಕೆ',
			'home.mealDescription.description' => 'ನಿಮ್ಮ ಆಹಾರವನ್ನು ವಿವರಿಸಿರಿ ಮತ್ತು ಏಐ ವಿವರಗಳನ್ನು ನಿರ್ವಹಿಸಲು ಬಿಡಿ.',
			'home.mealDescription.hint' => 'ಉದಾಹರಣೆಗೆ: ನಾನು ಬೆಳಗಿನ ಕಾಳಲ್ಲಿ ಒಂದು ದೊಡ್ಡ ತಟ್ಟೆ ಒಡೆಯಿತು ...',
			'home.mealDescription.analyzeMeal' => 'ಆಹಾರವನ್ನು ವಿಶ್ಲೇಷಿಸಿ',
			'home.favoriteMeals.title' => 'ಮುಗಿಯುತ್ತಿರುವ ಆಹಾರ',
			'home.favoriteMeals.description' => 'ನಿಮ್ಮ ಮೆಚ್ಚಿನ ಆಹಾರದಲ್ಲಿ ಸುಲಭವಾಗಿ ಸೇರಿಸಿ.',
			'home.favoriteMeals.noFavorites' => 'ಏನೂ ಶುಭಾಶಯ ವಹಿಸುವ ಆಹಾರ ಇಲ್ಲ.',
			'home.favoriteMeals.addFavoriteHint' => 'ಅವಶ್ಯ ಫಾಕ್ನ್ನಿ, ಆಹಾರವನ್ನು ಮರು ಪ್ರಮುಖ ಹಾಗೆ ಪ್ರಕಟಿಸಲು.',
			'home.favoriteMeals.seeAll' => 'ಎಲ್ಲಾ ನೋಡಿ',
			'home.favoriteMeals.add' => 'ಸೇರಿಸು',
			'home.mealSnap.title' => 'ನಿಮ್ಮ ಆಹಾರವನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ ಮತ್ತು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ',
			'home.mealSnap.description' => 'ನಿಮ್ಮ ಆಹಾರಕ್ಕೆ ಛಾಯಾಚಿತ್ರವನ್ನು ತೆಗೆದುಕೊಂಡು, ಏಐ ವಿಶ್ಲೇಷಣೆಗಾಗಿ ಬಿಡಿ.',
			'home.mealSnap.openCamera' => 'ಕ್ಯಾಮೆರಾವನ್ನು ತೆರೆಯಿರಿ',
			'home.connectHealth.title' => 'ಆರೋಗ್ಯವನ್ನು ಆರ್ ಬಾಗಣೆ',
			'home.connectHealth.description' => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕದೊಂದಿಗೆ ನಿಮ್ಮ ಪೋಷಣಾ ಮಂಡಿತೆಯನ್ನು ಸಂಪೂರ್ಣಗೊಳಿಸು',
			'home.connectHealth.install' => 'ಸ್ಥಾಪಿಸು',
			'home.connectHealth.connect' => 'ಸಂಪರ್ಕ',
			'history.noMeals' => 'ಏನೂ भोजन ದಾಖಲಿಲಿಲ್ಲ',
			'history.emptyMessage' => 'ನೀವು ಹಾಕಿದ ಹಕ್ಕಿನಿಂದ ಸ್ನಾಪ್ ತೆಗೆದುಕೊಳ್ಳಿ.',
			'history.today' => 'ಇಂದು',
			'history.yesterday' => 'ಕಳೆದ ದಿನ',
			'meal.ohNo' => 'ಓ ಹಾ!',
			'meal.delete' => 'ಅಳಿಸಿ',
			'meal.editMeal' => 'ಆಹಾರವನ್ನು ಸಂಪಾದಿಸಿ',
			'meal.addMeal' => 'ಆಹಾರ ಸೇರಿಸಿ',
			'meal.saveMeal' => 'ಆಹಾರ ಶೇಖರಿಸಿ',
			'meal.save' => 'ಉಳಿತಾಯ',
			'meal.mealName' => 'ಆಹಾರದ ಹೆಸರು',
			'meal.mealQuantity' => 'ಆಹಾರ ಪ್ರಮಾಣ',
			'meal.mealQuantityHint' => 'ಉಪಾಯ, 1 ತಟ್ಟೆ, 2 ಕ್ಕಕಲು',
			'meal.timeOfMeal' => 'ಆಹಾರದ ಸಮಯ',
			'meal.timeOfMealHint' => 'ನೀವು ಕಳೆಯುತ್ತಿದ್ದಾಗ ಆಯ್ಕೆ ಮಾಡಿ',
			'meal.mealType' => 'ಆಹಾರದ ವರ್ಗ',
			'meal.nutrition.calories' => 'ಕ್ಯಾಲೊರಿ',
			'meal.nutrition.carbs' => 'ಕೋಶ (ಗಾಗಿ)',
			'meal.nutrition.protein' => 'ಪ್ರೋಟೀನ (ಗಾಗಿ)',
			'meal.nutrition.fat' => 'ಹೆಣ್ಣೆ (ಗಾಗಿ)',
			'meal.nutrition.fiber' => 'ಕಬ್ಬು (ಗಾಗಿ)',
			'meal.deleteConfirmation.title' => 'ಆಹಾರವನ್ನು ಅಳಿಸುವಿರಾ?',
			'meal.deleteConfirmation.message' => 'ನೀವು ಈ ಆಹಾರವನ್ನು ಅಳಿಸಲು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳುತ್ತೀರಾ?',
			'meal.deleteConfirmation.cancel' => 'ರದ್ದು',
			'meal.deleteConfirmation.delete' => 'ಅಳಿಸಿ',
			'meal.addedToLog' => 'ಆಹಾರ ನಿಮ್ಮ ಲಾಗ್‌ನಲ್ಲಿ ಸೇರಿಸಲಾಗಿದೆ!',
			'meal.couldNotAdd' => ({required Object error}) => 'ಆಹಾರವನ್ನು ಸೇರಿಸುವುದಾಗಿ ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: ${error}',
			'meal.removedFromFavorites' => 'ಮುಗಿಯಲು ತೆಗೆದು ಹಾಕಲಾಯಿತು!',
			'meal.savedAsFavorite' => 'ಆಹಾರವು ಮುಗಿಯಲು ಉಳಿಸಲಾಗಿದೆ!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'ಮುಗಿಯಲು ನವೀಕರಣ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'ಆಹಾರವನ್ನು ಒಂದು ಕಂಪೊಜುತ್ತಾರೆ: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'ಚಿತ್ರವನ್ನು ಒಂದು ಕಂಪೊಜಿದ್ದರು: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'ಚಿತ್ರವನ್ನು ಒಪ್ಪಿಸಿ: ${error}',
			'meal.failedToSave' => 'ಮಾಹಿತಿಯ ಉಳಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಪುನರಯಿಸಲು ಪ್ರಯತ್ನಿಸಿ.',
			'favorites.title' => 'ಮುಗಿಯಲು',
			'favorites.empty' => 'ಏನೂ ಮುಗಿಯಿಲ್ಲ.',
			'profile.title' => 'ಪ್ರೊಫೈಲ್',
			'profile.noProfileData' => 'ಯಾವುದೇ ಪ್ರೊಫೈಲ್ ಡೇಟಾ ಬಂದಿಲ್ಲ',
			'profile.yourProfile' => 'ನಿಮ್ಮ ಪ್ರೊಫೈಲ್',
			'profile.viewAndManage' => 'ನಿಮ್ಮ ಆರೋಗ್ಯದ ಮಾಹಿತಿಯನ್ನು ನೋಡುವ ಮತ್ತು ನಿರ್ವಹಿಸಲು',
			'profile.sections.profile' => 'ಪ್ರೊಫೈಲ್',
			'profile.sections.basicInformation' => 'ಮೂಲ ಮಾಹಿತಿ',
			'profile.sections.goalsAndActivity' => 'ಗುರಿಗಳು ಮತ್ತು ಚಟುವಟಿಕೆ',
			'profile.sections.calculatedValues' => 'ಚೆನ್ನಾಗಳ ತ್ಯಾಜ್ಯ',
			'profile.gender' => 'ಲಿಂಗ',
			'profile.height' => 'ಎತ್ತರ',
			'profile.weight' => 'ತೂಕ',
			'profile.age' => 'ವಯಸ್ಸು',
			'profile.weightGoal' => 'ತೂಕ ಗುರಿ',
			'profile.activityLevel' => 'ಚಟುವಟಿಕೆ ಹಂತ',
			'profile.healthMetrics' => 'ಆರೋಗ್ಯ ಅಂಕಿಅಂಗಗಳು',
			'profile.notSet' => 'ಸೆಟ್ನಿಲ್ಲ',
			'profile.years' => 'ಆಯು',
			'profile.updatedSuccessfully' => 'ಪ್ರೊಫೈಲ್ ಯಶಸ್ವಿಯಾಗಿ ನವೀಕರಣ ಮಾಡಲಾಗಿದೆ!',
			'profile.calculatedValues.bmr' => 'ಬಿಎಂಆರ್',
			'profile.calculatedValues.tdee' => 'ಟಿಡಿಈಇ',
			'profile.calculatedValues.dailyGoal' => 'ದೈನಂದಿನ ಗುರಿ',
			'profile.calculatedValues.calPerDay' => 'ಕ್ಯಾಲೊರಿ/ದಿನ',
			'profile.calculatedValues.notAvailable' => 'ಲಭ್ಯವಿಲ್ಲ',
			'healthScore.title' => 'ಆರೋಗ್ಯ ಶ್ರೇಣೀಕರಣ',
			'healthScore.whyThisScore' => 'ನೀವು ಈ ಶ್ರೇಣಿಕೆಯು ಏಕೆ?',
			'healthScore.note' => 'ಈ ಶ್ರೇಣೀಕರಣವು ಗುರುತಿಸಲಾದ ಅಂಶಗಳು ಮತ್ತು ಪೋಷಣಾ ತೀವ್ರತೆಗೆ ಆಧಾರಿತ ಎಐ ಅಂದಾಜು. ವ್ಯಾಖ್ಯಾನದಿಂದಲೇ ಸಲಹೆಗೆ ಸಾರ್ವಜನಿಕ ವೈದ್ಯಕೀಯ ಸಲಹೆಯನ್ನು ಕೇಳಿರಿ.',
			'healthScore.unhealthy' => 'ಅರೋಗ್ಯಕರ',
			'healthScore.healthy' => 'ಆರೋಗ್ಯಕರ',
			'healthScore.neutral' => 'ನಿಷ್ಕ್ರಿಯ',
			'editProfile.title' => 'ಪ್ರೊಫೈಲ್ ಸಂಪಾದಿಸಿ',
			'editProfile.sections.personalInformation' => 'ವೈಯುಕ್ತಿಕ ಮಾಹಿತಿ',
			'editProfile.sections.physicalMeasurements' => 'ದೇಹದ ಅಳೆಯೆಗಳು',
			'editProfile.sections.goalsAndActivity' => 'ಗುರಿಗಳು ಮತ್ತು ಚಟುವಟಿಕೆ',
			'editProfile.gender' => 'ಲಿಂಗ',
			'editProfile.dateOfBirth' => 'ಜನ್ಮ ತಾರೀಕು',
			'editProfile.height' => 'ಎತ್ತರ',
			'editProfile.weight' => 'ತೂಕ',
			'editProfile.weightGoal' => 'ತೂಕ ಗುರಿ',
			'editProfile.activityLevel' => 'ಚಟುವಟಿಕೆ ಹಂತ',
			'editProfile.metric' => 'ಮೆಟ್ರಿಕ್',
			'editProfile.imperial' => 'ಮೊಸ',
			'editProfile.metricCm' => 'ಮೆಟ್ರಿಕ್ (ಸೆಂಚಿ)',
			'editProfile.imperialFtIn' => 'ಮೊಸದ (ಅಂಗುಕ)',
			'editProfile.metricKg' => 'ಮೆಟ್ರಿಕ್ (ಕಿಲೋ)',
			'editProfile.imperialLbs' => 'ಮೊಸದ (ಪೌಂಡು)',
			'editProfile.genders.male' => 'ಮಹಿಳ',
			'editProfile.genders.female' => 'ಹೆಣ್ಣು',
			'editProfile.genders.other' => 'ಇತರ',
			'editProfile.weightGoals.loseWeight.name' => 'ತೂಕ ಕಳೆದುಕೊಳ್ಳಿ',
			'editProfile.weightGoals.loseWeight.description' => 'ತೂಕವನ್ನು ಕಳೆದುಕೊಳ್ಳುವುದು ಮಾಡಲು ಕ್ಯಾಲೊರಿ ಕಡಿಮೆ ಮಾಡಿ',
			'editProfile.weightGoals.maintainWeight.name' => 'ತೂಕವನ್ನು ಉಳಿಸಿ',
			'editProfile.weightGoals.maintainWeight.description' => 'ನಿಮ್ಮ ಪ್ರಸ್ತುತ ತೂಕವನ್ನು ಉಳಿಸುವುದು',
			'editProfile.weightGoals.gainWeight.name' => 'ತೂಕ ಹೆಚ್ಚಿಸಿ',
			'editProfile.weightGoals.gainWeight.description' => 'ಹೆಚ್ಚನ್ನು ಪಡೆಯಲು ಕ್ಯಾಲೊರಿ ಹೆಚ್ಚಿಸಿ',
			'editProfile.activityLevels.sedentary.name' => 'ಹೆಸರಾಯಿತ',
			'editProfile.activityLevels.sedentary.description' => 'ಊಟಸದ ಇರನೆಯನ್ನು ಮಾಡಿಲ್ಲ',
			'editProfile.activityLevels.lightlyActive.name' => 'ಸ್ವಲ್ಪ ಕ್ರಿಯಾತ್ಮಕ',
			'editProfile.activityLevels.lightlyActive.description' => 'ಮೆದುಳ ಚಟುವಟಿಕೆ 1-3 ದಿನ/ನೀವು',
			'editProfile.activityLevels.moderatelyActive.name' => 'ಮದ್ವಿನಾ ಕ್ರಿಯಾತ್ಮಕ',
			'editProfile.activityLevels.moderatelyActive.description' => 'ಮದ್ಯಮ ಚಟುವಟಿಕೆ 3-5 ದಿನ/ನೀವು',
			'editProfile.activityLevels.veryActive.name' => 'ಚಂಡಾಲವಾದ ಚಟುವಟಿಕೆ',
			'editProfile.activityLevels.veryActive.description' => 'ಕಠಿಣ ಚಟುವಟಿಕೆಗಳು 6-7 ದಿನ/ನೀವು',
			'editProfile.activityLevels.extremelyActive.name' => 'ಅತಿ ಚಟುವಟಿಕೆ',
			'editProfile.activityLevels.extremelyActive.description' => 'ಲೆಕ್ಕ ಹಾಕುವ ದುಡಿಯುವಂತೆ કંಸು ಸೇರುವಂತೆ',
			'settings.title' => 'ಅನುದಾನ',
			'settings.sections.profile' => 'ಪ್ರೊಫೈಲ್',
			'settings.sections.localization' => 'ಸ್ಥಳಾಂತರ',
			'settings.sections.notifications' => 'ಅಗತ್ಯದ',
			'settings.sections.supportAndLegal' => 'ಸೆಟರ್ ಮತ್ತು ಕಾನೂನು',
			'settings.sections.dangerZone' => 'ಸ್ವಯಂ ದಾರಿಯಿಂದ',
			'settings.sections.developer' => 'ಅನಿ ಈವೆಂಟ್',
			'settings.editProfile.title' => 'ಪ್ರೊಫೈಲ್ ಸಂಪಾದಿಸಿ',
			'settings.editProfile.subtitle' => 'ನಿಮ್ಮ ವೈಯುಕ್ತಿಕ ಮಾಹಿತಿಯನ್ನು ನವೀಕರಣ ಮಾಡಲು',
			'settings.language.title' => 'ಭಾಷೆ',
			'settings.language.subtitle' => 'ನೀವು ಇಷ್ಟಪಡುವ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆ ಮಾಡಿ',
			'settings.heightUnit.title' => 'ಎತ್ತರದ ಘಟಕ',
			'settings.weightUnit.title' => 'ತೂಕದ ಘಟಕ',
			'settings.mealReminders.title' => 'ಆಹಾರವನ್ನು ನೆನಪಿಸುವಿಕೆ',
			'settings.mealReminders.subtitle' => 'ಸಮಯವು ತೊಂದರೆಯಿಲ್ಲವನ್ನು ತಡೆಯುತ್ತಿದೆ',
			'settings.theme.title' => 'ಥೀಮ್',
			'settings.theme.subtitle' => 'ನೀವು ಇಷ್ಟಪಟ್ಟ ಥೀಮ್ ಅನ್ನು ಆಯ್ಕೆ ಮಾಡಿ',
			'settings.theme.light' => 'ಬೆಳಕಿನ',
			'settings.theme.dark' => 'ಕಾರಣ',
			'settings.theme.system' => 'ಸಿಸ್ಟಮ್',
			'settings.sendFeedback.title' => 'ಫೀಡ್‌ಬಾಕ್ ನೀಡುವಿಕೆ',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} ಅನ್ನು ಉತ್ತಮವಾಗಿ ಮಾಡಲು ಸಹಾಯ',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} ನ ಆರೋಪ',
			'settings.sendFeedback.emailBodyPrefix' => 'ದಯವಿಟ್ಟು, ನಿಮ್ಮ ಫೀಡ್‌ಬಾಕ್ ನೀಡಿ:',
			'settings.sendFeedback.appVersion' => 'ಆಪ್ಲಿಕೇಶನ್ ಆವೃತ್ತಿ',
			'settings.sendFeedback.device' => ' ಸಾಧನ',
			'settings.sendFeedback.osVersion' => 'ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಮ್ ಆವೃತ್ತಿ',
			'settings.sendFeedback.uid' => 'ಯುಐಡಿ',
			'settings.clearAllData.title' => 'ಎಲ್ಲಾ ಮಾಹಿತಿಗೆ ತೆರವುಗೊಳಿಸಲು',
			'settings.clearAllData.subtitle' => 'ನೀವು ಎಲ್ಲಾ ಮಾಹಿತಿ ಅಳಿಸಿದರೆ, ನಿಮ್ಮ ಭಾಗಾತ್ಮಕ ಚಿತ್ರ ಸ್ಥಾಯ್ಡಿನ್ ಅನ್ನು ಸುರಕ್ಷಿತವಾಗಿ ತೆಗೆದುಕೊಳ್ಳಿರಿ.',
			'settings.clearAllData.confirmationTitle' => 'ಹವಾ ಇಲ್ಲಿ ತೆರವುಗೊಳಿಸುತ್ತಿರಾ?',
			'settings.clearAllData.confirmationMessage' => 'ಈ ಕ್ರಮವನ್ನು ಯಶಸ್ವಿಯಾಗಿಸುವುದು ಸಾಧ್ಯವಿಲ್ಲ. ನಿಮ್ಮ ಎಲ್ಲಾ ಲಾಗ್ ಮಾಡಿದ ಆಹಾರ, ಮುತನಗಳು ಮತ್ತು ಪ್ರೊಫೈಲ್ ಸೆಟಿಂಗ್‌ಗಳನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಲಾಗುವುದು.',
			'settings.clearAllData.cancel' => 'ರದ್ದು',
			'settings.clearAllData.clearEverything' => 'ಎಲ್ಲವನ್ನು ತೆರವುಗೊಳಿಸಲು',
			'settings.debugOptions.title' => 'ಡಿಬಗ್ ಆಯ-options',
			'settings.developerModeEnabled' => 'ವಿಕಾಸಕ ಮೋಡ್ ಸಕ್ರಿಯ!',
			'reminders.title' => 'ನಿಮ್ಮ ಎನಕ ಸುಂದರವಾಗಿ ನೆನಪಿಸಲು',
			'reminders.description' => 'ನಿಮ್ಮ ಆಹಾರವನ್ನು ಲೆಕ್ಕ ಹಾಕಲು ಮತ್ತು ನಿಖರವಾಗಬೇಕಾದ ಐತಿಹಾಸಿಕ ಮಾರ್ಗದರ್ಶನವನ್ನು ದೊರಕಿಸಿ',
			'reminders.notificationsEnabled' => 'ಅಗತ್ಯಗಳು ಸೇರಿಸಿದವು',
			'reminders.notificationsDisabled' => 'ಅಗತ್ಯಗಳು ವಿಫಲ ಲಕ್ಷಣಗಳು',
			'reminders.enabledSubtitle' => 'ನೀವು ಆಹಾರವನ್ನು ನೆನೆಪಿಸಲು ಬೇಕಾದುದಿಲ್ಲ',
			'reminders.disabledSubtitle' => 'ಅಗತ್ಯಗಳನ್ನು ಪ್ರವೇಶಿಸಲು ವಿನಂತಿ ಮಾಡಿ',
			'reminders.mealReminders' => 'ಆಹಾರಗಳನ್ನು ನೆನಪಿಸುವಿಕೆ',
			'reminders.breakfast' => 'ಬೆಳಗಿನ ಊಟ',
			'reminders.lunch' => 'ಮಧ್ಯಾಹ್ನದ ಊಟ',
			'reminders.dinner' => 'ರಾತ್ರಿ ಊಟ',
			'reminders.snack' => 'ಸ್ನಾಕ್ಸ್',
			'reminders.unknown' => 'ಅಜ್ಞಾತ',
			'reminders.change' => 'ಬದಲಾಯಿಸು',
			'reminders.enableNotifications' => 'ಅಗತ್ಯದ ಸೇರಿಸು',
			'reminders.skipForNow' => 'ಈಗ ಬಿಡುತ್ತೇನೆ',
			'reminders.saveChanges' => 'ಹೆಸರು ಬದಲಾಯಿಸು',
			'reminders.enabledSuccessfully' => 'ಅಗತ್ಯವನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಸ್ಥಾಪಿಸಲಾಗಿದೆ!',
			'reminders.permissionDenied' => 'ಅಗತ್ಯಕ್ಕೆ ವಕರ್ಮ ಸ್ಥಳಾಂತರ ನಿರಾಕರಿಸಲಾಗಿದೆ.',
			'reminders.errorEnabling' => ({required Object error}) => 'ಅಗತ್ಯವನ್ನು ಸಕ್ರಿಯ ಮಾಡಲು ತಪ್ಪು: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'ಸ್ಥಾಪನೆಯು ಸಂಪೂರ್ಣವಾದಾಗಂತ ತಪ್ಪು: ${error}',
			'notifications.breakfast.title' => 'ಬೆಳಗಾಗುವ ಹೊಸ್ತಲು! 🍳',
			'notifications.breakfast.body' => 'ನೀವು ಬೆಳಗಿನ ಆಹಾರವನ್ನು ತಪ್ಪಿಸಲು ಮರೆಯುವಿಕೆ',
			'notifications.lunch.title' => 'ಮಧ್ಯಾಹ್ನದಲ್ಲಿ ಹೊಸ್ಟಲು! 🥗',
			'notifications.lunch.body' => 'ನಾನು ಮಧ್ಯಾಹ್ನದ ಆಹಾರವನ್ನು ತಪ್ಪಿಸಲು ಮರೆಯುವಿಕೆ',
			'notifications.dinner.title' => 'ಯಜಮಾನದ ಹೊಸ್ತಲು! 🍽️',
			'notifications.dinner.body' => 'ನೀವು ರಾತ್ರಿ ಆಹಾರವನ್ನು ತಪ್ಪಿಸಲು ಮರೆಯುವಿಕೆ',
			'notifications.snack.title' => 'ಸ್ನ್ಯಾಕ್ ಸಮಯ! 🍎',
			'notifications.snack.body' => 'ಅರೋಗ್ಯಕರ ಸ್ನಾಕ್ಗೆ ಸಮಯ',
			'notifications.test.title' => 'ಪರೀಕ್ಷಾರೂಪ : ಸಾಯಿಸಿ',
			'login.title' => 'ಲಾಗಿನ್',
			'login.signInWithGoogle' => 'ಗೂಗಲ್ ನೊಂದಿಗೆ ಲಾಗಿನ್',
			'login.signInFailed' => 'ಗೂಗಲ್ ಲಾಗಿನ್ ವಿಫಲವಾಗಿರುವುದು ಅಥವಾ ರದ್ದುವಾದಾಗ.',
			'disclaimer.pleaseNote' => 'ದಯವಿಟ್ಟು ಗಮನಿಸಿ',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} ಸುಮಾರು ಹಂಪಿಯಿಂದ ಎನ್ಕಳಾದ ಮಾಹಿತಿಯನ್ನು ಒದಗಿಸುವುದು. ನಿಮ್ಮ ಪೂರಕ ಬದಲಾವಣೆಯ ಮೇಲೆ ಆದಾರಿತ ವೈರುದ್ದು. ಮಾರ್ಗದರ್ಶಕವಾಗಿ ಬಳಸಬೇಕು, ಖಚಿತ ಮೂಲವಾಗಿ ಇಲ್ಲ. ವೈಯುಕ್ತಿಕ ಪೋಷಣಾ ಸಲಹೆಗೆ ಸಾರ್ವಜನಿಕ ವೈದ್ಯಕೀಯ ಸಲಹೆ ಪಡೆಯಿರಿ.',
			'disclaimer.snap.portionSize.title' => 'ಕೋಶದ ಗಾತ್ರ',
			'disclaimer.snap.portionSize.description' => 'ಮೌಲ್ಯವನ್ನು ನಿಖರವಾಗಿ ಪರಿಗಣಿಸುವ ನೀವು ಪ್ರಮಾಣವನ್ನು ಸರಿ ಮಾಡಲು ಸದಾ ಬಳಸಬೇಕು.',
			'disclaimer.snap.preparationMethods.title' => 'ಆಹಾರ ನಿರ್ಣಯಗಳು',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'ಚೆನ್ನಾಗು ಶೇಖರಣೆ ವಿಧಾನಗಳು ಆಹಾರದ ಪೋಷಕಾಂಶ ಬೆಲೆಗಳನ್ನು ಮಹತ್ವಪೂರ್ಣವಾಗಿ ಬದಲಾಯಿಸಬಹುದು. ${appLabel} ಸಹಜವಾಗಿ ಈ ಬದಲಾವಣೆಗಳನ್ನು ಪರಿಗಣಿಸುವುದಿಲ್ಲ.',
			'disclaimer.snap.ingredients.title' => 'ಪದಾರ್ಥಗಳು',
			'disclaimer.snap.ingredients.description' => 'ಒಂದು ಸಾಕಷ್ಟು ಮಾಹಿತಿಯಿಂದ ವಂಚಿತ ಮಾಡಲು ಅಂಗಸಂಭಂಧವಿದ್ದರೂ, ಆಡಳಿತ ಅಥವಾ ಏನೂ ಸಹ ವ್ಯಕ್ತಿಯನ್ನು ಸೂಚಿಸುತ್ತದೆ.',
			'disclaimer.snap.databaseLimitations.title' => 'ಡೇಟಾಬೇಸ್ ಪ್ರಯೋಜನಗಳ',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} ಆಹಾರ ಡೇಟಾಬೇಸ್ ಅನೇಕದಾದರೂ ಅಧಿಕ ಪ್ರಾಬಲ್ಯದವಾದ ಆಹಾರ ವಸ್ತುವನ್ನು ಒಳಗೊಂಡಿಲ್ಲ.',
			'disclaimer.weightEstimate.title' => 'ತರಾಷ್ಟ್ರೀಯ ತುIm',
			'disclaimer.weightEstimate.description' => 'ಹೊರೆಯದ ಪ್ರಮಾಣವು ಸ್ಥಳೀಯ ಸಾಮಾನ್ಯ ಪ್ರಧಾನಿಗಳ ಮೇಲೆ ಬಲವಾದ ಸಂಪೂರ್ಣ ಸೂಚಕ.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'ಕ್ಯಾಲೊರಿ ಖಚಿತತೆಗೆ',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'ಈ ಅಂದಾಜು ನೀವು ದಾಖಲಿಸಿರುವ ಕ್ಯಾಲೊರಿ ಸೇರ್ಪಡೆಯು ಮತ್ತು ವ್ಯಯಕ್ಕಿಂತ ಬೇರೆ ಯಾವುದಕ್ಕೂ ಸಚಾಟ್ ಆಗಿಯೇ ಇರುವಂತಾಗಿಲ್ಲ. ತಪ್ಪಾದ ಲಾಗಿಂಗ್‌ನಲ್ಲಿ ತಪ್ಪಾಗಿ ಮುನಿಸಿಕೊಂಡ ಸಂಪೂರ್ಣವಾಗಿ ಹಾನಿ ಅಂದಾಜು ಹೊರತಾಗಿದೆ.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'ಜೀವಶಾಸ್ತ್ರಾತ್ಮಕ ಕಾರಣಗಳು',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'ನಿಜವಾದ ತೂಕ ಕಣ್ಮರೆಯಾಗಲು/ಲಾಭಕ್ಕೆ ಮೆಟಬೊಲಿಸ್, ಹಾರ್ಮೋನ್ಸ್, ನಿದ್ರೆ, ಒತ್ತಣೆ, ನೀರಿನ ಮಟ್ಟ ಮತ್ತು ಇತರೆ ವ್ಯಕ್ತಿಗತ ಕಾರಣಗಳು ಅವಶ್ಯಕವನ್ನು ಗುಣಪಡಿಸುತ್ತವೆ ಎಂದು ${appLabel} ಅಳೆಯಲಾರದು.',
			'disclaimer.weightEstimate.waterWeight.title' => 'ನೀರು ತೂಕ ಮತ್ತು ಏರಿಳಿತಗಳು',
			'disclaimer.weightEstimate.waterWeight.description' => 'ನಿಯಮಿತ ದಿನದ ತೂಕವು ನೀರಿನ ಹೊಡೆತ, ಜೀರ್ಣಪ್ರಕ್ರಿಯೆ ಮತ್ತು ಸಮಯದ ಕಾರಣದಿಂದ ಸಾಕಷ್ಟು ಬದಲಾಯಿಸಬಹುದು. ಅಂದಾಜು ಇದರಿಂದ ಸಂಭವಿಸುವ ದಿನಸಿ ಬದಲಾವಣೆಗಳನ್ನು ಪರಿಗಣಿಸುವುದಿಲ್ಲ.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'ವೃತ್ತಿಪರ ಮಾರ್ಗದರ್ಶನ',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'ಈ ಅಂದಾಜನ್ನು ವೈದ್ಯಕೀಯ ತೀರ್ಮಾನಗಳನ್ನು ಮಾಡುವುದಕ್ಕಾಗಿ ಬಳಸные. ವೈಯಕ್ತಿಕ ತೂಕ ನಿರ್ವಹಣೆಯ ಸಲಹೆಗಾಗಿ ಯಾವಾಗಲೂ ಆರೋಗ್ಯೋಪಾಯ ವೃತ್ತಿಪರ ಅಥವಾ ನೋಂದಾಯಿತ ವ್ಯಕ್ತಿವಿಶಾರೆಜ್ ಆಗಬೇಕು.',
			'common.close' => 'ಹೊರೆಯಿರಿ',
			'common.kContinue' => 'ಮುಂದೆ',
			'errors.loadingProfileData' => 'ಪ್ರೊಫೈಲ್ ಡೇಟಾ ಲೋಡ್ ಮಾಡುವಾಗ ತಪ್ಪು',
			'errors.somethingWentWrong' => 'ಏನೋ ತಪ್ಪಾಗಿದೆ.',
			'debug.title' => 'ಡಿಬಗ್ ಆಯ್ಕೆಗಳು',
			'debug.sections.notifications' => 'ಅಗತ್ಯಗಳು',
			'debug.sections.healthConnect' => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕ',
			'debug.sections.appInfo' => 'ಆಪ್ಲಿಕೇಶನ್ ಮಾಹಿತಿಗೆ',
			'debug.showActiveNotifications' => 'ಚಾಲನೆಯ ಅಗತ್ಯಗಳನ್ನು ತೋರಿಸಲು',
			'debug.scheduleTestNotification' => 'ಪರೀಕ್ಷ್ಸಾಮಾಗ್ರಿಕ ಅವರ ಅಗತ್ಯಾ ಸೂಚಿಯು ಕಾರ್ಯನಿರ್ವಹಣೆಗೆ (10ಸೆ)',
			'debug.triggerBreakfastNotification' => 'ಬೆಳಗಿನ ಆಹಾರವನ್ನು ಒಳಗೊಳ್ಳಲು',
			'debug.cancelAllNotifications' => 'ಎಲ್ಲಾ ಅಗತ್ಯವನ್ನು ರದ್ದು',
			'debug.activeNotifications' => 'ಚಾಲನೆ ಅಗತ್ಯಗಳು',
			'debug.noTitle' => 'ಯಾವುದೇ ಶೀರ್ಷಿಕೆ ಇಲ್ಲ',
			'debug.noBody' => 'ಯಾವುದೇ ಶರೀರವಿಲ್ಲ',
			'debug.fetchTodaysSteps' => 'ಈಗ ಆರಧ್ಯ ಪ್ರಗತಿಯೇನು?',
			'debug.fetchTodaysCalories' => 'ಈಗ ಅಣಿಯವು ಯಾವಾಗ?',
			'debug.fetchLatestWeight' => 'ಈಗ ತೋರುವ ಅಳೆಯಷ್ಟು?',
			'debug.fetchLatestHeight' => 'ಈಗ ಎತ್ತರವನ್ನು ಪ್ರಗತಿಯೇನು?',
			'debug.writeTestWeight' => '70 ಕಿಲೋತ್ಲಕದ ಸಂಪನ್ಮೂಲವನ್ನು ಬರಿಯಿರಿ',
			'debug.writeTestHeight' => '175 ಸೆಂ.ಮೀ. ಬರೆಯಿರಿ',
			'debug.syncLast7Days' => 'ಕಳೆದ 7 ದಿನಗಳ ಅನುಕೂಲವನ್ನು ಸಿಂಕ್ಚಿಂಡಾ',
			'debug.sync7DaysTitle' => '7-ದಿನಾಂಕ ಅನುവുമായി',
			'debug.checkCurrentLocale' => 'ಪಿಎಸಿ ಕನ್ನಡ',
			'debug.currentLocale' => 'ಪ್ರದರ್ಶನ ಸ್ಥಳೀಯ',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'ಭಾಷೆ: ${languageCode}\nರಾಜ್ಯ: ${countryCode}\n ಘಟನಾಂತರ ವ್ಯವಸ್ಥೆ: ${unitSystem}',
			'debug.latestWeight' => 'ಇತ್ತೀಚಿನ ತೂಕ',
			'debug.latestHeight' => 'ಇತ್ತೀಚಿನ ಎತ್ತರ',
			'debug.todaysCalories' => 'ಇಂದು ಕ್ಯಾಲೊರಿ',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'ತುಂಬಾ ಹೊಂದಿರ(node): ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'ಕ_LAST 7 ದಿನಗಳಲ್ಲಿ ${count} ಮಾಹಿತಿ ಪಡೆಯಲು ಯಶಸ್ವಿಯಾಗಿ ಹೊಂದಿಸಿದ್ದೀರಿ.',
			'debug.noWeightData' => 'ಕೇವಲ 30 ದಿನಗಳಲ್ಲಿ ತೂಕದ ಬಗ್ಗೆ ಯಾವುದೇ ಮಾಹಿತಿಯು ಕಂಡಿಲ್ಲ.',
			'debug.noHeightData' => 'ಕೇವಲ 1 ವರ್ಷದಲ್ಲಿ ಎತ್ತರದಿಂದ ಪ್ರಕಾರಕ್ಕೆ ಯಾವುದೇ ಮಾಹಿತಿಯು ಕಂಡಿಲ್ಲ.',
			'debug.noCalorieData' => 'ಇಂದು ಕ್ಯಾಲೊರಿಗಳ ಬಗ್ಗೆ ಯಾವುದೇ ಮಾಹಿತಿ ನಿರ್ಧಾರೆಯಿಲ್ಲ.',
			'debug.weightWritten' => 'ವಿಭಗಿನ ಮೋದಿ ತೂಕವನ್ನು ನಿರ್ಧಾಯಿಸಲಾಗಿದೆ (70 ಕಿಲೋ).',
			'debug.weightWriteFailed' => 'ಲೇಖೆ ಬೆಂಬ್ರವರೆಗೆ ಬಾಗಗಳೆಯು.',
			'debug.heightWritten' => '175 ಸೆಂ.ಮೀ. ಒಳ. ತಲುಪಿಸಿದ್ದು.',
			'debug.heightWriteFailed' => 'ಈಗ ದಾಖಲಿಸಲು ಸಮಯವನ್ನು ಸಂಪರ್ಕಿಸಿ.',
			'debug.noNotifications' => 'ಯಾವುದೇ ಕರೆಯದ ಅಗತ್ಯಗಳಲ್ಲಿ ಇಲ್ಲ.',
			'debug.testNotificationScheduled' => 'ನೀವು ಕಲ್ಪನೆಯ ತರավարման ಹೊಸ್ತಾರ್ನ ಮೇಲೆ 10 ಸೆಕೆಂಡು.',
			'debug.testNotificationBody' => 'ಈವು ನಿಯೋಜನೆಯು 10 ಸೆಕೆಂಡುಗಳಲ್ಲಿಯಲ್ಲೂ.',
			'debug.breakfastNotificationTriggered' => 'ನೀವು ಬೆಳಗಿನ ಆಹಾರದ ಸೂಚನೆಯನ್ನು ಪೊಲೀಸರು.',
			'debug.allNotificationsCancelled' => 'ಎಲ್ಲಾ ಅಗತ್ಯವನ್ನು ನಿರ್ದಿಷ್ಟನಾಡಿಲ್ಲ.',
			'debug.fetchingData' => 'ಕಳೆದ 7 ದಿನಗಳಲ್ಲಿ ಮಾಹಿತಿಗಳನ್ನು ವೀಕ್ಷಿಸುತ್ತೇವೆ...',
			'debug.id' => ({required Object id}) => 'ಐಡಿ: ${id}',
			'health.syncFailed' => 'ಆರೋಗ್ಯ ಸಂಪರ್ಕಕ್ಕೆ ಸಮಾನೂಕರಣ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ',
			'health.mealSynced' => 'ಆಹಾರವನ್ನು ಆರೋಗ್ಯ ಸಂಪರ್ಕದೊಂದಿಗೆ ಸಮನ್ವಯಿತವಾಗಿತ್ತು',
			_ => null,
		};
	}
}
