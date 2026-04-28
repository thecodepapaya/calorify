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
	@override String get rateLimitExceeded => 'আপনি অনেক বেশি অনুরোধ করেছেন। অনুগ্রহ করে কিছুক্ষণ পরে আবার চেষ্টা করুন।';
	@override String get networkError => 'নেটওয়ার্ক ত্রুটি। আপনার ইন্টারনেট সংযোগ পরীক্ষা করুন।';
	@override String get unknownError => 'কিছু ভুল হয়েছে। পরে আবার চেষ্টা করুন।';
	@override String get loadingProfileData => 'প্রোফাইল ডেটা লোড করতে ত্রুটি';
	@override String get somethingWentWrong => 'কিছু ভুল হয়েছে।';
	@override String get retry => 'আবার চেষ্টা করুন';
}

// Path: onboarding
class _TranslationsOnboardingBn implements TranslationsOnboardingEn {
	_TranslationsOnboardingBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'স্বাগতম ${appLabel}-এ';
	@override String get subtitle => 'এআই দ্বারা পরিচালিত আপনার ব্যক্তিগত পুষ্টি সহায়ক';
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
	@override String get history => 'ইতিহাস';
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
	@override String get noMeals => 'কোনো মিল রেকর্ড নেই';
	@override String get emptyMessage => 'এখানে লগ করতে আপনার শেষ মিলের ছবি তুলুন।';
	@override String get today => 'আজ';
	@override String get yesterday => 'গতকাল';
}

// Path: meal
class _TranslationsMealBn implements TranslationsMealEn {
	_TranslationsMealBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'ওহ না!';
	@override String get delete => 'মুছুন';
	@override String get editMeal => 'মিল সম্পাদনা';
	@override String get addMeal => 'মিল যোগ করুন';
	@override String get saveMeal => 'মিল সংরক্ষণ';
	@override String get save => 'সংরক্ষণ';
	@override String get mealName => 'মিলের নাম';
	@override String get mealNameHint => 'যেমন, ডিমভাজি ও টোস্ট';
	@override String get mealQuantity => 'খাবারের পরিমাণ';
	@override String get mealQuantityHint => 'যেমন, ১ বাটি, ২ স্লাইস';
	@override String get timeOfMeal => 'খাবারের সময়';
	@override String get timeOfMealHint => 'আপনি কখন মিলটি খেয়েছেন তা নির্বাচন করুন';
	@override String get mealType => 'খাবারের ধরন';
	@override late final _TranslationsMealNutritionBn nutrition = _TranslationsMealNutritionBn._(_root);
	@override late final _TranslationsMealDeleteConfirmationBn deleteConfirmation = _TranslationsMealDeleteConfirmationBn._(_root);
	@override String get addedToLog => 'মিলটি আপনার লগে যোগ হয়েছে!';
	@override String couldNotAdd({required Object error}) => 'মিল যোগ করা যায়নি: ${error}';
	@override String get savedSuccessfully => 'মিল সফলভাবে যোগ হয়েছে!';
	@override String get updatedSuccessfully => 'মিল সফলভাবে আপডেট হয়েছে!';
	@override String errorSaving({required Object error}) => 'সংরক্ষণে ত্রুটি: ${error}';
	@override String get removedFromFavorites => 'পছন্দ থেকে সরানো হয়েছে!';
	@override String get savedAsFavorite => 'মিলটি পছন্দে সংরক্ষণ হয়েছে!';
	@override String get unfavorite => 'ফেভারিট সরান';
	@override String couldNotUpdateFavorite({required Object error}) => 'ফেভারিট আপডেট করা যায়নি: ${error}';
	@override String get feedbackThanks => 'মতামতের জন্য ধন্যবাদ!';
	@override String get reanalysisUpdated => 'আপনার প্রতিক্রিয়ার ভিত্তিতে মিল বিশ্লেষণ আপডেট করা হয়েছে।';
	@override String failedToProcess({required Object error}) => 'প্রসেস করতে ব্যর্থ: ${error}';
	@override String failedToProcessImage({required Object error}) => 'ছবি প্রসেস করতে ব্যর্থ: ${error}';
	@override String errorCompressingImage({required Object error}) => 'ছবি কম্প্রেস করতে ত্রুটি: ${error}';
	@override String get failedToSave => 'ডেটা সংরক্ষণ ব্যর্থ। আবার চেষ্টা করুন।';
	@override String get skip => 'এড়িয়ে যান';
	@override late final _TranslationsMealQuestionFlowBn questionFlow = _TranslationsMealQuestionFlowBn._(_root);
	@override late final _TranslationsMealAnalysisBn analysis = _TranslationsMealAnalysisBn._(_root);
	@override late final _TranslationsMealFeedbackBn feedback = _TranslationsMealFeedbackBn._(_root);
}

// Path: favorites
class _TranslationsFavoritesBn implements TranslationsFavoritesEn {
	_TranslationsFavoritesBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পছন্দের তালিকা';
	@override String get empty => 'এখনও কোনো পছন্দের মিল নেই।';
	@override String get searchPlaceholder => 'পছন্দের মিল খুঁজুন';
	@override String get searchEmptyTitle => 'আপনার অনুসন্ধানের সাথে কোনো ফেভারিট মেলেনি';
	@override String get searchEmptySubtitle => 'ভিন্ন কোনো মিলের নাম, পরিমাণ, বা খাবারের ধরন চেষ্টা করুন।';
	@override String get sortLabel => 'ফেভারিট সাজান';
	@override String get undo => 'আনডু';
	@override String removed({required Object name}) => 'ফেভারিট থেকে ${name} সরানো হয়েছে';
	@override late final _TranslationsFavoritesSortOptionsBn sortOptions = _TranslationsFavoritesSortOptionsBn._(_root);
}

// Path: profile
class _TranslationsProfileBn implements TranslationsProfileEn {
	_TranslationsProfileBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রোফাইল';
	@override String get noProfileData => 'কোনো প্রোফাইল ডেটা পাওয়া যায়নি';
	@override String get yourProfile => 'আপনার প্রোফাইল';
	@override String get viewAndManage => 'আপনার স্বাস্থ্য তথ্য দেখুন ও পরিচালনা করুন';
	@override late final _TranslationsProfileSectionsBn sections = _TranslationsProfileSectionsBn._(_root);
	@override String get gender => 'লিঙ্গ';
	@override String get height => 'উচ্চতা';
	@override String get weight => 'ওজন';
	@override String get age => 'বয়স';
	@override String get weightGoal => 'ওজনের লক্ষ্য';
	@override String get targetWeight => 'লক্ষ্য ওজন';
	@override String get activityLevel => 'অ্যাক্টিভিটি স্তর';
	@override String get healthMetrics => 'স্বাস্থ্য মেট্রিকস';
	@override String get notSet => 'সেট করা হয়নি';
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
	@override String get whyThisScore => 'এই স্কোর কেন?';
	@override String get note => 'এই স্কোরটি চিহ্নিত উপাদান ও পুষ্টিঘনতার ভিত্তিতে এআই-এর একটি অনুমান। ব্যক্তিগত পরামর্শের জন্য সবসময় পেশাদারের সাথে পরামর্শ করুন।';
	@override String get unhealthy => 'অস্বাস্থ্যকর';
	@override String get healthy => 'স্বাস্থ্যকর';
	@override String get neutral => 'নিরপেক্ষ';
}

// Path: editProfile
class _TranslationsEditProfileBn implements TranslationsEditProfileEn {
	_TranslationsEditProfileBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রোফাইল সম্পাদনা';
	@override late final _TranslationsEditProfileSectionsBn sections = _TranslationsEditProfileSectionsBn._(_root);
	@override String get gender => 'লিঙ্গ';
	@override String get dateOfBirth => 'জন্মতারিখ';
	@override String get height => 'উচ্চতা';
	@override String get weight => 'ওজন';
	@override String get weightGoal => 'ওজনের লক্ষ্য';
	@override String get activityLevel => 'অ্যাক্টিভিটি স্তর';
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
	@override String get developerModeEnabled => 'ডেভেলপার মোড চালু হয়েছে!';
	@override late final _TranslationsSettingsHealthConnectBn healthConnect = _TranslationsSettingsHealthConnectBn._(_root);
	@override late final _TranslationsSettingsAboutBn about = _TranslationsSettingsAboutBn._(_root);
	@override late final _TranslationsSettingsAppInfoBn appInfo = _TranslationsSettingsAppInfoBn._(_root);
}

// Path: reminders
class _TranslationsRemindersBn implements TranslationsRemindersEn {
	_TranslationsRemindersBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'রিমাইন্ডার দিয়ে লক্ষ্যপথে থাকুন';
	@override String get description => 'আপনার মিল লগ করার জন্য নরম স্মরণ করিয়ে দিন পান এবং পুষ্টি লক্ষ্যে ধারাবাহিক থাকুন';
	@override String get notificationsEnabled => 'নোটিফিকেশন চালু';
	@override String get notificationsDisabled => 'নোটিফিকেশন বন্ধ';
	@override String get enabledSubtitle => 'আপনি খাবারের রিমাইন্ডার পাবেন';
	@override String get disabledSubtitle => 'রিমাইন্ডার পেতে নোটিফিকেশন সক্রিয় করুন';
	@override String get mealReminders => 'মিল রিমাইন্ডার';
	@override String get breakfast => 'ব্রেকফাস্ট';
	@override String get lunch => 'লাঞ্চ';
	@override String get dinner => 'ডিনার';
	@override String get snack => 'স্ন্যাক';
	@override String get unknown => 'অজানা';
	@override String get change => 'পরিবর্তন';
	@override String get enableNotifications => 'নোটিফিকেশন সক্রিয় করুন';
	@override String get skipForNow => 'এই মুহূর্তে এড়িয়ে যান';
	@override String get saveChanges => 'পরিবর্তন সংরক্ষণ করুন';
	@override String get enabledSuccessfully => 'নোটিফিকেশন সফলভাবে সক্রিয় হয়েছে!';
	@override String get permissionDenied => 'নোটিফিকেশন অনুমতি অস্বীকৃত';
	@override String errorEnabling({required Object error}) => 'নোটিফিকেশন চালু করতে ত্রুটি: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'সেটআপ সম্পূর্ণ করতে ত্রুটি: ${error}';
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
	@override String get signInWithGoogle => 'গুগল দিয়ে সাইন ইন করুন';
	@override String get signInFailed => 'গুগল সাইন-ইন ব্যর্থ হয়েছে বা বাতিল করা হয়েছে।';
}

// Path: disclaimer
class _TranslationsDisclaimerBn implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'দয়া করে লক্ষ্য করুন';
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
	@override String get kContinue => 'চালিয়ে যান';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingBn implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} কি ভালো লাগছে?';
	@override String get yes => 'হ্যাঁ, ভালো লাগছে';
	@override String get no => 'তেমন নয়';
	@override String get rateStepHeading => 'প্লে স্টোরে রেটিং দিন';
	@override String get emailStepHeading => 'ইমেইলে ফিডব্যাক পাঠান';
	@override String soloDevMessage({required Object appLabel}) => 'একটি দ্রুত রেটিং অন্যদের ${appLabel} খুঁজে পেতে সাহায্য করে এবং উন্নয়ন চালিয়ে যেতে সহায়ক। আপনি কি এক মুহূর্ত সময় দেবেন?';
	@override String get shareFeedbackViaEmail => 'আপনার মতামতই পরবর্তী ধাপ গড়ে দেয় — আমরা প্রতিটি বার্তা পড়ি। ইমেইলে শেয়ার করতে চান?';
	@override String get rateCta => 'প্লে স্টোরে রেটিং দিন';
	@override String get maybeLater => 'পরে মনে করিয়ে দিন';
	@override String get sendFeedback => 'মতামত পাঠান';
	@override String get noThanks => 'ধন্যবাদ, দরকার নেই';
	@override String get aboutUsDescription => 'অল্প জনের যত্নে নির্মিত। আমরা প্রাইভেসি, সরলতা এবং ভালো খাদ্যাভ্যাস গড়ে তুলতে মনোনিবেশ করি।';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'কৌতূহলী ${appLabel}-এর পেছনে কে? দেখুন ';
	@override String get aboutUsLinkLabel => 'আমাদের সম্পর্কে';
	@override String get thankYouMessage => 'ধন্যবাদ! আমরা আবার পরে জিজ্ঞেস করব।';
}

