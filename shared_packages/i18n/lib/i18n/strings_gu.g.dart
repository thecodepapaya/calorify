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
class TranslationsGu with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsGu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.gu,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <gu>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsGu _root = this; // ignore: unused_field

	@override 
	TranslationsGu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsGu(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'ગુજરાતી';
	@override String get flag => '🇮🇳';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsGu errors = _TranslationsErrorsGu._(_root);
	@override late final _TranslationsOnboardingGu onboarding = _TranslationsOnboardingGu._(_root);
	@override late final _TranslationsTabsGu tabs = _TranslationsTabsGu._(_root);
	@override late final _TranslationsHomeGu home = _TranslationsHomeGu._(_root);
	@override late final _TranslationsHistoryGu history = _TranslationsHistoryGu._(_root);
	@override late final _TranslationsMealGu meal = _TranslationsMealGu._(_root);
	@override late final _TranslationsFavoritesGu favorites = _TranslationsFavoritesGu._(_root);
	@override late final _TranslationsProfileGu profile = _TranslationsProfileGu._(_root);
	@override late final _TranslationsHealthScoreGu healthScore = _TranslationsHealthScoreGu._(_root);
	@override late final _TranslationsEditProfileGu editProfile = _TranslationsEditProfileGu._(_root);
	@override late final _TranslationsSettingsGu settings = _TranslationsSettingsGu._(_root);
	@override late final _TranslationsRemindersGu reminders = _TranslationsRemindersGu._(_root);
	@override late final _TranslationsNotificationsGu notifications = _TranslationsNotificationsGu._(_root);
	@override late final _TranslationsLoginGu login = _TranslationsLoginGu._(_root);
	@override late final _TranslationsDisclaimerGu disclaimer = _TranslationsDisclaimerGu._(_root);
	@override late final _TranslationsCommonGu common = _TranslationsCommonGu._(_root);
	@override late final _TranslationsFeedbackRatingGu feedbackRating = _TranslationsFeedbackRatingGu._(_root);
	@override late final _TranslationsHealthGu health = _TranslationsHealthGu._(_root);
}

// Path: errors
class _TranslationsErrorsGu implements TranslationsErrorsEn {
	_TranslationsErrorsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'તમે ઘણી બધી વિનંતીઓ કરી છે. કૃપા કરીને ફરી પ્રયાસ કરતા પહેલા થોડી રાહ જુઓ.';
	@override String get networkError => 'નેટવર્ક ભૂલ. કૃપા કરીને તમારું ઇન્ટરનેટ કનેક્શન તપાસો.';
	@override String get unknownError => 'કંઈક ખોટું થયું. કૃપા કરીને પછીથી ફરી પ્રયાસ કરો.';
	@override String get loadingProfileData => 'પ્રોફાઇલ ડેટા લોડ કરવામાં ભૂલ';
	@override String get somethingWentWrong => 'કંઈક ખોટું થયું.';
	@override String get retry => 'ફરી પ્રયાસ કરો';
}

// Path: onboarding
class _TranslationsOnboardingGu implements TranslationsOnboardingEn {
	_TranslationsOnboardingGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} માં આપનું સ્વાગત છે';
	@override String get subtitle => 'AI દ્વારા સંચાલિત તમારો વ્યક્તિગત પોષણ સાથી';
	@override String get getStarted => 'શરૂ કરો';
	@override late final _TranslationsOnboardingFeaturesGu features = _TranslationsOnboardingFeaturesGu._(_root);
	@override late final _TranslationsOnboardingGenderGu gender = _TranslationsOnboardingGenderGu._(_root);
	@override late final _TranslationsOnboardingHeightGu height = _TranslationsOnboardingHeightGu._(_root);
	@override late final _TranslationsOnboardingWeightGu weight = _TranslationsOnboardingWeightGu._(_root);
	@override late final _TranslationsOnboardingAgeGu age = _TranslationsOnboardingAgeGu._(_root);
	@override late final _TranslationsOnboardingBmiScaleGu bmiScale = _TranslationsOnboardingBmiScaleGu._(_root);
	@override late final _TranslationsOnboardingWeightGoalGu weightGoal = _TranslationsOnboardingWeightGoalGu._(_root);
	@override late final _TranslationsOnboardingActivityLevelGu activityLevel = _TranslationsOnboardingActivityLevelGu._(_root);
	@override late final _TranslationsOnboardingHealthConnectGu healthConnect = _TranslationsOnboardingHealthConnectGu._(_root);
	@override late final _TranslationsOnboardingReinforcementGu reinforcement = _TranslationsOnboardingReinforcementGu._(_root);
}

// Path: tabs
class _TranslationsTabsGu implements TranslationsTabsEn {
	_TranslationsTabsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'ડેશબોર્ડ';
	@override String get history => 'ઇતિહાસ';
}

// Path: home
class _TranslationsHomeGu implements TranslationsHomeEn {
	_TranslationsHomeGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryGu aiSummary = _TranslationsHomeAiSummaryGu._(_root);
	@override late final _TranslationsHomeDailyGoalGu dailyGoal = _TranslationsHomeDailyGoalGu._(_root);
	@override late final _TranslationsHomeDailySummaryGu dailySummary = _TranslationsHomeDailySummaryGu._(_root);
	@override late final _TranslationsHomeIntakeProgressGu intakeProgress = _TranslationsHomeIntakeProgressGu._(_root);
	@override late final _TranslationsHomeIntakeHistoryGu intakeHistory = _TranslationsHomeIntakeHistoryGu._(_root);
	@override late final _TranslationsHomeMealLogGu mealLog = _TranslationsHomeMealLogGu._(_root);
	@override late final _TranslationsHomeMealDescriptionGu mealDescription = _TranslationsHomeMealDescriptionGu._(_root);
	@override late final _TranslationsHomeFavoriteMealsGu favoriteMeals = _TranslationsHomeFavoriteMealsGu._(_root);
	@override late final _TranslationsHomeMealSnapGu mealSnap = _TranslationsHomeMealSnapGu._(_root);
	@override late final _TranslationsHomeConnectHealthGu connectHealth = _TranslationsHomeConnectHealthGu._(_root);
}

// Path: history
class _TranslationsHistoryGu implements TranslationsHistoryEn {
	_TranslationsHistoryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'કોઈ ભોજન રેકોર્ડ થયું નથી';
	@override String get emptyMessage => 'અહીં લોગ કરવા માટે તમારા છેલ્લા ભોજનનો ફોટો લો.';
	@override String get today => 'આજે';
	@override String get yesterday => 'ગઈકાલે';
}

// Path: meal
class _TranslationsMealGu implements TranslationsMealEn {
	_TranslationsMealGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'અરે ના!';
	@override String get delete => 'કાઢી નાખો';
	@override String get editMeal => 'ભોજન સંપાદિત કરો';
	@override String get addMeal => 'ભોજન ઉમેરો';
	@override String get saveMeal => 'ભોજન સાચવો';
	@override String get save => 'સાચવો';
	@override String get mealName => 'ભોજનનું નામ';
	@override String get mealNameHint => 'દા.ત., ટોસ્ટ સાથે સ્ક્રેમ્બલ્ડ ઇંડા';
	@override String get mealQuantity => 'ભોજનની માત્રા';
	@override String get mealQuantityHint => 'દા.ત., 1 વાટકી, 2 સ્લાઇસ';
	@override String get timeOfMeal => 'ભોજનનો સમય';
	@override String get timeOfMealHint => 'તમે ભોજન ક્યારે લીધું તે સમય પસંદ કરો';
	@override String get mealType => 'ભોજનનો પ્રકાર';
	@override late final _TranslationsMealNutritionGu nutrition = _TranslationsMealNutritionGu._(_root);
	@override late final _TranslationsMealDeleteConfirmationGu deleteConfirmation = _TranslationsMealDeleteConfirmationGu._(_root);
	@override String get addedToLog => 'ભોજન તમારા લોગમાં ઉમેરાયું!';
	@override String couldNotAdd({required Object error}) => 'ભોજન ઉમેરી શકાયું નથી: ${error}';
	@override String get savedSuccessfully => 'ભોજન સફળતાપૂર્વક ઉમેરાયું!';
	@override String get updatedSuccessfully => 'ભોજન સફળતાપૂર્વક અપડેટ થયું!';
	@override String errorSaving({required Object error}) => 'ભોજન સાચવવામાં ભૂલ: ${error}';
	@override String get removedFromFavorites => 'મનપસંદમાંથી દૂર કર્યું!';
	@override String get savedAsFavorite => 'ભોજન મનપસંદ તરીકે સાચવ્યું!';
	@override String get unfavorite => 'મનપસંદમાંથી દૂર કરો';
	@override String couldNotUpdateFavorite({required Object error}) => 'મનપસંદ અપડેટ કરી શકાયું નથી: ${error}';
	@override String get feedbackThanks => 'પ્રતિસાદ બદલ આભાર!';
	@override String get reanalysisUpdated => 'તમારા પ્રતિસાદના આધારે ભોજન વિશ્લેષણ અપડેટ થયું.';
	@override String failedToProcess({required Object error}) => 'પ્રક્રિયા કરવામાં નિષ્ફળ: ${error}';
	@override String failedToProcessImage({required Object error}) => 'છબી પર પ્રક્રિયા કરવામાં નિષ્ફળ: ${error}';
	@override String errorCompressingImage({required Object error}) => 'છબી સંકુચિત કરવામાં ભૂલ: ${error}';
	@override String get failedToSave => 'ડેટા સાચવવામાં નિષ્ફળ. કૃપા કરીને ફરી પ્રયાસ કરો.';
	@override String get skip => 'છોડો';
	@override late final _TranslationsMealQuestionFlowGu questionFlow = _TranslationsMealQuestionFlowGu._(_root);
	@override late final _TranslationsMealAnalysisGu analysis = _TranslationsMealAnalysisGu._(_root);
	@override late final _TranslationsMealFeedbackGu feedback = _TranslationsMealFeedbackGu._(_root);
	@override String get nameRequired => 'સાચવતા પહેલા ભોજનનું નામ દાખલ કરો.';
}

// Path: favorites
class _TranslationsFavoritesGu implements TranslationsFavoritesEn {
	_TranslationsFavoritesGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'મનપસંદ';
	@override String get empty => 'હજુ સુધી કોઈ મનપસંદ ભોજન નથી.';
	@override String get searchPlaceholder => 'મનપસંદ ભોજન શોધો';
	@override String get searchEmptyTitle => 'તમારી શોધ સાથે કોઈ મનપસંદ મેળ ખાતા નથી';
	@override String get searchEmptySubtitle => 'અલગ ભોજનનું નામ, જથ્થો અથવા ભોજનનો પ્રકાર અજમાવો.';
	@override String get sortLabel => 'મનપસંદને સૉર્ટ કરો';
	@override String get undo => 'પૂર્વવત્ કરો';
	@override String removed({required Object name}) => '${name} ને મનપસંદમાંથી દૂર કર્યું';
	@override late final _TranslationsFavoritesSortOptionsGu sortOptions = _TranslationsFavoritesSortOptionsGu._(_root);
}

// Path: profile
class _TranslationsProfileGu implements TranslationsProfileEn {
	_TranslationsProfileGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રોફાઇલ';
	@override String get noProfileData => 'કોઈ પ્રોફાઇલ ડેટા મળ્યો નથી';
	@override String get yourProfile => 'તમારી પ્રોફાઇલ';
	@override String get viewAndManage => 'તમારી આરોગ્ય માહિતી જુઓ અને મેનેજ કરો';
	@override late final _TranslationsProfileSectionsGu sections = _TranslationsProfileSectionsGu._(_root);
	@override String get gender => 'લિંગ';
	@override String get height => 'ઊંચાઈ';
	@override String get weight => 'વજન';
	@override String get age => 'ઉંમર';
	@override String get weightGoal => 'વજનનું લક્ષ્ય';
	@override String get targetWeight => 'લક્ષ્ય વજન';
	@override String get activityLevel => 'પ્રવૃત્તિ સ્તર';
	@override String get healthMetrics => 'આરોગ્ય મેટ્રિક્સ';
	@override String get notSet => 'સેટ નથી';
	@override String get years => 'વર્ષ';
	@override String get updatedSuccessfully => 'પ્રોફાઇલ સફળતાપૂર્વક અપડેટ થઈ!';
	@override late final _TranslationsProfileCalculatedValuesGu calculatedValues = _TranslationsProfileCalculatedValuesGu._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreGu implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'આરોગ્ય સ્કોર';
	@override String get whyThisScore => 'આ સ્કોર શા માટે?';
	@override String get note => 'આ સ્કોર ઓળખાયેલા ઘટકો અને પોષક ઘનતાના આધારે AI અંદાજ છે. આહાર સલાહ માટે હંમેશા કોઈ વ્યાવસાયિકની સલાહ લો.';
	@override String get unhealthy => 'બિનઆરોગ્યપ્રદ';
	@override String get healthy => 'આરોગ્યપ્રદ';
	@override String get neutral => 'તટસ્થ';
}

// Path: editProfile
class _TranslationsEditProfileGu implements TranslationsEditProfileEn {
	_TranslationsEditProfileGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રોફાઇલ સંપાદિત કરો';
	@override late final _TranslationsEditProfileSectionsGu sections = _TranslationsEditProfileSectionsGu._(_root);
	@override String get gender => 'લિંગ';
	@override String get dateOfBirth => 'જન્મ તારીખ';
	@override String get height => 'ઊંચાઈ';
	@override String get weight => 'વજન';
	@override String get weightGoal => 'વજનનું લક્ષ્ય';
	@override String get activityLevel => 'પ્રવૃત્તિ સ્તર';
	@override String get metric => 'મેટ્રિક';
	@override String get imperial => 'ઇમ્પિરિયલ';
	@override String get unitCm => 'સેમી';
	@override String get unitFt => 'ફૂટ';
	@override String get unitKg => 'કિલો';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'મેટ્રિક (સેમી)';
	@override String get imperialFtIn => 'ઈમ્પિરિયલ (ફૂટ/ઈંચ)';
	@override String get metricKg => 'મેટ્રિક (કિલો)';
	@override String get imperialLbs => 'ઈમ્પિરિયલ (lbs)';
	@override late final _TranslationsEditProfileGendersGu genders = _TranslationsEditProfileGendersGu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGu weightGoals = _TranslationsEditProfileWeightGoalsGu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsGu activityLevels = _TranslationsEditProfileActivityLevelsGu._(_root);
}

// Path: settings
class _TranslationsSettingsGu implements TranslationsSettingsEn {
	_TranslationsSettingsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'સેટિંગ્સ';
	@override late final _TranslationsSettingsSectionsGu sections = _TranslationsSettingsSectionsGu._(_root);
	@override late final _TranslationsSettingsEditProfileGu editProfile = _TranslationsSettingsEditProfileGu._(_root);
	@override late final _TranslationsSettingsLanguageGu language = _TranslationsSettingsLanguageGu._(_root);
	@override late final _TranslationsSettingsHeightUnitGu heightUnit = _TranslationsSettingsHeightUnitGu._(_root);
	@override late final _TranslationsSettingsWeightUnitGu weightUnit = _TranslationsSettingsWeightUnitGu._(_root);
	@override late final _TranslationsSettingsMealRemindersGu mealReminders = _TranslationsSettingsMealRemindersGu._(_root);
	@override late final _TranslationsSettingsThemeGu theme = _TranslationsSettingsThemeGu._(_root);
	@override late final _TranslationsSettingsSendFeedbackGu sendFeedback = _TranslationsSettingsSendFeedbackGu._(_root);
	@override late final _TranslationsSettingsExportMealHistoryGu exportMealHistory = _TranslationsSettingsExportMealHistoryGu._(_root);
	@override late final _TranslationsSettingsClearAllDataGu clearAllData = _TranslationsSettingsClearAllDataGu._(_root);
	@override late final _TranslationsSettingsDebugOptionsGu debugOptions = _TranslationsSettingsDebugOptionsGu._(_root);
	@override String get developerModeEnabled => 'ડેવલપર મોડ સક્ષમ!';
	@override late final _TranslationsSettingsHealthConnectGu healthConnect = _TranslationsSettingsHealthConnectGu._(_root);
	@override late final _TranslationsSettingsAboutGu about = _TranslationsSettingsAboutGu._(_root);
	@override late final _TranslationsSettingsAppInfoGu appInfo = _TranslationsSettingsAppInfoGu._(_root);
}

