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
class TranslationsBn with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsBn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.bn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <bn>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

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
	@override late final _TranslationsCommonBn common = _TranslationsCommonBn._(_root);
	@override late final _TranslationsFeedbackRatingBn feedbackRating = _TranslationsFeedbackRatingBn._(_root);
	@override late final _TranslationsHealthBn health = _TranslationsHealthBn._(_root);
}

// Path: errors
class _TranslationsErrorsBn implements TranslationsErrorsEn {
	_TranslationsErrorsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'আপনি অনেক অনুরোধ করেছেন। দয়া করে কয়েক মুহূর্ত অপেক্ষা করুন এবং পরে আবার চেষ্টা করুন।';
	@override String get networkError => 'নেটওয়ার্ক ত্রুটি। অনুগ্রহ করে আপনার ইন্টারনেট সংযোগ পরীক্ষা করুন।';
	@override String get unknownError => 'কিছু ভুল হয়েছে। দয়া করে পরে আবার চেষ্টা করুন।';
	@override String get loadingProfileData => 'প্রোফাইল তথ্য লোড করতে ত্রুটি';
	@override String get somethingWentWrong => 'কিছু ভুল হয়েছে।';
	@override String get retry => 'আবার চেষ্টা করুন';
}

// Path: onboarding
class _TranslationsOnboardingBn implements TranslationsOnboardingEn {
	_TranslationsOnboardingBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} এ স্বাগতম';
	@override String get subtitle => 'এটি আপনার ব্যক্তিগত পুষ্টি সঙ্গী, যা AI দ্বারা পরিচালিত';
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
class _TranslationsTabsBn implements TranslationsTabsEn {
	_TranslationsTabsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'ড্যাশবোর্ড';
	@override String get history => 'ঐতিহাসিক';
}

// Path: home
class _TranslationsHomeBn implements TranslationsHomeEn {
	_TranslationsHomeBn._(this._root);

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
class _TranslationsHistoryBn implements TranslationsHistoryEn {
	_TranslationsHistoryBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'কোনও খাবার রেকর্ড করা হয়নি';
	@override String get emptyMessage => 'এখানে আপনার শেষ খাবারের ছবি তুলুন।';
	@override String get today => 'আজ';
	@override String get yesterday => 'গতকাল';
}

// Path: meal
class _TranslationsMealBn implements TranslationsMealEn {
	_TranslationsMealBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'আঃ না!';
	@override String get delete => 'মুছুন';
	@override String get editMeal => 'খাবার সম্পাদনা করুন';
	@override String get addMeal => 'খাবার যোগ করুন';
	@override String get saveMeal => 'খাবার সংরক্ষণ করুন';
	@override String get save => 'সংরক্ষণ করুন';
	@override String get mealName => 'খাবারের নাম';
	@override String get mealNameHint => 'উদাহরণ: ফেটানো ডিম ও টোস্ট';
	@override String get mealQuantity => 'খাবারের পরিমাণ';
	@override String get mealQuantityHint => 'যেমন, ১ বাটি, ২ স্লাইস';
	@override String get timeOfMeal => 'খাবারের সময়';
	@override String get timeOfMealHint => 'আপনার খাবারটি কখন ছিল তা নির্বাচন করুন';
	@override String get mealType => 'খাবারের ধরন';
	@override late final _TranslationsMealNutritionBn nutrition = _TranslationsMealNutritionBn._(_root);
	@override late final _TranslationsMealDeleteConfirmationBn deleteConfirmation = _TranslationsMealDeleteConfirmationBn._(_root);
	@override String get addedToLog => 'খাবার আপনার লগে যোগ করা হয়েছে!';
	@override String couldNotAdd({required Object error}) => 'খাবার যোগ করা যায়নি: ${error}';
	@override String get savedSuccessfully => 'খাবারটি সফলভাবে যোগ করা হয়েছে!';
	@override String get updatedSuccessfully => 'খাবারটি সফলভাবে আপডেট করা হয়েছে!';
	@override String errorSaving({required Object error}) => 'খাবার সংরক্ষণে ত্রুটি: ${error}';
	@override String get removedFromFavorites => 'প্রিয় থেকে সরানো হয়েছে!';
	@override String get savedAsFavorite => 'খাবার প্রিয় হিসেবে সংরক্ষিত হয়েছে!';
	@override String couldNotUpdateFavorite({required Object error}) => 'প্রিয় আপডেট করা যায়নি: ${error}';
	@override String failedToProcess({required Object error}) => 'প্রক্রিয়া করতে ব্যর্থ: ${error}';
	@override String failedToProcessImage({required Object error}) => 'ছবি প্রক্রিয়া করতে ব্যর্থ: ${error}';
	@override String errorCompressingImage({required Object error}) => 'ছবি সংকোচন করতে ত্রুটি: ${error}';
	@override String get failedToSave => 'ডেটা সংরক্ষণ করতে ব্যর্থ। আবার চেষ্টা করুন।';
	@override String get skip => 'এড়িয়ে যান';
	@override late final _TranslationsMealVariationBn variation = _TranslationsMealVariationBn._(_root);
}

// Path: favorites
class _TranslationsFavoritesBn implements TranslationsFavoritesEn {
	_TranslationsFavoritesBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রিয় খাবার';
	@override String get empty => 'এখনো কোন প্রিয় খাবার নেই।';
	@override String get searchPlaceholder => 'প্রিয় খাবার খুঁজুন';
	@override String get searchEmptyTitle => 'আপনার অনুসন্ধানের সাথে কোনো প্রিয় খাবার মিলল না';
	@override String get searchEmptySubtitle => 'অন্যান্য খাবারের নাম, পরিমাণ বা খাবারের ধরন ব্যবহার করে আবার চেষ্টা করুন।';
	@override String get sortLabel => 'প্রিয়গুলো সাজান';
	@override String get undo => 'পূর্বাবস্থায় ফিরান';
	@override String removed({required Object name}) => '${name} আপনার প্রিয় তালিকা থেকে সরানো হয়েছে';
	@override late final _TranslationsFavoritesSortOptionsBn sortOptions = _TranslationsFavoritesSortOptionsBn._(_root);
}

// Path: profile
class _TranslationsProfileBn implements TranslationsProfileEn {
	_TranslationsProfileBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রোফাইল';
	@override String get noProfileData => 'কোন প্রোফাইল তথ্য পাওয়া যায়নি';
	@override String get yourProfile => 'আপনার প্রোফাইল';
	@override String get viewAndManage => 'আপনার স্বাস্থ্য তথ্য দেখুন এবং পরিচালনা করুন';
	@override late final _TranslationsProfileSectionsBn sections = _TranslationsProfileSectionsBn._(_root);
	@override String get gender => 'লিঙ্গ';
	@override String get height => 'উচ্চতা';
	@override String get weight => 'ওজন';
	@override String get age => 'বয়স';
	@override String get weightGoal => 'ওজন লক্ষ্য';
	@override String get targetWeight => 'লক্ষ্য ওজন';
	@override String get activityLevel => 'ক্রিয়াকলাপের স্তর';
	@override String get healthMetrics => 'স্বাস্থ্য সূচক';
	@override String get notSet => 'নির্ধারিত নয়';
	@override String get years => 'বছর';
	@override String get updatedSuccessfully => 'প্রোফাইল সফলভাবে আপডেট হয়েছে!';
	@override late final _TranslationsProfileCalculatedValuesBn calculatedValues = _TranslationsProfileCalculatedValuesBn._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreBn implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্বাস্থ্য স্কোর';
	@override String get whyThisScore => 'এজন্য এই স্কোর?';
	@override String get note => 'এই স্কোরটি চিনল শস্য ও পুষ্টি ঘনতার ভিত্তিতে একটি AI মূল্যায়ন। স্বাস্থ্য বিষয়ক পরামর্শের জন্য সর্বদা একজন পেশাদারকে পরামর্শ করুন।';
	@override String get unhealthy => 'অস্বাস্থ্যকর';
	@override String get healthy => 'স্বাস্থ্যকর';
	@override String get neutral => 'নিউট্রাল';
}

// Path: editProfile
class _TranslationsEditProfileBn implements TranslationsEditProfileEn {
	_TranslationsEditProfileBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রোফাইল সম্পাদনা করুন';
	@override late final _TranslationsEditProfileSectionsBn sections = _TranslationsEditProfileSectionsBn._(_root);
	@override String get gender => 'লিঙ্গ';
	@override String get dateOfBirth => 'জন্মতারিখ';
	@override String get height => 'উচ্চতা';
	@override String get weight => 'ওজন';
	@override String get weightGoal => 'ওজন লক্ষ্য';
	@override String get activityLevel => 'ক্রিয়াকলাপের স্তর';
	@override String get metric => 'মেট্রিক';
	@override String get imperial => 'ইম্পেরিয়াল';
	@override String get unitCm => 'সেমি';
	@override String get unitFt => 'ফুট';
	@override String get unitKg => 'কেজি';
	@override String get unitLbs => 'পাউন্ড';
	@override String get metricCm => 'মেট্রিক (সেমি)';
	@override String get imperialFtIn => 'ইম্পেরিয়াল (ফুট/ইঞ্চি)';
	@override String get metricKg => 'মেট্রিক (কেজি)';
	@override String get imperialLbs => 'ইম্পেরিয়াল (পাউন্ড)';
	@override late final _TranslationsEditProfileGendersBn genders = _TranslationsEditProfileGendersBn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsBn weightGoals = _TranslationsEditProfileWeightGoalsBn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsBn activityLevels = _TranslationsEditProfileActivityLevelsBn._(_root);
}

// Path: settings
class _TranslationsSettingsBn implements TranslationsSettingsEn {
	_TranslationsSettingsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'সেটিংস';
	@override late final _TranslationsSettingsSectionsBn sections = _TranslationsSettingsSectionsBn._(_root);
	@override late final _TranslationsSettingsEditProfileBn editProfile = _TranslationsSettingsEditProfileBn._(_root);
	@override late final _TranslationsSettingsLanguageBn language = _TranslationsSettingsLanguageBn._(_root);
	@override late final _TranslationsSettingsHeightUnitBn heightUnit = _TranslationsSettingsHeightUnitBn._(_root);
	@override late final _TranslationsSettingsWeightUnitBn weightUnit = _TranslationsSettingsWeightUnitBn._(_root);
	@override late final _TranslationsSettingsMealRemindersBn mealReminders = _TranslationsSettingsMealRemindersBn._(_root);
	@override late final _TranslationsSettingsThemeBn theme = _TranslationsSettingsThemeBn._(_root);
	@override late final _TranslationsSettingsSendFeedbackBn sendFeedback = _TranslationsSettingsSendFeedbackBn._(_root);
	@override late final _TranslationsSettingsExportMealHistoryBn exportMealHistory = _TranslationsSettingsExportMealHistoryBn._(_root);
	@override late final _TranslationsSettingsClearAllDataBn clearAllData = _TranslationsSettingsClearAllDataBn._(_root);
	@override late final _TranslationsSettingsDebugOptionsBn debugOptions = _TranslationsSettingsDebugOptionsBn._(_root);
	@override String get developerModeEnabled => 'ডেভেলপার মোড সক্রিয়!';
	@override late final _TranslationsSettingsHealthConnectBn healthConnect = _TranslationsSettingsHealthConnectBn._(_root);
	@override late final _TranslationsSettingsAboutBn about = _TranslationsSettingsAboutBn._(_root);
	@override late final _TranslationsSettingsAppInfoBn appInfo = _TranslationsSettingsAppInfoBn._(_root);
}

// Path: reminders
class _TranslationsRemindersBn implements TranslationsRemindersEn {
	_TranslationsRemindersBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'রিমাইন্ডারের সাথে পথে থাকুন';
	@override String get description => 'আপনার খাবার লগ করতে এবং আপনার পুষ্টির লক্ষ্যগুলির সাথে ধারাবাহিক থাকায় নম্রভাবে স্মরণ করিয়ে দিন';
	@override String get notificationsEnabled => 'বিজ্ঞপ্তি সক্রিয়';
	@override String get notificationsDisabled => 'বিজ্ঞপ্তি নিষ্ক্রিয়';
	@override String get enabledSubtitle => 'আপনাকে খাবারের রিমাইন্ডার পাঠানো হবে';
	@override String get disabledSubtitle => 'খাবারের রিমাইন্ডার পেতে বিজ্ঞপ্তি সক্রিয় করুন';
	@override String get mealReminders => 'খাবারের রিমাইন্ডার';
	@override String get breakfast => 'সকালের নাস্তা';
	@override String get lunch => 'মধ্যাহ্নভোজন';
	@override String get dinner => 'রাতের খাবার';
	@override String get snack => 'নাশতা';
	@override String get unknown => 'অজ্ঞাত';
	@override String get change => 'বদলান';
	@override String get enableNotifications => 'বিজ্ঞপ্তি সক্রিয় করুন';
	@override String get skipForNow => 'এখন বাদ দিন';
	@override String get saveChanges => 'পরিবর্তন সংরক্ষণ করুন';
	@override String get enabledSuccessfully => 'বিজ্ঞপ্তি সফলভাবে সক্ষম হয়েছে!';
	@override String get permissionDenied => 'বিজ্ঞপ্তি অনুমতি অস্বীকার করা হয়েছে';
	@override String errorEnabling({required Object error}) => 'বিজ্ঞপ্তি সক্ষম করতে ত্রুটি: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'সেটআপ সম্পন্ন করতে ত্রুটি: ${error}';
}

// Path: notifications
class _TranslationsNotificationsBn implements TranslationsNotificationsEn {
	_TranslationsNotificationsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastBn breakfast = _TranslationsNotificationsBreakfastBn._(_root);
	@override late final _TranslationsNotificationsLunchBn lunch = _TranslationsNotificationsLunchBn._(_root);
	@override late final _TranslationsNotificationsDinnerBn dinner = _TranslationsNotificationsDinnerBn._(_root);
	@override late final _TranslationsNotificationsSnackBn snack = _TranslationsNotificationsSnackBn._(_root);
	@override late final _TranslationsNotificationsTestBn test = _TranslationsNotificationsTestBn._(_root);
}

// Path: login
class _TranslationsLoginBn implements TranslationsLoginEn {
	_TranslationsLoginBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'লগইন';
	@override String get signInWithGoogle => 'গুগলের সাথে লগ ইন করুন';
	@override String get signInFailed => 'গুগল সাইন ইন ব্যর্থ হয়েছে অথবা বাতিল হয়েছে।';
}

// Path: disclaimer
class _TranslationsDisclaimerBn implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'দয়া করে মনে রাখবেন';
	@override late final _TranslationsDisclaimerSnapBn snap = _TranslationsDisclaimerSnapBn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBn weightEstimate = _TranslationsDisclaimerWeightEstimateBn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsBn healthMetrics = _TranslationsDisclaimerHealthMetricsBn._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureBn calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureBn._(_root);
}

