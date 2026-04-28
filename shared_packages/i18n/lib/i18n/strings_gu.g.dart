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
	@override String get flag => '🇺🇸';
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
	@override String get rateLimitExceeded => 'તમે બહુ બધી વિનંતીઓ કરી છે. કૃપા કરીને ફરી પ્રયત્ન કરતા પહેલા થોડું રાહ જુઓ.';
	@override String get networkError => 'નેટવર્ક ભૂલ. કૃપા કરીને તમારું ઇન્ટરનેટ કનેક્શન તપાસો.';
	@override String get unknownError => 'કૈંક ખોટું થયું. કૃપા કરીને થોડા સમય પછી ફરી પ્રયત્ન કરો.';
	@override String get loadingProfileData => 'પ્રોફાઇલ ડેટા લોડ કરતી વખતે ભૂલ';
	@override String get somethingWentWrong => 'કૈંક ખોટું થયું.';
	@override String get retry => 'ફરી પ્રયત્ન કરો';
}

// Path: onboarding
class _TranslationsOnboardingGu implements TranslationsOnboardingEn {
	_TranslationsOnboardingGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} માં સ્વાગત છે';
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
	@override String get dashboard => 'ડૅશબોર્ડ';
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
	@override String get noMeals => 'કોઈ ભોજન નોંધાયેલ નથી';
	@override String get emptyMessage => 'તમારા છેલ્લા ભોજનનો ફોટો લો અને અહીં લોગ કરો.';
	@override String get today => 'આજે';
	@override String get yesterday => 'ગઇકાલે';
}

// Path: meal
class _TranslationsMealGu implements TranslationsMealEn {
	_TranslationsMealGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'અરે નહીં!';
	@override String get delete => 'કાઢી નાંખો';
	@override String get editMeal => 'ભોજન એડિટ કરો';
	@override String get addMeal => 'ભોજન ઉમેરો';
	@override String get saveMeal => 'ભોજન સંગ્રહ કરો';
	@override String get save => 'સેવ કરો';
	@override String get mealName => 'ભોજનનું નામ';
	@override String get mealNameHint => 'દા.ત.,スク્રેમ્બલ્ડ એગ્સ સાથે ટોસ્ટ';
	@override String get mealQuantity => 'ભોજનની માત્રા';
	@override String get mealQuantityHint => 'દા.ત., 1 બાઉલ, 2 સ્લાઇસ';
	@override String get timeOfMeal => 'ભોજનનો સમય';
	@override String get timeOfMealHint => 'તમે ક્યારે ભોજન લીધું તે સમય પસંદ કરો';
	@override String get mealType => 'ભોજનનો પ્રકાર';
	@override late final _TranslationsMealNutritionGu nutrition = _TranslationsMealNutritionGu._(_root);
	@override late final _TranslationsMealDeleteConfirmationGu deleteConfirmation = _TranslationsMealDeleteConfirmationGu._(_root);
	@override String get addedToLog => 'ભોજન તમારા લોગમાં ઉમેરાયું!';
	@override String couldNotAdd({required Object error}) => 'ભોજન ઉમેરવામાં અસમર્થ: ${error}';
	@override String get savedSuccessfully => 'ભોજન સફળતાપૂર્વક ઉમેરાયું!';
	@override String get updatedSuccessfully => 'ભોજન સફળતાપૂર્વક અપડેટ થયું!';
	@override String errorSaving({required Object error}) => 'ભોજન સેવ કરતી વખતે ભૂલ: ${error}';
	@override String get removedFromFavorites => 'પસંદગીઓમાંથી દૂર કર્યું!';
	@override String get savedAsFavorite => 'ભોજન ફેવરિટમાં સેવ કર્યું!';
	@override String get unfavorite => 'ફેવરિટમાંથી કાઢો';
	@override String couldNotUpdateFavorite({required Object error}) => 'ફેવરિટ અપડેટ થઈ શક્યું નથી: ${error}';
	@override String get feedbackThanks => 'પ્રતિસાદ બદલ આભાર!';
	@override String get reanalysisUpdated => 'તમારા પ્રતિસાદના આધારે ભોજન વિશ્લેષણ અપડેટ કર્યું.';
	@override String failedToProcess({required Object error}) => 'પ્રોસેસ કરવામાં નિષ્ફળ: ${error}';
	@override String failedToProcessImage({required Object error}) => 'છબી પ્રોસેસ કરવામાં નિષ્ફળ: ${error}';
	@override String errorCompressingImage({required Object error}) => 'છબી કમ્પ્રેસ કરતી વખતે ભૂલ: ${error}';
	@override String get failedToSave => 'ડેટા સેવ કરવામાં નિષ્ફળ. કૃપા કરીને ફરી પ્રયત્ન કરો.';
	@override String get skip => 'છોડો';
	@override late final _TranslationsMealQuestionFlowGu questionFlow = _TranslationsMealQuestionFlowGu._(_root);
	@override late final _TranslationsMealAnalysisGu analysis = _TranslationsMealAnalysisGu._(_root);
	@override late final _TranslationsMealFeedbackGu feedback = _TranslationsMealFeedbackGu._(_root);
}

// Path: favorites
class _TranslationsFavoritesGu implements TranslationsFavoritesEn {
	_TranslationsFavoritesGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પસંદીદા';
	@override String get empty => 'હજુ સુધી કોઈ પસંદીદા ભોજન નથી.';
	@override String get searchPlaceholder => 'પસંદીદા ભોજન શોધો';
	@override String get searchEmptyTitle => 'તમારી શોધ સાથે કોઈ ફેવરિટ મેળ ખાતું નથી';
	@override String get searchEmptySubtitle => 'અલગ ભોજન નામ, માત્રા અથવા ભોજન પ્રકાર અજમાવો.';
	@override String get sortLabel => 'ફેવરિટ ક્રમબદ્ધ કરો';
	@override String get undo => 'પૂર્વવત્ કરો';
	@override String removed({required Object name}) => 'પસંદગીમાંથી ${name} દૂર કર્યું';
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
	@override String get height => 'ઉંચાઈ';
	@override String get weight => 'વજન';
	@override String get age => 'ઉંમર';
	@override String get weightGoal => 'વજન લક્ષ્ય';
	@override String get targetWeight => 'લક્ષ્ય વજન';
	@override String get activityLevel => 'સક્રિયતા સ્તર';
	@override String get healthMetrics => 'હેલ્થ મેટ્રિક્સ';
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
	@override String get title => 'હેલ્થ સ્કોર';
	@override String get whyThisScore => 'આ સ્કોર શા માટે?';
	@override String get note => 'આ સ્કોર ઓળખાયેલા ઘટકો અને પોષણ ઘનતા આધારે AI અંદાજ છે. વ્યક્તિગત આહાર સલાહ માટે હંમેશા વ્યાવસાયિકનો સંપર્ક કરો.';
	@override String get unhealthy => 'અસ્વસ્થ';
	@override String get healthy => 'સ્વસ્થ';
	@override String get neutral => 'તટસ્થ';
}

// Path: editProfile
class _TranslationsEditProfileGu implements TranslationsEditProfileEn {
	_TranslationsEditProfileGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રોફાઇલ એડિટ કરો';
	@override late final _TranslationsEditProfileSectionsGu sections = _TranslationsEditProfileSectionsGu._(_root);
	@override String get gender => 'લિંગ';
	@override String get dateOfBirth => 'જન્મતારીખ';
	@override String get height => 'ઉંચાઈ';
	@override String get weight => 'વજન';
	@override String get weightGoal => 'વજન લક્ષ્ય';
	@override String get activityLevel => 'સક્રિયતા સ્તર';
	@override String get metric => 'મેટ્રિક';
	@override String get imperial => 'ઇમ્પિરિયલ';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'મેટ્રિક (cm)';
	@override String get imperialFtIn => 'ઇમ્પિરિયલ (ft/in)';
	@override String get metricKg => 'મેટ્રિક (kg)';
	@override String get imperialLbs => 'ઇમ્પિરિયલ (lbs)';
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
	@override String get developerModeEnabled => 'ડેવલપર મોડ સક્રિય થયો!';
	@override late final _TranslationsSettingsHealthConnectGu healthConnect = _TranslationsSettingsHealthConnectGu._(_root);
	@override late final _TranslationsSettingsAboutGu about = _TranslationsSettingsAboutGu._(_root);
	@override late final _TranslationsSettingsAppInfoGu appInfo = _TranslationsSettingsAppInfoGu._(_root);
}

// Path: reminders
class _TranslationsRemindersGu implements TranslationsRemindersEn {
	_TranslationsRemindersGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'રીમાઇન્ડર્સ સાથે માર્ગ પર રહો';
	@override String get description => 'ભોજન લોગ કરવા અને તમારા પોષણ લક્ષ્યો સાથે સતત રહેવા માટે નાજુક યાદ અપાવણીઓ મેળવો';
	@override String get notificationsEnabled => 'સૂચનાઓ સક્રિય';
	@override String get notificationsDisabled => 'સૂચનાઓ નિષ્ક્રિય';
	@override String get enabledSubtitle => 'તમને ભોજનના રીમાઇન્ડર્સ મળશે';
	@override String get disabledSubtitle => 'ભોજન રીમાઇન્ડર્સ મેળવવા માટે સૂચનાઓ સક્રિય કરો';
	@override String get mealReminders => 'ભોજન રીમાઇન્ડર્સ';
	@override String get breakfast => 'નાસ્તો';
	@override String get lunch => 'બપોરનું ભોજન';
	@override String get dinner => 'રાત્રીભોજન';
	@override String get snack => 'નાસ્તો';
	@override String get unknown => 'અજાણ્યું';
	@override String get change => 'બદલો';
	@override String get enableNotifications => 'સૂચનાઓ સક્રિય કરો';
	@override String get skipForNow => 'હાલ માટે છોડો';
	@override String get saveChanges => 'ફેરફારો સાચવો';
	@override String get enabledSuccessfully => 'સૂચનાઓ સફળતાપૂર્વક સક્રિય થઈ!';
	@override String get permissionDenied => 'સૂચના પરવાનગી નામંજૂર';
	@override String errorEnabling({required Object error}) => 'સૂચનાઓ સક્રિય કરતી વખતે ભૂલ: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'સેટઅપ પૂર્ણ કરતી વખતે ભૂલ: ${error}';
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
	@override String get title => 'લૉગિન';
	@override String get signInWithGoogle => 'Google થી સાઇન ઇન કરો';
	@override String get signInFailed => 'Google સાઇન-ઇન નિષ્ફળ ગયું અથવા રદ થયું.';
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
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} ગમે છે?';
	@override String get yes => 'હા, મને ગમે છે';
	@override String get no => 'ખાસ નથી';
	@override String get rateStepHeading => 'પ્લે સ્ટોર પર રેટ કરો';
	@override String get emailStepHeading => 'ઇમેઇલ દ્વારા પ્રતિસાદ મોકલો';
	@override String soloDevMessage({required Object appLabel}) => 'ઝડપી રેટિંગથી અન્ય લોકોને ${appLabel} શોધવામાં મદદ મળે છે અને વિકાસ ચાલુ રહે છે. શું તમે એક ક્ષણ લઈને રેટ કરશો?';
	@override String get shareFeedbackViaEmail => 'તમારો પ્રતિસાદ આગળ શું આવે છે તે નક્કી કરે છે — અમે દરેક સંદેશો વાંચીએ છીએ. શું તમે ઇમેઇલ દ્વારા તમારા વિચારો શેર કરશો?';
	@override String get rateCta => 'પ્લે સ્ટોર પર રેટ કરો';
	@override String get maybeLater => 'પછી કદાચ';
	@override String get sendFeedback => 'પ્રતિસાદ મોકલો';
	@override String get noThanks => 'ના, આભાર';
	@override String get aboutUsDescription => 'નાના ટીમ દ્વારા કાળજીપૂર્વક બનાવેલ. અમે ગોપનીયતા, સરળતા અને તમારી ખાવાની આદતોને વધુ સારી બનાવવા પર ધ્યાન કેન્દ્રિત કરીએ છીએ.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel} પાછળ કોણ છે તે જાણવા ઇચ્છો છો? જુઓ ';
	@override String get aboutUsLinkLabel => 'અમારા વિશે';
	@override String get thankYouMessage => 'આભાર! અમે ફરી અન્ય સમયે પૂછશું.';
}