// Path: reminders
class _TranslationsRemindersGu implements TranslationsRemindersEn {
	_TranslationsRemindersGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'રીમાઇન્ડર્સ સાથે ટ્રેક પર રહો';
	@override String get description => 'તમારા ભોજનને લોગ કરવા અને તમારા પોષણ લક્ષ્યો સાથે સુસંગત રહેવા માટે સૌમ્ય રીમાઇન્ડર્સ મેળવો';
	@override String get notificationsEnabled => 'સૂચનાઓ સક્ષમ છે';
	@override String get notificationsDisabled => 'સૂચનાઓ અક્ષમ છે';
	@override String get enabledSubtitle => 'તમને ભોજન રીમાઇન્ડર્સ પ્રાપ્ત થશે';
	@override String get disabledSubtitle => 'ભોજન રીમાઇન્ડર્સ મેળવવા માટે સૂચનાઓ સક્ષમ કરો';
	@override String get mealReminders => 'ભોજન રીમાઇન્ડર્સ';
	@override String get breakfast => 'નાસ્તો';
	@override String get lunch => 'બપોરનું ભોજન';
	@override String get dinner => 'રાતનું ભોજન';
	@override String get snack => 'નાસ્તો';
	@override String get unknown => 'અજાણ્યું';
	@override String get change => 'બદલો';
	@override String get enableNotifications => 'સૂચનાઓ સક્ષમ કરો';
	@override String get skipForNow => 'હમણાં માટે છોડી દો';
	@override String get saveChanges => 'ફેરફારો સાચવો';
	@override String get enabledSuccessfully => 'સૂચનાઓ સફળતાપૂર્વક સક્ષમ થઈ!';
	@override String get permissionDenied => 'સૂચના પરવાનગી નકારી';
	@override String errorEnabling({required Object error}) => 'સૂચનાઓ સક્ષમ કરવામાં ભૂલ: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'સેટઅપ પૂર્ણ કરવામાં ભૂલ: ${error}';
}

// Path: notifications
class _TranslationsNotificationsGu implements TranslationsNotificationsEn {
	_TranslationsNotificationsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastGu breakfast = _TranslationsNotificationsBreakfastGu._(_root);
	@override late final _TranslationsNotificationsLunchGu lunch = _TranslationsNotificationsLunchGu._(_root);
	@override late final _TranslationsNotificationsDinnerGu dinner = _TranslationsNotificationsDinnerGu._(_root);
	@override late final _TranslationsNotificationsSnackGu snack = _TranslationsNotificationsSnackGu._(_root);
	@override late final _TranslationsNotificationsTestGu test = _TranslationsNotificationsTestGu._(_root);
}

// Path: login
class _TranslationsLoginGu implements TranslationsLoginEn {
	_TranslationsLoginGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'લોગિન';
	@override String get signInWithGoogle => 'Google વડે સાઇન ઇન કરો';
	@override String get signInFailed => 'Google સાઇન-ઇન નિષ્ફળ ગયું અથવા રદ કરવામાં આવ્યું.';
}

// Path: disclaimer
class _TranslationsDisclaimerGu implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'કૃપા કરીને નોંધ લો';
	@override late final _TranslationsDisclaimerSnapGu snap = _TranslationsDisclaimerSnapGu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateGu weightEstimate = _TranslationsDisclaimerWeightEstimateGu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsGu healthMetrics = _TranslationsDisclaimerHealthMetricsGu._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureGu calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureGu._(_root);
}

// Path: common
class _TranslationsCommonGu implements TranslationsCommonEn {
	_TranslationsCommonGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get close => 'બંધ કરો';
	@override String get kContinue => 'ચાલુ રાખો';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingGu implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} નો આનંદ માણી રહ્યા છો?';
	@override String get yes => 'હા, હું તેનો આનંદ માણી રહ્યો છું';
	@override String get no => 'ખરેખર નહીં';
	@override String get rateStepHeading => 'Play Store પર રેટ કરો';
	@override String get emailStepHeading => 'ઇમેઇલ દ્વારા પ્રતિસાદ મોકલો';
	@override String soloDevMessage({required Object appLabel}) => 'એક ઝડપી રેટિંગ અન્ય લોકોને ${appLabel} શોધવામાં મદદ કરે છે અને વિકાસ ચાલુ રાખે છે. શું તમે એક ક્ષણ માટે એક છોડશો?';
	@override String get shareFeedbackViaEmail => 'તમારો પ્રતિસાદ આગળ શું આવે છે તેને આકાર આપે છે — અમે દરેક સંદેશ વાંચીએ છીએ. શું તમે ઇમેઇલ દ્વારા તમારા વિચારો શેર કરવા માંગો છો?';
	@override String get rateCta => 'Play Store પર રેટ કરો';
	@override String get maybeLater => 'કદાચ પછી';
	@override String get sendFeedback => 'પ્રતિસાદ મોકલો';
	@override String get noThanks => 'ના આભાર';
	@override String get aboutUsDescription => 'એક નાની ટીમ દ્વારા કાળજીપૂર્વક બનાવવામાં આવ્યું છે. અમે ગોપનીયતા, સરળતા અને તમને વધુ સારી ખાવાની ટેવો બનાવવામાં મદદ કરવા પર ધ્યાન કેન્દ્રિત કરીએ છીએ.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel} પાછળ કોણ છે તે જાણવા ઉત્સુક છો? જુઓ ';
	@override String get aboutUsLinkLabel => 'અમારા વિશે';
	@override String get thankYouMessage => 'આભાર! અમે તમને બીજી વાર પૂછીશું.';
}

// Path: health
class _TranslationsHealthGu implements TranslationsHealthEn {
	_TranslationsHealthGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect સાથે સમન્વયિત કરી શકાયું નથી';
	@override String get mealSynced => 'ભોજન Health Connect સાથે સમન્વયિત થયું';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesGu implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionGu foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionGu._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisGu aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisGu._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationGu healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationGu._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderGu implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારું લિંગ શું છે?';
	@override String get description => 'લિંગ અમને તમારા બેઝલ મેટાબોલિક રેટ (BMR) ની સચોટ ગણતરી કરવામાં મદદ કરે છે.';
	@override String get next => 'આગળ';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightGu implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારી ઊંચાઈ કેટલી છે?';
	@override String get description => 'તમારી ઊંચાઈ અમને તમારા BMI અને ઊર્જાની જરૂરિયાતોની સચોટ ગણતરી કરવામાં મદદ કરે છે.';
	@override String get metric => 'મેટ્રિક';
	@override String get imperial => 'ઇમ્પિરિયલ';
	@override String get next => 'આગળ';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightGu implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'તમારું વર્તમાન વજન કેટલું છે?';
	@override String get currentDescription => 'તમારા દૈનિક લક્ષ્યોને વ્યક્તિગત કરવા માટે તમારું વર્તમાન વજન આવશ્યક છે.';
	@override String get targetTitle => 'તમારું લક્ષ્ય વજન કેટલું છે?';
	@override String get targetDescription => 'લક્ષ્ય વજન સેટ કરવાથી અમને તમારી લાંબા ગાળાની યોજના નક્કી કરવામાં મદદ મળે છે.';
	@override String get metric => 'મેટ્રિક';
	@override String get imperial => 'ઇમ્પિરિયલ';
	@override String get next => 'આગળ';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeGu implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારો જન્મદિવસ ક્યારે છે?';
	@override String get description => 'તમારી ઉંમર અમને તમારી કેલરીની જરૂરિયાતોની સચોટ ગણતરી કરવામાં મદદ કરે છે.';
	@override String get next => 'આગળ';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleGu implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ઓછું';
	@override String get healthy => 'સ્વસ્થ';
	@override String get overweight => 'વધુ';
	@override String get obese => 'સ્થૂળ';
	@override late final _TranslationsOnboardingBmiScaleCategoriesGu categories = _TranslationsOnboardingBmiScaleCategoriesGu._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesGu messages = _TranslationsOnboardingBmiScaleMessagesGu._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalGu implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારો ધ્યેય શું છે?';
	@override String get description => 'તમે શું પ્રાપ્ત કરવા માંગો છો તેનું શ્રેષ્ઠ વર્ણન કરતો ધ્યેય પસંદ કરો';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelGu implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમે કેટલા સક્રિય છો?';
	@override String get description => 'આ અમને તમારી દૈનિક કેલરીની જરૂરિયાતોની વધુ સચોટ ગણતરી કરવામાં મદદ કરે છે';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectGu implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ કનેક્ટ સાથે કનેક્ટ કરો';
	@override String get description => 'વધુ સારી આંતરદૃષ્ટિ અને સ્વચાલિત કેલરી ટ્રેકિંગ માટે તમારા સ્વાસ્થ્ય ડેટાને સિંક કરો';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingGu automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingGu._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsGu progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsGu._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationGu seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationGu._(_root);
	@override String get connected => 'હેલ્થ કનેક્ટ કનેક્ટેડ';
	@override String get notConnected => 'હેલ્થ કનેક્ટ કનેક્ટેડ નથી';
	@override String get setup => 'હેલ્થ કનેક્ટ સેટઅપ કરો';
	@override String get skipForNow => 'હમણાં માટે છોડો';
	@override String get statusConnected => 'હેલ્થ કનેક્ટ કનેક્ટેડ છે.';
	@override String get statusSuccess => 'હેલ્થ કનેક્ટ સફળતાપૂર્વક કનેક્ટ થઈ ગયું છે!';
	@override String statusPermissionDenied({required Object appLabel}) => 'પરવાનગી નકારી. કૃપા કરીને ${appLabel} માટે તમારા ફોન સેટિંગ્સમાંથી હેલ્થ કનેક્ટ પરવાનગીઓ સક્ષમ કરો.';
	@override String statusError({required Object error}) => 'હેલ્થ કનેક્ટ સેટઅપ કરવામાં ભૂલ: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementGu implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessGu trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessGu._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileGu healthProfile = _TranslationsOnboardingReinforcementHealthProfileGu._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleGu goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleGu._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryGu implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારો AI સારાંશ';
	@override String get logMore => 'તમારી વ્યક્તિગત AI આંતરદૃષ્ટિ મેળવવા માટે આગામી થોડા દિવસોમાં વધુ ભોજન લોગ કરો.';
	@override String get loading => 'તમારો સારાંશ લોડ થઈ રહ્યો છે...';
	@override String mealCount({required Object count}) => '${count} ભોજન લોગ થયા';
	@override String macroBalanceScore({required Object score}) => 'સંતુલન સ્કોર ${score}';
	@override String get topFoods => 'ટોચના ખોરાક';
	@override String get trendUp => 'કેલરી વધી રહી છે';
	@override String get trendDown => 'કેલરી ઘટી રહી છે';
	@override String get trendSteady => 'કેલરી સ્થિર રહી છે';
	@override String generatedAt({required Object time}) => '${time} અપડેટ થયું';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalGu implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારો દૈનિક લક્ષ્ય સેટ કરો';
	@override String get titleSet => 'તમારો દૈનિક લક્ષ્ય';
	@override String get description => 'તમારી સુખાકારી યાત્રા શરૂ કરવા તૈયાર છો? તમારી પ્રગતિ શરૂ કરવા માટે નીચે તમારો દૈનિક કેલરી લક્ષ્ય સેટ કરો.';
	@override String get descriptionSet => 'તમારું હોકાયંત્ર સેટ છે! આ તમારો દૈનિક કેલરી લક્ષ્ય છે જે તમને માર્ગદર્શન આપશે.';
	@override String get yourGoal => 'તમારો લક્ષ્ય';
	@override String get goal => 'લક્ષ્ય';
	@override String get dailyCalories => 'દૈનિક કેલરી (kcal)';
	@override String get setGoal => 'લક્ષ્ય સેટ કરો';
	@override String get intake => 'સેવન';
	@override String get burned => 'બર્ન થયું';
	@override String get weightImpact => 'વજન પર અસર';
	@override String get estLoss => 'અંદાજિત ઘટાડો';
	@override String get estGain => 'અંદાજિત વધારો';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryGu implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'દૈનિક સારાંશ';
	@override String get calories => 'કેલરી';
	@override String get carbs => 'કાર્બોહાઇડ્રેટ્સ';
	@override String get protein => 'પ્રોટીન';
	@override String get fat => 'ચરબી';
	@override String get fiber => 'ફાઇબર';
	@override String get grams => 'ગ્રામ';
	@override String get chartAccessibilityLabel => 'મેક્રો ચાર્ટ';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressGu implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'આજનું મેક્રો વિભાજન';
	@override String get target => 'લક્ષ્ય';
	@override String get current => 'વર્તમાન';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryGu implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => '7-દિવસનો મેક્રો ઇતિહાસ';
	@override String get trendTitle => 'આજનો ટ્રેન્ડ';
	@override String peakHour({required Object hour}) => 'પીક: ${hour}:00';
	@override String get noHistoryYet => 'હજુ કોઈ ઇતિહાસ નથી';
	@override String get startLogging => 'તમારા 7-દિવસના મેક્રો ટ્રેન્ડ અહીં જોવા માટે\nભોજન લોગ કરવાનું શરૂ કરો';
}

// Path: home.mealLog
class _TranslationsHomeMealLogGu implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'લોગ થયેલા ભોજન';
	@override String get emptyMessage => 'અહીં લોગ કરવા માટે તમારા છેલ્લા ભોજનનો ફોટો લો.';
	@override String get noMealsToday => 'આજે કોઈ ભોજન રેકોર્ડ થયું નથી';
	@override String get seeAllMeals => 'બધા ભોજન જુઓ';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionGu implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI સાથે ઝડપી ઉમેરો';
	@override String get description => 'તમારા ભોજનનું વર્ણન કરો, અને AI ને વિગતો સંભાળવા દો.';
	@override String get hint => 'દા.ત. નાસ્તામાં મેં એક મોટી વાટકી ઓટમીલ, એક કાપેલું કેળું અને એક સ્કૂપ વ્હે પ્રોટીન લીધું હતું...';
	@override String get analyzeMeal => 'ભોજનનું વિશ્લેષણ કરો';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsGu implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'મનપસંદ ભોજન';
	@override String get description => 'તમારા મનપસંદ ભોજનમાંથી એક ઝડપથી ઉમેરો.';
	@override String get noFavorites => 'હજુ કોઈ મનપસંદ ભોજન નથી.';
	@override String get addFavoriteHint => 'ભોજનને મનપસંદ તરીકે ચિહ્નિત કરવા માટે તેના પરના સ્ટાર પર ક્લિક કરો.';
	@override String get seeAll => 'બધા જુઓ';
	@override String get add => 'ઉમેરો';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapGu implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારા ભોજનનો ફોટો લો અને ટ્રૅક કરો';
	@override String get description => 'AI વિશ્લેષણ માટે તમારા ખોરાકનો ફોટો લેવા માટે તમારા કેમેરાનો ઉપયોગ કરો.';
	@override String get openCamera => 'કેમેરા ખોલો';
	@override String get gallery => 'ગેલેરી';
	@override String get compressingPhoto => 'ફોટો ઑપ્ટિમાઇઝ કરી રહ્યું છે…';
	@override String get uploadingPhoto => 'ફોટો અપલોડ કરી રહ્યું છે…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthGu implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect સાથે સમન્વય કરો';
	@override String get description => 'તમારા પોષણ ડેટાને Health Connect સાથે સમન્વય કરો';
	@override String get install => 'ઇન્સ્ટોલ કરો';
	@override String get connect => 'કનેક્ટ કરો';
}