// Path: health
class _TranslationsHealthBn implements TranslationsHealthEn {
	_TranslationsHealthBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect-এ সিঙ্ক করা যায়নি';
	@override String get mealSynced => 'মিল Health Connect-এ সিঙ্ক হয়েছে';
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
	@override String get title => 'আপনার লিঙ্গ কী?';
	@override String get description => 'বেসাল মেটাবলিক রেট (BMR) নির্ভুলভাবে গণনায় লিঙ্গ সহায়তা করে।';
	@override String get next => 'পরবর্তী';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightBn implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার উচ্চতা কত?';
	@override String get description => 'আপনার উচ্চতা আমাদের BMI এবং এনার্জির চাহিদা সঠিকভাবে নির্ণয়ে সাহায্য করে।';
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
	@override String get currentDescription => 'আপনার দৈনিক লক্ষ্য ব্যক্তিগতকরণে বর্তমান ওজন গুরুত্বপূর্ণ।';
	@override String get targetTitle => 'আপনার লক্ষ্য ওজন কত?';
	@override String get targetDescription => 'লক্ষ্য ওজন নির্ধারণ দীর্ঘমেয়াদি পরিকল্পনা তৈরিতে সাহায্য করে।';
	@override String get metric => 'মেট্রিক';
	@override String get imperial => 'ইম্পেরিয়াল';
	@override String get next => 'পরবর্তী';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeBn implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার জন্মতারিখ কবে?';
	@override String get description => 'ক্যালোরির প্রয়োজনীয়তা সঠিকভাবে হিসাব করতে আপনার বয়স দরকার।';
	@override String get next => 'পরবর্তী';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleBn implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'কম';
	@override String get healthy => 'স্বাভাবিক';
	@override String get overweight => 'বেশি';
	@override String get obese => 'স্থূল';
	@override late final _TranslationsOnboardingBmiScaleCategoriesBn categories = _TranslationsOnboardingBmiScaleCategoriesBn._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesBn messages = _TranslationsOnboardingBmiScaleMessagesBn._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalBn implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার লক্ষ্য কী?';
	@override String get description => 'আপনার উদ্দেশ্যকে সবচেয়ে ভালোভাবে বর্ণনা করে এমন লক্ষ্য বেছে নিন';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelBn implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনি কতটা সক্রিয়?';
	@override String get description => 'এটি আমাদেরকে আপনার দৈনিক ক্যালোরির প্রয়োজন আরও নির্ভুলভাবে নির্ণয়ে সাহায্য করবে';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectBn implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect যুক্ত করুন';
	@override String get description => 'আরও ভালো ইনসাইট আর স্বয়ংক্রিয় ক্যালোরি ট্র্যাকিংয়ের জন্য আপনার স্বাস্থ্য ডেটা সিঙ্ক করুন';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingBn automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingBn._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsBn progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsBn._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationBn seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationBn._(_root);
	@override String get connected => 'Health Connect সংযুক্ত';
	@override String get notConnected => 'Health Connect সংযুক্ত নয়';
	@override String get setup => 'Health Connect সেটআপ';
	@override String get skipForNow => 'এই মুহূর্তে এড়িয়ে যান';
	@override String get statusConnected => 'Health Connect সংযুক্ত রয়েছে।';
	@override String get statusSuccess => 'Health Connect সফলভাবে সংযুক্ত হয়েছে!';
	@override String statusPermissionDenied({required Object appLabel}) => 'অনুমতি অস্বীকৃত। ${appLabel}-এর জন্য আপনার ফোনের সেটিংসে Health Connect অনুমতিগুলো সক্রিয় করুন।';
	@override String statusError({required Object error}) => 'Health Connect সেটআপে ত্রুটি: ${error}';
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
	@override String get title => 'আপনার এআই সারাংশ';
	@override String get logMore => 'পরবর্তী কয়েক দিনে আরও মিল লগ করুন আপনার ব্যক্তিগত এআই ইনসাইট পেতে।';
	@override String get loading => 'আপনার সারাংশ লোড হচ্ছে...';
	@override String mealCount({required Object count}) => '${count}টি মিল লগ হয়েছে';
	@override String macroBalanceScore({required Object score}) => 'ব্যালান্স স্কোর ${score}';
	@override String get topFoods => 'শীর্ষ খাবার';
	@override String get trendUp => 'ক্যালোরি ঊর্ধ্বমুখী';
	@override String get trendDown => 'ক্যালোরি নিম্নগামী';
	@override String get trendSteady => 'ক্যালোরি স্থির রয়েছে';
	@override String generatedAt({required Object time}) => 'আপডেট হয়েছে ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalBn implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার দৈনিক লক্ষ্য নির্ধারণ করুন';
	@override String get titleSet => 'আপনার দৈনিক লক্ষ্য';
	@override String get description => 'আপনার সুস্থতার যাত্রা শুরু করতে প্রস্তুত? নীচে আপনার দৈনিক ক্যালোরি টার্গেট সেট করুন।';
	@override String get descriptionSet => 'আপনার কম্পাস সেট! এটি আপনার দৈনিক ক্যালোরি টার্গেট।';
	@override String get yourGoal => 'আপনার লক্ষ্য';
	@override String get goal => 'লক্ষ্য';
	@override String get dailyCalories => 'দৈনিক ক্যালোরি (kcal)';
	@override String get setGoal => 'লক্ষ্য নির্ধারণ';
	@override String get intake => 'গ্রহণ';
	@override String get burned => 'খরচ';
	@override String get weightImpact => 'ওজনের প্রভাব';
	@override String get estLoss => 'আনুমানিক কমবে';
	@override String get estGain => 'আনুমানিক বাড়বে';
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
	@override String get fat => 'ফ্যাট';
	@override String get fiber => 'ফাইবার';
	@override String get grams => 'গ্রাম';
	@override String get chartAccessibilityLabel => 'ম্যাক্রো চার্ট';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressBn implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আজকের ম্যাক্রো বণ্টন';
	@override String get target => 'লক্ষ্য';
	@override String get current => 'বর্তমান';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryBn implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => '৭ দিনের ম্যাক্রো ইতিহাস';
	@override String get trendTitle => 'আজকের প্রবণতা';
	@override String peakHour({required Object hour}) => 'সর্বোচ্চ: ${hour}:00';
	@override String get noHistoryYet => 'এখনও কোনো ইতিহাস নেই';
	@override String get startLogging => 'আপনার\n৭ দিনের ম্যাক্রো ট্রেন্ড দেখতে খাবার লগ করা শুরু করুন';
}

// Path: home.mealLog
class _TranslationsHomeMealLogBn implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'লগ হওয়া মিল';
	@override String get emptyMessage => 'এখানে লগ করতে আপনার শেষ মিলের ছবি তুলুন।';
	@override String get noMealsToday => 'আজ কোনো মিল রেকর্ড হয়নি';
	@override String get seeAllMeals => 'সব মিল দেখুন';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionBn implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'এআই দিয়ে দ্রুত যোগ করুন';
	@override String get description => 'আপনার মিলটি বর্ণনা করুন, বাকি কাজ এআই করবে।';
	@override String get hint => 'যেমন: ব্রেকফাস্টে আমি বড় এক বাটি ওটমিলের সাথে স্লাইস করা কলা আর এক স্কুপ হুয়ে প্রোটিন খেয়েছি ...';
	@override String get analyzeMeal => 'মিল বিশ্লেষণ করুন';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsBn implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পছন্দের মিল';
	@override String get description => 'দ্রুত আপনার প্রিয় মিলগুলোর একটি যোগ করুন।';
	@override String get noFavorites => 'এখনও কোনো পছন্দের মিল নেই।';
	@override String get addFavoriteHint => 'কোনো মিলকে পছন্দের করতে তার পাশে থাকা তারকা আইকনে চাপুন।';
	@override String get seeAll => 'সব দেখুন';
	@override String get add => 'যোগ করুন';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapBn implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ছবি তুলে মিল ট্র্যাক করুন';
	@override String get description => 'এআই বিশ্লেষণের জন্য আপনার খাবারের ছবি তুলতে ক্যামেরা ব্যবহার করুন।';
	@override String get openCamera => 'ক্যামেরা খুলুন';
	@override String get gallery => 'গ্যালারি';
	@override String get compressingPhoto => 'ছবি অপ্টিমাইজ করা হচ্ছে…';
	@override String get uploadingPhoto => 'ছবি আপলোড করা হচ্ছে…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthBn implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect-এর সাথে সিঙ্ক করুন';
	@override String get description => 'আপনার পুষ্টি ডেটা Health Connect-এ সিঙ্ক করুন';
	@override String get install => 'ইনস্টল';
	@override String get connect => 'কনেক্ট';
}

// Path: meal.nutrition
class _TranslationsMealNutritionBn implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get calories => 'ক্যালোরি';
	@override String get carbs => 'কার্বস (g)';
	@override String get protein => 'প্রোটিন (g)';
	@override String get fat => 'ফ্যাট (g)';
	@override String get fiber => 'ফাইবার (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationBn implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'মিল মুছুন';
	@override String get message => 'আপনি কি নিশ্চিত এই মিলটি মুছে ফেলতে চান?';
	@override String get cancel => 'বাতিল';
	@override String get delete => 'মুছুন';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowBn implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String progress({required Object total, required Object current}) => 'মোট ${total}টির মধ্যে ${current} নম্বর প্রশ্ন';
	@override String get noQuestionsAvailable => 'কোনও প্রশ্ন উপলব্ধ নেই';
	@override String get next => 'পরবর্তী';
	@override String get continueLabel => 'চালিয়ে যান';
}

// Path: meal.analysis
class _TranslationsMealAnalysisBn implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'এআই মিল বিশ্লেষণ';
	@override String get stepStarted => 'শুরু হচ্ছে…';
	@override String get stepDecomposition => 'আপনার মিল বোঝা হচ্ছে…';
	@override String get stepIngredients => 'উপাদানগুলিকে পুষ্টি ডেটার সাথে মেলানো হচ্ছে…';
	@override String get stepUncertainty => 'বিশ্বাসযোগ্যতা যাচাই হচ্ছে…';
	@override String get stepMealTypeQuestion => 'প্রায় হয়ে গেছে…';
	@override String get stepResult => 'ফলাফল চূড়ান্ত করা হচ্ছে…';
	@override String get stepError => 'কিছু ভুল হয়েছে';
	@override String get stepDefault => 'আপনার মিল বিশ্লেষণ করা হচ্ছে…';
	@override String get progressUnderstand => 'বোঝা';
	@override String get progressMatch => 'মিল';
	@override String get progressCheck => 'যাচাই';
	@override String get progressMealType => 'খাবারের ধরন নির্বাচন করা হচ্ছে';
	@override String get progressFinish => 'শেষ';
	@override String get detectedIngredientHeading => 'আমরা যা শনাক্ত করছি';
	@override String ingredientsOverflow({required Object count}) => '${count}টি আরও উপকরণ';
	@override String ingredientsLine({required Object count}) => '${count}টি উপাদান শনাক্ত হয়েছে';
	@override String get ingredientsPending => 'উপাদান স্ক্যান করা হচ্ছে…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackBn implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'কী ভুল মনে হচ্ছে?';
	@override String get subtitle => 'এক বা একাধিক সমস্যা নির্বাচন করে বিশ্লেষণ উন্নত করতে আমাদের সাহায্য করুন।';
	@override String get tellUsMore => 'আরও বলুন';
	@override String get describeIncorrect => 'কী ভুল ছিল তা বর্ণনা করুন';
	@override String get submit => 'জমা দিন';
	@override String get issueFoodIdentification => 'খাবার শনাক্তকরণ';
	@override String get issuePortionSize => 'পরিবেশনের আকার';
	@override String get issueCalorieDistribution => 'ক্যালোরি বণ্টন';
	@override String get issueMacrosWrong => 'ম্যাক্রো ভুল';
	@override String get issueMissingItems => 'অনুপস্থিত আইটেম';
	@override String get issueExtraItems => 'অতিরিক্ত আইটেম';
	@override String get issueOther => 'অন্যান্য';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsBn implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get recent => 'সাম্প্রতিক';
	@override String get calories => 'ক্যালোরি';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsBn implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get profile => 'প্রোফাইল';
	@override String get basicInformation => 'প্রাথমিক তথ্য';
	@override String get goalsAndActivity => 'লক্ষ্য ও অ্যাক্টিভিটি';
	@override String get calculatedValues => 'গণিতকৃত মান';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesBn implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'দৈনিক লক্ষ্য';
	@override String get calPerDay => 'cal/day';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsBn implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ব্যক্তিগত তথ্য';
	@override String get physicalMeasurements => 'শারীরিক পরিমাপ';
	@override String get goalsAndActivity => 'লক্ষ্য ও অ্যাক্টিভিটি';
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
	@override String get localization => 'লোকালাইজেশন';
	@override String get notifications => 'নোটিফিকেশন';
	@override String get healthConnect => 'হেলথ কানেক্ট';
	@override String get supportAndLegal => 'সাপোর্ট ও লিগ্যাল';
	@override String get about => 'অ্যাবাউট';
	@override String get dangerZone => 'ডেঞ্জার জোন';
	@override String get developer => 'ডেভেলপার';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileBn implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রোফাইল সম্পাদনা';
	@override String get subtitle => 'আপনার ব্যক্তিগত তথ্য আপডেট করুন';
}

