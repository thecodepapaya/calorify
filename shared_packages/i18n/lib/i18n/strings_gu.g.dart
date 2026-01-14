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
	@override late final _TranslationsErrorsGu errors = _TranslationsErrorsGu._(_root);
	@override late final _TranslationsDebugGu debug = _TranslationsDebugGu._(_root);
	@override late final _TranslationsHealthGu health = _TranslationsHealthGu._(_root);
}

// Path: onboarding
class _TranslationsOnboardingGu implements TranslationsOnboardingEn {
	_TranslationsOnboardingGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'તમે ${appLabel} માં સ્વાગત છે';
	@override String get subtitle => 'આઇએઇ દ્વારા સક્ષમ તમારા વ્યક્તિગત પોષણ સહાયક';
	@override String get getStarted => 'શરૂ કરીને જોઈએ';
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
	@override String get noMeals => 'કોઈ ખોરાક નોંધાયો નથી';
	@override String get emptyMessage => 'તમારા છેલ્લામાં એક તસવીર અપલોડ કરો.';
	@override String get today => 'આજે';
	@override String get yesterday => 'ગઇકાલે';
}

// Path: meal
class _TranslationsMealGu implements TranslationsMealEn {
	_TranslationsMealGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'અરે ના!';
	@override String get delete => 'દૂર કરો';
	@override String get editMeal => 'ખોરાક સંપાદિત કરો';
	@override String get addMeal => 'ખોરાક ઉમેરો';
	@override String get saveMeal => 'ખોરાક સેવ કરો';
	@override String get save => 'સેવ';
	@override String get mealName => 'ખોરાક નામ';
	@override String get mealQuantity => 'ખોરાકનું પ્રમાણ';
	@override String get mealQuantityHint => 'જેમ કે, 1 બાઉલ, 2 સ્લાઇસ';
	@override String get timeOfMeal => 'ખોરાકનો સમય';
	@override String get timeOfMealHint => 'તમારા ખોરાકનો સમય પસંદ કરો';
	@override String get mealType => 'ખોરાકનો પ્રકાર';
	@override late final _TranslationsMealNutritionGu nutrition = _TranslationsMealNutritionGu._(_root);
	@override late final _TranslationsMealDeleteConfirmationGu deleteConfirmation = _TranslationsMealDeleteConfirmationGu._(_root);
	@override String get addedToLog => 'ખોરાક તમારા લૉગમાં ઉમેરવામાં આવ્યો છે!';
	@override String couldNotAdd({required Object error}) => 'ખોરાક ઉમેરવામાં અસફળ: ${error}';
	@override String get removedFromFavorites => 'પસંદીમાંથી દૂર કરવામાં આવ્યું!';
	@override String get savedAsFavorite => 'ખોરાકને પસંદી તરીકે સેવ કર્યું!';
	@override String couldNotUpdateFavorite({required Object error}) => 'પસંદીમાં સુધારો કરવામાં અસફળ: ${error}';
	@override String failedToProcess({required Object error}) => 'પ્રક્રિયા કરવામાં અસફળ: ${error}';
	@override String failedToProcessImage({required Object error}) => 'છબાને પ્રક્રિયા કરવામાં અસફળ: ${error}';
	@override String errorCompressingImage({required Object error}) => 'તશે છબી સંકોચીત કરવામાં ભૂલ: ${error}';
	@override String get failedToSave => 'ડેટા સેવ કરવામાં અસફળ. કૃપા કરીને ફરી પ્રયાસ કરો.';
}

// Path: favorites
class _TranslationsFavoritesGu implements TranslationsFavoritesEn {
	_TranslationsFavoritesGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પસંદગીઓ';
	@override String get empty => 'હજી સુધી કોઈ પસંદી ખોરાક નથી.';
}

// Path: profile
class _TranslationsProfileGu implements TranslationsProfileEn {
	_TranslationsProfileGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રોફાઇલ';
	@override String get noProfileData => 'પોતાની માહિતી ઉપલબ્ધ નથી';
	@override String get yourProfile => 'તમારી પ્રોફાઇલ';
	@override String get viewAndManage => 'તમારી આરોગ્ય માહિતી જુઓ અને વ્યવસ્થિત કરો';
	@override late final _TranslationsProfileSectionsGu sections = _TranslationsProfileSectionsGu._(_root);
	@override String get gender => 'લિંગ';
	@override String get height => 'ઉંચાઈ';
	@override String get weight => 'વજન';
	@override String get age => 'ઉમર';
	@override String get weightGoal => 'વજન લક્ષ્ય';
	@override String get activityLevel => 'પ્રવૃત્તિનું સ્તર';
	@override String get healthMetrics => 'આરોગ્ય મેટ્રિક્સ';
	@override String get notSet => 'સેટ નથી';
	@override String get years => 'વર્ષ';
	@override String get updatedSuccessfully => 'પ્રોફાઇલ સફળતાપૂર્વક અપડેટ થઇ ગઈ!';
	@override late final _TranslationsProfileCalculatedValuesGu calculatedValues = _TranslationsProfileCalculatedValuesGu._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreGu implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'આરોગ્ય સ્કોર';
	@override String get whyThisScore => 'આ સ્કોર કેમ છે?';
	@override String get note => 'આ સ્કોર આઇએઇના નક્કી કરેલા ઘટકો અને પોષણની ઘનતાના આધાર પર છે. વ્યકિતગત પોષણ સલાહ માટે હંમેશા વ્યાવસાયિકની સલાહ મેળવો.';
	@override String get unhealthy => 'અપોઇક';
	@override String get healthy => 'હેલ્ધી';
	@override String get neutral => 'ન્યુટ્રલ';
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
	@override String get height => 'ઉંચાઈ';
	@override String get weight => 'વજન';
	@override String get weightGoal => 'વજન લક્ષ્ય';
	@override String get activityLevel => 'પ્રવૃત્તિનું સ્તર';
	@override String get metric => 'મેટ્રિક';
	@override String get imperial => 'ઇમ્પીરિયલ';
	@override String get metricCm => 'મેટ્રિક (સોમી)';
	@override String get imperialFtIn => 'ઇમ્પીરિયલ (ફુટ/ઇંચ)';
	@override String get metricKg => 'મેટ્રિક (કિ.ગ્રા.)';
	@override String get imperialLbs => 'ઇમ્પીરિયલ (પાઉન્ડ)';
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
	@override late final _TranslationsSettingsClearAllDataGu clearAllData = _TranslationsSettingsClearAllDataGu._(_root);
	@override late final _TranslationsSettingsDebugOptionsGu debugOptions = _TranslationsSettingsDebugOptionsGu._(_root);
	@override String get developerModeEnabled => 'વિકાશક મોડ સક્રિય થયો છે!';
}

// Path: reminders
class _TranslationsRemindersGu implements TranslationsRemindersEn {
	_TranslationsRemindersGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'યાદદહન સાથે ટ્રેકમાં રહી છે';
	@override String get description => 'ખોરાકને નોંધવા અને આપના પોષણના લક્ષ્યોમાં કન્સિસ્ટન્ટ રહેવા માટે પરીવાર્તા યાદી મેળવો';
	@override String get notificationsEnabled => 'જગ્યા લાંબા અમલમાં';
	@override String get notificationsDisabled => 'જગ્યા નવો જામમાં';
	@override String get enabledSubtitle => 'તમે ખોરાક યાદદહનો મેળવો';
	@override String get disabledSubtitle => 'યાદદહન મેળવાની લાગણી કરવા માટે સૂચનાવળી ચાલુ કરો';
	@override String get mealReminders => 'ખોરાક યાદદહન';
	@override String get breakfast => 'નાસ્તો';
	@override String get lunch => 'મધ્યાહ્ન માટે';
	@override String get dinner => 'રાતનું ભોજન';
	@override String get snack => 'સ્નેક';
	@override String get unknown => 'અજાણી';
	@override String get change => 'બદલો';
	@override String get enableNotifications => 'જગ્યા શરત';
	@override String get skipForNow => 'હવે અવગણવાં';
	@override String get saveChanges => 'બદલ પડી જાઓ';
	@override String get enabledSuccessfully => 'યાદદહન સફળતાપૂર્વક ચાલુ થયું!';
	@override String get permissionDenied => 'યાદદહનની પરવાનગી સ્વીકારેલ નથી';
	@override String errorEnabling({required Object error}) => 'યાદદહન શરૂ કરવા માટે ભૂલ: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'સેટઅપ પૂર્ણ કરવાનો ભૂલ: ${error}';
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
	@override String get signInWithGoogle => 'ગૂગલ સાથે લૉગિન કરો';
	@override String get signInFailed => 'ગૂગલ સાઇન-ઇન નિષ્ફળ થયું અથવા રદ કરવામાં આવ્યું.';
}

// Path: disclaimer
class _TranslationsDisclaimerGu implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'કૃપા નોંધો';
	@override late final _TranslationsDisclaimerSnapGu snap = _TranslationsDisclaimerSnapGu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateGu weightEstimate = _TranslationsDisclaimerWeightEstimateGu._(_root);
}

// Path: common
class _TranslationsCommonGu implements TranslationsCommonEn {
	_TranslationsCommonGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get close => 'બંદ કરો';
	@override String get kContinue => 'આગળ વધો';
}

// Path: errors
class _TranslationsErrorsGu implements TranslationsErrorsEn {
	_TranslationsErrorsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'પ્રોફાઇલ ડેટા લોડ કરવામાં ભૂલ';
	@override String get somethingWentWrong => 'કોઈ મુશ્કેલી પડી.';
}