// Path: meal.nutrition
class _TranslationsMealNutritionGu implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get calories => 'કેલરી';
	@override String get carbs => 'કાર્બોહાઇડ્રેટ્સ (g)';
	@override String get protein => 'પ્રોટીન (g)';
	@override String get fat => 'ચરબી (g)';
	@override String get fiber => 'ફાઇબર (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationGu implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભોજન કાઢી નાખો';
	@override String get message => 'શું તમે ખરેખર આ ભોજન એન્ટ્રી કાઢી નાખવા માંગો છો?';
	@override String get cancel => 'રદ કરો';
	@override String get delete => 'કાઢી નાખો';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowGu implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'પ્રશ્ન ${current} માંથી ${total}';
	@override String get noQuestionsAvailable => 'કોઈ પ્રશ્નો ઉપલબ્ધ નથી';
	@override String get next => 'આગળ';
	@override String get continueLabel => 'ચાલુ રાખો';
}

// Path: meal.analysis
class _TranslationsMealAnalysisGu implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારા ભોજનનું વિશ્લેષણ કરી રહ્યા છીએ';
	@override String get stepStarted => 'શરૂઆત કરી રહ્યા છીએ…';
	@override String get stepDecomposition => 'તમારા ભોજનને સમજી રહ્યા છીએ…';
	@override String get stepIngredients => 'ઘટકોને પોષણ ડેટા સાથે મેચ કરી રહ્યા છીએ…';
	@override String get stepUncertainty => 'વિશ્વાસ તપાસી રહ્યા છીએ…';
	@override String get stepMealTypeQuestion => 'લગભગ થઈ ગયું…';
	@override String get stepResult => 'તમારા પરિણામને અંતિમ સ્વરૂપ આપી રહ્યા છીએ…';
	@override String get stepError => 'કંઈક ખોટું થયું';
	@override String get stepDefault => 'તમારા ભોજનનું વિશ્લેષણ કરી રહ્યા છીએ…';
	@override String get progressUnderstand => 'તમારા ભોજનને સમજવું';
	@override String get progressMatch => 'ઘટક પોષણ શોધી રહ્યા છીએ';
	@override String get progressCheck => 'ભાગો અને વિશ્વાસ તપાસી રહ્યા છીએ';
	@override String get progressMealType => 'ભોજનનો પ્રકાર પસંદ કરી રહ્યા છીએ';
	@override String get progressFinish => 'કેલરી અને મેક્રોની ગણતરી કરી રહ્યા છીએ';
	@override String get detectedIngredientHeading => 'અમે જે ઘટકો શોધી રહ્યા છીએ';
	@override String ingredientsOverflow({required Object count}) => 'વધુ ${count}';
	@override String ingredientsLine({required Object count}) => '${count} ઘટકો મળ્યા';
	@override String get ingredientsPending => 'ઘટકો સ્કેન કરી રહ્યા છીએ…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'ટીપ: સુસંગતતા સંપૂર્ણતા કરતાં વધુ સારી છે—નિયમિત લોગ મહત્વપૂર્ણ પેટર્ન દર્શાવે છે.';
	@override String get offlineTip1 => 'ટીપ: ફોટા માટે, કુદરતી પ્રકાશ અને ટોપ-ડાઉન દૃશ્ય ભાગની ચોકસાઈમાં મદદ કરે છે.';
	@override String get offlineTip2 => 'ટીપ: પીણાં, ચટણીઓ અને રસોઈ તેલનો ઉલ્લેખ કરો—તેઓ એવી કેલરી ઉમેરે છે જે લોકો ઘણીવાર ભૂલી જાય છે.';
	@override String get offlineTip3 => 'ટીપ: એક ઝડપી ભાગ નોંધ (1 વાટકી, મોટી કોફી) અંદાજોને વધુ તીવ્ર બનાવે છે.';
	@override String get offlineTip4 => 'ટીપ: ભોજન પછી લોગિંગ હજુ પણ આદત બનાવે છે; સંપૂર્ણતા વૈકલ્પિક છે.';
	@override String get offlineTip5 => 'ટીપ: જ્યારે કેલરીમાં ઘણો ફેરફાર થાય ત્યારે ખોરાક કેવી રીતે રાંધવામાં આવ્યો તે કહો (તળેલું વિરુદ્ધ શેકેલું).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackGu implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'શું ખોટું લાગે છે?';
	@override String get subtitle => 'એક અથવા વધુ સમસ્યાઓ પસંદ કરીને વિશ્લેષણને સુધારવામાં અમારી સહાય કરો.';
	@override String get tellUsMore => 'વધુ કહો';
	@override String get describeIncorrect => 'શું ખોટું હતું તેનું વર્ણન કરો';
	@override String get submit => 'સબમિટ કરો';
	@override String get issueFoodIdentification => 'ખોરાકની ઓળખ';
	@override String get issuePortionSize => 'ભાગનું કદ';
	@override String get issueCalorieDistribution => 'કેલરી વિતરણ';
	@override String get issueMacrosWrong => 'મેક્રો ખોટા છે';
	@override String get issueMissingItems => 'ગુમ થયેલ વસ્તુઓ';
	@override String get issueExtraItems => 'વધારાની વસ્તુઓ';
	@override String get issueOther => 'અન્ય';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsGu implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get recent => 'તાજેતરના';
	@override String get calories => 'કેલરી';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsGu implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'પ્રોફાઇલ';
	@override String get basicInformation => 'મૂળભૂત માહિતી';
	@override String get goalsAndActivity => 'લક્ષ્યો અને પ્રવૃત્તિ';
	@override String get calculatedValues => 'ગણતરી કરેલ મૂલ્યો';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesGu implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'દૈનિક લક્ષ્ય';
	@override String get calPerDay => 'કેલરી/દિવસ';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsGu implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'વ્યક્તિગત માહિતી';
	@override String get physicalMeasurements => 'શારીરિક માપ';
	@override String get goalsAndActivity => 'લક્ષ્યો અને પ્રવૃત્તિ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersGu implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get male => 'પુરુષ';
	@override String get female => 'સ્ત્રી';
	@override String get other => 'અન્ય';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsGu implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightGu loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightGu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightGu maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightGu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightGu gainWeight = _TranslationsEditProfileWeightGoalsGainWeightGu._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsGu implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryGu sedentary = _TranslationsEditProfileActivityLevelsSedentaryGu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveGu lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveGu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveGu moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveGu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveGu veryActive = _TranslationsEditProfileActivityLevelsVeryActiveGu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveGu extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveGu._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsGu implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'પ્રોફાઇલ';
	@override String get localization => 'સ્થાનિકીકરણ';
	@override String get notifications => 'સૂચનાઓ';
	@override String get healthConnect => 'હેલ્થ કનેક્ટ';
	@override String get supportAndLegal => 'સપોર્ટ અને કાનૂની';
	@override String get about => 'વિશે';
	@override String get dangerZone => 'ડેન્જર ઝોન';
	@override String get developer => 'ડેવલપર';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileGu implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રોફાઇલ સંપાદિત કરો';
	@override String get subtitle => 'તમારી વ્યક્તિગત માહિતી અપડેટ કરો';
}

// Path: settings.language
class _TranslationsSettingsLanguageGu implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભાષા';
	@override String get subtitle => 'તમારી પસંદગીની ભાષા પસંદ કરો';
	@override String get searchHint => 'ભાષાઓ શોધો...';
	@override String get noResults => 'કોઈ પરિણામ મળ્યું નથી';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitGu implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ઊંચાઈનો એકમ';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitGu implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વજનનો એકમ';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersGu implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભોજન રીમાઇન્ડર્સ';
	@override String get subtitle => 'સમયસર ચેતવણીઓ સાથે ટ્રેક પર રહો';
}

// Path: settings.theme
class _TranslationsSettingsThemeGu implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'થીમ';
	@override String get light => 'લાઇટ';
	@override String get dark => 'ડાર્ક';
	@override String get system => 'સિસ્ટમ';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackGu implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રતિસાદ મોકલો';
	@override String subtitle({required Object appLabel}) => '${appLabel} સુધારવામાં અમારી સહાય કરો';
	@override String emailSubject({required Object appLabel}) => '${appLabel} એપ્લિકેશન પ્રતિસાદ';
	@override String get emailBodyPrefix => 'કૃપા કરીને નીચે તમારો પ્રતિસાદ આપો:';
	@override String get appVersion => 'એપ્લિકેશન સંસ્કરણ';
	@override String get device => 'ઉપકરણ';
	@override String get osVersion => 'OS સંસ્કરણ';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryGu implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભોજન ઇતિહાસ નિકાસ કરો';
	@override String get subtitle => 'તમારા લોગ કરેલા ભોજનનો CSV શેર કરો';
	@override String get shareText => 'તમારો Calorify ભોજન ઇતિહાસ નિકાસ';
	@override String failed({required Object error}) => 'ભોજન ઇતિહાસ નિકાસ કરી શકાયો નથી: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataGu implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'બધો ડેટા સાફ કરો';
	@override String get subtitle => 'તમારી બધી માહિતી કાયમ માટે કાઢી નાખો';
	@override String get confirmationTitle => 'બધો ડેટા સાફ કરવો?';
	@override String get confirmationMessage => 'આ ક્રિયા પૂર્વવત્ કરી શકાતી નથી. તમારા બધા લોગ કરેલા ભોજન, મનપસંદ અને પ્રોફાઇલ સેટિંગ્સ કાયમ માટે કાઢી નાખવામાં આવશે.';
	@override String get cancel => 'રદ કરો';
	@override String get clearEverything => 'બધું સાફ કરો';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsGu implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ડીબગ વિકલ્પો';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectGu implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ કનેક્ટ';
	@override String get subtitle => 'પરવાનગીઓ જુઓ અને મેનેજ કરો';
	@override late final _TranslationsSettingsHealthConnectUnavailableGu unavailable = _TranslationsSettingsHealthConnectUnavailableGu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsGu permissions = _TranslationsSettingsHealthConnectPermissionsGu._(_root);
	@override String get managePermissions => 'પરવાનગીઓ મેનેજ કરો';
	@override String get openSettings => 'હેલ્થ કનેક્ટ સેટિંગ્સ ખોલો';
	@override String get requestPermissions => 'પરવાનગીઓની વિનંતી કરો';
	@override String get permissionRequestCancelledOrFailed => 'પરવાનગી વિનંતી રદ કરવામાં આવી અથવા નિષ્ફળ ગઈ. કૃપા કરીને ફરી પ્રયાસ કરો અથવા હેલ્થ કનેક્ટ સેટિંગ્સમાં મેન્યુઅલી પરવાનગીઓ આપો.';
	@override String get permissionRequestFailed => 'પરવાનગીઓની વિનંતી કરવામાં અસમર્થ. કૃપા કરીને ફરી પ્રયાસ કરો અથવા હેલ્થ કનેક્ટ સેટિંગ્સમાં મેન્યુઅલી પરવાનગીઓ આપો.';
	@override String get requestingPermissions => 'વિનંતી કરી રહ્યું છે...';
}

// Path: settings.about
class _TranslationsSettingsAboutGu implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વિશે';
	@override String get tagline => 'ઝડપી, મફત અને ગોપનીયતા-પ્રથમ કેલરી જાગૃતિ';
	@override late final _TranslationsSettingsAboutOurStoryGu ourStory = _TranslationsSettingsAboutOurStoryGu._(_root);
	@override late final _TranslationsSettingsAboutPrivacyGu privacy = _TranslationsSettingsAboutPrivacyGu._(_root);
	@override late final _TranslationsSettingsAboutDeveloperGu developer = _TranslationsSettingsAboutDeveloperGu._(_root);
	@override late final _TranslationsSettingsAboutFeedbackGu feedback = _TranslationsSettingsAboutFeedbackGu._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoGu implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'બિલ્ડ ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastGu implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'નાસ્તાનો સમય! 🍳';
	@override String get body => 'તમારો નાસ્તો લોગ કરવાનું ભૂલશો નહીં';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchGu implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'બપોરના ભોજનનો સમય! 🥗';
	@override String get body => 'તમારું બપોરનું ભોજન લોગ કરવાનો સમય';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerGu implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'રાત્રિભોજનનો સમય! 🍽️';
	@override String get body => 'તમારું રાત્રિભોજન લોગ કરવાનું ભૂલશો નહીં';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackGu implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'નાસ્તાનો સમય! 🍎';
	@override String get body => 'સ્વસ્થ નાસ્તાનો સમય';
}

