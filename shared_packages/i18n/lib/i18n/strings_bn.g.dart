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
class TranslationsBn extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsBn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.bn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <bn>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsBn _root = this; // ignore: unused_field

	@override 
	TranslationsBn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsBn(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'বাংলা';
	@override String get flag => '🇧🇩';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsBn errors = _TranslationsErrorsBn._(_root);
	@override late final _TranslationsOnboardingBn onboarding = _TranslationsOnboardingBn._(_root);
	@override late final _TranslationsTabsBn tabs = _TranslationsTabsBn._(_root);
	@override late final _TranslationsHomeBn home = _TranslationsHomeBn._(_root);
	@override late final _TranslationsHistoryBn history = _TranslationsHistoryBn._(_root);
	@override late final _TranslationsMealBn meal = _TranslationsMealBn._(_root);
	@override late final _TranslationsFavoritesBn favorites = _TranslationsFavoritesBn._(_root);
	@override late final _TranslationsProfileBn profile = _TranslationsProfileBn._(_root);
	@override late final _TranslationsHealthScoreBn healthScore = _TranslationsHealthScoreBn._(_root);
	@override late final _TranslationsEditProfileBn editProfile = _TranslationsEditProfileBn._(_root);
	@override late final _TranslationsSettingsBn settings = _TranslationsSettingsBn._(_root);
	@override late final _TranslationsRemindersBn reminders = _TranslationsRemindersBn._(_root);
	@override late final _TranslationsNotificationsBn notifications = _TranslationsNotificationsBn._(_root);
	@override late final _TranslationsLoginBn login = _TranslationsLoginBn._(_root);
	@override late final _TranslationsDisclaimerBn disclaimer = _TranslationsDisclaimerBn._(_root);
	@override late final _TranslationsLocalNutritionPhase4Bn localNutritionPhase4 = _TranslationsLocalNutritionPhase4Bn._(_root);
	@override late final _TranslationsCommonBn common = _TranslationsCommonBn._(_root);
	@override late final _TranslationsFeedbackRatingBn feedbackRating = _TranslationsFeedbackRatingBn._(_root);
	@override late final _TranslationsHealthBn health = _TranslationsHealthBn._(_root);
}

// Path: errors
class _TranslationsErrorsBn extends TranslationsErrorsEn {
	_TranslationsErrorsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'আপনি খুব বেশি অনুরোধ করেছেন। দয়া করে আবার চেষ্টা করার আগে কিছুক্ষণ অপেক্ষা করুন।';
	@override String get networkError => 'নেটওয়ার্ক ত্রুটি। অনুগ্রহ করে আপনার ইন্টারনেট সংযোগটি পরীক্ষা করুন।';
	@override String get unknownError => 'কিছু ভুল হয়েছে। পরে আবার চেষ্টা করুন।';
	@override String get loadingProfileData => 'প্রোফাইল ডেটা লোড করতে ত্রুটি';
	@override String get somethingWentWrong => 'কিছু ভুল হয়েছে।';
	@override String get retry => 'পুনরায় চেষ্টা করুন';
}

// Path: onboarding
class _TranslationsOnboardingBn extends TranslationsOnboardingEn {
	_TranslationsOnboardingBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel}-এ স্বাগতম';
	@override String get subtitle => 'AI চালিত আপনার ব্যক্তিগত পুষ্টি সঙ্গী';
	@override String get getStarted => 'শুরু করুন';
	@override late final _TranslationsOnboardingFeaturesBn features = _TranslationsOnboardingFeaturesBn._(_root);
	@override late final _TranslationsOnboardingGenderBn gender = _TranslationsOnboardingGenderBn._(_root);
	@override late final _TranslationsOnboardingHeightBn height = _TranslationsOnboardingHeightBn._(_root);
	@override late final _TranslationsOnboardingWeightBn weight = _TranslationsOnboardingWeightBn._(_root);
	@override late final _TranslationsOnboardingAgeBn age = _TranslationsOnboardingAgeBn._(_root);
	@override late final _TranslationsOnboardingBmiScaleBn bmiScale = _TranslationsOnboardingBmiScaleBn._(_root);
	@override late final _TranslationsOnboardingWeightGoalBn weightGoal = _TranslationsOnboardingWeightGoalBn._(_root);
	@override late final _TranslationsOnboardingActivityLevelBn activityLevel = _TranslationsOnboardingActivityLevelBn._(_root);
	@override late final _TranslationsOnboardingHealthConnectBn healthConnect = _TranslationsOnboardingHealthConnectBn._(_root);
	@override late final _TranslationsOnboardingReinforcementBn reinforcement = _TranslationsOnboardingReinforcementBn._(_root);
}

// Path: tabs
class _TranslationsTabsBn extends TranslationsTabsEn {
	_TranslationsTabsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'ড্যাশবোর্ড';
	@override String get history => 'ইতিহাস';
}

// Path: home
class _TranslationsHomeBn extends TranslationsHomeEn {
	_TranslationsHomeBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryBn aiSummary = _TranslationsHomeAiSummaryBn._(_root);
	@override late final _TranslationsHomeDailyGoalBn dailyGoal = _TranslationsHomeDailyGoalBn._(_root);
	@override late final _TranslationsHomeDailySummaryBn dailySummary = _TranslationsHomeDailySummaryBn._(_root);
	@override late final _TranslationsHomeIntakeProgressBn intakeProgress = _TranslationsHomeIntakeProgressBn._(_root);
	@override late final _TranslationsHomeIntakeHistoryBn intakeHistory = _TranslationsHomeIntakeHistoryBn._(_root);
	@override late final _TranslationsHomeMealLogBn mealLog = _TranslationsHomeMealLogBn._(_root);
	@override late final _TranslationsHomeMealDescriptionBn mealDescription = _TranslationsHomeMealDescriptionBn._(_root);
	@override late final _TranslationsHomeFavoriteMealsBn favoriteMeals = _TranslationsHomeFavoriteMealsBn._(_root);
	@override late final _TranslationsHomeMealSnapBn mealSnap = _TranslationsHomeMealSnapBn._(_root);
	@override late final _TranslationsHomeConnectHealthBn connectHealth = _TranslationsHomeConnectHealthBn._(_root);
}

// Path: history
class _TranslationsHistoryBn extends TranslationsHistoryEn {
	_TranslationsHistoryBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'কোনো খাবার রেকর্ড নেই';
	@override String get emptyMessage => 'এখানে লগ করতে আপনার শেষ খাবারের একটি ছবি তুলুন।';
	@override String get today => 'আজ';
	@override String get yesterday => 'গতকাল';
}

// Path: meal
class _TranslationsMealBn extends TranslationsMealEn {
	_TranslationsMealBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'ওহ না!';
	@override String get delete => 'মুছুন';
	@override String get editMeal => 'খাবার সম্পাদনা করুন';
	@override String get addMeal => 'খাবার যোগ করুন';
	@override String get saveMeal => 'খাবার সংরক্ষণ করুন';
	@override String get save => 'সংরক্ষণ';
	@override String get mealName => 'খাবারের নাম';
	@override String get mealNameHint => 'যেমন: স্ক্র্যাম্বলড ডিম এবং টোস্ট';
	@override String get nameRequired => 'সংরক্ষণ করার আগে একটি খাবারের নাম লিখুন।';
	@override String get mealQuantity => 'খাবারের পরিমাণ';
	@override String get mealQuantityHint => 'যেমন: ১ বাটি, ২ স্লাইস';
	@override String get timeOfMeal => 'খাবারের সময়';
	@override String get timeOfMealHint => 'আপনি কখন খেয়েছেন তা নির্বাচন করুন';
	@override String get mealType => 'খাবারের ধরণ';
	@override late final _TranslationsMealNutritionBn nutrition = _TranslationsMealNutritionBn._(_root);
	@override late final _TranslationsMealDeleteConfirmationBn deleteConfirmation = _TranslationsMealDeleteConfirmationBn._(_root);
	@override String get addedToLog => 'খাবার আপনার লগে যোগ করা হয়েছে!';
	@override String couldNotAdd({required Object error}) => 'খাবার যোগ করা সম্ভব হয়নি: ${error}';
	@override String get savedSuccessfully => 'খাবার সফলভাবে যোগ করা হয়েছে!';
	@override String get updatedSuccessfully => 'খাবার সফলভাবে আপডেট করা হয়েছে!';
	@override String errorSaving({required Object error}) => 'খাবার সংরক্ষণে ত্রুটি: ${error}';
	@override String get removedFromFavorites => 'প্রিয় তালিকা থেকে সরানো হয়েছে!';
	@override String get savedAsFavorite => 'খাবার প্রিয় হিসেবে সংরক্ষিত হয়েছে!';
	@override String get unfavorite => 'প্রিয় থেকে সরান';
	@override String couldNotUpdateFavorite({required Object error}) => 'প্রিয় আপডেট করা যায়নি: ${error}';
	@override String get feedbackThanks => 'প্রতিক্রিয়ার জন্য ধন্যবাদ!';
	@override String get reanalysisUpdated => 'আপনার প্রতিক্রিয়ার ভিত্তিতে খাবারের বিশ্লেষণ আপডেট করা হয়েছে।';
	@override String failedToProcess({required Object error}) => 'প্রক্রিয়াকরণ ব্যর্থ: ${error}';
	@override String failedToProcessImage({required Object error}) => 'ছবি প্রক্রিয়াকরণে ব্যর্থ: ${error}';
	@override String errorCompressingImage({required Object error}) => 'ছবি সংকোচনে ত্রুটি: ${error}';
	@override String get failedToSave => 'ডেটা সংরক্ষণ ব্যর্থ। অনুগ্রহ করে আবার চেষ্টা করুন।';
	@override String get skip => 'ছাড়ুন';
	@override late final _TranslationsMealQuestionFlowBn questionFlow = _TranslationsMealQuestionFlowBn._(_root);
	@override late final _TranslationsMealAnalysisBn analysis = _TranslationsMealAnalysisBn._(_root);
	@override late final _TranslationsMealLocalInferenceBn localInference = _TranslationsMealLocalInferenceBn._(_root);
	@override late final _TranslationsMealFeedbackBn feedback = _TranslationsMealFeedbackBn._(_root);
}

// Path: favorites
class _TranslationsFavoritesBn extends TranslationsFavoritesEn {
	_TranslationsFavoritesBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রিয়';
	@override String get empty => 'এখনও কোনো প্রিয় খাবার নেই।';
	@override String get searchPlaceholder => 'প্রিয় খাবার অনুসন্ধান করুন';
	@override String get searchEmptyTitle => 'আপনার অনুসন্ধানে কোনো প্রিয় মেলেনি';
	@override String get searchEmptySubtitle => 'ভিন্ন খাবারের নাম, পরিমাণ, বা খাবারের ধরন চেষ্টা করুন।';
	@override String get sortLabel => 'প্রিয় সাজান';
	@override String get undo => 'বাতিল করুন';
	@override String removed({required Object name}) => '${name} প্রিয় তালিকা থেকে সরানো হয়েছে';
	@override late final _TranslationsFavoritesSortOptionsBn sortOptions = _TranslationsFavoritesSortOptionsBn._(_root);
}

// Path: profile
class _TranslationsProfileBn extends TranslationsProfileEn {
	_TranslationsProfileBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রোফাইল';
	@override String get noProfileData => 'কোনো প্রোফাইল ডেটা পাওয়া যায়নি';
	@override String get yourProfile => 'আপনার প্রোফাইল';
	@override String get viewAndManage => 'আপনার স্বাস্থ্য তথ্য দেখা ও পরিচালনা করুন';
	@override late final _TranslationsProfileSectionsBn sections = _TranslationsProfileSectionsBn._(_root);
	@override String get gender => 'লিঙ্গ';
	@override String get height => 'উচ্চতা';
	@override String get weight => 'ওজন';
	@override String get age => 'বয়স';
	@override String get weightGoal => 'ওজন লক্ষ্য';
	@override String get targetWeight => 'লক্ষ্য ওজন';
	@override String get activityLevel => 'সক্রিয়তা স্তর';
	@override String get healthMetrics => 'স্বাস্থ্য সূচক';
	@override String get notSet => 'সেট করা হয়নি';
	@override String get years => 'বছর';
	@override String get updatedSuccessfully => 'প্রোফাইল সফলভাবে আপডেট হয়েছে!';
	@override late final _TranslationsProfileCalculatedValuesBn calculatedValues = _TranslationsProfileCalculatedValuesBn._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreBn extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্বাস্থ্য স্কোর';
	@override String get whyThisScore => 'এই স্কোর কেন?';
	@override String get note => 'এই স্কোর শনাক্তকৃত উপাদান ও পুষ্টিগত ঘনত্বের উপর ভিত্তিক AI অনুমান। খাদ্য পরামর্শের জন্য সর্বদা একজন পেশাদারের সাথে পরামর্শ করুন।';
	@override String get unhealthy => 'অস্বাস্থ্যকর';
	@override String get healthy => 'স্বাস্থ্যকর';
	@override String get neutral => 'নিরপেক্ষ';
}

// Path: editProfile
class _TranslationsEditProfileBn extends TranslationsEditProfileEn {
	_TranslationsEditProfileBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রোফাইল সম্পাদনা করুন';
	@override late final _TranslationsEditProfileSectionsBn sections = _TranslationsEditProfileSectionsBn._(_root);
	@override String get gender => 'লিঙ্গ';
	@override String get dateOfBirth => 'জন্মতারিখ';
	@override String get height => 'উচ্চতা';
	@override String get weight => 'ওজন';
	@override String get weightGoal => 'ওজন লক্ষ্য';
	@override String get activityLevel => 'সক্রিয়তা স্তর';
	@override String get metric => 'মেট্রিক';
	@override String get imperial => 'ইম্পেরিয়াল';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'মেট্রিক (cm)';
	@override String get imperialFtIn => 'ইম্পেরিয়াল (ft/in)';
	@override String get metricKg => 'মেট্রিক (kg)';
	@override String get imperialLbs => 'ইম্পেরিয়াল (lbs)';
	@override late final _TranslationsEditProfileGendersBn genders = _TranslationsEditProfileGendersBn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsBn weightGoals = _TranslationsEditProfileWeightGoalsBn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsBn activityLevels = _TranslationsEditProfileActivityLevelsBn._(_root);
}

// Path: settings
class _TranslationsSettingsBn extends TranslationsSettingsEn {
	_TranslationsSettingsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'সেটিংস';
	@override late final _TranslationsSettingsSectionsBn sections = _TranslationsSettingsSectionsBn._(_root);
	@override late final _TranslationsSettingsEditProfileBn editProfile = _TranslationsSettingsEditProfileBn._(_root);
	@override late final _TranslationsSettingsLanguageBn language = _TranslationsSettingsLanguageBn._(_root);
	@override late final _TranslationsSettingsHeightUnitBn heightUnit = _TranslationsSettingsHeightUnitBn._(_root);
	@override late final _TranslationsSettingsWeightUnitBn weightUnit = _TranslationsSettingsWeightUnitBn._(_root);
	@override late final _TranslationsSettingsMealRemindersBn mealReminders = _TranslationsSettingsMealRemindersBn._(_root);
	@override late final _TranslationsSettingsLocalInferenceBn localInference = _TranslationsSettingsLocalInferenceBn._(_root);
	@override late final _TranslationsSettingsThemeBn theme = _TranslationsSettingsThemeBn._(_root);
	@override late final _TranslationsSettingsSendFeedbackBn sendFeedback = _TranslationsSettingsSendFeedbackBn._(_root);
	@override late final _TranslationsSettingsExportMealHistoryBn exportMealHistory = _TranslationsSettingsExportMealHistoryBn._(_root);
	@override late final _TranslationsSettingsClearAllDataBn clearAllData = _TranslationsSettingsClearAllDataBn._(_root);
	@override late final _TranslationsSettingsDebugOptionsBn debugOptions = _TranslationsSettingsDebugOptionsBn._(_root);
	@override String get developerModeEnabled => 'ডেভেলপার মোড চালু!';
	@override late final _TranslationsSettingsHealthConnectBn healthConnect = _TranslationsSettingsHealthConnectBn._(_root);
	@override late final _TranslationsSettingsAboutBn about = _TranslationsSettingsAboutBn._(_root);
	@override late final _TranslationsSettingsAppInfoBn appInfo = _TranslationsSettingsAppInfoBn._(_root);
}