// Path: debug
class _TranslationsDebugGu implements TranslationsDebugEn {
	_TranslationsDebugGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ડેબેક્ડ વિકલ્પો';
	@override late final _TranslationsDebugSectionsGu sections = _TranslationsDebugSectionsGu._(_root);
	@override String get showActiveNotifications => 'સક્રિય યાદદહનો દેખાડો';
	@override String get scheduleTestNotification => 'ટેસ્ટ યાદદહન સ્કેડ્યૂલ કરો (10સે)';
	@override String get triggerBreakfastNotification => 'નાસ્તાનો યાદદહન ચાલુ કરો';
	@override String get cancelAllNotifications => 'બધા યાદદહનો રદ કરો';
	@override String get activeNotifications => 'સક્રિય યાદદહન';
	@override String get noTitle => 'કોઈ શીર્ષક નહીં';
	@override String get noBody => 'કોઈ શરીર નહીં';
	@override String get fetchTodaysSteps => 'આજની પગલાની શોધ કરો';
	@override String get fetchTodaysCalories => 'આજની કૅલરી શોધો';
	@override String get fetchLatestWeight => 'તાજેતરના વજનની શોધ કરો';
	@override String get fetchLatestHeight => 'તાજેતરના ઊંચાઈની શોધ કરો';
	@override String get writeTestWeight => 'ટેસ્ટ વજન લખો (70કિ.ગ્રા.)';
	@override String get writeTestHeight => 'ટેસ્ટ ઊંચાઈ લખો (175સં.મી.)';
	@override String get syncLast7Days => 'બધા 7 દિવસ સાથે સમન્વયિત કરો';
	@override String get sync7DaysTitle => '7-દિવસનો સમન્વય';
	@override String get checkCurrentLocale => 'વર્તમાન લોકેલ તપાસો';
	@override String get currentLocale => 'વર્તમાન લોકેલ';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'ભાષા: ${languageCode}\nકેન્દ્ર: ${countryCode}\nયુનાઇટ સિસ્ટમ: ${unitSystem}';
	@override String get latestWeight => 'તાજેતરની વજન';
	@override String get latestHeight => 'તાજેતરની ઊંચાઈ';
	@override String get todaysCalories => 'આજની કૅલરી';
	@override String totalCaloriesBurned({required Object calories}) => 'કુલ કૅલરી બર્ન થયેલી: ${calories}';
	@override String syncSuccess({required Object count}) => 'આખરી 7 દિવસમાં પગલાં, કૅલરી, અને વજન માટે સફળતાપૂર્વક ${count} ડેટા પોઇન્ટ મેળવવાં.';
	@override String get noWeightData => 'શ્રેષ્ઠ 30 દિવસમાં કોઈ વજન ડેટા મળ્યાં નથી.';
	@override String get noHeightData => 'ગત વર્ષે કોઈ ઊંચાઈ ડેટા નથી.';
	@override String get noCalorieData => 'આજના માટે કોઈ કૅલરી ડેટા નથી.';
	@override String get weightWritten => 'સફળતાપૂર્વક ટેસ્ટ વજન લખાઈ ચૂક્યું છે (70કિ.ગ્રા.).';
	@override String get weightWriteFailed => 'ટેસ્ટ વજન લખવામાં નિષ્ફળ.';
	@override String get heightWritten => 'સફળતાપૂર્વક ટેસ્ટ ઊંચાઈ લખાઈ છે (175સં.મી.).';
	@override String get heightWriteFailed => 'ટેસ્ટ ઊંચાઈ લખવામાં નિષ્ફળ.';
	@override String get noNotifications => 'કોઈ સક્રિય યાદદહન નથી.';
	@override String get testNotificationScheduled => 'આજ 10 સેકંડમાં એક ટેસ્ટ યાદદહન શેડ્યુ કર્યું છે.';
	@override String get testNotificationBody => 'આ 10 સેકંડમાં શેડ્યુલ કરેલું પરીક્ષણ યાદદહન છે.';
	@override String get breakfastNotificationTriggered => 'નાસ્તાનો યાદદહન ચાલુ થતું.';
	@override String get allNotificationsCancelled => 'બધા યાદદહન રદ કરવામાં આવ્યા છે.';
	@override String get fetchingData => 'આખી 7 દિવસ માટે ડેટા મેળવવામાં ...';
	@override String id({required Object id}) => 'ID: ${id}';
}

// Path: health
class _TranslationsHealthGu implements TranslationsHealthEn {
	_TranslationsHealthGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'હેલ્થ કનેક્ટ સાથે સમન્વય શુધ્ધબૂક કર્યો નથી';
	@override String get mealSynced => 'ખોરાક હેલ્થ કનેક્ટ સાથે સંકળાયેલ છે';
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
	@override String get title => 'તમે કયા લિંગના છો?';
	@override String get description => 'લિંગથી અમને તમારી બેસલ મેટાબોલિક રેટ (BMR) ચોક્કસ રીતે ગણવામાં મદદ રૂપ થાય છે.';
	@override String get next => 'આગળ';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightGu implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારી ઉંચાઈ કેટલી છે?';
	@override String get description => 'તમારી ઉંચાઈથી અમને તમારા BMI અને ઊર્જાની જરૂરિયાતો ચોક્કસ રીતે ગણવામાં મદદ થાય છે.';
	@override String get metric => 'મેટ્રિક';
	@override String get imperial => 'ઇમ્પીરિયલ';
	@override String get next => 'આગળ';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightGu implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'તમારું હાલનું વજન શું છે?';
	@override String get currentDescription => 'તમારું હાલનું વજન તમારી દૈનિક લક્ષ્યોને વૈજ્ઞાનિક બનાવવા માટે જરુર છે.';
	@override String get targetTitle => 'તમારું લક્ષ્ય વજન શું છે?';
	@override String get targetDescription => 'લક્ષ્ય વજન નક્કી કરવાથી અમને તમારું લાંબા ગાળાનું આયોજન નિર્ધારિત કરવામાં મદદ થાય છે.';
	@override String get metric => 'મેટ્રિક';
	@override String get imperial => 'ઇમ્પીરિયલ';
	@override String get next => 'આગળ';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeGu implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારું જન્મ દિવસ ક્યારે છે?';
	@override String get description => 'તમારી ઉમરથી અમને તમારી કૅલોરીની જરૂરિયાતો ચોક્કસ રીતે ગણવામાં મદદ થાય છે.';
	@override String get next => 'આગળ';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleGu implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'કમજોરી';
	@override String get healthy => 'હેલ્ધી';
	@override String get overweight => 'વધારે વજન';
	@override String get obese => 'સ્થૂળતા';
	@override late final _TranslationsOnboardingBmiScaleCategoriesGu categories = _TranslationsOnboardingBmiScaleCategoriesGu._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesGu messages = _TranslationsOnboardingBmiScaleMessagesGu._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalGu implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારું લક્ષ્ય શું છે?';
	@override String get description => 'તે લક્ષ્ય પસંદ કરો જે શ્રેષ્ઠ રીતે વર્ણવે છે તમે શું પ્રાપ્ત કરવા માંગો છો';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelGu implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમે કેટલા કાર્યશીલ છો?';
	@override String get description => 'આ તમને અમારી દૈનિક કૅલોરીની જરૂરિયાતો વધારે ચોક્કસ રીતે ગણવામાં મદદ કરે છે';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectGu implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ કનેક્ટ સાથે જોડાઓ';
	@override String get description => 'વધુ માહિતી માટે તમારાં આરોગ્ય ડેટા સમન્વયિત કરો અને આપોઆપ કૅલોરી ટ્રેકિંગ કરો';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingGu automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingGu._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsGu progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsGu._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationGu seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationGu._(_root);
	@override String get connected => 'હેલ્થ કનેક્ટ જોડાયેલ';
	@override String get notConnected => 'હેલ્થ કનેક્ટ નથી જોડાયેલ';
	@override String get setup => 'હેલ્થ કનેક્ટ સુયોજિત કરો';
	@override String get skipForNow => 'હવે અંતગી કરો';
	@override String get statusConnected => 'હેલ્થ કનેક્ટ સંકળાયેલ છે.';
	@override String get statusSuccess => 'હેલ્થ કનેક્ટ સફળતાપૂર્વક જોડાયેલ છે!';
	@override String statusPermissionDenied({required Object appLabel}) => 'આગૃહ દેવાઈ નથી. કૃપા કરીને ${appLabel} માટે તમારા ફોનના સેટિંગોમાં હેલ્થ કનેક્ટની પરવાનગી ચાલુ કરો.';
	@override String statusError({required Object error}) => 'હેલ્થ કનેક્ટ સાઇડશેપિંગમાં ભૂલ: ${error}';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalGu implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમે રોજના લક્ષ્યને નક્કી કરો';
	@override String get titleSet => 'તમારા રોજના લક્ષ્ય';
	@override String get description => 'તમારા આરોગ્યના માર્ગો શરૂ કરવા માટે સંપૂર્ણ રીતે તૈયાર છો? તમારી દૈનિક કૅલરીના લક્ષ્યને નીચે નક્કી કરો.';
	@override String get descriptionSet => 'તમારી દિશામાં સેટ છે! આ તમારા દૈનિક કૅલરીના લક્ષ્ય છે જે તમને માર્ગદર્શન આપશે.';
	@override String get yourGoal => 'તમારું લક્ષ્ય';
	@override String get dailyCalories => 'દૈનિક કૅલરી (કકલ)';
	@override String get setGoal => 'લક્ષ્ય નક્કી કરો';
	@override String get intake => 'આહાર';
	@override String get burned => 'બર્ન્ડ';
	@override String get weightImpact => 'વજનનો પ્રભાવ';
	@override String get estLoss => 'અંદાજિત ન્કલ';
	@override String get estGain => 'અંદાજિત લેવું';
	@override String get kcal => 'કકલ';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryGu implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'દૈનિક વિસ્તાર';
	@override String get calories => 'કૅલરી';
	@override String get carbs => 'કાર્બો';
	@override String get protein => 'પ્રોટીન';
	@override String get fat => 'ચરબી';
	@override String get fiber => 'ફાઇબર';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressGu implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'આજના મેડકરાહત્વ';
	@override String get target => 'લક્ષ્ય';
	@override String get current => 'હાલમાં';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryGu implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => '7-દિવસનો મેડકરાહત્વ ઈતિહાસ';
	@override String get noHistoryYet => 'હજુ સુધી કોઈ ઈતિહાસ નથી';
	@override String get startLogging => 'વિભાગો નોંધવા શરૂ કરો જેથી તમે અહીં તમારા\n7-દિવસના મેડકરાહત્વો જોયા';
}