// Path: health
class _TranslationsHealthGu implements TranslationsHealthEn {
	_TranslationsHealthGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'હેલ્થ કનેક્ટ સાથે સિંક થઈ શક્યું નથી';
	@override String get mealSynced => 'ભોજન હેલ્થ કનેક્ટ સાથે સિંક થયું';
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
	@override String get description => 'લિંગ અમને તમારો બેઝલ મેટાબોલિક રેટ (BMR) ચોક્કસ રીતે ગણવામાં મદદ કરે છે.';
	@override String get next => 'આગળ';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightGu implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારી ઉંચાઈ કેટલી છે?';
	@override String get description => 'તમારી ઉંચાઈ અમને તમારું BMI અને ઉર્જા જરૂરિયાતો ચોક્કસ રીતે ગણવામાં મદદ કરે છે.';
	@override String get metric => 'મેટ્રિક';
	@override String get imperial => 'ઇમ્પિરિયલ';
	@override String get next => 'આગળ';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightGu implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'તમારું હાલનું વજન શું છે?';
	@override String get currentDescription => 'તમારા દૈનિક લક્ષ્યોને વ્યક્તિગત કરવા માટે તમારું હાલનું વજન જરૂરી છે.';
	@override String get targetTitle => 'તમારું લક્ષ્ય વજન શું છે?';
	@override String get targetDescription => 'લક્ષ્ય વજન નક્કી કરવાથી અમને તમારી લાંબા ગાળાની યોજના નક્કી કરવામાં મદદ મળે છે.';
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
	@override String get description => 'તમારી ઉંમર અમને તમારી કૅલરી જરૂરિયાતો ચોક્કસ રીતે ગણવામાં મદદ કરે છે.';
	@override String get next => 'આગળ';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleGu implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ઓછું';
	@override String get healthy => 'સ્વસ્થ';
	@override String get overweight => 'વધારે';
	@override String get obese => 'મોટાપો';
	@override late final _TranslationsOnboardingBmiScaleCategoriesGu categories = _TranslationsOnboardingBmiScaleCategoriesGu._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesGu messages = _TranslationsOnboardingBmiScaleMessagesGu._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalGu implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારું લક્ષ્ય શું છે?';
	@override String get description => 'તમે શું હાંસલ કરવા માંગો છો તે મુજબનું લક્ષ્ય પસંદ કરો';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelGu implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમે કેટલા સક્રિય છો?';
	@override String get description => 'આ અમને તમારી દૈનિક કૅલરી જરૂરિયાતો વધુ ચોક્કસ રીતે ગણવામાં મદદ કરે છે';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectGu implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ કનેક્ટ સાથે કનેક્ટ કરો';
	@override String get description => 'વધુ સારી સમજ અને આપમેળે કૅલરી ટ્રેકિંગ માટે તમારું હેલ્થ ડેટા સિંક કરો';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingGu automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingGu._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsGu progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsGu._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationGu seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationGu._(_root);
	@override String get connected => 'હેલ્થ કનેક્ટ જોડાયેલ';
	@override String get notConnected => 'હેલ્થ કનેક્ટ જોડાયેલ નથી';
	@override String get setup => 'હેલ્થ કનેક્ટ સેટઅપ';
	@override String get skipForNow => 'હાલ માટે છોડો';
	@override String get statusConnected => 'હેલ્થ કનેક્ટ કનેક્ટેડ છે.';
	@override String get statusSuccess => 'હેલ્થ કનેક્ટ સફળતાપૂર્વક કનેક્ટ થઈ ગયું!';
	@override String statusPermissionDenied({required Object appLabel}) => 'પરવાનગી નામંજૂર. કૃપા કરીને ${appLabel} માટે તમારા ફોન સેટિંગ્સમાંથી હેલ્થ કનેક્ટ પરવાનગીઓ સક્રિય કરો.';
	@override String statusError({required Object error}) => 'હેલ્થ કનેક્ટ સેટઅપ કરતી વખતે ભૂલ: ${error}';
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
	@override String get logMore => 'આગામી થોડા દિવસોમાં વધુ ભોજન લોગ કરો જેથી કરીને તમને વ્યક્તિગત AI ઇન્સાઇટ્સ મળે.';
	@override String get loading => 'તમારો સારાંશ લોડ થઈ રહ્યો છે...';
	@override String mealCount({required Object count}) => '${count} ભોજન લોગ થયા';
	@override String macroBalanceScore({required Object score}) => 'સંતુલન સ્કોર ${score}';
	@override String get topFoods => 'શ્રેષ્ઠ ખોરાક';
	@override String get trendUp => 'કૅલરી વધતી દિશામાં';
	@override String get trendDown => 'કૅલરી ઘટતી દિશામાં';
	@override String get trendSteady => 'કૅલરી સ્થિર છે';
	@override String generatedAt({required Object time}) => 'અપડેટ થયું ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalGu implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારું દૈનિક લક્ષ્ય બદ્ધ કરો';
	@override String get titleSet => 'તમારું દૈનિક લક્ષ્ય';
	@override String get description => 'તમારી આરોગ્યયાત્રા શરૂ કરવા તૈયાર છો? શરૂઆત કરવા માટે નીચે તમારી દૈનિક કૅલરી લક્ષ્ય નક્કી કરો.';
	@override String get descriptionSet => 'તમારો કંપાસ સેટ થઈ ગયો છે! માર્ગદર્શન માટે આ તમારું દૈનિક કૅલરી લક્ષ્ય છે.';
	@override String get yourGoal => 'તમારું લક્ષ્ય';
	@override String get goal => 'લક્ષ્ય';
	@override String get dailyCalories => 'દૈનિક કૅલરી (kcal)';
	@override String get setGoal => 'લક્ષ્ય સેટ કરો';
	@override String get intake => 'લેવાત';
	@override String get burned => 'બર્ન';
	@override String get weightImpact => 'વજન પર અસર';
	@override String get estLoss => 'આ. ઘટશે';
	@override String get estGain => 'આ. વધશે';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryGu implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'દૈનિક સારાંશ';
	@override String get calories => 'કૅલરી';
	@override String get carbs => 'કાર્બ્સ';
	@override String get protein => 'પ્રોટીન';
	@override String get fat => 'ચરબી';
	@override String get fiber => 'ફાઇબર';
	@override String get grams => 'ગ્રામ';
	@override String get chartAccessibilityLabel => 'મૅક્રોઝ ચાર્ટ';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressGu implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'આજનો મૅક્રો વિભાગ';
	@override String get target => 'લક્ષ્ય';
	@override String get current => 'વર્તમાન';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryGu implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => '7-દિવસનું મૅક્રો ઇતિહાસ';
	@override String get trendTitle => 'આજનો ટ્રેન્ડ';
	@override String peakHour({required Object hour}) => 'સર્વોચ્ચ: ${hour}:00';
	@override String get noHistoryYet => 'હજુ ઇતિહાસ નથી';
	@override String get startLogging => 'અહીં તમારો 7-દિવસનો મૅક્રો ટ્રેન્ડ જોવા\nભોજન લોગ કરવાનું શરૂ કરો';
}

// Path: home.mealLog
class _TranslationsHomeMealLogGu implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'લોગ થયેલ ભોજન';
	@override String get emptyMessage => 'તમારા છેલ્લા ભોજનનો ફોટો લો અને અહીં લોગ કરો.';
	@override String get noMealsToday => 'આજે કોઈ ભોજન નોંધાયેલ નથી';
	@override String get seeAllMeals => 'બધા ભોજન જુઓ';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionGu implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI સાથે ઝડપી ઉમેરો';
	@override String get description => 'તમારા ભોજનનું વર્ણન કરો, અને વિગતો AI પર છોડી દો.';
	@override String get hint => 'દા.ત. નાસ્તામાં મેં મોટું ઓટમીલનું એક બાઉલ લીધું, તેમાં કેળાના સ્લાઇસ અને વ્હેનો એક સ્કુપ ...';
	@override String get analyzeMeal => 'ભોજનનું વિશ્લેષણ કરો';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsGu implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પસંદીદા ભોજન';
	@override String get description => 'તમારાં મનપસંદ ભોજનમાંથી ઝડપથી એક ઉમેરો.';
	@override String get noFavorites => 'હજુ પસંદીદા ભોજન નથી.';
	@override String get addFavoriteHint => 'કોઈ ભોજનને સ્ટાર ક્લિક કરીને ફેવરિટ તરીકે ચિહ્નિત કરો.';
	@override String get seeAll => 'બધું જુઓ';
	@override String get add => 'ઉમેરો';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapGu implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ફોટો લો અને ભોજન ટ્રેક કરો';
	@override String get description => 'AI વિશ્લેષણ માટે તમારા ભોજનનો ફોટો લેવા કેમેરાનો ઉપયોગ કરો.';
	@override String get openCamera => 'કેમેરા ખોલો';
	@override String get gallery => 'ગેલેરી';
	@override String get compressingPhoto => 'ફોટો ઓપ્ટિમાઇઝ કરી રહ્યા છીએ…';
	@override String get uploadingPhoto => 'ફોટો અપલોડ કરી રહ્યા છીએ…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthGu implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ કનેક્ટ સાથે સિંક કરો';
	@override String get description => 'તમારા પોષણ ડેટાને હેલ્થ કનેક્ટ સાથે સિંક કરો';
	@override String get install => 'ઇન્સ્ટોલ કરો';
	@override String get connect => 'કનેક્ટ કરો';
}

// Path: meal.nutrition
class _TranslationsMealNutritionGu implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get calories => 'કૅલરી';
	@override String get carbs => 'કાર્બ્સ (ગ્રા)';
	@override String get protein => 'પ્રોટીન (ગ્રા)';
	@override String get fat => 'ચરબી (ગ્રા)';
	@override String get fiber => 'ફાઇબર (ગ્રા)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationGu implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભોજન કાઢી નાંખો';
	@override String get message => 'શું તમે ખરેખર આ ભોજન એન્ટ્રી કાઢી નાખવા માંગો છો?';
	@override String get cancel => 'રદ કરો';
	@override String get delete => 'કાઢી નાંખો';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowGu implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'પ્રશ્ન ${current} માંથી ${total}';
	@override String get noQuestionsAvailable => 'કોઈ પ્રશ્ન ઉપલબ્ધ નથી';
	@override String get next => 'આગલું';
	@override String get continueLabel => 'જારી રાખો';
}

// Path: meal.analysis
class _TranslationsMealAnalysisGu implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI ભોજન વિશ્લેષણ';
	@override String get stepStarted => 'શરૂ કરતા…';
	@override String get stepDecomposition => 'તમારા ભોજનને સમજતા…';
	@override String get stepIngredients => 'પોષણ ડેટા સાથે ઘટકો મૅચ કરતા…';
	@override String get stepUncertainty => 'વિશ્વાસ સ્તર તપાસતા…';
	@override String get stepMealTypeQuestion => 'લગભગ તૈયાર…';
	@override String get stepResult => 'તમારો પરિણામ પૂર્ણ કરતા…';
	@override String get stepError => 'કૈંક ખોટું થયું';
	@override String get stepDefault => 'તમારું ભોજન વિશ્લેષિત કરી રહ્યા છીએ…';
	@override String get progressUnderstand => 'સમજો';
	@override String get progressMatch => 'મૅચ';
	@override String get progressCheck => 'ચેક';
	@override String get progressMealType => 'ભોજનનો પ્રકાર પસંદ કરી રહ્યા છીએ';
	@override String get progressFinish => 'પૂર્ણ';
	@override String get detectedIngredientHeading => 'અમે ઓળખી રહ્યા એવા ઘટકો';
	@override String ingredientsOverflow({required Object count}) => '${count} વધુ';
	@override String ingredientsLine({required Object count}) => '${count} ઘટકો શોધાયા';
	@override String get ingredientsPending => 'ઘટકો સ્કૅન કરી રહ્યા છીએ…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackGu implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'શું ખોટું લાગે છે?';
	@override String get subtitle => 'એક અથવા વધુ સમસ્યાઓ પસંદ કરીને વિશ્લેષણ સુધારવામાં અમારી મદદ કરો.';
	@override String get tellUsMore => 'વધુ જણાવો';
	@override String get describeIncorrect => 'શું ખોટું હતું તેનું વર્ણન કરો';
	@override String get submit => 'સબમિટ કરો';
	@override String get issueFoodIdentification => 'ખોરાકની ઓળખ';
	@override String get issuePortionSize => 'પીરસવાનું માપ';
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
	@override String get recent => 'તાજેતરનું';
	@override String get calories => 'કૅલરી';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsGu implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'પ્રોફાઇલ';
	@override String get basicInformation => 'મૂળભૂત માહિતી';
	@override String get goalsAndActivity => 'લક્ષ્યો અને સક્રિયતા';
	@override String get calculatedValues => 'ગણિત મૂલ્યો';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesGu implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'દૈનિક લક્ષ્ય';
	@override String get calPerDay => 'કૅલ/દિવસ';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsGu implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'વ્યક્તિગત માહિતી';
	@override String get physicalMeasurements => 'શારીરિક માપદંડો';
	@override String get goalsAndActivity => 'લક્ષ્યો અને સક્રિયતા';
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
	@override String get localization => 'સ્થાનિકકરણ';
	@override String get notifications => 'સૂચનાઓ';
	@override String get healthConnect => 'હેલ્થ કનેક્ટ';
	@override String get supportAndLegal => 'આધાર અને કાનૂની';
	@override String get about => 'વિશે';
	@override String get dangerZone => 'જોખમી વિસ્તાર';
	@override String get developer => 'ડેવલપર';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileGu implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રોફાઇલ એડિટ કરો';
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
	@override String get noResults => 'કોઈ પરિણામ મળ્યા નથી';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitGu implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ઉંચાઈનો એકમ';
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
	@override String get subtitle => 'સમયસર એલર્ટ સાથે માર્ગ પર રહો';
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
	@override String subtitle({required Object appLabel}) => '${appLabel} ને સુધારવામાં અમારી મદદ કરો';
	@override String emailSubject({required Object appLabel}) => '${appLabel} એપ પ્રતિસાદ';
	@override String get emailBodyPrefix => 'કૃપા કરીને તમારો પ્રતિસાદ નીચે આપો:';
	@override String get appVersion => 'એપ વર્ઝન';
	@override String get device => 'ડિવાઇસ';
	@override String get osVersion => 'OS વર્ઝન';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryGu implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભોજન ઇતિહાસ નિકાસ';
	@override String get subtitle => 'તમારા લોગ થયેલા ભોજનનો CSV શેર કરો';
	@override String get shareText => 'તમારો Calorify ભોજન ઇતિહાસ નિકાસ';
	@override String failed({required Object error}) => 'ભોજન ઇતિહાસ નિકાસ થઈ શક્યો નથી: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataGu implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'બધો ડેટા સાફ કરો';
	@override String get subtitle => 'તમારી બધી માહિતી અપ્રતિર્વર્તિત રીતે કાઢી નાખો';
	@override String get confirmationTitle => 'બધો ડેટા સાફ કરવો?';
	@override String get confirmationMessage => 'આ ક્રિયા પાછી લઈ શકાતી નથી. તમારા બધા લોગ થયેલા ભોજન, પસંદીદા અને પ્રોફાઇલ સેટિંગ્સ કાયમી રીતે કાઢી નાખવામાં આવશે.';
	@override String get cancel => 'રદ કરો';
	@override String get clearEverything => 'બધું સાફ કરો';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsGu implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ડિબગ વિકલ્પો';
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
	@override String get requestPermissions => 'પરવાનગીઓ માગો';
	@override String get permissionRequestCancelledOrFailed => 'પરવાનો વિનંતી રદ થઈ અથવા નિષ્ફળ ગઈ. કૃપા કરીને ફરી પ્રયત્ન કરો અથવા હેલ્થ કનેક્ટ સેટિંગ્સમાં પરવાનગીઓ હાથેથી મંજૂર કરો.';
	@override String get permissionRequestFailed => 'પરવાનગીઓ માગી શકાયા નથી. કૃપા કરીને ફરી પ્રયત્ન કરો અથવા હેલ્થ કનેક્ટ સેટિંગ્સમાં પરવાનગીઓ હાથેથી મંજૂર કરો.';
	@override String get requestingPermissions => 'વિનંતી કરી રહ્યા છીએ...';
}