// Path: reminders
class _TranslationsRemindersBn extends TranslationsRemindersEn {
	_TranslationsRemindersBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'রিমাইন্ডার দিয়ে লক্ষ্য বজায় রাখুন';
	@override String get description => 'আপনার খাবারের লগ করার জন্য মৃদু রিমাইন্ডার পান এবং পুষ্টিগত লক্ষ্যগুলোতে ধারাবাহিক থাকুন';
	@override String get notificationsEnabled => 'নোটিফিকেশন সক্রিয়';
	@override String get notificationsDisabled => 'নোটিফিকেশন নিষ্ক্রিয়';
	@override String get enabledSubtitle => 'আপনি খাবারের রিমাইন্ডার পাবেন';
	@override String get disabledSubtitle => 'খাবারের রিমাইন্ডার পেতে নোটিফিকেশন চালু করুন';
	@override String get mealReminders => 'খাবারের রিমাইন্ডার';
	@override String get breakfast => 'প্রাতঃরাশ';
	@override String get lunch => 'দুপুরের খাবার';
	@override String get dinner => 'রাতের খাবার';
	@override String get snack => 'নাস্তা';
	@override String get unknown => 'অজানা';
	@override String get change => 'পরিবর্তন';
	@override String get enableNotifications => 'নোটিফিকেশন চালু করুন';
	@override String get skipForNow => 'এখন ছাড়ুন';
	@override String get saveChanges => 'পরিবর্তন সংরক্ষণ করুন';
	@override String get enabledSuccessfully => 'নোটিফিকেশন সফলভাবে চালু হয়েছে!';
	@override String get permissionDenied => 'নোটিফিকেশন অনুমতি প্রত্যাখ্যান করা হয়েছে';
	@override String errorEnabling({required Object error}) => 'নোটিফিকেশন চালু করতে ত্রুটি: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'সেটআপ সম্পন্ন করতে ত্রুটি: ${error}';
}

// Path: notifications
class _TranslationsNotificationsBn extends TranslationsNotificationsEn {
	_TranslationsNotificationsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastBn breakfast = _TranslationsNotificationsBreakfastBn._(_root);
	@override late final _TranslationsNotificationsLunchBn lunch = _TranslationsNotificationsLunchBn._(_root);
	@override late final _TranslationsNotificationsDinnerBn dinner = _TranslationsNotificationsDinnerBn._(_root);
	@override late final _TranslationsNotificationsSnackBn snack = _TranslationsNotificationsSnackBn._(_root);
	@override late final _TranslationsNotificationsTestBn test = _TranslationsNotificationsTestBn._(_root);
}

// Path: login
class _TranslationsLoginBn extends TranslationsLoginEn {
	_TranslationsLoginBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'লগইন';
	@override String get signInWithGoogle => 'Google দিয়ে সাইন ইন করুন';
	@override String get signInFailed => 'Google Sign-In ব্যর্থ হয়েছে অথবা বাতিল করা হয়েছে।';
}

// Path: disclaimer
class _TranslationsDisclaimerBn extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'দ্রষ্টব্য';
	@override late final _TranslationsDisclaimerSnapBn snap = _TranslationsDisclaimerSnapBn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBn weightEstimate = _TranslationsDisclaimerWeightEstimateBn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsBn healthMetrics = _TranslationsDisclaimerHealthMetricsBn._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureBn calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureBn._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Bn extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Bn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'Nutrition matched from the downloaded USDA pack';
	@override String get nutritionCached => 'Nutrition matched from the on-device USDA cache';
	@override String get nutritionMixed => 'Nutrition combined from downloaded, cached, and remote USDA rows';
	@override String get calculationLocal => 'Calories and macros calculated on this device';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: downloaded USDA pack';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: on-device USDA cache';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: USDA row fetched through Calorify';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: deterministic nutrition constant';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · dataset ${datasetVersion}';
	@override String get portionSmaller => 'Smaller';
	@override String get portionEstimated => 'Estimated';
	@override String get portionLarger => 'Larger';
	@override String portionQuestion({required Object ingredient}) => 'Which portion was closest for ${ingredient}?';
	@override String get mealTypeQuestion => 'Which meal was this?';
	@override String get localNutritionTip => 'Calculated from verified local nutrition data.';
	@override String get offlineNutritionTitle => 'Download nutrition data';
	@override String get offlineNutritionSubtitle => 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.';
	@override String get offlineNutritionUnavailable => 'Local nutrition data is not available for this app release.';
	@override String get offlineNutritionNotDownloaded => 'No verified nutrition pack is downloaded.';
	@override String get offlineNutritionInstalling => 'Downloading and verifying nutrition data…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Pack ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} cached USDA rows · ${size}';
	@override String get offlineNutritionUpdate => 'Check for update';
	@override String get offlineNutritionClear => 'Clear local nutrition data';
	@override String get offlineNutritionClearTitle => 'Clear local nutrition data?';
	@override String get offlineNutritionClearBody => 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.';
	@override String get offlineNutritionClearConfirm => 'Clear data';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Could not download and verify local nutrition data: ${error}';
	@override String get offlineNutritionCleared => 'Local nutrition data cleared';
}

// Path: common
class _TranslationsCommonBn extends TranslationsCommonEn {
	_TranslationsCommonBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get close => 'বন্ধ';
	@override String get kContinue => 'চালিয়ে যান';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingBn extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'আপনি কি ${appLabel} উপভোগ করছেন?';
	@override String get yes => 'হ্যাঁ, আমি উপভোগ করছি';
	@override String get no => 'তেমন না';
	@override String get rateStepHeading => 'Play Store-এ রেট করুন';
	@override String get emailStepHeading => 'ইমেইলে প্রতিক্রিয়া পাঠান';
	@override String soloDevMessage({required Object appLabel}) => 'একটি দ্রুত রেটিং অন্যদের ${appLabel} খুঁজে পেতে সাহায্য করে এবং উন্নয়ন চালিয়ে যেতে সহায়ক। আপনি একটু সময় নিয়ে একটি রেট দিতে পারবেন?';
	@override String get shareFeedbackViaEmail => 'আপনার প্রতিক্রিয়া পরবর্তী পথ নির্ধারণ করে—আমরা প্রতিটি বার্তা পড়ি। আপনি কি ইমেইলে আপনার মতামত শেয়ার করতে চান?';
	@override String get rateCta => 'Play Store-এ রেট করুন';
	@override String get maybeLater => 'পরে হয়তো';
	@override String get sendFeedback => 'প্রতিক্রিয়া পাঠান';
	@override String get noThanks => 'না, ধন্যবাদ';
	@override String get aboutUsDescription => 'একটি ছোট টিম দ্বারা যত্নসহকারে তৈরি। আমরা গোপনীয়তা, সরলতা এবং আপনাকে ভালো খাদ্যাভ্যাস গড়তে সাহায্য করার ওপর মনোযোগী।';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'জানতে আগ্রহী কে ${appLabel}-এর পেছনে? দেখুন ';
	@override String get aboutUsLinkLabel => 'আমাদের সম্পর্কে';
	@override String get thankYouMessage => 'ধন্যবাদ! আমরা পরে আবার জিজ্ঞেস করব।';
}

// Path: health
class _TranslationsHealthBn extends TranslationsHealthEn {
	_TranslationsHealthBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect-এ সিঙ্ক করা যায়নি';
	@override String get mealSynced => 'খাবারটি Health Connect-এ সিঙ্ক হয়েছে';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesBn extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionBn foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionBn._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisBn aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisBn._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationBn healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationBn._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderBn extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার লিঙ্গ কী?';
	@override String get description => 'লিঙ্গ আমাদের আপনার বেসাল মেটাবলিক রেট (BMR) সঠিকভাবে গণনা করতে সাহায্য করে।';
	@override String get next => 'পরবর্তী';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightBn extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার উচ্চতা কত?';
	@override String get description => 'আপনার উচ্চতা আমাদেরকে আপনার BMI এবং শক্তির চাহিদা সঠিকভাবে হিসাব করতে সাহায্য করে।';
	@override String get metric => 'মেট্রিক';
	@override String get imperial => 'ইম্পেরিয়াল';
	@override String get next => 'পরবর্তী';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightBn extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'আপনার বর্তমান ওজন কত?';
	@override String get currentDescription => 'আপনার বর্তমান ওজন দৈনিক লক্ষ্য ব্যক্তিগতকরণে অত্যাবশ্যক।';
	@override String get targetTitle => 'আপনার লক্ষ্য ওজন কত?';
	@override String get targetDescription => 'লক্ষ্য ওজন নির্ধারণ করলে আমরা আপনার দীর্ঘমেয়াদী পরিকল্পনা নির্ধারণ করতে পারি।';
	@override String get metric => 'মেট্রিক';
	@override String get imperial => 'ইম্পেরিয়াল';
	@override String get next => 'পরবর্তী';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeBn extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার জন্মদিন কখন?';
	@override String get description => 'আপনার বয়স আমাদেরকে ক্যালোরি চাহিদা সঠিকভাবে হিসাব করতে সাহায্য করে।';
	@override String get next => 'পরবর্তী';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleBn extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'কম';
	@override String get healthy => 'স্বাস্থ্যকর';
	@override String get overweight => 'বেশি';
	@override String get obese => 'স্থূল';
	@override late final _TranslationsOnboardingBmiScaleCategoriesBn categories = _TranslationsOnboardingBmiScaleCategoriesBn._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesBn messages = _TranslationsOnboardingBmiScaleMessagesBn._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalBn extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার লক্ষ্য কী?';
	@override String get description => 'আপনি যা অর্জন করতে চান তা সবচেয়ে ভালভাবে বর্ণনা করে এমন লক্ষ্যটি নির্বাচন করুন';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelBn extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনি কতটা সক্রিয়?';
	@override String get description => 'এটি আমাদেরকে আপনার দৈনিক ক্যালোরি চাহিদা আরও সঠিকভাবে হিসাব করতে সাহায্য করে';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectBn extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect-এ সংযুক্ত করুন';
	@override String get description => 'উন্নত অন্তর্দৃষ্টি ও স্বয়ংক্রিয় ক্যালোরি ট্র্যাকিং-এর জন্য আপনার স্বাস্থ্য ডেটা সিঙ্ক করুন';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingBn automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingBn._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsBn progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsBn._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationBn seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationBn._(_root);
	@override String get connected => 'Health Connect সংযুক্ত';
	@override String get notConnected => 'Health Connect সংযুক্ত নেই';
	@override String get setup => 'Health Connect সেটআপ করুন';
	@override String get skipForNow => 'এখন বাদ দিন';
	@override String get statusConnected => 'Health Connect সংযুক্ত আছে।';
	@override String get statusSuccess => 'Health Connect সফলভাবে সংযুক্ত হয়েছে!';
	@override String statusPermissionDenied({required Object appLabel}) => 'অনুমতি প্রত্যাখ্যান। অনুগ্রহ করে আপনার ফোন সেটিংস থেকে ${appLabel}-এর জন্য Health Connect অনুমতিগুলি সক্রিয় করুন।';
	@override String statusError({required Object error}) => 'Health Connect সেটআপে ত্রুটি: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementBn extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessBn trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessBn._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileBn healthProfile = _TranslationsOnboardingReinforcementHealthProfileBn._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleBn goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleBn._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryBn extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার AI সারাংশ';
	@override String get logMore => 'ব্যক্তিগত AI অন্তর্দৃষ্টি পেতে পরের কয়েক দিনের মধ্যে আরও খাবার লগ করুন।';
	@override String get loading => 'আপনার সারাংশ লোড করা হচ্ছে...';
	@override String mealCount({required Object count}) => '${count}টি খাবার লগ করা হয়েছে';
	@override String macroBalanceScore({required Object score}) => 'সামঞ্জস্য স্কোর ${score}';
	@override String get topFoods => 'শীর্ষ খাবার';
	@override String get trendUp => 'ক্যালোরি বাড়ছে';
	@override String get trendDown => 'ক্যালোরি কমছে';
	@override String get trendSteady => 'ক্যালোরি স্থিতিশীল';
	@override String generatedAt({required Object time}) => 'আপডেট হয়েছে ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalBn extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার দৈনিক লক্ষ্য নির্ধারণ করুন';
	@override String get titleSet => 'আপনার দৈনিক লক্ষ্য';
	@override String get description => 'আপনি কি আপনার সুস্বাস্থ্য যাত্রা শুরু করতে প্রস্তুত? আপনার অগ্রগতির জন্য নিচে দৈনিক ক্যালোরি লক্ষ্য সেট করুন।';
	@override String get descriptionSet => 'আপনার দিশা নির্ধারিত! এটি আপনার দৈনিক ক্যালোরি লক্ষ্য।';
	@override String get yourGoal => 'আপনার লক্ষ্য';
	@override String get goal => 'লক্ষ্য';
	@override String get dailyCalories => 'দৈনিক ক্যালোরি (kcal)';
	@override String get setGoal => 'লক্ষ্য সেট করুন';
	@override String get intake => 'গ্রহণ';
	@override String get burned => 'জ্বালানো';
	@override String get weightImpact => 'ওজনের প্রভাব';
	@override String get estLoss => 'আনুমানিক হ্রাস';
	@override String get estGain => 'আনুমানিক বৃদ্ধি';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryBn extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'দৈনিক সারাংশ';
	@override String get calories => 'ক্যালোরি';
	@override String get carbs => 'কার্বস';
	@override String get protein => 'প্রোটিন';
	@override String get fat => 'চর্বি';
	@override String get fiber => 'ফাইবার';
	@override String get grams => 'গ্রাম';
	@override String get chartAccessibilityLabel => 'ম্যাক্রো চার্ট';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressBn extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আজকের ম্যাক্রো বিভাজন';
	@override String get target => 'লক্ষ্য';
	@override String get current => 'বর্তমান';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryBn extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => '৭ দিনের ম্যাক্রো ইতিহাস';
	@override String get trendTitle => 'আজকের ধারা';
	@override String peakHour({required Object hour}) => 'শীর্ষ: ${hour}:00';
	@override String get noHistoryYet => 'এখনও কোনো ইতিহাস নেই';
	@override String get startLogging => 'খাবার লগ করা শুরু করুন\nএখানে আপনার ৭-দিনের ম্যাক্রো প্রবণতা দেখা যাবে';
}

// Path: home.mealLog
class _TranslationsHomeMealLogBn extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'লগ করা খাবার';
	@override String get emptyMessage => 'এখানে লগ করতে আপনার শেষ খাবারের একটি ছবি তুলুন।';
	@override String get noMealsToday => 'আজ কোনো খাবার রেকর্ড করা হয়নি';
	@override String get seeAllMeals => 'সব খাবার দেখুন';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionBn extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI দিয়ে দ্রুত যোগ করুন';
	@override String get description => 'আপনার খাবার বর্ণনা করুন, বাকি বিশদ AI করবে।';
	@override String get hint => 'যেমন: সকালের নাস্তায় আমি একটি বড় বাটি ওটমিল, স্লাইস করা কলা এবং একটি স্কুপ whey খেয়েছি ...';
	@override String get analyzeMeal => 'খাবার বিশ্লেষণ করুন';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsBn extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রিয় খাবার';
	@override String get description => 'দ্রুত আপনার প্রিয় একটি খাবার যোগ করুন।';
	@override String get noFavorites => 'এখনও কোনো প্রিয় খাবার নেই।';
	@override String get addFavoriteHint => 'প্রিয় হিসাবে চিহ্নিত করতে খাবারের পাশে তারার আইকনে ক্লিক করুন।';
	@override String get seeAll => 'সব দেখুন';
	@override String get add => 'যোগ করুন';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapBn extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার খাবারের ছবি নিয়ে ট্র্যাক করুন';
	@override String get description => 'AI বিশ্লেষণের জন্য ফোন ক্যামেরায় খাবারের ছবি তুলুন।';
	@override String get openCamera => 'ক্যামেরা খুলুন';
	@override String get gallery => 'গ্যালারি';
	@override String get compressingPhoto => 'ছবি অপ্টিমাইজ করা হচ্ছে…';
	@override String get uploadingPhoto => 'ছবি আপলোড করা হচ্ছে…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthBn extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect-এর সাথে সিঙ্ক করুন';
	@override String get description => 'আপনার পুষ্টি ডেটা Health Connect-এ সিঙ্ক করুন';
	@override String get install => 'ইনস্টল করুন';
	@override String get connect => 'সংযোগ করুন';
}