// Path: home.mealLog
class _TranslationsHomeMealLogGu implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'નોંધાયેલા ખોરાક';
	@override String get emptyMessage => 'તમારા છેલ્લામાં એક તસવીર અપલોડ કરો.';
	@override String get noMealsToday => 'આજે કોઈ ખોરાક નોંધાયો નથી';
	@override String get seeAllMeals => 'બધી ખોરાક જુઓ';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionGu implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'આઇએઇ સાથે ઝડપી ઉમેરો';
	@override String get description => 'તમારા ખોરાકનું વર્ણન કરો, અને આઇએઇને વિગતો લેવા દો.';
	@override String get hint => 'જેણે નાસ્તા માટે મેં એક વિશાળ બૉલ બરફ સાથે એક તળિયામાંનું બાંધવ્યું છે ...';
	@override String get analyzeMeal => 'ખોરાકનું વિશ્લેષણ';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsGu implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પસંદી ખોરાક';
	@override String get description => 'તમારા પસંદી ખોરાકોમાં એક ઝડપી ઉમેરો.';
	@override String get noFavorites => 'હજી સુધી કોઈ પસંદી ખોરાક નથી.';
	@override String get addFavoriteHint => 'એક ખોરાક પર તારાનું બટન દબાવો તેને પસંદી તરીકે નોધવા.';
	@override String get seeAll => 'બધાં જુઓ';
	@override String get add => 'ઉમેરો';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapGu implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'સ્નેપ અને તમારા ખોરાકને ટ્રેક કરો';
	@override String get description => 'આઇએઇ વિશ્લેષણ માટે તમારા ખોરાકની ફોટો લેવા માટે તમારા કેમેરાનો ઉપયોગ કરો.';
	@override String get openCamera => 'કેમેરા ખોલો';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthGu implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ કનેક્ટ સાથે સિનક કરો';
	@override String get description => 'તમારી પોષણ માહિતી હેલ્થ કનેક્ટ સાથે સમન્વયિત કરો';
	@override String get install => 'ઇન્સ્ટોલ કરો';
	@override String get connect => 'જોડો';
}

// Path: meal.nutrition
class _TranslationsMealNutritionGu implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get calories => 'કૅલરી';
	@override String get carbs => 'કાર્બો (ગ)';
	@override String get protein => 'પ્રોટીન (ગ)';
	@override String get fat => 'ચરબી (ગ)';
	@override String get fiber => 'ફાઇબર (ગ)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationGu implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ખોરાક દૂર કરો';
	@override String get message => 'શું તમે ખરેખર આ ખોરાકને દૂર કરવા માગો છો?';
	@override String get cancel => 'રદ કરો';
	@override String get delete => 'દૂર કરો';
}

// Path: profile.sections
class _TranslationsProfileSectionsGu implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'પ્રોફાઇલ';
	@override String get basicInformation => 'મૂળભૂત માહિતી';
	@override String get goalsAndActivity => 'લક્ષ્ય અને પ્રવૃત્તિ';
	@override String get calculatedValues => 'ગણનાકૃત અર્થતા';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesGu implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'દૈનિક લક્ષ્ય';
	@override String get calPerDay => 'કકલ/દિવસ';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsGu implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'વ્યક્તિગત માહિતી';
	@override String get physicalMeasurements => 'શારીરિક માપ';
	@override String get goalsAndActivity => 'લક્ષ્ય અને પ્રવૃત્તિ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersGu implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get male => 'પુરૂષ';
	@override String get female => 'મહિલા';
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
	@override String get notifications => 'કળશણ બાજુ';
	@override String get supportAndLegal => 'મદદ અને કનેક્ટ';
	@override String get dangerZone => 'ખતરો અને ઝોન';
	@override String get developer => 'વિકાશક';
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
	@override String get subtitle => 'તમારી પસંદી ભાષા પસંદ કરો';
	@override String get searchHint => 'બોલીઓ શોધો...';
	@override String get noResults => 'કોઈ પરિણામો મળ્યા નહીં';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitGu implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ઉંચાઈની એકમ';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitGu implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વજનની એકમ';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersGu implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ખોરાક યાદદહન';
	@override String get subtitle => 'સમયસર એલર્ટ સાથે ટ્રેકમાં જાઓ';
}