// Path: notifications.test
class _TranslationsNotificationsTestGu implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પરીક્ષણ સૂચના';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapGu implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} અંદાજિત પોષણ માહિતી પ્રદાન કરે છે. ચોકસાઈ તમારા ઇનપુટ અને ખોરાકની વિવિધતાઓ પર આધારિત છે. માર્ગદર્શિકા તરીકે ઉપયોગ કરો, ચોક્કસ સ્ત્રોત તરીકે નહીં. વ્યક્તિગત આહાર સલાહ માટે વ્યાવસાયિકની સલાહ લો.';
	@override late final _TranslationsDisclaimerSnapPortionSizeGu portionSize = _TranslationsDisclaimerSnapPortionSizeGu._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsGu preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsGu._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsGu ingredients = _TranslationsDisclaimerSnapIngredientsGu._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsGu databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsGu._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateGu implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વજનના અંદાજ વિશે';
	@override String get description => 'અંદાજિત વજનમાં ફેરફાર એ સરળ કેલરી-ઇન વિ. કેલરી-આઉટ મોડેલ પર આધારિત સૈદ્ધાંતિક અંદાજ છે. તે ફક્ત પ્રેરક માર્ગદર્શન માટે છે, તમારા વાસ્તવિક વજનની આગાહી તરીકે નહીં.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyGu calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyGu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsGu biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsGu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightGu waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightGu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceGu professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceGu._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsGu implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get description => 'આ મેટ્રિક્સ તમને તમારા શરીરની ઊર્જાની જરૂરિયાતોને સમજવામાં અને તમારા પોષણ લક્ષ્યોને માર્ગદર્શન આપવામાં મદદ કરે છે.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrGu bmr = _TranslationsDisclaimerHealthMetricsBmrGu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeGu tdee = _TranslationsDisclaimerHealthMetricsTdeeGu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalGu dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalGu._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureGu implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'કેલરી ખર્ચનો અંદાજ';
	@override String get description => 'જ્યારે Health Connect ડેટા અનુપલબ્ધ હોય, ત્યારે અમે તમારા બેઝલ મેટાબોલિક રેટ (BMR) અને પ્રવૃત્તિ સ્તર (TDEE) નો ઉપયોગ કરીને આજે બળી ગયેલી કેલરીનો અંદાજ લગાવીએ છીએ, જે દિવસના વીતી ગયેલા ભાગ માટે સ્કેલ કરવામાં આવે છે.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedGu howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedGu._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceGu professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceGu._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionGu implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'સ્માર્ટ ફૂડ રેકગ્નિશન';
	@override String get description => 'ફોટો લો અને AI ને તમારું ભોજન ઓળખવા દો';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisGu implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI વિશ્લેષણ';
	@override String get description => 'તમારા વર્ણનોમાંથી ત્વરિત પોષણ તથ્યો મેળવો';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationGu implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ ઇન્ટિગ્રેશન';
	@override String get description => 'વધુ સારી આંતરદૃષ્ટિ માટે હેલ્થ કનેક્ટ સાથે કનેક્ટ કરો';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesGu implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ઓછું વજન';
	@override String get healthyWeight => 'સ્વસ્થ વજન';
	@override String get overweight => 'વધુ વજન';
	@override String get obese => 'સ્થૂળતા';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesGu implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'અમે તમને પોષક તત્ત્વોથી ભરપૂર ભોજન સાથે સંતુલિત વજન સુધી પહોંચવા માટે સ્વસ્થ યોજના બનાવવામાં મદદ કરી શકીએ છીએ.';
	@override String get healthy => 'ખૂબ સરસ કામ! તમે સ્વસ્થ શ્રેણીમાં છો. અમે તમને તમારી જીવંતતા અને ઊર્જા સ્તર જાળવી રાખવામાં મદદ કરીશું.';
	@override String overweight({required Object appLabel}) => '${appLabel} તમારા લક્ષ્ય સુધી આરામથી પહોંચવામાં મદદ કરવા માટે AI-સંચાલિત ટ્રેકિંગ સાથે તમારી યાત્રાને સરળ બનાવશે.';
	@override String get obese => 'અમે તમારા સ્વાસ્થ્ય લક્ષ્યો માટે વ્યક્તિગત માર્ગદર્શન અને ટકાઉ વ્યૂહરચનાઓ સાથે તમને ટેકો આપવા માટે અહીં છીએ.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingGu implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'સ્વચાલિત કેલરી ટ્રેકિંગ';
	@override String get description => 'તમારી ફિટનેસ એપ્લિકેશન્સમાંથી બર્ન થયેલી કેલરી ટ્રૅક કરો';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsGu implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રગતિ આંતરદૃષ્ટિ';
	@override String get description => 'તમારા સ્વાસ્થ્યના વલણો વિશે વિગતવાર આંતરદૃષ્ટિ મેળવો';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationGu implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'સીમલેસ ઇન્ટિગ્રેશન';
	@override String get description => 'તમારી મનપસંદ સ્વાસ્થ્ય એપ્લિકેશન્સમાંથી ડેટા સિંક કરો';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessGu implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમે એકલા નથી';
	@override String get genericMessage => 'સંશોધન દર્શાવે છે કે સુસંગત ટ્રેકિંગ લાંબા ગાળાની સફળતાનું #1 અનુમાનક છે.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age} વર્ષના ${gender} માટે જે ${goal} કરવા માંગે છે, સુસંગત ટ્રેકિંગ સફળતાનું #1 અનુમાનક છે.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} તેને મેન્યુઅલી કરવા કરતાં 10 ગણું સરળ બનાવે છે.';
	@override String get getStartedTitle => 'શરૂ કરવા તૈયાર છો?';
	@override String get tipPhoto => 'ત્વરિત વિશ્લેષણ માટે તમારા ભોજનનો ફોટો લો';
	@override String get tipConsistency => 'સાર્થક પ્રગતિ જોવા માટે સુસંગત રીતે લોગ કરો';
	@override String get tipProgress => 'પ્રેરિત રહેવા માટે તમારી પ્રગતિ દૈનિક ટ્રૅક કરો';
	@override String get button => 'ચાલો જઈએ';
	@override String get defaultGender => 'વ્યક્તિ';
	@override String get defaultGoal => 'સ્વસ્થ તમે';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileGu implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારી સ્વાસ્થ્ય પ્રોફાઇલ';
	@override String bmiDescription({required Object bmi}) => 'તમારા મેટ્રિક્સના આધારે, તમારો BMI ${bmi} છે.';
	@override String get finalizeDescription => 'તમારા અનુભવને કસ્ટમાઇઝ કરવા માટે ચાલો તમારી પ્રોફાઇલને અંતિમ સ્વરૂપ આપીએ.';
	@override String get goalGain => 'મેળવો';
	@override String get goalLose => 'ઘટાડો';
	@override String goalReach({required Object diff, required Object unit, required Object direction}) => 'તમારા લક્ષ્ય સુધી પહોંચવા માટે, તમે ${diff} ${unit} ${direction} કરશો.';
	@override String get goalReached => 'તમે તમારા લક્ષ્ય વજન પર છો! અમે તમને તેને જાળવી રાખવામાં મદદ કરીશું.';
	@override String get button => 'ચાલો જઈએ';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleGu implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ઉત્તમ શરૂઆત!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'તમે ${goalText} તરફ પ્રથમ પગલું ભર્યું છે. કારણ કે તમે ${activityText} છો, ${appLabel} તમારી જીવનશૈલી સાથે મેળ ખાતા તમારા લક્ષ્યોને સમાયોજિત કરશે.';
	@override String get personalizedTargets => 'વ્યક્તિગત કેલરી લક્ષ્યો';
	@override String get aiMealDetection => 'AI-સંચાલિત ભોજન શોધ';
	@override String get macroBreakdowns => 'વિગતવાર મેક્રો-પોષક વિભાજન';
	@override String get button => 'ચાલો જઈએ';
	@override String get defaultGoal => 'તમારા લક્ષ્યો';
	@override String get defaultActivity => 'સક્રિય';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightGu implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'વજન ઘટાડવું';
	@override String get description => 'વજન ઘટાડવા માટે કેલરીની ઉણપ બનાવો';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightGu implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'વજન જાળવી રાખવું';
	@override String get description => 'તમારું વર્તમાન વજન જાળવી રાખો';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightGu implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'વજન વધારવું';
	@override String get description => 'વજન વધારવા માટે કેલરીનો વધારો બનાવો';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryGu implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'નિષ્ક્રિય';
	@override String get description => 'ઓછી અથવા કોઈ કસરત નહીં';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveGu implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'હળવી સક્રિય';
	@override String get description => 'અઠવાડિયામાં 1-3 દિવસ હળવી કસરત';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveGu implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'મધ્યમ સક્રિય';
	@override String get description => 'અઠવાડિયામાં 3-5 દિવસ મધ્યમ કસરત';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveGu implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'ખૂબ સક્રિય';
	@override String get description => 'અઠવાડિયામાં 6-7 દિવસ સખત કસરત';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveGu implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'અત્યંત સક્રિય';
	@override String get description => 'ખૂબ સખત કસરત, શારીરિક નોકરી';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableGu implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ કનેક્ટ અનુપલબ્ધ';
	@override String get description => 'આ ઉપકરણ પર હેલ્થ કનેક્ટ ઉપલબ્ધ નથી. કૃપા કરીને Play Store (Android 9+) પરથી હેલ્થ કનેક્ટ ઇન્સ્ટોલ કરો અથવા Android 14+ પર અપડેટ કરો.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsGu implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પરવાનગીઓ';
	@override String get description => 'હેલ્થ કનેક્ટ એકીકરણ પ્રદાન કરવા માટે નીચેની પરવાનગીઓની વિનંતી કરવામાં આવે છે:';
	@override String get granted => 'મંજૂર';
	@override String get notGranted => 'મંજૂર નથી';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedGu caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedGu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadGu nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadGu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteGu nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteGu._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryGu implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'અમારી વાર્તા';
	@override String content({required Object appLabel}) => '${appLabel} એક સરળ હતાશામાંથી જન્મ્યું હતું: મોટાભાગની કેલરી ટ્રેકિંગ એપ્લિકેશનો કાં તો વધુ પડતી જટિલ હોય છે, સતત મેન્યુઅલ ઇનપુટની માંગ કરે છે, ઊંચી સબ્સ્ક્રિપ્શન ફી લે છે અથવા ગોપનીયતા સાથે સમાધાન કરે છે.\n\nએક સોલો ડેવલપર તરીકે, હું કંઈક સરળ અને વધુ ન્યાયી બનાવવા માંગતો હતો — એક એવી એપ્લિકેશન જે પ્રયત્નો ઘટાડવા માટે AI નો ઉપયોગ કરે, ઝડપી અને મફત રહે, અને તમારા સ્વાસ્થ્ય ડેટાને આદર સાથે વર્તે.\n\n${appLabel} એ એવી એપ્લિકેશન છે જે હું ઈચ્છતો હતો કે અસ્તિત્વમાં હોય: કોઈ એકાઉન્ટ્સ નહીં, કોઈ ટ્રેકિંગ નહીં, કોઈ જાહેરાતો નહીં — ફક્ત સ્પષ્ટ, વ્યવહારુ આંતરદૃષ્ટિ અને તમારા સ્વાસ્થ્ય લક્ષ્યો.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyGu implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારી ગોપનીયતા મહત્વપૂર્ણ છે';
	@override String get description => 'ગોપનીયતા એ પછીનો વિચાર નથી — તે એક ડિઝાઇન સિદ્ધાંત છે. વ્યવહારમાં તેનો અર્થ અહીં છે:';
	@override String get noAccounts => 'કોઈ એકાઉન્ટ્સની જરૂર નથી\nએપ્લિકેશનનો તરત જ ઉપયોગ કરો. કોઈ સાઇન-અપ નહીં, કોઈ ઓળખ નહીં.';
	@override String noTracking({required Object appLabel}) => 'કોઈ વર્તણૂકીય ટ્રેકિંગ નહીં\n${appLabel} તમારી પ્રવૃત્તિનું નિરીક્ષણ કરતું નથી, ઉપયોગ પ્રોફાઇલ્સ બનાવતું નથી અથવા તમને એપ્લિકેશન્સ અથવા વેબસાઇટ્સ પર ટ્રૅક કરતું નથી.';
	@override String noAds({required Object appLabel}) => 'ડિઝાઇન દ્વારા જાહેરાત-મુક્ત\n${appLabel} જાહેરાતો અથવા ડેટા-આધારિત મુદ્રીકરણ વિના કાર્ય કરવા માટે બનાવવામાં આવ્યું છે.';
	@override String get noDataSelling => 'કોઈ ડેટા વેચાણ નહીં\nતમારો સ્વાસ્થ્ય ડેટા ક્યારેય વેચવામાં આવતો નથી અથવા તૃતીય પક્ષો સાથે શેર કરવામાં આવતો નથી.';
	@override String get localStorage => 'સ્થાનિક-પ્રથમ સ્ટોરેજ\nતમારો ડેટા તમારા ઉપકરણ પર રહે છે.';
	@override String get privacyPolicy => 'ગોપનીયતા નીતિ';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperGu implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'એકલા ડેવલપર દ્વારા નિર્મિત';
	@override String description({required Object appLabel}) => '${appLabel} એક જ સોલો ડેવલપર દ્વારા બનાવવામાં અને જાળવવામાં આવે છે જે શાંત, ગોપનીયતા-સન્માનિત આરોગ્ય સોફ્ટવેર બનાવવા પર ધ્યાન કેન્દ્રિત કરે છે.\n\nપ્રતિસાદ વ્યક્તિગત રીતે વાંચવામાં આવે છે અને એપ્લિકેશનની દિશાને આકાર આપવામાં મદદ કરે છે.';
	@override String get website => 'વેબસાઇટ';
	@override String get email => 'ઇમેઇલ';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackGu implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} નો આનંદ માણી રહ્યા છો?';
	@override String description({required Object appLabel}) => 'તમારો પ્રતિસાદ ${appLabel} ને દરેક માટે વધુ સારું બનાવવામાં મદદ કરે છે.';
	@override String get rateApp => 'Play Store પર રેટ કરો';
	@override String get sendFeedback => 'પ્રતિસાદ મોકલો';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeGu implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભાગનું કદ';
	@override String get description => 'અંદાજોની ચોકસાઈ તમારા ભાગના કદના સાચા મૂલ્યાંકન પર ખૂબ આધાર રાખે છે.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsGu implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તૈયારી પદ્ધતિઓ';
	@override String description({required Object appLabel}) => 'રસોઈ પદ્ધતિઓ ખોરાકની પોષક સામગ્રીને નોંધપાત્ર રીતે બદલી શકે છે. ${appLabel} ના અંદાજો હંમેશા આ ભિન્નતાઓને ધ્યાનમાં લઈ શકતા નથી.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsGu implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ઘટકો';
	@override String get description => 'ઘણા છુપાયેલા ઘટકોવાળી જટિલ વાનગીઓ ઓછા સચોટ અંદાજો તરફ દોરી શકે છે.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsGu implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ડેટાબેઝ મર્યાદાઓ';
	@override String description({required Object appLabel}) => '${appLabel} નો ફૂડ ડેટાબેઝ વ્યાપક છે પરંતુ તેમાં દરેક એક ખાદ્ય વસ્તુ અથવા ભિન્નતા શામેલ ન હોઈ શકે.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyGu implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'કેલરીની ચોકસાઈ';
	@override String get description => 'આ અંદાજ ફક્ત તમારી ટ્રેક કરેલી કેલરીનું સેવન અને ખર્ચ જેટલો જ સચોટ છે. ખોટું લોગિંગ અચોક્કસ અંદાજમાં પરિણમશે.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsGu implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'જૈવિક પરિબળો';
	@override String description({required Object appLabel}) => 'વાસ્તવિક વજન ઘટાડવું/વધવું ચયાપચય, હોર્મોન્સ, ઊંઘ, તણાવ, હાઇડ્રેશન અને અન્ય વ્યક્તિગત પરિબળોથી પ્રભાવિત થાય છે જે ${appLabel} માપી શકતું નથી.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightGu implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પાણીનું વજન અને વધઘટ';
	@override String get description => 'પાણી જાળવી રાખવા, પાચન અને સમયને કારણે સામાન્ય દૈનિક વજનમાં નોંધપાત્ર વધઘટ થઈ શકે છે. અંદાજ આ દૈનિક ફેરફારોને ધ્યાનમાં લેતો નથી.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceGu implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વ્યાવસાયિક માર્ગદર્શન';
	@override String get description => 'તબીબી નિર્ણયો લેવા માટે આ અંદાજનો ઉપયોગ કરશો નહીં. વ્યક્તિગત વજન વ્યવસ્થાપન સલાહ માટે હંમેશા આરોગ્યસંભાળ વ્યાવસાયિક અથવા નોંધાયેલ આહાર નિષ્ણાતની સલાહ લો.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrGu implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'બેઝલ મેટાબોલિક રેટ (BMR) એ કેલરીની સંખ્યા છે જે તમારું શરીર આરામ કરતી વખતે શ્વાસ લેવા અને રક્ત પરિભ્રમણ જેવા મૂળભૂત કાર્યો જાળવવા માટે બાળે છે. BMR તમારી ઉંમર, લિંગ, ઊંચાઈ અને વજન પર આધાર રાખે છે. ઉચ્ચ BMR નો અર્થ છે કે તમારું શરીર કુદરતી રીતે આરામ કરતી વખતે વધુ કેલરી બાળે છે, જે ઘણીવાર વધુ સ્નાયુ સમૂહ, નાની ઉંમર અથવા પુરુષ હોવાને કારણે થાય છે. નીચું BMR સામાન્ય રીતે ઓછા સ્નાયુ સમૂહ, મોટી ઉંમર અથવા સ્ત્રી હોવાનો સંકેત આપે છે.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeGu implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'કુલ દૈનિક ઊર્જા ખર્ચ (TDEE) એ દરરોજ તમે બાળો છો તે કુલ કેલરી છે, જેમાં તમારું BMR વત્તા શારીરિક પ્રવૃત્તિ અને દૈનિક હલનચલનમાંથી કેલરીનો સમાવેશ થાય છે. TDEE તમારા BMR અને પ્રવૃત્તિ સ્તર પર આધાર રાખે છે. ઉચ્ચ TDEE નો અર્થ છે કે તમે એકંદરે વધુ કેલરી બાળો છો, સામાન્ય રીતે વધુ સક્રિય હોવાને કારણે અથવા ઉચ્ચ BMR હોવાને કારણે. નીચું TDEE ઓછી દૈનિક પ્રવૃત્તિ અથવા નીચા BMR સૂચવે છે.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalGu implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'દૈનિક લક્ષ્ય';
	@override String get description => 'દૈનિક લક્ષ્ય એ તમારા TDEE અને વજનના લક્ષ્યના આધારે તમારી ભલામણ કરેલ દૈનિક કેલરીનું સેવન છે. વજન ઘટાડવા માટે, તમે તમારા TDEE કરતાં ઓછી કેલરીનો વપરાશ કરો છો. વજન જાળવવા માટે, તમે તમારા TDEE સાથે મેળ ખાઓ છો. વજન વધારવા માટે, તમે તમારા TDEE કરતાં વધુ કેલરીનો વપરાશ કરો છો. આ તમને સ્વસ્થ ગતિએ તમારા ઇચ્છિત વજનમાં ફેરફાર પ્રાપ્ત કરવામાં મદદ કરે છે.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedGu implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'અંદાજ કેવી રીતે ગણવામાં આવે છે';
	@override String get description => 'અમે તમારા TDEE (તમારી પ્રોફાઇલના આધારે) ની ગણતરી કરીએ છીએ અને અત્યાર સુધી બળી ગયેલી કેલરીનો અંદાજ કાઢવા માટે તેને દિવસના વીતી ગયેલા અપૂર્ણાંક (કલાકો + મિનિટ) / 24 વડે ગુણાકાર કરીએ છીએ.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceGu implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વ્યાવસાયિક માર્ગદર્શન';
	@override String get description => 'તબીબી નિર્ણયો લેવા માટે આ અંદાજનો ઉપયોગ કરશો નહીં. વ્યક્તિગત વજન વ્યવસ્થાપન સલાહ માટે હંમેશા આરોગ્યસંભાળ વ્યાવસાયિક અથવા નોંધાયેલ આહાર નિષ્ણાતની સલાહ લો.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedGu implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'કુલ બળી ગયેલી કેલરી વાંચો';
	@override String get description => 'એપ્લિકેશનને હેલ્થ કનેક્ટમાંથી તમારી કુલ બળી ગયેલી કેલરી વાંચવાની મંજૂરી આપે છે.';
	@override String get usage => 'આ પરવાનગીનો ઉપયોગ એપ્લિકેશનમાં તમારી દૈનિક કેલરી બર્ન દર્શાવવા માટે થાય છે, જે તમને દિવસભર તમારા કુલ ઊર્જા ખર્ચને સમજવામાં મદદ કરે છે.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadGu implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પોષણ ડેટા વાંચો';
	@override String get description => 'એપ્લિકેશનને હેલ્થ કનેક્ટમાંથી પોષણ ડેટા વાંચવાની મંજૂરી આપે છે.';
	@override String get usage => 'આ પરવાનગી એપ્લિકેશનને પોષણ માહિતી વાંચવાની મંજૂરી આપે છે જે હેલ્થ કનેક્ટ સાથે જોડાયેલ અન્ય એપ્લિકેશનો દ્વારા લોગ કરવામાં આવી હોય, જે તમારા પોષણનો વ્યાપક દૃશ્ય પ્રદાન કરે છે.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteGu implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પોષણ ડેટા લખો';
	@override String get description => 'એપ્લિકેશનને હેલ્થ કનેક્ટમાં પોષણ ડેટા લખવાની મંજૂરી આપે છે.';
	@override String get usage => 'આ પરવાનગી એપ્લિકેશનને તમારા લોગ કરેલા ભોજનને હેલ્થ કનેક્ટમાં સિંક કરવાની મંજૂરી આપે છે, જે તમારા પોષણ ડેટાને તમે ઉપયોગ કરો છો તે અન્ય આરોગ્ય અને ફિટનેસ એપ્લિકેશનો માટે ઉપલબ્ધ બનાવે છે.';
}