// Path: settings.language
class _TranslationsSettingsLanguageBn implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ভাষা';
	@override String get subtitle => 'পছন্দের ভাষা বেছে নিন';
	@override String get searchHint => 'ভাষা খুঁজুন...';
	@override String get noResults => 'কোনো ফল পাওয়া যায়নি';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitBn implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'উচ্চতার একক';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitBn implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ওজনের একক';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersBn implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'মিল রিমাইন্ডার';
	@override String get subtitle => 'সময়ে মনে করিয়ে লক্ষ্যপথে থাকুন';
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
	@override String get title => 'মতামত পাঠান';
	@override String subtitle({required Object appLabel}) => '${appLabel} উন্নত করতে আমাদের সাহায্য করুন';
	@override String emailSubject({required Object appLabel}) => '${appLabel} অ্যাপ ফিডব্যাক';
	@override String get emailBodyPrefix => 'অনুগ্রহ করে আপনার মতামত নিচে লিখুন:';
	@override String get appVersion => 'অ্যাপ ভার্সন';
	@override String get device => 'ডিভাইস';
	@override String get osVersion => 'ওএস ভার্সন';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryBn implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'মিল ইতিহাস এক্সপোর্ট';
	@override String get subtitle => 'আপনার লগ করা মিলের CSV শেয়ার করুন';
	@override String get shareText => 'Your Calorify meal history export';
	@override String failed({required Object error}) => 'মিল ইতিহাস এক্সপোর্ট করা যায়নি: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataBn implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'সব ডেটা মুছুন';
	@override String get subtitle => 'অপরিবর্তনীয়ভাবে আপনার সব তথ্য মুছে ফেলুন';
	@override String get confirmationTitle => 'সব ডেটা মুছবেন?';
	@override String get confirmationMessage => 'এই কাজটি পূর্বাবস্থায় ফেরানো যাবে না। আপনার সব লগ, পছন্দের তালিকা ও প্রোফাইল সেটিংস স্থায়ীভাবে মুছে ফেলা হবে।';
	@override String get cancel => 'বাতিল';
	@override String get clearEverything => 'সবকিছু মুছে ফেলুন';
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
	@override String get title => 'Health Connect';
	@override String get subtitle => 'অনুমতি দেখুন ও পরিচালনা করুন';
	@override late final _TranslationsSettingsHealthConnectUnavailableBn unavailable = _TranslationsSettingsHealthConnectUnavailableBn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsBn permissions = _TranslationsSettingsHealthConnectPermissionsBn._(_root);
	@override String get managePermissions => 'অনুমতি পরিচালনা করুন';
	@override String get openSettings => 'Health Connect সেটিংস খুলুন';
	@override String get requestPermissions => 'অনুমতি অনুরোধ করুন';
	@override String get permissionRequestCancelledOrFailed => 'অনুমতি অনুরোধ বাতিল বা ব্যর্থ হয়েছে। অনুগ্রহ করে আবার চেষ্টা করুন বা Health Connect সেটিংসে ম্যানুয়ালি দিন।';
	@override String get permissionRequestFailed => 'অনুমতি অনুরোধ করা যায়নি। অনুগ্রহ করে আবার চেষ্টা করুন বা Health Connect সেটিংসে ম্যানুয়ালি দিন।';
	@override String get requestingPermissions => 'অনুরোধ করা হচ্ছে...';
}

// Path: settings.about
class _TranslationsSettingsAboutBn implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'অ্যাবাউট';
	@override String get tagline => 'দ্রুত, ফ্রি এবং প্রাইভেসি-প্রথম ক্যালোরি সচেতনতা';
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
	@override String get title => 'ব্রেকফাস্টের সময়! 🍳';
	@override String get body => 'আপনার ব্রেকফাস্ট লগ করতে ভুলবেন না';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchBn implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'লাঞ্চের সময়! 🥗';
	@override String get body => 'এবার লাঞ্চ লগ করুন';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerBn implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ডিনারের সময়! 🍽️';
	@override String get body => 'আপনার ডিনার লগ করতে ভুলবেন না';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackBn implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্ন্যাকের সময়! 🍎';
	@override String get body => 'একটি স্বাস্থ্যকর স্ন্যাকের সময়';
}