// Path: common
class _TranslationsCommonBn implements TranslationsCommonEn {
	_TranslationsCommonBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get close => 'বন্ধ করুন';
	@override String get kContinue => 'অগ্রসর হোন';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingBn implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'আপনি কি ${appLabel} উপভোগ করছেন?';
	@override String get yes => 'হ্যাঁ, আমি উপভোগ করছি';
	@override String get no => 'তেমন না';
	@override String get rateStepHeading => 'প্লে স্টোরে রেট দিন';
	@override String get emailStepHeading => 'ইমেইলের মাধ্যমে প্রতিক্রিয়া পাঠান';
	@override String soloDevMessage({required Object appLabel}) => 'একটি দ্রুত রেটিং অন্যদের ${appLabel} খুঁজে পেতে সাহায্য করে এবং আমাদের উন্নয়ন চালিয়ে রাখতে সহায়ক। আপনি কি একটু সময় নিয়ে একটি রেটিং দেবেন?';
	@override String get shareFeedbackViaEmail => 'আপনার প্রতিক্রিয়া পরবর্তী আপডেটগুলোকে গঠন করে — আমরা প্রতিটি বার্তা মনোযোগ দিয়ে পড়ি। আপনি কি ইমেইলের মাধ্যমে আপনার মতামত শেয়ার করতে চান?';
	@override String get rateCta => 'প্লে স্টোরে রেট করুন';
	@override String get maybeLater => 'পরে হতে পারে';
	@override String get sendFeedback => 'মতামত পাঠান';
	@override String get noThanks => 'না, ধন্যবাদ';
	@override String get aboutUsDescription => 'একটি ছোট দল যত্নসহ তৈরি করেছে। আমরা গোপনীয়তা, সরলতা এবং আপনাকে আরও স্বাস্থ্যকর খাদ্যাভ্যাস গড়তে সাহায্য করার ওপর গুরুত্ব দিই।';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'জানতে চান ${appLabel}-এর পেছনে কে আছেন? দেখুন ';
	@override String get aboutUsLinkLabel => 'আমাদের সম্পর্কে';
	@override String get thankYouMessage => 'ধন্যবাদ! আমরা আবার অন্য সময় জিজ্ঞাসা করব।';
}

// Path: health
class _TranslationsHealthBn implements TranslationsHealthEn {
	_TranslationsHealthBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'স্বাস্থ্য সংযোগে সিঙ্ক করা যায়নি';
	@override String get mealSynced => 'খাবার স্বাস্থ্য সংযোগের সাথে সিঙ্ক হয়েছে';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesBn implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionBn foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionBn._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisBn aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisBn._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationBn healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationBn._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderBn implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার লিঙ্গ কি?';
	@override String get description => 'লিঙ্গ আমাদের আপনার বেসাল মেটাবলিজম রেট (BMR) সঠিকভাবে হিসাব করতে সাহায্য করে।';
	@override String get next => 'পরবর্তী';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightBn implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার উচ্চতা কত?';
	@override String get description => 'আপনার উচ্চতা আমাদের আপনার BMI এবং শক্তির প্রয়োজনগুলি সঠিকভাবে হিসাব করতে সাহায্য করে।';
	@override String get metric => 'মেট্রিক';
	@override String get imperial => 'ইম্পেরিয়াল';
	@override String get next => 'পরবর্তী';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightBn implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'আপনার বর্তমান ওজন কত?';
	@override String get currentDescription => 'আপনার বর্তমান ওজন আপনার দৈনিক লক্ষ্যগুলো ব্যক্তিগতকরণের জন্য অপরিহার্য।';
	@override String get targetTitle => 'আপনার লক্ষ্য ওজন কত?';
	@override String get targetDescription => 'লক্ষ্য ওজন নির্ধারণ করা আমাদের আপনার দীর্ঘমেয়াদী পরিকল্পনা নির্ধারণ করতে সাহায্য করে।';
	@override String get metric => 'মেট্রিক';
	@override String get imperial => 'ইম্পেরিয়াল';
	@override String get next => 'পরবর্তী';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeBn implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার জন্মদিন কখন?';
	@override String get description => 'আপনার বয়স আমাদের আপনার ক্যালোরির প্রয়োজন সঠিকভাবে হিসাব করতে সাহায্য করে।';
	@override String get next => 'পরবর্তী';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleBn implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'আবশ্যক গঠন';
	@override String get healthy => 'সুস্থ';
	@override String get overweight => 'অতিরিক্ত ওজন';
	@override String get obese => 'মোটা';
	@override late final _TranslationsOnboardingBmiScaleCategoriesBn categories = _TranslationsOnboardingBmiScaleCategoriesBn._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesBn messages = _TranslationsOnboardingBmiScaleMessagesBn._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalBn implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার লক্ষ্য কি?';
	@override String get description => 'যা আপনি অর্জন করতে চান তা বর্ণনা করে এমন লক্ষ্যটি বেছে নিন';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelBn implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনি কতটা সক্রিয়?';
	@override String get description => 'এটি আমাদের আপনার দৈনিক ক্যালোরির প্রয়োজনগুলি আরও সঠিকভাবে হিসাব করতে সাহায্য করে';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectBn implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্বাস্থ্য সংযোগের সাথে সংযুক্ত করুন';
	@override String get description => 'বৃহত্তর অন্তর্দৃষ্টি এবং স্বয়ংক্রিয় ক্যালোরি ট্র্যাকিংয়ের জন্য আপনার স্বাস্থ্য তথ্য সিঙ্ক করুন';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingBn automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingBn._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsBn progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsBn._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationBn seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationBn._(_root);
	@override String get connected => 'স্বাস্থ্য সংযোগ সংযুক্ত';
	@override String get notConnected => 'স্বাস্থ্য সংযোগ সংযুক্ত নয়';
	@override String get setup => 'স্বাস্থ্য সংযোগ সেটআপ করুন';
	@override String get skipForNow => 'এখন বাদ দিন';
	@override String get statusConnected => 'স্বাস্থ্য সংযোগ সংযুক্ত হয়েছে।';
	@override String get statusSuccess => 'স্বাস্থ্য সংযোগ সফলভাবে সংযুক্ত হয়েছে!';
	@override String statusPermissionDenied({required Object appLabel}) => '${appLabel} এর জন্য আপনার ফোনের সেটিংস থেকে স্বাস্থ্য সংযোগের অনুমতি সক্ষম করুন।';
	@override String statusError({required Object error}) => 'স্বাস্থ্য সংযোগ সেটআপ করতে ত্রুটি: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementBn implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessBn trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessBn._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileBn healthProfile = _TranslationsOnboardingReinforcementHealthProfileBn._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleBn goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleBn._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryBn implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার AI সারাংশ';
	@override String get logMore => 'পরবর্তী কয়েক দিনে আরও খাবার লগ করুন যাতে আপনি আপনার ব্যক্তিগতকৃত AI অন্তর্দৃষ্টি পেতে পারেন।';
	@override String get loading => 'আপনার সারাংশ লোড হচ্ছে...';
	@override String mealCount({required Object count}) => '${count}টি খাবার লগ করা হয়েছে';
	@override String macroBalanceScore({required Object score}) => 'সন্তুলন স্কোর ${score}';
	@override String get topFoods => 'শীর্ষ খাবার';
	@override String get trendUp => 'ক্যালরি বাড়ছে';
	@override String get trendDown => 'ক্যালরি কমছে';
	@override String get trendSteady => 'ক্যালরি স্থিতিশীল';
	@override String generatedAt({required Object time}) => 'হালনাগাদ ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalBn implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার দৈনিক লক্ষ্য নির্ধারণ করুন';
	@override String get titleSet => 'আপনার দৈনিক লক্ষ্য';
	@override String get description => 'আপনার সাস্থ্য যাত্রা শুরু করার জন্য প্রস্তুত? আপনার অগ্রগতি শুরু করার জন্য নিচে আপনার দৈনিক ক্যালোরি টার্গেট সেট করুন।';
	@override String get descriptionSet => 'আপনার কম্পাস সেট! এটি আপনার যাওয়ার জন্য দৈনিক ক্যালোরি নির্দেশিকা।';
	@override String get yourGoal => 'আপনার লক্ষ্য';
	@override String get goal => 'লক্ষ্য';
	@override String get dailyCalories => 'দৈনিক ক্যালোরি (kcal)';
	@override String get setGoal => 'লক্ষ্য নির্ধারণ করুন';
	@override String get intake => 'গ্রহণ';
	@override String get burned => 'পোড়ানো';
	@override String get weightImpact => 'ওজন প্রভাব';
	@override String get estLoss => 'আনুমানিক হারানো';
	@override String get estGain => 'আনুমানিক অর্জন';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryBn implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'দৈনিক সারাংশ';
	@override String get calories => 'ক্যালোরি';
	@override String get carbs => 'কার্বস';
	@override String get protein => 'প্রোটিন';
	@override String get fat => 'চর্বি';
	@override String get fiber => 'ফাইবার';
	@override String get grams => 'গ্রাম';
	@override String get chartAccessibilityLabel => 'ম্যাক্রো পুষ্টি চার্ট';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressBn implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আজকের ম্যাক্রো বিভাজন';
	@override String get target => 'টার্গেট';
	@override String get current => 'বর্তমান';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryBn implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => '7-দিনের ম্যাক্রো ইতিহাস';
	@override String get trendTitle => 'আজকের প্রবণতা';
	@override String peakHour({required Object hour}) => 'শীর্ষ সময়: ${hour}:00';
	@override String get noHistoryYet => 'এখনো কোন ইতিহাস নেই';
	@override String get startLogging => 'আপনার খাবারগুলি লগ করতে শুরু করুন যে এখানে আপনার\n7-দিনের ম্যাক্রো প্রবণতা দেখতে';
}

// Path: home.mealLog
class _TranslationsHomeMealLogBn implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'লগ করা খাবার';
	@override String get emptyMessage => 'এখানে আপনার শেষ খাবারের ছবি তুলুন।';
	@override String get noMealsToday => 'আজ জন্য কোন খাবার রেকর্ড করা হয়নি';
	@override String get seeAllMeals => 'সব খাবার দেখুন';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionBn implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI দিয়ে দ্রুত যোগ করুন';
	@override String get description => 'আপনার খাবার বর্ণনা করুন, এবং AI এর বিস্তারিত কাজ করুন।';
	@override String get hint => 'যেমন, সকালের নাস্তা ছিল একটি বড় বাটি ওটমিল একটি স্লাইস করা কলা এবং একটি স্কুপ ওয়ে ...';
	@override String get analyzeMeal => 'খাবার বিশ্লেষণ করুন';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsBn implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রিয় খাবার';
	@override String get description => 'আপনার প্রিয় খাবারগুলোর মধ্যে একটি দ্রুত যোগ করুন।';
	@override String get noFavorites => 'এখনো কোন প্রিয় খাবার নেই।';
	@override String get addFavoriteHint => 'একটি খাবারে একটি তারকা ক্লিক করুন এটি একটি প্রিয় হিসাবে চিহ্নিত করতে।';
	@override String get seeAll => 'সব দেখুন';
	@override String get add => 'যোগ করুন';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapBn implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'নিজস্ব খাবার স্ন্যাপ & ট্র্যাক করুন';
	@override String get description => 'AI বিশ্লেষণের জন্য আপনার খাবারের একটি ছবি তোলার জন্য আপনার ক্যামেরা ব্যবহার করুন।';
	@override String get openCamera => 'ক্যামেরা খুলুন';
	@override String get gallery => 'গ্যালারি';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthBn implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্বাস্থ্য সংযোগের সাথে সিঙ্ক করুন';
	@override String get description => 'আপনার পুষ্টির ডেটা স্বাস্থ্য সংযোগের সাথে সিঙ্ক করুন';
	@override String get install => 'স্থাপন করুন';
	@override String get connect => 'সংযুক্ত করুন';
}

// Path: meal.nutrition
class _TranslationsMealNutritionBn implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get calories => 'ক্যালোরি';
	@override String get carbs => 'কার্বস (জি)';
	@override String get protein => 'প্রোটিন (জি)';
	@override String get fat => 'চর্বি (জি)';
	@override String get fiber => 'ফাইবার (জি)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationBn implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'খাবার মুছুন';
	@override String get message => 'আপনি কি নিশ্চিত যে আপনি এই খাবারের এন্ট্রি মুছতে চান?';
	@override String get cancel => 'বাতিল করুন';
	@override String get delete => 'মুছুন';
}

// Path: meal.variation
class _TranslationsMealVariationBn implements TranslationsMealVariationEn {
	_TranslationsMealVariationBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'প্রশ্ন ${current}/${total}';
	@override String get noVariationsAvailable => 'কোনও বিকল্প উপলব্ধ নেই';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsBn implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get recent => 'সাম্প্রতিক';
	@override String get calories => 'ক্যালোরি';
	@override String get alphabetical => 'অক্ষরক্রম';
}