/// The flat map containing all translations for locale <gu>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsGu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'ગુજરાતી',
			'flag' => '🇮🇳',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'તમે ઘણી બધી વિનંતીઓ કરી છે. કૃપા કરીને ફરી પ્રયાસ કરતા પહેલા થોડી રાહ જુઓ.',
			'errors.networkError' => 'નેટવર્ક ભૂલ. કૃપા કરીને તમારું ઇન્ટરનેટ કનેક્શન તપાસો.',
			'errors.unknownError' => 'કંઈક ખોટું થયું. કૃપા કરીને પછીથી ફરી પ્રયાસ કરો.',
			'errors.loadingProfileData' => 'પ્રોફાઇલ ડેટા લોડ કરવામાં ભૂલ',
			'errors.somethingWentWrong' => 'કંઈક ખોટું થયું.',
			'errors.retry' => 'ફરી પ્રયાસ કરો',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} માં આપનું સ્વાગત છે',
			'onboarding.subtitle' => 'AI દ્વારા સંચાલિત તમારો વ્યક્તિગત પોષણ સાથી',
			'onboarding.getStarted' => 'શરૂ કરો',
			'onboarding.features.foodRecognition.title' => 'સ્માર્ટ ફૂડ રેકગ્નિશન',
			'onboarding.features.foodRecognition.description' => 'ફોટો લો અને AI ને તમારું ભોજન ઓળખવા દો',
			'onboarding.features.aiAnalysis.title' => 'AI વિશ્લેષણ',
			'onboarding.features.aiAnalysis.description' => 'તમારા વર્ણનોમાંથી ત્વરિત પોષણ તથ્યો મેળવો',
			'onboarding.features.healthIntegration.title' => 'હેલ્થ ઇન્ટિગ્રેશન',
			'onboarding.features.healthIntegration.description' => 'વધુ સારી આંતરદૃષ્ટિ માટે હેલ્થ કનેક્ટ સાથે કનેક્ટ કરો',
			'onboarding.gender.title' => 'તમારું લિંગ શું છે?',
			'onboarding.gender.description' => 'લિંગ અમને તમારા બેઝલ મેટાબોલિક રેટ (BMR) ની સચોટ ગણતરી કરવામાં મદદ કરે છે.',
			'onboarding.gender.next' => 'આગળ',
			'onboarding.height.title' => 'તમારી ઊંચાઈ કેટલી છે?',
			'onboarding.height.description' => 'તમારી ઊંચાઈ અમને તમારા BMI અને ઊર્જાની જરૂરિયાતોની સચોટ ગણતરી કરવામાં મદદ કરે છે.',
			'onboarding.height.metric' => 'મેટ્રિક',
			'onboarding.height.imperial' => 'ઇમ્પિરિયલ',
			'onboarding.height.next' => 'આગળ',
			'onboarding.weight.currentTitle' => 'તમારું વર્તમાન વજન કેટલું છે?',
			'onboarding.weight.currentDescription' => 'તમારા દૈનિક લક્ષ્યોને વ્યક્તિગત કરવા માટે તમારું વર્તમાન વજન આવશ્યક છે.',
			'onboarding.weight.targetTitle' => 'તમારું લક્ષ્ય વજન કેટલું છે?',
			'onboarding.weight.targetDescription' => 'લક્ષ્ય વજન સેટ કરવાથી અમને તમારી લાંબા ગાળાની યોજના નક્કી કરવામાં મદદ મળે છે.',
			'onboarding.weight.metric' => 'મેટ્રિક',
			'onboarding.weight.imperial' => 'ઇમ્પિરિયલ',
			'onboarding.weight.next' => 'આગળ',
			'onboarding.age.title' => 'તમારો જન્મદિવસ ક્યારે છે?',
			'onboarding.age.description' => 'તમારી ઉંમર અમને તમારી કેલરીની જરૂરિયાતોની સચોટ ગણતરી કરવામાં મદદ કરે છે.',
			'onboarding.age.next' => 'આગળ',
			'onboarding.bmiScale.underweight' => 'ઓછું',
			'onboarding.bmiScale.healthy' => 'સ્વસ્થ',
			'onboarding.bmiScale.overweight' => 'વધુ',
			'onboarding.bmiScale.obese' => 'સ્થૂળ',
			'onboarding.bmiScale.categories.underweight' => 'ઓછું વજન',
			'onboarding.bmiScale.categories.healthyWeight' => 'સ્વસ્થ વજન',
			'onboarding.bmiScale.categories.overweight' => 'વધુ વજન',
			'onboarding.bmiScale.categories.obese' => 'સ્થૂળતા',
			'onboarding.bmiScale.messages.underweight' => 'અમે તમને પોષક તત્ત્વોથી ભરપૂર ભોજન સાથે સંતુલિત વજન સુધી પહોંચવા માટે સ્વસ્થ યોજના બનાવવામાં મદદ કરી શકીએ છીએ.',
			'onboarding.bmiScale.messages.healthy' => 'ખૂબ સરસ કામ! તમે સ્વસ્થ શ્રેણીમાં છો. અમે તમને તમારી જીવંતતા અને ઊર્જા સ્તર જાળવી રાખવામાં મદદ કરીશું.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} તમારા લક્ષ્ય સુધી આરામથી પહોંચવામાં મદદ કરવા માટે AI-સંચાલિત ટ્રેકિંગ સાથે તમારી યાત્રાને સરળ બનાવશે.',
			'onboarding.bmiScale.messages.obese' => 'અમે તમારા સ્વાસ્થ્ય લક્ષ્યો માટે વ્યક્તિગત માર્ગદર્શન અને ટકાઉ વ્યૂહરચનાઓ સાથે તમને ટેકો આપવા માટે અહીં છીએ.',
			'onboarding.weightGoal.title' => 'તમારો ધ્યેય શું છે?',
			'onboarding.weightGoal.description' => 'તમે શું પ્રાપ્ત કરવા માંગો છો તેનું શ્રેષ્ઠ વર્ણન કરતો ધ્યેય પસંદ કરો',
			'onboarding.activityLevel.title' => 'તમે કેટલા સક્રિય છો?',
			'onboarding.activityLevel.description' => 'આ અમને તમારી દૈનિક કેલરીની જરૂરિયાતોની વધુ સચોટ ગણતરી કરવામાં મદદ કરે છે',
			'onboarding.healthConnect.title' => 'હેલ્થ કનેક્ટ સાથે કનેક્ટ કરો',
			'onboarding.healthConnect.description' => 'વધુ સારી આંતરદૃષ્ટિ અને સ્વચાલિત કેલરી ટ્રેકિંગ માટે તમારા સ્વાસ્થ્ય ડેટાને સિંક કરો',
			'onboarding.healthConnect.automaticTracking.title' => 'સ્વચાલિત કેલરી ટ્રેકિંગ',
			'onboarding.healthConnect.automaticTracking.description' => 'તમારી ફિટનેસ એપ્લિકેશન્સમાંથી બર્ન થયેલી કેલરી ટ્રૅક કરો',
			'onboarding.healthConnect.progressInsights.title' => 'પ્રગતિ આંતરદૃષ્ટિ',
			'onboarding.healthConnect.progressInsights.description' => 'તમારા સ્વાસ્થ્યના વલણો વિશે વિગતવાર આંતરદૃષ્ટિ મેળવો',
			'onboarding.healthConnect.seamlessIntegration.title' => 'સીમલેસ ઇન્ટિગ્રેશન',
			'onboarding.healthConnect.seamlessIntegration.description' => 'તમારી મનપસંદ સ્વાસ્થ્ય એપ્લિકેશન્સમાંથી ડેટા સિંક કરો',
			'onboarding.healthConnect.connected' => 'હેલ્થ કનેક્ટ કનેક્ટેડ',
			'onboarding.healthConnect.notConnected' => 'હેલ્થ કનેક્ટ કનેક્ટેડ નથી',
			'onboarding.healthConnect.setup' => 'હેલ્થ કનેક્ટ સેટઅપ કરો',
			'onboarding.healthConnect.skipForNow' => 'હમણાં માટે છોડો',
			'onboarding.healthConnect.statusConnected' => 'હેલ્થ કનેક્ટ કનેક્ટેડ છે.',
			'onboarding.healthConnect.statusSuccess' => 'હેલ્થ કનેક્ટ સફળતાપૂર્વક કનેક્ટ થઈ ગયું છે!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'પરવાનગી નકારી. કૃપા કરીને ${appLabel} માટે તમારા ફોન સેટિંગ્સમાંથી હેલ્થ કનેક્ટ પરવાનગીઓ સક્ષમ કરો.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'હેલ્થ કનેક્ટ સેટઅપ કરવામાં ભૂલ: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'તમે એકલા નથી',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'સંશોધન દર્શાવે છે કે સુસંગત ટ્રેકિંગ લાંબા ગાળાની સફળતાનું #1 અનુમાનક છે.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age} વર્ષના ${gender} માટે જે ${goal} કરવા માંગે છે, સુસંગત ટ્રેકિંગ સફળતાનું #1 અનુમાનક છે.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} તેને મેન્યુઅલી કરવા કરતાં 10 ગણું સરળ બનાવે છે.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'શરૂ કરવા તૈયાર છો?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'ત્વરિત વિશ્લેષણ માટે તમારા ભોજનનો ફોટો લો',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'સાર્થક પ્રગતિ જોવા માટે સુસંગત રીતે લોગ કરો',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'પ્રેરિત રહેવા માટે તમારી પ્રગતિ દૈનિક ટ્રૅક કરો',
			'onboarding.reinforcement.trackingSuccess.button' => 'ચાલો જઈએ',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'વ્યક્તિ',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'સ્વસ્થ તમે',
			'onboarding.reinforcement.healthProfile.title' => 'તમારી સ્વાસ્થ્ય પ્રોફાઇલ',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'તમારા મેટ્રિક્સના આધારે, તમારો BMI ${bmi} છે.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'તમારા અનુભવને કસ્ટમાઇઝ કરવા માટે ચાલો તમારી પ્રોફાઇલને અંતિમ સ્વરૂપ આપીએ.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'મેળવો',
			'onboarding.reinforcement.healthProfile.goalLose' => 'ઘટાડો',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object diff, required Object unit, required Object direction}) => 'તમારા લક્ષ્ય સુધી પહોંચવા માટે, તમે ${diff} ${unit} ${direction} કરશો.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'તમે તમારા લક્ષ્ય વજન પર છો! અમે તમને તેને જાળવી રાખવામાં મદદ કરીશું.',
			'onboarding.reinforcement.healthProfile.button' => 'ચાલો જઈએ',
			'onboarding.reinforcement.goalLifestyle.title' => 'ઉત્તમ શરૂઆત!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'તમે ${goalText} તરફ પ્રથમ પગલું ભર્યું છે. કારણ કે તમે ${activityText} છો, ${appLabel} તમારી જીવનશૈલી સાથે મેળ ખાતા તમારા લક્ષ્યોને સમાયોજિત કરશે.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'વ્યક્તિગત કેલરી લક્ષ્યો',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-સંચાલિત ભોજન શોધ',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'વિગતવાર મેક્રો-પોષક વિભાજન',
			'onboarding.reinforcement.goalLifestyle.button' => 'ચાલો જઈએ',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'તમારા લક્ષ્યો',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'સક્રિય',
			'tabs.dashboard' => 'ડેશબોર્ડ',
			'tabs.history' => 'ઇતિહાસ',
			'home.aiSummary.title' => 'તમારો AI સારાંશ',
			'home.aiSummary.logMore' => 'તમારી વ્યક્તિગત AI આંતરદૃષ્ટિ મેળવવા માટે આગામી થોડા દિવસોમાં વધુ ભોજન લોગ કરો.',
			'home.aiSummary.loading' => 'તમારો સારાંશ લોડ થઈ રહ્યો છે...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} ભોજન લોગ થયા',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'સંતુલન સ્કોર ${score}',
			'home.aiSummary.topFoods' => 'ટોચના ખોરાક',
			'home.aiSummary.trendUp' => 'કેલરી વધી રહી છે',
			'home.aiSummary.trendDown' => 'કેલરી ઘટી રહી છે',
			'home.aiSummary.trendSteady' => 'કેલરી સ્થિર રહી છે',
			'home.aiSummary.generatedAt' => ({required Object time}) => '${time} અપડેટ થયું',
			'home.dailyGoal.title' => 'તમારો દૈનિક લક્ષ્ય સેટ કરો',
			'home.dailyGoal.titleSet' => 'તમારો દૈનિક લક્ષ્ય',
			'home.dailyGoal.description' => 'તમારી સુખાકારી યાત્રા શરૂ કરવા તૈયાર છો? તમારી પ્રગતિ શરૂ કરવા માટે નીચે તમારો દૈનિક કેલરી લક્ષ્ય સેટ કરો.',
			'home.dailyGoal.descriptionSet' => 'તમારું હોકાયંત્ર સેટ છે! આ તમારો દૈનિક કેલરી લક્ષ્ય છે જે તમને માર્ગદર્શન આપશે.',
			'home.dailyGoal.yourGoal' => 'તમારો લક્ષ્ય',
			'home.dailyGoal.goal' => 'લક્ષ્ય',
			'home.dailyGoal.dailyCalories' => 'દૈનિક કેલરી (kcal)',
			'home.dailyGoal.setGoal' => 'લક્ષ્ય સેટ કરો',
			'home.dailyGoal.intake' => 'સેવન',
			'home.dailyGoal.burned' => 'બર્ન થયું',
			'home.dailyGoal.weightImpact' => 'વજન પર અસર',
			'home.dailyGoal.estLoss' => 'અંદાજિત ઘટાડો',
			'home.dailyGoal.estGain' => 'અંદાજિત વધારો',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'દૈનિક સારાંશ',
			'home.dailySummary.calories' => 'કેલરી',
			'home.dailySummary.carbs' => 'કાર્બોહાઇડ્રેટ્સ',
			'home.dailySummary.protein' => 'પ્રોટીન',
			'home.dailySummary.fat' => 'ચરબી',
			'home.dailySummary.fiber' => 'ફાઇબર',
			'home.dailySummary.grams' => 'ગ્રામ',
			'home.dailySummary.chartAccessibilityLabel' => 'મેક્રો ચાર્ટ',
			'home.intakeProgress.title' => 'આજનું મેક્રો વિભાજન',
			'home.intakeProgress.target' => 'લક્ષ્ય',
			'home.intakeProgress.current' => 'વર્તમાન',
			'home.intakeHistory.title' => '7-દિવસનો મેક્રો ઇતિહાસ',
			'home.intakeHistory.trendTitle' => 'આજનો ટ્રેન્ડ',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'પીક: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'હજુ કોઈ ઇતિહાસ નથી',
			'home.intakeHistory.startLogging' => 'તમારા 7-દિવસના મેક્રો ટ્રેન્ડ અહીં જોવા માટે\nભોજન લોગ કરવાનું શરૂ કરો',
			'home.mealLog.title' => 'લોગ થયેલા ભોજન',
			'home.mealLog.emptyMessage' => 'અહીં લોગ કરવા માટે તમારા છેલ્લા ભોજનનો ફોટો લો.',
			'home.mealLog.noMealsToday' => 'આજે કોઈ ભોજન રેકોર્ડ થયું નથી',
			'home.mealLog.seeAllMeals' => 'બધા ભોજન જુઓ',
			'home.mealDescription.title' => 'AI સાથે ઝડપી ઉમેરો',
			'home.mealDescription.description' => 'તમારા ભોજનનું વર્ણન કરો, અને AI ને વિગતો સંભાળવા દો.',
			'home.mealDescription.hint' => 'દા.ત. નાસ્તામાં મેં એક મોટી વાટકી ઓટમીલ, એક કાપેલું કેળું અને એક સ્કૂપ વ્હે પ્રોટીન લીધું હતું...',
			'home.mealDescription.analyzeMeal' => 'ભોજનનું વિશ્લેષણ કરો',
			'home.favoriteMeals.title' => 'મનપસંદ ભોજન',
			'home.favoriteMeals.description' => 'તમારા મનપસંદ ભોજનમાંથી એક ઝડપથી ઉમેરો.',
			'home.favoriteMeals.noFavorites' => 'હજુ કોઈ મનપસંદ ભોજન નથી.',
			'home.favoriteMeals.addFavoriteHint' => 'ભોજનને મનપસંદ તરીકે ચિહ્નિત કરવા માટે તેના પરના સ્ટાર પર ક્લિક કરો.',
			'home.favoriteMeals.seeAll' => 'બધા જુઓ',
			'home.favoriteMeals.add' => 'ઉમેરો',
			'home.mealSnap.title' => 'તમારા ભોજનનો ફોટો લો અને ટ્રૅક કરો',
			'home.mealSnap.description' => 'AI વિશ્લેષણ માટે તમારા ખોરાકનો ફોટો લેવા માટે તમારા કેમેરાનો ઉપયોગ કરો.',
			'home.mealSnap.openCamera' => 'કેમેરા ખોલો',
			'home.mealSnap.gallery' => 'ગેલેરી',
			'home.mealSnap.compressingPhoto' => 'ફોટો ઑપ્ટિમાઇઝ કરી રહ્યું છે…',
			'home.mealSnap.uploadingPhoto' => 'ફોટો અપલોડ કરી રહ્યું છે…',
			'home.connectHealth.title' => 'Health Connect સાથે સમન્વય કરો',
			'home.connectHealth.description' => 'તમારા પોષણ ડેટાને Health Connect સાથે સમન્વય કરો',
			'home.connectHealth.install' => 'ઇન્સ્ટોલ કરો',
			'home.connectHealth.connect' => 'કનેક્ટ કરો',
			'history.noMeals' => 'કોઈ ભોજન રેકોર્ડ થયું નથી',
			'history.emptyMessage' => 'અહીં લોગ કરવા માટે તમારા છેલ્લા ભોજનનો ફોટો લો.',
			'history.today' => 'આજે',
			'history.yesterday' => 'ગઈકાલે',
			'meal.ohNo' => 'અરે ના!',
			'meal.delete' => 'કાઢી નાખો',
			'meal.editMeal' => 'ભોજન સંપાદિત કરો',
			'meal.addMeal' => 'ભોજન ઉમેરો',
			'meal.saveMeal' => 'ભોજન સાચવો',
			'meal.save' => 'સાચવો',
			'meal.mealName' => 'ભોજનનું નામ',
			'meal.mealNameHint' => 'દા.ત., ટોસ્ટ સાથે સ્ક્રેમ્બલ્ડ ઇંડા',
			'meal.mealQuantity' => 'ભોજનની માત્રા',
			'meal.mealQuantityHint' => 'દા.ત., 1 વાટકી, 2 સ્લાઇસ',
			'meal.timeOfMeal' => 'ભોજનનો સમય',
			'meal.timeOfMealHint' => 'તમે ભોજન ક્યારે લીધું તે સમય પસંદ કરો',
			'meal.mealType' => 'ભોજનનો પ્રકાર',
			'meal.nutrition.calories' => 'કેલરી',
			'meal.nutrition.carbs' => 'કાર્બોહાઇડ્રેટ્સ (g)',
			'meal.nutrition.protein' => 'પ્રોટીન (g)',
			'meal.nutrition.fat' => 'ચરબી (g)',
			'meal.nutrition.fiber' => 'ફાઇબર (g)',
			'meal.deleteConfirmation.title' => 'ભોજન કાઢી નાખો',
			'meal.deleteConfirmation.message' => 'શું તમે ખરેખર આ ભોજન એન્ટ્રી કાઢી નાખવા માંગો છો?',
			'meal.deleteConfirmation.cancel' => 'રદ કરો',
			'meal.deleteConfirmation.delete' => 'કાઢી નાખો',
			'meal.addedToLog' => 'ભોજન તમારા લોગમાં ઉમેરાયું!',
			'meal.couldNotAdd' => ({required Object error}) => 'ભોજન ઉમેરી શકાયું નથી: ${error}',
			'meal.savedSuccessfully' => 'ભોજન સફળતાપૂર્વક ઉમેરાયું!',
			'meal.updatedSuccessfully' => 'ભોજન સફળતાપૂર્વક અપડેટ થયું!',
			'meal.errorSaving' => ({required Object error}) => 'ભોજન સાચવવામાં ભૂલ: ${error}',
			'meal.removedFromFavorites' => 'મનપસંદમાંથી દૂર કર્યું!',
			'meal.savedAsFavorite' => 'ભોજન મનપસંદ તરીકે સાચવ્યું!',
			'meal.unfavorite' => 'મનપસંદમાંથી દૂર કરો',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'મનપસંદ અપડેટ કરી શકાયું નથી: ${error}',
			'meal.feedbackThanks' => 'પ્રતિસાદ બદલ આભાર!',
			'meal.reanalysisUpdated' => 'તમારા પ્રતિસાદના આધારે ભોજન વિશ્લેષણ અપડેટ થયું.',
			'meal.failedToProcess' => ({required Object error}) => 'પ્રક્રિયા કરવામાં નિષ્ફળ: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'છબી પર પ્રક્રિયા કરવામાં નિષ્ફળ: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'છબી સંકુચિત કરવામાં ભૂલ: ${error}',
			'meal.failedToSave' => 'ડેટા સાચવવામાં નિષ્ફળ. કૃપા કરીને ફરી પ્રયાસ કરો.',
			'meal.skip' => 'છોડો',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'પ્રશ્ન ${current} માંથી ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'કોઈ પ્રશ્નો ઉપલબ્ધ નથી',
			'meal.questionFlow.next' => 'આગળ',
			'meal.questionFlow.continueLabel' => 'ચાલુ રાખો',
			'meal.analysis.title' => 'તમારા ભોજનનું વિશ્લેષણ કરી રહ્યા છીએ',
			'meal.analysis.stepStarted' => 'શરૂઆત કરી રહ્યા છીએ…',
			'meal.analysis.stepDecomposition' => 'તમારા ભોજનને સમજી રહ્યા છીએ…',
			'meal.analysis.stepIngredients' => 'ઘટકોને પોષણ ડેટા સાથે મેચ કરી રહ્યા છીએ…',
			'meal.analysis.stepUncertainty' => 'વિશ્વાસ તપાસી રહ્યા છીએ…',
			'meal.analysis.stepMealTypeQuestion' => 'લગભગ થઈ ગયું…',
			'meal.analysis.stepResult' => 'તમારા પરિણામને અંતિમ સ્વરૂપ આપી રહ્યા છીએ…',
			'meal.analysis.stepError' => 'કંઈક ખોટું થયું',
			'meal.analysis.stepDefault' => 'તમારા ભોજનનું વિશ્લેષણ કરી રહ્યા છીએ…',
			'meal.analysis.progressUnderstand' => 'તમારા ભોજનને સમજવું',
			'meal.analysis.progressMatch' => 'ઘટક પોષણ શોધી રહ્યા છીએ',
			'meal.analysis.progressCheck' => 'ભાગો અને વિશ્વાસ તપાસી રહ્યા છીએ',
			'meal.analysis.progressMealType' => 'ભોજનનો પ્રકાર પસંદ કરી રહ્યા છીએ',
			'meal.analysis.progressFinish' => 'કેલરી અને મેક્રોની ગણતરી કરી રહ્યા છીએ',
			'meal.analysis.detectedIngredientHeading' => 'અમે જે ઘટકો શોધી રહ્યા છીએ',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => 'વધુ ${count}',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ઘટકો મળ્યા',
			'meal.analysis.ingredientsPending' => 'ઘટકો સ્કેન કરી રહ્યા છીએ…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'ટીપ: સુસંગતતા સંપૂર્ણતા કરતાં વધુ સારી છે—નિયમિત લોગ મહત્વપૂર્ણ પેટર્ન દર્શાવે છે.',
			'meal.analysis.offlineTip1' => 'ટીપ: ફોટા માટે, કુદરતી પ્રકાશ અને ટોપ-ડાઉન દૃશ્ય ભાગની ચોકસાઈમાં મદદ કરે છે.',
			'meal.analysis.offlineTip2' => 'ટીપ: પીણાં, ચટણીઓ અને રસોઈ તેલનો ઉલ્લેખ કરો—તેઓ એવી કેલરી ઉમેરે છે જે લોકો ઘણીવાર ભૂલી જાય છે.',
			'meal.analysis.offlineTip3' => 'ટીપ: એક ઝડપી ભાગ નોંધ (1 વાટકી, મોટી કોફી) અંદાજોને વધુ તીવ્ર બનાવે છે.',
			'meal.analysis.offlineTip4' => 'ટીપ: ભોજન પછી લોગિંગ હજુ પણ આદત બનાવે છે; સંપૂર્ણતા વૈકલ્પિક છે.',
			'meal.analysis.offlineTip5' => 'ટીપ: જ્યારે કેલરીમાં ઘણો ફેરફાર થાય ત્યારે ખોરાક કેવી રીતે રાંધવામાં આવ્યો તે કહો (તળેલું વિરુદ્ધ શેકેલું).',
			'meal.feedback.title' => 'શું ખોટું લાગે છે?',
			'meal.feedback.subtitle' => 'એક અથવા વધુ સમસ્યાઓ પસંદ કરીને વિશ્લેષણને સુધારવામાં અમારી સહાય કરો.',
			'meal.feedback.tellUsMore' => 'વધુ કહો',
			'meal.feedback.describeIncorrect' => 'શું ખોટું હતું તેનું વર્ણન કરો',
			'meal.feedback.submit' => 'સબમિટ કરો',
			'meal.feedback.issueFoodIdentification' => 'ખોરાકની ઓળખ',
			'meal.feedback.issuePortionSize' => 'ભાગનું કદ',
			'meal.feedback.issueCalorieDistribution' => 'કેલરી વિતરણ',
			'meal.feedback.issueMacrosWrong' => 'મેક્રો ખોટા છે',
			'meal.feedback.issueMissingItems' => 'ગુમ થયેલ વસ્તુઓ',
			'meal.feedback.issueExtraItems' => 'વધારાની વસ્તુઓ',
			'meal.feedback.issueOther' => 'અન્ય',
			'meal.nameRequired' => 'સાચવતા પહેલા ભોજનનું નામ દાખલ કરો.',
			'favorites.title' => 'મનપસંદ',
			'favorites.empty' => 'હજુ સુધી કોઈ મનપસંદ ભોજન નથી.',
			'favorites.searchPlaceholder' => 'મનપસંદ ભોજન શોધો',
			'favorites.searchEmptyTitle' => 'તમારી શોધ સાથે કોઈ મનપસંદ મેળ ખાતા નથી',
			'favorites.searchEmptySubtitle' => 'અલગ ભોજનનું નામ, જથ્થો અથવા ભોજનનો પ્રકાર અજમાવો.',
			'favorites.sortLabel' => 'મનપસંદને સૉર્ટ કરો',
			'favorites.undo' => 'પૂર્વવત્ કરો',
			'favorites.removed' => ({required Object name}) => '${name} ને મનપસંદમાંથી દૂર કર્યું',
			'favorites.sortOptions.recent' => 'તાજેતરના',
			'favorites.sortOptions.calories' => 'કેલરી',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'પ્રોફાઇલ',
			'profile.noProfileData' => 'કોઈ પ્રોફાઇલ ડેટા મળ્યો નથી',
			'profile.yourProfile' => 'તમારી પ્રોફાઇલ',
			'profile.viewAndManage' => 'તમારી આરોગ્ય માહિતી જુઓ અને મેનેજ કરો',
			'profile.sections.profile' => 'પ્રોફાઇલ',
			'profile.sections.basicInformation' => 'મૂળભૂત માહિતી',
			'profile.sections.goalsAndActivity' => 'લક્ષ્યો અને પ્રવૃત્તિ',
			'profile.sections.calculatedValues' => 'ગણતરી કરેલ મૂલ્યો',
			'profile.gender' => 'લિંગ',
			'profile.height' => 'ઊંચાઈ',
			'profile.weight' => 'વજન',
			'profile.age' => 'ઉંમર',
			'profile.weightGoal' => 'વજનનું લક્ષ્ય',
			'profile.targetWeight' => 'લક્ષ્ય વજન',
			'profile.activityLevel' => 'પ્રવૃત્તિ સ્તર',
			'profile.healthMetrics' => 'આરોગ્ય મેટ્રિક્સ',
			'profile.notSet' => 'સેટ નથી',
			'profile.years' => 'વર્ષ',
			'profile.updatedSuccessfully' => 'પ્રોફાઇલ સફળતાપૂર્વક અપડેટ થઈ!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'દૈનિક લક્ષ્ય',
			'profile.calculatedValues.calPerDay' => 'કેલરી/દિવસ',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'આરોગ્ય સ્કોર',
			'healthScore.whyThisScore' => 'આ સ્કોર શા માટે?',
			'healthScore.note' => 'આ સ્કોર ઓળખાયેલા ઘટકો અને પોષક ઘનતાના આધારે AI અંદાજ છે. આહાર સલાહ માટે હંમેશા કોઈ વ્યાવસાયિકની સલાહ લો.',
			'healthScore.unhealthy' => 'બિનઆરોગ્યપ્રદ',
			'healthScore.healthy' => 'આરોગ્યપ્રદ',
			'healthScore.neutral' => 'તટસ્થ',
			'editProfile.title' => 'પ્રોફાઇલ સંપાદિત કરો',
			'editProfile.sections.personalInformation' => 'વ્યક્તિગત માહિતી',
			'editProfile.sections.physicalMeasurements' => 'શારીરિક માપ',
			'editProfile.sections.goalsAndActivity' => 'લક્ષ્યો અને પ્રવૃત્તિ',
			'editProfile.gender' => 'લિંગ',
			'editProfile.dateOfBirth' => 'જન્મ તારીખ',
			'editProfile.height' => 'ઊંચાઈ',
			'editProfile.weight' => 'વજન',
			'editProfile.weightGoal' => 'વજનનું લક્ષ્ય',
			'editProfile.activityLevel' => 'પ્રવૃત્તિ સ્તર',
			'editProfile.metric' => 'મેટ્રિક',
			'editProfile.imperial' => 'ઇમ્પિરિયલ',
			'editProfile.unitCm' => 'સેમી',
			'editProfile.unitFt' => 'ફૂટ',
			'editProfile.unitKg' => 'કિલો',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'મેટ્રિક (સેમી)',
			'editProfile.imperialFtIn' => 'ઈમ્પિરિયલ (ફૂટ/ઈંચ)',
			'editProfile.metricKg' => 'મેટ્રિક (કિલો)',
			'editProfile.imperialLbs' => 'ઈમ્પિરિયલ (lbs)',
			'editProfile.genders.male' => 'પુરુષ',
			'editProfile.genders.female' => 'સ્ત્રી',
			'editProfile.genders.other' => 'અન્ય',
			'editProfile.weightGoals.loseWeight.name' => 'વજન ઘટાડવું',
			'editProfile.weightGoals.loseWeight.description' => 'વજન ઘટાડવા માટે કેલરીની ઉણપ બનાવો',
			'editProfile.weightGoals.maintainWeight.name' => 'વજન જાળવી રાખવું',
			'editProfile.weightGoals.maintainWeight.description' => 'તમારું વર્તમાન વજન જાળવી રાખો',
			'editProfile.weightGoals.gainWeight.name' => 'વજન વધારવું',
			'editProfile.weightGoals.gainWeight.description' => 'વજન વધારવા માટે કેલરીનો વધારો બનાવો',
			'editProfile.activityLevels.sedentary.name' => 'નિષ્ક્રિય',
			'editProfile.activityLevels.sedentary.description' => 'ઓછી અથવા કોઈ કસરત નહીં',
			'editProfile.activityLevels.lightlyActive.name' => 'હળવી સક્રિય',
			'editProfile.activityLevels.lightlyActive.description' => 'અઠવાડિયામાં 1-3 દિવસ હળવી કસરત',
			'editProfile.activityLevels.moderatelyActive.name' => 'મધ્યમ સક્રિય',
			'editProfile.activityLevels.moderatelyActive.description' => 'અઠવાડિયામાં 3-5 દિવસ મધ્યમ કસરત',
			'editProfile.activityLevels.veryActive.name' => 'ખૂબ સક્રિય',
			'editProfile.activityLevels.veryActive.description' => 'અઠવાડિયામાં 6-7 દિવસ સખત કસરત',
			'editProfile.activityLevels.extremelyActive.name' => 'અત્યંત સક્રિય',
			'editProfile.activityLevels.extremelyActive.description' => 'ખૂબ સખત કસરત, શારીરિક નોકરી',
			'settings.title' => 'સેટિંગ્સ',
			'settings.sections.profile' => 'પ્રોફાઇલ',
			'settings.sections.localization' => 'સ્થાનિકીકરણ',
			'settings.sections.notifications' => 'સૂચનાઓ',
			'settings.sections.healthConnect' => 'હેલ્થ કનેક્ટ',
			'settings.sections.supportAndLegal' => 'સપોર્ટ અને કાનૂની',
			'settings.sections.about' => 'વિશે',
			'settings.sections.dangerZone' => 'ડેન્જર ઝોન',
			'settings.sections.developer' => 'ડેવલપર',
			'settings.editProfile.title' => 'પ્રોફાઇલ સંપાદિત કરો',
			'settings.editProfile.subtitle' => 'તમારી વ્યક્તિગત માહિતી અપડેટ કરો',
			'settings.language.title' => 'ભાષા',
			'settings.language.subtitle' => 'તમારી પસંદગીની ભાષા પસંદ કરો',
			'settings.language.searchHint' => 'ભાષાઓ શોધો...',
			'settings.language.noResults' => 'કોઈ પરિણામ મળ્યું નથી',
			'settings.heightUnit.title' => 'ઊંચાઈનો એકમ',
			'settings.weightUnit.title' => 'વજનનો એકમ',
			'settings.mealReminders.title' => 'ભોજન રીમાઇન્ડર્સ',
			'settings.mealReminders.subtitle' => 'સમયસર ચેતવણીઓ સાથે ટ્રેક પર રહો',
			'settings.theme.title' => 'થીમ',
			'settings.theme.light' => 'લાઇટ',
			'settings.theme.dark' => 'ડાર્ક',
			'settings.theme.system' => 'સિસ્ટમ',
			'settings.sendFeedback.title' => 'પ્રતિસાદ મોકલો',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} સુધારવામાં અમારી સહાય કરો',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} એપ્લિકેશન પ્રતિસાદ',
			'settings.sendFeedback.emailBodyPrefix' => 'કૃપા કરીને નીચે તમારો પ્રતિસાદ આપો:',
			'settings.sendFeedback.appVersion' => 'એપ્લિકેશન સંસ્કરણ',
			'settings.sendFeedback.device' => 'ઉપકરણ',
			'settings.sendFeedback.osVersion' => 'OS સંસ્કરણ',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'ભોજન ઇતિહાસ નિકાસ કરો',
			'settings.exportMealHistory.subtitle' => 'તમારા લોગ કરેલા ભોજનનો CSV શેર કરો',
			'settings.exportMealHistory.shareText' => 'તમારો Calorify ભોજન ઇતિહાસ નિકાસ',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'ભોજન ઇતિહાસ નિકાસ કરી શકાયો નથી: ${error}',
			'settings.clearAllData.title' => 'બધો ડેટા સાફ કરો',
			'settings.clearAllData.subtitle' => 'તમારી બધી માહિતી કાયમ માટે કાઢી નાખો',
			'settings.clearAllData.confirmationTitle' => 'બધો ડેટા સાફ કરવો?',
			'settings.clearAllData.confirmationMessage' => 'આ ક્રિયા પૂર્વવત્ કરી શકાતી નથી. તમારા બધા લોગ કરેલા ભોજન, મનપસંદ અને પ્રોફાઇલ સેટિંગ્સ કાયમ માટે કાઢી નાખવામાં આવશે.',
			'settings.clearAllData.cancel' => 'રદ કરો',
			'settings.clearAllData.clearEverything' => 'બધું સાફ કરો',
			'settings.debugOptions.title' => 'ડીબગ વિકલ્પો',
			'settings.developerModeEnabled' => 'ડેવલપર મોડ સક્ષમ!',
			'settings.healthConnect.title' => 'હેલ્થ કનેક્ટ',
			'settings.healthConnect.subtitle' => 'પરવાનગીઓ જુઓ અને મેનેજ કરો',
			'settings.healthConnect.unavailable.title' => 'હેલ્થ કનેક્ટ અનુપલબ્ધ',
			'settings.healthConnect.unavailable.description' => 'આ ઉપકરણ પર હેલ્થ કનેક્ટ ઉપલબ્ધ નથી. કૃપા કરીને Play Store (Android 9+) પરથી હેલ્થ કનેક્ટ ઇન્સ્ટોલ કરો અથવા Android 14+ પર અપડેટ કરો.',
			'settings.healthConnect.permissions.title' => 'પરવાનગીઓ',
			'settings.healthConnect.permissions.description' => 'હેલ્થ કનેક્ટ એકીકરણ પ્રદાન કરવા માટે નીચેની પરવાનગીઓની વિનંતી કરવામાં આવે છે:',
			'settings.healthConnect.permissions.granted' => 'મંજૂર',
			'settings.healthConnect.permissions.notGranted' => 'મંજૂર નથી',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'કુલ બળી ગયેલી કેલરી વાંચો',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'એપ્લિકેશનને હેલ્થ કનેક્ટમાંથી તમારી કુલ બળી ગયેલી કેલરી વાંચવાની મંજૂરી આપે છે.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'આ પરવાનગીનો ઉપયોગ એપ્લિકેશનમાં તમારી દૈનિક કેલરી બર્ન દર્શાવવા માટે થાય છે, જે તમને દિવસભર તમારા કુલ ઊર્જા ખર્ચને સમજવામાં મદદ કરે છે.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'પોષણ ડેટા વાંચો',
			'settings.healthConnect.permissions.nutritionRead.description' => 'એપ્લિકેશનને હેલ્થ કનેક્ટમાંથી પોષણ ડેટા વાંચવાની મંજૂરી આપે છે.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'આ પરવાનગી એપ્લિકેશનને પોષણ માહિતી વાંચવાની મંજૂરી આપે છે જે હેલ્થ કનેક્ટ સાથે જોડાયેલ અન્ય એપ્લિકેશનો દ્વારા લોગ કરવામાં આવી હોય, જે તમારા પોષણનો વ્યાપક દૃશ્ય પ્રદાન કરે છે.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'પોષણ ડેટા લખો',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'એપ્લિકેશનને હેલ્થ કનેક્ટમાં પોષણ ડેટા લખવાની મંજૂરી આપે છે.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'આ પરવાનગી એપ્લિકેશનને તમારા લોગ કરેલા ભોજનને હેલ્થ કનેક્ટમાં સિંક કરવાની મંજૂરી આપે છે, જે તમારા પોષણ ડેટાને તમે ઉપયોગ કરો છો તે અન્ય આરોગ્ય અને ફિટનેસ એપ્લિકેશનો માટે ઉપલબ્ધ બનાવે છે.',
			'settings.healthConnect.managePermissions' => 'પરવાનગીઓ મેનેજ કરો',
			'settings.healthConnect.openSettings' => 'હેલ્થ કનેક્ટ સેટિંગ્સ ખોલો',
			'settings.healthConnect.requestPermissions' => 'પરવાનગીઓની વિનંતી કરો',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'પરવાનગી વિનંતી રદ કરવામાં આવી અથવા નિષ્ફળ ગઈ. કૃપા કરીને ફરી પ્રયાસ કરો અથવા હેલ્થ કનેક્ટ સેટિંગ્સમાં મેન્યુઅલી પરવાનગીઓ આપો.',
			'settings.healthConnect.permissionRequestFailed' => 'પરવાનગીઓની વિનંતી કરવામાં અસમર્થ. કૃપા કરીને ફરી પ્રયાસ કરો અથવા હેલ્થ કનેક્ટ સેટિંગ્સમાં મેન્યુઅલી પરવાનગીઓ આપો.',
			'settings.healthConnect.requestingPermissions' => 'વિનંતી કરી રહ્યું છે...',
			'settings.about.title' => 'વિશે',
			'settings.about.tagline' => 'ઝડપી, મફત અને ગોપનીયતા-પ્રથમ કેલરી જાગૃતિ',
			'settings.about.ourStory.title' => 'અમારી વાર્તા',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} એક સરળ હતાશામાંથી જન્મ્યું હતું: મોટાભાગની કેલરી ટ્રેકિંગ એપ્લિકેશનો કાં તો વધુ પડતી જટિલ હોય છે, સતત મેન્યુઅલ ઇનપુટની માંગ કરે છે, ઊંચી સબ્સ્ક્રિપ્શન ફી લે છે અથવા ગોપનીયતા સાથે સમાધાન કરે છે.\n\nએક સોલો ડેવલપર તરીકે, હું કંઈક સરળ અને વધુ ન્યાયી બનાવવા માંગતો હતો — એક એવી એપ્લિકેશન જે પ્રયત્નો ઘટાડવા માટે AI નો ઉપયોગ કરે, ઝડપી અને મફત રહે, અને તમારા સ્વાસ્થ્ય ડેટાને આદર સાથે વર્તે.\n\n${appLabel} એ એવી એપ્લિકેશન છે જે હું ઈચ્છતો હતો કે અસ્તિત્વમાં હોય: કોઈ એકાઉન્ટ્સ નહીં, કોઈ ટ્રેકિંગ નહીં, કોઈ જાહેરાતો નહીં — ફક્ત સ્પષ્ટ, વ્યવહારુ આંતરદૃષ્ટિ અને તમારા સ્વાસ્થ્ય લક્ષ્યો.',
			'settings.about.privacy.title' => 'તમારી ગોપનીયતા મહત્વપૂર્ણ છે',
			'settings.about.privacy.description' => 'ગોપનીયતા એ પછીનો વિચાર નથી — તે એક ડિઝાઇન સિદ્ધાંત છે. વ્યવહારમાં તેનો અર્થ અહીં છે:',
			'settings.about.privacy.noAccounts' => 'કોઈ એકાઉન્ટ્સની જરૂર નથી\nએપ્લિકેશનનો તરત જ ઉપયોગ કરો. કોઈ સાઇન-અપ નહીં, કોઈ ઓળખ નહીં.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'કોઈ વર્તણૂકીય ટ્રેકિંગ નહીં\n${appLabel} તમારી પ્રવૃત્તિનું નિરીક્ષણ કરતું નથી, ઉપયોગ પ્રોફાઇલ્સ બનાવતું નથી અથવા તમને એપ્લિકેશન્સ અથવા વેબસાઇટ્સ પર ટ્રૅક કરતું નથી.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'ડિઝાઇન દ્વારા જાહેરાત-મુક્ત\n${appLabel} જાહેરાતો અથવા ડેટા-આધારિત મુદ્રીકરણ વિના કાર્ય કરવા માટે બનાવવામાં આવ્યું છે.',
			'settings.about.privacy.noDataSelling' => 'કોઈ ડેટા વેચાણ નહીં\nતમારો સ્વાસ્થ્ય ડેટા ક્યારેય વેચવામાં આવતો નથી અથવા તૃતીય પક્ષો સાથે શેર કરવામાં આવતો નથી.',
			'settings.about.privacy.localStorage' => 'સ્થાનિક-પ્રથમ સ્ટોરેજ\nતમારો ડેટા તમારા ઉપકરણ પર રહે છે.',
			'settings.about.privacy.privacyPolicy' => 'ગોપનીયતા નીતિ',
			'settings.about.developer.title' => 'એકલા ડેવલપર દ્વારા નિર્મિત',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} એક જ સોલો ડેવલપર દ્વારા બનાવવામાં અને જાળવવામાં આવે છે જે શાંત, ગોપનીયતા-સન્માનિત આરોગ્ય સોફ્ટવેર બનાવવા પર ધ્યાન કેન્દ્રિત કરે છે.\n\nપ્રતિસાદ વ્યક્તિગત રીતે વાંચવામાં આવે છે અને એપ્લિકેશનની દિશાને આકાર આપવામાં મદદ કરે છે.',
			'settings.about.developer.website' => 'વેબસાઇટ',
			'settings.about.developer.email' => 'ઇમેઇલ',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} નો આનંદ માણી રહ્યા છો?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'તમારો પ્રતિસાદ ${appLabel} ને દરેક માટે વધુ સારું બનાવવામાં મદદ કરે છે.',
			'settings.about.feedback.rateApp' => 'Play Store પર રેટ કરો',
			'settings.about.feedback.sendFeedback' => 'પ્રતિસાદ મોકલો',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'બિલ્ડ ${buildNumber}',
			'reminders.title' => 'રીમાઇન્ડર્સ સાથે ટ્રેક પર રહો',
			'reminders.description' => 'તમારા ભોજનને લોગ કરવા અને તમારા પોષણ લક્ષ્યો સાથે સુસંગત રહેવા માટે સૌમ્ય રીમાઇન્ડર્સ મેળવો',
			'reminders.notificationsEnabled' => 'સૂચનાઓ સક્ષમ છે',
			'reminders.notificationsDisabled' => 'સૂચનાઓ અક્ષમ છે',
			'reminders.enabledSubtitle' => 'તમને ભોજન રીમાઇન્ડર્સ પ્રાપ્ત થશે',
			'reminders.disabledSubtitle' => 'ભોજન રીમાઇન્ડર્સ મેળવવા માટે સૂચનાઓ સક્ષમ કરો',
			'reminders.mealReminders' => 'ભોજન રીમાઇન્ડર્સ',
			'reminders.breakfast' => 'નાસ્તો',
			'reminders.lunch' => 'બપોરનું ભોજન',
			'reminders.dinner' => 'રાતનું ભોજન',
			'reminders.snack' => 'નાસ્તો',
			'reminders.unknown' => 'અજાણ્યું',
			'reminders.change' => 'બદલો',
			'reminders.enableNotifications' => 'સૂચનાઓ સક્ષમ કરો',
			'reminders.skipForNow' => 'હમણાં માટે છોડી દો',
			'reminders.saveChanges' => 'ફેરફારો સાચવો',
			'reminders.enabledSuccessfully' => 'સૂચનાઓ સફળતાપૂર્વક સક્ષમ થઈ!',
			'reminders.permissionDenied' => 'સૂચના પરવાનગી નકારી',
			'reminders.errorEnabling' => ({required Object error}) => 'સૂચનાઓ સક્ષમ કરવામાં ભૂલ: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'સેટઅપ પૂર્ણ કરવામાં ભૂલ: ${error}',
			'notifications.breakfast.title' => 'નાસ્તાનો સમય! 🍳',
			'notifications.breakfast.body' => 'તમારો નાસ્તો લોગ કરવાનું ભૂલશો નહીં',
			'notifications.lunch.title' => 'બપોરના ભોજનનો સમય! 🥗',
			'notifications.lunch.body' => 'તમારું બપોરનું ભોજન લોગ કરવાનો સમય',
			'notifications.dinner.title' => 'રાત્રિભોજનનો સમય! 🍽️',
			'notifications.dinner.body' => 'તમારું રાત્રિભોજન લોગ કરવાનું ભૂલશો નહીં',
			'notifications.snack.title' => 'નાસ્તાનો સમય! 🍎',
			'notifications.snack.body' => 'સ્વસ્થ નાસ્તાનો સમય',
			'notifications.test.title' => 'પરીક્ષણ સૂચના',
			'login.title' => 'લોગિન',
			'login.signInWithGoogle' => 'Google વડે સાઇન ઇન કરો',
			'login.signInFailed' => 'Google સાઇન-ઇન નિષ્ફળ ગયું અથવા રદ કરવામાં આવ્યું.',
			'disclaimer.pleaseNote' => 'કૃપા કરીને નોંધ લો',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} અંદાજિત પોષણ માહિતી પ્રદાન કરે છે. ચોકસાઈ તમારા ઇનપુટ અને ખોરાકની વિવિધતાઓ પર આધારિત છે. માર્ગદર્શિકા તરીકે ઉપયોગ કરો, ચોક્કસ સ્ત્રોત તરીકે નહીં. વ્યક્તિગત આહાર સલાહ માટે વ્યાવસાયિકની સલાહ લો.',
			'disclaimer.snap.portionSize.title' => 'ભાગનું કદ',
			'disclaimer.snap.portionSize.description' => 'અંદાજોની ચોકસાઈ તમારા ભાગના કદના સાચા મૂલ્યાંકન પર ખૂબ આધાર રાખે છે.',
			'disclaimer.snap.preparationMethods.title' => 'તૈયારી પદ્ધતિઓ',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'રસોઈ પદ્ધતિઓ ખોરાકની પોષક સામગ્રીને નોંધપાત્ર રીતે બદલી શકે છે. ${appLabel} ના અંદાજો હંમેશા આ ભિન્નતાઓને ધ્યાનમાં લઈ શકતા નથી.',
			'disclaimer.snap.ingredients.title' => 'ઘટકો',
			'disclaimer.snap.ingredients.description' => 'ઘણા છુપાયેલા ઘટકોવાળી જટિલ વાનગીઓ ઓછા સચોટ અંદાજો તરફ દોરી શકે છે.',
			'disclaimer.snap.databaseLimitations.title' => 'ડેટાબેઝ મર્યાદાઓ',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} નો ફૂડ ડેટાબેઝ વ્યાપક છે પરંતુ તેમાં દરેક એક ખાદ્ય વસ્તુ અથવા ભિન્નતા શામેલ ન હોઈ શકે.',
			'disclaimer.weightEstimate.title' => 'વજનના અંદાજ વિશે',
			'disclaimer.weightEstimate.description' => 'અંદાજિત વજનમાં ફેરફાર એ સરળ કેલરી-ઇન વિ. કેલરી-આઉટ મોડેલ પર આધારિત સૈદ્ધાંતિક અંદાજ છે. તે ફક્ત પ્રેરક માર્ગદર્શન માટે છે, તમારા વાસ્તવિક વજનની આગાહી તરીકે નહીં.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'કેલરીની ચોકસાઈ',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'આ અંદાજ ફક્ત તમારી ટ્રેક કરેલી કેલરીનું સેવન અને ખર્ચ જેટલો જ સચોટ છે. ખોટું લોગિંગ અચોક્કસ અંદાજમાં પરિણમશે.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'જૈવિક પરિબળો',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'વાસ્તવિક વજન ઘટાડવું/વધવું ચયાપચય, હોર્મોન્સ, ઊંઘ, તણાવ, હાઇડ્રેશન અને અન્ય વ્યક્તિગત પરિબળોથી પ્રભાવિત થાય છે જે ${appLabel} માપી શકતું નથી.',
			'disclaimer.weightEstimate.waterWeight.title' => 'પાણીનું વજન અને વધઘટ',
			'disclaimer.weightEstimate.waterWeight.description' => 'પાણી જાળવી રાખવા, પાચન અને સમયને કારણે સામાન્ય દૈનિક વજનમાં નોંધપાત્ર વધઘટ થઈ શકે છે. અંદાજ આ દૈનિક ફેરફારોને ધ્યાનમાં લેતો નથી.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'વ્યાવસાયિક માર્ગદર્શન',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'તબીબી નિર્ણયો લેવા માટે આ અંદાજનો ઉપયોગ કરશો નહીં. વ્યક્તિગત વજન વ્યવસ્થાપન સલાહ માટે હંમેશા આરોગ્યસંભાળ વ્યાવસાયિક અથવા નોંધાયેલ આહાર નિષ્ણાતની સલાહ લો.',
			'disclaimer.healthMetrics.description' => 'આ મેટ્રિક્સ તમને તમારા શરીરની ઊર્જાની જરૂરિયાતોને સમજવામાં અને તમારા પોષણ લક્ષ્યોને માર્ગદર્શન આપવામાં મદદ કરે છે.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'બેઝલ મેટાબોલિક રેટ (BMR) એ કેલરીની સંખ્યા છે જે તમારું શરીર આરામ કરતી વખતે શ્વાસ લેવા અને રક્ત પરિભ્રમણ જેવા મૂળભૂત કાર્યો જાળવવા માટે બાળે છે. BMR તમારી ઉંમર, લિંગ, ઊંચાઈ અને વજન પર આધાર રાખે છે. ઉચ્ચ BMR નો અર્થ છે કે તમારું શરીર કુદરતી રીતે આરામ કરતી વખતે વધુ કેલરી બાળે છે, જે ઘણીવાર વધુ સ્નાયુ સમૂહ, નાની ઉંમર અથવા પુરુષ હોવાને કારણે થાય છે. નીચું BMR સામાન્ય રીતે ઓછા સ્નાયુ સમૂહ, મોટી ઉંમર અથવા સ્ત્રી હોવાનો સંકેત આપે છે.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'કુલ દૈનિક ઊર્જા ખર્ચ (TDEE) એ દરરોજ તમે બાળો છો તે કુલ કેલરી છે, જેમાં તમારું BMR વત્તા શારીરિક પ્રવૃત્તિ અને દૈનિક હલનચલનમાંથી કેલરીનો સમાવેશ થાય છે. TDEE તમારા BMR અને પ્રવૃત્તિ સ્તર પર આધાર રાખે છે. ઉચ્ચ TDEE નો અર્થ છે કે તમે એકંદરે વધુ કેલરી બાળો છો, સામાન્ય રીતે વધુ સક્રિય હોવાને કારણે અથવા ઉચ્ચ BMR હોવાને કારણે. નીચું TDEE ઓછી દૈનિક પ્રવૃત્તિ અથવા નીચા BMR સૂચવે છે.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'દૈનિક લક્ષ્ય',
			'disclaimer.healthMetrics.dailyGoal.description' => 'દૈનિક લક્ષ્ય એ તમારા TDEE અને વજનના લક્ષ્યના આધારે તમારી ભલામણ કરેલ દૈનિક કેલરીનું સેવન છે. વજન ઘટાડવા માટે, તમે તમારા TDEE કરતાં ઓછી કેલરીનો વપરાશ કરો છો. વજન જાળવવા માટે, તમે તમારા TDEE સાથે મેળ ખાઓ છો. વજન વધારવા માટે, તમે તમારા TDEE કરતાં વધુ કેલરીનો વપરાશ કરો છો. આ તમને સ્વસ્થ ગતિએ તમારા ઇચ્છિત વજનમાં ફેરફાર પ્રાપ્ત કરવામાં મદદ કરે છે.',
			'disclaimer.calorieExpenditure.title' => 'કેલરી ખર્ચનો અંદાજ',
			'disclaimer.calorieExpenditure.description' => 'જ્યારે Health Connect ડેટા અનુપલબ્ધ હોય, ત્યારે અમે તમારા બેઝલ મેટાબોલિક રેટ (BMR) અને પ્રવૃત્તિ સ્તર (TDEE) નો ઉપયોગ કરીને આજે બળી ગયેલી કેલરીનો અંદાજ લગાવીએ છીએ, જે દિવસના વીતી ગયેલા ભાગ માટે સ્કેલ કરવામાં આવે છે.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'અંદાજ કેવી રીતે ગણવામાં આવે છે',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'અમે તમારા TDEE (તમારી પ્રોફાઇલના આધારે) ની ગણતરી કરીએ છીએ અને અત્યાર સુધી બળી ગયેલી કેલરીનો અંદાજ કાઢવા માટે તેને દિવસના વીતી ગયેલા અપૂર્ણાંક (કલાકો + મિનિટ) / 24 વડે ગુણાકાર કરીએ છીએ.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'વ્યાવસાયિક માર્ગદર્શન',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'તબીબી નિર્ણયો લેવા માટે આ અંદાજનો ઉપયોગ કરશો નહીં. વ્યક્તિગત વજન વ્યવસ્થાપન સલાહ માટે હંમેશા આરોગ્યસંભાળ વ્યાવસાયિક અથવા નોંધાયેલ આહાર નિષ્ણાતની સલાહ લો.',
			'common.close' => 'બંધ કરો',
			'common.kContinue' => 'ચાલુ રાખો',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} નો આનંદ માણી રહ્યા છો?',
			'feedbackRating.yes' => 'હા, હું તેનો આનંદ માણી રહ્યો છું',
			'feedbackRating.no' => 'ખરેખર નહીં',
			'feedbackRating.rateStepHeading' => 'Play Store પર રેટ કરો',
			'feedbackRating.emailStepHeading' => 'ઇમેઇલ દ્વારા પ્રતિસાદ મોકલો',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'એક ઝડપી રેટિંગ અન્ય લોકોને ${appLabel} શોધવામાં મદદ કરે છે અને વિકાસ ચાલુ રાખે છે. શું તમે એક ક્ષણ માટે એક છોડશો?',
			'feedbackRating.shareFeedbackViaEmail' => 'તમારો પ્રતિસાદ આગળ શું આવે છે તેને આકાર આપે છે — અમે દરેક સંદેશ વાંચીએ છીએ. શું તમે ઇમેઇલ દ્વારા તમારા વિચારો શેર કરવા માંગો છો?',
			'feedbackRating.rateCta' => 'Play Store પર રેટ કરો',
			'feedbackRating.maybeLater' => 'કદાચ પછી',
			'feedbackRating.sendFeedback' => 'પ્રતિસાદ મોકલો',
			'feedbackRating.noThanks' => 'ના આભાર',
			'feedbackRating.aboutUsDescription' => 'એક નાની ટીમ દ્વારા કાળજીપૂર્વક બનાવવામાં આવ્યું છે. અમે ગોપનીયતા, સરળતા અને તમને વધુ સારી ખાવાની ટેવો બનાવવામાં મદદ કરવા પર ધ્યાન કેન્દ્રિત કરીએ છીએ.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel} પાછળ કોણ છે તે જાણવા ઉત્સુક છો? જુઓ ',
			'feedbackRating.aboutUsLinkLabel' => 'અમારા વિશે',
			'feedbackRating.thankYouMessage' => 'આભાર! અમે તમને બીજી વાર પૂછીશું.',
			'health.syncFailed' => 'Health Connect સાથે સમન્વયિત કરી શકાયું નથી',
			'health.mealSynced' => 'ભોજન Health Connect સાથે સમન્વયિત થયું',
			_ => null,
		};
	}
}