// Path: meal.nutrition
class _TranslationsMealNutritionBn extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get calories => 'ক্যালোরি';
	@override String get carbs => 'কার্বস (g)';
	@override String get protein => 'প্রোটিন (g)';
	@override String get fat => 'চর্বি (g)';
	@override String get fiber => 'ফাইবার (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationBn extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'খাবার মুছুন';
	@override String get message => 'আপনি কি নিশ্চিত যে এই খাবারের এন্ট্রি মুছতে চান?';
	@override String get cancel => 'বাতিল';
	@override String get delete => 'মুছুন';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowBn extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => '${current} / ${total} প্রশ্ন';
	@override String get noQuestionsAvailable => 'কোন প্রশ্ন নেই';
	@override String get next => 'পরবর্তী';
	@override String get continueLabel => 'চালিয়ে যান';
}

// Path: meal.analysis
class _TranslationsMealAnalysisBn extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার খাবার বিশ্লেষণ করা হচ্ছে';
	@override String get stepStarted => 'শুরু করা হচ্ছে…';
	@override String get stepDecomposition => 'আপনার খাবার বোঝা হচ্ছে…';
	@override String get stepIngredients => 'উপাদান মিলানো হচ্ছে পুষ্টি তথ্যের সাথে…';
	@override String get stepUncertainty => 'নির্ভরযোগ্যতা যাচাই করা হচ্ছে…';
	@override String get stepMealTypeQuestion => 'প্রায় শেষ…';
	@override String get stepResult => 'ফল চূড়ান্ত করা হচ্ছে…';
	@override String get stepError => 'কিছু ভুল হয়েছে';
	@override String get stepDefault => 'আপনার খাবার বিশ্লেষণ করা হচ্ছে…';
	@override String get progressUnderstand => 'আপনার খাবার বোঝা হচ্ছে';
	@override String get progressMatch => 'উপাদানের পুষ্টি খোঁজা হচ্ছে';
	@override String get progressCheck => 'পরিমাণ ও নির্ভরযোগ্যতা যাচাই';
	@override String get progressMealType => 'ভোজনের ধরন নির্বাচন';
	@override String get progressFinish => 'ক্যালরি ও ম্যাক্রো গণনা করা হচ্ছে';
	@override String get detectedIngredientHeading => 'আমরা যে উপাদানগুলো শনাক্ত করছি';
	@override String ingredientsOverflow({required Object count}) => '${count}টি আরও';
	@override String ingredientsLine({required Object count}) => '${count}টি উপাদান শনাক্ত হয়েছে';
	@override String get ingredientsPending => 'উপাদান স্ক্যান করা হচ্ছে…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'পরামর্শ: ধারাবাহিকতা পরিপূর্ণতার চেয়ে বেশি গুরুত্বপূর্ণ—নিয়মিত লগগুলোই গুরুত্বপূর্ণ প্যাটার্ন দেখায়।';
	@override String get offlineTip1 => 'পরামর্শ: ছবির জন্য প্রাকৃতিক আলো ও টপ-ডাউন ভিউ পরিমাপ নির্ভুল করতে সাহায্য করে।';
	@override String get offlineTip2 => 'পরামর্শ: পানীয়, সস ও রান্নার তেল উল্লেখ করুন—এগুলো ক্যালরি বাড়ায় যা প্রায়ই ভুলে যাওয়া হয়।';
	@override String get offlineTip3 => 'পরামর্শ: একটি দ্রুত পরিমাণ নোট (১ বাটি, বড় কফি) অনুমান অনেক উন্নত করে।';
	@override String get offlineTip4 => 'পরামর্শ: খাবারের পরে লগ করলেও অভ্যাস তৈরি হয়; পরিপূর্ণতা বাধ্যতামূলক নয়।';
	@override String get offlineTip5 => 'পরামর্শ: যদি রান্নার পদ্ধতি ক্যালরি অনেক পরিবর্তন করে (ভাজা বনাম বেকড), সেক্ষেত্রে রান্নার ধরন জানান।';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceBn extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'শনাক্ত করা উপাদানগুলো যাচাই করুন';
	@override String get reviewSubtitle => 'এটি আপনার ডিভাইসে বিশ্লেষণ করা হয়েছে। পুষ্টির হিসাব করার আগে নাম বা পরিমাণ সংশোধন করুন।';
	@override String get mealName => 'খাবারের নাম';
	@override String get ingredient => 'উপাদান';
	@override String get grams => 'আনুমানিক গ্রাম';
	@override String get removeIngredient => 'উপাদান সরিয়ে ফেলুন';
	@override String get continueLabel => 'চালিয়ে যান';
	@override String get invalidProposal => 'অন্তত একটি উপাদান যোগ করুন এবং গ্রামের পরিমাণ ধনাত্মক সংখ্যায় লিখুন।';
	@override String get localUnavailable => 'অন-ডিভাইস বিশ্লেষণ এই মুহূর্তে উপলব্ধ নেই।';
	@override String get calculationDetails => 'এটি যেভাবে গণনা করা হয়েছে';
	@override String get interpretationLocal => 'এই ডিভাইসে বিশ্লেষণ করা উপাদান';
	@override String get interpretationCloud => 'ক্লাউডে বিশ্লেষণ করা উপাদান';
	@override String get interpretationManual => 'আপনার দ্বারা যাচাই বা সম্পাদিত উপাদান';
	@override String get nutritionRemote => 'Calorify-এর মাধ্যমে USDA থেকে পুষ্টির তথ্য সংগ্রহ করা হয়েছে';
	@override String get nutritionFallback => 'কিছু পুষ্টির মান রিমোটলি অনুমান করা হয়েছে';
	@override String get calculationServer => 'ক্যালোরি এবং ম্যাক্রোস Calorify দ্বারা গণনা করা হয়েছে';
	@override String get fallbackUsed => 'লোকাল অ্যানালাইসিসের পরিবর্তে ক্লাউড প্রসেসিং ব্যবহার করা হয়েছে';
	@override String get noRawContent => 'ডায়াগনস্টিক রসিদে আপনার খাবারের টেক্সট বা ফটো অন্তর্ভুক্ত নেই।';
}

// Path: meal.feedback
class _TranslationsMealFeedbackBn extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'কোন অংশটি ভুল দেখাচ্ছে?';
	@override String get subtitle => 'এক বা একাধিক সমস্যা নির্বাচন করে বিশ্লেষণ উন্নত করতে সাহায্য করুন।';
	@override String get tellUsMore => 'আরও বলুন';
	@override String get describeIncorrect => 'কি ভুল ছিল তা বর্ণনা করুন';
	@override String get submit => 'জমা দিন';
	@override String get issueFoodIdentification => 'খাবার শনাক্তকরণ';
	@override String get issuePortionSize => 'পরিমাণ';
	@override String get issueCalorieDistribution => 'ক্যালরি বিতরণ';
	@override String get issueMacrosWrong => 'ম্যাক্রো ভুল';
	@override String get issueMissingItems => 'অনুপস্থিত আইটেম';
	@override String get issueExtraItems => 'অতিরিক্ত আইটেম';
	@override String get issueOther => 'অন্যান্য';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsBn extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get recent => 'সাম্প্রতিক';
	@override String get calories => 'ক্যালরি';
	@override String get alphabetical => 'অক্ষরানুক্রমে';
}

// Path: profile.sections
class _TranslationsProfileSectionsBn extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get profile => 'প্রোফাইল';
	@override String get basicInformation => 'মূল তথ্য';
	@override String get goalsAndActivity => 'লক্ষ্য ও ক্রিয়াকলাপ';
	@override String get calculatedValues => 'হিসাবকৃত মান';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesBn extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'দৈনিক লক্ষ্য';
	@override String get calPerDay => 'cal/day';
	@override String get notAvailable => 'প্রযোজ্য নয়';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsBn extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ব্যক্তিগত তথ্য';
	@override String get physicalMeasurements => 'শারীরিক পরিমাপ';
	@override String get goalsAndActivity => 'লক্ষ্য ও কার্যক্রম';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersBn extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get male => 'পুরুষ';
	@override String get female => 'মহিলা';
	@override String get other => 'অন্যান্য';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsBn extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightBn loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightBn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightBn maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightBn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightBn gainWeight = _TranslationsEditProfileWeightGoalsGainWeightBn._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsBn extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryBn sedentary = _TranslationsEditProfileActivityLevelsSedentaryBn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveBn lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveBn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveBn moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveBn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveBn veryActive = _TranslationsEditProfileActivityLevelsVeryActiveBn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveBn extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveBn._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsBn extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get profile => 'প্রোফাইল';
	@override String get localization => 'লোকালাইজেশন';
	@override String get notifications => 'নোটিফিকেশন';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'অন-ডিভাইস বিশ্লেষণ';
	@override String get supportAndLegal => 'সহায়তা ও আইনগত';
	@override String get about => 'অ্যাপ সম্পর্কে';
	@override String get dangerZone => 'ঝুঁকির এলাকা';
	@override String get developer => 'ডেভেলপার';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileBn extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রোফাইল সম্পাদনা';
	@override String get subtitle => 'আপনার ব্যক্তিগত তথ্য আপডেট করুন';
}

// Path: settings.language
class _TranslationsSettingsLanguageBn extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ভাষা';
	@override String get subtitle => 'পছন্দের ভাষা নির্বাচন করুন';
	@override String get searchHint => 'ভাষা খুঁজুন...';
	@override String get noResults => 'কোনো ফলাফল পাওয়া যায়নি';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitBn extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'উচ্চতার একক';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitBn extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ওজনের একক';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersBn extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'খাবারের রিমাইন্ডার';
	@override String get subtitle => 'সময়ে সতর্ক করে আপনার রুটিন বজায় রাখুন';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceBn extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'অন-ডিভাইস মিল অ্যানালাইসিস';
	@override String get subtitle => 'পুষ্টির হিসাব করার আগে Gemini Nano দিয়ে সমর্থিত খাবারগুলো বিশ্লেষণ করুন';
	@override String get unavailable => 'এই ডিভাইসে উপলব্ধ নেই';
	@override String get rolloutUnavailable => 'উপযুক্ত হার্ডওয়্যার পাওয়া গেছে, তবে এই অ্যাপ রিলিজের জন্য এই ফিচারটি সক্রিয় করা হয়নি';
	@override String get modelSetup => 'এটি সক্রিয় করার আগে Gemini Nano ডাউনলোড শেষ হওয়া প্রয়োজন';
	@override String get useLocalTitle => 'অন-ডিভাইস বিশ্লেষণ ব্যবহার করুন';
	@override String get useLocalSubtitle => 'ঐচ্ছিক এবং ডিফল্টভাবে বন্ধ থাকে। জটিল খাবারের ক্ষেত্রে ফলাফল কম নির্ভরযোগ্য হতে পারে।';
	@override String get disclosureTitle => 'অন-ডিভাইস বিশ্লেষণ সক্রিয় করার আগে';
	@override String get disclosureBody => 'Gemini Nano সমর্থিত Android ডিভাইসে উপাদান শনাক্ত করতে এবং পরিমাণের অনুমান করতে পারে। আপনার যাচাই করা উপাদানের প্রস্তাবটি USDA পুষ্টির ভিত্তি এবং গণনার জন্য Calorify-এ পাঠানো হয়।';
	@override String get disclosureLimit1 => 'জটিল খাবার, লুকানো উপাদান এবং পরিমাণের আকার ভুলভাবে শনাক্ত হতে পারে।';
	@override String get disclosureLimit2 => 'ডাউনলোড চলাকালীন, ব্যস্ত থাকলে, ব্যাকগ্রাউন্ডে থাকলে বা ডিভাইসের সীমাবদ্ধতার কারণে মডেলটি অনুপলব্ধ হতে পারে।';
	@override String get disclosureLimit3 => 'যদি লোকাল ইন্টারপ্রিটেশন শেষ না হয়, তবে এই বিটা সংস্করণটি ক্লাউড অ্যানালাইসিসের জন্য আপনার মূল খাবারের বিবরণটি স্বয়ংক্রিয়ভাবে Calorify-এ পাঠিয়ে দেয়।';
	@override String get acknowledgement => 'আমি বুঝতে পারছি যে আমার শনাক্ত করা উপাদান এবং পরিমাণগুলো যাচাই করা উচিত।';
	@override String get enable => 'স্বীকার করুন এবং সক্রিয় করুন';
	@override String get cancel => 'বাতিল করুন';
}

// Path: settings.theme
class _TranslationsSettingsThemeBn extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'থিম';
	@override String get light => 'হালকা';
	@override String get dark => 'অন্ধকার';
	@override String get system => 'সিস্টেম';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackBn extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'মতামত পাঠান';
	@override String subtitle({required Object appLabel}) => 'আমাদের উন্নতিতে সাহায্য করুন ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} অ্যাপ ফিডব্যাক';
	@override String get emailBodyPrefix => 'নীচে আপনার মতামত লিখুন:';
	@override String get appVersion => 'অ্যাপ সংস্করণ';
	@override String get device => 'ডিভাইস';
	@override String get osVersion => 'OS সংস্করণ';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryBn extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'খাবারের ইতিহাস এক্সপোর্ট করুন';
	@override String get subtitle => 'আপনার লগ করা খাবারের CSV শেয়ার করুন';
	@override String get shareText => 'আপনার Calorify খাবারের ইতিহাস এক্সপোর্ট';
	@override String failed({required Object error}) => 'খাবারের ইতিহাস এক্সপোর্ট করা যায়নি: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataBn extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'সকল ডেটা মুছুন';
	@override String get subtitle => 'আপনার সমস্ত তথ্য স্থায়ীভাবে মুছে ফেলা হবে';
	@override String get confirmationTitle => 'সব ডেটা মুছে ফেলবেন?';
	@override String get confirmationMessage => 'এই কাজ অপরিবর্তনীয়। আপনার সব লগ করা খাবার, পছন্দসমূহ এবং প্রোফাইল সেটিংস স্থায়ভাবে মুছে যাবে।';
	@override String get cancel => 'বাতিল';
	@override String get clearEverything => 'সবকিছু মুছুন';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsBn extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ডিবাগ অপশন';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectBn extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'অনুমতি দেখুন ও পরিচালনা করুন';
	@override late final _TranslationsSettingsHealthConnectUnavailableBn unavailable = _TranslationsSettingsHealthConnectUnavailableBn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsBn permissions = _TranslationsSettingsHealthConnectPermissionsBn._(_root);
	@override String get managePermissions => 'অনুমতি পরিচালনা করুন';
	@override String get openSettings => 'Health Connect সেটিংস খুলুন';
	@override String get requestPermissions => 'অনুমতিগুলির জন্য অনুরোধ করুন';
	@override String get permissionRequestCancelledOrFailed => 'অনুমতি অনুরোধ বাতিল হয়েছে বা ব্যর্থ হয়েছে। অনুগ্রহ করে আবার চেষ্টা করুন বা Health Connect সেটিংসে ম্যানুয়ালি অনুমতি দিন।';
	@override String get permissionRequestFailed => 'অনুমতি অনুরোধ করা যায়নি। অনুগ্রহ করে আবার চেষ্টা করুন বা Health Connect সেটিংসে ম্যানুয়ালি অনুমতি দিন।';
	@override String get requestingPermissions => 'অনুরোধ করা হচ্ছে...';
}

// Path: settings.about
class _TranslationsSettingsAboutBn extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'অ্যাপ সম্পর্কে';
	@override String get tagline => 'দ্রুত, বিনামূল্য এবং গোপনীয়তাভিত্তিক ক্যালোরি সচেতনতা';
	@override late final _TranslationsSettingsAboutOurStoryBn ourStory = _TranslationsSettingsAboutOurStoryBn._(_root);
	@override late final _TranslationsSettingsAboutPrivacyBn privacy = _TranslationsSettingsAboutPrivacyBn._(_root);
	@override late final _TranslationsSettingsAboutDeveloperBn developer = _TranslationsSettingsAboutDeveloperBn._(_root);
	@override late final _TranslationsSettingsAboutFeedbackBn feedback = _TranslationsSettingsAboutFeedbackBn._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoBn extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'বিল্ড ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastBn extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রাতঃরাশের সময়! 🍳';
	@override String get body => 'প্রাতঃরাশ লগ করতে ভুলবেন না';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchBn extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'দুপুরের খাবারের সময়! 🥗';
	@override String get body => 'দুপুরের খাবার লগ করার সময়';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerBn extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'রাতের খাবারের সময়! 🍽️';
	@override String get body => 'রাতের খাবার লগ করতে ভুলবেন না';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackBn extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'নাস্তার সময়! 🍎';
	@override String get body => 'একটি স্বাস্থ্যকর নাস্তার সময়';
}