// Path: settings.theme
class _TranslationsSettingsThemeGu implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'થિમ';
	@override String get light => 'ઊજાગર';
	@override String get dark => 'અંધારું';
	@override String get system => 'પરિષ્ય';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackGu implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'જવાબ મોકલો';
	@override String subtitle({required Object appLabel}) => '${appLabel} સુધારવા માટે અમને મદદ કરો';
	@override String emailSubject({required Object appLabel}) => '${appLabel} એપનો પ્રતિસાદ';
	@override String get emailBodyPrefix => 'કૃપા કરી નીચે તમારો પ્રતિસાદ આપો:';
	@override String get appVersion => 'એપ આવૃત્તિ';
	@override String get device => 'યંત્ર';
	@override String get osVersion => 'ઓએસ આવૃત્તિ';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataGu implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'બધી માહિતી દૂર કરો';
	@override String get subtitle => 'તમારી તમામ માહિતી પુનઃપ્રાપ્ય રીતે ડિલીટ કરો';
	@override String get confirmationTitle => 'બધી માહિતી દૂર કરવી?';
	@override String get confirmationMessage => 'આ કાર્ય પાછું વળતું નથી. તમારા બધા નોંધાયેલ ખોરાક, પસંદી, અને પ્રોફાઇલ સેટિંગ્સ કાયમી રીતે ડિલીટ થશે.';
	@override String get cancel => 'રદ કરો';
	@override String get clearEverything => 'બધું દૂર કરો';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsGu implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ડેબેક્ડ વિકલ્પો';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastGu implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'નાસ્તાનો સમય! 🍳';
	@override String get body => 'તમારા નાસ્તો નોંધાવવાનું ન ભૂલતા';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchGu implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'મધ્યાહ્નના સમય! 🥗';
	@override String get body => 'તમારા મધ્યાહ્નનો સમય નોંધાવવાનું';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerGu implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'રાતના ખોરાકનો સમય! 🍽️';
	@override String get body => 'તમારા રાતના ખોરાકનો સમય યાદ રાખવા';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackGu implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'નાશ્તાનું સમય! 🍎';
	@override String get body => 'સ્વસ્થ નાશ્તા માટે ટ્યન કરવાના સમય આવે છે';
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
	@override String description({required Object appLabel}) => '${appLabel} અંદાજિત પોષણની માહિતી ઉપલબ્ધ કરે છે. સચોટતા તમારા ઇનપુટ અને ખોરાક ની વેરિયેશન ઉપર આધાર રાખે છે. માર્ગદર્શિકાની તરીકે ઉપયોગ કરો, નિશ્ચિત સ્રોત તરીકે નહીં. વ્યક્તિગત પોષણ ઉપર સલાહ માટે હંમેશા વ્યાવસાયિકને સંપર્ક કરો.';
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
	@override String get description => 'લાક્ષણિક વજનનું પરિવર્તન એક ધારણિયા અંદાજ છે, સરળ કૅલોરીમાં પ્રવેશ સામે મૂકવાનું છે. આ માત્ર પ્રેરણા માટે છે, તમારા વાસ્તવિક વજન માટે નહીં.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyGu calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyGu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsGu biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsGu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightGu waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightGu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceGu professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceGu._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsGu implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'યાદદહન';
	@override String get healthConnect => 'હેલ્થ કનેક્ટ';
	@override String get appInfo => 'એપ માહિતી';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionGu implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'સ્માર્ટ ફૂડ ઓળખાણ';
	@override String get description => 'ફોટો લ્યો અને આઇએઇને તમારા ખોરાકની ઓળખ પરિચય કરવો દો';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisGu implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'આઇએઇ વિશ્લેષણ';
	@override String get description => 'તમારા વર્ણનની આધારે તરત જ પોષણ વાસ્તવિકતાઓ મેળવો';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationGu implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'આરસિ માટે જોડાણ';
	@override String get description => 'વધુ માહિતી માટે હેલ્થ કનેક્ટ સાથે જોડો';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesGu implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'કમજોરી';
	@override String get healthyWeight => 'હેલ્ધી વજન';
	@override String get overweight => 'વધારે વજન';
	@override String get obese => 'સ્થૂળતા';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesGu implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'અમારું લક્ષ્ય તમને પોષણમય ભોજન સાથે સંતુલિત વજન પ્રાપ્ત કરવા માટે એક સ્વાસ્થ્ય યોજના બનાવવામાં મદદ કરવું છે.';
	@override String get healthy => 'શાનદાર કાર્ય! તમે હેલ્ધી શ્રેણીમાં છો. અમે તમને તમારી ઊર્જા અને જીવનશક્તિને જાળવવામાં મદદ કરીશું.';
	@override String overweight({required Object appLabel}) => '${appLabel} તમારા લક્ષ્યને આરામથી પ્રાપ્ત કરવામાં મદદ કરવા માટે આઇએઇ બળવત્તા આધારિત ટ્રેકિંગ સાથે તમારો સફર સરળ બનાવશે.';
	@override String get obese => 'અમારે તમારી આરોગ્ય લક્ષ્યો માટે વ્યક્તિગત માર્ગદર્શન અને સ્થાયી વ્યૂહરચનાઓ સાથે સહયોગ કરવાની તૈયારી છે.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingGu implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'આપોઆપ કૅલોરી ટ્રેકિંગ';
	@override String get description => 'તમારા ફોટા અને વર્ણનાઓમાંથી સાત્ત્વિક કૅલોરી બર્ન ટ્રેક કરો';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsGu implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રગતિની સમજણ';
	@override String get description => 'તમારા આરોગ્યના પ્રવાહો પર વિગતવાર સમજો';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationGu implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'સલગ્ન સમ્નવય';
	@override String get description => 'તમારા મનપસંદ આરોગ્ય એપ્સમાંથી ડેટા સમન્વયિત કરો';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessGu implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમે એકલી નથી';
	@override String get genericMessage => 'શોધન દર્શાવે છે કે વારંવાર ટ્રેકિંગ લાંબા ગાળાના સફળતાનો #1 અનુમાનક છે.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'એક ${age} વર્ષનો ${gender} ${goal} કરવા માંગે છે, સતત ટ્રેકિંગનો સફળતાનો #1 અનુમાનક છે.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} તેને મેન્યુઅલી કરતા 10x સરળ બનાવે છે.';
	@override String get getStartedTitle => 'શરૂ કરવાનો ઉત્સાહ?';
	@override String get tipPhoto => 'તમારા ખોરાકની તસ્વીરો જલ્દી વિશ્લેષણ માટે લ્યો';
	@override String get tipConsistency => 'અર્થગ્રહણની ભલમતી રહેવા માટે નિયમિત ખોરાક નોંધો';
	@override String get tipProgress => 'મોટી પહેલમાં રહેવા માટે દૈનિક પ્રગતિને ટ્રેક કરો';
	@override String get button => 'ચાલો આગળ વધીએ';
	@override String get defaultGender => 'વ્યકિત';
	@override String get defaultGoal => 'હેલ્ધી છતા';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileGu implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારો આરોગ્ય પ્રોફાઇલ';
	@override String bmiDescription({required Object bmi}) => 'તમારા માપના આધાર પર, તમારું BMI ${bmi} છે.';
	@override String get finalizeDescription => 'તમારી અનુભવને કસ્ટમાઇઝ કરવા માટે ચાલો તમારા પ્રોફાઇલને પુર્ણ કરીએ.';
	@override String get goalGain => 'વધારવું';
	@override String get goalLose => 'ઘટાડવું';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'તમારા લક્ષ્યને પહોંચવા માટે તમને ${direction} ${diff} ${unit} લાવી આપવું.';
	@override String get goalReached => 'તમે તમારા લક્ષ્ય વજન પર છો! અમે તેને જાળવવા માટે સહાય કરીશું.';
	@override String get button => 'ચાલો આગળ વધીએ';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleGu implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'શાનદાર શરૂઆત!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'તમે ${goalText} તરફના પદમાં પ્રથમ પગલું ભર્યું છે. કારણ કે તમે ${activityText} છો, ${appLabel} તમારા લક્ષ્યોને તમારી જીવનશૈલાને મેળવણી માટે ઑટમેટ કરશે.';
	@override String get personalizedTargets => 'વ્યક્તિગત કૅલોરી લક્ષ્યો';
	@override String get aiMealDetection => 'આઇએઇ આધારિત ખોરાક શોધ';
	@override String get macroBreakdowns => 'વિગતવાર મેડકરાહથી છોડણાં';
	@override String get button => 'ચાલો આગળ વધીએ';
	@override String get defaultGoal => 'તમારા લક્ષ્યો';
	@override String get defaultActivity => 'ક્રિયાશીલ';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightGu implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'વજન ઘટાડો';
	@override String get description => 'વજન મુશ્કાવ કરવા માટે એક કૅલોરી વિફલ કરો';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightGu implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'વજન જાળવો';
	@override String get description => 'તમારું વર્તમાન વજન જાળવો';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightGu implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'વજન ઉઠાવો';
	@override String get description => 'વજન વધારવા માટે એક કૅલોરી સર્વોપરી બનાવો';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryGu implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'નિષ્ક્રિય';
	@override String get description => 'થોડું પણ વ્યાયામ નથી';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveGu implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'હળવો કાર્યક્ષમ';
	@override String get description => 'હળવો વ્યાયામ 1-3 દિવસ/સાતાના';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveGu implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'સામાન્ય રીતે કાર્યક્ષમ';
	@override String get description => 'મધ્યમ વ્યાયામ 3-5 દિવસ/સાતાના';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveGu implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'ખૂબજ કાર્યક્ષમ';
	@override String get description => 'મજબૂત વ્યાયામ 6-7 દિવસ/સાતાના';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveGu implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'અતિ કાર્યક્ષમ';
	@override String get description => 'ખૂબ ખૂબ જ મજબુત વ્યાયામ';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeGu implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભાગનો કદ';
	@override String get description => 'આંધાજોના ચોક્કસતા તમારા ભાગના કદના ચોક્કસ મૂલ્યાંકન પર આધાર રાખે છે.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsGu implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રોગ્રામનાં માર્ગો';
	@override String description({required Object appLabel}) => 'ખોરાકની પોષણમય માહિતી વધી શકે છે. ${appLabel} ના અંદાજો શક્યતાના પગલે જુદા જુદા હોય શકે છે.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsGu implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ઘટક';
	@override String get description => 'સંકલિત વાનગીઓ જેમાં ઘણાં ગૂંથાના ઘટકો હોય છે તે અંસાર સાચા અંદાજપનના આલોકમાં આવતું નથી.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsGu implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ડાatabase વિસ્તાર';
	@override String description({required Object appLabel}) => '${appLabel}ની ખોરાક જ્ઞાનકોશ વ્યાપક છે, પરંતુ દરેક ખોરાકની એકમો અથવા ભિન્નતાઓ શામેલ ન હોઈ શકે.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyGu implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'કૅલરીની ચોક્કસતા';
	@override String get description => 'આ અંદાજ પુનઃએન્ટ્રી થતું રહેશે, તેથી તમારી ડેટાને સચોટ સાચવવામાં મળવા છતાં, ખોટી નોંધાવવાથી ખોટી પ્રક્ષેપણ થાય છે.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsGu implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'જૈવિક પરિબળો';
	@override String description({required Object appLabel}) => 'વાસ્તવિક વજન ઘટાડવું/વધારવું મુખ્યત્વે મેટાબોલિઝમ, હોર્મોન, ઊંઘ, તણાવ, હાઇડ્રેશન જેવા વ્યક્તિગત પરિબળોથી અસર કરેલા છે જેમ કે ${appLabel} માપી શકતું નથી.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightGu implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'જળ વજન અને ફેરફારો';
	@override String get description => 'દૈનિક વજન તણાવ પ્રભાવમાં નોંધપાત્ર ફેરફારો થઈ શકે છે જન્મ આપવાના સમયે. આ અંદાજ દૈનિક બદલાવને ધ્યાનમાં ન લે છે.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceGu implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceGu._(this._root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વ્યાવસાયિક માર્ગભ્રમણ';
	@override String get description => 'આ અંદાજનો ઉપયોગ મેડિકલ નિર્ણયો લેવા માટે ન કરવો. હંમેશા વ્યાવસાયિક આરોગ્ય કર્મચારી અથવા નોંધાયેલ પોષણવિજીયકને સંપર્ક કરી તમારા વ્યક્તિગત વજન સંચાલન વિકલ્પ માટે.';
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
			'onboarding.welcome' => ({required Object appLabel}) => 'તમે ${appLabel} માં સ્વાગત છે',
			'onboarding.subtitle' => 'આઇએઇ દ્વારા સક્ષમ તમારા વ્યક્તિગત પોષણ સહાયક',
			'onboarding.getStarted' => 'શરૂ કરીને જોઈએ',
			'onboarding.features.foodRecognition.title' => 'સ્માર્ટ ફૂડ ઓળખાણ',
			'onboarding.features.foodRecognition.description' => 'ફોટો લ્યો અને આઇએઇને તમારા ખોરાકની ઓળખ પરિચય કરવો દો',
			'onboarding.features.aiAnalysis.title' => 'આઇએઇ વિશ્લેષણ',
			'onboarding.features.aiAnalysis.description' => 'તમારા વર્ણનની આધારે તરત જ પોષણ વાસ્તવિકતાઓ મેળવો',
			'onboarding.features.healthIntegration.title' => 'આરસિ માટે જોડાણ',
			'onboarding.features.healthIntegration.description' => 'વધુ માહિતી માટે હેલ્થ કનેક્ટ સાથે જોડો',
			'onboarding.gender.title' => 'તમે કયા લિંગના છો?',
			'onboarding.gender.description' => 'લિંગથી અમને તમારી બેસલ મેટાબોલિક રેટ (BMR) ચોક્કસ રીતે ગણવામાં મદદ રૂપ થાય છે.',
			'onboarding.gender.next' => 'આગળ',
			'onboarding.height.title' => 'તમારી ઉંચાઈ કેટલી છે?',
			'onboarding.height.description' => 'તમારી ઉંચાઈથી અમને તમારા BMI અને ઊર્જાની જરૂરિયાતો ચોક્કસ રીતે ગણવામાં મદદ થાય છે.',
			'onboarding.height.metric' => 'મેટ્રિક',
			'onboarding.height.imperial' => 'ઇમ્પીરિયલ',
			'onboarding.height.next' => 'આગળ',
			'onboarding.weight.currentTitle' => 'તમારું હાલનું વજન શું છે?',
			'onboarding.weight.currentDescription' => 'તમારું હાલનું વજન તમારી દૈનિક લક્ષ્યોને વૈજ્ઞાનિક બનાવવા માટે જરુર છે.',
			'onboarding.weight.targetTitle' => 'તમારું લક્ષ્ય વજન શું છે?',
			'onboarding.weight.targetDescription' => 'લક્ષ્ય વજન નક્કી કરવાથી અમને તમારું લાંબા ગાળાનું આયોજન નિર્ધારિત કરવામાં મદદ થાય છે.',
			'onboarding.weight.metric' => 'મેટ્રિક',
			'onboarding.weight.imperial' => 'ઇમ્પીરિયલ',
			'onboarding.weight.next' => 'આગળ',
			'onboarding.age.title' => 'તમારું જન્મ દિવસ ક્યારે છે?',
			'onboarding.age.description' => 'તમારી ઉમરથી અમને તમારી કૅલોરીની જરૂરિયાતો ચોક્કસ રીતે ગણવામાં મદદ થાય છે.',
			'onboarding.age.next' => 'આગળ',
			'onboarding.bmiScale.underweight' => 'કમજોરી',
			'onboarding.bmiScale.healthy' => 'હેલ્ધી',
			'onboarding.bmiScale.overweight' => 'વધારે વજન',
			'onboarding.bmiScale.obese' => 'સ્થૂળતા',
			'onboarding.bmiScale.categories.underweight' => 'કમજોરી',
			'onboarding.bmiScale.categories.healthyWeight' => 'હેલ્ધી વજન',
			'onboarding.bmiScale.categories.overweight' => 'વધારે વજન',
			'onboarding.bmiScale.categories.obese' => 'સ્થૂળતા',
			'onboarding.bmiScale.messages.underweight' => 'અમારું લક્ષ્ય તમને પોષણમય ભોજન સાથે સંતુલિત વજન પ્રાપ્ત કરવા માટે એક સ્વાસ્થ્ય યોજના બનાવવામાં મદદ કરવું છે.',
			'onboarding.bmiScale.messages.healthy' => 'શાનદાર કાર્ય! તમે હેલ્ધી શ્રેણીમાં છો. અમે તમને તમારી ઊર્જા અને જીવનશક્તિને જાળવવામાં મદદ કરીશું.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} તમારા લક્ષ્યને આરામથી પ્રાપ્ત કરવામાં મદદ કરવા માટે આઇએઇ બળવત્તા આધારિત ટ્રેકિંગ સાથે તમારો સફર સરળ બનાવશે.',
			'onboarding.bmiScale.messages.obese' => 'અમારે તમારી આરોગ્ય લક્ષ્યો માટે વ્યક્તિગત માર્ગદર્શન અને સ્થાયી વ્યૂહરચનાઓ સાથે સહયોગ કરવાની તૈયારી છે.',
			'onboarding.weightGoal.title' => 'તમારું લક્ષ્ય શું છે?',
			'onboarding.weightGoal.description' => 'તે લક્ષ્ય પસંદ કરો જે શ્રેષ્ઠ રીતે વર્ણવે છે તમે શું પ્રાપ્ત કરવા માંગો છો',
			'onboarding.activityLevel.title' => 'તમે કેટલા કાર્યશીલ છો?',
			'onboarding.activityLevel.description' => 'આ તમને અમારી દૈનિક કૅલોરીની જરૂરિયાતો વધારે ચોક્કસ રીતે ગણવામાં મદદ કરે છે',
			'onboarding.healthConnect.title' => 'હેલ્થ કનેક્ટ સાથે જોડાઓ',
			'onboarding.healthConnect.description' => 'વધુ માહિતી માટે તમારાં આરોગ્ય ડેટા સમન્વયિત કરો અને આપોઆપ કૅલોરી ટ્રેકિંગ કરો',
			'onboarding.healthConnect.automaticTracking.title' => 'આપોઆપ કૅલોરી ટ્રેકિંગ',
			'onboarding.healthConnect.automaticTracking.description' => 'તમારા ફોટા અને વર્ણનાઓમાંથી સાત્ત્વિક કૅલોરી બર્ન ટ્રેક કરો',
			'onboarding.healthConnect.progressInsights.title' => 'પ્રગતિની સમજણ',
			'onboarding.healthConnect.progressInsights.description' => 'તમારા આરોગ્યના પ્રવાહો પર વિગતવાર સમજો',
			'onboarding.healthConnect.seamlessIntegration.title' => 'સલગ્ન સમ્નવય',
			'onboarding.healthConnect.seamlessIntegration.description' => 'તમારા મનપસંદ આરોગ્ય એપ્સમાંથી ડેટા સમન્વયિત કરો',
			'onboarding.healthConnect.connected' => 'હેલ્થ કનેક્ટ જોડાયેલ',
			'onboarding.healthConnect.notConnected' => 'હેલ્થ કનેક્ટ નથી જોડાયેલ',
			'onboarding.healthConnect.setup' => 'હેલ્થ કનેક્ટ સુયોજિત કરો',
			'onboarding.healthConnect.skipForNow' => 'હવે અંતગી કરો',
			'onboarding.healthConnect.statusConnected' => 'હેલ્થ કનેક્ટ સંકળાયેલ છે.',
			'onboarding.healthConnect.statusSuccess' => 'હેલ્થ કનેક્ટ સફળતાપૂર્વક જોડાયેલ છે!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'આગૃહ દેવાઈ નથી. કૃપા કરીને ${appLabel} માટે તમારા ફોનના સેટિંગોમાં હેલ્થ કનેક્ટની પરવાનગી ચાલુ કરો.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'હેલ્થ કનેક્ટ સાઇડશેપિંગમાં ભૂલ: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'તમે એકલી નથી',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'શોધન દર્શાવે છે કે વારંવાર ટ્રેકિંગ લાંબા ગાળાના સફળતાનો #1 અનુમાનક છે.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'એક ${age} વર્ષનો ${gender} ${goal} કરવા માંગે છે, સતત ટ્રેકિંગનો સફળતાનો #1 અનુમાનક છે.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} તેને મેન્યુઅલી કરતા 10x સરળ બનાવે છે.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'શરૂ કરવાનો ઉત્સાહ?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'તમારા ખોરાકની તસ્વીરો જલ્દી વિશ્લેષણ માટે લ્યો',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'અર્થગ્રહણની ભલમતી રહેવા માટે નિયમિત ખોરાક નોંધો',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'મોટી પહેલમાં રહેવા માટે દૈનિક પ્રગતિને ટ્રેક કરો',
			'onboarding.reinforcement.trackingSuccess.button' => 'ચાલો આગળ વધીએ',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'વ્યકિત',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'હેલ્ધી છતા',
			'onboarding.reinforcement.healthProfile.title' => 'તમારો આરોગ્ય પ્રોફાઇલ',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'તમારા માપના આધાર પર, તમારું BMI ${bmi} છે.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'તમારી અનુભવને કસ્ટમાઇઝ કરવા માટે ચાલો તમારા પ્રોફાઇલને પુર્ણ કરીએ.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'વધારવું',
			'onboarding.reinforcement.healthProfile.goalLose' => 'ઘટાડવું',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'તમારા લક્ષ્યને પહોંચવા માટે તમને ${direction} ${diff} ${unit} લાવી આપવું.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'તમે તમારા લક્ષ્ય વજન પર છો! અમે તેને જાળવવા માટે સહાય કરીશું.',
			'onboarding.reinforcement.healthProfile.button' => 'ચાલો આગળ વધીએ',
			'onboarding.reinforcement.goalLifestyle.title' => 'શાનદાર શરૂઆત!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'તમે ${goalText} તરફના પદમાં પ્રથમ પગલું ભર્યું છે. કારણ કે તમે ${activityText} છો, ${appLabel} તમારા લક્ષ્યોને તમારી જીવનશૈલાને મેળવણી માટે ઑટમેટ કરશે.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'વ્યક્તિગત કૅલોરી લક્ષ્યો',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'આઇએઇ આધારિત ખોરાક શોધ',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'વિગતવાર મેડકરાહથી છોડણાં',
			'onboarding.reinforcement.goalLifestyle.button' => 'ચાલો આગળ વધીએ',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'તમારા લક્ષ્યો',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'ક્રિયાશીલ',
			'tabs.dashboard' => 'ડેશબોર્ડ',
			'tabs.history' => 'ઇતિહાસ',
			'home.dailyGoal.title' => 'તમે રોજના લક્ષ્યને નક્કી કરો',
			'home.dailyGoal.titleSet' => 'તમારા રોજના લક્ષ્ય',
			'home.dailyGoal.description' => 'તમારા આરોગ્યના માર્ગો શરૂ કરવા માટે સંપૂર્ણ રીતે તૈયાર છો? તમારી દૈનિક કૅલરીના લક્ષ્યને નીચે નક્કી કરો.',
			'home.dailyGoal.descriptionSet' => 'તમારી દિશામાં સેટ છે! આ તમારા દૈનિક કૅલરીના લક્ષ્ય છે જે તમને માર્ગદર્શન આપશે.',
			'home.dailyGoal.yourGoal' => 'તમારું લક્ષ્ય',
			'home.dailyGoal.dailyCalories' => 'દૈનિક કૅલરી (કકલ)',
			'home.dailyGoal.setGoal' => 'લક્ષ્ય નક્કી કરો',
			'home.dailyGoal.intake' => 'આહાર',
			'home.dailyGoal.burned' => 'બર્ન્ડ',
			'home.dailyGoal.weightImpact' => 'વજનનો પ્રભાવ',
			'home.dailyGoal.estLoss' => 'અંદાજિત ન્કલ',
			'home.dailyGoal.estGain' => 'અંદાજિત લેવું',
			'home.dailyGoal.kcal' => 'કકલ',
			'home.dailySummary.title' => 'દૈનિક વિસ્તાર',
			'home.dailySummary.calories' => 'કૅલરી',
			'home.dailySummary.carbs' => 'કાર્બો',
			'home.dailySummary.protein' => 'પ્રોટીન',
			'home.dailySummary.fat' => 'ચરબી',
			'home.dailySummary.fiber' => 'ફાઇબર',
			'home.intakeProgress.title' => 'આજના મેડકરાહત્વ',
			'home.intakeProgress.target' => 'લક્ષ્ય',
			'home.intakeProgress.current' => 'હાલમાં',
			'home.intakeHistory.title' => '7-દિવસનો મેડકરાહત્વ ઈતિહાસ',
			'home.intakeHistory.noHistoryYet' => 'હજુ સુધી કોઈ ઈતિહાસ નથી',
			'home.intakeHistory.startLogging' => 'વિભાગો નોંધવા શરૂ કરો જેથી તમે અહીં તમારા\n7-દિવસના મેડકરાહત્વો જોયા',
			'home.mealLog.title' => 'નોંધાયેલા ખોરાક',
			'home.mealLog.emptyMessage' => 'તમારા છેલ્લામાં એક તસવીર અપલોડ કરો.',
			'home.mealLog.noMealsToday' => 'આજે કોઈ ખોરાક નોંધાયો નથી',
			'home.mealLog.seeAllMeals' => 'બધી ખોરાક જુઓ',
			'home.mealDescription.title' => 'આઇએઇ સાથે ઝડપી ઉમેરો',
			'home.mealDescription.description' => 'તમારા ખોરાકનું વર્ણન કરો, અને આઇએઇને વિગતો લેવા દો.',
			'home.mealDescription.hint' => 'જેણે નાસ્તા માટે મેં એક વિશાળ બૉલ બરફ સાથે એક તળિયામાંનું બાંધવ્યું છે ...',
			'home.mealDescription.analyzeMeal' => 'ખોરાકનું વિશ્લેષણ',
			'home.favoriteMeals.title' => 'પસંદી ખોરાક',
			'home.favoriteMeals.description' => 'તમારા પસંદી ખોરાકોમાં એક ઝડપી ઉમેરો.',
			'home.favoriteMeals.noFavorites' => 'હજી સુધી કોઈ પસંદી ખોરાક નથી.',
			'home.favoriteMeals.addFavoriteHint' => 'એક ખોરાક પર તારાનું બટન દબાવો તેને પસંદી તરીકે નોધવા.',
			'home.favoriteMeals.seeAll' => 'બધાં જુઓ',
			'home.favoriteMeals.add' => 'ઉમેરો',
			'home.mealSnap.title' => 'સ્નેપ અને તમારા ખોરાકને ટ્રેક કરો',
			'home.mealSnap.description' => 'આઇએઇ વિશ્લેષણ માટે તમારા ખોરાકની ફોટો લેવા માટે તમારા કેમેરાનો ઉપયોગ કરો.',
			'home.mealSnap.openCamera' => 'કેમેરા ખોલો',
			'home.connectHealth.title' => 'હેલ્થ કનેક્ટ સાથે સિનક કરો',
			'home.connectHealth.description' => 'તમારી પોષણ માહિતી હેલ્થ કનેક્ટ સાથે સમન્વયિત કરો',
			'home.connectHealth.install' => 'ઇન્સ્ટોલ કરો',
			'home.connectHealth.connect' => 'જોડો',
			'history.noMeals' => 'કોઈ ખોરાક નોંધાયો નથી',
			'history.emptyMessage' => 'તમારા છેલ્લામાં એક તસવીર અપલોડ કરો.',
			'history.today' => 'આજે',
			'history.yesterday' => 'ગઇકાલે',
			'meal.ohNo' => 'અરે ના!',
			'meal.delete' => 'દૂર કરો',
			'meal.editMeal' => 'ખોરાક સંપાદિત કરો',
			'meal.addMeal' => 'ખોરાક ઉમેરો',
			'meal.saveMeal' => 'ખોરાક સેવ કરો',
			'meal.save' => 'સેવ',
			'meal.mealName' => 'ખોરાક નામ',
			'meal.mealQuantity' => 'ખોરાકનું પ્રમાણ',
			'meal.mealQuantityHint' => 'જેમ કે, 1 બાઉલ, 2 સ્લાઇસ',
			'meal.timeOfMeal' => 'ખોરાકનો સમય',
			'meal.timeOfMealHint' => 'તમારા ખોરાકનો સમય પસંદ કરો',
			'meal.mealType' => 'ખોરાકનો પ્રકાર',
			'meal.nutrition.calories' => 'કૅલરી',
			'meal.nutrition.carbs' => 'કાર્બો (ગ)',
			'meal.nutrition.protein' => 'પ્રોટીન (ગ)',
			'meal.nutrition.fat' => 'ચરબી (ગ)',
			'meal.nutrition.fiber' => 'ફાઇબર (ગ)',
			'meal.deleteConfirmation.title' => 'ખોરાક દૂર કરો',
			'meal.deleteConfirmation.message' => 'શું તમે ખરેખર આ ખોરાકને દૂર કરવા માગો છો?',
			'meal.deleteConfirmation.cancel' => 'રદ કરો',
			'meal.deleteConfirmation.delete' => 'દૂર કરો',
			'meal.addedToLog' => 'ખોરાક તમારા લૉગમાં ઉમેરવામાં આવ્યો છે!',
			'meal.couldNotAdd' => ({required Object error}) => 'ખોરાક ઉમેરવામાં અસફળ: ${error}',
			'meal.removedFromFavorites' => 'પસંદીમાંથી દૂર કરવામાં આવ્યું!',
			'meal.savedAsFavorite' => 'ખોરાકને પસંદી તરીકે સેવ કર્યું!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'પસંદીમાં સુધારો કરવામાં અસફળ: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'પ્રક્રિયા કરવામાં અસફળ: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'છબાને પ્રક્રિયા કરવામાં અસફળ: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'તશે છબી સંકોચીત કરવામાં ભૂલ: ${error}',
			'meal.failedToSave' => 'ડેટા સેવ કરવામાં અસફળ. કૃપા કરીને ફરી પ્રયાસ કરો.',
			'favorites.title' => 'પસંદગીઓ',
			'favorites.empty' => 'હજી સુધી કોઈ પસંદી ખોરાક નથી.',
			'profile.title' => 'પ્રોફાઇલ',
			'profile.noProfileData' => 'પોતાની માહિતી ઉપલબ્ધ નથી',
			'profile.yourProfile' => 'તમારી પ્રોફાઇલ',
			'profile.viewAndManage' => 'તમારી આરોગ્ય માહિતી જુઓ અને વ્યવસ્થિત કરો',
			'profile.sections.profile' => 'પ્રોફાઇલ',
			'profile.sections.basicInformation' => 'મૂળભૂત માહિતી',
			'profile.sections.goalsAndActivity' => 'લક્ષ્ય અને પ્રવૃત્તિ',
			'profile.sections.calculatedValues' => 'ગણનાકૃત અર્થતા',
			'profile.gender' => 'લિંગ',
			'profile.height' => 'ઉંચાઈ',
			'profile.weight' => 'વજન',
			'profile.age' => 'ઉમર',
			'profile.weightGoal' => 'વજન લક્ષ્ય',
			'profile.activityLevel' => 'પ્રવૃત્તિનું સ્તર',
			'profile.healthMetrics' => 'આરોગ્ય મેટ્રિક્સ',
			'profile.notSet' => 'સેટ નથી',
			'profile.years' => 'વર્ષ',
			'profile.updatedSuccessfully' => 'પ્રોફાઇલ સફળતાપૂર્વક અપડેટ થઇ ગઈ!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'દૈનિક લક્ષ્ય',
			'profile.calculatedValues.calPerDay' => 'કકલ/દિવસ',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'આરોગ્ય સ્કોર',
			'healthScore.whyThisScore' => 'આ સ્કોર કેમ છે?',
			'healthScore.note' => 'આ સ્કોર આઇએઇના નક્કી કરેલા ઘટકો અને પોષણની ઘનતાના આધાર પર છે. વ્યકિતગત પોષણ સલાહ માટે હંમેશા વ્યાવસાયિકની સલાહ મેળવો.',
			'healthScore.unhealthy' => 'અપોઇક',
			'healthScore.healthy' => 'હેલ્ધી',
			'healthScore.neutral' => 'ન્યુટ્રલ',
			'editProfile.title' => 'પ્રોફાઇલ સંપાદિત કરો',
			'editProfile.sections.personalInformation' => 'વ્યક્તિગત માહિતી',
			'editProfile.sections.physicalMeasurements' => 'શારીરિક માપ',
			'editProfile.sections.goalsAndActivity' => 'લક્ષ્ય અને પ્રવૃત્તિ',
			'editProfile.gender' => 'લિંગ',
			'editProfile.dateOfBirth' => 'જન્મ તારીખ',
			'editProfile.height' => 'ઉંચાઈ',
			'editProfile.weight' => 'વજન',
			'editProfile.weightGoal' => 'વજન લક્ષ્ય',
			'editProfile.activityLevel' => 'પ્રવૃત્તિનું સ્તર',
			'editProfile.metric' => 'મેટ્રિક',
			'editProfile.imperial' => 'ઇમ્પીરિયલ',
			'editProfile.metricCm' => 'મેટ્રિક (સોમી)',
			'editProfile.imperialFtIn' => 'ઇમ્પીરિયલ (ફુટ/ઇંચ)',
			'editProfile.metricKg' => 'મેટ્રિક (કિ.ગ્રા.)',
			'editProfile.imperialLbs' => 'ઇમ્પીરિયલ (પાઉન્ડ)',
			'editProfile.genders.male' => 'પુરૂષ',
			'editProfile.genders.female' => 'મહિલા',
			'editProfile.genders.other' => 'અન્ય',
			'editProfile.weightGoals.loseWeight.name' => 'વજન ઘટાડો',
			'editProfile.weightGoals.loseWeight.description' => 'વજન મુશ્કાવ કરવા માટે એક કૅલોરી વિફલ કરો',
			'editProfile.weightGoals.maintainWeight.name' => 'વજન જાળવો',
			'editProfile.weightGoals.maintainWeight.description' => 'તમારું વર્તમાન વજન જાળવો',
			'editProfile.weightGoals.gainWeight.name' => 'વજન ઉઠાવો',
			'editProfile.weightGoals.gainWeight.description' => 'વજન વધારવા માટે એક કૅલોરી સર્વોપરી બનાવો',
			'editProfile.activityLevels.sedentary.name' => 'નિષ્ક્રિય',
			'editProfile.activityLevels.sedentary.description' => 'થોડું પણ વ્યાયામ નથી',
			'editProfile.activityLevels.lightlyActive.name' => 'હળવો કાર્યક્ષમ',
			'editProfile.activityLevels.lightlyActive.description' => 'હળવો વ્યાયામ 1-3 દિવસ/સાતાના',
			'editProfile.activityLevels.moderatelyActive.name' => 'સામાન્ય રીતે કાર્યક્ષમ',
			'editProfile.activityLevels.moderatelyActive.description' => 'મધ્યમ વ્યાયામ 3-5 દિવસ/સાતાના',
			'editProfile.activityLevels.veryActive.name' => 'ખૂબજ કાર્યક્ષમ',
			'editProfile.activityLevels.veryActive.description' => 'મજબૂત વ્યાયામ 6-7 દિવસ/સાતાના',
			'editProfile.activityLevels.extremelyActive.name' => 'અતિ કાર્યક્ષમ',
			'editProfile.activityLevels.extremelyActive.description' => 'ખૂબ ખૂબ જ મજબુત વ્યાયામ',
			'settings.title' => 'સેટિંગ્સ',
			'settings.sections.profile' => 'પ્રોફાઇલ',
			'settings.sections.localization' => 'સ્થાનિકકરણ',
			'settings.sections.notifications' => 'કળશણ બાજુ',
			'settings.sections.supportAndLegal' => 'મદદ અને કનેક્ટ',
			'settings.sections.dangerZone' => 'ખતરો અને ઝોન',
			'settings.sections.developer' => 'વિકાશક',
			'settings.editProfile.title' => 'પ્રોફાઇલ સંપાદિત કરો',
			'settings.editProfile.subtitle' => 'તમારી વ્યક્તિગત માહિતી અપડેટ કરો',
			'settings.language.title' => 'ભાષા',
			'settings.language.subtitle' => 'તમારી પસંદી ભાષા પસંદ કરો',
			'settings.language.searchHint' => 'બોલીઓ શોધો...',
			'settings.language.noResults' => 'કોઈ પરિણામો મળ્યા નહીં',
			'settings.heightUnit.title' => 'ઉંચાઈની એકમ',
			'settings.weightUnit.title' => 'વજનની એકમ',
			'settings.mealReminders.title' => 'ખોરાક યાદદહન',
			'settings.mealReminders.subtitle' => 'સમયસર એલર્ટ સાથે ટ્રેકમાં જાઓ',
			'settings.theme.title' => 'થિમ',
			'settings.theme.light' => 'ઊજાગર',
			'settings.theme.dark' => 'અંધારું',
			'settings.theme.system' => 'પરિષ્ય',
			'settings.sendFeedback.title' => 'જવાબ મોકલો',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} સુધારવા માટે અમને મદદ કરો',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} એપનો પ્રતિસાદ',
			'settings.sendFeedback.emailBodyPrefix' => 'કૃપા કરી નીચે તમારો પ્રતિસાદ આપો:',
			'settings.sendFeedback.appVersion' => 'એપ આવૃત્તિ',
			'settings.sendFeedback.device' => 'યંત્ર',
			'settings.sendFeedback.osVersion' => 'ઓએસ આવૃત્તિ',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'બધી માહિતી દૂર કરો',
			'settings.clearAllData.subtitle' => 'તમારી તમામ માહિતી પુનઃપ્રાપ્ય રીતે ડિલીટ કરો',
			'settings.clearAllData.confirmationTitle' => 'બધી માહિતી દૂર કરવી?',
			'settings.clearAllData.confirmationMessage' => 'આ કાર્ય પાછું વળતું નથી. તમારા બધા નોંધાયેલ ખોરાક, પસંદી, અને પ્રોફાઇલ સેટિંગ્સ કાયમી રીતે ડિલીટ થશે.',
			'settings.clearAllData.cancel' => 'રદ કરો',
			'settings.clearAllData.clearEverything' => 'બધું દૂર કરો',
			'settings.debugOptions.title' => 'ડેબેક્ડ વિકલ્પો',
			'settings.developerModeEnabled' => 'વિકાશક મોડ સક્રિય થયો છે!',
			'reminders.title' => 'યાદદહન સાથે ટ્રેકમાં રહી છે',
			'reminders.description' => 'ખોરાકને નોંધવા અને આપના પોષણના લક્ષ્યોમાં કન્સિસ્ટન્ટ રહેવા માટે પરીવાર્તા યાદી મેળવો',
			'reminders.notificationsEnabled' => 'જગ્યા લાંબા અમલમાં',
			'reminders.notificationsDisabled' => 'જગ્યા નવો જામમાં',
			'reminders.enabledSubtitle' => 'તમે ખોરાક યાદદહનો મેળવો',
			'reminders.disabledSubtitle' => 'યાદદહન મેળવાની લાગણી કરવા માટે સૂચનાવળી ચાલુ કરો',
			'reminders.mealReminders' => 'ખોરાક યાદદહન',
			'reminders.breakfast' => 'નાસ્તો',
			'reminders.lunch' => 'મધ્યાહ્ન માટે',
			'reminders.dinner' => 'રાતનું ભોજન',
			'reminders.snack' => 'સ્નેક',
			'reminders.unknown' => 'અજાણી',
			'reminders.change' => 'બદલો',
			'reminders.enableNotifications' => 'જગ્યા શરત',
			'reminders.skipForNow' => 'હવે અવગણવાં',
			'reminders.saveChanges' => 'બદલ પડી જાઓ',
			'reminders.enabledSuccessfully' => 'યાદદહન સફળતાપૂર્વક ચાલુ થયું!',
			'reminders.permissionDenied' => 'યાદદહનની પરવાનગી સ્વીકારેલ નથી',
			'reminders.errorEnabling' => ({required Object error}) => 'યાદદહન શરૂ કરવા માટે ભૂલ: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'સેટઅપ પૂર્ણ કરવાનો ભૂલ: ${error}',
			'notifications.breakfast.title' => 'નાસ્તાનો સમય! 🍳',
			'notifications.breakfast.body' => 'તમારા નાસ્તો નોંધાવવાનું ન ભૂલતા',
			'notifications.lunch.title' => 'મધ્યાહ્નના સમય! 🥗',
			'notifications.lunch.body' => 'તમારા મધ્યાહ્નનો સમય નોંધાવવાનું',
			'notifications.dinner.title' => 'રાતના ખોરાકનો સમય! 🍽️',
			'notifications.dinner.body' => 'તમારા રાતના ખોરાકનો સમય યાદ રાખવા',
			'notifications.snack.title' => 'નાશ્તાનું સમય! 🍎',
			'notifications.snack.body' => 'સ્વસ્થ નાશ્તા માટે ટ્યન કરવાના સમય આવે છે',
			'notifications.test.title' => 'ટેસ્ટ સૂચના',
			'login.title' => 'લૉગિન',
			'login.signInWithGoogle' => 'ગૂગલ સાથે લૉગિન કરો',
			'login.signInFailed' => 'ગૂગલ સાઇન-ઇન નિષ્ફળ થયું અથવા રદ કરવામાં આવ્યું.',
			'disclaimer.pleaseNote' => 'કૃપા નોંધો',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} અંદાજિત પોષણની માહિતી ઉપલબ્ધ કરે છે. સચોટતા તમારા ઇનપુટ અને ખોરાક ની વેરિયેશન ઉપર આધાર રાખે છે. માર્ગદર્શિકાની તરીકે ઉપયોગ કરો, નિશ્ચિત સ્રોત તરીકે નહીં. વ્યક્તિગત પોષણ ઉપર સલાહ માટે હંમેશા વ્યાવસાયિકને સંપર્ક કરો.',
			'disclaimer.snap.portionSize.title' => 'ભાગનો કદ',
			'disclaimer.snap.portionSize.description' => 'આંધાજોના ચોક્કસતા તમારા ભાગના કદના ચોક્કસ મૂલ્યાંકન પર આધાર રાખે છે.',
			'disclaimer.snap.preparationMethods.title' => 'પ્રોગ્રામનાં માર્ગો',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'ખોરાકની પોષણમય માહિતી વધી શકે છે. ${appLabel} ના અંદાજો શક્યતાના પગલે જુદા જુદા હોય શકે છે.',
			'disclaimer.snap.ingredients.title' => 'ઘટક',
			'disclaimer.snap.ingredients.description' => 'સંકલિત વાનગીઓ જેમાં ઘણાં ગૂંથાના ઘટકો હોય છે તે અંસાર સાચા અંદાજપનના આલોકમાં આવતું નથી.',
			'disclaimer.snap.databaseLimitations.title' => 'ડાatabase વિસ્તાર',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}ની ખોરાક જ્ઞાનકોશ વ્યાપક છે, પરંતુ દરેક ખોરાકની એકમો અથવા ભિન્નતાઓ શામેલ ન હોઈ શકે.',
			'disclaimer.weightEstimate.title' => 'વજન અંદાજ વિશે',
			'disclaimer.weightEstimate.description' => 'લાક્ષણિક વજનનું પરિવર્તન એક ધારણિયા અંદાજ છે, સરળ કૅલોરીમાં પ્રવેશ સામે મૂકવાનું છે. આ માત્ર પ્રેરણા માટે છે, તમારા વાસ્તવિક વજન માટે નહીં.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'કૅલરીની ચોક્કસતા',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'આ અંદાજ પુનઃએન્ટ્રી થતું રહેશે, તેથી તમારી ડેટાને સચોટ સાચવવામાં મળવા છતાં, ખોટી નોંધાવવાથી ખોટી પ્રક્ષેપણ થાય છે.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'જૈવિક પરિબળો',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'વાસ્તવિક વજન ઘટાડવું/વધારવું મુખ્યત્વે મેટાબોલિઝમ, હોર્મોન, ઊંઘ, તણાવ, હાઇડ્રેશન જેવા વ્યક્તિગત પરિબળોથી અસર કરેલા છે જેમ કે ${appLabel} માપી શકતું નથી.',
			'disclaimer.weightEstimate.waterWeight.title' => 'જળ વજન અને ફેરફારો',
			'disclaimer.weightEstimate.waterWeight.description' => 'દૈનિક વજન તણાવ પ્રભાવમાં નોંધપાત્ર ફેરફારો થઈ શકે છે જન્મ આપવાના સમયે. આ અંદાજ દૈનિક બદલાવને ધ્યાનમાં ન લે છે.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'વ્યાવસાયિક માર્ગભ્રમણ',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'આ અંદાજનો ઉપયોગ મેડિકલ નિર્ણયો લેવા માટે ન કરવો. હંમેશા વ્યાવસાયિક આરોગ્ય કર્મચારી અથવા નોંધાયેલ પોષણવિજીયકને સંપર્ક કરી તમારા વ્યક્તિગત વજન સંચાલન વિકલ્પ માટે.',
			'common.close' => 'બંદ કરો',
			'common.kContinue' => 'આગળ વધો',
			'errors.loadingProfileData' => 'પ્રોફાઇલ ડેટા લોડ કરવામાં ભૂલ',
			'errors.somethingWentWrong' => 'કોઈ મુશ્કેલી પડી.',
			'debug.title' => 'ડેબેક્ડ વિકલ્પો',
			'debug.sections.notifications' => 'યાદદહન',
			'debug.sections.healthConnect' => 'હેલ્થ કનેક્ટ',
			'debug.sections.appInfo' => 'એપ માહિતી',
			'debug.showActiveNotifications' => 'સક્રિય યાદદહનો દેખાડો',
			'debug.scheduleTestNotification' => 'ટેસ્ટ યાદદહન સ્કેડ્યૂલ કરો (10સે)',
			'debug.triggerBreakfastNotification' => 'નાસ્તાનો યાદદહન ચાલુ કરો',
			'debug.cancelAllNotifications' => 'બધા યાદદહનો રદ કરો',
			'debug.activeNotifications' => 'સક્રિય યાદદહન',
			'debug.noTitle' => 'કોઈ શીર્ષક નહીં',
			'debug.noBody' => 'કોઈ શરીર નહીં',
			'debug.fetchTodaysSteps' => 'આજની પગલાની શોધ કરો',
			'debug.fetchTodaysCalories' => 'આજની કૅલરી શોધો',
			'debug.fetchLatestWeight' => 'તાજેતરના વજનની શોધ કરો',
			'debug.fetchLatestHeight' => 'તાજેતરના ઊંચાઈની શોધ કરો',
			'debug.writeTestWeight' => 'ટેસ્ટ વજન લખો (70કિ.ગ્રા.)',
			'debug.writeTestHeight' => 'ટેસ્ટ ઊંચાઈ લખો (175સં.મી.)',
			'debug.syncLast7Days' => 'બધા 7 દિવસ સાથે સમન્વયિત કરો',
			'debug.sync7DaysTitle' => '7-દિવસનો સમન્વય',
			'debug.checkCurrentLocale' => 'વર્તમાન લોકેલ તપાસો',
			'debug.currentLocale' => 'વર્તમાન લોકેલ',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'ભાષા: ${languageCode}\nકેન્દ્ર: ${countryCode}\nયુનાઇટ સિસ્ટમ: ${unitSystem}',
			'debug.latestWeight' => 'તાજેતરની વજન',
			'debug.latestHeight' => 'તાજેતરની ઊંચાઈ',
			'debug.todaysCalories' => 'આજની કૅલરી',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'કુલ કૅલરી બર્ન થયેલી: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'આખરી 7 દિવસમાં પગલાં, કૅલરી, અને વજન માટે સફળતાપૂર્વક ${count} ડેટા પોઇન્ટ મેળવવાં.',
			'debug.noWeightData' => 'શ્રેષ્ઠ 30 દિવસમાં કોઈ વજન ડેટા મળ્યાં નથી.',
			'debug.noHeightData' => 'ગત વર્ષે કોઈ ઊંચાઈ ડેટા નથી.',
			'debug.noCalorieData' => 'આજના માટે કોઈ કૅલરી ડેટા નથી.',
			'debug.weightWritten' => 'સફળતાપૂર્વક ટેસ્ટ વજન લખાઈ ચૂક્યું છે (70કિ.ગ્રા.).',
			'debug.weightWriteFailed' => 'ટેસ્ટ વજન લખવામાં નિષ્ફળ.',
			'debug.heightWritten' => 'સફળતાપૂર્વક ટેસ્ટ ઊંચાઈ લખાઈ છે (175સં.મી.).',
			'debug.heightWriteFailed' => 'ટેસ્ટ ઊંચાઈ લખવામાં નિષ્ફળ.',
			'debug.noNotifications' => 'કોઈ સક્રિય યાદદહન નથી.',
			'debug.testNotificationScheduled' => 'આજ 10 સેકંડમાં એક ટેસ્ટ યાદદહન શેડ્યુ કર્યું છે.',
			'debug.testNotificationBody' => 'આ 10 સેકંડમાં શેડ્યુલ કરેલું પરીક્ષણ યાદદહન છે.',
			'debug.breakfastNotificationTriggered' => 'નાસ્તાનો યાદદહન ચાલુ થતું.',
			'debug.allNotificationsCancelled' => 'બધા યાદદહન રદ કરવામાં આવ્યા છે.',
			'debug.fetchingData' => 'આખી 7 દિવસ માટે ડેટા મેળવવામાં ...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'હેલ્થ કનેક્ટ સાથે સમન્વય શુધ્ધબૂક કર્યો નથી',
			'health.mealSynced' => 'ખોરાક હેલ્થ કનેક્ટ સાથે સંકળાયેલ છે',
			_ => null,
		};
	}
}