// Path: profile.sections
class _TranslationsProfileSectionsBn implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get profile => 'প্রোফাইল';
	@override String get basicInformation => 'মৌলিক তথ্য';
	@override String get goalsAndActivity => 'লক্ষ্য ও কার্যকলাপ';
	@override String get calculatedValues => 'হিসাব করা মান';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesBn implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'দৈনিক লক্ষ্য';
	@override String get calPerDay => 'ক্যালরি/দিন';
	@override String get notAvailable => 'অনুপলব্ধ';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsBn implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ব্যক্তিগত তথ্য';
	@override String get physicalMeasurements => 'শারীরিক পরিমাপ';
	@override String get goalsAndActivity => 'লক্ষ্য ও কার্যকলাপ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersBn implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get male => 'পুরুষ';
	@override String get female => 'মহিলা';
	@override String get other => 'অন্যান্য';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsBn implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightBn loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightBn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightBn maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightBn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightBn gainWeight = _TranslationsEditProfileWeightGoalsGainWeightBn._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsBn implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryBn sedentary = _TranslationsEditProfileActivityLevelsSedentaryBn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveBn lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveBn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveBn moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveBn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveBn veryActive = _TranslationsEditProfileActivityLevelsVeryActiveBn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveBn extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveBn._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsBn implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get profile => 'প্রোফাইল';
	@override String get localization => 'স্থানীয়করণ';
	@override String get notifications => 'বিজ্ঞপ্তি';
	@override String get healthConnect => 'স্বাস্থ্য সংযোগ';
	@override String get supportAndLegal => 'সমর্থন ও আইন';
	@override String get about => 'আমাদের সম্পর্কে';
	@override String get dangerZone => 'বিপদ অঞ্চল';
	@override String get developer => 'ডেভেলপার';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileBn implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রোফাইল সম্পাদনা করুন';
	@override String get subtitle => 'আপনার ব্যক্তিগত তথ্য আপডেট করুন';
}

// Path: settings.language
class _TranslationsSettingsLanguageBn implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ভাষা';
	@override String get subtitle => 'আপনার পছন্দের ভাষা নির্বাচন করুন';
	@override String get searchHint => 'ভাষা অনুসন্ধান করুন...';
	@override String get noResults => 'কোন ফলাফল পাওয়া যায়নি';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitBn implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'উচ্চতার ইউনিট';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitBn implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ওজনের ইউনিট';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersBn implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'খাবারের রিমাইন্ডার';
	@override String get subtitle => 'সঠিক সময়ে সতর্কতা দিয়ে পথে রাখতে';
}

// Path: settings.theme
class _TranslationsSettingsThemeBn implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'থিম';
	@override String get light => 'লাইট';
	@override String get dark => 'ডার্ক';
	@override String get system => 'সিস্টেম';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackBn implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ফিডব্যাক পাঠান';
	@override String subtitle({required Object appLabel}) => '${appLabel} উন্নত করতে আমাদের সাহায্য করুন';
	@override String emailSubject({required Object appLabel}) => '${appLabel} অ্যাপ ফিডব্যাক';
	@override String get emailBodyPrefix => 'অনুগ্রহ করে আপনার মন্তব্য নীচে লেখুন:';
	@override String get appVersion => 'অ্যাপ সংস্করণ';
	@override String get device => 'যন্ত্র';
	@override String get osVersion => 'OS সংস্করণ';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryBn implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'খাবারের ইতিহাস রপ্তানি';
	@override String get subtitle => 'আপনি লগ করা খাবারের CSV শেয়ার করুন';
	@override String get shareText => 'আপনার Calorify-এর খাবারের ইতিহাস রপ্তানি';
	@override String failed({required Object error}) => 'খাবারের ইতিহাস রপ্তানি করা যায়নি: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataBn implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'সকল তথ্য মুছুন';
	@override String get subtitle => 'আপনার সমস্ত তথ্য স্থায়ীভাবে মুছুন';
	@override String get confirmationTitle => 'সকল তথ্য মুছতে?';
	@override String get confirmationMessage => 'এই পদক্ষেপটি পূর্বাবস্থায় ফেরানো যাবে না। আপনার সমস্ত লগ করা খাবার, প্রিয় এবং প্রোফাইল সেটিংস স্থায়ীভাবে মুছে যাবে।';
	@override String get cancel => 'বাতিল করুন';
	@override String get clearEverything => 'সব মুছুন';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsBn implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ডিবাগ অপশন';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectBn implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্বাস্থ্য সংযোগ';
	@override String get subtitle => 'অনুমতিগুলি দেখুন এবং পরিচালনা করুন';
	@override late final _TranslationsSettingsHealthConnectUnavailableBn unavailable = _TranslationsSettingsHealthConnectUnavailableBn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsBn permissions = _TranslationsSettingsHealthConnectPermissionsBn._(_root);
	@override String get managePermissions => 'অনুমতিগুলি পরিচালনা করুন';
	@override String get openSettings => 'হেলথ সংযোগ সেটিংস খুলুন';
	@override String get requestPermissions => 'অনুমতি প্রার্থনা করুন';
	@override String get permissionRequestCancelledOrFailed => 'অনুমতি অনুরোধটি বাতিল করা হয়েছে বা ব্যর্থ হয়েছে। অনুগ্রহ করে আবার চেষ্টা করুন অথবা Health Connect সেটিংসে ম্যানুয়ালি অনুমতি দিন।';
	@override String get permissionRequestFailed => 'অনুমতি অনুরোধ করা যায়নি। অনুগ্রহ করে আবার চেষ্টা করুন অথবা Health Connect সেটিংসে ম্যানুয়ালি অনুমতি দিন।';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutBn implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আমাদের সম্পর্কে';
	@override String get tagline => 'দ্রুত, নিখুঁত এবং গোপনীয়তা-প্রথম ক্যালোরি জানা';
	@override late final _TranslationsSettingsAboutOurStoryBn ourStory = _TranslationsSettingsAboutOurStoryBn._(_root);
	@override late final _TranslationsSettingsAboutPrivacyBn privacy = _TranslationsSettingsAboutPrivacyBn._(_root);
	@override late final _TranslationsSettingsAboutDeveloperBn developer = _TranslationsSettingsAboutDeveloperBn._(_root);
	@override late final _TranslationsSettingsAboutFeedbackBn feedback = _TranslationsSettingsAboutFeedbackBn._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoBn implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'বিল্ড ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastBn implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'সকালের নাস্তার সময়! 🍳';
	@override String get body => 'আপনার সকালের নাস্তা লগ করতে ভুলবেন না';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchBn implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'মধ্যাহ্নভোজনের সময়! 🥗';
	@override String get body => 'আপনার মধ্যাহ্নভোজন লগ করার সময় হয়';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerBn implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'রাতের খাবারের সময়! 🍽️';
	@override String get body => 'আপনার রাতের খাবার লগ করতে ভুলবেন না';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackBn implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'নাশতার সময়! 🍎';
	@override String get body => 'স্বাস্থ্যকর নাশতার সময়';
}