// Path: notifications.test
class _TranslationsNotificationsTestBn extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পরীক্ষা নোটিফিকেশন';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapBn extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} আনুমানিক পুষ্টি তথ্য প্রদান করে। সঠিকতা আপনার ইনপুট ও খাদ্যের পার্থক্যের উপর নির্ভর করে। এটি একটি নির্দেশিকা হিসেবে ব্যবহার করুন, চূড়ান্ত সূত্র হিসেবে নয়। ব্যক্তিগতকৃত পরামর্শের জন্য পেশাদারের সাথে পরামর্শ করুন।';
	@override late final _TranslationsDisclaimerSnapPortionSizeBn portionSize = _TranslationsDisclaimerSnapPortionSizeBn._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsBn preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsBn._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsBn ingredients = _TranslationsDisclaimerSnapIngredientsBn._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsBn databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsBn._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateBn extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ওজন অনুমান সম্পর্কে';
	@override String get description => 'প্রকল্পিত ওজন পরিবর্তন একটি তাত্ত্বিক আনুমানিকতা যা ক্যালোরি ইন বনাম ক্যালোরি আউট সরল মডেলে ভিত্তি করে। এটি কেবল মোটিভেশনাল নির্দেশনার জন্য, আপনার প্রকৃত ওজনের পূর্বাভাস হিসেবে নয়।';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyBn calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyBn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsBn biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsBn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightBn waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightBn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceBn professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceBn._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsBn extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get description => 'এই মেট্রিক্সগুলো আপনাকে আপনার দেহের শক্তি চাহিদা বুঝতে এবং পুষ্টির লক্ষ্য নির্ধারণে সাহায্য করে।';
	@override late final _TranslationsDisclaimerHealthMetricsBmrBn bmr = _TranslationsDisclaimerHealthMetricsBmrBn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeBn tdee = _TranslationsDisclaimerHealthMetricsTdeeBn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalBn dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalBn._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureBn extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ক্যালোরি ব্যয়_estimate';
	@override String get description => 'যখন Health Connect ডেটা অনুপলব্ধ থাকে, আমরা আজকের জ্বলানো ক্যালোরি আপনার Basal Metabolic Rate (BMR) এবং কার্যকলাপ স্তর (TDEE) ব্যবহার করে অনুমান করি, দিনের যে অংশটি পেরোয় তার অনুপাতে স্কেল করে।';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedBn howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedBn._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceBn professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceBn._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionBn extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্মার্ট খাদ্য সনাক্তকরণ';
	@override String get description => 'ছবি তুলুন এবং AI-কে আপনার খাবার সনাক্ত করতে দিন';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisBn extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI বিশ্লেষণ';
	@override String get description => 'আপনার বর্ণনা থেকে দ্রুত পুষ্টি তথ্য পান';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationBn extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্বাস্থ্য সংযুক্তি';
	@override String get description => 'ভালো অন্তর্দৃষ্টির জন্য Health Connect-এ সংযুক্ত করুন';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesBn extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ওজন কম';
	@override String get healthyWeight => 'স্বাস্থ্যকর ওজন';
	@override String get overweight => 'ওজন বেশি';
	@override String get obese => 'স্থূলতা';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesBn extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'পুষ্টি-ঘন খাবারের মাধ্যমে সুষম ওজন অর্জনের জন্য একটি স্বাস্থ্যকর পরিকল্পনা গড়তে আমরা সাহায্য করব।';
	@override String get healthy => 'দারুণ! আপনি স্বাস্থ্যকর সীমায় আছেন। আমরা আপনার জীবনীশক্তি ও শক্তি বজায় রাখতে সাহায্য করব।';
	@override String overweight({required Object appLabel}) => '${appLabel} AI-চালিত ট্র্যাকিং-এর মাধ্যমে আপনার যাত্রাকে সহজ করে তুলবে, যাতে আপনি স্বাচ্ছন্দ্যে আপনার লক্ষ্য অর্জন করতে পারেন।';
	@override String get obese => 'আমরা ব্যক্তিগত নির্দেশনা এবং টেকসই কৌশলের মাধ্যমে আপনার স্বাস্থ্য লক্ষ্যগুলোতে সহায়তা করতে এখানে আছি।';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingBn extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্বয়ংক্রিয় ক্যালোরি ট্র্যাকিং';
	@override String get description => 'আপনার ফিটনেস অ্যাপ থেকে পোড়ানো ক্যালোরি ট্র্যাক করুন';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsBn extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'অগ্রগতি বিশ্লেষণ';
	@override String get description => 'আপনার স্বাস্থ্য প্রবণতা সম্পর্কে বিশদ অন্তর্দৃষ্টি পান';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationBn extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'নিরবিঘ্ন সমন্বয়';
	@override String get description => 'আপনার প্রিয় স্বাস্থ্য অ্যাপগুলো থেকে ডেটা সিঙ্ক করুন';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessBn extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনি একা নন';
	@override String get genericMessage => 'গবেষণা দেখায় ধারাবাহিক ট্র্যাকিং দীর্ঘমেয়াদী সফলতার #1 পূর্বাভাস।';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'একজন ${age} বছর বয়সী ${gender} যে ${goal} করতে চায়, তার জন্য ধারাবাহিক ট্র্যাকিংই সফলতার #1 পূর্বাভাস।';
	@override String closingMessage({required Object appLabel}) => '${appLabel} ম্যানুয়ালি করার চেয়ে এটি 10 গুণ সহজ করে তোলে।';
	@override String get getStartedTitle => 'শুরু করতে প্রস্তুত?';
	@override String get tipPhoto => 'তাত্ক্ষণিক বিশ্লেষণের জন্য আপনার খাবারের ছবি নিন';
	@override String get tipConsistency => 'অর্থপূর্ণ অগ্রগতি দেখতে ধারাবাহিকভাবে লগ করুন';
	@override String get tipProgress => 'প্রেরণা বজায় রাখতে প্রতিদিন আপনার অগ্রগতি ট্র্যাক করুন';
	@override String get button => 'চলুন';
	@override String get defaultGender => 'ব্যক্তি';
	@override String get defaultGoal => 'আরও সুস্থ আপনি';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileBn extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার স্বাস্থ্য প্রোফাইল';
	@override String bmiDescription({required Object bmi}) => 'আপনার পরিমাপের ভিত্তিতে, আপনার BMI হলো ${bmi}.';
	@override String get finalizeDescription => 'আপনার অভিজ্ঞতা কাস্টমাইজ করার জন্য চলুন আপনার প্রোফাইল চূড়ান্ত করি।';
	@override String get goalGain => 'বাড়াতে';
	@override String get goalLose => 'কমাতে';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'আপনার লক্ষ্য অর্জন করতে, আপনাকে ${direction} ${diff} ${unit} করতে হবে।';
	@override String get goalReached => 'আপনি আপনার লক্ষ্য ওজনে পৌঁছেছেন! আমরা এটিকে বজায় রাখতে সাহায্য করব।';
	@override String get button => 'চলুন';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleBn extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'চমৎকার শুরু!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'আপনি ${goalText}-এর দিকে প্রথম ধাপটি নিয়েছেন। যেহেতু আপনি ${activityText}, ${appLabel} আপনার লক্ষ্যগুলো আপনার জীবনধারার সাথে মিলিয়ে সমন্বয় করবে।';
	@override String get personalizedTargets => 'ব্যক্তিগতকৃত ক্যালোরি লক্ষ্য';
	@override String get aiMealDetection => 'AI-চালিত খাবার সনাক্তকরণ';
	@override String get macroBreakdowns => 'বিস্তৃত ম্যাক্রো-পুষ্টি বিভাজন';
	@override String get button => 'চলুন';
	@override String get defaultGoal => 'আপনার লক্ষ্য';
	@override String get defaultActivity => 'সক্রিয়';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightBn extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ওজন কমান';
	@override String get description => 'ওজন কমাতে ক্যালোরি ঘাটতি তৈরি করুন';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightBn extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ওজন বজায় রাখুন';
	@override String get description => 'আপনার বর্তমান ওজন বজায় রাখুন';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightBn extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ওজন বাড়ান';
	@override String get description => 'ওজন বাড়াতে ক্যালোরি অতিরিক্ততা তৈরি করুন';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryBn extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'নিষ্ক্রিয়';
	@override String get description => 'খুবই কম বা কোন ব্যায়াম নেই';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveBn extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'হালকা সক্রিয়';
	@override String get description => 'সপ্তাহে ১–৩ দিন হালকা ব্যায়াম';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveBn extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'মাঝারি সক্রিয়';
	@override String get description => 'সপ্তাহে ৩–৫ দিন মাঝারি ব্যায়াম';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveBn extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'খুব সক্রিয়';
	@override String get description => 'সপ্তাহে ৬–৭ দিন কঠোর ব্যায়াম';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveBn extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'অত্যন্ত সক্রিয়';
	@override String get description => 'খুব কঠোর ব্যায়াম বা শারীরিক কাজ';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableBn extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect উপলব্ধ নয়';
	@override String get description => 'এই ডিভাইসে Health Connect উপলব্ধ নেই। অনুগ্রহ করে Play Store থেকে Health Connect ইনস্টল করুন (Android 9+) বা Android 14+-এ আপডেট করুন।';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsBn extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'অনুমতিসমূহ';
	@override String get description => 'Health Connect ইন্টিগ্রেশন প্রদানের জন্য নিম্নোক্ত অনুমতিগুলি চাওয়া হচ্ছে:';
	@override String get granted => 'অনুমোদিত';
	@override String get notGranted => 'অনুমোদিত নয়';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedBn caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedBn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadBn nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadBn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteBn nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteBn._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryBn extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আমাদের গল্প';
	@override String content({required Object appLabel}) => '${appLabel} জন্মেছে এক সাধারণ হতাশা থেকে: বেশিরভাগ ক্যালোরি ট্র্যাকিং অ্যাপ বা তো অত্যন্ত জটিল, বা ক্রমাগত ম্যানুয়াল ইনপুট চায়, বা উচ্চ সাবস্ক্রিপশন ফি নেয়, বা গোপনীয়তার সঙ্গে আপোষ করে।\n\nএকজন একক ডেভেলপার হিসেবে, আমি কিছু সহজ ও ন্যায়সঙ্গত তৈরি করতে চেয়েছিলাম — একটি অ্যাপ যা AI ব্যবহার করে প্রচেষ্টা কমায়, দ্রুত ও বিনামূল্যে থাকে, এবং আপনার স্বাস্থ্য ডেটাকে সম্মান করে।\n\n${appLabel} হলো এমন একটি অ্যাপ যা আমি চাইতাম: কোন অ্যাকাউন্ট নেই, কোন ট্র্যাকিং নেই, কোন বিজ্ঞাপন নেই — শুধু পরিষ্কার, ব্যবহারিক অন্তর্দৃষ্টি এবং আপনার স্বাস্থ্য লক্ষ্য।';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyBn extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার গোপনীয়তা গুরুত্বপূর্ণ';
	@override String get description => 'গোপনীয়তা কোনো পরবর্তীতে চিন্তার বিষয় নয় — এটি ডিজাইনের মূলনীতি। এর অর্থ বাস্তবে কী তা নিচে:';
	@override String get noAccounts => 'অ্যাকাউন্টের কোনো প্রয়োজন নেই\nঅ্যাপটি এখনই ব্যবহার করুন। কোনো সাইন-আপ নেই, কোনো পরিচয় প্রয়োজন নেই।';
	@override String noTracking({required Object appLabel}) => 'আচরণগত ট্র্যাকিং নেই\n${appLabel} আপনার কার্যকলাপ পর্যবেক্ষণ করে না, ব্যবহার প্রোফাইল তৈরি করে না, বা অ্যাপ/ওয়েবসাইট জুড়ে আপনাকে ট্র্যাক করে না।';
	@override String noAds({required Object appLabel}) => 'ডিজাইনে বিজ্ঞাপনবিহীন\n${appLabel} বিজ্ঞাপন বা ডেটা-ভিত্তিক মনিটাইজেশন ছাড়াই কাজ করার জন্য তৈরি।';
	@override String get noDataSelling => 'ডেটা বিক্রি নেই\nআপনার স্বাস্থ্য ডেটা কখনই তৃতীয় পক্ষের কাছে বিক্রি বা শেয়ার করা হয় না।';
	@override String get localStorage => 'স্থানীয়-প্রথম সংরক্ষণ\nআপনার ডেটা আপনার ডিভাইসেই থাকে।';
	@override String get privacyPolicy => 'গোপনীয়তা নীতি';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperBn extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'একজন একক ডেভেলপার দ্বারা নির্মিত';
	@override String description({required Object appLabel}) => '${appLabel} একটি একক ডেভেলপার দ্বারা তৈরি ও রক্ষণাবেক্ষণ করা হয়, যিনি শান্ত, গোপনীয়তা-সম্মানকারী স্বাস্থ্য সফটওয়্যার তৈরিতে মনোযোগী।\n\nপ্রতিটি ফিডব্যাক ব্যক্তিগতভাবে পড়া হয় এবং অ্যাপের দিক নির্ধারণে সহায়তা করে।';
	@override String get website => 'ওয়েবসাইট';
	@override String get email => 'ইমেইল';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackBn extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'আপনি কি ${appLabel} উপভোগ করছেন?';
	@override String description({required Object appLabel}) => 'আপনার প্রতিক্রিয়াই ${appLabel} সবার জন্য আরও ভালো করে তোলে।';
	@override String get rateApp => 'Play Store-এ রেট করুন';
	@override String get sendFeedback => 'প্রতিক্রিয়া পাঠান';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeBn extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পরিমাণ';
	@override String get description => 'আনুমানিকতার সঠিকতা আপনার পরিমাণ সঠিকভাবে নিরূপণের উপর ব্যাপকভাবে নির্ভর করে।';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsBn extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রস্তুত করার উপায়';
	@override String description({required Object appLabel}) => 'রান্নার পদ্ধতি খাবারের পুষ্টিগুণ ব্যাপকভাবে বদলে দিতে পারে। ${appLabel}-এর আনুমানিক ফলাফল সবসময় এই পরিবর্তনগুলোকে বিবেচনা নাও করতে পারে।';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsBn extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'উপকরণ';
	@override String get description => 'বহু লুকানো উপকরণসহ জটিল ডিশগুলোর জন্য আনুমানিকতা কম নির্ভুল হতে পারে।';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsBn extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ডাটাবেস সীমাবদ্ধতা';
	@override String description({required Object appLabel}) => '${appLabel}-এর খাদ্য ডাটাবেস বিস্তৃত হলেও এটি প্রতিটি খাদ্য আইটেম বা ভ্যারিয়েশন অন্তর্ভুক্ত নাও থাকতে পারে।';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyBn extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ক্যালোরির সঠিকতা';
	@override String get description => 'এই আনুমানিকতা আপনার ট্র্যাক করা ক্যালোরি গ্রহণ এবং ব্যয়ের সঠিকতার সমান। ভুলভাবে লগ করলে আনুমানিক ফলাফল সঠিক হবে না।';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsBn extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'জৈবিক কারণসমূহ';
	@override String description({required Object appLabel}) => 'বাস্তব ওজন হ্রাস/বৃদ্ধি মেটাবলিজম, হরমোন, ঘুম, চাপ, হাইড্রেশন এবং অন্যান্য ব্যক্তিগত কারণ দ্বারা প্রভাবিত যা ${appLabel} পরিমাপ করতে পারে না।';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightBn extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'জলের ওজন ও ওঠানামা';
	@override String get description => 'নিয়মিত দৈনিক ওজন জল ধরে রাখার, হজম ও সময়ের কারণে অনেকটা ওঠানামা করতে পারে। আনুমানিকতা এই দৈনিক পরিবর্তনগুলোকে বিবেচনা করে না।';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceBn extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পেশাদার পরামর্শ';
	@override String get description => 'চিকিৎসাসংক্রান্ত সিদ্ধান্ত নিতে এই আনুমানিকতাকে ব্যবহার করবেন না। ব্যক্তিগতকৃত ওজন ব্যবস্থাপনার পরামর্শের জন্য সবসময় একজন স্বাস্থ্যের পেশাদার বা নিবন্ধিত ডায়েটিশিয়ানের সঙ্গে পরামর্শ করুন।';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrBn extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) হল বিশ্রামের অবস্থায় আপনার দেহ যে ক্যালোরি জ্বালায় তার পরিমাণ—শ্বাস-প্রশ্বাস ও রক্ত সঞ্চালনসহ মৌলিক কাজগুলোর জন্য। BMR নির্ভর করে আপনার বয়স, লিঙ্গ, উচ্চতা এবং ওজনের উপর। উচ্চ BMR মানে বিশ্রামের সময় আপনার দেহ স্বাভাবিকভাবে বেশি ক্যালোরি জ্বালায়, যা সাধারণত বেশি পেশী ভর, কম বয়স, বা পুরুষ হওয়ার কারণে হতে পারে। নিম্ন BMR সাধারণত কম পেশী ভর, বেশি বয়স, বা মহিলা হওয়ার ইঙ্গিত দেয়।';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeBn extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) হল আপনি প্রতিদিন যে মোট ক্যালোরি খরচ করেন, যার মধ্যে BMR এবং শারীরিক কার্যকলাপ ও দৈনন্দিন চলাচলও অন্তর্ভুক্ত। TDEE আপনার BMR এবং কার্যকলাপ স্তরের উপর নির্ভর করে। উচ্চ TDEE মানে আপনি মোটামুটি বেশি ক্যালোরি খরচ করেন, সাধারণত বেশি সক্রিয় থাকা বা উচ্চ BMR-এর কারণে। নিম্ন TDEE কম দৈনন্দিন কার্যকলাপ বা নিম্ন BMR নির্দেশ করে।';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalBn extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'দৈনিক লক্ষ্য';
	@override String get description => 'Daily Goal হল আপনার TDEE এবং ওজন লক্ষ্য অনুযায়ী প্রস্তাবিত দৈনিক ক্যালোরি গ্রহণ। ওজন কমানোর জন্য আপনি TDEE-র চেয়ে কম ক্যালোরি খান। ওজন বজায় রাখতে TDEE-র সমান ক্যালোরি গ্রহণ করবেন। ওজন বাড়ানোর জন্য TDEE-র চেয়ে বেশি ক্যালোরি গ্রহণ করবেন। এটি আপনাকে স্বাস্থ্যকর গতিতে আপনার কাঙ্ক্ষিত ওজন পরিবর্তন অর্জনে সাহায্য করে।';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedBn extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'কীভাবে আনুমানিকতা গণনা করা হয়';
	@override String get description => 'আমরা আপনার প্রোফাইল ভিত্তিক TDEE হিসাব করি এবং দিনের কত অংশ পেরোয় (ঘণ্টা + মিনিট) / 24 অনুপাতে গুণ করে এ পর্যন্ত জ্বালানো ক্যালোরি অনুমান করি।';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceBn extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পেশাদার পরামর্শ';
	@override String get description => 'চিকিৎসাসংক্রান্ত সিদ্ধান্ত নিতে এই আনুমানিকতাকে ব্যবহার করবেন না। ব্যক্তিগতকৃত ওজন ব্যবস্থাপনার পরামর্শের জন্য সবসময় একজন স্বাস্থ্যের পেশাদার বা নিবন্ধিত ডায়েটিশিয়ানের সঙ্গে পরামর্শ করুন।';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedBn extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'সর্বমোট পুড়ানো ক্যালোরি পড়ুন';
	@override String get description => 'অ্যাপকে Health Connect থেকে আপনার মোট পুড়ানো ক্যালোরি পড়তে দেয়।';
	@override String get usage => 'এই অনুমতি অ্যাপে আপনার দৈনিক ক্যালোরি বার্ন দেখাতে ব্যবহার করা হয়, যাতে আপনি দিনভিত্তিক মোট শক্তি খরচ বুঝতে পারেন।';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadBn extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পুষ্টি ডেটা পড়ুন';
	@override String get description => 'অ্যাপকে Health Connect থেকে পুষ্টি সম্পর্কিত ডেটা পড়তে দেয়।';
	@override String get usage => 'এই অনুমতি অ্যাপকে Health Connect-এ সংযুক্ত অন্য অ্যাপগুলো দ্বারা লগ করা পুষ্টি তথ্য পড়তে দেয়, ফলে আপনার পুষ্টির একটি সম্পূর্ণ চিত্র পাওয়া যায়।';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteBn extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteBn._(TranslationsBn root) : this._root = root, super.internal(root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পুষ্টি ডেটা লিখুন';
	@override String get description => 'অ্যাপকে Health Connect-এ পুষ্টি ডেটা লিখতে দেয়।';
	@override String get usage => 'এই অনুমতি অ্যাপকে আপনার লগ করা খাবারগুলো Health Connect-এ সিঙ্ক করতে দেয়, ফলে আপনার পুষ্টি ডেটা অন্য স্বাস্থ্য ও ফিটনেস অ্যাপগুলোতেও উপলব্ধ হবে।';
}