// Path: notifications.test
class _TranslationsNotificationsTestBn implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'টেস্ট নোটিফিকেশন';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapBn implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} আনুমানিক পুষ্টিগত তথ্য প্রদান করে। সঠিকতা নির্ভর করে আপনার ইনপুট ও খাবারের ভিন্নতার উপর। এটি একটি দিকনির্দেশক টুল, চূড়ান্ত উৎস নয়। ব্যক্তিগত ডায়েট পরামর্শের জন্য পেশাদারের সাথে পরামর্শ করুন।';
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
	@override String get title => 'ওজন অনুমান সম্পর্কে';
	@override String get description => 'প্রক্ষেপিত ওজন পরিবর্তন একটি তাত্ত্বিক অনুমান, যেখানে ক্যালোরি ইন বনাম আউটের সরল মডেল ধরা হয়। এটি শুধুই উৎসাহমূলক দিকনির্দেশনা, প্রকৃত ওজনের পূর্বাভাস নয়।';
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
	@override String get description => 'এই মেট্রিকগুলো আপনার শরীরের এনার্জির চাহিদা বুঝতে এবং পুষ্টি লক্ষ্যে দিকনির্দেশ দিতে সাহায্য করে।';
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
	@override String get description => 'Health Connect ডেটা অনুপলব্ধ হলে, আমরা আজকের বার্নড ক্যালোরি অনুমান করি আপনার Basal Metabolic Rate (BMR) ও অ্যাক্টিভিটি স্তর (TDEE) থেকে, দিনের কেটেছে এমন অংশ অনুযায়ী স্কেল করে।';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedBn howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedBn._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceBn professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceBn._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionBn implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্মার্ট ফুড রিকগনিশন';
	@override String get description => 'খাবারের ছবি তুলুন, এআই মিলটি শনাক্ত করবে';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisBn implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'এআই অ্যানালাইসিস';
	@override String get description => 'আপনার বর্ণনা থেকেই তাৎক্ষণিক পুষ্টিগত তথ্য পান';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationBn implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'হেলথ ইন্টিগ্রেশন';
	@override String get description => 'আরও ভালো ইনসাইটের জন্য Health Connect যুক্ত করুন';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesBn implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'কম ওজন';
	@override String get healthyWeight => 'স্বাস্থ্যকর ওজন';
	@override String get overweight => 'অধিক ওজন';
	@override String get obese => 'স্থূলতা';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesBn implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'পুষ্টিসমৃদ্ধ খাবারের মাধ্যমে সুষম ওজনে পৌঁছাতে আমরা আপনাকে সহায়তা করব।';
	@override String get healthy => 'দারুণ! আপনি স্বাস্থ্যকর পরিসরে আছেন। আপনার উদ্যম ও শক্তি ধরে রাখতে আমরা পাশে আছি।';
	@override String overweight({required Object appLabel}) => '${appLabel} এআই-চালিত ট্র্যাকিং দিয়ে আপনার যাত্রাকে সহজ করবে, স্বাচ্ছন্দ্যে লক্ষ্য পূরণে সাহায্য করবে।';
	@override String get obese => 'আপনার স্বাস্থ্য লক্ষ্যে টেকসই ও ব্যক্তিগতকৃত সহায়তা নিয়ে আমরা আছি আপনার পাশে।';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingBn implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'স্বয়ংক্রিয় ক্যালোরি ট্র্যাকিং';
	@override String get description => 'ফিটনেস অ্যাপ থেকে বার্নড ক্যালোরি ট্র্যাক করুন';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsBn implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রগতি ইনসাইটস';
	@override String get description => 'আপনার স্বাস্থ্য প্রবণতা সম্পর্কে বিস্তারিত ইনসাইট পান';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationBn implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'সিমলেস ইন্টিগ্রেশন';
	@override String get description => 'আপনার পছন্দের স্বাস্থ্য অ্যাপগুলো থেকে ডেটা সিঙ্ক করুন';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessBn implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনি একা নন';
	@override String get genericMessage => 'গবেষণায় দেখা গেছে, নিয়মিত ট্র্যাকিং-ই দীর্ঘমেয়াদি সাফল্যের ১ নম্বর পূর্বাভাস।';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age} বছরের একজন ${gender} যিনি ${goal} করতে চান, তার জন্য নিয়মিত ট্র্যাকিং-ই সাফল্যের ১ নম্বর পূর্বাভাস।';
	@override String closingMessage({required Object appLabel}) => 'হাতে হাতে করার চেয়ে ${appLabel} এটি ১০ গুণ সহজ করে দেয়।';
	@override String get getStartedTitle => 'শুরু করতে প্রস্তুত?';
	@override String get tipPhoto => 'তাৎক্ষণিক বিশ্লেষণের জন্য আপনার খাবারের ছবি তুলুন';
	@override String get tipConsistency => 'অর্থবহ অগ্রগতির জন্য নিয়মিতভাবে লগ করুন';
	@override String get tipProgress => 'প্রতিদিন অগ্রগতি ট্র্যাক করে অনুপ্রাণিত থাকুন';
	@override String get button => 'চলুন শুরু করি';
	@override String get defaultGender => 'ব্যক্তি';
	@override String get defaultGoal => 'আরও স্বাস্থ্যকর আপনি';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileBn implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার স্বাস্থ্য প্রোফাইল';
	@override String bmiDescription({required Object bmi}) => 'আপনার মেট্রিক অনুযায়ী, আপনার BMI হলো ${bmi}।';
	@override String get finalizeDescription => 'আপনার অভিজ্ঞতা ব্যক্তিগতকরণে চলুন প্রোফাইলটি চূড়ান্ত করি।';
	@override String get goalGain => 'বাড়াতে';
	@override String get goalLose => 'কমাতে';
	@override String goalReach({required Object diff, required Object unit, required Object direction}) => 'লক্ষ্য পূরণে আপনাকে ${diff} ${unit} ${direction} হবে।';
	@override String get goalReached => 'আপনি লক্ষ্য ওজনে পৌঁছেছেন! এটি ধরে রাখতে আমরা সহায়তা করব।';
	@override String get button => 'চলুন শুরু করি';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleBn implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'চমৎকার শুরু!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'আপনি ${goalText}-এর পথে প্রথম ধাপ নিয়েছেন। যেহেতু আপনি ${activityText}, ${appLabel} আপনার জীবনযাত্রার সাথে মিলিয়ে লক্ষ্যমাত্রা সমন্বয় করবে।';
	@override String get personalizedTargets => 'ব্যক্তিগতকৃত ক্যালোরি লক্ষ্য';
	@override String get aiMealDetection => 'এআই-চালিত মিল শনাক্তকরণ';
	@override String get macroBreakdowns => 'বিস্তারিত ম্যাক্রো-পুষ্টি বিশ্লেষণ';
	@override String get button => 'চলুন শুরু করি';
	@override String get defaultGoal => 'আপনার লক্ষ্য';
	@override String get defaultActivity => 'সক্রিয়';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightBn implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ওজন কমান';
	@override String get description => 'ক্যালোরি ঘাটতি তৈরি করে ওজন কমান';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightBn implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ওজন ধরে রাখুন';
	@override String get description => 'আপনার বর্তমান ওজন বজায় রাখুন';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightBn implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ওজন বাড়ান';
	@override String get description => 'ক্যালোরি উদ্বৃত্ত তৈরি করে ওজন বাড়ান';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryBn implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'নিষ্ক্রিয়';
	@override String get description => 'অল্প বা কোনো ব্যায়াম নয়';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveBn implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'হালকা সক্রিয়';
	@override String get description => 'হালকা ব্যায়াম ১-৩ দিন/সপ্তাহ';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveBn implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'মাঝারি সক্রিয়';
	@override String get description => 'মাঝারি ব্যায়াম ৩-৫ দিন/সপ্তাহ';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveBn implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'খুব সক্রিয়';
	@override String get description => 'কঠোর ব্যায়াম ৬-৭ দিন/সপ্তাহ';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveBn implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get name => 'অত্যন্ত সক্রিয়';
	@override String get description => 'অতি কঠোর ব্যায়াম, শারীরিক পরিশ্রমের কাজ';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableBn implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect অনুপলব্ধ';
	@override String get description => 'এই ডিভাইসে Health Connect উপলব্ধ নয়। দয়া করে Play Store (Android 9+) থেকে Health Connect ইনস্টল করুন অথবা Android 14+ এ আপডেট করুন।';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsBn implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'অনুমতি';
	@override String get description => 'Health Connect ইন্টিগ্রেশনের জন্য নিচের অনুমতিগুলো দরকার:';
	@override String get granted => 'প্রদানকৃত';
	@override String get notGranted => 'প্রদান করা হয়নি';
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
	@override String content({required Object appLabel}) => '${appLabel} এসেছে একটি সহজ বিরক্তি থেকে: বেশিরভাগ ক্যালোরি ট্র্যাকিং অ্যাপ হয় খুব জটিল, ক্রমাগত ম্যানুয়াল ইনপুট চায়, উচ্চ সাবস্ক্রিপশন ফি নেয়, অথবা প্রাইভেসিতে ছাড় দেয়।\n\nএকজন একক ডেভেলপার হিসেবে, আমি কিছুটা সহজ ও ন্যায়সঙ্গত কিছু বানাতে চেয়েছিলাম — এমন একটি অ্যাপ যা এআই দিয়ে পরিশ্রম কমায়, দ্রুত ও ফ্রি থাকে, এবং আপনার স্বাস্থ্য ডেটাকে সম্মানের সাথে দেখে।\n\n${appLabel} সেই অ্যাপ, যেটি আমি চাইতাম: কোনো অ্যাকাউন্ট নয়, কোনো ট্র্যাকিং নয়, কোনো বিজ্ঞাপন নয় — শুধুই স্পষ্ট, ব্যবহারিক ইনসাইট এবং আপনার স্বাস্থ্য লক্ষ্য।';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyBn implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার গোপনীয়তা গুরুত্বপূর্ণ';
	@override String get description => 'প্রাইভেসি কোনো পরের ভাবনা নয় — এটি একটি ডিজাইন নীতি। বাস্তবে এর মানে হলো:';
	@override String get noAccounts => 'অ্যাকাউন্টের প্রয়োজন নেই\nঅ্যাপটি সঙ্গে সঙ্গে ব্যবহার করুন। কোনো সাইন-আপ নয়, কোনো পরিচয় নয়।';
	@override String noTracking({required Object appLabel}) => 'কোনো আচরণগত ট্র্যাকিং নয়\n${appLabel} আপনার কার্যকলাপ মনিটর করে না, ব্যবহার প্রোফাইল বানায় না, বা আপনাকে অ্যাপ/ওয়েবসাইট জুড়ে ট্র্যাক করে না।';
	@override String noAds({required Object appLabel}) => 'বিজ্ঞাপন-বিহীন নকশা\n${appLabel} বিজ্ঞাপন বা ডেটা-চালিত আয়ের উপর নির্ভর না করে কাজ করে।';
	@override String get noDataSelling => 'ডেটা বিক্রি নয়\nআপনার স্বাস্থ্য ডেটা কখনোই তৃতীয় পক্ষের কাছে বিক্রি বা শেয়ার করা হয় না।';
	@override String get localStorage => 'লোকাল-ফার্স্ট স্টোরেজ\nআপনার ডেটা আপনার ডিভাইসেই থাকে।';
	@override String get privacyPolicy => 'গোপনীয়তা নীতিমালা';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperBn implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'একজন একক ডেভেলপারের নির্মাণ';
	@override String description({required Object appLabel}) => '${appLabel} একটি শান্ত, প্রাইভেসি-সম্মানজনক স্বাস্থ্য সফটওয়্যার তৈরিতে নিবেদিত একক ডেভেলপার দ্বারা নির্মিত ও রক্ষণাবেক্ষিত।\n\nআপনার ফিডব্যাক ব্যক্তিগতভাবে পড়া হয় এবং অ্যাপের গতিপথ গঠনে সাহায্য করে।';
	@override String get website => 'ওয়েবসাইট';
	@override String get email => 'ইমেইল';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackBn implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} কি ভালো লাগছে?';
	@override String description({required Object appLabel}) => 'আপনার ফিডব্যাক ${appLabel}-কে সবার জন্য আরও ভালো করে তোলে।';
	@override String get rateApp => 'প্লে স্টোরে রেটিং দিন';
	@override String get sendFeedback => 'মতামত পাঠান';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeBn implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পরিমাণের আকার';
	@override String get description => 'আনুমানিকতার সঠিকতা অনেকটাই নির্ভর করে আপনার পরিমাণ নির্ধারণের সঠিকতার উপর।';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsBn implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'রান্নার পদ্ধতি';
	@override String description({required Object appLabel}) => 'রান্নার পদ্ধতি খাবারের পুষ্টিগুণকে উল্লেখযোগ্যভাবে পরিবর্তন করতে পারে। ${appLabel}-এর অনুমান সবসময় এই ভিন্নতাগুলো বিবেচনায় নেওয়া নাও হতে পারে।';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsBn implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'উপাদান';
	@override String get description => 'অনেক লুকানো উপাদানসহ জটিল খাবারগুলোতে অনুমান কম সঠিক হতে পারে।';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsBn implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ডেটাবেস সীমাবদ্ধতা';
	@override String description({required Object appLabel}) => '${appLabel}-এর খাবার ডেটাবেস বিস্তৃত, তবে তবুও সব খাবার বা ভ্যারিয়েশন নাও থাকতে পারে।';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyBn implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ক্যালোরির নির্ভুলতা';
	@override String get description => 'এই অনুমান আপনার ট্র্যাক করা ক্যালোরি গ্রহণ ও ব্যয়ের নির্ভুলতার উপর নির্ভরশীল। ভুল লগিং ভুল প্রক্ষেপণ দেবে।';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsBn implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'জৈবিক উপাদান';
	@override String description({required Object appLabel}) => 'বাস্তব ওজন কমা/বাড়া প্রভাবিত হয় বিপাক, হরমোন, ঘুম, স্ট্রেস, হাইড্রেশন এবং অন্যান্য ব্যক্তিগত উপাদান দ্বারা — যা ${appLabel} মাপতে পারে না।';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightBn implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পানি ওজন ও ওঠানামা';
	@override String get description => 'দৈনিক স্বাভাবিক ওজন পানি ধারণ, হজম ও সময়ের কারণে উল্লেখযোগ্যভাবে ওঠানামা করতে পারে। এই অনুমানে সেসব দৈনিক পরিবর্তন ধরা হয় না।';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceBn implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পেশাদার দিকনির্দেশনা';
	@override String get description => 'কোনো চিকিৎসাগত সিদ্ধান্তে এই অনুমান ব্যবহার করবেন না। ব্যক্তিগত ওজন ব্যবস্থাপনার জন্য সবসময় স্বাস্থ্য পেশাদার বা নিবন্ধিত ডায়েটিশিয়ানের সাথে পরামর্শ করুন।';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrBn implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'বেসাল মেটাবলিক রেট (BMR) হলো আপনার শরীরের বিশ্রামে থাকা অবস্থায় শ্বাস-প্রশ্বাস ও সঞ্চালনের মতো মৌলিক কাজ বজায় রাখতে পোড়ানো ক্যালোরির পরিমাণ। BMR নির্ভর করে বয়স, লিঙ্গ, উচ্চতা ও ওজনের উপর। বেশি BMR মানে আপনার শরীর বিশ্রামেও বেশি ক্যালোরি পোড়ায় — সাধারণত বেশি পেশীভর, কম বয়স, বা পুরুষ হওয়ার কারণে। কম BMR সাধারণত কম পেশীভর, বেশি বয়স, বা নারী হওয়ার ইঙ্গিত দেয়।';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeBn implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'টোটাল ডেইলি এনার্জি এক্সপেনডিচার (TDEE) হলো প্রতিদিন মোট কত ক্যালোরি আপনি পোড়ান — যাতে BMR সহ শারীরিক কার্যকলাপ ও দৈনন্দিন নড়াচড়ার ক্যালোরিও অন্তর্ভুক্ত। TDEE নির্ভর করে আপনার BMR ও অ্যাক্টিভিটি স্তরের উপর। বেশি TDEE মানে সার্বিকভাবে আপনি বেশি ক্যালোরি পোড়ান — সাধারণত বেশি সক্রিয়তা বা বেশি BMR-এর কারণে। কম TDEE কম দৈনন্দিন সক্রিয়তা বা কম BMR নির্দেশ করে।';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalBn implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'দৈনিক লক্ষ্য';
	@override String get description => 'দৈনিক লক্ষ্য হলো আপনার TDEE ও ওজনের লক্ষ্যের ভিত্তিতে প্রতিদিনের সুপারিশকৃত ক্যালোরি গ্রহণ। ওজন কমাতে TDEE থেকে কম খান, বজায় রাখতে TDEE-এর সমান খান, আর ওজন বাড়াতে TDEE থেকে বেশি খান। এতে আপনি স্বাস্থ্যকর গতিতে কাঙ্ক্ষিত ওজন পরিবর্তনে পৌঁছাতে পারবেন।';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedBn implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'কীভাবে এই অনুমান করা হয়';
	@override String get description => 'আমরা আপনার প্রোফাইলের ভিত্তিতে TDEE গণনা করি এবং দিনের অতিবাহিত ভগ্নাংশ (ঘণ্টা + মিনিট)/24 দিয়ে গুণ করে এ পর্যন্ত বার্নড ক্যালোরি অনুমান করি।';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceBn implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পেশাদার দিকনির্দেশনা';
	@override String get description => 'কোনো চিকিৎসাগত সিদ্ধান্তে এই অনুমান ব্যবহার করবেন না। ব্যক্তিগত পরামর্শের জন্য সবসময় স্বাস্থ্য পেশাদার বা নিবন্ধিত ডায়েটিশিয়ানের সাথে পরামর্শ করুন।';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedBn implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'মোট বার্নড ক্যালোরি পড়ুন';
	@override String get description => 'অ্যাপকে Health Connect থেকে আপনার মোট বার্নড ক্যালোরি পড়তে দেয়।';
	@override String get usage => 'এই অনুমতি অ্যাপে আপনার দৈনিক ক্যালোরি বার্ন দেখাতে ব্যবহৃত হয়, যা সারাদিনে আপনার মোট এনার্জি ব্যয়ের ধারণা দেয়।';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadBn implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পুষ্টি ডেটা পড়ুন';
	@override String get description => 'অ্যাপকে Health Connect থেকে পুষ্টি ডেটা পড়তে দেয়।';
	@override String get usage => 'এই অনুমতি অন্য অ্যাপে লোগ হওয়া পুষ্টি তথ্য পড়ে একটি সমন্বিত পুষ্টি ভিউ প্রদান করতে ব্যবহৃত হয়।';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteBn implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteBn._(this._root);

	final TranslationsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পুষ্টি ডেটা লিখুন';
	@override String get description => 'অ্যাপকে Health Connect-এ পুষ্টি ডেটা লিখতে দেয়।';
	@override String get usage => 'এই অনুমতি আপনার লগ করা মিলগুলো Health Connect-এ সিঙ্ক করতে ব্যবহৃত হয়, যাতে আপনি ব্যবহৃত অন্য স্বাস্থ্য/ফিটনেস অ্যাপেও এগুলো ব্যবহার করতে পারেন।';
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
			'errors.rateLimitExceeded' => 'আপনি অনেক বেশি অনুরোধ করেছেন। অনুগ্রহ করে কিছুক্ষণ পরে আবার চেষ্টা করুন।',
			'errors.networkError' => 'নেটওয়ার্ক ত্রুটি। আপনার ইন্টারনেট সংযোগ পরীক্ষা করুন।',
			'errors.unknownError' => 'কিছু ভুল হয়েছে। পরে আবার চেষ্টা করুন।',
			'errors.loadingProfileData' => 'প্রোফাইল ডেটা লোড করতে ত্রুটি',
			'errors.somethingWentWrong' => 'কিছু ভুল হয়েছে।',
			'errors.retry' => 'আবার চেষ্টা করুন',
			'onboarding.welcome' => ({required Object appLabel}) => 'স্বাগতম ${appLabel}-এ',
			'onboarding.subtitle' => 'এআই দ্বারা পরিচালিত আপনার ব্যক্তিগত পুষ্টি সহায়ক',
			'onboarding.getStarted' => 'শুরু করুন',
			'onboarding.features.foodRecognition.title' => 'স্মার্ট ফুড রিকগনিশন',
			'onboarding.features.foodRecognition.description' => 'খাবারের ছবি তুলুন, এআই মিলটি শনাক্ত করবে',
			'onboarding.features.aiAnalysis.title' => 'এআই অ্যানালাইসিস',
			'onboarding.features.aiAnalysis.description' => 'আপনার বর্ণনা থেকেই তাৎক্ষণিক পুষ্টিগত তথ্য পান',
			'onboarding.features.healthIntegration.title' => 'হেলথ ইন্টিগ্রেশন',
			'onboarding.features.healthIntegration.description' => 'আরও ভালো ইনসাইটের জন্য Health Connect যুক্ত করুন',
			'onboarding.gender.title' => 'আপনার লিঙ্গ কী?',
			'onboarding.gender.description' => 'বেসাল মেটাবলিক রেট (BMR) নির্ভুলভাবে গণনায় লিঙ্গ সহায়তা করে।',
			'onboarding.gender.next' => 'পরবর্তী',
			'onboarding.height.title' => 'আপনার উচ্চতা কত?',
			'onboarding.height.description' => 'আপনার উচ্চতা আমাদের BMI এবং এনার্জির চাহিদা সঠিকভাবে নির্ণয়ে সাহায্য করে।',
			'onboarding.height.metric' => 'মেট্রিক',
			'onboarding.height.imperial' => 'ইম্পেরিয়াল',
			'onboarding.height.next' => 'পরবর্তী',
			'onboarding.weight.currentTitle' => 'আপনার বর্তমান ওজন কত?',
			'onboarding.weight.currentDescription' => 'আপনার দৈনিক লক্ষ্য ব্যক্তিগতকরণে বর্তমান ওজন গুরুত্বপূর্ণ।',
			'onboarding.weight.targetTitle' => 'আপনার লক্ষ্য ওজন কত?',
			'onboarding.weight.targetDescription' => 'লক্ষ্য ওজন নির্ধারণ দীর্ঘমেয়াদি পরিকল্পনা তৈরিতে সাহায্য করে।',
			'onboarding.weight.metric' => 'মেট্রিক',
			'onboarding.weight.imperial' => 'ইম্পেরিয়াল',
			'onboarding.weight.next' => 'পরবর্তী',
			'onboarding.age.title' => 'আপনার জন্মতারিখ কবে?',
			'onboarding.age.description' => 'ক্যালোরির প্রয়োজনীয়তা সঠিকভাবে হিসাব করতে আপনার বয়স দরকার।',
			'onboarding.age.next' => 'পরবর্তী',
			'onboarding.bmiScale.underweight' => 'কম',
			'onboarding.bmiScale.healthy' => 'স্বাভাবিক',
			'onboarding.bmiScale.overweight' => 'বেশি',
			'onboarding.bmiScale.obese' => 'স্থূল',
			'onboarding.bmiScale.categories.underweight' => 'কম ওজন',
			'onboarding.bmiScale.categories.healthyWeight' => 'স্বাস্থ্যকর ওজন',
			'onboarding.bmiScale.categories.overweight' => 'অধিক ওজন',
			'onboarding.bmiScale.categories.obese' => 'স্থূলতা',
			'onboarding.bmiScale.messages.underweight' => 'পুষ্টিসমৃদ্ধ খাবারের মাধ্যমে সুষম ওজনে পৌঁছাতে আমরা আপনাকে সহায়তা করব।',
			'onboarding.bmiScale.messages.healthy' => 'দারুণ! আপনি স্বাস্থ্যকর পরিসরে আছেন। আপনার উদ্যম ও শক্তি ধরে রাখতে আমরা পাশে আছি।',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} এআই-চালিত ট্র্যাকিং দিয়ে আপনার যাত্রাকে সহজ করবে, স্বাচ্ছন্দ্যে লক্ষ্য পূরণে সাহায্য করবে।',
			'onboarding.bmiScale.messages.obese' => 'আপনার স্বাস্থ্য লক্ষ্যে টেকসই ও ব্যক্তিগতকৃত সহায়তা নিয়ে আমরা আছি আপনার পাশে।',
			'onboarding.weightGoal.title' => 'আপনার লক্ষ্য কী?',
			'onboarding.weightGoal.description' => 'আপনার উদ্দেশ্যকে সবচেয়ে ভালোভাবে বর্ণনা করে এমন লক্ষ্য বেছে নিন',
			'onboarding.activityLevel.title' => 'আপনি কতটা সক্রিয়?',
			'onboarding.activityLevel.description' => 'এটি আমাদেরকে আপনার দৈনিক ক্যালোরির প্রয়োজন আরও নির্ভুলভাবে নির্ণয়ে সাহায্য করবে',
			'onboarding.healthConnect.title' => 'Health Connect যুক্ত করুন',
			'onboarding.healthConnect.description' => 'আরও ভালো ইনসাইট আর স্বয়ংক্রিয় ক্যালোরি ট্র্যাকিংয়ের জন্য আপনার স্বাস্থ্য ডেটা সিঙ্ক করুন',
			'onboarding.healthConnect.automaticTracking.title' => 'স্বয়ংক্রিয় ক্যালোরি ট্র্যাকিং',
			'onboarding.healthConnect.automaticTracking.description' => 'ফিটনেস অ্যাপ থেকে বার্নড ক্যালোরি ট্র্যাক করুন',
			'onboarding.healthConnect.progressInsights.title' => 'প্রগতি ইনসাইটস',
			'onboarding.healthConnect.progressInsights.description' => 'আপনার স্বাস্থ্য প্রবণতা সম্পর্কে বিস্তারিত ইনসাইট পান',
			'onboarding.healthConnect.seamlessIntegration.title' => 'সিমলেস ইন্টিগ্রেশন',
			'onboarding.healthConnect.seamlessIntegration.description' => 'আপনার পছন্দের স্বাস্থ্য অ্যাপগুলো থেকে ডেটা সিঙ্ক করুন',
			'onboarding.healthConnect.connected' => 'Health Connect সংযুক্ত',
			'onboarding.healthConnect.notConnected' => 'Health Connect সংযুক্ত নয়',
			'onboarding.healthConnect.setup' => 'Health Connect সেটআপ',
			'onboarding.healthConnect.skipForNow' => 'এই মুহূর্তে এড়িয়ে যান',
			'onboarding.healthConnect.statusConnected' => 'Health Connect সংযুক্ত রয়েছে।',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect সফলভাবে সংযুক্ত হয়েছে!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'অনুমতি অস্বীকৃত। ${appLabel}-এর জন্য আপনার ফোনের সেটিংসে Health Connect অনুমতিগুলো সক্রিয় করুন।',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect সেটআপে ত্রুটি: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'আপনি একা নন',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'গবেষণায় দেখা গেছে, নিয়মিত ট্র্যাকিং-ই দীর্ঘমেয়াদি সাফল্যের ১ নম্বর পূর্বাভাস।',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age} বছরের একজন ${gender} যিনি ${goal} করতে চান, তার জন্য নিয়মিত ট্র্যাকিং-ই সাফল্যের ১ নম্বর পূর্বাভাস।',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => 'হাতে হাতে করার চেয়ে ${appLabel} এটি ১০ গুণ সহজ করে দেয়।',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'শুরু করতে প্রস্তুত?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'তাৎক্ষণিক বিশ্লেষণের জন্য আপনার খাবারের ছবি তুলুন',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'অর্থবহ অগ্রগতির জন্য নিয়মিতভাবে লগ করুন',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'প্রতিদিন অগ্রগতি ট্র্যাক করে অনুপ্রাণিত থাকুন',
			'onboarding.reinforcement.trackingSuccess.button' => 'চলুন শুরু করি',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'ব্যক্তি',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'আরও স্বাস্থ্যকর আপনি',
			'onboarding.reinforcement.healthProfile.title' => 'আপনার স্বাস্থ্য প্রোফাইল',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'আপনার মেট্রিক অনুযায়ী, আপনার BMI হলো ${bmi}।',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'আপনার অভিজ্ঞতা ব্যক্তিগতকরণে চলুন প্রোফাইলটি চূড়ান্ত করি।',
			'onboarding.reinforcement.healthProfile.goalGain' => 'বাড়াতে',
			'onboarding.reinforcement.healthProfile.goalLose' => 'কমাতে',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object diff, required Object unit, required Object direction}) => 'লক্ষ্য পূরণে আপনাকে ${diff} ${unit} ${direction} হবে।',
			'onboarding.reinforcement.healthProfile.goalReached' => 'আপনি লক্ষ্য ওজনে পৌঁছেছেন! এটি ধরে রাখতে আমরা সহায়তা করব।',
			'onboarding.reinforcement.healthProfile.button' => 'চলুন শুরু করি',
			'onboarding.reinforcement.goalLifestyle.title' => 'চমৎকার শুরু!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'আপনি ${goalText}-এর পথে প্রথম ধাপ নিয়েছেন। যেহেতু আপনি ${activityText}, ${appLabel} আপনার জীবনযাত্রার সাথে মিলিয়ে লক্ষ্যমাত্রা সমন্বয় করবে।',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'ব্যক্তিগতকৃত ক্যালোরি লক্ষ্য',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'এআই-চালিত মিল শনাক্তকরণ',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'বিস্তারিত ম্যাক্রো-পুষ্টি বিশ্লেষণ',
			'onboarding.reinforcement.goalLifestyle.button' => 'চলুন শুরু করি',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'আপনার লক্ষ্য',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'সক্রিয়',
			'tabs.dashboard' => 'ড্যাশবোর্ড',
			'tabs.history' => 'ইতিহাস',
			'home.aiSummary.title' => 'আপনার এআই সারাংশ',
			'home.aiSummary.logMore' => 'পরবর্তী কয়েক দিনে আরও মিল লগ করুন আপনার ব্যক্তিগত এআই ইনসাইট পেতে।',
			'home.aiSummary.loading' => 'আপনার সারাংশ লোড হচ্ছে...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count}টি মিল লগ হয়েছে',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'ব্যালান্স স্কোর ${score}',
			'home.aiSummary.topFoods' => 'শীর্ষ খাবার',
			'home.aiSummary.trendUp' => 'ক্যালোরি ঊর্ধ্বমুখী',
			'home.aiSummary.trendDown' => 'ক্যালোরি নিম্নগামী',
			'home.aiSummary.trendSteady' => 'ক্যালোরি স্থির রয়েছে',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'আপডেট হয়েছে ${time}',
			'home.dailyGoal.title' => 'আপনার দৈনিক লক্ষ্য নির্ধারণ করুন',
			'home.dailyGoal.titleSet' => 'আপনার দৈনিক লক্ষ্য',
			'home.dailyGoal.description' => 'আপনার সুস্থতার যাত্রা শুরু করতে প্রস্তুত? নীচে আপনার দৈনিক ক্যালোরি টার্গেট সেট করুন।',
			'home.dailyGoal.descriptionSet' => 'আপনার কম্পাস সেট! এটি আপনার দৈনিক ক্যালোরি টার্গেট।',
			'home.dailyGoal.yourGoal' => 'আপনার লক্ষ্য',
			'home.dailyGoal.goal' => 'লক্ষ্য',
			'home.dailyGoal.dailyCalories' => 'দৈনিক ক্যালোরি (kcal)',
			'home.dailyGoal.setGoal' => 'লক্ষ্য নির্ধারণ',
			'home.dailyGoal.intake' => 'গ্রহণ',
			'home.dailyGoal.burned' => 'খরচ',
			'home.dailyGoal.weightImpact' => 'ওজনের প্রভাব',
			'home.dailyGoal.estLoss' => 'আনুমানিক কমবে',
			'home.dailyGoal.estGain' => 'আনুমানিক বাড়বে',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'দৈনিক সারাংশ',
			'home.dailySummary.calories' => 'ক্যালোরি',
			'home.dailySummary.carbs' => 'কার্বস',
			'home.dailySummary.protein' => 'প্রোটিন',
			'home.dailySummary.fat' => 'ফ্যাট',
			'home.dailySummary.fiber' => 'ফাইবার',
			'home.dailySummary.grams' => 'গ্রাম',
			'home.dailySummary.chartAccessibilityLabel' => 'ম্যাক্রো চার্ট',
			'home.intakeProgress.title' => 'আজকের ম্যাক্রো বণ্টন',
			'home.intakeProgress.target' => 'লক্ষ্য',
			'home.intakeProgress.current' => 'বর্তমান',
			'home.intakeHistory.title' => '৭ দিনের ম্যাক্রো ইতিহাস',
			'home.intakeHistory.trendTitle' => 'আজকের প্রবণতা',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'সর্বোচ্চ: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'এখনও কোনো ইতিহাস নেই',
			'home.intakeHistory.startLogging' => 'আপনার\n৭ দিনের ম্যাক্রো ট্রেন্ড দেখতে খাবার লগ করা শুরু করুন',
			'home.mealLog.title' => 'লগ হওয়া মিল',
			'home.mealLog.emptyMessage' => 'এখানে লগ করতে আপনার শেষ মিলের ছবি তুলুন।',
			'home.mealLog.noMealsToday' => 'আজ কোনো মিল রেকর্ড হয়নি',
			'home.mealLog.seeAllMeals' => 'সব মিল দেখুন',
			'home.mealDescription.title' => 'এআই দিয়ে দ্রুত যোগ করুন',
			'home.mealDescription.description' => 'আপনার মিলটি বর্ণনা করুন, বাকি কাজ এআই করবে।',
			'home.mealDescription.hint' => 'যেমন: ব্রেকফাস্টে আমি বড় এক বাটি ওটমিলের সাথে স্লাইস করা কলা আর এক স্কুপ হুয়ে প্রোটিন খেয়েছি ...',
			'home.mealDescription.analyzeMeal' => 'মিল বিশ্লেষণ করুন',
			'home.favoriteMeals.title' => 'পছন্দের মিল',
			'home.favoriteMeals.description' => 'দ্রুত আপনার প্রিয় মিলগুলোর একটি যোগ করুন।',
			'home.favoriteMeals.noFavorites' => 'এখনও কোনো পছন্দের মিল নেই।',
			'home.favoriteMeals.addFavoriteHint' => 'কোনো মিলকে পছন্দের করতে তার পাশে থাকা তারকা আইকনে চাপুন।',
			'home.favoriteMeals.seeAll' => 'সব দেখুন',
			'home.favoriteMeals.add' => 'যোগ করুন',
			'home.mealSnap.title' => 'ছবি তুলে মিল ট্র্যাক করুন',
			'home.mealSnap.description' => 'এআই বিশ্লেষণের জন্য আপনার খাবারের ছবি তুলতে ক্যামেরা ব্যবহার করুন।',
			'home.mealSnap.openCamera' => 'ক্যামেরা খুলুন',
			'home.mealSnap.gallery' => 'গ্যালারি',
			'home.mealSnap.compressingPhoto' => 'ছবি অপ্টিমাইজ করা হচ্ছে…',
			'home.mealSnap.uploadingPhoto' => 'ছবি আপলোড করা হচ্ছে…',
			'home.connectHealth.title' => 'Health Connect-এর সাথে সিঙ্ক করুন',
			'home.connectHealth.description' => 'আপনার পুষ্টি ডেটা Health Connect-এ সিঙ্ক করুন',
			'home.connectHealth.install' => 'ইনস্টল',
			'home.connectHealth.connect' => 'কনেক্ট',
			'history.noMeals' => 'কোনো মিল রেকর্ড নেই',
			'history.emptyMessage' => 'এখানে লগ করতে আপনার শেষ মিলের ছবি তুলুন।',
			'history.today' => 'আজ',
			'history.yesterday' => 'গতকাল',
			'meal.ohNo' => 'ওহ না!',
			'meal.delete' => 'মুছুন',
			'meal.editMeal' => 'মিল সম্পাদনা',
			'meal.addMeal' => 'মিল যোগ করুন',
			'meal.saveMeal' => 'মিল সংরক্ষণ',
			'meal.save' => 'সংরক্ষণ',
			'meal.mealName' => 'মিলের নাম',
			'meal.mealNameHint' => 'যেমন, ডিমভাজি ও টোস্ট',
			'meal.mealQuantity' => 'খাবারের পরিমাণ',
			'meal.mealQuantityHint' => 'যেমন, ১ বাটি, ২ স্লাইস',
			'meal.timeOfMeal' => 'খাবারের সময়',
			'meal.timeOfMealHint' => 'আপনি কখন মিলটি খেয়েছেন তা নির্বাচন করুন',
			'meal.mealType' => 'খাবারের ধরন',
			'meal.nutrition.calories' => 'ক্যালোরি',
			'meal.nutrition.carbs' => 'কার্বস (g)',
			'meal.nutrition.protein' => 'প্রোটিন (g)',
			'meal.nutrition.fat' => 'ফ্যাট (g)',
			'meal.nutrition.fiber' => 'ফাইবার (g)',
			'meal.deleteConfirmation.title' => 'মিল মুছুন',
			'meal.deleteConfirmation.message' => 'আপনি কি নিশ্চিত এই মিলটি মুছে ফেলতে চান?',
			'meal.deleteConfirmation.cancel' => 'বাতিল',
			'meal.deleteConfirmation.delete' => 'মুছুন',
			'meal.addedToLog' => 'মিলটি আপনার লগে যোগ হয়েছে!',
			'meal.couldNotAdd' => ({required Object error}) => 'মিল যোগ করা যায়নি: ${error}',
			'meal.savedSuccessfully' => 'মিল সফলভাবে যোগ হয়েছে!',
			'meal.updatedSuccessfully' => 'মিল সফলভাবে আপডেট হয়েছে!',
			'meal.errorSaving' => ({required Object error}) => 'সংরক্ষণে ত্রুটি: ${error}',
			'meal.removedFromFavorites' => 'পছন্দ থেকে সরানো হয়েছে!',
			'meal.savedAsFavorite' => 'মিলটি পছন্দে সংরক্ষণ হয়েছে!',
			'meal.unfavorite' => 'ফেভারিট সরান',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'ফেভারিট আপডেট করা যায়নি: ${error}',
			'meal.feedbackThanks' => 'মতামতের জন্য ধন্যবাদ!',
			'meal.reanalysisUpdated' => 'আপনার প্রতিক্রিয়ার ভিত্তিতে মিল বিশ্লেষণ আপডেট করা হয়েছে।',
			'meal.failedToProcess' => ({required Object error}) => 'প্রসেস করতে ব্যর্থ: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'ছবি প্রসেস করতে ব্যর্থ: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'ছবি কম্প্রেস করতে ত্রুটি: ${error}',
			'meal.failedToSave' => 'ডেটা সংরক্ষণ ব্যর্থ। আবার চেষ্টা করুন।',
			'meal.skip' => 'এড়িয়ে যান',
			'meal.questionFlow.progress' => ({required Object total, required Object current}) => 'মোট ${total}টির মধ্যে ${current} নম্বর প্রশ্ন',
			'meal.questionFlow.noQuestionsAvailable' => 'কোনও প্রশ্ন উপলব্ধ নেই',
			'meal.questionFlow.next' => 'পরবর্তী',
			'meal.questionFlow.continueLabel' => 'চালিয়ে যান',
			'meal.analysis.title' => 'এআই মিল বিশ্লেষণ',
			'meal.analysis.stepStarted' => 'শুরু হচ্ছে…',
			'meal.analysis.stepDecomposition' => 'আপনার মিল বোঝা হচ্ছে…',
			'meal.analysis.stepIngredients' => 'উপাদানগুলিকে পুষ্টি ডেটার সাথে মেলানো হচ্ছে…',
			'meal.analysis.stepUncertainty' => 'বিশ্বাসযোগ্যতা যাচাই হচ্ছে…',
			'meal.analysis.stepMealTypeQuestion' => 'প্রায় হয়ে গেছে…',
			'meal.analysis.stepResult' => 'ফলাফল চূড়ান্ত করা হচ্ছে…',
			'meal.analysis.stepError' => 'কিছু ভুল হয়েছে',
			'meal.analysis.stepDefault' => 'আপনার মিল বিশ্লেষণ করা হচ্ছে…',
			'meal.analysis.progressUnderstand' => 'বোঝা',
			'meal.analysis.progressMatch' => 'মিল',
			'meal.analysis.progressCheck' => 'যাচাই',
			'meal.analysis.progressMealType' => 'খাবারের ধরন নির্বাচন করা হচ্ছে',
			'meal.analysis.progressFinish' => 'শেষ',
			'meal.analysis.detectedIngredientHeading' => 'আমরা যা শনাক্ত করছি',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count}টি আরও উপকরণ',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count}টি উপাদান শনাক্ত হয়েছে',
			'meal.analysis.ingredientsPending' => 'উপাদান স্ক্যান করা হচ্ছে…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'কী ভুল মনে হচ্ছে?',
			'meal.feedback.subtitle' => 'এক বা একাধিক সমস্যা নির্বাচন করে বিশ্লেষণ উন্নত করতে আমাদের সাহায্য করুন।',
			'meal.feedback.tellUsMore' => 'আরও বলুন',
			'meal.feedback.describeIncorrect' => 'কী ভুল ছিল তা বর্ণনা করুন',
			'meal.feedback.submit' => 'জমা দিন',
			'meal.feedback.issueFoodIdentification' => 'খাবার শনাক্তকরণ',
			'meal.feedback.issuePortionSize' => 'পরিবেশনের আকার',
			'meal.feedback.issueCalorieDistribution' => 'ক্যালোরি বণ্টন',
			'meal.feedback.issueMacrosWrong' => 'ম্যাক্রো ভুল',
			'meal.feedback.issueMissingItems' => 'অনুপস্থিত আইটেম',
			'meal.feedback.issueExtraItems' => 'অতিরিক্ত আইটেম',
			'meal.feedback.issueOther' => 'অন্যান্য',
			'favorites.title' => 'পছন্দের তালিকা',
			'favorites.empty' => 'এখনও কোনো পছন্দের মিল নেই।',
			'favorites.searchPlaceholder' => 'পছন্দের মিল খুঁজুন',
			'favorites.searchEmptyTitle' => 'আপনার অনুসন্ধানের সাথে কোনো ফেভারিট মেলেনি',
			'favorites.searchEmptySubtitle' => 'ভিন্ন কোনো মিলের নাম, পরিমাণ, বা খাবারের ধরন চেষ্টা করুন।',
			'favorites.sortLabel' => 'ফেভারিট সাজান',
			'favorites.undo' => 'আনডু',
			'favorites.removed' => ({required Object name}) => 'ফেভারিট থেকে ${name} সরানো হয়েছে',
			'favorites.sortOptions.recent' => 'সাম্প্রতিক',
			'favorites.sortOptions.calories' => 'ক্যালোরি',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'প্রোফাইল',
			'profile.noProfileData' => 'কোনো প্রোফাইল ডেটা পাওয়া যায়নি',
			'profile.yourProfile' => 'আপনার প্রোফাইল',
			'profile.viewAndManage' => 'আপনার স্বাস্থ্য তথ্য দেখুন ও পরিচালনা করুন',
			'profile.sections.profile' => 'প্রোফাইল',
			'profile.sections.basicInformation' => 'প্রাথমিক তথ্য',
			'profile.sections.goalsAndActivity' => 'লক্ষ্য ও অ্যাক্টিভিটি',
			'profile.sections.calculatedValues' => 'গণিতকৃত মান',
			'profile.gender' => 'লিঙ্গ',
			'profile.height' => 'উচ্চতা',
			'profile.weight' => 'ওজন',
			'profile.age' => 'বয়স',
			'profile.weightGoal' => 'ওজনের লক্ষ্য',
			'profile.targetWeight' => 'লক্ষ্য ওজন',
			'profile.activityLevel' => 'অ্যাক্টিভিটি স্তর',
			'profile.healthMetrics' => 'স্বাস্থ্য মেট্রিকস',
			'profile.notSet' => 'সেট করা হয়নি',
			'profile.years' => 'বছর',
			'profile.updatedSuccessfully' => 'প্রোফাইল সফলভাবে আপডেট হয়েছে!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'দৈনিক লক্ষ্য',
			'profile.calculatedValues.calPerDay' => 'cal/day',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'স্বাস্থ্য স্কোর',
			'healthScore.whyThisScore' => 'এই স্কোর কেন?',
			'healthScore.note' => 'এই স্কোরটি চিহ্নিত উপাদান ও পুষ্টিঘনতার ভিত্তিতে এআই-এর একটি অনুমান। ব্যক্তিগত পরামর্শের জন্য সবসময় পেশাদারের সাথে পরামর্শ করুন।',
			'healthScore.unhealthy' => 'অস্বাস্থ্যকর',
			'healthScore.healthy' => 'স্বাস্থ্যকর',
			'healthScore.neutral' => 'নিরপেক্ষ',
			'editProfile.title' => 'প্রোফাইল সম্পাদনা',
			'editProfile.sections.personalInformation' => 'ব্যক্তিগত তথ্য',
			'editProfile.sections.physicalMeasurements' => 'শারীরিক পরিমাপ',
			'editProfile.sections.goalsAndActivity' => 'লক্ষ্য ও অ্যাক্টিভিটি',
			'editProfile.gender' => 'লিঙ্গ',
			'editProfile.dateOfBirth' => 'জন্মতারিখ',
			'editProfile.height' => 'উচ্চতা',
			'editProfile.weight' => 'ওজন',
			'editProfile.weightGoal' => 'ওজনের লক্ষ্য',
			'editProfile.activityLevel' => 'অ্যাক্টিভিটি স্তর',
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
			'editProfile.weightGoals.loseWeight.description' => 'ক্যালোরি ঘাটতি তৈরি করে ওজন কমান',
			'editProfile.weightGoals.maintainWeight.name' => 'ওজন ধরে রাখুন',
			'editProfile.weightGoals.maintainWeight.description' => 'আপনার বর্তমান ওজন বজায় রাখুন',
			'editProfile.weightGoals.gainWeight.name' => 'ওজন বাড়ান',
			'editProfile.weightGoals.gainWeight.description' => 'ক্যালোরি উদ্বৃত্ত তৈরি করে ওজন বাড়ান',
			'editProfile.activityLevels.sedentary.name' => 'নিষ্ক্রিয়',
			'editProfile.activityLevels.sedentary.description' => 'অল্প বা কোনো ব্যায়াম নয়',
			'editProfile.activityLevels.lightlyActive.name' => 'হালকা সক্রিয়',
			'editProfile.activityLevels.lightlyActive.description' => 'হালকা ব্যায়াম ১-৩ দিন/সপ্তাহ',
			'editProfile.activityLevels.moderatelyActive.name' => 'মাঝারি সক্রিয়',
			'editProfile.activityLevels.moderatelyActive.description' => 'মাঝারি ব্যায়াম ৩-৫ দিন/সপ্তাহ',
			'editProfile.activityLevels.veryActive.name' => 'খুব সক্রিয়',
			'editProfile.activityLevels.veryActive.description' => 'কঠোর ব্যায়াম ৬-৭ দিন/সপ্তাহ',
			'editProfile.activityLevels.extremelyActive.name' => 'অত্যন্ত সক্রিয়',
			'editProfile.activityLevels.extremelyActive.description' => 'অতি কঠোর ব্যায়াম, শারীরিক পরিশ্রমের কাজ',
			'settings.title' => 'সেটিংস',
			'settings.sections.profile' => 'প্রোফাইল',
			'settings.sections.localization' => 'লোকালাইজেশন',
			'settings.sections.notifications' => 'নোটিফিকেশন',
			'settings.sections.healthConnect' => 'হেলথ কানেক্ট',
			'settings.sections.supportAndLegal' => 'সাপোর্ট ও লিগ্যাল',
			'settings.sections.about' => 'অ্যাবাউট',
			'settings.sections.dangerZone' => 'ডেঞ্জার জোন',
			'settings.sections.developer' => 'ডেভেলপার',
			'settings.editProfile.title' => 'প্রোফাইল সম্পাদনা',
			'settings.editProfile.subtitle' => 'আপনার ব্যক্তিগত তথ্য আপডেট করুন',
			'settings.language.title' => 'ভাষা',
			'settings.language.subtitle' => 'পছন্দের ভাষা বেছে নিন',
			'settings.language.searchHint' => 'ভাষা খুঁজুন...',
			'settings.language.noResults' => 'কোনো ফল পাওয়া যায়নি',
			'settings.heightUnit.title' => 'উচ্চতার একক',
			'settings.weightUnit.title' => 'ওজনের একক',
			'settings.mealReminders.title' => 'মিল রিমাইন্ডার',
			'settings.mealReminders.subtitle' => 'সময়ে মনে করিয়ে লক্ষ্যপথে থাকুন',
			'settings.theme.title' => 'থিম',
			'settings.theme.light' => 'লাইট',
			'settings.theme.dark' => 'ডার্ক',
			'settings.theme.system' => 'সিস্টেম',
			'settings.sendFeedback.title' => 'মতামত পাঠান',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} উন্নত করতে আমাদের সাহায্য করুন',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} অ্যাপ ফিডব্যাক',
			'settings.sendFeedback.emailBodyPrefix' => 'অনুগ্রহ করে আপনার মতামত নিচে লিখুন:',
			'settings.sendFeedback.appVersion' => 'অ্যাপ ভার্সন',
			'settings.sendFeedback.device' => 'ডিভাইস',
			'settings.sendFeedback.osVersion' => 'ওএস ভার্সন',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'মিল ইতিহাস এক্সপোর্ট',
			'settings.exportMealHistory.subtitle' => 'আপনার লগ করা মিলের CSV শেয়ার করুন',
			'settings.exportMealHistory.shareText' => 'Your Calorify meal history export',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'মিল ইতিহাস এক্সপোর্ট করা যায়নি: ${error}',
			'settings.clearAllData.title' => 'সব ডেটা মুছুন',
			'settings.clearAllData.subtitle' => 'অপরিবর্তনীয়ভাবে আপনার সব তথ্য মুছে ফেলুন',
			'settings.clearAllData.confirmationTitle' => 'সব ডেটা মুছবেন?',
			'settings.clearAllData.confirmationMessage' => 'এই কাজটি পূর্বাবস্থায় ফেরানো যাবে না। আপনার সব লগ, পছন্দের তালিকা ও প্রোফাইল সেটিংস স্থায়ীভাবে মুছে ফেলা হবে।',
			'settings.clearAllData.cancel' => 'বাতিল',
			'settings.clearAllData.clearEverything' => 'সবকিছু মুছে ফেলুন',
			'settings.debugOptions.title' => 'ডিবাগ অপশন',
			'settings.developerModeEnabled' => 'ডেভেলপার মোড চালু হয়েছে!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'অনুমতি দেখুন ও পরিচালনা করুন',
			'settings.healthConnect.unavailable.title' => 'Health Connect অনুপলব্ধ',
			'settings.healthConnect.unavailable.description' => 'এই ডিভাইসে Health Connect উপলব্ধ নয়। দয়া করে Play Store (Android 9+) থেকে Health Connect ইনস্টল করুন অথবা Android 14+ এ আপডেট করুন।',
			'settings.healthConnect.permissions.title' => 'অনুমতি',
			'settings.healthConnect.permissions.description' => 'Health Connect ইন্টিগ্রেশনের জন্য নিচের অনুমতিগুলো দরকার:',
			'settings.healthConnect.permissions.granted' => 'প্রদানকৃত',
			'settings.healthConnect.permissions.notGranted' => 'প্রদান করা হয়নি',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'মোট বার্নড ক্যালোরি পড়ুন',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'অ্যাপকে Health Connect থেকে আপনার মোট বার্নড ক্যালোরি পড়তে দেয়।',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'এই অনুমতি অ্যাপে আপনার দৈনিক ক্যালোরি বার্ন দেখাতে ব্যবহৃত হয়, যা সারাদিনে আপনার মোট এনার্জি ব্যয়ের ধারণা দেয়।',
			'settings.healthConnect.permissions.nutritionRead.title' => 'পুষ্টি ডেটা পড়ুন',
			'settings.healthConnect.permissions.nutritionRead.description' => 'অ্যাপকে Health Connect থেকে পুষ্টি ডেটা পড়তে দেয়।',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'এই অনুমতি অন্য অ্যাপে লোগ হওয়া পুষ্টি তথ্য পড়ে একটি সমন্বিত পুষ্টি ভিউ প্রদান করতে ব্যবহৃত হয়।',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'পুষ্টি ডেটা লিখুন',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'অ্যাপকে Health Connect-এ পুষ্টি ডেটা লিখতে দেয়।',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'এই অনুমতি আপনার লগ করা মিলগুলো Health Connect-এ সিঙ্ক করতে ব্যবহৃত হয়, যাতে আপনি ব্যবহৃত অন্য স্বাস্থ্য/ফিটনেস অ্যাপেও এগুলো ব্যবহার করতে পারেন।',
			'settings.healthConnect.managePermissions' => 'অনুমতি পরিচালনা করুন',
			'settings.healthConnect.openSettings' => 'Health Connect সেটিংস খুলুন',
			'settings.healthConnect.requestPermissions' => 'অনুমতি অনুরোধ করুন',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'অনুমতি অনুরোধ বাতিল বা ব্যর্থ হয়েছে। অনুগ্রহ করে আবার চেষ্টা করুন বা Health Connect সেটিংসে ম্যানুয়ালি দিন।',
			'settings.healthConnect.permissionRequestFailed' => 'অনুমতি অনুরোধ করা যায়নি। অনুগ্রহ করে আবার চেষ্টা করুন বা Health Connect সেটিংসে ম্যানুয়ালি দিন।',
			'settings.healthConnect.requestingPermissions' => 'অনুরোধ করা হচ্ছে...',
			'settings.about.title' => 'অ্যাবাউট',
			'settings.about.tagline' => 'দ্রুত, ফ্রি এবং প্রাইভেসি-প্রথম ক্যালোরি সচেতনতা',
			'settings.about.ourStory.title' => 'আমাদের গল্প',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} এসেছে একটি সহজ বিরক্তি থেকে: বেশিরভাগ ক্যালোরি ট্র্যাকিং অ্যাপ হয় খুব জটিল, ক্রমাগত ম্যানুয়াল ইনপুট চায়, উচ্চ সাবস্ক্রিপশন ফি নেয়, অথবা প্রাইভেসিতে ছাড় দেয়।\n\nএকজন একক ডেভেলপার হিসেবে, আমি কিছুটা সহজ ও ন্যায়সঙ্গত কিছু বানাতে চেয়েছিলাম — এমন একটি অ্যাপ যা এআই দিয়ে পরিশ্রম কমায়, দ্রুত ও ফ্রি থাকে, এবং আপনার স্বাস্থ্য ডেটাকে সম্মানের সাথে দেখে।\n\n${appLabel} সেই অ্যাপ, যেটি আমি চাইতাম: কোনো অ্যাকাউন্ট নয়, কোনো ট্র্যাকিং নয়, কোনো বিজ্ঞাপন নয় — শুধুই স্পষ্ট, ব্যবহারিক ইনসাইট এবং আপনার স্বাস্থ্য লক্ষ্য।',
			'settings.about.privacy.title' => 'আপনার গোপনীয়তা গুরুত্বপূর্ণ',
			'settings.about.privacy.description' => 'প্রাইভেসি কোনো পরের ভাবনা নয় — এটি একটি ডিজাইন নীতি। বাস্তবে এর মানে হলো:',
			'settings.about.privacy.noAccounts' => 'অ্যাকাউন্টের প্রয়োজন নেই\nঅ্যাপটি সঙ্গে সঙ্গে ব্যবহার করুন। কোনো সাইন-আপ নয়, কোনো পরিচয় নয়।',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'কোনো আচরণগত ট্র্যাকিং নয়\n${appLabel} আপনার কার্যকলাপ মনিটর করে না, ব্যবহার প্রোফাইল বানায় না, বা আপনাকে অ্যাপ/ওয়েবসাইট জুড়ে ট্র্যাক করে না।',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'বিজ্ঞাপন-বিহীন নকশা\n${appLabel} বিজ্ঞাপন বা ডেটা-চালিত আয়ের উপর নির্ভর না করে কাজ করে।',
			'settings.about.privacy.noDataSelling' => 'ডেটা বিক্রি নয়\nআপনার স্বাস্থ্য ডেটা কখনোই তৃতীয় পক্ষের কাছে বিক্রি বা শেয়ার করা হয় না।',
			'settings.about.privacy.localStorage' => 'লোকাল-ফার্স্ট স্টোরেজ\nআপনার ডেটা আপনার ডিভাইসেই থাকে।',
			'settings.about.privacy.privacyPolicy' => 'গোপনীয়তা নীতিমালা',
			'settings.about.developer.title' => 'একজন একক ডেভেলপারের নির্মাণ',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} একটি শান্ত, প্রাইভেসি-সম্মানজনক স্বাস্থ্য সফটওয়্যার তৈরিতে নিবেদিত একক ডেভেলপার দ্বারা নির্মিত ও রক্ষণাবেক্ষিত।\n\nআপনার ফিডব্যাক ব্যক্তিগতভাবে পড়া হয় এবং অ্যাপের গতিপথ গঠনে সাহায্য করে।',
			'settings.about.developer.website' => 'ওয়েবসাইট',
			'settings.about.developer.email' => 'ইমেইল',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} কি ভালো লাগছে?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'আপনার ফিডব্যাক ${appLabel}-কে সবার জন্য আরও ভালো করে তোলে।',
			'settings.about.feedback.rateApp' => 'প্লে স্টোরে রেটিং দিন',
			'settings.about.feedback.sendFeedback' => 'মতামত পাঠান',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'বিল্ড ${buildNumber}',
			'reminders.title' => 'রিমাইন্ডার দিয়ে লক্ষ্যপথে থাকুন',
			'reminders.description' => 'আপনার মিল লগ করার জন্য নরম স্মরণ করিয়ে দিন পান এবং পুষ্টি লক্ষ্যে ধারাবাহিক থাকুন',
			'reminders.notificationsEnabled' => 'নোটিফিকেশন চালু',
			'reminders.notificationsDisabled' => 'নোটিফিকেশন বন্ধ',
			'reminders.enabledSubtitle' => 'আপনি খাবারের রিমাইন্ডার পাবেন',
			'reminders.disabledSubtitle' => 'রিমাইন্ডার পেতে নোটিফিকেশন সক্রিয় করুন',
			'reminders.mealReminders' => 'মিল রিমাইন্ডার',
			'reminders.breakfast' => 'ব্রেকফাস্ট',
			'reminders.lunch' => 'লাঞ্চ',
			'reminders.dinner' => 'ডিনার',
			'reminders.snack' => 'স্ন্যাক',
			'reminders.unknown' => 'অজানা',
			'reminders.change' => 'পরিবর্তন',
			'reminders.enableNotifications' => 'নোটিফিকেশন সক্রিয় করুন',
			'reminders.skipForNow' => 'এই মুহূর্তে এড়িয়ে যান',
			'reminders.saveChanges' => 'পরিবর্তন সংরক্ষণ করুন',
			'reminders.enabledSuccessfully' => 'নোটিফিকেশন সফলভাবে সক্রিয় হয়েছে!',
			'reminders.permissionDenied' => 'নোটিফিকেশন অনুমতি অস্বীকৃত',
			'reminders.errorEnabling' => ({required Object error}) => 'নোটিফিকেশন চালু করতে ত্রুটি: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'সেটআপ সম্পূর্ণ করতে ত্রুটি: ${error}',
			'notifications.breakfast.title' => 'ব্রেকফাস্টের সময়! 🍳',
			'notifications.breakfast.body' => 'আপনার ব্রেকফাস্ট লগ করতে ভুলবেন না',
			'notifications.lunch.title' => 'লাঞ্চের সময়! 🥗',
			'notifications.lunch.body' => 'এবার লাঞ্চ লগ করুন',
			'notifications.dinner.title' => 'ডিনারের সময়! 🍽️',
			'notifications.dinner.body' => 'আপনার ডিনার লগ করতে ভুলবেন না',
			'notifications.snack.title' => 'স্ন্যাকের সময়! 🍎',
			'notifications.snack.body' => 'একটি স্বাস্থ্যকর স্ন্যাকের সময়',
			'notifications.test.title' => 'টেস্ট নোটিফিকেশন',
			'login.title' => 'লগইন',
			'login.signInWithGoogle' => 'গুগল দিয়ে সাইন ইন করুন',
			'login.signInFailed' => 'গুগল সাইন-ইন ব্যর্থ হয়েছে বা বাতিল করা হয়েছে।',
			'disclaimer.pleaseNote' => 'দয়া করে লক্ষ্য করুন',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} আনুমানিক পুষ্টিগত তথ্য প্রদান করে। সঠিকতা নির্ভর করে আপনার ইনপুট ও খাবারের ভিন্নতার উপর। এটি একটি দিকনির্দেশক টুল, চূড়ান্ত উৎস নয়। ব্যক্তিগত ডায়েট পরামর্শের জন্য পেশাদারের সাথে পরামর্শ করুন।',
			'disclaimer.snap.portionSize.title' => 'পরিমাণের আকার',
			'disclaimer.snap.portionSize.description' => 'আনুমানিকতার সঠিকতা অনেকটাই নির্ভর করে আপনার পরিমাণ নির্ধারণের সঠিকতার উপর।',
			'disclaimer.snap.preparationMethods.title' => 'রান্নার পদ্ধতি',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'রান্নার পদ্ধতি খাবারের পুষ্টিগুণকে উল্লেখযোগ্যভাবে পরিবর্তন করতে পারে। ${appLabel}-এর অনুমান সবসময় এই ভিন্নতাগুলো বিবেচনায় নেওয়া নাও হতে পারে।',
			'disclaimer.snap.ingredients.title' => 'উপাদান',
			'disclaimer.snap.ingredients.description' => 'অনেক লুকানো উপাদানসহ জটিল খাবারগুলোতে অনুমান কম সঠিক হতে পারে।',
			'disclaimer.snap.databaseLimitations.title' => 'ডেটাবেস সীমাবদ্ধতা',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}-এর খাবার ডেটাবেস বিস্তৃত, তবে তবুও সব খাবার বা ভ্যারিয়েশন নাও থাকতে পারে।',
			'disclaimer.weightEstimate.title' => 'ওজন অনুমান সম্পর্কে',
			'disclaimer.weightEstimate.description' => 'প্রক্ষেপিত ওজন পরিবর্তন একটি তাত্ত্বিক অনুমান, যেখানে ক্যালোরি ইন বনাম আউটের সরল মডেল ধরা হয়। এটি শুধুই উৎসাহমূলক দিকনির্দেশনা, প্রকৃত ওজনের পূর্বাভাস নয়।',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'ক্যালোরির নির্ভুলতা',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'এই অনুমান আপনার ট্র্যাক করা ক্যালোরি গ্রহণ ও ব্যয়ের নির্ভুলতার উপর নির্ভরশীল। ভুল লগিং ভুল প্রক্ষেপণ দেবে।',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'জৈবিক উপাদান',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'বাস্তব ওজন কমা/বাড়া প্রভাবিত হয় বিপাক, হরমোন, ঘুম, স্ট্রেস, হাইড্রেশন এবং অন্যান্য ব্যক্তিগত উপাদান দ্বারা — যা ${appLabel} মাপতে পারে না।',
			'disclaimer.weightEstimate.waterWeight.title' => 'পানি ওজন ও ওঠানামা',
			'disclaimer.weightEstimate.waterWeight.description' => 'দৈনিক স্বাভাবিক ওজন পানি ধারণ, হজম ও সময়ের কারণে উল্লেখযোগ্যভাবে ওঠানামা করতে পারে। এই অনুমানে সেসব দৈনিক পরিবর্তন ধরা হয় না।',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'পেশাদার দিকনির্দেশনা',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'কোনো চিকিৎসাগত সিদ্ধান্তে এই অনুমান ব্যবহার করবেন না। ব্যক্তিগত ওজন ব্যবস্থাপনার জন্য সবসময় স্বাস্থ্য পেশাদার বা নিবন্ধিত ডায়েটিশিয়ানের সাথে পরামর্শ করুন।',
			'disclaimer.healthMetrics.description' => 'এই মেট্রিকগুলো আপনার শরীরের এনার্জির চাহিদা বুঝতে এবং পুষ্টি লক্ষ্যে দিকনির্দেশ দিতে সাহায্য করে।',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'বেসাল মেটাবলিক রেট (BMR) হলো আপনার শরীরের বিশ্রামে থাকা অবস্থায় শ্বাস-প্রশ্বাস ও সঞ্চালনের মতো মৌলিক কাজ বজায় রাখতে পোড়ানো ক্যালোরির পরিমাণ। BMR নির্ভর করে বয়স, লিঙ্গ, উচ্চতা ও ওজনের উপর। বেশি BMR মানে আপনার শরীর বিশ্রামেও বেশি ক্যালোরি পোড়ায় — সাধারণত বেশি পেশীভর, কম বয়স, বা পুরুষ হওয়ার কারণে। কম BMR সাধারণত কম পেশীভর, বেশি বয়স, বা নারী হওয়ার ইঙ্গিত দেয়।',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'টোটাল ডেইলি এনার্জি এক্সপেনডিচার (TDEE) হলো প্রতিদিন মোট কত ক্যালোরি আপনি পোড়ান — যাতে BMR সহ শারীরিক কার্যকলাপ ও দৈনন্দিন নড়াচড়ার ক্যালোরিও অন্তর্ভুক্ত। TDEE নির্ভর করে আপনার BMR ও অ্যাক্টিভিটি স্তরের উপর। বেশি TDEE মানে সার্বিকভাবে আপনি বেশি ক্যালোরি পোড়ান — সাধারণত বেশি সক্রিয়তা বা বেশি BMR-এর কারণে। কম TDEE কম দৈনন্দিন সক্রিয়তা বা কম BMR নির্দেশ করে।',
			'disclaimer.healthMetrics.dailyGoal.title' => 'দৈনিক লক্ষ্য',
			'disclaimer.healthMetrics.dailyGoal.description' => 'দৈনিক লক্ষ্য হলো আপনার TDEE ও ওজনের লক্ষ্যের ভিত্তিতে প্রতিদিনের সুপারিশকৃত ক্যালোরি গ্রহণ। ওজন কমাতে TDEE থেকে কম খান, বজায় রাখতে TDEE-এর সমান খান, আর ওজন বাড়াতে TDEE থেকে বেশি খান। এতে আপনি স্বাস্থ্যকর গতিতে কাঙ্ক্ষিত ওজন পরিবর্তনে পৌঁছাতে পারবেন।',
			'disclaimer.calorieExpenditure.title' => 'ক্যালোরি ব্যয় অনুমান',
			'disclaimer.calorieExpenditure.description' => 'Health Connect ডেটা অনুপলব্ধ হলে, আমরা আজকের বার্নড ক্যালোরি অনুমান করি আপনার Basal Metabolic Rate (BMR) ও অ্যাক্টিভিটি স্তর (TDEE) থেকে, দিনের কেটেছে এমন অংশ অনুযায়ী স্কেল করে।',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'কীভাবে এই অনুমান করা হয়',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'আমরা আপনার প্রোফাইলের ভিত্তিতে TDEE গণনা করি এবং দিনের অতিবাহিত ভগ্নাংশ (ঘণ্টা + মিনিট)/24 দিয়ে গুণ করে এ পর্যন্ত বার্নড ক্যালোরি অনুমান করি।',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'পেশাদার দিকনির্দেশনা',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'কোনো চিকিৎসাগত সিদ্ধান্তে এই অনুমান ব্যবহার করবেন না। ব্যক্তিগত পরামর্শের জন্য সবসময় স্বাস্থ্য পেশাদার বা নিবন্ধিত ডায়েটিশিয়ানের সাথে পরামর্শ করুন।',
			'common.close' => 'বন্ধ করুন',
			'common.kContinue' => 'চালিয়ে যান',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} কি ভালো লাগছে?',
			'feedbackRating.yes' => 'হ্যাঁ, ভালো লাগছে',
			'feedbackRating.no' => 'তেমন নয়',
			'feedbackRating.rateStepHeading' => 'প্লে স্টোরে রেটিং দিন',
			'feedbackRating.emailStepHeading' => 'ইমেইলে ফিডব্যাক পাঠান',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'একটি দ্রুত রেটিং অন্যদের ${appLabel} খুঁজে পেতে সাহায্য করে এবং উন্নয়ন চালিয়ে যেতে সহায়ক। আপনি কি এক মুহূর্ত সময় দেবেন?',
			'feedbackRating.shareFeedbackViaEmail' => 'আপনার মতামতই পরবর্তী ধাপ গড়ে দেয় — আমরা প্রতিটি বার্তা পড়ি। ইমেইলে শেয়ার করতে চান?',
			'feedbackRating.rateCta' => 'প্লে স্টোরে রেটিং দিন',
			'feedbackRating.maybeLater' => 'পরে মনে করিয়ে দিন',
			'feedbackRating.sendFeedback' => 'মতামত পাঠান',
			'feedbackRating.noThanks' => 'ধন্যবাদ, দরকার নেই',
			'feedbackRating.aboutUsDescription' => 'অল্প জনের যত্নে নির্মিত। আমরা প্রাইভেসি, সরলতা এবং ভালো খাদ্যাভ্যাস গড়ে তুলতে মনোনিবেশ করি।',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'কৌতূহলী ${appLabel}-এর পেছনে কে? দেখুন ',
			'feedbackRating.aboutUsLinkLabel' => 'আমাদের সম্পর্কে',
			'feedbackRating.thankYouMessage' => 'ধন্যবাদ! আমরা আবার পরে জিজ্ঞেস করব।',
			'health.syncFailed' => 'Health Connect-এ সিঙ্ক করা যায়নি',
			'health.mealSynced' => 'মিল Health Connect-এ সিঙ্ক হয়েছে',
			_ => null,
		};
	}
}