// Path: notifications.test
class _TranslationsNotificationsTestBn implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পরীক্ষার বিজ্ঞপ্তি';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapBn implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} আনুমানিক পুষ্টির তথ্য প্রদান করে। সঠিকতা আপনার ইনপুট এবং খাবারের পরিবর্তনের ওপর নির্ভর করে। একটি গাইড হিসেবে ব্যবহার করুন, Definitive source হিসেবে নয়। ব্যক্তিগত খাদ্যগত পরামর্শের জন্য একটি পেশাদারের সাথে পরামর্শ করুন।';
	@override late final _TranslationsDisclaimerSnapPortionSizeBn portionSize = _TranslationsDisclaimerSnapPortionSizeBn._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsBn preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsBn._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsBn ingredients = _TranslationsDisclaimerSnapIngredientsBn._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsBn databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsBn._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateBn implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ওজনের আনুমানিক সম্পর্কে';
	@override String get description => 'প্রোজেক্টেড ওজন পরিবর্তনটি সাধারণ ক্যালোরি গ্রহণ/ব্যয় মডেলের উপর ভিত্তি করে একটি তাত্ত্বিক মান। এটি শুধুমাত্র অনুপ্রেরণামূলক নির্দেশিকা হিসেবে তৈরি করা হয়েছে, আপনার আসল ওজনের পূর্বাভাস হিসেবে নয়।';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyBn calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyBn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsBn biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsBn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightBn waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightBn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceBn professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceBn._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsBn implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get description => 'এই মেট্রিক্সগুলো আপনাকে আপনার শরীরের শক্তির প্রয়োজন বুঝতে সাহায্য করে এবং আপনার পুষ্টির লক্ষ্য নির্দেশনা দেয়।';
	@override late final _TranslationsDisclaimerHealthMetricsBmrBn bmr = _TranslationsDisclaimerHealthMetricsBmrBn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeBn tdee = _TranslationsDisclaimerHealthMetricsTdeeBn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalBn dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalBn._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureBn implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ক্যালোরি ব্যয় অনুমান';
	@override String get description => 'যখন Health Connect ডেটা উপলব্ধ থাকে না, আমরা আপনার বেসাল মেটাবলিক রেট (BMR) এবং ক্রিয়াকলাপের স্তর (TDEE) ব্যবহার করে আজকে যত ক্যালোরি বার্ন হয়েছে তা অনুমান করি, এবং দিনের যে অংশটি কেটে গেছে তার অনুপাতে স্কেল করি।';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedBn howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedBn._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceBn professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceBn._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionBn implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'বুদ্ধিমান খাদ্য চিহ্নিতকরণ';
	@override String get description => 'একটি ছবি তোলুন এবং AI-কে আপনার খাবার সনাক্ত করতে দিন';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisBn implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI বিশ্লেষণ';
	@override String get description => 'আপনার বর্ণনার সাহায্যে তাৎক্ষণিক পুষ্টিগত তথ্য পান';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationBn implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্বাস্থ্য সংযোগ';
	@override String get description => 'বৃহত্তর অন্তর্দৃষ্টি পেতে স্বাস্থ্য সংযোগের সাথে যোগাযোগ করুন';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesBn implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'আবশ্যক গঠন';
	@override String get healthyWeight => 'সুস্থ ওজন';
	@override String get overweight => 'অতিরিক্ত ওজন';
	@override String get obese => 'মোটা';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesBn implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'আমরা আপনাকে পুষ্টিকর খাদ্যের মাধ্যমে একটি স্বাস্থ্যকর পরিকল্পনা তৈরি করতে সাহায্য করতে পারি।';
	@override String get healthy => 'দারুণ কাজ! আপনি একটি স্বাস্থ্যকর পরিসরে আছেন। আমরা আপনাকে আপনার সক্রিয়তা এবং শক্তির স্তর বজায় রাখতে সাহায্য করবো।';
	@override String overweight({required Object appLabel}) => '${appLabel} আপনাকে স্বাচ্ছন্দ্যে লক্ষ্য অর্জনের জন্য AI-সক্ষম ট্র্যাকিংয়ের মাধ্যমে আপনার সফর সহজ করবে।';
	@override String get obese => 'আপনার স্বাস্থ্য লক্ষ্যগুলি পূরণ করার জন্য ব্যক্তিগতকৃত নির্দেশনা এবং টেকসই কৌশলগুলির সঙ্গে আমরা আপনাকে সমর্থন করতে এখানে আছি।';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingBn implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্বয়ংক্রিয় ক্যালোরি ট্র্যাকিং';
	@override String get description => 'আপনার ফিটনেস অ্যাপ থেকে পোড়ানো ক্যালোরি ট্র্যাক করুন';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsBn implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'গ্রহণযোগ্য বিশ্লেষণ';
	@override String get description => 'আপনার স্বাস্থ্য প্রবণতা সম্পর্কে বিস্তারিত বিশ্লেষণের সুবিধা পান';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationBn implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'নিরবচ্ছিন্ন সংযোগ';
	@override String get description => 'আপনার প্রিয় স্বাস্থ্য অ্যাপ থেকে ডেটা সিঙ্ক করুন';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessBn implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনি একা নয়';
	@override String get genericMessage => 'গবেষণায় দেখা গেছে যে ধারাবাহিক ট্র্যাকিং দীর্ঘমেয়াদী সফলতার শীর্ষ পূর্বাভাসক।';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'একটি ${age} বছর বয়সী ${gender} যে ${goal} করতে চায়, ধারাবাহিক ট্র্যাকিং সফলতার শীর্ষ পূর্বাভাসক।';
	@override String closingMessage({required Object appLabel}) => '${appLabel} এটা ম্যানুয়ালি করার চেয়ে ১০ গুণ সহজ করে তোলে।';
	@override String get getStartedTitle => 'শুরু করার জন্য তৈরি?';
	@override String get tipPhoto => 'আপনার খাবারের ছবি তুলুন তাত্ক্ষণিক বিশ্লেষণের জন্য';
	@override String get tipConsistency => 'অর্থপূর্ণ উন্নতি দেখতে নিয়মিত লগ করুন';
	@override String get tipProgress => 'প্রতিদিন আপনার অগ্রগতি ট্র্যাক করুন যাতে আপনি অনুপ্রাণিত থাকেন';
	@override String get button => 'চলুন যাওয়া যাক';
	@override String get defaultGender => 'ব্যক্তি';
	@override String get defaultGoal => 'স্বাস্থ্যকর আপনি';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileBn implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার স্বাস্থ্য প্রোফাইল';
	@override String bmiDescription({required Object bmi}) => 'আপনার পরিমাপের ভিত্তিতে, আপনার BMI ${bmi}।';
	@override String get finalizeDescription => 'আপনার অভিজ্ঞতা কাস্টমাইজ করতে চলুন আপনার প্রোফাইলটি চূড়ান্ত করুন।';
	@override String get goalGain => 'বাড়ানো';
	@override String get goalLose => 'হ্রাস করা';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'আপনার লক্ষ্য অর্জনের জন্য, আপনাকে ${direction} ${diff} ${unit} করতে হবে।';
	@override String get goalReached => 'আপনার লক্ষ্য ওজন অর্জন হয়েছে! আমরা আপনাকে এটিকে বজায় রাখতে সাহায্য করবো।';
	@override String get button => 'চলুন যাওয়া যাক';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleBn implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'শুভ সূচনা!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'আপনি ${goalText} এর দিকে প্রথম পদক্ষেপ নিয়েছেন। যেহেতু আপনি ${activityText}, ${appLabel} আপনার লক্ষ্যগুলোকে আপনার জীবনধারার সাথে সামঞ্জস্য করতে সমন্বয় করবে।';
	@override String get personalizedTargets => 'ব্যক্তিগতকৃত ক্যালোরির লক্ষ্য';
	@override String get aiMealDetection => 'AI-চালিত খাবার সনাক্তকরণ';
	@override String get macroBreakdowns => 'বিন্যাসিত ম্যাক্রো-নিউট্রিয়েন্ট বিভাজন';
	@override String get button => 'চলুন যাওয়া যাক';
	@override String get defaultGoal => 'আপনার লক্ষ্য';
	@override String get defaultActivity => 'সক্রিয়';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightBn implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ওজন কমানো';
	@override String get description => 'ওজন কমানোর জন্য একটি ক্যালোরি ঘাটতি তৈরি করুন';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightBn implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ওজন বজায় রাখা';
	@override String get description => 'আপনার বর্তমান ওজন বজায় রাখুন';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightBn implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ওজন বাড়ানো';
	@override String get description => 'ওজন বাড়ানোর জন্য একটি ক্যালোরি উদ্বৃত্ত তৈরি করুন';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryBn implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'অসক্রিয়';
	@override String get description => 'কম বা কোনো ব্যায়াম নেই';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveBn implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'হালকাভাবে সক্রিয়';
	@override String get description => 'সপ্তাহে ১-৩ দিন হালকা ব্যায়াম';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveBn implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'মধ্যমভাবে সক্রিয়';
	@override String get description => 'সপ্তাহে ৩-৫ দিন মাঝারি ব্যায়াম';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveBn implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'খুব সক্রিয়';
	@override String get description => 'সপ্তাহে ৬-৭ দিন কঠিন ব্যায়াম';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveBn implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'অতিশয় সক্রিয়';
	@override String get description => 'খুব কঠিন ব্যায়াম, শারীরিক কাজ';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableBn implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্বাস্থ্য সংযোগ অপ্রাপ্য';
	@override String get description => 'এই ডিভাইসে স্বাস্থ্য সংযোগ উপলব্ধ নেই। অনুগ্রহ করে Play Store থেকে স্বাস্থ্য সংযোগ ইনস্টল করুন (Android 9+) অথবা Android 14+ এ আপডেট করুন।';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsBn implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'অনুমতিগুলি';
	@override String get description => 'স্বাস্থ্য সংযোগ সংহতির জন্য নিম্নলিখিত অনুমতিগুলি অনুরোধ করা হচ্ছে:';
	@override String get granted => 'অনুমোদিত';
	@override String get notGranted => 'অনুমোদিত নয়';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedBn caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedBn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadBn nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadBn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteBn nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteBn._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryBn implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আমাদের গল্প';
	@override String content({required Object appLabel}) => '${appLabel} একটি সাধারণ হতাশা থেকে জন্মেছে: বেশিরভাগ ক্যালোরি ট্র্যাকিং অ্যাপ অত্যধিক জটিল, ক্রমাগত ম্যানুয়াল ইনপুট দাবি করে, উচ্চ সাবস্ক্রিপশন ফি দাবি করে, বা গোপনীয়তায় আপস করে।\n\nএকজন স্বতন্ত্র ডেভেলপার হিসাবে, আমি কিছু সহজ এবং ন্যায়সঙ্গত তৈরি করতে চেয়েছিলাম - একটি অ্যাপ যা AI ব্যবহার করে পরিশ্রম হ্রাস করতে, ব্যবহার করতে দ্রুত এবং বিনামূল্যে থাকতে, এবং আপনার স্বাস্থ্য তথ্যের প্রতি শ্রদ্ধাশীল থাকা।\n\n${appLabel} হল সেই অ্যাপ যা আমি চাইতাম যে বিদ্যমান থাকে: কোনো অ্যাকাউন্ট নেই, কোনো ট্র্যাকিং নেই, কোনো বিজ্ঞাপন নেই - কেবল পরিষ্কার, ব্যবহারিক অন্তর্দৃষ্টি এবং আপনার স্বাস্থ্য লক্ষ্য।';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyBn implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার গোপনীয়তা গুরুত্বপূর্ণ';
	@override String get description => 'গোপনীয়তা একটি পরবর্তী চিন্তা নয় - এটি একটি ডিজাইন নীতি। এটার বাস্তবে মানে কী:';
	@override String get noAccounts => 'অ্যাকাউন্ট তৈরির প্রয়োজন নেই\nঅ্যাপটি সাথে সাথে ব্যবহার করুন। কোন সাইন আপ, কোন পরিচিতি নেই।';
	@override String noTracking({required Object appLabel}) => 'কোন ব্যবহারগত ট্র্যাকিং নেই\n${appLabel} আপনার কার্যকলাপ পর্যালোচনা করে না, ব্যবহারের প্রোফাইল তৈরি করে না, বা আপনাকে অ্যাপ বা ওয়েবসাইটের মধ্যে ট্র্যাক করে না।';
	@override String noAds({required Object appLabel}) => 'ডিজাইন অনুযায়ী বিজ্ঞাপন মুক্ত\n${appLabel} বিজ্ঞাপন বা ডেটা-চালিত মুনাফা ছাড়া কাজ করার জন্য তৈরি।';
	@override String get noDataSelling => 'কোন ডেটা বিক্রি নেই\nআপনার স্বাস্থ্য তথ্য কখনো বিক্রি হয় না বা তৃতীয় পক্ষের সঙ্গে শেয়ার করা হয় না।';
	@override String get localStorage => 'স্থানীয়-প্রথম সংগ্রহস্থল\nআপনার তথ্য আপনার ডিভাইসে থাকে।';
	@override String get privacyPolicy => 'গোপনীয়তা নীতি';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperBn implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'একজন স্বতন্ত্র ডেভেলপার দ্বারা তৈরি';
	@override String description({required Object appLabel}) => '${appLabel} একটি একক স্বতন্ত্র ডেভেলপার দ্বারা নির্মিত এবং রক্ষণাবেক্ষণ করা হয়, যিনি শান্ত, গোপনীয়তা-সম্মানজনক স্বাস্থ্য সফটওয়্যার তৈরি করতে কেন্দ্রীভূত।\n\nপর্যালোচনাগুলি ব্যক্তিগতভাবে পড়া হয় এবং অ্যাপটির দিকনির্দেশনা নির্ধারণ করতে সহায়তা করে।';
	@override String get website => 'ওয়েবসাইট';
	@override String get email => 'ইমেল';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackBn implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} পছন্দ করছেন?';
	@override String description({required Object appLabel}) => 'আপনার প্রতিক্রিয়া ${appLabel} কে সবার জন্য আরও ভাল করে তোলে।';
	@override String get rateApp => 'প্লে স্টোরে রেট দিন';
	@override String get sendFeedback => 'প্রতিক্রিয়া পাঠান';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeBn implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পোর্শনের আকার';
	@override String get description => 'অনুমানের সঠিকতা আপনার সঠিকভাবে পরিমাণ নির্ধারণের উপর নির্ভর করে।';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsBn implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রস্তুতি পদ্ধতি';
	@override String description({required Object appLabel}) => 'রান্নার পদ্ধতিগুলি খাবারের পুষ্টিগত মূল্যের ওপর গুরুত্বপূর্ণভাবে প্রভাব ফেলতে পারে। ${appLabel} এর আনুমানিক হিসাব এই পরিবর্তনগুলো সবসময় অন্তর্ভুক্ত নাও করতে পারে।';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsBn implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'উপকরণ';
	@override String get description => 'যথেষ্ট উপকরণ নিয়ে গঠিত জটিল খাবারগুলি কম সঠিক অনুমান প্রদান করে।';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsBn implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ডেটাবেসের সীমাবদ্ধতা';
	@override String description({required Object appLabel}) => '${appLabel} এর খাবারের ডাটাবেজ ব্যাপক কিন্তু এতে প্রতিটি খাদ্য আইটেম বা ভ্যারিয়েশন অন্তর্ভুক্ত নাও হতে পারে।';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyBn implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ক্যালোরির সঠিকতা';
	@override String get description => 'এই অনুমানটি আপনার ট্র্যাক করা ক্যালোরির গ্রহণ ও ব্যয় অনুযায়ী শুধুমাত্র সঠিক। অসঠিক লগিং একটি অসঠিক পূর্বাভাস সৃষ্টি করবে।';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsBn implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'জীববৈচিত্র্যগত উপাদান';
	@override String description({required Object appLabel}) => 'বাস্তব ওজন কমানো/বাড়ানো বিপাক, হরমোন, ঘুম, চাপ, জল দেহের প্রভাব ও অন্যান্য ব্যক্তিগত ফ্যাক্টরের দ্বারা প্রভাবিত হয় যা ${appLabel} মাপতে পারে না।';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightBn implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'জল ওজন এবং পরিবর্তন';
	@override String get description => 'সাধারণ দৈনিক ওজন ব্যাপকভাবে জল ধারণ, পাচন এবং সময়ের কারনে পরিবর্তিত হতে পারে। অনুমানগুলি এই দৈনিক পরিবর্তনগুলির হিসাব করে না।';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceBn implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পেশাদার নির্দেশিকা';
	@override String get description => 'এই অনুমানটি চিকিৎসার সিদ্ধান্ত নেওয়ার জন্য ব্যবহার করবেন না। ব্যক্তিগত ওজন ব্যবস্থাপনাযোগ্য পরামর্শের জন্য সর্বদা স্বাস্থ্যসেবা পেশাদার অথবা নিবন্ধিত ডায়েটিশিয়ানের সাথে পরামর্শ করুন।';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrBn implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'বিএমআর';
	@override String get description => 'বেসাল মেটাবলিক রেট (বিএমআর) হল সেই সংখ্যক ক্যালোরি যা আপনার শরীর বিশ্রামে পোড়ায় মৌলিক কার্যক্রম যেমন শ্বাসপ্রশ্বাস এবং রক্তসঞ্চালন রক্ষার জন্য। বিএমআর আপনার বয়স, লিঙ্গ, উচ্চতা এবং ওজনের উপর নির্ভর করে। একটি উচ্চ বিএমআর মানে হল আপনার শরীর স্বাভাবিকভাবেই বিশ্রামে আরও ক্যালোরি পোড়ায়, প্রধানত আরও পেশী ভরের কারণে, কম বয়সের জন্য, বা পুরুষ হওয়ার কারণে। একটি নিম্ন বিএমআর সাধারণত কম পেশী ভর, বেশি বয়স, বা নারী হওয়ার ইঙ্গিত দেয়।';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeBn implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'টিডিইই';
	@override String get description => 'মোট দৈনিক শক্তি ব্যয় (টিডিইই) হল আপনার দৈনিক পোড়ানো মোট ক্যালোরি, এতে আপনার বিএমআর এবং শারীরিক কার্যকলাপ ও দৈনন্দিন চলাফেরা থেকে প্রাপ্ত ক্যালোরি অন্তর্ভুক্ত। টিডিইই আপনার বিএমআর এবং কার্যকলাপের স্তরের উপর নির্ভর করে। একটি উচ্চ টিডিইই মানে হল আপনি মোটর ক্ষেত্রে বেশি ক্যালোরি পোড়াচ্ছেন, সাধারণত বেশি সক্রিয় হওয়া বা উচ্চ বিএমআর থাকার কারণে। একটি নিম্ন টিডিইই কম দৈনন্দিন কার্যক্রম বা কম বিএমআর নির্দেশ করে।';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalBn implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'দৈনিক লক্ষ্য';
	@override String get description => 'দৈনিক লক্ষ্য হল আপনার টিডিইই এবং ওজন লক্ষ্য অনুযায়ী আপনার সুপারিশকৃত দৈনিক ক্যালোরি গ্রহণ। ওজন কমানোর জন্য, আপনাকে আপনার টিডিইই-এর চেয়ে কম ক্যালোরি গ্রহণ করতে হবে। ওজন বজায় রাখার জন্য, আপনাকে আপনার টিডিইই-কে মানানসই করতে হবে। ওজন বাড়ানোর জন্য, আপনাকে আপনার টিডিইই-এর চেয়ে বেশি ক্যালোরি গ্রহণ করতে হবে। এটি আপনাকে স্বাস্থ্যকর গতি অনুসরণ করে আপনার কাঙ্খিত ওজন পরিবর্তন অর্জনে সাহায্য করে।';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedBn implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'কিভাবে অনুমানটি গণনা করা হয়';
	@override String get description => 'আমরা আপনার প্রোফাইলের উপর ভিত্তি করে TDEE গণনা করি এবং দিন অতিবাহিত অংশের অনুপাত ((ঘন্টা + মিনিট) / 24) দ্বারা গুণ করে এখন পর্যন্ত বার্ন হওয়া ক্যালোরি অনুমান করি।';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceBn implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পেশাদার নির্দেশনা';
	@override String get description => 'চিকিৎসাগত সিদ্ধান্ত নেওয়ার জন্য এই অনুমান ব্যবহার করবেন না। ব্যক্তিগতকৃত ওজন ব্যবস্থাপনার পরামর্শের জন্য সর্বদা একজন স্বাস্থ্যসেবা পেশাজীবী বা নিবন্ধিত ডায়েটিশিয়ানের সাথে পরামর্শ করুন।';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedBn implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'মোট পোড়ানো ক্যালোরি পড়ুন';
	@override String get description => 'অ্যাপটিকে স্বাস্থ্য সংযোগ থেকে আপনার মোট পোড়ানো ক্যালোরি পড়ার অনুমতি দেয়।';
	@override String get usage => 'এই অনুমতি অ্যাপে আপনার দৈনিক ক্যালোরি পোড়ানোর পরিমাণ প্রদর্শন করতে ব্যবহৃত হয়, যা আপনাকে দিনের মধ্যে আপনার মোট শক্তি খরচ বুঝতে সাহায্য করে।';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadBn implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পুষ্টির ডেটা পড়ুন';
	@override String get description => 'অ্যাপটিকে স্বাস্থ্য সংযোগ থেকে পুষ্টির ডেটা পড়ার অনুমতি দেয়।';
	@override String get usage => 'এই অনুমতি অ্যাপটিকে অন্যান্য অ্যাপসের দ্বারা লগ করা পুষ্টির তথ্য পড়তে দেয়, যা আপনার পুষ্টির একটি সমন্বিত দৃশ্য তৈরি করে।';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteBn implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পুষ্টির ডেটা লেখার অনুমতি';
	@override String get description => 'অ্যাপটিকে স্বাস্থ্য সংযোগে পুষ্টির ডেটা লেখার অনুমতি দেয়।';
	@override String get usage => 'এই অনুমতি অ্যাপটিকে আপনার লগ করা খাবারগুলি স্বাস্থ্য সংযোগে সিঙ্ক করার সুযোগ দেয়, যার ফলে আপনার পুষ্টির ডেটা অন্যান্য স্বাস্থ্য ও ফিটনেস অ্যাপসে উপলব্ধ হয়।';
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
			'errors.rateLimitExceeded' => 'আপনি অনেক অনুরোধ করেছেন। দয়া করে কয়েক মুহূর্ত অপেক্ষা করুন এবং পরে আবার চেষ্টা করুন।',
			'errors.networkError' => 'নেটওয়ার্ক ত্রুটি। অনুগ্রহ করে আপনার ইন্টারনেট সংযোগ পরীক্ষা করুন।',
			'errors.unknownError' => 'কিছু ভুল হয়েছে। দয়া করে পরে আবার চেষ্টা করুন।',
			'errors.loadingProfileData' => 'প্রোফাইল তথ্য লোড করতে ত্রুটি',
			'errors.somethingWentWrong' => 'কিছু ভুল হয়েছে।',
			'errors.retry' => 'আবার চেষ্টা করুন',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} এ স্বাগতম',
			'onboarding.subtitle' => 'এটি আপনার ব্যক্তিগত পুষ্টি সঙ্গী, যা AI দ্বারা পরিচালিত',
			'onboarding.getStarted' => 'শুরু করুন',
			'onboarding.features.foodRecognition.title' => 'বুদ্ধিমান খাদ্য চিহ্নিতকরণ',
			'onboarding.features.foodRecognition.description' => 'একটি ছবি তোলুন এবং AI-কে আপনার খাবার সনাক্ত করতে দিন',
			'onboarding.features.aiAnalysis.title' => 'AI বিশ্লেষণ',
			'onboarding.features.aiAnalysis.description' => 'আপনার বর্ণনার সাহায্যে তাৎক্ষণিক পুষ্টিগত তথ্য পান',
			'onboarding.features.healthIntegration.title' => 'স্বাস্থ্য সংযোগ',
			'onboarding.features.healthIntegration.description' => 'বৃহত্তর অন্তর্দৃষ্টি পেতে স্বাস্থ্য সংযোগের সাথে যোগাযোগ করুন',
			'onboarding.gender.title' => 'আপনার লিঙ্গ কি?',
			'onboarding.gender.description' => 'লিঙ্গ আমাদের আপনার বেসাল মেটাবলিজম রেট (BMR) সঠিকভাবে হিসাব করতে সাহায্য করে।',
			'onboarding.gender.next' => 'পরবর্তী',
			'onboarding.height.title' => 'আপনার উচ্চতা কত?',
			'onboarding.height.description' => 'আপনার উচ্চতা আমাদের আপনার BMI এবং শক্তির প্রয়োজনগুলি সঠিকভাবে হিসাব করতে সাহায্য করে।',
			'onboarding.height.metric' => 'মেট্রিক',
			'onboarding.height.imperial' => 'ইম্পেরিয়াল',
			'onboarding.height.next' => 'পরবর্তী',
			'onboarding.weight.currentTitle' => 'আপনার বর্তমান ওজন কত?',
			'onboarding.weight.currentDescription' => 'আপনার বর্তমান ওজন আপনার দৈনিক লক্ষ্যগুলো ব্যক্তিগতকরণের জন্য অপরিহার্য।',
			'onboarding.weight.targetTitle' => 'আপনার লক্ষ্য ওজন কত?',
			'onboarding.weight.targetDescription' => 'লক্ষ্য ওজন নির্ধারণ করা আমাদের আপনার দীর্ঘমেয়াদী পরিকল্পনা নির্ধারণ করতে সাহায্য করে।',
			'onboarding.weight.metric' => 'মেট্রিক',
			'onboarding.weight.imperial' => 'ইম্পেরিয়াল',
			'onboarding.weight.next' => 'পরবর্তী',
			'onboarding.age.title' => 'আপনার জন্মদিন কখন?',
			'onboarding.age.description' => 'আপনার বয়স আমাদের আপনার ক্যালোরির প্রয়োজন সঠিকভাবে হিসাব করতে সাহায্য করে।',
			'onboarding.age.next' => 'পরবর্তী',
			'onboarding.bmiScale.underweight' => 'আবশ্যক গঠন',
			'onboarding.bmiScale.healthy' => 'সুস্থ',
			'onboarding.bmiScale.overweight' => 'অতিরিক্ত ওজন',
			'onboarding.bmiScale.obese' => 'মোটা',
			'onboarding.bmiScale.categories.underweight' => 'আবশ্যক গঠন',
			'onboarding.bmiScale.categories.healthyWeight' => 'সুস্থ ওজন',
			'onboarding.bmiScale.categories.overweight' => 'অতিরিক্ত ওজন',
			'onboarding.bmiScale.categories.obese' => 'মোটা',
			'onboarding.bmiScale.messages.underweight' => 'আমরা আপনাকে পুষ্টিকর খাদ্যের মাধ্যমে একটি স্বাস্থ্যকর পরিকল্পনা তৈরি করতে সাহায্য করতে পারি।',
			'onboarding.bmiScale.messages.healthy' => 'দারুণ কাজ! আপনি একটি স্বাস্থ্যকর পরিসরে আছেন। আমরা আপনাকে আপনার সক্রিয়তা এবং শক্তির স্তর বজায় রাখতে সাহায্য করবো।',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} আপনাকে স্বাচ্ছন্দ্যে লক্ষ্য অর্জনের জন্য AI-সক্ষম ট্র্যাকিংয়ের মাধ্যমে আপনার সফর সহজ করবে।',
			'onboarding.bmiScale.messages.obese' => 'আপনার স্বাস্থ্য লক্ষ্যগুলি পূরণ করার জন্য ব্যক্তিগতকৃত নির্দেশনা এবং টেকসই কৌশলগুলির সঙ্গে আমরা আপনাকে সমর্থন করতে এখানে আছি।',
			'onboarding.weightGoal.title' => 'আপনার লক্ষ্য কি?',
			'onboarding.weightGoal.description' => 'যা আপনি অর্জন করতে চান তা বর্ণনা করে এমন লক্ষ্যটি বেছে নিন',
			'onboarding.activityLevel.title' => 'আপনি কতটা সক্রিয়?',
			'onboarding.activityLevel.description' => 'এটি আমাদের আপনার দৈনিক ক্যালোরির প্রয়োজনগুলি আরও সঠিকভাবে হিসাব করতে সাহায্য করে',
			'onboarding.healthConnect.title' => 'স্বাস্থ্য সংযোগের সাথে সংযুক্ত করুন',
			'onboarding.healthConnect.description' => 'বৃহত্তর অন্তর্দৃষ্টি এবং স্বয়ংক্রিয় ক্যালোরি ট্র্যাকিংয়ের জন্য আপনার স্বাস্থ্য তথ্য সিঙ্ক করুন',
			'onboarding.healthConnect.automaticTracking.title' => 'স্বয়ংক্রিয় ক্যালোরি ট্র্যাকিং',
			'onboarding.healthConnect.automaticTracking.description' => 'আপনার ফিটনেস অ্যাপ থেকে পোড়ানো ক্যালোরি ট্র্যাক করুন',
			'onboarding.healthConnect.progressInsights.title' => 'গ্রহণযোগ্য বিশ্লেষণ',
			'onboarding.healthConnect.progressInsights.description' => 'আপনার স্বাস্থ্য প্রবণতা সম্পর্কে বিস্তারিত বিশ্লেষণের সুবিধা পান',
			'onboarding.healthConnect.seamlessIntegration.title' => 'নিরবচ্ছিন্ন সংযোগ',
			'onboarding.healthConnect.seamlessIntegration.description' => 'আপনার প্রিয় স্বাস্থ্য অ্যাপ থেকে ডেটা সিঙ্ক করুন',
			'onboarding.healthConnect.connected' => 'স্বাস্থ্য সংযোগ সংযুক্ত',
			'onboarding.healthConnect.notConnected' => 'স্বাস্থ্য সংযোগ সংযুক্ত নয়',
			'onboarding.healthConnect.setup' => 'স্বাস্থ্য সংযোগ সেটআপ করুন',
			'onboarding.healthConnect.skipForNow' => 'এখন বাদ দিন',
			'onboarding.healthConnect.statusConnected' => 'স্বাস্থ্য সংযোগ সংযুক্ত হয়েছে।',
			'onboarding.healthConnect.statusSuccess' => 'স্বাস্থ্য সংযোগ সফলভাবে সংযুক্ত হয়েছে!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => '${appLabel} এর জন্য আপনার ফোনের সেটিংস থেকে স্বাস্থ্য সংযোগের অনুমতি সক্ষম করুন।',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'স্বাস্থ্য সংযোগ সেটআপ করতে ত্রুটি: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'আপনি একা নয়',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'গবেষণায় দেখা গেছে যে ধারাবাহিক ট্র্যাকিং দীর্ঘমেয়াদী সফলতার শীর্ষ পূর্বাভাসক।',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'একটি ${age} বছর বয়সী ${gender} যে ${goal} করতে চায়, ধারাবাহিক ট্র্যাকিং সফলতার শীর্ষ পূর্বাভাসক।',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} এটা ম্যানুয়ালি করার চেয়ে ১০ গুণ সহজ করে তোলে।',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'শুরু করার জন্য তৈরি?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'আপনার খাবারের ছবি তুলুন তাত্ক্ষণিক বিশ্লেষণের জন্য',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'অর্থপূর্ণ উন্নতি দেখতে নিয়মিত লগ করুন',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'প্রতিদিন আপনার অগ্রগতি ট্র্যাক করুন যাতে আপনি অনুপ্রাণিত থাকেন',
			'onboarding.reinforcement.trackingSuccess.button' => 'চলুন যাওয়া যাক',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'ব্যক্তি',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'স্বাস্থ্যকর আপনি',
			'onboarding.reinforcement.healthProfile.title' => 'আপনার স্বাস্থ্য প্রোফাইল',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'আপনার পরিমাপের ভিত্তিতে, আপনার BMI ${bmi}।',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'আপনার অভিজ্ঞতা কাস্টমাইজ করতে চলুন আপনার প্রোফাইলটি চূড়ান্ত করুন।',
			'onboarding.reinforcement.healthProfile.goalGain' => 'বাড়ানো',
			'onboarding.reinforcement.healthProfile.goalLose' => 'হ্রাস করা',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'আপনার লক্ষ্য অর্জনের জন্য, আপনাকে ${direction} ${diff} ${unit} করতে হবে।',
			'onboarding.reinforcement.healthProfile.goalReached' => 'আপনার লক্ষ্য ওজন অর্জন হয়েছে! আমরা আপনাকে এটিকে বজায় রাখতে সাহায্য করবো।',
			'onboarding.reinforcement.healthProfile.button' => 'চলুন যাওয়া যাক',
			'onboarding.reinforcement.goalLifestyle.title' => 'শুভ সূচনা!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'আপনি ${goalText} এর দিকে প্রথম পদক্ষেপ নিয়েছেন। যেহেতু আপনি ${activityText}, ${appLabel} আপনার লক্ষ্যগুলোকে আপনার জীবনধারার সাথে সামঞ্জস্য করতে সমন্বয় করবে।',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'ব্যক্তিগতকৃত ক্যালোরির লক্ষ্য',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-চালিত খাবার সনাক্তকরণ',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'বিন্যাসিত ম্যাক্রো-নিউট্রিয়েন্ট বিভাজন',
			'onboarding.reinforcement.goalLifestyle.button' => 'চলুন যাওয়া যাক',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'আপনার লক্ষ্য',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'সক্রিয়',
			'tabs.dashboard' => 'ড্যাশবোর্ড',
			'tabs.history' => 'ঐতিহাসিক',
			'home.aiSummary.title' => 'আপনার AI সারাংশ',
			'home.aiSummary.logMore' => 'পরবর্তী কয়েক দিনে আরও খাবার লগ করুন যাতে আপনি আপনার ব্যক্তিগতকৃত AI অন্তর্দৃষ্টি পেতে পারেন।',
			'home.aiSummary.loading' => 'আপনার সারাংশ লোড হচ্ছে...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count}টি খাবার লগ করা হয়েছে',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'সন্তুলন স্কোর ${score}',
			'home.aiSummary.topFoods' => 'শীর্ষ খাবার',
			'home.aiSummary.trendUp' => 'ক্যালরি বাড়ছে',
			'home.aiSummary.trendDown' => 'ক্যালরি কমছে',
			'home.aiSummary.trendSteady' => 'ক্যালরি স্থিতিশীল',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'হালনাগাদ ${time}',
			'home.dailyGoal.title' => 'আপনার দৈনিক লক্ষ্য নির্ধারণ করুন',
			'home.dailyGoal.titleSet' => 'আপনার দৈনিক লক্ষ্য',
			'home.dailyGoal.description' => 'আপনার সাস্থ্য যাত্রা শুরু করার জন্য প্রস্তুত? আপনার অগ্রগতি শুরু করার জন্য নিচে আপনার দৈনিক ক্যালোরি টার্গেট সেট করুন।',
			'home.dailyGoal.descriptionSet' => 'আপনার কম্পাস সেট! এটি আপনার যাওয়ার জন্য দৈনিক ক্যালোরি নির্দেশিকা।',
			'home.dailyGoal.yourGoal' => 'আপনার লক্ষ্য',
			'home.dailyGoal.goal' => 'লক্ষ্য',
			'home.dailyGoal.dailyCalories' => 'দৈনিক ক্যালোরি (kcal)',
			'home.dailyGoal.setGoal' => 'লক্ষ্য নির্ধারণ করুন',
			'home.dailyGoal.intake' => 'গ্রহণ',
			'home.dailyGoal.burned' => 'পোড়ানো',
			'home.dailyGoal.weightImpact' => 'ওজন প্রভাব',
			'home.dailyGoal.estLoss' => 'আনুমানিক হারানো',
			'home.dailyGoal.estGain' => 'আনুমানিক অর্জন',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'দৈনিক সারাংশ',
			'home.dailySummary.calories' => 'ক্যালোরি',
			'home.dailySummary.carbs' => 'কার্বস',
			'home.dailySummary.protein' => 'প্রোটিন',
			'home.dailySummary.fat' => 'চর্বি',
			'home.dailySummary.fiber' => 'ফাইবার',
			'home.dailySummary.grams' => 'গ্রাম',
			'home.dailySummary.chartAccessibilityLabel' => 'ম্যাক্রো পুষ্টি চার্ট',
			'home.intakeProgress.title' => 'আজকের ম্যাক্রো বিভাজন',
			'home.intakeProgress.target' => 'টার্গেট',
			'home.intakeProgress.current' => 'বর্তমান',
			'home.intakeHistory.title' => '7-দিনের ম্যাক্রো ইতিহাস',
			'home.intakeHistory.trendTitle' => 'আজকের প্রবণতা',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'শীর্ষ সময়: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'এখনো কোন ইতিহাস নেই',
			'home.intakeHistory.startLogging' => 'আপনার খাবারগুলি লগ করতে শুরু করুন যে এখানে আপনার\n7-দিনের ম্যাক্রো প্রবণতা দেখতে',
			'home.mealLog.title' => 'লগ করা খাবার',
			'home.mealLog.emptyMessage' => 'এখানে আপনার শেষ খাবারের ছবি তুলুন।',
			'home.mealLog.noMealsToday' => 'আজ জন্য কোন খাবার রেকর্ড করা হয়নি',
			'home.mealLog.seeAllMeals' => 'সব খাবার দেখুন',
			'home.mealDescription.title' => 'AI দিয়ে দ্রুত যোগ করুন',
			'home.mealDescription.description' => 'আপনার খাবার বর্ণনা করুন, এবং AI এর বিস্তারিত কাজ করুন।',
			'home.mealDescription.hint' => 'যেমন, সকালের নাস্তা ছিল একটি বড় বাটি ওটমিল একটি স্লাইস করা কলা এবং একটি স্কুপ ওয়ে ...',
			'home.mealDescription.analyzeMeal' => 'খাবার বিশ্লেষণ করুন',
			'home.favoriteMeals.title' => 'প্রিয় খাবার',
			'home.favoriteMeals.description' => 'আপনার প্রিয় খাবারগুলোর মধ্যে একটি দ্রুত যোগ করুন।',
			'home.favoriteMeals.noFavorites' => 'এখনো কোন প্রিয় খাবার নেই।',
			'home.favoriteMeals.addFavoriteHint' => 'একটি খাবারে একটি তারকা ক্লিক করুন এটি একটি প্রিয় হিসাবে চিহ্নিত করতে।',
			'home.favoriteMeals.seeAll' => 'সব দেখুন',
			'home.favoriteMeals.add' => 'যোগ করুন',
			'home.mealSnap.title' => 'নিজস্ব খাবার স্ন্যাপ & ট্র্যাক করুন',
			'home.mealSnap.description' => 'AI বিশ্লেষণের জন্য আপনার খাবারের একটি ছবি তোলার জন্য আপনার ক্যামেরা ব্যবহার করুন।',
			'home.mealSnap.openCamera' => 'ক্যামেরা খুলুন',
			'home.mealSnap.gallery' => 'গ্যালারি',
			'home.connectHealth.title' => 'স্বাস্থ্য সংযোগের সাথে সিঙ্ক করুন',
			'home.connectHealth.description' => 'আপনার পুষ্টির ডেটা স্বাস্থ্য সংযোগের সাথে সিঙ্ক করুন',
			'home.connectHealth.install' => 'স্থাপন করুন',
			'home.connectHealth.connect' => 'সংযুক্ত করুন',
			'history.noMeals' => 'কোনও খাবার রেকর্ড করা হয়নি',
			'history.emptyMessage' => 'এখানে আপনার শেষ খাবারের ছবি তুলুন।',
			'history.today' => 'আজ',
			'history.yesterday' => 'গতকাল',
			'meal.ohNo' => 'আঃ না!',
			'meal.delete' => 'মুছুন',
			'meal.editMeal' => 'খাবার সম্পাদনা করুন',
			'meal.addMeal' => 'খাবার যোগ করুন',
			'meal.saveMeal' => 'খাবার সংরক্ষণ করুন',
			'meal.save' => 'সংরক্ষণ করুন',
			'meal.mealName' => 'খাবারের নাম',
			'meal.mealNameHint' => 'উদাহরণ: ফেটানো ডিম ও টোস্ট',
			'meal.mealQuantity' => 'খাবারের পরিমাণ',
			'meal.mealQuantityHint' => 'যেমন, ১ বাটি, ২ স্লাইস',
			'meal.timeOfMeal' => 'খাবারের সময়',
			'meal.timeOfMealHint' => 'আপনার খাবারটি কখন ছিল তা নির্বাচন করুন',
			'meal.mealType' => 'খাবারের ধরন',
			'meal.nutrition.calories' => 'ক্যালোরি',
			'meal.nutrition.carbs' => 'কার্বস (জি)',
			'meal.nutrition.protein' => 'প্রোটিন (জি)',
			'meal.nutrition.fat' => 'চর্বি (জি)',
			'meal.nutrition.fiber' => 'ফাইবার (জি)',
			'meal.deleteConfirmation.title' => 'খাবার মুছুন',
			'meal.deleteConfirmation.message' => 'আপনি কি নিশ্চিত যে আপনি এই খাবারের এন্ট্রি মুছতে চান?',
			'meal.deleteConfirmation.cancel' => 'বাতিল করুন',
			'meal.deleteConfirmation.delete' => 'মুছুন',
			'meal.addedToLog' => 'খাবার আপনার লগে যোগ করা হয়েছে!',
			'meal.couldNotAdd' => ({required Object error}) => 'খাবার যোগ করা যায়নি: ${error}',
			'meal.savedSuccessfully' => 'খাবারটি সফলভাবে যোগ করা হয়েছে!',
			'meal.updatedSuccessfully' => 'খাবারটি সফলভাবে আপডেট করা হয়েছে!',
			'meal.errorSaving' => ({required Object error}) => 'খাবার সংরক্ষণে ত্রুটি: ${error}',
			'meal.removedFromFavorites' => 'প্রিয় থেকে সরানো হয়েছে!',
			'meal.savedAsFavorite' => 'খাবার প্রিয় হিসেবে সংরক্ষিত হয়েছে!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'প্রিয় আপডেট করা যায়নি: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'প্রক্রিয়া করতে ব্যর্থ: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'ছবি প্রক্রিয়া করতে ব্যর্থ: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'ছবি সংকোচন করতে ত্রুটি: ${error}',
			'meal.failedToSave' => 'ডেটা সংরক্ষণ করতে ব্যর্থ। আবার চেষ্টা করুন।',
			'meal.skip' => 'এড়িয়ে যান',
			'meal.variation.question' => ({required Object current, required Object total}) => 'প্রশ্ন ${current}/${total}',
			'meal.variation.noVariationsAvailable' => 'কোনও বিকল্প উপলব্ধ নেই',
			'favorites.title' => 'প্রিয় খাবার',
			'favorites.empty' => 'এখনো কোন প্রিয় খাবার নেই।',
			'favorites.searchPlaceholder' => 'প্রিয় খাবার খুঁজুন',
			'favorites.searchEmptyTitle' => 'আপনার অনুসন্ধানের সাথে কোনো প্রিয় খাবার মিলল না',
			'favorites.searchEmptySubtitle' => 'অন্যান্য খাবারের নাম, পরিমাণ বা খাবারের ধরন ব্যবহার করে আবার চেষ্টা করুন।',
			'favorites.sortLabel' => 'প্রিয়গুলো সাজান',
			'favorites.undo' => 'পূর্বাবস্থায় ফিরান',
			'favorites.removed' => ({required Object name}) => '${name} আপনার প্রিয় তালিকা থেকে সরানো হয়েছে',
			'favorites.sortOptions.recent' => 'সাম্প্রতিক',
			'favorites.sortOptions.calories' => 'ক্যালোরি',
			'favorites.sortOptions.alphabetical' => 'অক্ষরক্রম',
			'profile.title' => 'প্রোফাইল',
			'profile.noProfileData' => 'কোন প্রোফাইল তথ্য পাওয়া যায়নি',
			'profile.yourProfile' => 'আপনার প্রোফাইল',
			'profile.viewAndManage' => 'আপনার স্বাস্থ্য তথ্য দেখুন এবং পরিচালনা করুন',
			'profile.sections.profile' => 'প্রোফাইল',
			'profile.sections.basicInformation' => 'মৌলিক তথ্য',
			'profile.sections.goalsAndActivity' => 'লক্ষ্য ও কার্যকলাপ',
			'profile.sections.calculatedValues' => 'হিসাব করা মান',
			'profile.gender' => 'লিঙ্গ',
			'profile.height' => 'উচ্চতা',
			'profile.weight' => 'ওজন',
			'profile.age' => 'বয়স',
			'profile.weightGoal' => 'ওজন লক্ষ্য',
			'profile.targetWeight' => 'লক্ষ্য ওজন',
			'profile.activityLevel' => 'ক্রিয়াকলাপের স্তর',
			'profile.healthMetrics' => 'স্বাস্থ্য সূচক',
			'profile.notSet' => 'নির্ধারিত নয়',
			'profile.years' => 'বছর',
			'profile.updatedSuccessfully' => 'প্রোফাইল সফলভাবে আপডেট হয়েছে!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'দৈনিক লক্ষ্য',
			'profile.calculatedValues.calPerDay' => 'ক্যালরি/দিন',
			'profile.calculatedValues.notAvailable' => 'অনুপলব্ধ',
			'healthScore.title' => 'স্বাস্থ্য স্কোর',
			'healthScore.whyThisScore' => 'এজন্য এই স্কোর?',
			'healthScore.note' => 'এই স্কোরটি চিনল শস্য ও পুষ্টি ঘনতার ভিত্তিতে একটি AI মূল্যায়ন। স্বাস্থ্য বিষয়ক পরামর্শের জন্য সর্বদা একজন পেশাদারকে পরামর্শ করুন।',
			'healthScore.unhealthy' => 'অস্বাস্থ্যকর',
			'healthScore.healthy' => 'স্বাস্থ্যকর',
			'healthScore.neutral' => 'নিউট্রাল',
			'editProfile.title' => 'প্রোফাইল সম্পাদনা করুন',
			'editProfile.sections.personalInformation' => 'ব্যক্তিগত তথ্য',
			'editProfile.sections.physicalMeasurements' => 'শারীরিক পরিমাপ',
			'editProfile.sections.goalsAndActivity' => 'লক্ষ্য ও কার্যকলাপ',
			'editProfile.gender' => 'লিঙ্গ',
			'editProfile.dateOfBirth' => 'জন্মতারিখ',
			'editProfile.height' => 'উচ্চতা',
			'editProfile.weight' => 'ওজন',
			'editProfile.weightGoal' => 'ওজন লক্ষ্য',
			'editProfile.activityLevel' => 'ক্রিয়াকলাপের স্তর',
			'editProfile.metric' => 'মেট্রিক',
			'editProfile.imperial' => 'ইম্পেরিয়াল',
			'editProfile.unitCm' => 'সেমি',
			'editProfile.unitFt' => 'ফুট',
			'editProfile.unitKg' => 'কেজি',
			'editProfile.unitLbs' => 'পাউন্ড',
			'editProfile.metricCm' => 'মেট্রিক (সেমি)',
			'editProfile.imperialFtIn' => 'ইম্পেরিয়াল (ফুট/ইঞ্চি)',
			'editProfile.metricKg' => 'মেট্রিক (কেজি)',
			'editProfile.imperialLbs' => 'ইম্পেরিয়াল (পাউন্ড)',
			'editProfile.genders.male' => 'পুরুষ',
			'editProfile.genders.female' => 'মহিলা',
			'editProfile.genders.other' => 'অন্যান্য',
			'editProfile.weightGoals.loseWeight.name' => 'ওজন কমানো',
			'editProfile.weightGoals.loseWeight.description' => 'ওজন কমানোর জন্য একটি ক্যালোরি ঘাটতি তৈরি করুন',
			'editProfile.weightGoals.maintainWeight.name' => 'ওজন বজায় রাখা',
			'editProfile.weightGoals.maintainWeight.description' => 'আপনার বর্তমান ওজন বজায় রাখুন',
			'editProfile.weightGoals.gainWeight.name' => 'ওজন বাড়ানো',
			'editProfile.weightGoals.gainWeight.description' => 'ওজন বাড়ানোর জন্য একটি ক্যালোরি উদ্বৃত্ত তৈরি করুন',
			'editProfile.activityLevels.sedentary.name' => 'অসক্রিয়',
			'editProfile.activityLevels.sedentary.description' => 'কম বা কোনো ব্যায়াম নেই',
			'editProfile.activityLevels.lightlyActive.name' => 'হালকাভাবে সক্রিয়',
			'editProfile.activityLevels.lightlyActive.description' => 'সপ্তাহে ১-৩ দিন হালকা ব্যায়াম',
			'editProfile.activityLevels.moderatelyActive.name' => 'মধ্যমভাবে সক্রিয়',
			'editProfile.activityLevels.moderatelyActive.description' => 'সপ্তাহে ৩-৫ দিন মাঝারি ব্যায়াম',
			'editProfile.activityLevels.veryActive.name' => 'খুব সক্রিয়',
			'editProfile.activityLevels.veryActive.description' => 'সপ্তাহে ৬-৭ দিন কঠিন ব্যায়াম',
			'editProfile.activityLevels.extremelyActive.name' => 'অতিশয় সক্রিয়',
			'editProfile.activityLevels.extremelyActive.description' => 'খুব কঠিন ব্যায়াম, শারীরিক কাজ',
			'settings.title' => 'সেটিংস',
			'settings.sections.profile' => 'প্রোফাইল',
			'settings.sections.localization' => 'স্থানীয়করণ',
			'settings.sections.notifications' => 'বিজ্ঞপ্তি',
			'settings.sections.healthConnect' => 'স্বাস্থ্য সংযোগ',
			'settings.sections.supportAndLegal' => 'সমর্থন ও আইন',
			'settings.sections.about' => 'আমাদের সম্পর্কে',
			'settings.sections.dangerZone' => 'বিপদ অঞ্চল',
			'settings.sections.developer' => 'ডেভেলপার',
			'settings.editProfile.title' => 'প্রোফাইল সম্পাদনা করুন',
			'settings.editProfile.subtitle' => 'আপনার ব্যক্তিগত তথ্য আপডেট করুন',
			'settings.language.title' => 'ভাষা',
			'settings.language.subtitle' => 'আপনার পছন্দের ভাষা নির্বাচন করুন',
			'settings.language.searchHint' => 'ভাষা অনুসন্ধান করুন...',
			'settings.language.noResults' => 'কোন ফলাফল পাওয়া যায়নি',
			'settings.heightUnit.title' => 'উচ্চতার ইউনিট',
			'settings.weightUnit.title' => 'ওজনের ইউনিট',
			'settings.mealReminders.title' => 'খাবারের রিমাইন্ডার',
			'settings.mealReminders.subtitle' => 'সঠিক সময়ে সতর্কতা দিয়ে পথে রাখতে',
			'settings.theme.title' => 'থিম',
			'settings.theme.light' => 'লাইট',
			'settings.theme.dark' => 'ডার্ক',
			'settings.theme.system' => 'সিস্টেম',
			'settings.sendFeedback.title' => 'ফিডব্যাক পাঠান',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} উন্নত করতে আমাদের সাহায্য করুন',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} অ্যাপ ফিডব্যাক',
			'settings.sendFeedback.emailBodyPrefix' => 'অনুগ্রহ করে আপনার মন্তব্য নীচে লেখুন:',
			'settings.sendFeedback.appVersion' => 'অ্যাপ সংস্করণ',
			'settings.sendFeedback.device' => 'যন্ত্র',
			'settings.sendFeedback.osVersion' => 'OS সংস্করণ',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'খাবারের ইতিহাস রপ্তানি',
			'settings.exportMealHistory.subtitle' => 'আপনি লগ করা খাবারের CSV শেয়ার করুন',
			'settings.exportMealHistory.shareText' => 'আপনার Calorify-এর খাবারের ইতিহাস রপ্তানি',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'খাবারের ইতিহাস রপ্তানি করা যায়নি: ${error}',
			'settings.clearAllData.title' => 'সকল তথ্য মুছুন',
			'settings.clearAllData.subtitle' => 'আপনার সমস্ত তথ্য স্থায়ীভাবে মুছুন',
			'settings.clearAllData.confirmationTitle' => 'সকল তথ্য মুছতে?',
			'settings.clearAllData.confirmationMessage' => 'এই পদক্ষেপটি পূর্বাবস্থায় ফেরানো যাবে না। আপনার সমস্ত লগ করা খাবার, প্রিয় এবং প্রোফাইল সেটিংস স্থায়ীভাবে মুছে যাবে।',
			'settings.clearAllData.cancel' => 'বাতিল করুন',
			'settings.clearAllData.clearEverything' => 'সব মুছুন',
			'settings.debugOptions.title' => 'ডিবাগ অপশন',
			'settings.developerModeEnabled' => 'ডেভেলপার মোড সক্রিয়!',
			'settings.healthConnect.title' => 'স্বাস্থ্য সংযোগ',
			'settings.healthConnect.subtitle' => 'অনুমতিগুলি দেখুন এবং পরিচালনা করুন',
			'settings.healthConnect.unavailable.title' => 'স্বাস্থ্য সংযোগ অপ্রাপ্য',
			'settings.healthConnect.unavailable.description' => 'এই ডিভাইসে স্বাস্থ্য সংযোগ উপলব্ধ নেই। অনুগ্রহ করে Play Store থেকে স্বাস্থ্য সংযোগ ইনস্টল করুন (Android 9+) অথবা Android 14+ এ আপডেট করুন।',
			'settings.healthConnect.permissions.title' => 'অনুমতিগুলি',
			'settings.healthConnect.permissions.description' => 'স্বাস্থ্য সংযোগ সংহতির জন্য নিম্নলিখিত অনুমতিগুলি অনুরোধ করা হচ্ছে:',
			'settings.healthConnect.permissions.granted' => 'অনুমোদিত',
			'settings.healthConnect.permissions.notGranted' => 'অনুমোদিত নয়',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'মোট পোড়ানো ক্যালোরি পড়ুন',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'অ্যাপটিকে স্বাস্থ্য সংযোগ থেকে আপনার মোট পোড়ানো ক্যালোরি পড়ার অনুমতি দেয়।',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'এই অনুমতি অ্যাপে আপনার দৈনিক ক্যালোরি পোড়ানোর পরিমাণ প্রদর্শন করতে ব্যবহৃত হয়, যা আপনাকে দিনের মধ্যে আপনার মোট শক্তি খরচ বুঝতে সাহায্য করে।',
			'settings.healthConnect.permissions.nutritionRead.title' => 'পুষ্টির ডেটা পড়ুন',
			'settings.healthConnect.permissions.nutritionRead.description' => 'অ্যাপটিকে স্বাস্থ্য সংযোগ থেকে পুষ্টির ডেটা পড়ার অনুমতি দেয়।',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'এই অনুমতি অ্যাপটিকে অন্যান্য অ্যাপসের দ্বারা লগ করা পুষ্টির তথ্য পড়তে দেয়, যা আপনার পুষ্টির একটি সমন্বিত দৃশ্য তৈরি করে।',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'পুষ্টির ডেটা লেখার অনুমতি',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'অ্যাপটিকে স্বাস্থ্য সংযোগে পুষ্টির ডেটা লেখার অনুমতি দেয়।',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'এই অনুমতি অ্যাপটিকে আপনার লগ করা খাবারগুলি স্বাস্থ্য সংযোগে সিঙ্ক করার সুযোগ দেয়, যার ফলে আপনার পুষ্টির ডেটা অন্যান্য স্বাস্থ্য ও ফিটনেস অ্যাপসে উপলব্ধ হয়।',
			'settings.healthConnect.managePermissions' => 'অনুমতিগুলি পরিচালনা করুন',
			'settings.healthConnect.openSettings' => 'হেলথ সংযোগ সেটিংস খুলুন',
			'settings.healthConnect.requestPermissions' => 'অনুমতি প্রার্থনা করুন',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'অনুমতি অনুরোধটি বাতিল করা হয়েছে বা ব্যর্থ হয়েছে। অনুগ্রহ করে আবার চেষ্টা করুন অথবা Health Connect সেটিংসে ম্যানুয়ালি অনুমতি দিন।',
			'settings.healthConnect.permissionRequestFailed' => 'অনুমতি অনুরোধ করা যায়নি। অনুগ্রহ করে আবার চেষ্টা করুন অথবা Health Connect সেটিংসে ম্যানুয়ালি অনুমতি দিন।',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'আমাদের সম্পর্কে',
			'settings.about.tagline' => 'দ্রুত, নিখুঁত এবং গোপনীয়তা-প্রথম ক্যালোরি জানা',
			'settings.about.ourStory.title' => 'আমাদের গল্প',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} একটি সাধারণ হতাশা থেকে জন্মেছে: বেশিরভাগ ক্যালোরি ট্র্যাকিং অ্যাপ অত্যধিক জটিল, ক্রমাগত ম্যানুয়াল ইনপুট দাবি করে, উচ্চ সাবস্ক্রিপশন ফি দাবি করে, বা গোপনীয়তায় আপস করে।\n\nএকজন স্বতন্ত্র ডেভেলপার হিসাবে, আমি কিছু সহজ এবং ন্যায়সঙ্গত তৈরি করতে চেয়েছিলাম - একটি অ্যাপ যা AI ব্যবহার করে পরিশ্রম হ্রাস করতে, ব্যবহার করতে দ্রুত এবং বিনামূল্যে থাকতে, এবং আপনার স্বাস্থ্য তথ্যের প্রতি শ্রদ্ধাশীল থাকা।\n\n${appLabel} হল সেই অ্যাপ যা আমি চাইতাম যে বিদ্যমান থাকে: কোনো অ্যাকাউন্ট নেই, কোনো ট্র্যাকিং নেই, কোনো বিজ্ঞাপন নেই - কেবল পরিষ্কার, ব্যবহারিক অন্তর্দৃষ্টি এবং আপনার স্বাস্থ্য লক্ষ্য।',
			'settings.about.privacy.title' => 'আপনার গোপনীয়তা গুরুত্বপূর্ণ',
			'settings.about.privacy.description' => 'গোপনীয়তা একটি পরবর্তী চিন্তা নয় - এটি একটি ডিজাইন নীতি। এটার বাস্তবে মানে কী:',
			'settings.about.privacy.noAccounts' => 'অ্যাকাউন্ট তৈরির প্রয়োজন নেই\nঅ্যাপটি সাথে সাথে ব্যবহার করুন। কোন সাইন আপ, কোন পরিচিতি নেই।',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'কোন ব্যবহারগত ট্র্যাকিং নেই\n${appLabel} আপনার কার্যকলাপ পর্যালোচনা করে না, ব্যবহারের প্রোফাইল তৈরি করে না, বা আপনাকে অ্যাপ বা ওয়েবসাইটের মধ্যে ট্র্যাক করে না।',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'ডিজাইন অনুযায়ী বিজ্ঞাপন মুক্ত\n${appLabel} বিজ্ঞাপন বা ডেটা-চালিত মুনাফা ছাড়া কাজ করার জন্য তৈরি।',
			'settings.about.privacy.noDataSelling' => 'কোন ডেটা বিক্রি নেই\nআপনার স্বাস্থ্য তথ্য কখনো বিক্রি হয় না বা তৃতীয় পক্ষের সঙ্গে শেয়ার করা হয় না।',
			'settings.about.privacy.localStorage' => 'স্থানীয়-প্রথম সংগ্রহস্থল\nআপনার তথ্য আপনার ডিভাইসে থাকে।',
			'settings.about.privacy.privacyPolicy' => 'গোপনীয়তা নীতি',
			'settings.about.developer.title' => 'একজন স্বতন্ত্র ডেভেলপার দ্বারা তৈরি',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} একটি একক স্বতন্ত্র ডেভেলপার দ্বারা নির্মিত এবং রক্ষণাবেক্ষণ করা হয়, যিনি শান্ত, গোপনীয়তা-সম্মানজনক স্বাস্থ্য সফটওয়্যার তৈরি করতে কেন্দ্রীভূত।\n\nপর্যালোচনাগুলি ব্যক্তিগতভাবে পড়া হয় এবং অ্যাপটির দিকনির্দেশনা নির্ধারণ করতে সহায়তা করে।',
			'settings.about.developer.website' => 'ওয়েবসাইট',
			'settings.about.developer.email' => 'ইমেল',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} পছন্দ করছেন?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'আপনার প্রতিক্রিয়া ${appLabel} কে সবার জন্য আরও ভাল করে তোলে।',
			'settings.about.feedback.rateApp' => 'প্লে স্টোরে রেট দিন',
			'settings.about.feedback.sendFeedback' => 'প্রতিক্রিয়া পাঠান',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'বিল্ড ${buildNumber}',
			'reminders.title' => 'রিমাইন্ডারের সাথে পথে থাকুন',
			'reminders.description' => 'আপনার খাবার লগ করতে এবং আপনার পুষ্টির লক্ষ্যগুলির সাথে ধারাবাহিক থাকায় নম্রভাবে স্মরণ করিয়ে দিন',
			'reminders.notificationsEnabled' => 'বিজ্ঞপ্তি সক্রিয়',
			'reminders.notificationsDisabled' => 'বিজ্ঞপ্তি নিষ্ক্রিয়',
			'reminders.enabledSubtitle' => 'আপনাকে খাবারের রিমাইন্ডার পাঠানো হবে',
			'reminders.disabledSubtitle' => 'খাবারের রিমাইন্ডার পেতে বিজ্ঞপ্তি সক্রিয় করুন',
			'reminders.mealReminders' => 'খাবারের রিমাইন্ডার',
			'reminders.breakfast' => 'সকালের নাস্তা',
			'reminders.lunch' => 'মধ্যাহ্নভোজন',
			'reminders.dinner' => 'রাতের খাবার',
			'reminders.snack' => 'নাশতা',
			'reminders.unknown' => 'অজ্ঞাত',
			'reminders.change' => 'বদলান',
			'reminders.enableNotifications' => 'বিজ্ঞপ্তি সক্রিয় করুন',
			'reminders.skipForNow' => 'এখন বাদ দিন',
			'reminders.saveChanges' => 'পরিবর্তন সংরক্ষণ করুন',
			'reminders.enabledSuccessfully' => 'বিজ্ঞপ্তি সফলভাবে সক্ষম হয়েছে!',
			'reminders.permissionDenied' => 'বিজ্ঞপ্তি অনুমতি অস্বীকার করা হয়েছে',
			'reminders.errorEnabling' => ({required Object error}) => 'বিজ্ঞপ্তি সক্ষম করতে ত্রুটি: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'সেটআপ সম্পন্ন করতে ত্রুটি: ${error}',
			'notifications.breakfast.title' => 'সকালের নাস্তার সময়! 🍳',
			'notifications.breakfast.body' => 'আপনার সকালের নাস্তা লগ করতে ভুলবেন না',
			'notifications.lunch.title' => 'মধ্যাহ্নভোজনের সময়! 🥗',
			'notifications.lunch.body' => 'আপনার মধ্যাহ্নভোজন লগ করার সময় হয়',
			'notifications.dinner.title' => 'রাতের খাবারের সময়! 🍽️',
			'notifications.dinner.body' => 'আপনার রাতের খাবার লগ করতে ভুলবেন না',
			'notifications.snack.title' => 'নাশতার সময়! 🍎',
			'notifications.snack.body' => 'স্বাস্থ্যকর নাশতার সময়',
			'notifications.test.title' => 'পরীক্ষার বিজ্ঞপ্তি',
			'login.title' => 'লগইন',
			'login.signInWithGoogle' => 'গুগলের সাথে লগ ইন করুন',
			'login.signInFailed' => 'গুগল সাইন ইন ব্যর্থ হয়েছে অথবা বাতিল হয়েছে।',
			'disclaimer.pleaseNote' => 'দয়া করে মনে রাখবেন',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} আনুমানিক পুষ্টির তথ্য প্রদান করে। সঠিকতা আপনার ইনপুট এবং খাবারের পরিবর্তনের ওপর নির্ভর করে। একটি গাইড হিসেবে ব্যবহার করুন, Definitive source হিসেবে নয়। ব্যক্তিগত খাদ্যগত পরামর্শের জন্য একটি পেশাদারের সাথে পরামর্শ করুন।',
			'disclaimer.snap.portionSize.title' => 'পোর্শনের আকার',
			'disclaimer.snap.portionSize.description' => 'অনুমানের সঠিকতা আপনার সঠিকভাবে পরিমাণ নির্ধারণের উপর নির্ভর করে।',
			'disclaimer.snap.preparationMethods.title' => 'প্রস্তুতি পদ্ধতি',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'রান্নার পদ্ধতিগুলি খাবারের পুষ্টিগত মূল্যের ওপর গুরুত্বপূর্ণভাবে প্রভাব ফেলতে পারে। ${appLabel} এর আনুমানিক হিসাব এই পরিবর্তনগুলো সবসময় অন্তর্ভুক্ত নাও করতে পারে।',
			'disclaimer.snap.ingredients.title' => 'উপকরণ',
			'disclaimer.snap.ingredients.description' => 'যথেষ্ট উপকরণ নিয়ে গঠিত জটিল খাবারগুলি কম সঠিক অনুমান প্রদান করে।',
			'disclaimer.snap.databaseLimitations.title' => 'ডেটাবেসের সীমাবদ্ধতা',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} এর খাবারের ডাটাবেজ ব্যাপক কিন্তু এতে প্রতিটি খাদ্য আইটেম বা ভ্যারিয়েশন অন্তর্ভুক্ত নাও হতে পারে।',
			'disclaimer.weightEstimate.title' => 'ওজনের আনুমানিক সম্পর্কে',
			'disclaimer.weightEstimate.description' => 'প্রোজেক্টেড ওজন পরিবর্তনটি সাধারণ ক্যালোরি গ্রহণ/ব্যয় মডেলের উপর ভিত্তি করে একটি তাত্ত্বিক মান। এটি শুধুমাত্র অনুপ্রেরণামূলক নির্দেশিকা হিসেবে তৈরি করা হয়েছে, আপনার আসল ওজনের পূর্বাভাস হিসেবে নয়।',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'ক্যালোরির সঠিকতা',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'এই অনুমানটি আপনার ট্র্যাক করা ক্যালোরির গ্রহণ ও ব্যয় অনুযায়ী শুধুমাত্র সঠিক। অসঠিক লগিং একটি অসঠিক পূর্বাভাস সৃষ্টি করবে।',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'জীববৈচিত্র্যগত উপাদান',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'বাস্তব ওজন কমানো/বাড়ানো বিপাক, হরমোন, ঘুম, চাপ, জল দেহের প্রভাব ও অন্যান্য ব্যক্তিগত ফ্যাক্টরের দ্বারা প্রভাবিত হয় যা ${appLabel} মাপতে পারে না।',
			'disclaimer.weightEstimate.waterWeight.title' => 'জল ওজন এবং পরিবর্তন',
			'disclaimer.weightEstimate.waterWeight.description' => 'সাধারণ দৈনিক ওজন ব্যাপকভাবে জল ধারণ, পাচন এবং সময়ের কারনে পরিবর্তিত হতে পারে। অনুমানগুলি এই দৈনিক পরিবর্তনগুলির হিসাব করে না।',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'পেশাদার নির্দেশিকা',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'এই অনুমানটি চিকিৎসার সিদ্ধান্ত নেওয়ার জন্য ব্যবহার করবেন না। ব্যক্তিগত ওজন ব্যবস্থাপনাযোগ্য পরামর্শের জন্য সর্বদা স্বাস্থ্যসেবা পেশাদার অথবা নিবন্ধিত ডায়েটিশিয়ানের সাথে পরামর্শ করুন।',
			'disclaimer.healthMetrics.description' => 'এই মেট্রিক্সগুলো আপনাকে আপনার শরীরের শক্তির প্রয়োজন বুঝতে সাহায্য করে এবং আপনার পুষ্টির লক্ষ্য নির্দেশনা দেয়।',
			'disclaimer.healthMetrics.bmr.title' => 'বিএমআর',
			'disclaimer.healthMetrics.bmr.description' => 'বেসাল মেটাবলিক রেট (বিএমআর) হল সেই সংখ্যক ক্যালোরি যা আপনার শরীর বিশ্রামে পোড়ায় মৌলিক কার্যক্রম যেমন শ্বাসপ্রশ্বাস এবং রক্তসঞ্চালন রক্ষার জন্য। বিএমআর আপনার বয়স, লিঙ্গ, উচ্চতা এবং ওজনের উপর নির্ভর করে। একটি উচ্চ বিএমআর মানে হল আপনার শরীর স্বাভাবিকভাবেই বিশ্রামে আরও ক্যালোরি পোড়ায়, প্রধানত আরও পেশী ভরের কারণে, কম বয়সের জন্য, বা পুরুষ হওয়ার কারণে। একটি নিম্ন বিএমআর সাধারণত কম পেশী ভর, বেশি বয়স, বা নারী হওয়ার ইঙ্গিত দেয়।',
			'disclaimer.healthMetrics.tdee.title' => 'টিডিইই',
			'disclaimer.healthMetrics.tdee.description' => 'মোট দৈনিক শক্তি ব্যয় (টিডিইই) হল আপনার দৈনিক পোড়ানো মোট ক্যালোরি, এতে আপনার বিএমআর এবং শারীরিক কার্যকলাপ ও দৈনন্দিন চলাফেরা থেকে প্রাপ্ত ক্যালোরি অন্তর্ভুক্ত। টিডিইই আপনার বিএমআর এবং কার্যকলাপের স্তরের উপর নির্ভর করে। একটি উচ্চ টিডিইই মানে হল আপনি মোটর ক্ষেত্রে বেশি ক্যালোরি পোড়াচ্ছেন, সাধারণত বেশি সক্রিয় হওয়া বা উচ্চ বিএমআর থাকার কারণে। একটি নিম্ন টিডিইই কম দৈনন্দিন কার্যক্রম বা কম বিএমআর নির্দেশ করে।',
			'disclaimer.healthMetrics.dailyGoal.title' => 'দৈনিক লক্ষ্য',
			'disclaimer.healthMetrics.dailyGoal.description' => 'দৈনিক লক্ষ্য হল আপনার টিডিইই এবং ওজন লক্ষ্য অনুযায়ী আপনার সুপারিশকৃত দৈনিক ক্যালোরি গ্রহণ। ওজন কমানোর জন্য, আপনাকে আপনার টিডিইই-এর চেয়ে কম ক্যালোরি গ্রহণ করতে হবে। ওজন বজায় রাখার জন্য, আপনাকে আপনার টিডিইই-কে মানানসই করতে হবে। ওজন বাড়ানোর জন্য, আপনাকে আপনার টিডিইই-এর চেয়ে বেশি ক্যালোরি গ্রহণ করতে হবে। এটি আপনাকে স্বাস্থ্যকর গতি অনুসরণ করে আপনার কাঙ্খিত ওজন পরিবর্তন অর্জনে সাহায্য করে।',
			'disclaimer.calorieExpenditure.title' => 'ক্যালোরি ব্যয় অনুমান',
			'disclaimer.calorieExpenditure.description' => 'যখন Health Connect ডেটা উপলব্ধ থাকে না, আমরা আপনার বেসাল মেটাবলিক রেট (BMR) এবং ক্রিয়াকলাপের স্তর (TDEE) ব্যবহার করে আজকে যত ক্যালোরি বার্ন হয়েছে তা অনুমান করি, এবং দিনের যে অংশটি কেটে গেছে তার অনুপাতে স্কেল করি।',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'কিভাবে অনুমানটি গণনা করা হয়',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'আমরা আপনার প্রোফাইলের উপর ভিত্তি করে TDEE গণনা করি এবং দিন অতিবাহিত অংশের অনুপাত ((ঘন্টা + মিনিট) / 24) দ্বারা গুণ করে এখন পর্যন্ত বার্ন হওয়া ক্যালোরি অনুমান করি।',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'পেশাদার নির্দেশনা',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'চিকিৎসাগত সিদ্ধান্ত নেওয়ার জন্য এই অনুমান ব্যবহার করবেন না। ব্যক্তিগতকৃত ওজন ব্যবস্থাপনার পরামর্শের জন্য সর্বদা একজন স্বাস্থ্যসেবা পেশাজীবী বা নিবন্ধিত ডায়েটিশিয়ানের সাথে পরামর্শ করুন।',
			'common.close' => 'বন্ধ করুন',
			'common.kContinue' => 'অগ্রসর হোন',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'আপনি কি ${appLabel} উপভোগ করছেন?',
			'feedbackRating.yes' => 'হ্যাঁ, আমি উপভোগ করছি',
			'feedbackRating.no' => 'তেমন না',
			'feedbackRating.rateStepHeading' => 'প্লে স্টোরে রেট দিন',
			'feedbackRating.emailStepHeading' => 'ইমেইলের মাধ্যমে প্রতিক্রিয়া পাঠান',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'একটি দ্রুত রেটিং অন্যদের ${appLabel} খুঁজে পেতে সাহায্য করে এবং আমাদের উন্নয়ন চালিয়ে রাখতে সহায়ক। আপনি কি একটু সময় নিয়ে একটি রেটিং দেবেন?',
			'feedbackRating.shareFeedbackViaEmail' => 'আপনার প্রতিক্রিয়া পরবর্তী আপডেটগুলোকে গঠন করে — আমরা প্রতিটি বার্তা মনোযোগ দিয়ে পড়ি। আপনি কি ইমেইলের মাধ্যমে আপনার মতামত শেয়ার করতে চান?',
			'feedbackRating.rateCta' => 'প্লে স্টোরে রেট করুন',
			'feedbackRating.maybeLater' => 'পরে হতে পারে',
			'feedbackRating.sendFeedback' => 'মতামত পাঠান',
			'feedbackRating.noThanks' => 'না, ধন্যবাদ',
			'feedbackRating.aboutUsDescription' => 'একটি ছোট দল যত্নসহ তৈরি করেছে। আমরা গোপনীয়তা, সরলতা এবং আপনাকে আরও স্বাস্থ্যকর খাদ্যাভ্যাস গড়তে সাহায্য করার ওপর গুরুত্ব দিই।',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'জানতে চান ${appLabel}-এর পেছনে কে আছেন? দেখুন ',
			'feedbackRating.aboutUsLinkLabel' => 'আমাদের সম্পর্কে',
			'feedbackRating.thankYouMessage' => 'ধন্যবাদ! আমরা আবার অন্য সময় জিজ্ঞাসা করব।',
			'health.syncFailed' => 'স্বাস্থ্য সংযোগে সিঙ্ক করা যায়নি',
			'health.mealSynced' => 'খাবার স্বাস্থ্য সংযোগের সাথে সিঙ্ক হয়েছে',
			_ => null,
		};
	}
}