// Path: settings.about
class _TranslationsSettingsAboutGu implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વિશે';
	@override String get tagline => 'ઝડપી, મફત અને ગોપનીયતા-પ્રથમ કૅલરી જાગરૂકતા';
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
	@override String get title => 'રાત્રીભોજનનો સમય! 🍽️';
	@override String get body => 'તમારું રાત્રીભોજન લોગ કરવાનું ભૂલશો નહીં';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackGu implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'નાસ્તાનો સમય! 🍎';
	@override String get body => 'એક સ્વસ્થ નાસ્તાનો સમય';
}

// Path: notifications.test
class _TranslationsNotificationsTestGu implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ટેસ્ટ સૂચના';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapGu implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} અંદાજિત પોષણ માહિતી આપે છે. ચોકસાઈ તમારા ઇનપુટ અને ખોરાકની ભિન્નતાઓ પર નિર્ભર છે. આને માર્ગદર્શન તરીકે વાપરો, અંતિમ સ્રોત તરીકે નહીં. વ્યક્તિગત આહાર સલાહ માટે વ્યાવસાયિકની સલાહ લો.';
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
	@override String get title => 'વજન અંદાજ વિશે';
	@override String get description => 'દેખાડવામાં આવેલ વજન પરિવર્તન એક સાધારણ ‘કૅલરી ઇન સામે કૅલરી આઉટ’ મોડલ પર આધારિત સાકલ્યિક અંદાજ છે. આ પ્રેરણાત્મક માર્ગદર્શન માટે છે, તમારા વાસ્તવિક વજનનું પૂર્વાનુમાન નથી.';
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
	@override String get description => 'આ મેટ્રિક્સ તમને તમારા શરીરની ઉર્જા જરૂરિયાતો સમજવામાં અને તમારા પોષણ લક્ષ્યોને માર્ગદર્શન આપવા મદદ કરે છે.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrGu bmr = _TranslationsDisclaimerHealthMetricsBmrGu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeGu tdee = _TranslationsDisclaimerHealthMetricsTdeeGu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalGu dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalGu._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureGu implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'કૅલરી ખર્ચાનો અંદાજ';
	@override String get description => 'જ્યારે હેલ્થ કનેક્ટ ડેટા ઉપલબ્ધ ન હોય, ત્યારે અમે આજની બર્ન થયેલી કૅલરીનો અંદાજ તમારા બેઝલ મેટાબોલિક રેટ (BMR) અને સક્રિયતા સ્તર (TDEE) આધારે, દિવસના પસાર થયેલા સમય પ્રમાણે સ્કેલ કરીને લગાવીએ છીએ.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedGu howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedGu._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceGu professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceGu._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionGu implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'સ્માર્ટ ફૂડ ઓળખ';
	@override String get description => 'ફોટો લો અને AI ને તમારું ભોજન ઓળખવા દો';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisGu implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI વિશ્લેષણ';
	@override String get description => 'તમારી વર્ણનાઓ પરથી તરત જ પોષણ માહિતી મેળવો';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationGu implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ ઇન્ટિગ્રેશન';
	@override String get description => 'વધુ સારી સમજ માટે હેલ્થ કનેક્ટ સાથે કનેક્ટ કરો';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesGu implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'અવજન';
	@override String get healthyWeight => 'સ્વસ્થ વજન';
	@override String get overweight => 'વધુ વજન';
	@override String get obese => 'મોટાપો';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesGu implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'પોષક તત્ત્વોથી સમૃદ્ધ ભોજન સાથે સંતુલિત વજન સુધી પહોંચવા માટે અમે તમને સ્વસ્થ યોજના બનાવવામાં મદદ કરી શકીએ છીએ.';
	@override String get healthy => 'શાનદાર! તમે સ્વસ્થ શ્રેણીમાં છો. અમે તમને તમારી ઉર્જા અને સ્ફૂર્તિ જાળવવામાં મદદ કરીશું.';
	@override String overweight({required Object appLabel}) => '${appLabel} AI સંચાલિત ટ્રેકિંગ સાથે તમારી સફરને સરળ બનાવશે જેથી તમે આરામથી તમારું લક્ષ્ય મેળવી શકો.';
	@override String get obese => 'વ્યક્તિગત માર્ગદર્શન અને ટકાઉ વ્યૂહરચનાઓ સાથે અમે તમારા આરોગ્ય લક્ષ્યોમાં તમારી સાથે છીએ.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingGu implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'આપમેળે કૅલરી ટ્રેકિંગ';
	@override String get description => 'તમારા ફિટનેસ એપ્સમાંથી બર્ન થયેલી કૅલરી ટ્રેક કરો';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsGu implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રગતિ અંગેની ઝાંખી';
	@override String get description => 'તમારા આરોગ્ય ટ્રેન્ડ્સ વિશે વિગતવાર આંતર્દષ્ટિ મેળવો';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationGu implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'સુગમ એકીકરણ';
	@override String get description => 'તમારી મનપસંદ હેલ્થ એપ્સમાંથી ડેટા સિંક કરો';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessGu implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમે એકલા નથી';
	@override String get genericMessage => 'શોધ બતાવે છે કે સતત ટ્રેકિંગ લાંબા ગાળાના સફળતાનો #1 સૂચક છે.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age} વર્ષના ${gender} જે ${goal} ઇચ્છે છે, તેમના માટે સતત ટ્રેકિંગ સફળતાનો #1 સૂચક છે.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} તેને હાથથી કરવાના કરતા 10 ગણા સરળ બનાવે છે.';
	@override String get getStartedTitle => 'શરૂ કરવા તૈયાર છો?';
	@override String get tipPhoto => 'ઝડપી વિશ્લેષણ માટે તમારા ભોજનના ફોટા લો';
	@override String get tipConsistency => 'અર્થીય પ્રગતિ જોવા નિયમિત રીતે લોગ કરો';
	@override String get tipProgress => 'પ્રેરિત રહેવા માટે રોજ પ્રગતિ ટ્રેક કરો';
	@override String get button => 'ચાલો શરૂ કરીએ';
	@override String get defaultGender => 'વ્યક્તિ';
	@override String get defaultGoal => 'વધુ સ્વસ્થ તમે';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileGu implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારી હેલ્થ પ્રોફાઇલ';
	@override String bmiDescription({required Object bmi}) => 'તમારા માપદંડો આધારિત, તમારો BMI ${bmi} છે.';
	@override String get finalizeDescription => 'તમારો અનુભવ વ્યક્તિગત કરવા માટે ચાલો તમારી પ્રોફાઇલ પૂર્ણ કરીએ.';
	@override String get goalGain => 'વધારવું';
	@override String get goalLose => 'ઘટાડવું';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'તમારું લક્ષ્ય પ્રાપ્ત કરવા, તમે ${direction} ${diff} ${unit} કરશો.';
	@override String get goalReached => 'તમે તમારા લક્ષ્ય વજન પર પહોંચી ગયા છો! અમે તેને જાળવવામાં મદદ કરીશું.';
	@override String get button => 'ચાલો શરૂ કરીએ';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleGu implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ઉત્તમ શરૂઆત!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'તમે ${goalText} તરફ પહેલું પગલું ભર્યું છે. તમે ${activityText} હોવાથી, ${appLabel} તમારા લક્ષ્યોને તમારી જીવનશૈલી પ્રમાણે ઢાળશે.';
	@override String get personalizedTargets => 'વ્યક્તિગત કૅલરી લક્ષ્યો';
	@override String get aiMealDetection => 'AI સંચાલિત ભોજન શોધ';
	@override String get macroBreakdowns => 'વિગતવાર મૅક્રો-પોષક તત્ત્વોનો વિભાગ';
	@override String get button => 'ચાલો શરૂ કરીએ';
	@override String get defaultGoal => 'તમારા લક્ષ્યો';
	@override String get defaultActivity => 'સક્રિય';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightGu implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'વજન ઘટાડો';
	@override String get description => 'વજન ઘટાડવા માટે કૅલરી ડેફિસિટ બનાવો';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightGu implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'વજન જાળવો';
	@override String get description => 'તમારું હાલનું વજન જાળવો';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightGu implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'વજન વધારો';
	@override String get description => 'વજન વધારવા માટે કૅલરી સરપ્લસ બનાવો';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryGu implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'બેઠાડુ';
	@override String get description => 'થોડી કે બિલકુલ કસરત નથી';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveGu implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'હળવાશથી સક્રિય';
	@override String get description => 'હળવી કસરત 1-3 દિવસ/અઠવાડિયે';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveGu implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'મધ્યમ સક્રિય';
	@override String get description => 'મધ્યમ કસરત 3-5 દિવસ/અઠવાડિયે';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveGu implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'ખૂબ સક્રિય';
	@override String get description => 'કઠોર કસરત 6-7 દિવસ/અઠવાડિયે';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveGu implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'અતિ સક્રિય';
	@override String get description => 'અતિ કઠોર કસરત, શારીરિક કામ';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableGu implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ કનેક્ટ ઉપલબ્ધ નથી';
	@override String get description => 'આ ડિવાઇસ પર હેલ્થ કનેક્ટ ઉપલબ્ધ નથી. કૃપા કરીને પ્લે સ્ટોરમાંથી હેલ્થ કનેક્ટ ઇન્સ્ટોલ કરો (Android 9+) અથવા Android 14+ પર અપડેટ કરો.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsGu implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પરવાનગીઓ';
	@override String get description => 'હેલ્થ કનેક્ટ ઇન્ટિગ્રેશન આપવા નીચેની પરવાનગીઓ વિનંતી કરવામાં આવે છે:';
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
	@override String get title => 'અમારી કહાની';
	@override String content({required Object appLabel}) => '${appLabel} એક સરળ નિરાશાથી જન્મ્યું: બહુભાગની કૅલરી ટ્રેકિંગ એપ્સ તો ખૂબ જ જટિલ છે, સતત હસ્તચાલિત ઇનપુટ માંગે છે, ઊંચી સબ્સ્ક્રિપ્શન ફી લે છે, અથવા ગોપનીયતામાં સમાધાન કરે છે.\n\nએક સોલો ડેવલપર તરીકે, હું કંઈક સરળ અને નિષ્પક્ષ બનાવવું ઇચ્છતો હતો — એવી એપ જે AI થી મહેનત ઓછી કરે, ઝડપી અને મફતમાં ચાલે, અને તમારા હેલ્થ ડેટાનો માન રાખે.\n\n${appLabel} એ એવી એપ છે જે હું ઇચ્છતો હતો: કોઈ એકાઉન્ટ્સ નહીં, કોઈ ટ્રેકિંગ નહીં, કોઈ જાહેરાતો નહીં — માત્ર સ્પષ્ટ, વ્યવહારુ ઇન્સાઇટ્સ અને તમારા આરોગ્ય લક્ષ્યો.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyGu implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારી ગોપનીયતા મહત્વની છે';
	@override String get description => 'ગોપનીયતા પછીથી વિચારી નથી — એ ડિઝાઇનનો સિદ્ધાંત છે. હકીકતમાં તેનો અર્થ એ છે:';
	@override String get noAccounts => 'કોઈ એકાઉન્ટ્સની જરૂર નથી\nતાત્કાલિક એપ વાપરો. કોઈ સાઇન-અપ નથી, કોઈ ઓળખ નથી.';
	@override String noTracking({required Object appLabel}) => 'કોઈ વર્તન ટ્રેકિંગ નથી\n${appLabel} તમારી પ્રવૃત્તિ મોનીટર કરતી નથી, યુઝેજ પ્રોફાઇલ બનાવતી નથી, અથવા એપ્સ/વેબસાઇટ્સ પર તમને ટ્રેક કરતી નથી.';
	@override String noAds({required Object appLabel}) => 'જાહેરાત-મુક્ત ડિઝાઇન\n${appLabel} જાહેરાતો અથવા ડેટા-ચલિત મોનેટાઇઝેશન વિના કામ કરવા માટે બનાવવામાં આવી છે.';
	@override String get noDataSelling => 'કોઈ ડેટા વેચાણ નથી\nતમારો હેલ્થ ડેટા ક્યારેય તૃતીય પક્ષને વેચવામાં અથવા શેર કરવામાં આવતો નથી.';
	@override String get localStorage => 'લોકલ-પ્રથમ સંગ્રહ\nતમારો ડેટા તમારા ડિવાઇસ પર જ રહે છે.';
	@override String get privacyPolicy => 'ગોપનીયતા નીતિ';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperGu implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'એક સોલો ડેવલપર દ્વારા બનાવેલ';
	@override String description({required Object appLabel}) => '${appLabel} એક શાંત, ગોપનીયતાને માન આપતું હેલ્થ સોફ્ટવેર બનાવવામાં ધ્યાન કેન્દ્રિત કરનાર એક જ સોલો ડેવલપર દ્વારા બનાવવામાં અને જાળવવામાં આવે છે.\n\nપ્રતિસાદ વ્યક્તિગત રીતે વાંચવામાં આવે છે અને એપની દિશા નક્કી કરવામાં મદદ કરે છે.';
	@override String get website => 'વેબસાઇટ';
	@override String get email => 'ઇમેઇલ';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackGu implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} ગમે છે?';
	@override String description({required Object appLabel}) => 'તમારો પ્રતિસાદ ${appLabel} ને દરેક માટે વધુ સારો બનાવવામાં મદદ કરે છે.';
	@override String get rateApp => 'પ્લે સ્ટોર પર રેટ કરો';
	@override String get sendFeedback => 'પ્રતિસાદ મોકલો';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeGu implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પરિમાણ કદ';
	@override String get description => 'અંદાજોની ચોકસાઈ તમારા દ્વારા કરાયેલા યોગ્ય પરિમાણ કદના મૂલ્યાંકન પર ખૂબ નિર્ભર છે.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsGu implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તૈયારી પદ્ધતિઓ';
	@override String description({required Object appLabel}) => 'રસોઈની પદ્ધતિઓ ખોરાકના પોષણ સામગ્રીને નોંધપાત્ર રીતે બદલી શકે છે. ${appLabel} ના અંદાજ હંમેશા આ ભિન્નતાઓનો હિસાબ ન રાખતા હોઈ શકે.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsGu implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ઘટકો';
	@override String get description => 'ઘણા છુપાયેલા ઘટકોવાળા જટિલ વાનગીઓ ઓછા ચોક્કસ અંદાજ તરફ દોરી શકે છે.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsGu implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ડેટાબેસ મર્યાદાઓ';
	@override String description({required Object appLabel}) => '${appLabel} નો ફૂડ ડેટાબેસ વિશાળ છે પરંતુ તેમાં દરેક ખાદ્ય વસ્તુ અથવા તેના દરેક ભિન્ન પ્રકારનો સમાવેશ હોવો જરૂરી નથી.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyGu implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'કૅલરી ચોકસાઈ';
	@override String get description => 'આ અંદાજ તમારી ટ્રેક થયેલી કૅલરી લેવાત અને ખર્ચ જેટલો જ ચોક્કસ છે. અચોક્કસ લોગિંગથી અચોક્કસ પ્રોજેક્શન મળશે.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsGu implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'જૈવિક પરિબળો';
	@override String description({required Object appLabel}) => 'વાસ્તવિક વજન વધારો/ઘટાડો મેટાબોલિઝમ, હોર્મોન્સ, ઊંઘ, તાણ, હાઇડ્રેશન અને અન્ય વ્યક્તિગત પરિબળોથી પ્રભાવિત થાય છે, જેને ${appLabel} માપી શકતું નથી.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightGu implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પાણીનું વજન અને ફેરફારો';
	@override String get description => 'દૈનિક વજન પાણીની ધારણ, પાચન અને સમયને કારણે નોંધપાત્ર રીતે ફેરફારી શકે છે. આ અંદાજ આ દૈનિક ફેરફારોનો હિસાબ નથી રાખતો.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceGu implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વ્યાવસાયિક માર્ગદર્શન';
	@override String get description => 'ચિકિત્સાકીય નિર્ણય લેવા માટે આ અંદાજનો ઉપયોગ ન કરો. વ્યક્તિગત વજન વ્યવસ્થાપન સલાહ માટે હંમેશા આરોગ્ય વ્યવસાયી અથવા નોંધાયેલા ડાયેટિશિયનનો સંપર્ક કરો.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrGu implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'બેઝલ મેટાબોલિક રેટ (BMR) એ કૅલરીની સંખ્યા છે જે તમારું શરીર આરામની અવસ્થામાં શ્વાસ અને રક્ત પરિસંચરણ જેવી મૂળભૂત ક્રિયાઓ જાળવવા બર્ન કરે છે. BMR તમારી ઉંમર, લિંગ, ઉંચાઈ અને વજન પર આધારિત છે. વધુ BMRનો અર્થ તમારું શરીર સ્વાભાવિક રીતે વધુ કૅલરી બર્ન કરે છે, સામાન્ય રીતે વધુ માંસપેશીઓ, ઓછી ઉંમર અથવા પુરુષ હોવાને કારણે. ઓછું BMR સામાન્ય રીતે ઓછી માંસપેશીઓ, વધુ ઉંમર અથવા સ્ત્રી હોવાને દર્શાવે છે.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeGu implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'ટોટલ ડેઇલી એનર્જી એક્સપેન્ડિચર (TDEE) એ તમે દરરોજ બર્ન કરેલી કુલ કૅલરી છે, જેમાં તમારો BMR અને શારીરિક પ્રવૃત્તિ/દૈનિક હલનચલનથી બર્ન થયેલી કૅલરીનો સમાવેશ થાય છે. TDEE તમારો BMR અને પ્રવૃત્તિ સ્તર પર આધારિત છે. વધુ TDEEનો અર્થ તમે કુલ રીતે વધુ કૅલરી બર્ન કરો છો, સામાન્ય રીતે વધુ સક્રિય હોવા અથવા વધુ BMR હોવાના કારણે. ઓછું TDEE ઓછી દૈનિક સક્રિયતા અથવા ઓછા BMR સૂચવે છે.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalGu implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'દૈનિક લક્ષ્ય';
	@override String get description => 'દૈનિક લક્ષ્ય તમારા TDEE અને વજન લક્ષ્ય આધારે ભલામણ કરાયેલ દૈનિક કૅલરી લેવાત છે. વજન ઘટાડવા માટે, તમે તમારા TDEE કરતાં ઓછી કૅલરી લો. વજન જાળવવા માટે, તમારા TDEE જેટલી કૅલરી લો. વજન વધારવા માટે, તમે તમારા TDEE કરતાં વધુ કૅલરી લો. આ તમને સ્વસ્થ ગતિએ ઇચ્છિત વજન પરિવર્તન હાંસલ કરવામાં મદદ કરે છે.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedGu implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'અંદાજ કેવી રીતે ગણ્યો છે';
	@override String get description => 'અમે તમારો TDEE (તમારી પ્રોફાઇલ આધારે) ગણીએ છીએ અને અત્યાર સુધી પસાર થયેલા દિવસના અંશે (કલાક + મિનિટ)/24 ગુણાકાર કરીને હજી સુધી બર્ન થયેલી કૅલરી અંદાજીએ છીએ.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceGu implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વ્યાવસાયિક માર્ગદર્શન';
	@override String get description => 'ચિકિત્સાકીય નિર્ણય લેવા માટે આ અંદાજનો ઉપયોગ ન કરો. વ્યક્તિગત વજન વ્યવસ્થાપન સલાહ માટે હંમેશા આરોગ્ય વ્યવસાયી અથવા નોંધાયેલા ડાયેટિશિયનનો સંપર્ક કરો.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedGu implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'કુલ બર્ન થયેલી કૅલરી વાંચો';
	@override String get description => 'એપને હેલ્થ કનેક્ટમાંથી તમારી કુલ બર્ન થયેલી કૅલરી વાંચવાની મંજૂરી આપે છે.';
	@override String get usage => 'આ પરવાનગીનો ઉપયોગ એપમાં તમારી દૈનિક કૅલરી બર્ન બતાવવા માટે થાય છે, જે તમને દિવસભરની કુલ ઉર્જા ખર્ચણ સમજવામાં મદદ કરે છે.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadGu implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પોષણ ડેટા વાંચો';
	@override String get description => 'એપને હેલ્થ કનેક્ટમાંથી પોષણ ડેટા વાંચવાની મંજૂરી આપે છે.';
	@override String get usage => 'આ પરવાનગી હેલ્થ કનેક્ટ સાથે જોડાયેલ અન્ય એપ્સે લોગ કરેલી પોષણ માહિતી વાંચવા માટે છે, જેથી તમારી પોષણ અંગે વ્યાપક ઝાંખી મળી શકે.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteGu implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પોષણ ડેટા લખો';
	@override String get description => 'એપને હેલ્થ કનેક્ટમાં પોષણ ડેટા લખવાની મંજૂરી આપે છે.';
	@override String get usage => 'આ પરવાનગી તમારા લોગ થયેલા ભોજનને હેલ્થ કનેક્ટ સાથે સિંક કરવા માટે છે, ώστε તમારા પોષણ ડેટા તમે વાપરતા અન્ય હેલ્થ અને ફિટનેસ એપ્સમાં પણ ઉપલબ્ધ રહે.';
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
			'flag' => '🇺🇸',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'તમે બહુ બધી વિનંતીઓ કરી છે. કૃપા કરીને ફરી પ્રયત્ન કરતા પહેલા થોડું રાહ જુઓ.',
			'errors.networkError' => 'નેટવર્ક ભૂલ. કૃપા કરીને તમારું ઇન્ટરનેટ કનેક્શન તપાસો.',
			'errors.unknownError' => 'કૈંક ખોટું થયું. કૃપા કરીને થોડા સમય પછી ફરી પ્રયત્ન કરો.',
			'errors.loadingProfileData' => 'પ્રોફાઇલ ડેટા લોડ કરતી વખતે ભૂલ',
			'errors.somethingWentWrong' => 'કૈંક ખોટું થયું.',
			'errors.retry' => 'ફરી પ્રયત્ન કરો',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} માં સ્વાગત છે',
			'onboarding.subtitle' => 'AI દ્વારા સંચાલિત તમારો વ્યક્તિગત પોષણ સાથી',
			'onboarding.getStarted' => 'શરૂ કરો',
			'onboarding.features.foodRecognition.title' => 'સ્માર્ટ ફૂડ ઓળખ',
			'onboarding.features.foodRecognition.description' => 'ફોટો લો અને AI ને તમારું ભોજન ઓળખવા દો',
			'onboarding.features.aiAnalysis.title' => 'AI વિશ્લેષણ',
			'onboarding.features.aiAnalysis.description' => 'તમારી વર્ણનાઓ પરથી તરત જ પોષણ માહિતી મેળવો',
			'onboarding.features.healthIntegration.title' => 'હેલ્થ ઇન્ટિગ્રેશન',
			'onboarding.features.healthIntegration.description' => 'વધુ સારી સમજ માટે હેલ્થ કનેક્ટ સાથે કનેક્ટ કરો',
			'onboarding.gender.title' => 'તમારું લિંગ શું છે?',
			'onboarding.gender.description' => 'લિંગ અમને તમારો બેઝલ મેટાબોલિક રેટ (BMR) ચોક્કસ રીતે ગણવામાં મદદ કરે છે.',
			'onboarding.gender.next' => 'આગળ',
			'onboarding.height.title' => 'તમારી ઉંચાઈ કેટલી છે?',
			'onboarding.height.description' => 'તમારી ઉંચાઈ અમને તમારું BMI અને ઉર્જા જરૂરિયાતો ચોક્કસ રીતે ગણવામાં મદદ કરે છે.',
			'onboarding.height.metric' => 'મેટ્રિક',
			'onboarding.height.imperial' => 'ઇમ્પિરિયલ',
			'onboarding.height.next' => 'આગળ',
			'onboarding.weight.currentTitle' => 'તમારું હાલનું વજન શું છે?',
			'onboarding.weight.currentDescription' => 'તમારા દૈનિક લક્ષ્યોને વ્યક્તિગત કરવા માટે તમારું હાલનું વજન જરૂરી છે.',
			'onboarding.weight.targetTitle' => 'તમારું લક્ષ્ય વજન શું છે?',
			'onboarding.weight.targetDescription' => 'લક્ષ્ય વજન નક્કી કરવાથી અમને તમારી લાંબા ગાળાની યોજના નક્કી કરવામાં મદદ મળે છે.',
			'onboarding.weight.metric' => 'મેટ્રિક',
			'onboarding.weight.imperial' => 'ઇમ્પિરિયલ',
			'onboarding.weight.next' => 'આગળ',
			'onboarding.age.title' => 'તમારો જન્મદિવસ ક્યારે છે?',
			'onboarding.age.description' => 'તમારી ઉંમર અમને તમારી કૅલરી જરૂરિયાતો ચોક્કસ રીતે ગણવામાં મદદ કરે છે.',
			'onboarding.age.next' => 'આગળ',
			'onboarding.bmiScale.underweight' => 'ઓછું',
			'onboarding.bmiScale.healthy' => 'સ્વસ્થ',
			'onboarding.bmiScale.overweight' => 'વધારે',
			'onboarding.bmiScale.obese' => 'મોટાપો',
			'onboarding.bmiScale.categories.underweight' => 'અવજન',
			'onboarding.bmiScale.categories.healthyWeight' => 'સ્વસ્થ વજન',
			'onboarding.bmiScale.categories.overweight' => 'વધુ વજન',
			'onboarding.bmiScale.categories.obese' => 'મોટાપો',
			'onboarding.bmiScale.messages.underweight' => 'પોષક તત્ત્વોથી સમૃદ્ધ ભોજન સાથે સંતુલિત વજન સુધી પહોંચવા માટે અમે તમને સ્વસ્થ યોજના બનાવવામાં મદદ કરી શકીએ છીએ.',
			'onboarding.bmiScale.messages.healthy' => 'શાનદાર! તમે સ્વસ્થ શ્રેણીમાં છો. અમે તમને તમારી ઉર્જા અને સ્ફૂર્તિ જાળવવામાં મદદ કરીશું.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} AI સંચાલિત ટ્રેકિંગ સાથે તમારી સફરને સરળ બનાવશે જેથી તમે આરામથી તમારું લક્ષ્ય મેળવી શકો.',
			'onboarding.bmiScale.messages.obese' => 'વ્યક્તિગત માર્ગદર્શન અને ટકાઉ વ્યૂહરચનાઓ સાથે અમે તમારા આરોગ્ય લક્ષ્યોમાં તમારી સાથે છીએ.',
			'onboarding.weightGoal.title' => 'તમારું લક્ષ્ય શું છે?',
			'onboarding.weightGoal.description' => 'તમે શું હાંસલ કરવા માંગો છો તે મુજબનું લક્ષ્ય પસંદ કરો',
			'onboarding.activityLevel.title' => 'તમે કેટલા સક્રિય છો?',
			'onboarding.activityLevel.description' => 'આ અમને તમારી દૈનિક કૅલરી જરૂરિયાતો વધુ ચોક્કસ રીતે ગણવામાં મદદ કરે છે',
			'onboarding.healthConnect.title' => 'હેલ્થ કનેક્ટ સાથે કનેક્ટ કરો',
			'onboarding.healthConnect.description' => 'વધુ સારી સમજ અને આપમેળે કૅલરી ટ્રેકિંગ માટે તમારું હેલ્થ ડેટા સિંક કરો',
			'onboarding.healthConnect.automaticTracking.title' => 'આપમેળે કૅલરી ટ્રેકિંગ',
			'onboarding.healthConnect.automaticTracking.description' => 'તમારા ફિટનેસ એપ્સમાંથી બર્ન થયેલી કૅલરી ટ્રેક કરો',
			'onboarding.healthConnect.progressInsights.title' => 'પ્રગતિ અંગેની ઝાંખી',
			'onboarding.healthConnect.progressInsights.description' => 'તમારા આરોગ્ય ટ્રેન્ડ્સ વિશે વિગતવાર આંતર્દષ્ટિ મેળવો',
			'onboarding.healthConnect.seamlessIntegration.title' => 'સુગમ એકીકરણ',
			'onboarding.healthConnect.seamlessIntegration.description' => 'તમારી મનપસંદ હેલ્થ એપ્સમાંથી ડેટા સિંક કરો',
			'onboarding.healthConnect.connected' => 'હેલ્થ કનેક્ટ જોડાયેલ',
			'onboarding.healthConnect.notConnected' => 'હેલ્થ કનેક્ટ જોડાયેલ નથી',
			'onboarding.healthConnect.setup' => 'હેલ્થ કનેક્ટ સેટઅપ',
			'onboarding.healthConnect.skipForNow' => 'હાલ માટે છોડો',
			'onboarding.healthConnect.statusConnected' => 'હેલ્થ કનેક્ટ કનેક્ટેડ છે.',
			'onboarding.healthConnect.statusSuccess' => 'હેલ્થ કનેક્ટ સફળતાપૂર્વક કનેક્ટ થઈ ગયું!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'પરવાનગી નામંજૂર. કૃપા કરીને ${appLabel} માટે તમારા ફોન સેટિંગ્સમાંથી હેલ્થ કનેક્ટ પરવાનગીઓ સક્રિય કરો.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'હેલ્થ કનેક્ટ સેટઅપ કરતી વખતે ભૂલ: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'તમે એકલા નથી',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'શોધ બતાવે છે કે સતત ટ્રેકિંગ લાંબા ગાળાના સફળતાનો #1 સૂચક છે.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age} વર્ષના ${gender} જે ${goal} ઇચ્છે છે, તેમના માટે સતત ટ્રેકિંગ સફળતાનો #1 સૂચક છે.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} તેને હાથથી કરવાના કરતા 10 ગણા સરળ બનાવે છે.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'શરૂ કરવા તૈયાર છો?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'ઝડપી વિશ્લેષણ માટે તમારા ભોજનના ફોટા લો',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'અર્થીય પ્રગતિ જોવા નિયમિત રીતે લોગ કરો',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'પ્રેરિત રહેવા માટે રોજ પ્રગતિ ટ્રેક કરો',
			'onboarding.reinforcement.trackingSuccess.button' => 'ચાલો શરૂ કરીએ',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'વ્યક્તિ',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'વધુ સ્વસ્થ તમે',
			'onboarding.reinforcement.healthProfile.title' => 'તમારી હેલ્થ પ્રોફાઇલ',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'તમારા માપદંડો આધારિત, તમારો BMI ${bmi} છે.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'તમારો અનુભવ વ્યક્તિગત કરવા માટે ચાલો તમારી પ્રોફાઇલ પૂર્ણ કરીએ.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'વધારવું',
			'onboarding.reinforcement.healthProfile.goalLose' => 'ઘટાડવું',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'તમારું લક્ષ્ય પ્રાપ્ત કરવા, તમે ${direction} ${diff} ${unit} કરશો.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'તમે તમારા લક્ષ્ય વજન પર પહોંચી ગયા છો! અમે તેને જાળવવામાં મદદ કરીશું.',
			'onboarding.reinforcement.healthProfile.button' => 'ચાલો શરૂ કરીએ',
			'onboarding.reinforcement.goalLifestyle.title' => 'ઉત્તમ શરૂઆત!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'તમે ${goalText} તરફ પહેલું પગલું ભર્યું છે. તમે ${activityText} હોવાથી, ${appLabel} તમારા લક્ષ્યોને તમારી જીવનશૈલી પ્રમાણે ઢાળશે.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'વ્યક્તિગત કૅલરી લક્ષ્યો',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI સંચાલિત ભોજન શોધ',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'વિગતવાર મૅક્રો-પોષક તત્ત્વોનો વિભાગ',
			'onboarding.reinforcement.goalLifestyle.button' => 'ચાલો શરૂ કરીએ',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'તમારા લક્ષ્યો',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'સક્રિય',
			'tabs.dashboard' => 'ડૅશબોર્ડ',
			'tabs.history' => 'ઇતિહાસ',
			'home.aiSummary.title' => 'તમારો AI સારાંશ',
			'home.aiSummary.logMore' => 'આગામી થોડા દિવસોમાં વધુ ભોજન લોગ કરો જેથી કરીને તમને વ્યક્તિગત AI ઇન્સાઇટ્સ મળે.',
			'home.aiSummary.loading' => 'તમારો સારાંશ લોડ થઈ રહ્યો છે...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} ભોજન લોગ થયા',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'સંતુલન સ્કોર ${score}',
			'home.aiSummary.topFoods' => 'શ્રેષ્ઠ ખોરાક',
			'home.aiSummary.trendUp' => 'કૅલરી વધતી દિશામાં',
			'home.aiSummary.trendDown' => 'કૅલરી ઘટતી દિશામાં',
			'home.aiSummary.trendSteady' => 'કૅલરી સ્થિર છે',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'અપડેટ થયું ${time}',
			'home.dailyGoal.title' => 'તમારું દૈનિક લક્ષ્ય બદ્ધ કરો',
			'home.dailyGoal.titleSet' => 'તમારું દૈનિક લક્ષ્ય',
			'home.dailyGoal.description' => 'તમારી આરોગ્યયાત્રા શરૂ કરવા તૈયાર છો? શરૂઆત કરવા માટે નીચે તમારી દૈનિક કૅલરી લક્ષ્ય નક્કી કરો.',
			'home.dailyGoal.descriptionSet' => 'તમારો કંપાસ સેટ થઈ ગયો છે! માર્ગદર્શન માટે આ તમારું દૈનિક કૅલરી લક્ષ્ય છે.',
			'home.dailyGoal.yourGoal' => 'તમારું લક્ષ્ય',
			'home.dailyGoal.goal' => 'લક્ષ્ય',
			'home.dailyGoal.dailyCalories' => 'દૈનિક કૅલરી (kcal)',
			'home.dailyGoal.setGoal' => 'લક્ષ્ય સેટ કરો',
			'home.dailyGoal.intake' => 'લેવાત',
			'home.dailyGoal.burned' => 'બર્ન',
			'home.dailyGoal.weightImpact' => 'વજન પર અસર',
			'home.dailyGoal.estLoss' => 'આ. ઘટશે',
			'home.dailyGoal.estGain' => 'આ. વધશે',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'દૈનિક સારાંશ',
			'home.dailySummary.calories' => 'કૅલરી',
			'home.dailySummary.carbs' => 'કાર્બ્સ',
			'home.dailySummary.protein' => 'પ્રોટીન',
			'home.dailySummary.fat' => 'ચરબી',
			'home.dailySummary.fiber' => 'ફાઇબર',
			'home.dailySummary.grams' => 'ગ્રામ',
			'home.dailySummary.chartAccessibilityLabel' => 'મૅક્રોઝ ચાર્ટ',
			'home.intakeProgress.title' => 'આજનો મૅક્રો વિભાગ',
			'home.intakeProgress.target' => 'લક્ષ્ય',
			'home.intakeProgress.current' => 'વર્તમાન',
			'home.intakeHistory.title' => '7-દિવસનું મૅક્રો ઇતિહાસ',
			'home.intakeHistory.trendTitle' => 'આજનો ટ્રેન્ડ',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'સર્વોચ્ચ: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'હજુ ઇતિહાસ નથી',
			'home.intakeHistory.startLogging' => 'અહીં તમારો 7-દિવસનો મૅક્રો ટ્રેન્ડ જોવા\nભોજન લોગ કરવાનું શરૂ કરો',
			'home.mealLog.title' => 'લોગ થયેલ ભોજન',
			'home.mealLog.emptyMessage' => 'તમારા છેલ્લા ભોજનનો ફોટો લો અને અહીં લોગ કરો.',
			'home.mealLog.noMealsToday' => 'આજે કોઈ ભોજન નોંધાયેલ નથી',
			'home.mealLog.seeAllMeals' => 'બધા ભોજન જુઓ',
			'home.mealDescription.title' => 'AI સાથે ઝડપી ઉમેરો',
			'home.mealDescription.description' => 'તમારા ભોજનનું વર્ણન કરો, અને વિગતો AI પર છોડી દો.',
			'home.mealDescription.hint' => 'દા.ત. નાસ્તામાં મેં મોટું ઓટમીલનું એક બાઉલ લીધું, તેમાં કેળાના સ્લાઇસ અને વ્હેનો એક સ્કુપ ...',
			'home.mealDescription.analyzeMeal' => 'ભોજનનું વિશ્લેષણ કરો',
			'home.favoriteMeals.title' => 'પસંદીદા ભોજન',
			'home.favoriteMeals.description' => 'તમારાં મનપસંદ ભોજનમાંથી ઝડપથી એક ઉમેરો.',
			'home.favoriteMeals.noFavorites' => 'હજુ પસંદીદા ભોજન નથી.',
			'home.favoriteMeals.addFavoriteHint' => 'કોઈ ભોજનને સ્ટાર ક્લિક કરીને ફેવરિટ તરીકે ચિહ્નિત કરો.',
			'home.favoriteMeals.seeAll' => 'બધું જુઓ',
			'home.favoriteMeals.add' => 'ઉમેરો',
			'home.mealSnap.title' => 'ફોટો લો અને ભોજન ટ્રેક કરો',
			'home.mealSnap.description' => 'AI વિશ્લેષણ માટે તમારા ભોજનનો ફોટો લેવા કેમેરાનો ઉપયોગ કરો.',
			'home.mealSnap.openCamera' => 'કેમેરા ખોલો',
			'home.mealSnap.gallery' => 'ગેલેરી',
			'home.mealSnap.compressingPhoto' => 'ફોટો ઓપ્ટિમાઇઝ કરી રહ્યા છીએ…',
			'home.mealSnap.uploadingPhoto' => 'ફોટો અપલોડ કરી રહ્યા છીએ…',
			'home.connectHealth.title' => 'હેલ્થ કનેક્ટ સાથે સિંક કરો',
			'home.connectHealth.description' => 'તમારા પોષણ ડેટાને હેલ્થ કનેક્ટ સાથે સિંક કરો',
			'home.connectHealth.install' => 'ઇન્સ્ટોલ કરો',
			'home.connectHealth.connect' => 'કનેક્ટ કરો',
			'history.noMeals' => 'કોઈ ભોજન નોંધાયેલ નથી',
			'history.emptyMessage' => 'તમારા છેલ્લા ભોજનનો ફોટો લો અને અહીં લોગ કરો.',
			'history.today' => 'આજે',
			'history.yesterday' => 'ગઇકાલે',
			'meal.ohNo' => 'અરે નહીં!',
			'meal.delete' => 'કાઢી નાંખો',
			'meal.editMeal' => 'ભોજન એડિટ કરો',
			'meal.addMeal' => 'ભોજન ઉમેરો',
			'meal.saveMeal' => 'ભોજન સંગ્રહ કરો',
			'meal.save' => 'સેવ કરો',
			'meal.mealName' => 'ભોજનનું નામ',
			'meal.mealNameHint' => 'દા.ત.,スク્રેમ્બલ્ડ એગ્સ સાથે ટોસ્ટ',
			'meal.mealQuantity' => 'ભોજનની માત્રા',
			'meal.mealQuantityHint' => 'દા.ત., 1 બાઉલ, 2 સ્લાઇસ',
			'meal.timeOfMeal' => 'ભોજનનો સમય',
			'meal.timeOfMealHint' => 'તમે ક્યારે ભોજન લીધું તે સમય પસંદ કરો',
			'meal.mealType' => 'ભોજનનો પ્રકાર',
			'meal.nutrition.calories' => 'કૅલરી',
			'meal.nutrition.carbs' => 'કાર્બ્સ (ગ્રા)',
			'meal.nutrition.protein' => 'પ્રોટીન (ગ્રા)',
			'meal.nutrition.fat' => 'ચરબી (ગ્રા)',
			'meal.nutrition.fiber' => 'ફાઇબર (ગ્રા)',
			'meal.deleteConfirmation.title' => 'ભોજન કાઢી નાંખો',
			'meal.deleteConfirmation.message' => 'શું તમે ખરેખર આ ભોજન એન્ટ્રી કાઢી નાખવા માંગો છો?',
			'meal.deleteConfirmation.cancel' => 'રદ કરો',
			'meal.deleteConfirmation.delete' => 'કાઢી નાંખો',
			'meal.addedToLog' => 'ભોજન તમારા લોગમાં ઉમેરાયું!',
			'meal.couldNotAdd' => ({required Object error}) => 'ભોજન ઉમેરવામાં અસમર્થ: ${error}',
			'meal.savedSuccessfully' => 'ભોજન સફળતાપૂર્વક ઉમેરાયું!',
			'meal.updatedSuccessfully' => 'ભોજન સફળતાપૂર્વક અપડેટ થયું!',
			'meal.errorSaving' => ({required Object error}) => 'ભોજન સેવ કરતી વખતે ભૂલ: ${error}',
			'meal.removedFromFavorites' => 'પસંદગીઓમાંથી દૂર કર્યું!',
			'meal.savedAsFavorite' => 'ભોજન ફેવરિટમાં સેવ કર્યું!',
			'meal.unfavorite' => 'ફેવરિટમાંથી કાઢો',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'ફેવરિટ અપડેટ થઈ શક્યું નથી: ${error}',
			'meal.feedbackThanks' => 'પ્રતિસાદ બદલ આભાર!',
			'meal.reanalysisUpdated' => 'તમારા પ્રતિસાદના આધારે ભોજન વિશ્લેષણ અપડેટ કર્યું.',
			'meal.failedToProcess' => ({required Object error}) => 'પ્રોસેસ કરવામાં નિષ્ફળ: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'છબી પ્રોસેસ કરવામાં નિષ્ફળ: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'છબી કમ્પ્રેસ કરતી વખતે ભૂલ: ${error}',
			'meal.failedToSave' => 'ડેટા સેવ કરવામાં નિષ્ફળ. કૃપા કરીને ફરી પ્રયત્ન કરો.',
			'meal.skip' => 'છોડો',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'પ્રશ્ન ${current} માંથી ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'કોઈ પ્રશ્ન ઉપલબ્ધ નથી',
			'meal.questionFlow.next' => 'આગલું',
			'meal.questionFlow.continueLabel' => 'જારી રાખો',
			'meal.analysis.title' => 'AI ભોજન વિશ્લેષણ',
			'meal.analysis.stepStarted' => 'શરૂ કરતા…',
			'meal.analysis.stepDecomposition' => 'તમારા ભોજનને સમજતા…',
			'meal.analysis.stepIngredients' => 'પોષણ ડેટા સાથે ઘટકો મૅચ કરતા…',
			'meal.analysis.stepUncertainty' => 'વિશ્વાસ સ્તર તપાસતા…',
			'meal.analysis.stepMealTypeQuestion' => 'લગભગ તૈયાર…',
			'meal.analysis.stepResult' => 'તમારો પરિણામ પૂર્ણ કરતા…',
			'meal.analysis.stepError' => 'કૈંક ખોટું થયું',
			'meal.analysis.stepDefault' => 'તમારું ભોજન વિશ્લેષિત કરી રહ્યા છીએ…',
			'meal.analysis.progressUnderstand' => 'સમજો',
			'meal.analysis.progressMatch' => 'મૅચ',
			'meal.analysis.progressCheck' => 'ચેક',
			'meal.analysis.progressMealType' => 'ભોજનનો પ્રકાર પસંદ કરી રહ્યા છીએ',
			'meal.analysis.progressFinish' => 'પૂર્ણ',
			'meal.analysis.detectedIngredientHeading' => 'અમે ઓળખી રહ્યા એવા ઘટકો',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} વધુ',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ઘટકો શોધાયા',
			'meal.analysis.ingredientsPending' => 'ઘટકો સ્કૅન કરી રહ્યા છીએ…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'શું ખોટું લાગે છે?',
			'meal.feedback.subtitle' => 'એક અથવા વધુ સમસ્યાઓ પસંદ કરીને વિશ્લેષણ સુધારવામાં અમારી મદદ કરો.',
			'meal.feedback.tellUsMore' => 'વધુ જણાવો',
			'meal.feedback.describeIncorrect' => 'શું ખોટું હતું તેનું વર્ણન કરો',
			'meal.feedback.submit' => 'સબમિટ કરો',
			'meal.feedback.issueFoodIdentification' => 'ખોરાકની ઓળખ',
			'meal.feedback.issuePortionSize' => 'પીરસવાનું માપ',
			'meal.feedback.issueCalorieDistribution' => 'કેલરી વિતરણ',
			'meal.feedback.issueMacrosWrong' => 'મેક્રો ખોટા છે',
			'meal.feedback.issueMissingItems' => 'ગુમ થયેલ વસ્તુઓ',
			'meal.feedback.issueExtraItems' => 'વધારાની વસ્તુઓ',
			'meal.feedback.issueOther' => 'અન્ય',
			'favorites.title' => 'પસંદીદા',
			'favorites.empty' => 'હજુ સુધી કોઈ પસંદીદા ભોજન નથી.',
			'favorites.searchPlaceholder' => 'પસંદીદા ભોજન શોધો',
			'favorites.searchEmptyTitle' => 'તમારી શોધ સાથે કોઈ ફેવરિટ મેળ ખાતું નથી',
			'favorites.searchEmptySubtitle' => 'અલગ ભોજન નામ, માત્રા અથવા ભોજન પ્રકાર અજમાવો.',
			'favorites.sortLabel' => 'ફેવરિટ ક્રમબદ્ધ કરો',
			'favorites.undo' => 'પૂર્વવત્ કરો',
			'favorites.removed' => ({required Object name}) => 'પસંદગીમાંથી ${name} દૂર કર્યું',
			'favorites.sortOptions.recent' => 'તાજેતરનું',
			'favorites.sortOptions.calories' => 'કૅલરી',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'પ્રોફાઇલ',
			'profile.noProfileData' => 'કોઈ પ્રોફાઇલ ડેટા મળ્યો નથી',
			'profile.yourProfile' => 'તમારી પ્રોફાઇલ',
			'profile.viewAndManage' => 'તમારી આરોગ્ય માહિતી જુઓ અને મેનેજ કરો',
			'profile.sections.profile' => 'પ્રોફાઇલ',
			'profile.sections.basicInformation' => 'મૂળભૂત માહિતી',
			'profile.sections.goalsAndActivity' => 'લક્ષ્યો અને સક્રિયતા',
			'profile.sections.calculatedValues' => 'ગણિત મૂલ્યો',
			'profile.gender' => 'લિંગ',
			'profile.height' => 'ઉંચાઈ',
			'profile.weight' => 'વજન',
			'profile.age' => 'ઉંમર',
			'profile.weightGoal' => 'વજન લક્ષ્ય',
			'profile.targetWeight' => 'લક્ષ્ય વજન',
			'profile.activityLevel' => 'સક્રિયતા સ્તર',
			'profile.healthMetrics' => 'હેલ્થ મેટ્રિક્સ',
			'profile.notSet' => 'સેટ નથી',
			'profile.years' => 'વર્ષ',
			'profile.updatedSuccessfully' => 'પ્રોફાઇલ સફળતાપૂર્વક અપડેટ થઈ!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'દૈનિક લક્ષ્ય',
			'profile.calculatedValues.calPerDay' => 'કૅલ/દિવસ',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'હેલ્થ સ્કોર',
			'healthScore.whyThisScore' => 'આ સ્કોર શા માટે?',
			'healthScore.note' => 'આ સ્કોર ઓળખાયેલા ઘટકો અને પોષણ ઘનતા આધારે AI અંદાજ છે. વ્યક્તિગત આહાર સલાહ માટે હંમેશા વ્યાવસાયિકનો સંપર્ક કરો.',
			'healthScore.unhealthy' => 'અસ્વસ્થ',
			'healthScore.healthy' => 'સ્વસ્થ',
			'healthScore.neutral' => 'તટસ્થ',
			'editProfile.title' => 'પ્રોફાઇલ એડિટ કરો',
			'editProfile.sections.personalInformation' => 'વ્યક્તિગત માહિતી',
			'editProfile.sections.physicalMeasurements' => 'શારીરિક માપદંડો',
			'editProfile.sections.goalsAndActivity' => 'લક્ષ્યો અને સક્રિયતા',
			'editProfile.gender' => 'લિંગ',
			'editProfile.dateOfBirth' => 'જન્મતારીખ',
			'editProfile.height' => 'ઉંચાઈ',
			'editProfile.weight' => 'વજન',
			'editProfile.weightGoal' => 'વજન લક્ષ્ય',
			'editProfile.activityLevel' => 'સક્રિયતા સ્તર',
			'editProfile.metric' => 'મેટ્રિક',
			'editProfile.imperial' => 'ઇમ્પિરિયલ',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'મેટ્રિક (cm)',
			'editProfile.imperialFtIn' => 'ઇમ્પિરિયલ (ft/in)',
			'editProfile.metricKg' => 'મેટ્રિક (kg)',
			'editProfile.imperialLbs' => 'ઇમ્પિરિયલ (lbs)',
			'editProfile.genders.male' => 'પુરુષ',
			'editProfile.genders.female' => 'સ્ત્રી',
			'editProfile.genders.other' => 'અન્ય',
			'editProfile.weightGoals.loseWeight.name' => 'વજન ઘટાડો',
			'editProfile.weightGoals.loseWeight.description' => 'વજન ઘટાડવા માટે કૅલરી ડેફિસિટ બનાવો',
			'editProfile.weightGoals.maintainWeight.name' => 'વજન જાળવો',
			'editProfile.weightGoals.maintainWeight.description' => 'તમારું હાલનું વજન જાળવો',
			'editProfile.weightGoals.gainWeight.name' => 'વજન વધારો',
			'editProfile.weightGoals.gainWeight.description' => 'વજન વધારવા માટે કૅલરી સરપ્લસ બનાવો',
			'editProfile.activityLevels.sedentary.name' => 'બેઠાડુ',
			'editProfile.activityLevels.sedentary.description' => 'થોડી કે બિલકુલ કસરત નથી',
			'editProfile.activityLevels.lightlyActive.name' => 'હળવાશથી સક્રિય',
			'editProfile.activityLevels.lightlyActive.description' => 'હળવી કસરત 1-3 દિવસ/અઠવાડિયે',
			'editProfile.activityLevels.moderatelyActive.name' => 'મધ્યમ સક્રિય',
			'editProfile.activityLevels.moderatelyActive.description' => 'મધ્યમ કસરત 3-5 દિવસ/અઠવાડિયે',
			'editProfile.activityLevels.veryActive.name' => 'ખૂબ સક્રિય',
			'editProfile.activityLevels.veryActive.description' => 'કઠોર કસરત 6-7 દિવસ/અઠવાડિયે',
			'editProfile.activityLevels.extremelyActive.name' => 'અતિ સક્રિય',
			'editProfile.activityLevels.extremelyActive.description' => 'અતિ કઠોર કસરત, શારીરિક કામ',
			'settings.title' => 'સેટિંગ્સ',
			'settings.sections.profile' => 'પ્રોફાઇલ',
			'settings.sections.localization' => 'સ્થાનિકકરણ',
			'settings.sections.notifications' => 'સૂચનાઓ',
			'settings.sections.healthConnect' => 'હેલ્થ કનેક્ટ',
			'settings.sections.supportAndLegal' => 'આધાર અને કાનૂની',
			'settings.sections.about' => 'વિશે',
			'settings.sections.dangerZone' => 'જોખમી વિસ્તાર',
			'settings.sections.developer' => 'ડેવલપર',
			'settings.editProfile.title' => 'પ્રોફાઇલ એડિટ કરો',
			'settings.editProfile.subtitle' => 'તમારી વ્યક્તિગત માહિતી અપડેટ કરો',
			'settings.language.title' => 'ભાષા',
			'settings.language.subtitle' => 'તમારી પસંદગીની ભાષા પસંદ કરો',
			'settings.language.searchHint' => 'ભાષાઓ શોધો...',
			'settings.language.noResults' => 'કોઈ પરિણામ મળ્યા નથી',
			'settings.heightUnit.title' => 'ઉંચાઈનો એકમ',
			'settings.weightUnit.title' => 'વજનનો એકમ',
			'settings.mealReminders.title' => 'ભોજન રીમાઇન્ડર્સ',
			'settings.mealReminders.subtitle' => 'સમયસર એલર્ટ સાથે માર્ગ પર રહો',
			'settings.theme.title' => 'થીમ',
			'settings.theme.light' => 'લાઇટ',
			'settings.theme.dark' => 'ડાર્ક',
			'settings.theme.system' => 'સિસ્ટમ',
			'settings.sendFeedback.title' => 'પ્રતિસાદ મોકલો',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} ને સુધારવામાં અમારી મદદ કરો',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} એપ પ્રતિસાદ',
			'settings.sendFeedback.emailBodyPrefix' => 'કૃપા કરીને તમારો પ્રતિસાદ નીચે આપો:',
			'settings.sendFeedback.appVersion' => 'એપ વર્ઝન',
			'settings.sendFeedback.device' => 'ડિવાઇસ',
			'settings.sendFeedback.osVersion' => 'OS વર્ઝન',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'ભોજન ઇતિહાસ નિકાસ',
			'settings.exportMealHistory.subtitle' => 'તમારા લોગ થયેલા ભોજનનો CSV શેર કરો',
			'settings.exportMealHistory.shareText' => 'તમારો Calorify ભોજન ઇતિહાસ નિકાસ',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'ભોજન ઇતિહાસ નિકાસ થઈ શક્યો નથી: ${error}',
			'settings.clearAllData.title' => 'બધો ડેટા સાફ કરો',
			'settings.clearAllData.subtitle' => 'તમારી બધી માહિતી અપ્રતિર્વર્તિત રીતે કાઢી નાખો',
			'settings.clearAllData.confirmationTitle' => 'બધો ડેટા સાફ કરવો?',
			'settings.clearAllData.confirmationMessage' => 'આ ક્રિયા પાછી લઈ શકાતી નથી. તમારા બધા લોગ થયેલા ભોજન, પસંદીદા અને પ્રોફાઇલ સેટિંગ્સ કાયમી રીતે કાઢી નાખવામાં આવશે.',
			'settings.clearAllData.cancel' => 'રદ કરો',
			'settings.clearAllData.clearEverything' => 'બધું સાફ કરો',
			'settings.debugOptions.title' => 'ડિબગ વિકલ્પો',
			'settings.developerModeEnabled' => 'ડેવલપર મોડ સક્રિય થયો!',
			'settings.healthConnect.title' => 'હેલ્થ કનેક્ટ',
			'settings.healthConnect.subtitle' => 'પરવાનગીઓ જુઓ અને મેનેજ કરો',
			'settings.healthConnect.unavailable.title' => 'હેલ્થ કનેક્ટ ઉપલબ્ધ નથી',
			'settings.healthConnect.unavailable.description' => 'આ ડિવાઇસ પર હેલ્થ કનેક્ટ ઉપલબ્ધ નથી. કૃપા કરીને પ્લે સ્ટોરમાંથી હેલ્થ કનેક્ટ ઇન્સ્ટોલ કરો (Android 9+) અથવા Android 14+ પર અપડેટ કરો.',
			'settings.healthConnect.permissions.title' => 'પરવાનગીઓ',
			'settings.healthConnect.permissions.description' => 'હેલ્થ કનેક્ટ ઇન્ટિગ્રેશન આપવા નીચેની પરવાનગીઓ વિનંતી કરવામાં આવે છે:',
			'settings.healthConnect.permissions.granted' => 'મંજૂર',
			'settings.healthConnect.permissions.notGranted' => 'મંજૂર નથી',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'કુલ બર્ન થયેલી કૅલરી વાંચો',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'એપને હેલ્થ કનેક્ટમાંથી તમારી કુલ બર્ન થયેલી કૅલરી વાંચવાની મંજૂરી આપે છે.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'આ પરવાનગીનો ઉપયોગ એપમાં તમારી દૈનિક કૅલરી બર્ન બતાવવા માટે થાય છે, જે તમને દિવસભરની કુલ ઉર્જા ખર્ચણ સમજવામાં મદદ કરે છે.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'પોષણ ડેટા વાંચો',
			'settings.healthConnect.permissions.nutritionRead.description' => 'એપને હેલ્થ કનેક્ટમાંથી પોષણ ડેટા વાંચવાની મંજૂરી આપે છે.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'આ પરવાનગી હેલ્થ કનેક્ટ સાથે જોડાયેલ અન્ય એપ્સે લોગ કરેલી પોષણ માહિતી વાંચવા માટે છે, જેથી તમારી પોષણ અંગે વ્યાપક ઝાંખી મળી શકે.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'પોષણ ડેટા લખો',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'એપને હેલ્થ કનેક્ટમાં પોષણ ડેટા લખવાની મંજૂરી આપે છે.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'આ પરવાનગી તમારા લોગ થયેલા ભોજનને હેલ્થ કનેક્ટ સાથે સિંક કરવા માટે છે, ώστε તમારા પોષણ ડેટા તમે વાપરતા અન્ય હેલ્થ અને ફિટનેસ એપ્સમાં પણ ઉપલબ્ધ રહે.',
			'settings.healthConnect.managePermissions' => 'પરવાનગીઓ મેનેજ કરો',
			'settings.healthConnect.openSettings' => 'હેલ્થ કનેક્ટ સેટિંગ્સ ખોલો',
			'settings.healthConnect.requestPermissions' => 'પરવાનગીઓ માગો',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'પરવાનો વિનંતી રદ થઈ અથવા નિષ્ફળ ગઈ. કૃપા કરીને ફરી પ્રયત્ન કરો અથવા હેલ્થ કનેક્ટ સેટિંગ્સમાં પરવાનગીઓ હાથેથી મંજૂર કરો.',
			'settings.healthConnect.permissionRequestFailed' => 'પરવાનગીઓ માગી શકાયા નથી. કૃપા કરીને ફરી પ્રયત્ન કરો અથવા હેલ્થ કનેક્ટ સેટિંગ્સમાં પરવાનગીઓ હાથેથી મંજૂર કરો.',
			'settings.healthConnect.requestingPermissions' => 'વિનંતી કરી રહ્યા છીએ...',
			'settings.about.title' => 'વિશે',
			'settings.about.tagline' => 'ઝડપી, મફત અને ગોપનીયતા-પ્રથમ કૅલરી જાગરૂકતા',
			'settings.about.ourStory.title' => 'અમારી કહાની',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} એક સરળ નિરાશાથી જન્મ્યું: બહુભાગની કૅલરી ટ્રેકિંગ એપ્સ તો ખૂબ જ જટિલ છે, સતત હસ્તચાલિત ઇનપુટ માંગે છે, ઊંચી સબ્સ્ક્રિપ્શન ફી લે છે, અથવા ગોપનીયતામાં સમાધાન કરે છે.\n\nએક સોલો ડેવલપર તરીકે, હું કંઈક સરળ અને નિષ્પક્ષ બનાવવું ઇચ્છતો હતો — એવી એપ જે AI થી મહેનત ઓછી કરે, ઝડપી અને મફતમાં ચાલે, અને તમારા હેલ્થ ડેટાનો માન રાખે.\n\n${appLabel} એ એવી એપ છે જે હું ઇચ્છતો હતો: કોઈ એકાઉન્ટ્સ નહીં, કોઈ ટ્રેકિંગ નહીં, કોઈ જાહેરાતો નહીં — માત્ર સ્પષ્ટ, વ્યવહારુ ઇન્સાઇટ્સ અને તમારા આરોગ્ય લક્ષ્યો.',
			'settings.about.privacy.title' => 'તમારી ગોપનીયતા મહત્વની છે',
			'settings.about.privacy.description' => 'ગોપનીયતા પછીથી વિચારી નથી — એ ડિઝાઇનનો સિદ્ધાંત છે. હકીકતમાં તેનો અર્થ એ છે:',
			'settings.about.privacy.noAccounts' => 'કોઈ એકાઉન્ટ્સની જરૂર નથી\nતાત્કાલિક એપ વાપરો. કોઈ સાઇન-અપ નથી, કોઈ ઓળખ નથી.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'કોઈ વર્તન ટ્રેકિંગ નથી\n${appLabel} તમારી પ્રવૃત્તિ મોનીટર કરતી નથી, યુઝેજ પ્રોફાઇલ બનાવતી નથી, અથવા એપ્સ/વેબસાઇટ્સ પર તમને ટ્રેક કરતી નથી.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'જાહેરાત-મુક્ત ડિઝાઇન\n${appLabel} જાહેરાતો અથવા ડેટા-ચલિત મોનેટાઇઝેશન વિના કામ કરવા માટે બનાવવામાં આવી છે.',
			'settings.about.privacy.noDataSelling' => 'કોઈ ડેટા વેચાણ નથી\nતમારો હેલ્થ ડેટા ક્યારેય તૃતીય પક્ષને વેચવામાં અથવા શેર કરવામાં આવતો નથી.',
			'settings.about.privacy.localStorage' => 'લોકલ-પ્રથમ સંગ્રહ\nતમારો ડેટા તમારા ડિવાઇસ પર જ રહે છે.',
			'settings.about.privacy.privacyPolicy' => 'ગોપનીયતા નીતિ',
			'settings.about.developer.title' => 'એક સોલો ડેવલપર દ્વારા બનાવેલ',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} એક શાંત, ગોપનીયતાને માન આપતું હેલ્થ સોફ્ટવેર બનાવવામાં ધ્યાન કેન્દ્રિત કરનાર એક જ સોલો ડેવલપર દ્વારા બનાવવામાં અને જાળવવામાં આવે છે.\n\nપ્રતિસાદ વ્યક્તિગત રીતે વાંચવામાં આવે છે અને એપની દિશા નક્કી કરવામાં મદદ કરે છે.',
			'settings.about.developer.website' => 'વેબસાઇટ',
			'settings.about.developer.email' => 'ઇમેઇલ',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} ગમે છે?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'તમારો પ્રતિસાદ ${appLabel} ને દરેક માટે વધુ સારો બનાવવામાં મદદ કરે છે.',
			'settings.about.feedback.rateApp' => 'પ્લે સ્ટોર પર રેટ કરો',
			'settings.about.feedback.sendFeedback' => 'પ્રતિસાદ મોકલો',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'બિલ્ડ ${buildNumber}',
			'reminders.title' => 'રીમાઇન્ડર્સ સાથે માર્ગ પર રહો',
			'reminders.description' => 'ભોજન લોગ કરવા અને તમારા પોષણ લક્ષ્યો સાથે સતત રહેવા માટે નાજુક યાદ અપાવણીઓ મેળવો',
			'reminders.notificationsEnabled' => 'સૂચનાઓ સક્રિય',
			'reminders.notificationsDisabled' => 'સૂચનાઓ નિષ્ક્રિય',
			'reminders.enabledSubtitle' => 'તમને ભોજનના રીમાઇન્ડર્સ મળશે',
			'reminders.disabledSubtitle' => 'ભોજન રીમાઇન્ડર્સ મેળવવા માટે સૂચનાઓ સક્રિય કરો',
			'reminders.mealReminders' => 'ભોજન રીમાઇન્ડર્સ',
			'reminders.breakfast' => 'નાસ્તો',
			'reminders.lunch' => 'બપોરનું ભોજન',
			'reminders.dinner' => 'રાત્રીભોજન',
			'reminders.snack' => 'નાસ્તો',
			'reminders.unknown' => 'અજાણ્યું',
			'reminders.change' => 'બદલો',
			'reminders.enableNotifications' => 'સૂચનાઓ સક્રિય કરો',
			'reminders.skipForNow' => 'હાલ માટે છોડો',
			'reminders.saveChanges' => 'ફેરફારો સાચવો',
			'reminders.enabledSuccessfully' => 'સૂચનાઓ સફળતાપૂર્વક સક્રિય થઈ!',
			'reminders.permissionDenied' => 'સૂચના પરવાનગી નામંજૂર',
			'reminders.errorEnabling' => ({required Object error}) => 'સૂચનાઓ સક્રિય કરતી વખતે ભૂલ: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'સેટઅપ પૂર્ણ કરતી વખતે ભૂલ: ${error}',
			'notifications.breakfast.title' => 'નાસ્તાનો સમય! 🍳',
			'notifications.breakfast.body' => 'તમારો નાસ્તો લોગ કરવાનું ભૂલશો નહીં',
			'notifications.lunch.title' => 'બપોરના ભોજનનો સમય! 🥗',
			'notifications.lunch.body' => 'તમારું બપોરનું ભોજન લોગ કરવાનો સમય',
			'notifications.dinner.title' => 'રાત્રીભોજનનો સમય! 🍽️',
			'notifications.dinner.body' => 'તમારું રાત્રીભોજન લોગ કરવાનું ભૂલશો નહીં',
			'notifications.snack.title' => 'નાસ્તાનો સમય! 🍎',
			'notifications.snack.body' => 'એક સ્વસ્થ નાસ્તાનો સમય',
			'notifications.test.title' => 'ટેસ્ટ સૂચના',
			'login.title' => 'લૉગિન',
			'login.signInWithGoogle' => 'Google થી સાઇન ઇન કરો',
			'login.signInFailed' => 'Google સાઇન-ઇન નિષ્ફળ ગયું અથવા રદ થયું.',
			'disclaimer.pleaseNote' => 'કૃપા કરીને નોંધ લો',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} અંદાજિત પોષણ માહિતી આપે છે. ચોકસાઈ તમારા ઇનપુટ અને ખોરાકની ભિન્નતાઓ પર નિર્ભર છે. આને માર્ગદર્શન તરીકે વાપરો, અંતિમ સ્રોત તરીકે નહીં. વ્યક્તિગત આહાર સલાહ માટે વ્યાવસાયિકની સલાહ લો.',
			'disclaimer.snap.portionSize.title' => 'પરિમાણ કદ',
			'disclaimer.snap.portionSize.description' => 'અંદાજોની ચોકસાઈ તમારા દ્વારા કરાયેલા યોગ્ય પરિમાણ કદના મૂલ્યાંકન પર ખૂબ નિર્ભર છે.',
			'disclaimer.snap.preparationMethods.title' => 'તૈયારી પદ્ધતિઓ',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'રસોઈની પદ્ધતિઓ ખોરાકના પોષણ સામગ્રીને નોંધપાત્ર રીતે બદલી શકે છે. ${appLabel} ના અંદાજ હંમેશા આ ભિન્નતાઓનો હિસાબ ન રાખતા હોઈ શકે.',
			'disclaimer.snap.ingredients.title' => 'ઘટકો',
			'disclaimer.snap.ingredients.description' => 'ઘણા છુપાયેલા ઘટકોવાળા જટિલ વાનગીઓ ઓછા ચોક્કસ અંદાજ તરફ દોરી શકે છે.',
			'disclaimer.snap.databaseLimitations.title' => 'ડેટાબેસ મર્યાદાઓ',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} નો ફૂડ ડેટાબેસ વિશાળ છે પરંતુ તેમાં દરેક ખાદ્ય વસ્તુ અથવા તેના દરેક ભિન્ન પ્રકારનો સમાવેશ હોવો જરૂરી નથી.',
			'disclaimer.weightEstimate.title' => 'વજન અંદાજ વિશે',
			'disclaimer.weightEstimate.description' => 'દેખાડવામાં આવેલ વજન પરિવર્તન એક સાધારણ ‘કૅલરી ઇન સામે કૅલરી આઉટ’ મોડલ પર આધારિત સાકલ્યિક અંદાજ છે. આ પ્રેરણાત્મક માર્ગદર્શન માટે છે, તમારા વાસ્તવિક વજનનું પૂર્વાનુમાન નથી.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'કૅલરી ચોકસાઈ',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'આ અંદાજ તમારી ટ્રેક થયેલી કૅલરી લેવાત અને ખર્ચ જેટલો જ ચોક્કસ છે. અચોક્કસ લોગિંગથી અચોક્કસ પ્રોજેક્શન મળશે.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'જૈવિક પરિબળો',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'વાસ્તવિક વજન વધારો/ઘટાડો મેટાબોલિઝમ, હોર્મોન્સ, ઊંઘ, તાણ, હાઇડ્રેશન અને અન્ય વ્યક્તિગત પરિબળોથી પ્રભાવિત થાય છે, જેને ${appLabel} માપી શકતું નથી.',
			'disclaimer.weightEstimate.waterWeight.title' => 'પાણીનું વજન અને ફેરફારો',
			'disclaimer.weightEstimate.waterWeight.description' => 'દૈનિક વજન પાણીની ધારણ, પાચન અને સમયને કારણે નોંધપાત્ર રીતે ફેરફારી શકે છે. આ અંદાજ આ દૈનિક ફેરફારોનો હિસાબ નથી રાખતો.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'વ્યાવસાયિક માર્ગદર્શન',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'ચિકિત્સાકીય નિર્ણય લેવા માટે આ અંદાજનો ઉપયોગ ન કરો. વ્યક્તિગત વજન વ્યવસ્થાપન સલાહ માટે હંમેશા આરોગ્ય વ્યવસાયી અથવા નોંધાયેલા ડાયેટિશિયનનો સંપર્ક કરો.',
			'disclaimer.healthMetrics.description' => 'આ મેટ્રિક્સ તમને તમારા શરીરની ઉર્જા જરૂરિયાતો સમજવામાં અને તમારા પોષણ લક્ષ્યોને માર્ગદર્શન આપવા મદદ કરે છે.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'બેઝલ મેટાબોલિક રેટ (BMR) એ કૅલરીની સંખ્યા છે જે તમારું શરીર આરામની અવસ્થામાં શ્વાસ અને રક્ત પરિસંચરણ જેવી મૂળભૂત ક્રિયાઓ જાળવવા બર્ન કરે છે. BMR તમારી ઉંમર, લિંગ, ઉંચાઈ અને વજન પર આધારિત છે. વધુ BMRનો અર્થ તમારું શરીર સ્વાભાવિક રીતે વધુ કૅલરી બર્ન કરે છે, સામાન્ય રીતે વધુ માંસપેશીઓ, ઓછી ઉંમર અથવા પુરુષ હોવાને કારણે. ઓછું BMR સામાન્ય રીતે ઓછી માંસપેશીઓ, વધુ ઉંમર અથવા સ્ત્રી હોવાને દર્શાવે છે.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'ટોટલ ડેઇલી એનર્જી એક્સપેન્ડિચર (TDEE) એ તમે દરરોજ બર્ન કરેલી કુલ કૅલરી છે, જેમાં તમારો BMR અને શારીરિક પ્રવૃત્તિ/દૈનિક હલનચલનથી બર્ન થયેલી કૅલરીનો સમાવેશ થાય છે. TDEE તમારો BMR અને પ્રવૃત્તિ સ્તર પર આધારિત છે. વધુ TDEEનો અર્થ તમે કુલ રીતે વધુ કૅલરી બર્ન કરો છો, સામાન્ય રીતે વધુ સક્રિય હોવા અથવા વધુ BMR હોવાના કારણે. ઓછું TDEE ઓછી દૈનિક સક્રિયતા અથવા ઓછા BMR સૂચવે છે.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'દૈનિક લક્ષ્ય',
			'disclaimer.healthMetrics.dailyGoal.description' => 'દૈનિક લક્ષ્ય તમારા TDEE અને વજન લક્ષ્ય આધારે ભલામણ કરાયેલ દૈનિક કૅલરી લેવાત છે. વજન ઘટાડવા માટે, તમે તમારા TDEE કરતાં ઓછી કૅલરી લો. વજન જાળવવા માટે, તમારા TDEE જેટલી કૅલરી લો. વજન વધારવા માટે, તમે તમારા TDEE કરતાં વધુ કૅલરી લો. આ તમને સ્વસ્થ ગતિએ ઇચ્છિત વજન પરિવર્તન હાંસલ કરવામાં મદદ કરે છે.',
			'disclaimer.calorieExpenditure.title' => 'કૅલરી ખર્ચાનો અંદાજ',
			'disclaimer.calorieExpenditure.description' => 'જ્યારે હેલ્થ કનેક્ટ ડેટા ઉપલબ્ધ ન હોય, ત્યારે અમે આજની બર્ન થયેલી કૅલરીનો અંદાજ તમારા બેઝલ મેટાબોલિક રેટ (BMR) અને સક્રિયતા સ્તર (TDEE) આધારે, દિવસના પસાર થયેલા સમય પ્રમાણે સ્કેલ કરીને લગાવીએ છીએ.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'અંદાજ કેવી રીતે ગણ્યો છે',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'અમે તમારો TDEE (તમારી પ્રોફાઇલ આધારે) ગણીએ છીએ અને અત્યાર સુધી પસાર થયેલા દિવસના અંશે (કલાક + મિનિટ)/24 ગુણાકાર કરીને હજી સુધી બર્ન થયેલી કૅલરી અંદાજીએ છીએ.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'વ્યાવસાયિક માર્ગદર્શન',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'ચિકિત્સાકીય નિર્ણય લેવા માટે આ અંદાજનો ઉપયોગ ન કરો. વ્યક્તિગત વજન વ્યવસ્થાપન સલાહ માટે હંમેશા આરોગ્ય વ્યવસાયી અથવા નોંધાયેલા ડાયેટિશિયનનો સંપર્ક કરો.',
			'common.close' => 'બંધ કરો',
			'common.kContinue' => 'ચાલુ રાખો',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} ગમે છે?',
			'feedbackRating.yes' => 'હા, મને ગમે છે',
			'feedbackRating.no' => 'ખાસ નથી',
			'feedbackRating.rateStepHeading' => 'પ્લે સ્ટોર પર રેટ કરો',
			'feedbackRating.emailStepHeading' => 'ઇમેઇલ દ્વારા પ્રતિસાદ મોકલો',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'ઝડપી રેટિંગથી અન્ય લોકોને ${appLabel} શોધવામાં મદદ મળે છે અને વિકાસ ચાલુ રહે છે. શું તમે એક ક્ષણ લઈને રેટ કરશો?',
			'feedbackRating.shareFeedbackViaEmail' => 'તમારો પ્રતિસાદ આગળ શું આવે છે તે નક્કી કરે છે — અમે દરેક સંદેશો વાંચીએ છીએ. શું તમે ઇમેઇલ દ્વારા તમારા વિચારો શેર કરશો?',
			'feedbackRating.rateCta' => 'પ્લે સ્ટોર પર રેટ કરો',
			'feedbackRating.maybeLater' => 'પછી કદાચ',
			'feedbackRating.sendFeedback' => 'પ્રતિસાદ મોકલો',
			'feedbackRating.noThanks' => 'ના, આભાર',
			'feedbackRating.aboutUsDescription' => 'નાના ટીમ દ્વારા કાળજીપૂર્વક બનાવેલ. અમે ગોપનીયતા, સરળતા અને તમારી ખાવાની આદતોને વધુ સારી બનાવવા પર ધ્યાન કેન્દ્રિત કરીએ છીએ.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel} પાછળ કોણ છે તે જાણવા ઇચ્છો છો? જુઓ ',
			'feedbackRating.aboutUsLinkLabel' => 'અમારા વિશે',
			'feedbackRating.thankYouMessage' => 'આભાર! અમે ફરી અન્ય સમયે પૂછશું.',
			'health.syncFailed' => 'હેલ્થ કનેક્ટ સાથે સિંક થઈ શક્યું નથી',
			'health.mealSynced' => 'ભોજન હેલ્થ કનેક્ટ સાથે સિંક થયું',
			_ => null,
		};
	}
}