/// The flat map containing all translations for locale <bn>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsBn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'বাংলা',
			'flag' => '🇧🇩',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'আপনি খুব বেশি অনুরোধ করেছেন। দয়া করে আবার চেষ্টা করার আগে কিছুক্ষণ অপেক্ষা করুন।',
			'errors.networkError' => 'নেটওয়ার্ক ত্রুটি। অনুগ্রহ করে আপনার ইন্টারনেট সংযোগটি পরীক্ষা করুন।',
			'errors.unknownError' => 'কিছু ভুল হয়েছে। পরে আবার চেষ্টা করুন।',
			'errors.loadingProfileData' => 'প্রোফাইল ডেটা লোড করতে ত্রুটি',
			'errors.somethingWentWrong' => 'কিছু ভুল হয়েছে।',
			'errors.retry' => 'পুনরায় চেষ্টা করুন',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel}-এ স্বাগতম',
			'onboarding.subtitle' => 'AI চালিত আপনার ব্যক্তিগত পুষ্টি সঙ্গী',
			'onboarding.getStarted' => 'শুরু করুন',
			'onboarding.features.foodRecognition.title' => 'স্মার্ট খাদ্য সনাক্তকরণ',
			'onboarding.features.foodRecognition.description' => 'ছবি তুলুন এবং AI-কে আপনার খাবার সনাক্ত করতে দিন',
			'onboarding.features.aiAnalysis.title' => 'AI বিশ্লেষণ',
			'onboarding.features.aiAnalysis.description' => 'আপনার বর্ণনা থেকে দ্রুত পুষ্টি তথ্য পান',
			'onboarding.features.healthIntegration.title' => 'স্বাস্থ্য সংযুক্তি',
			'onboarding.features.healthIntegration.description' => 'ভালো অন্তর্দৃষ্টির জন্য Health Connect-এ সংযুক্ত করুন',
			'onboarding.gender.title' => 'আপনার লিঙ্গ কী?',
			'onboarding.gender.description' => 'লিঙ্গ আমাদের আপনার বেসাল মেটাবলিক রেট (BMR) সঠিকভাবে গণনা করতে সাহায্য করে।',
			'onboarding.gender.next' => 'পরবর্তী',
			'onboarding.height.title' => 'আপনার উচ্চতা কত?',
			'onboarding.height.description' => 'আপনার উচ্চতা আমাদেরকে আপনার BMI এবং শক্তির চাহিদা সঠিকভাবে হিসাব করতে সাহায্য করে।',
			'onboarding.height.metric' => 'মেট্রিক',
			'onboarding.height.imperial' => 'ইম্পেরিয়াল',
			'onboarding.height.next' => 'পরবর্তী',
			'onboarding.weight.currentTitle' => 'আপনার বর্তমান ওজন কত?',
			'onboarding.weight.currentDescription' => 'আপনার বর্তমান ওজন দৈনিক লক্ষ্য ব্যক্তিগতকরণে অত্যাবশ্যক।',
			'onboarding.weight.targetTitle' => 'আপনার লক্ষ্য ওজন কত?',
			'onboarding.weight.targetDescription' => 'লক্ষ্য ওজন নির্ধারণ করলে আমরা আপনার দীর্ঘমেয়াদী পরিকল্পনা নির্ধারণ করতে পারি।',
			'onboarding.weight.metric' => 'মেট্রিক',
			'onboarding.weight.imperial' => 'ইম্পেরিয়াল',
			'onboarding.weight.next' => 'পরবর্তী',
			'onboarding.age.title' => 'আপনার জন্মদিন কখন?',
			'onboarding.age.description' => 'আপনার বয়স আমাদেরকে ক্যালোরি চাহিদা সঠিকভাবে হিসাব করতে সাহায্য করে।',
			'onboarding.age.next' => 'পরবর্তী',
			'onboarding.bmiScale.underweight' => 'কম',
			'onboarding.bmiScale.healthy' => 'স্বাস্থ্যকর',
			'onboarding.bmiScale.overweight' => 'বেশি',
			'onboarding.bmiScale.obese' => 'স্থূল',
			'onboarding.bmiScale.categories.underweight' => 'ওজন কম',
			'onboarding.bmiScale.categories.healthyWeight' => 'স্বাস্থ্যকর ওজন',
			'onboarding.bmiScale.categories.overweight' => 'ওজন বেশি',
			'onboarding.bmiScale.categories.obese' => 'স্থূলতা',
			'onboarding.bmiScale.messages.underweight' => 'পুষ্টি-ঘন খাবারের মাধ্যমে সুষম ওজন অর্জনের জন্য একটি স্বাস্থ্যকর পরিকল্পনা গড়তে আমরা সাহায্য করব।',
			'onboarding.bmiScale.messages.healthy' => 'দারুণ! আপনি স্বাস্থ্যকর সীমায় আছেন। আমরা আপনার জীবনীশক্তি ও শক্তি বজায় রাখতে সাহায্য করব।',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} AI-চালিত ট্র্যাকিং-এর মাধ্যমে আপনার যাত্রাকে সহজ করে তুলবে, যাতে আপনি স্বাচ্ছন্দ্যে আপনার লক্ষ্য অর্জন করতে পারেন।',
			'onboarding.bmiScale.messages.obese' => 'আমরা ব্যক্তিগত নির্দেশনা এবং টেকসই কৌশলের মাধ্যমে আপনার স্বাস্থ্য লক্ষ্যগুলোতে সহায়তা করতে এখানে আছি।',
			'onboarding.weightGoal.title' => 'আপনার লক্ষ্য কী?',
			'onboarding.weightGoal.description' => 'আপনি যা অর্জন করতে চান তা সবচেয়ে ভালভাবে বর্ণনা করে এমন লক্ষ্যটি নির্বাচন করুন',
			'onboarding.activityLevel.title' => 'আপনি কতটা সক্রিয়?',
			'onboarding.activityLevel.description' => 'এটি আমাদেরকে আপনার দৈনিক ক্যালোরি চাহিদা আরও সঠিকভাবে হিসাব করতে সাহায্য করে',
			'onboarding.healthConnect.title' => 'Health Connect-এ সংযুক্ত করুন',
			'onboarding.healthConnect.description' => 'উন্নত অন্তর্দৃষ্টি ও স্বয়ংক্রিয় ক্যালোরি ট্র্যাকিং-এর জন্য আপনার স্বাস্থ্য ডেটা সিঙ্ক করুন',
			'onboarding.healthConnect.automaticTracking.title' => 'স্বয়ংক্রিয় ক্যালোরি ট্র্যাকিং',
			'onboarding.healthConnect.automaticTracking.description' => 'আপনার ফিটনেস অ্যাপ থেকে পোড়ানো ক্যালোরি ট্র্যাক করুন',
			'onboarding.healthConnect.progressInsights.title' => 'অগ্রগতি বিশ্লেষণ',
			'onboarding.healthConnect.progressInsights.description' => 'আপনার স্বাস্থ্য প্রবণতা সম্পর্কে বিশদ অন্তর্দৃষ্টি পান',
			'onboarding.healthConnect.seamlessIntegration.title' => 'নিরবিঘ্ন সমন্বয়',
			'onboarding.healthConnect.seamlessIntegration.description' => 'আপনার প্রিয় স্বাস্থ্য অ্যাপগুলো থেকে ডেটা সিঙ্ক করুন',
			'onboarding.healthConnect.connected' => 'Health Connect সংযুক্ত',
			'onboarding.healthConnect.notConnected' => 'Health Connect সংযুক্ত নেই',
			'onboarding.healthConnect.setup' => 'Health Connect সেটআপ করুন',
			'onboarding.healthConnect.skipForNow' => 'এখন বাদ দিন',
			'onboarding.healthConnect.statusConnected' => 'Health Connect সংযুক্ত আছে।',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect সফলভাবে সংযুক্ত হয়েছে!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'অনুমতি প্রত্যাখ্যান। অনুগ্রহ করে আপনার ফোন সেটিংস থেকে ${appLabel}-এর জন্য Health Connect অনুমতিগুলি সক্রিয় করুন।',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect সেটআপে ত্রুটি: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'আপনি একা নন',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'গবেষণা দেখায় ধারাবাহিক ট্র্যাকিং দীর্ঘমেয়াদী সফলতার #1 পূর্বাভাস।',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'একজন ${age} বছর বয়সী ${gender} যে ${goal} করতে চায়, তার জন্য ধারাবাহিক ট্র্যাকিংই সফলতার #1 পূর্বাভাস।',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} ম্যানুয়ালি করার চেয়ে এটি 10 গুণ সহজ করে তোলে।',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'শুরু করতে প্রস্তুত?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'তাত্ক্ষণিক বিশ্লেষণের জন্য আপনার খাবারের ছবি নিন',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'অর্থপূর্ণ অগ্রগতি দেখতে ধারাবাহিকভাবে লগ করুন',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'প্রেরণা বজায় রাখতে প্রতিদিন আপনার অগ্রগতি ট্র্যাক করুন',
			'onboarding.reinforcement.trackingSuccess.button' => 'চলুন',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'ব্যক্তি',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'আরও সুস্থ আপনি',
			'onboarding.reinforcement.healthProfile.title' => 'আপনার স্বাস্থ্য প্রোফাইল',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'আপনার পরিমাপের ভিত্তিতে, আপনার BMI হলো ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'আপনার অভিজ্ঞতা কাস্টমাইজ করার জন্য চলুন আপনার প্রোফাইল চূড়ান্ত করি।',
			'onboarding.reinforcement.healthProfile.goalGain' => 'বাড়াতে',
			'onboarding.reinforcement.healthProfile.goalLose' => 'কমাতে',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'আপনার লক্ষ্য অর্জন করতে, আপনাকে ${direction} ${diff} ${unit} করতে হবে।',
			'onboarding.reinforcement.healthProfile.goalReached' => 'আপনি আপনার লক্ষ্য ওজনে পৌঁছেছেন! আমরা এটিকে বজায় রাখতে সাহায্য করব।',
			'onboarding.reinforcement.healthProfile.button' => 'চলুন',
			'onboarding.reinforcement.goalLifestyle.title' => 'চমৎকার শুরু!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'আপনি ${goalText}-এর দিকে প্রথম ধাপটি নিয়েছেন। যেহেতু আপনি ${activityText}, ${appLabel} আপনার লক্ষ্যগুলো আপনার জীবনধারার সাথে মিলিয়ে সমন্বয় করবে।',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'ব্যক্তিগতকৃত ক্যালোরি লক্ষ্য',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-চালিত খাবার সনাক্তকরণ',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'বিস্তৃত ম্যাক্রো-পুষ্টি বিভাজন',
			'onboarding.reinforcement.goalLifestyle.button' => 'চলুন',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'আপনার লক্ষ্য',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'সক্রিয়',
			'tabs.dashboard' => 'ড্যাশবোর্ড',
			'tabs.history' => 'ইতিহাস',
			'home.aiSummary.title' => 'আপনার AI সারাংশ',
			'home.aiSummary.logMore' => 'ব্যক্তিগত AI অন্তর্দৃষ্টি পেতে পরের কয়েক দিনের মধ্যে আরও খাবার লগ করুন।',
			'home.aiSummary.loading' => 'আপনার সারাংশ লোড করা হচ্ছে...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count}টি খাবার লগ করা হয়েছে',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'সামঞ্জস্য স্কোর ${score}',
			'home.aiSummary.topFoods' => 'শীর্ষ খাবার',
			'home.aiSummary.trendUp' => 'ক্যালোরি বাড়ছে',
			'home.aiSummary.trendDown' => 'ক্যালোরি কমছে',
			'home.aiSummary.trendSteady' => 'ক্যালোরি স্থিতিশীল',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'আপডেট হয়েছে ${time}',
			'home.dailyGoal.title' => 'আপনার দৈনিক লক্ষ্য নির্ধারণ করুন',
			'home.dailyGoal.titleSet' => 'আপনার দৈনিক লক্ষ্য',
			'home.dailyGoal.description' => 'আপনি কি আপনার সুস্বাস্থ্য যাত্রা শুরু করতে প্রস্তুত? আপনার অগ্রগতির জন্য নিচে দৈনিক ক্যালোরি লক্ষ্য সেট করুন।',
			'home.dailyGoal.descriptionSet' => 'আপনার দিশা নির্ধারিত! এটি আপনার দৈনিক ক্যালোরি লক্ষ্য।',
			'home.dailyGoal.yourGoal' => 'আপনার লক্ষ্য',
			'home.dailyGoal.goal' => 'লক্ষ্য',
			'home.dailyGoal.dailyCalories' => 'দৈনিক ক্যালোরি (kcal)',
			'home.dailyGoal.setGoal' => 'লক্ষ্য সেট করুন',
			'home.dailyGoal.intake' => 'গ্রহণ',
			'home.dailyGoal.burned' => 'জ্বালানো',
			'home.dailyGoal.weightImpact' => 'ওজনের প্রভাব',
			'home.dailyGoal.estLoss' => 'আনুমানিক হ্রাস',
			'home.dailyGoal.estGain' => 'আনুমানিক বৃদ্ধি',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'দৈনিক সারাংশ',
			'home.dailySummary.calories' => 'ক্যালোরি',
			'home.dailySummary.carbs' => 'কার্বস',
			'home.dailySummary.protein' => 'প্রোটিন',
			'home.dailySummary.fat' => 'চর্বি',
			'home.dailySummary.fiber' => 'ফাইবার',
			'home.dailySummary.grams' => 'গ্রাম',
			'home.dailySummary.chartAccessibilityLabel' => 'ম্যাক্রো চার্ট',
			'home.intakeProgress.title' => 'আজকের ম্যাক্রো বিভাজন',
			'home.intakeProgress.target' => 'লক্ষ্য',
			'home.intakeProgress.current' => 'বর্তমান',
			'home.intakeHistory.title' => '৭ দিনের ম্যাক্রো ইতিহাস',
			'home.intakeHistory.trendTitle' => 'আজকের ধারা',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'শীর্ষ: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'এখনও কোনো ইতিহাস নেই',
			'home.intakeHistory.startLogging' => 'খাবার লগ করা শুরু করুন\nএখানে আপনার ৭-দিনের ম্যাক্রো প্রবণতা দেখা যাবে',
			'home.mealLog.title' => 'লগ করা খাবার',
			'home.mealLog.emptyMessage' => 'এখানে লগ করতে আপনার শেষ খাবারের একটি ছবি তুলুন।',
			'home.mealLog.noMealsToday' => 'আজ কোনো খাবার রেকর্ড করা হয়নি',
			'home.mealLog.seeAllMeals' => 'সব খাবার দেখুন',
			'home.mealDescription.title' => 'AI দিয়ে দ্রুত যোগ করুন',
			'home.mealDescription.description' => 'আপনার খাবার বর্ণনা করুন, বাকি বিশদ AI করবে।',
			'home.mealDescription.hint' => 'যেমন: সকালের নাস্তায় আমি একটি বড় বাটি ওটমিল, স্লাইস করা কলা এবং একটি স্কুপ whey খেয়েছি ...',
			'home.mealDescription.analyzeMeal' => 'খাবার বিশ্লেষণ করুন',
			'home.favoriteMeals.title' => 'প্রিয় খাবার',
			'home.favoriteMeals.description' => 'দ্রুত আপনার প্রিয় একটি খাবার যোগ করুন।',
			'home.favoriteMeals.noFavorites' => 'এখনও কোনো প্রিয় খাবার নেই।',
			'home.favoriteMeals.addFavoriteHint' => 'প্রিয় হিসাবে চিহ্নিত করতে খাবারের পাশে তারার আইকনে ক্লিক করুন।',
			'home.favoriteMeals.seeAll' => 'সব দেখুন',
			'home.favoriteMeals.add' => 'যোগ করুন',
			'home.mealSnap.title' => 'আপনার খাবারের ছবি নিয়ে ট্র্যাক করুন',
			'home.mealSnap.description' => 'AI বিশ্লেষণের জন্য ফোন ক্যামেরায় খাবারের ছবি তুলুন।',
			'home.mealSnap.openCamera' => 'ক্যামেরা খুলুন',
			'home.mealSnap.gallery' => 'গ্যালারি',
			'home.mealSnap.compressingPhoto' => 'ছবি অপ্টিমাইজ করা হচ্ছে…',
			'home.mealSnap.uploadingPhoto' => 'ছবি আপলোড করা হচ্ছে…',
			'home.connectHealth.title' => 'Health Connect-এর সাথে সিঙ্ক করুন',
			'home.connectHealth.description' => 'আপনার পুষ্টি ডেটা Health Connect-এ সিঙ্ক করুন',
			'home.connectHealth.install' => 'ইনস্টল করুন',
			'home.connectHealth.connect' => 'সংযোগ করুন',
			'history.noMeals' => 'কোনো খাবার রেকর্ড নেই',
			'history.emptyMessage' => 'এখানে লগ করতে আপনার শেষ খাবারের একটি ছবি তুলুন।',
			'history.today' => 'আজ',
			'history.yesterday' => 'গতকাল',
			'meal.ohNo' => 'ওহ না!',
			'meal.delete' => 'মুছুন',
			'meal.editMeal' => 'খাবার সম্পাদনা করুন',
			'meal.addMeal' => 'খাবার যোগ করুন',
			'meal.saveMeal' => 'খাবার সংরক্ষণ করুন',
			'meal.save' => 'সংরক্ষণ',
			'meal.mealName' => 'খাবারের নাম',
			'meal.mealNameHint' => 'যেমন: স্ক্র্যাম্বলড ডিম এবং টোস্ট',
			'meal.nameRequired' => 'সংরক্ষণ করার আগে একটি খাবারের নাম লিখুন।',
			'meal.mealQuantity' => 'খাবারের পরিমাণ',
			'meal.mealQuantityHint' => 'যেমন: ১ বাটি, ২ স্লাইস',
			'meal.timeOfMeal' => 'খাবারের সময়',
			'meal.timeOfMealHint' => 'আপনি কখন খেয়েছেন তা নির্বাচন করুন',
			'meal.mealType' => 'খাবারের ধরণ',
			'meal.nutrition.calories' => 'ক্যালোরি',
			'meal.nutrition.carbs' => 'কার্বস (g)',
			'meal.nutrition.protein' => 'প্রোটিন (g)',
			'meal.nutrition.fat' => 'চর্বি (g)',
			'meal.nutrition.fiber' => 'ফাইবার (g)',
			'meal.deleteConfirmation.title' => 'খাবার মুছুন',
			'meal.deleteConfirmation.message' => 'আপনি কি নিশ্চিত যে এই খাবারের এন্ট্রি মুছতে চান?',
			'meal.deleteConfirmation.cancel' => 'বাতিল',
			'meal.deleteConfirmation.delete' => 'মুছুন',
			'meal.addedToLog' => 'খাবার আপনার লগে যোগ করা হয়েছে!',
			'meal.couldNotAdd' => ({required Object error}) => 'খাবার যোগ করা সম্ভব হয়নি: ${error}',
			'meal.savedSuccessfully' => 'খাবার সফলভাবে যোগ করা হয়েছে!',
			'meal.updatedSuccessfully' => 'খাবার সফলভাবে আপডেট করা হয়েছে!',
			'meal.errorSaving' => ({required Object error}) => 'খাবার সংরক্ষণে ত্রুটি: ${error}',
			'meal.removedFromFavorites' => 'প্রিয় তালিকা থেকে সরানো হয়েছে!',
			'meal.savedAsFavorite' => 'খাবার প্রিয় হিসেবে সংরক্ষিত হয়েছে!',
			'meal.unfavorite' => 'প্রিয় থেকে সরান',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'প্রিয় আপডেট করা যায়নি: ${error}',
			'meal.feedbackThanks' => 'প্রতিক্রিয়ার জন্য ধন্যবাদ!',
			'meal.reanalysisUpdated' => 'আপনার প্রতিক্রিয়ার ভিত্তিতে খাবারের বিশ্লেষণ আপডেট করা হয়েছে।',
			'meal.failedToProcess' => ({required Object error}) => 'প্রক্রিয়াকরণ ব্যর্থ: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'ছবি প্রক্রিয়াকরণে ব্যর্থ: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'ছবি সংকোচনে ত্রুটি: ${error}',
			'meal.failedToSave' => 'ডেটা সংরক্ষণ ব্যর্থ। অনুগ্রহ করে আবার চেষ্টা করুন।',
			'meal.skip' => 'ছাড়ুন',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => '${current} / ${total} প্রশ্ন',
			'meal.questionFlow.noQuestionsAvailable' => 'কোন প্রশ্ন নেই',
			'meal.questionFlow.next' => 'পরবর্তী',
			'meal.questionFlow.continueLabel' => 'চালিয়ে যান',
			'meal.analysis.title' => 'আপনার খাবার বিশ্লেষণ করা হচ্ছে',
			'meal.analysis.stepStarted' => 'শুরু করা হচ্ছে…',
			'meal.analysis.stepDecomposition' => 'আপনার খাবার বোঝা হচ্ছে…',
			'meal.analysis.stepIngredients' => 'উপাদান মিলানো হচ্ছে পুষ্টি তথ্যের সাথে…',
			'meal.analysis.stepUncertainty' => 'নির্ভরযোগ্যতা যাচাই করা হচ্ছে…',
			'meal.analysis.stepMealTypeQuestion' => 'প্রায় শেষ…',
			'meal.analysis.stepResult' => 'ফল চূড়ান্ত করা হচ্ছে…',
			'meal.analysis.stepError' => 'কিছু ভুল হয়েছে',
			'meal.analysis.stepDefault' => 'আপনার খাবার বিশ্লেষণ করা হচ্ছে…',
			'meal.analysis.progressUnderstand' => 'আপনার খাবার বোঝা হচ্ছে',
			'meal.analysis.progressMatch' => 'উপাদানের পুষ্টি খোঁজা হচ্ছে',
			'meal.analysis.progressCheck' => 'পরিমাণ ও নির্ভরযোগ্যতা যাচাই',
			'meal.analysis.progressMealType' => 'ভোজনের ধরন নির্বাচন',
			'meal.analysis.progressFinish' => 'ক্যালরি ও ম্যাক্রো গণনা করা হচ্ছে',
			'meal.analysis.detectedIngredientHeading' => 'আমরা যে উপাদানগুলো শনাক্ত করছি',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count}টি আরও',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count}টি উপাদান শনাক্ত হয়েছে',
			'meal.analysis.ingredientsPending' => 'উপাদান স্ক্যান করা হচ্ছে…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'পরামর্শ: ধারাবাহিকতা পরিপূর্ণতার চেয়ে বেশি গুরুত্বপূর্ণ—নিয়মিত লগগুলোই গুরুত্বপূর্ণ প্যাটার্ন দেখায়।',
			'meal.analysis.offlineTip1' => 'পরামর্শ: ছবির জন্য প্রাকৃতিক আলো ও টপ-ডাউন ভিউ পরিমাপ নির্ভুল করতে সাহায্য করে।',
			'meal.analysis.offlineTip2' => 'পরামর্শ: পানীয়, সস ও রান্নার তেল উল্লেখ করুন—এগুলো ক্যালরি বাড়ায় যা প্রায়ই ভুলে যাওয়া হয়।',
			'meal.analysis.offlineTip3' => 'পরামর্শ: একটি দ্রুত পরিমাণ নোট (১ বাটি, বড় কফি) অনুমান অনেক উন্নত করে।',
			'meal.analysis.offlineTip4' => 'পরামর্শ: খাবারের পরে লগ করলেও অভ্যাস তৈরি হয়; পরিপূর্ণতা বাধ্যতামূলক নয়।',
			'meal.analysis.offlineTip5' => 'পরামর্শ: যদি রান্নার পদ্ধতি ক্যালরি অনেক পরিবর্তন করে (ভাজা বনাম বেকড), সেক্ষেত্রে রান্নার ধরন জানান।',
			'meal.localInference.reviewTitle' => 'শনাক্ত করা উপাদানগুলো যাচাই করুন',
			'meal.localInference.reviewSubtitle' => 'এটি আপনার ডিভাইসে বিশ্লেষণ করা হয়েছে। পুষ্টির হিসাব করার আগে নাম বা পরিমাণ সংশোধন করুন।',
			'meal.localInference.mealName' => 'খাবারের নাম',
			'meal.localInference.ingredient' => 'উপাদান',
			'meal.localInference.grams' => 'আনুমানিক গ্রাম',
			'meal.localInference.removeIngredient' => 'উপাদান সরিয়ে ফেলুন',
			'meal.localInference.continueLabel' => 'চালিয়ে যান',
			'meal.localInference.invalidProposal' => 'অন্তত একটি উপাদান যোগ করুন এবং গ্রামের পরিমাণ ধনাত্মক সংখ্যায় লিখুন।',
			'meal.localInference.localUnavailable' => 'অন-ডিভাইস বিশ্লেষণ এই মুহূর্তে উপলব্ধ নেই।',
			'meal.localInference.calculationDetails' => 'এটি যেভাবে গণনা করা হয়েছে',
			'meal.localInference.interpretationLocal' => 'এই ডিভাইসে বিশ্লেষণ করা উপাদান',
			'meal.localInference.interpretationCloud' => 'ক্লাউডে বিশ্লেষণ করা উপাদান',
			'meal.localInference.interpretationManual' => 'আপনার দ্বারা যাচাই বা সম্পাদিত উপাদান',
			'meal.localInference.nutritionRemote' => 'Calorify-এর মাধ্যমে USDA থেকে পুষ্টির তথ্য সংগ্রহ করা হয়েছে',
			'meal.localInference.nutritionFallback' => 'কিছু পুষ্টির মান রিমোটলি অনুমান করা হয়েছে',
			'meal.localInference.calculationServer' => 'ক্যালোরি এবং ম্যাক্রোস Calorify দ্বারা গণনা করা হয়েছে',
			'meal.localInference.fallbackUsed' => 'লোকাল অ্যানালাইসিসের পরিবর্তে ক্লাউড প্রসেসিং ব্যবহার করা হয়েছে',
			'meal.localInference.noRawContent' => 'ডায়াগনস্টিক রসিদে আপনার খাবারের টেক্সট বা ফটো অন্তর্ভুক্ত নেই।',
			'meal.feedback.title' => 'কোন অংশটি ভুল দেখাচ্ছে?',
			'meal.feedback.subtitle' => 'এক বা একাধিক সমস্যা নির্বাচন করে বিশ্লেষণ উন্নত করতে সাহায্য করুন।',
			'meal.feedback.tellUsMore' => 'আরও বলুন',
			'meal.feedback.describeIncorrect' => 'কি ভুল ছিল তা বর্ণনা করুন',
			'meal.feedback.submit' => 'জমা দিন',
			'meal.feedback.issueFoodIdentification' => 'খাবার শনাক্তকরণ',
			'meal.feedback.issuePortionSize' => 'পরিমাণ',
			'meal.feedback.issueCalorieDistribution' => 'ক্যালরি বিতরণ',
			'meal.feedback.issueMacrosWrong' => 'ম্যাক্রো ভুল',
			'meal.feedback.issueMissingItems' => 'অনুপস্থিত আইটেম',
			'meal.feedback.issueExtraItems' => 'অতিরিক্ত আইটেম',
			'meal.feedback.issueOther' => 'অন্যান্য',
			'favorites.title' => 'প্রিয়',
			'favorites.empty' => 'এখনও কোনো প্রিয় খাবার নেই।',
			'favorites.searchPlaceholder' => 'প্রিয় খাবার অনুসন্ধান করুন',
			'favorites.searchEmptyTitle' => 'আপনার অনুসন্ধানে কোনো প্রিয় মেলেনি',
			'favorites.searchEmptySubtitle' => 'ভিন্ন খাবারের নাম, পরিমাণ, বা খাবারের ধরন চেষ্টা করুন।',
			'favorites.sortLabel' => 'প্রিয় সাজান',
			'favorites.undo' => 'বাতিল করুন',
			'favorites.removed' => ({required Object name}) => '${name} প্রিয় তালিকা থেকে সরানো হয়েছে',
			'favorites.sortOptions.recent' => 'সাম্প্রতিক',
			'favorites.sortOptions.calories' => 'ক্যালরি',
			'favorites.sortOptions.alphabetical' => 'অক্ষরানুক্রমে',
			'profile.title' => 'প্রোফাইল',
			'profile.noProfileData' => 'কোনো প্রোফাইল ডেটা পাওয়া যায়নি',
			'profile.yourProfile' => 'আপনার প্রোফাইল',
			'profile.viewAndManage' => 'আপনার স্বাস্থ্য তথ্য দেখা ও পরিচালনা করুন',
			'profile.sections.profile' => 'প্রোফাইল',
			'profile.sections.basicInformation' => 'মূল তথ্য',
			'profile.sections.goalsAndActivity' => 'লক্ষ্য ও ক্রিয়াকলাপ',
			'profile.sections.calculatedValues' => 'হিসাবকৃত মান',
			'profile.gender' => 'লিঙ্গ',
			'profile.height' => 'উচ্চতা',
			'profile.weight' => 'ওজন',
			'profile.age' => 'বয়স',
			'profile.weightGoal' => 'ওজন লক্ষ্য',
			'profile.targetWeight' => 'লক্ষ্য ওজন',
			'profile.activityLevel' => 'সক্রিয়তা স্তর',
			'profile.healthMetrics' => 'স্বাস্থ্য সূচক',
			'profile.notSet' => 'সেট করা হয়নি',
			'profile.years' => 'বছর',
			'profile.updatedSuccessfully' => 'প্রোফাইল সফলভাবে আপডেট হয়েছে!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'দৈনিক লক্ষ্য',
			'profile.calculatedValues.calPerDay' => 'cal/day',
			'profile.calculatedValues.notAvailable' => 'প্রযোজ্য নয়',
			'healthScore.title' => 'স্বাস্থ্য স্কোর',
			'healthScore.whyThisScore' => 'এই স্কোর কেন?',
			'healthScore.note' => 'এই স্কোর শনাক্তকৃত উপাদান ও পুষ্টিগত ঘনত্বের উপর ভিত্তিক AI অনুমান। খাদ্য পরামর্শের জন্য সর্বদা একজন পেশাদারের সাথে পরামর্শ করুন।',
			'healthScore.unhealthy' => 'অস্বাস্থ্যকর',
			'healthScore.healthy' => 'স্বাস্থ্যকর',
			'healthScore.neutral' => 'নিরপেক্ষ',
			'editProfile.title' => 'প্রোফাইল সম্পাদনা করুন',
			'editProfile.sections.personalInformation' => 'ব্যক্তিগত তথ্য',
			'editProfile.sections.physicalMeasurements' => 'শারীরিক পরিমাপ',
			'editProfile.sections.goalsAndActivity' => 'লক্ষ্য ও কার্যক্রম',
			'editProfile.gender' => 'লিঙ্গ',
			'editProfile.dateOfBirth' => 'জন্মতারিখ',
			'editProfile.height' => 'উচ্চতা',
			'editProfile.weight' => 'ওজন',
			'editProfile.weightGoal' => 'ওজন লক্ষ্য',
			'editProfile.activityLevel' => 'সক্রিয়তা স্তর',
			'editProfile.metric' => 'মেট্রিক',
			'editProfile.imperial' => 'ইম্পেরিয়াল',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'মেট্রিক (cm)',
			'editProfile.imperialFtIn' => 'ইম্পেরিয়াল (ft/in)',
			'editProfile.metricKg' => 'মেট্রিক (kg)',
			'editProfile.imperialLbs' => 'ইম্পেরিয়াল (lbs)',
			'editProfile.genders.male' => 'পুরুষ',
			'editProfile.genders.female' => 'মহিলা',
			'editProfile.genders.other' => 'অন্যান্য',
			'editProfile.weightGoals.loseWeight.name' => 'ওজন কমান',
			'editProfile.weightGoals.loseWeight.description' => 'ওজন কমাতে ক্যালোরি ঘাটতি তৈরি করুন',
			'editProfile.weightGoals.maintainWeight.name' => 'ওজন বজায় রাখুন',
			'editProfile.weightGoals.maintainWeight.description' => 'আপনার বর্তমান ওজন বজায় রাখুন',
			'editProfile.weightGoals.gainWeight.name' => 'ওজন বাড়ান',
			'editProfile.weightGoals.gainWeight.description' => 'ওজন বাড়াতে ক্যালোরি অতিরিক্ততা তৈরি করুন',
			'editProfile.activityLevels.sedentary.name' => 'নিষ্ক্রিয়',
			'editProfile.activityLevels.sedentary.description' => 'খুবই কম বা কোন ব্যায়াম নেই',
			'editProfile.activityLevels.lightlyActive.name' => 'হালকা সক্রিয়',
			'editProfile.activityLevels.lightlyActive.description' => 'সপ্তাহে ১–৩ দিন হালকা ব্যায়াম',
			'editProfile.activityLevels.moderatelyActive.name' => 'মাঝারি সক্রিয়',
			'editProfile.activityLevels.moderatelyActive.description' => 'সপ্তাহে ৩–৫ দিন মাঝারি ব্যায়াম',
			'editProfile.activityLevels.veryActive.name' => 'খুব সক্রিয়',
			'editProfile.activityLevels.veryActive.description' => 'সপ্তাহে ৬–৭ দিন কঠোর ব্যায়াম',
			'editProfile.activityLevels.extremelyActive.name' => 'অত্যন্ত সক্রিয়',
			'editProfile.activityLevels.extremelyActive.description' => 'খুব কঠোর ব্যায়াম বা শারীরিক কাজ',
			'settings.title' => 'সেটিংস',
			'settings.sections.profile' => 'প্রোফাইল',
			'settings.sections.localization' => 'লোকালাইজেশন',
			'settings.sections.notifications' => 'নোটিফিকেশন',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.localInference' => 'অন-ডিভাইস বিশ্লেষণ',
			'settings.sections.supportAndLegal' => 'সহায়তা ও আইনগত',
			'settings.sections.about' => 'অ্যাপ সম্পর্কে',
			'settings.sections.dangerZone' => 'ঝুঁকির এলাকা',
			'settings.sections.developer' => 'ডেভেলপার',
			'settings.editProfile.title' => 'প্রোফাইল সম্পাদনা',
			'settings.editProfile.subtitle' => 'আপনার ব্যক্তিগত তথ্য আপডেট করুন',
			'settings.language.title' => 'ভাষা',
			'settings.language.subtitle' => 'পছন্দের ভাষা নির্বাচন করুন',
			'settings.language.searchHint' => 'ভাষা খুঁজুন...',
			'settings.language.noResults' => 'কোনো ফলাফল পাওয়া যায়নি',
			'settings.heightUnit.title' => 'উচ্চতার একক',
			'settings.weightUnit.title' => 'ওজনের একক',
			'settings.mealReminders.title' => 'খাবারের রিমাইন্ডার',
			'settings.mealReminders.subtitle' => 'সময়ে সতর্ক করে আপনার রুটিন বজায় রাখুন',
			'settings.localInference.title' => 'অন-ডিভাইস মিল অ্যানালাইসিস',
			'settings.localInference.subtitle' => 'পুষ্টির হিসাব করার আগে Gemini Nano দিয়ে সমর্থিত খাবারগুলো বিশ্লেষণ করুন',
			'settings.localInference.unavailable' => 'এই ডিভাইসে উপলব্ধ নেই',
			'settings.localInference.rolloutUnavailable' => 'উপযুক্ত হার্ডওয়্যার পাওয়া গেছে, তবে এই অ্যাপ রিলিজের জন্য এই ফিচারটি সক্রিয় করা হয়নি',
			'settings.localInference.modelSetup' => 'এটি সক্রিয় করার আগে Gemini Nano ডাউনলোড শেষ হওয়া প্রয়োজন',
			'settings.localInference.useLocalTitle' => 'অন-ডিভাইস বিশ্লেষণ ব্যবহার করুন',
			'settings.localInference.useLocalSubtitle' => 'ঐচ্ছিক এবং ডিফল্টভাবে বন্ধ থাকে। জটিল খাবারের ক্ষেত্রে ফলাফল কম নির্ভরযোগ্য হতে পারে।',
			'settings.localInference.disclosureTitle' => 'অন-ডিভাইস বিশ্লেষণ সক্রিয় করার আগে',
			'settings.localInference.disclosureBody' => 'Gemini Nano সমর্থিত Android ডিভাইসে উপাদান শনাক্ত করতে এবং পরিমাণের অনুমান করতে পারে। আপনার যাচাই করা উপাদানের প্রস্তাবটি USDA পুষ্টির ভিত্তি এবং গণনার জন্য Calorify-এ পাঠানো হয়।',
			'settings.localInference.disclosureLimit1' => 'জটিল খাবার, লুকানো উপাদান এবং পরিমাণের আকার ভুলভাবে শনাক্ত হতে পারে।',
			'settings.localInference.disclosureLimit2' => 'ডাউনলোড চলাকালীন, ব্যস্ত থাকলে, ব্যাকগ্রাউন্ডে থাকলে বা ডিভাইসের সীমাবদ্ধতার কারণে মডেলটি অনুপলব্ধ হতে পারে।',
			'settings.localInference.disclosureLimit3' => 'যদি লোকাল ইন্টারপ্রিটেশন শেষ না হয়, তবে এই বিটা সংস্করণটি ক্লাউড অ্যানালাইসিসের জন্য আপনার মূল খাবারের বিবরণটি স্বয়ংক্রিয়ভাবে Calorify-এ পাঠিয়ে দেয়।',
			'settings.localInference.acknowledgement' => 'আমি বুঝতে পারছি যে আমার শনাক্ত করা উপাদান এবং পরিমাণগুলো যাচাই করা উচিত।',
			'settings.localInference.enable' => 'স্বীকার করুন এবং সক্রিয় করুন',
			'settings.localInference.cancel' => 'বাতিল করুন',
			'settings.theme.title' => 'থিম',
			'settings.theme.light' => 'হালকা',
			'settings.theme.dark' => 'অন্ধকার',
			'settings.theme.system' => 'সিস্টেম',
			'settings.sendFeedback.title' => 'মতামত পাঠান',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'আমাদের উন্নতিতে সাহায্য করুন ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} অ্যাপ ফিডব্যাক',
			'settings.sendFeedback.emailBodyPrefix' => 'নীচে আপনার মতামত লিখুন:',
			'settings.sendFeedback.appVersion' => 'অ্যাপ সংস্করণ',
			'settings.sendFeedback.device' => 'ডিভাইস',
			'settings.sendFeedback.osVersion' => 'OS সংস্করণ',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'খাবারের ইতিহাস এক্সপোর্ট করুন',
			'settings.exportMealHistory.subtitle' => 'আপনার লগ করা খাবারের CSV শেয়ার করুন',
			'settings.exportMealHistory.shareText' => 'আপনার Calorify খাবারের ইতিহাস এক্সপোর্ট',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'খাবারের ইতিহাস এক্সপোর্ট করা যায়নি: ${error}',
			'settings.clearAllData.title' => 'সকল ডেটা মুছুন',
			'settings.clearAllData.subtitle' => 'আপনার সমস্ত তথ্য স্থায়ীভাবে মুছে ফেলা হবে',
			'settings.clearAllData.confirmationTitle' => 'সব ডেটা মুছে ফেলবেন?',
			'settings.clearAllData.confirmationMessage' => 'এই কাজ অপরিবর্তনীয়। আপনার সব লগ করা খাবার, পছন্দসমূহ এবং প্রোফাইল সেটিংস স্থায়ভাবে মুছে যাবে।',
			'settings.clearAllData.cancel' => 'বাতিল',
			'settings.clearAllData.clearEverything' => 'সবকিছু মুছুন',
			'settings.debugOptions.title' => 'ডিবাগ অপশন',
			'settings.developerModeEnabled' => 'ডেভেলপার মোড চালু!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'অনুমতি দেখুন ও পরিচালনা করুন',
			'settings.healthConnect.unavailable.title' => 'Health Connect উপলব্ধ নয়',
			'settings.healthConnect.unavailable.description' => 'এই ডিভাইসে Health Connect উপলব্ধ নেই। অনুগ্রহ করে Play Store থেকে Health Connect ইনস্টল করুন (Android 9+) বা Android 14+-এ আপডেট করুন।',
			'settings.healthConnect.permissions.title' => 'অনুমতিসমূহ',
			'settings.healthConnect.permissions.description' => 'Health Connect ইন্টিগ্রেশন প্রদানের জন্য নিম্নোক্ত অনুমতিগুলি চাওয়া হচ্ছে:',
			'settings.healthConnect.permissions.granted' => 'অনুমোদিত',
			'settings.healthConnect.permissions.notGranted' => 'অনুমোদিত নয়',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'সর্বমোট পুড়ানো ক্যালোরি পড়ুন',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'অ্যাপকে Health Connect থেকে আপনার মোট পুড়ানো ক্যালোরি পড়তে দেয়।',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'এই অনুমতি অ্যাপে আপনার দৈনিক ক্যালোরি বার্ন দেখাতে ব্যবহার করা হয়, যাতে আপনি দিনভিত্তিক মোট শক্তি খরচ বুঝতে পারেন।',
			'settings.healthConnect.permissions.nutritionRead.title' => 'পুষ্টি ডেটা পড়ুন',
			'settings.healthConnect.permissions.nutritionRead.description' => 'অ্যাপকে Health Connect থেকে পুষ্টি সম্পর্কিত ডেটা পড়তে দেয়।',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'এই অনুমতি অ্যাপকে Health Connect-এ সংযুক্ত অন্য অ্যাপগুলো দ্বারা লগ করা পুষ্টি তথ্য পড়তে দেয়, ফলে আপনার পুষ্টির একটি সম্পূর্ণ চিত্র পাওয়া যায়।',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'পুষ্টি ডেটা লিখুন',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'অ্যাপকে Health Connect-এ পুষ্টি ডেটা লিখতে দেয়।',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'এই অনুমতি অ্যাপকে আপনার লগ করা খাবারগুলো Health Connect-এ সিঙ্ক করতে দেয়, ফলে আপনার পুষ্টি ডেটা অন্য স্বাস্থ্য ও ফিটনেস অ্যাপগুলোতেও উপলব্ধ হবে।',
			'settings.healthConnect.managePermissions' => 'অনুমতি পরিচালনা করুন',
			'settings.healthConnect.openSettings' => 'Health Connect সেটিংস খুলুন',
			'settings.healthConnect.requestPermissions' => 'অনুমতিগুলির জন্য অনুরোধ করুন',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'অনুমতি অনুরোধ বাতিল হয়েছে বা ব্যর্থ হয়েছে। অনুগ্রহ করে আবার চেষ্টা করুন বা Health Connect সেটিংসে ম্যানুয়ালি অনুমতি দিন।',
			'settings.healthConnect.permissionRequestFailed' => 'অনুমতি অনুরোধ করা যায়নি। অনুগ্রহ করে আবার চেষ্টা করুন বা Health Connect সেটিংসে ম্যানুয়ালি অনুমতি দিন।',
			'settings.healthConnect.requestingPermissions' => 'অনুরোধ করা হচ্ছে...',
			'settings.about.title' => 'অ্যাপ সম্পর্কে',
			'settings.about.tagline' => 'দ্রুত, বিনামূল্য এবং গোপনীয়তাভিত্তিক ক্যালোরি সচেতনতা',
			'settings.about.ourStory.title' => 'আমাদের গল্প',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} জন্মেছে এক সাধারণ হতাশা থেকে: বেশিরভাগ ক্যালোরি ট্র্যাকিং অ্যাপ বা তো অত্যন্ত জটিল, বা ক্রমাগত ম্যানুয়াল ইনপুট চায়, বা উচ্চ সাবস্ক্রিপশন ফি নেয়, বা গোপনীয়তার সঙ্গে আপোষ করে।\n\nএকজন একক ডেভেলপার হিসেবে, আমি কিছু সহজ ও ন্যায়সঙ্গত তৈরি করতে চেয়েছিলাম — একটি অ্যাপ যা AI ব্যবহার করে প্রচেষ্টা কমায়, দ্রুত ও বিনামূল্যে থাকে, এবং আপনার স্বাস্থ্য ডেটাকে সম্মান করে।\n\n${appLabel} হলো এমন একটি অ্যাপ যা আমি চাইতাম: কোন অ্যাকাউন্ট নেই, কোন ট্র্যাকিং নেই, কোন বিজ্ঞাপন নেই — শুধু পরিষ্কার, ব্যবহারিক অন্তর্দৃষ্টি এবং আপনার স্বাস্থ্য লক্ষ্য।',
			'settings.about.privacy.title' => 'আপনার গোপনীয়তা গুরুত্বপূর্ণ',
			'settings.about.privacy.description' => 'গোপনীয়তা কোনো পরবর্তীতে চিন্তার বিষয় নয় — এটি ডিজাইনের মূলনীতি। এর অর্থ বাস্তবে কী তা নিচে:',
			'settings.about.privacy.noAccounts' => 'অ্যাকাউন্টের কোনো প্রয়োজন নেই\nঅ্যাপটি এখনই ব্যবহার করুন। কোনো সাইন-আপ নেই, কোনো পরিচয় প্রয়োজন নেই।',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'আচরণগত ট্র্যাকিং নেই\n${appLabel} আপনার কার্যকলাপ পর্যবেক্ষণ করে না, ব্যবহার প্রোফাইল তৈরি করে না, বা অ্যাপ/ওয়েবসাইট জুড়ে আপনাকে ট্র্যাক করে না।',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'ডিজাইনে বিজ্ঞাপনবিহীন\n${appLabel} বিজ্ঞাপন বা ডেটা-ভিত্তিক মনিটাইজেশন ছাড়াই কাজ করার জন্য তৈরি।',
			'settings.about.privacy.noDataSelling' => 'ডেটা বিক্রি নেই\nআপনার স্বাস্থ্য ডেটা কখনই তৃতীয় পক্ষের কাছে বিক্রি বা শেয়ার করা হয় না।',
			'settings.about.privacy.localStorage' => 'স্থানীয়-প্রথম সংরক্ষণ\nআপনার ডেটা আপনার ডিভাইসেই থাকে।',
			'settings.about.privacy.privacyPolicy' => 'গোপনীয়তা নীতি',
			'settings.about.developer.title' => 'একজন একক ডেভেলপার দ্বারা নির্মিত',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} একটি একক ডেভেলপার দ্বারা তৈরি ও রক্ষণাবেক্ষণ করা হয়, যিনি শান্ত, গোপনীয়তা-সম্মানকারী স্বাস্থ্য সফটওয়্যার তৈরিতে মনোযোগী।\n\nপ্রতিটি ফিডব্যাক ব্যক্তিগতভাবে পড়া হয় এবং অ্যাপের দিক নির্ধারণে সহায়তা করে।',
			'settings.about.developer.website' => 'ওয়েবসাইট',
			'settings.about.developer.email' => 'ইমেইল',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'আপনি কি ${appLabel} উপভোগ করছেন?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'আপনার প্রতিক্রিয়াই ${appLabel} সবার জন্য আরও ভালো করে তোলে।',
			'settings.about.feedback.rateApp' => 'Play Store-এ রেট করুন',
			'settings.about.feedback.sendFeedback' => 'প্রতিক্রিয়া পাঠান',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'বিল্ড ${buildNumber}',
			'reminders.title' => 'রিমাইন্ডার দিয়ে লক্ষ্য বজায় রাখুন',
			'reminders.description' => 'আপনার খাবারের লগ করার জন্য মৃদু রিমাইন্ডার পান এবং পুষ্টিগত লক্ষ্যগুলোতে ধারাবাহিক থাকুন',
			'reminders.notificationsEnabled' => 'নোটিফিকেশন সক্রিয়',
			'reminders.notificationsDisabled' => 'নোটিফিকেশন নিষ্ক্রিয়',
			'reminders.enabledSubtitle' => 'আপনি খাবারের রিমাইন্ডার পাবেন',
			'reminders.disabledSubtitle' => 'খাবারের রিমাইন্ডার পেতে নোটিফিকেশন চালু করুন',
			'reminders.mealReminders' => 'খাবারের রিমাইন্ডার',
			'reminders.breakfast' => 'প্রাতঃরাশ',
			'reminders.lunch' => 'দুপুরের খাবার',
			'reminders.dinner' => 'রাতের খাবার',
			'reminders.snack' => 'নাস্তা',
			'reminders.unknown' => 'অজানা',
			'reminders.change' => 'পরিবর্তন',
			'reminders.enableNotifications' => 'নোটিফিকেশন চালু করুন',
			'reminders.skipForNow' => 'এখন ছাড়ুন',
			'reminders.saveChanges' => 'পরিবর্তন সংরক্ষণ করুন',
			'reminders.enabledSuccessfully' => 'নোটিফিকেশন সফলভাবে চালু হয়েছে!',
			'reminders.permissionDenied' => 'নোটিফিকেশন অনুমতি প্রত্যাখ্যান করা হয়েছে',
			'reminders.errorEnabling' => ({required Object error}) => 'নোটিফিকেশন চালু করতে ত্রুটি: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'সেটআপ সম্পন্ন করতে ত্রুটি: ${error}',
			'notifications.breakfast.title' => 'প্রাতঃরাশের সময়! 🍳',
			'notifications.breakfast.body' => 'প্রাতঃরাশ লগ করতে ভুলবেন না',
			'notifications.lunch.title' => 'দুপুরের খাবারের সময়! 🥗',
			'notifications.lunch.body' => 'দুপুরের খাবার লগ করার সময়',
			'notifications.dinner.title' => 'রাতের খাবারের সময়! 🍽️',
			'notifications.dinner.body' => 'রাতের খাবার লগ করতে ভুলবেন না',
			'notifications.snack.title' => 'নাস্তার সময়! 🍎',
			'notifications.snack.body' => 'একটি স্বাস্থ্যকর নাস্তার সময়',
			'notifications.test.title' => 'পরীক্ষা নোটিফিকেশন',
			'login.title' => 'লগইন',
			'login.signInWithGoogle' => 'Google দিয়ে সাইন ইন করুন',
			'login.signInFailed' => 'Google Sign-In ব্যর্থ হয়েছে অথবা বাতিল করা হয়েছে।',
			'disclaimer.pleaseNote' => 'দ্রষ্টব্য',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} আনুমানিক পুষ্টি তথ্য প্রদান করে। সঠিকতা আপনার ইনপুট ও খাদ্যের পার্থক্যের উপর নির্ভর করে। এটি একটি নির্দেশিকা হিসেবে ব্যবহার করুন, চূড়ান্ত সূত্র হিসেবে নয়। ব্যক্তিগতকৃত পরামর্শের জন্য পেশাদারের সাথে পরামর্শ করুন।',
			'disclaimer.snap.portionSize.title' => 'পরিমাণ',
			'disclaimer.snap.portionSize.description' => 'আনুমানিকতার সঠিকতা আপনার পরিমাণ সঠিকভাবে নিরূপণের উপর ব্যাপকভাবে নির্ভর করে।',
			'disclaimer.snap.preparationMethods.title' => 'প্রস্তুত করার উপায়',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'রান্নার পদ্ধতি খাবারের পুষ্টিগুণ ব্যাপকভাবে বদলে দিতে পারে। ${appLabel}-এর আনুমানিক ফলাফল সবসময় এই পরিবর্তনগুলোকে বিবেচনা নাও করতে পারে।',
			'disclaimer.snap.ingredients.title' => 'উপকরণ',
			'disclaimer.snap.ingredients.description' => 'বহু লুকানো উপকরণসহ জটিল ডিশগুলোর জন্য আনুমানিকতা কম নির্ভুল হতে পারে।',
			'disclaimer.snap.databaseLimitations.title' => 'ডাটাবেস সীমাবদ্ধতা',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}-এর খাদ্য ডাটাবেস বিস্তৃত হলেও এটি প্রতিটি খাদ্য আইটেম বা ভ্যারিয়েশন অন্তর্ভুক্ত নাও থাকতে পারে।',
			'disclaimer.weightEstimate.title' => 'ওজন অনুমান সম্পর্কে',
			'disclaimer.weightEstimate.description' => 'প্রকল্পিত ওজন পরিবর্তন একটি তাত্ত্বিক আনুমানিকতা যা ক্যালোরি ইন বনাম ক্যালোরি আউট সরল মডেলে ভিত্তি করে। এটি কেবল মোটিভেশনাল নির্দেশনার জন্য, আপনার প্রকৃত ওজনের পূর্বাভাস হিসেবে নয়।',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'ক্যালোরির সঠিকতা',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'এই আনুমানিকতা আপনার ট্র্যাক করা ক্যালোরি গ্রহণ এবং ব্যয়ের সঠিকতার সমান। ভুলভাবে লগ করলে আনুমানিক ফলাফল সঠিক হবে না।',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'জৈবিক কারণসমূহ',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'বাস্তব ওজন হ্রাস/বৃদ্ধি মেটাবলিজম, হরমোন, ঘুম, চাপ, হাইড্রেশন এবং অন্যান্য ব্যক্তিগত কারণ দ্বারা প্রভাবিত যা ${appLabel} পরিমাপ করতে পারে না।',
			'disclaimer.weightEstimate.waterWeight.title' => 'জলের ওজন ও ওঠানামা',
			'disclaimer.weightEstimate.waterWeight.description' => 'নিয়মিত দৈনিক ওজন জল ধরে রাখার, হজম ও সময়ের কারণে অনেকটা ওঠানামা করতে পারে। আনুমানিকতা এই দৈনিক পরিবর্তনগুলোকে বিবেচনা করে না।',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'পেশাদার পরামর্শ',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'চিকিৎসাসংক্রান্ত সিদ্ধান্ত নিতে এই আনুমানিকতাকে ব্যবহার করবেন না। ব্যক্তিগতকৃত ওজন ব্যবস্থাপনার পরামর্শের জন্য সবসময় একজন স্বাস্থ্যের পেশাদার বা নিবন্ধিত ডায়েটিশিয়ানের সঙ্গে পরামর্শ করুন।',
			'disclaimer.healthMetrics.description' => 'এই মেট্রিক্সগুলো আপনাকে আপনার দেহের শক্তি চাহিদা বুঝতে এবং পুষ্টির লক্ষ্য নির্ধারণে সাহায্য করে।',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) হল বিশ্রামের অবস্থায় আপনার দেহ যে ক্যালোরি জ্বালায় তার পরিমাণ—শ্বাস-প্রশ্বাস ও রক্ত সঞ্চালনসহ মৌলিক কাজগুলোর জন্য। BMR নির্ভর করে আপনার বয়স, লিঙ্গ, উচ্চতা এবং ওজনের উপর। উচ্চ BMR মানে বিশ্রামের সময় আপনার দেহ স্বাভাবিকভাবে বেশি ক্যালোরি জ্বালায়, যা সাধারণত বেশি পেশী ভর, কম বয়স, বা পুরুষ হওয়ার কারণে হতে পারে। নিম্ন BMR সাধারণত কম পেশী ভর, বেশি বয়স, বা মহিলা হওয়ার ইঙ্গিত দেয়।',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) হল আপনি প্রতিদিন যে মোট ক্যালোরি খরচ করেন, যার মধ্যে BMR এবং শারীরিক কার্যকলাপ ও দৈনন্দিন চলাচলও অন্তর্ভুক্ত। TDEE আপনার BMR এবং কার্যকলাপ স্তরের উপর নির্ভর করে। উচ্চ TDEE মানে আপনি মোটামুটি বেশি ক্যালোরি খরচ করেন, সাধারণত বেশি সক্রিয় থাকা বা উচ্চ BMR-এর কারণে। নিম্ন TDEE কম দৈনন্দিন কার্যকলাপ বা নিম্ন BMR নির্দেশ করে।',
			'disclaimer.healthMetrics.dailyGoal.title' => 'দৈনিক লক্ষ্য',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Daily Goal হল আপনার TDEE এবং ওজন লক্ষ্য অনুযায়ী প্রস্তাবিত দৈনিক ক্যালোরি গ্রহণ। ওজন কমানোর জন্য আপনি TDEE-র চেয়ে কম ক্যালোরি খান। ওজন বজায় রাখতে TDEE-র সমান ক্যালোরি গ্রহণ করবেন। ওজন বাড়ানোর জন্য TDEE-র চেয়ে বেশি ক্যালোরি গ্রহণ করবেন। এটি আপনাকে স্বাস্থ্যকর গতিতে আপনার কাঙ্ক্ষিত ওজন পরিবর্তন অর্জনে সাহায্য করে।',
			'disclaimer.calorieExpenditure.title' => 'ক্যালোরি ব্যয়_estimate',
			'disclaimer.calorieExpenditure.description' => 'যখন Health Connect ডেটা অনুপলব্ধ থাকে, আমরা আজকের জ্বলানো ক্যালোরি আপনার Basal Metabolic Rate (BMR) এবং কার্যকলাপ স্তর (TDEE) ব্যবহার করে অনুমান করি, দিনের যে অংশটি পেরোয় তার অনুপাতে স্কেল করে।',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'কীভাবে আনুমানিকতা গণনা করা হয়',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'আমরা আপনার প্রোফাইল ভিত্তিক TDEE হিসাব করি এবং দিনের কত অংশ পেরোয় (ঘণ্টা + মিনিট) / 24 অনুপাতে গুণ করে এ পর্যন্ত জ্বালানো ক্যালোরি অনুমান করি।',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'পেশাদার পরামর্শ',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'চিকিৎসাসংক্রান্ত সিদ্ধান্ত নিতে এই আনুমানিকতাকে ব্যবহার করবেন না। ব্যক্তিগতকৃত ওজন ব্যবস্থাপনার পরামর্শের জন্য সবসময় একজন স্বাস্থ্যের পেশাদার বা নিবন্ধিত ডায়েটিশিয়ানের সঙ্গে পরামর্শ করুন।',
			_ => null,
		} ?? switch (path) {
			'localNutritionPhase4.nutritionBundled' => 'Nutrition matched from the downloaded USDA pack',
			'localNutritionPhase4.nutritionCached' => 'Nutrition matched from the on-device USDA cache',
			'localNutritionPhase4.nutritionMixed' => 'Nutrition combined from downloaded, cached, and remote USDA rows',
			'localNutritionPhase4.calculationLocal' => 'Calories and macros calculated on this device',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: downloaded USDA pack',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: on-device USDA cache',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: USDA row fetched through Calorify',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: deterministic nutrition constant',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · dataset ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Smaller',
			'localNutritionPhase4.portionEstimated' => 'Estimated',
			'localNutritionPhase4.portionLarger' => 'Larger',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Which portion was closest for ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Which meal was this?',
			'localNutritionPhase4.localNutritionTip' => 'Calculated from verified local nutrition data.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Download nutrition data',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Local nutrition data is not available for this app release.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'No verified nutrition pack is downloaded.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Downloading and verifying nutrition data…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Pack ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} cached USDA rows · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Check for update',
			'localNutritionPhase4.offlineNutritionClear' => 'Clear local nutrition data',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Clear local nutrition data?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Clear data',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Could not download and verify local nutrition data: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Local nutrition data cleared',
			'common.close' => 'বন্ধ',
			'common.kContinue' => 'চালিয়ে যান',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'আপনি কি ${appLabel} উপভোগ করছেন?',
			'feedbackRating.yes' => 'হ্যাঁ, আমি উপভোগ করছি',
			'feedbackRating.no' => 'তেমন না',
			'feedbackRating.rateStepHeading' => 'Play Store-এ রেট করুন',
			'feedbackRating.emailStepHeading' => 'ইমেইলে প্রতিক্রিয়া পাঠান',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'একটি দ্রুত রেটিং অন্যদের ${appLabel} খুঁজে পেতে সাহায্য করে এবং উন্নয়ন চালিয়ে যেতে সহায়ক। আপনি একটু সময় নিয়ে একটি রেট দিতে পারবেন?',
			'feedbackRating.shareFeedbackViaEmail' => 'আপনার প্রতিক্রিয়া পরবর্তী পথ নির্ধারণ করে—আমরা প্রতিটি বার্তা পড়ি। আপনি কি ইমেইলে আপনার মতামত শেয়ার করতে চান?',
			'feedbackRating.rateCta' => 'Play Store-এ রেট করুন',
			'feedbackRating.maybeLater' => 'পরে হয়তো',
			'feedbackRating.sendFeedback' => 'প্রতিক্রিয়া পাঠান',
			'feedbackRating.noThanks' => 'না, ধন্যবাদ',
			'feedbackRating.aboutUsDescription' => 'একটি ছোট টিম দ্বারা যত্নসহকারে তৈরি। আমরা গোপনীয়তা, সরলতা এবং আপনাকে ভালো খাদ্যাভ্যাস গড়তে সাহায্য করার ওপর মনোযোগী।',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'জানতে আগ্রহী কে ${appLabel}-এর পেছনে? দেখুন ',
			'feedbackRating.aboutUsLinkLabel' => 'আমাদের সম্পর্কে',
			'feedbackRating.thankYouMessage' => 'ধন্যবাদ! আমরা পরে আবার জিজ্ঞেস করব।',
			'health.syncFailed' => 'Health Connect-এ সিঙ্ক করা যায়নি',
			'health.mealSynced' => 'খাবারটি Health Connect-এ সিঙ্ক হয়েছে',
			_ => null,
		};
	}
}
