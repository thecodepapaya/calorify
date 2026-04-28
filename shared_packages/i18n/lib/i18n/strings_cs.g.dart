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
class TranslationsCs with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsCs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.cs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <cs>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsCs _root = this; // ignore: unused_field

	@override 
	TranslationsCs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsCs(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Čeština';
	@override String get flag => '🇨🇿';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsCs errors = _TranslationsErrorsCs._(_root);
	@override late final _TranslationsOnboardingCs onboarding = _TranslationsOnboardingCs._(_root);
	@override late final _TranslationsTabsCs tabs = _TranslationsTabsCs._(_root);
	@override late final _TranslationsHomeCs home = _TranslationsHomeCs._(_root);
	@override late final _TranslationsHistoryCs history = _TranslationsHistoryCs._(_root);
	@override late final _TranslationsMealCs meal = _TranslationsMealCs._(_root);
	@override late final _TranslationsFavoritesCs favorites = _TranslationsFavoritesCs._(_root);
	@override late final _TranslationsProfileCs profile = _TranslationsProfileCs._(_root);
	@override late final _TranslationsHealthScoreCs healthScore = _TranslationsHealthScoreCs._(_root);
	@override late final _TranslationsEditProfileCs editProfile = _TranslationsEditProfileCs._(_root);
	@override late final _TranslationsSettingsCs settings = _TranslationsSettingsCs._(_root);
	@override late final _TranslationsRemindersCs reminders = _TranslationsRemindersCs._(_root);
	@override late final _TranslationsNotificationsCs notifications = _TranslationsNotificationsCs._(_root);
	@override late final _TranslationsLoginCs login = _TranslationsLoginCs._(_root);
	@override late final _TranslationsDisclaimerCs disclaimer = _TranslationsDisclaimerCs._(_root);
	@override late final _TranslationsCommonCs common = _TranslationsCommonCs._(_root);
	@override late final _TranslationsFeedbackRatingCs feedbackRating = _TranslationsFeedbackRatingCs._(_root);
	@override late final _TranslationsHealthCs health = _TranslationsHealthCs._(_root);
}

// Path: errors
class _TranslationsErrorsCs implements TranslationsErrorsEn {
	_TranslationsErrorsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Poslali jste příliš mnoho požadavků. Počkejte prosím chvíli a zkuste to znovu.';
	@override String get networkError => 'Chyba sítě. Zkontrolujte prosím své internetové připojení.';
	@override String get unknownError => 'Něco se pokazilo. Zkuste to prosím později.';
	@override String get loadingProfileData => 'Chyba při načítání dat profilu';
	@override String get somethingWentWrong => 'Něco se pokazilo.';
	@override String get retry => 'Zkusit znovu';
}

// Path: onboarding
class _TranslationsOnboardingCs implements TranslationsOnboardingEn {
	_TranslationsOnboardingCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Vítejte v ${appLabel}';
	@override String get subtitle => 'Váš osobní výživový průvodce s podporou AI';
	@override String get getStarted => 'Začít';
	@override late final _TranslationsOnboardingFeaturesCs features = _TranslationsOnboardingFeaturesCs._(_root);
	@override late final _TranslationsOnboardingGenderCs gender = _TranslationsOnboardingGenderCs._(_root);
	@override late final _TranslationsOnboardingHeightCs height = _TranslationsOnboardingHeightCs._(_root);
	@override late final _TranslationsOnboardingWeightCs weight = _TranslationsOnboardingWeightCs._(_root);
	@override late final _TranslationsOnboardingAgeCs age = _TranslationsOnboardingAgeCs._(_root);
	@override late final _TranslationsOnboardingBmiScaleCs bmiScale = _TranslationsOnboardingBmiScaleCs._(_root);
	@override late final _TranslationsOnboardingWeightGoalCs weightGoal = _TranslationsOnboardingWeightGoalCs._(_root);
	@override late final _TranslationsOnboardingActivityLevelCs activityLevel = _TranslationsOnboardingActivityLevelCs._(_root);
	@override late final _TranslationsOnboardingHealthConnectCs healthConnect = _TranslationsOnboardingHealthConnectCs._(_root);
	@override late final _TranslationsOnboardingReinforcementCs reinforcement = _TranslationsOnboardingReinforcementCs._(_root);
}

// Path: tabs
class _TranslationsTabsCs implements TranslationsTabsEn {
	_TranslationsTabsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Přehled';
	@override String get history => 'Historie';
}

// Path: home
class _TranslationsHomeCs implements TranslationsHomeEn {
	_TranslationsHomeCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryCs aiSummary = _TranslationsHomeAiSummaryCs._(_root);
	@override late final _TranslationsHomeDailyGoalCs dailyGoal = _TranslationsHomeDailyGoalCs._(_root);
	@override late final _TranslationsHomeDailySummaryCs dailySummary = _TranslationsHomeDailySummaryCs._(_root);
	@override late final _TranslationsHomeIntakeProgressCs intakeProgress = _TranslationsHomeIntakeProgressCs._(_root);
	@override late final _TranslationsHomeIntakeHistoryCs intakeHistory = _TranslationsHomeIntakeHistoryCs._(_root);
	@override late final _TranslationsHomeMealLogCs mealLog = _TranslationsHomeMealLogCs._(_root);
	@override late final _TranslationsHomeMealDescriptionCs mealDescription = _TranslationsHomeMealDescriptionCs._(_root);
	@override late final _TranslationsHomeFavoriteMealsCs favoriteMeals = _TranslationsHomeFavoriteMealsCs._(_root);
	@override late final _TranslationsHomeMealSnapCs mealSnap = _TranslationsHomeMealSnapCs._(_root);
	@override late final _TranslationsHomeConnectHealthCs connectHealth = _TranslationsHomeConnectHealthCs._(_root);
}

// Path: history
class _TranslationsHistoryCs implements TranslationsHistoryEn {
	_TranslationsHistoryCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Žádná zaznamenaná jídla';
	@override String get emptyMessage => 'Vyfoťte své poslední jídlo a zobrazí se zde.';
	@override String get today => 'Dnes';
	@override String get yesterday => 'Včera';
}

// Path: meal
class _TranslationsMealCs implements TranslationsMealEn {
	_TranslationsMealCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Ale ne!';
	@override String get delete => 'Smazat';
	@override String get editMeal => 'Upravit jídlo';
	@override String get addMeal => 'Přidat jídlo';
	@override String get saveMeal => 'Uložit jídlo';
	@override String get save => 'Uložit';
	@override String get mealName => 'Název jídla';
	@override String get mealNameHint => 'např. Míchaná vejce s toastem';
	@override String get mealQuantity => 'Množství jídla';
	@override String get mealQuantityHint => 'např. 1 miska, 2 plátky';
	@override String get timeOfMeal => 'Čas jídla';
	@override String get timeOfMealHint => 'Vyberte čas, kdy jste jedli';
	@override String get mealType => 'Typ jídla';
	@override late final _TranslationsMealNutritionCs nutrition = _TranslationsMealNutritionCs._(_root);
	@override late final _TranslationsMealDeleteConfirmationCs deleteConfirmation = _TranslationsMealDeleteConfirmationCs._(_root);
	@override String get addedToLog => 'Jídlo přidáno do vašeho deníku!';
	@override String couldNotAdd({required Object error}) => 'Nelze přidat jídlo: ${error}';
	@override String get savedSuccessfully => 'Jídlo úspěšně přidáno!';
	@override String get updatedSuccessfully => 'Jídlo úspěšně aktualizováno!';
	@override String errorSaving({required Object error}) => 'Chyba při ukládání jídla: ${error}';
	@override String get removedFromFavorites => 'Odebráno z oblíbených!';
	@override String get savedAsFavorite => 'Jídlo uloženo mezi oblíbené!';
	@override String get unfavorite => 'Odebrat z oblíbených';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nelze aktualizovat oblíbené: ${error}';
	@override String get feedbackThanks => 'Děkujeme za zpětnou vazbu!';
	@override String get reanalysisUpdated => 'Analýza jídla byla aktualizována podle vaší zpětné vazby.';
	@override String failedToProcess({required Object error}) => 'Nepodařilo se zpracovat: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Nepodařilo se zpracovat obrázek: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Chyba při komprimaci obrázku: ${error}';
	@override String get failedToSave => 'Nepodařilo se uložit data. Zkuste to prosím znovu.';
	@override String get skip => 'Přeskočit';
	@override late final _TranslationsMealVariationCs variation = _TranslationsMealVariationCs._(_root);
	@override late final _TranslationsMealAnalysisCs analysis = _TranslationsMealAnalysisCs._(_root);
	@override late final _TranslationsMealFeedbackCs feedback = _TranslationsMealFeedbackCs._(_root);
}

// Path: favorites
class _TranslationsFavoritesCs implements TranslationsFavoritesEn {
	_TranslationsFavoritesCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oblíbené';
	@override String get empty => 'Zatím žádná oblíbená jídla.';
	@override String get searchPlaceholder => 'Hledat v oblíbených jídlech';
	@override String get searchEmptyTitle => 'Žádné oblíbené neodpovídají vyhledávání';
	@override String get searchEmptySubtitle => 'Zkuste jiný název jídla, množství nebo typ jídla.';
	@override String get sortLabel => 'Řadit oblíbené';
	@override String get undo => 'Zpět';
	@override String removed({required Object name}) => 'Odebráno z oblíbených: ${name}';
	@override late final _TranslationsFavoritesSortOptionsCs sortOptions = _TranslationsFavoritesSortOptionsCs._(_root);
}

// Path: profile
class _TranslationsProfileCs implements TranslationsProfileEn {
	_TranslationsProfileCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Nenalezena žádná data profilu';
	@override String get yourProfile => 'Váš profil';
	@override String get viewAndManage => 'Zobrazte a spravujte své zdravotní informace';
	@override late final _TranslationsProfileSectionsCs sections = _TranslationsProfileSectionsCs._(_root);
	@override String get gender => 'Pohlaví';
	@override String get height => 'Výška';
	@override String get weight => 'Hmotnost';
	@override String get age => 'Věk';
	@override String get weightGoal => 'Cíl hmotnosti';
	@override String get targetWeight => 'Cílová hmotnost';
	@override String get activityLevel => 'Úroveň aktivity';
	@override String get healthMetrics => 'Zdravotní metriky';
	@override String get notSet => 'Nenastaveno';
	@override String get years => 'let';
	@override String get updatedSuccessfully => 'Profil úspěšně aktualizován!';
	@override late final _TranslationsProfileCalculatedValuesCs calculatedValues = _TranslationsProfileCalculatedValuesCs._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreCs implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zdravotní skóre';
	@override String get whyThisScore => 'Proč toto skóre?';
	@override String get note => 'Toto skóre je odhad AI založený na zjištěných ingrediencích a nutriční hustotě. Pro osobní rady ohledně stravy se vždy poraďte s odborníkem.';
	@override String get unhealthy => 'Nezdravé';
	@override String get healthy => 'Zdravé';
	@override String get neutral => 'Neutrální';
}

// Path: editProfile
class _TranslationsEditProfileCs implements TranslationsEditProfileEn {
	_TranslationsEditProfileCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Upravit profil';
	@override late final _TranslationsEditProfileSectionsCs sections = _TranslationsEditProfileSectionsCs._(_root);
	@override String get gender => 'Pohlaví';
	@override String get dateOfBirth => 'Datum narození';
	@override String get height => 'Výška';
	@override String get weight => 'Hmotnost';
	@override String get weightGoal => 'Cíl hmotnosti';
	@override String get activityLevel => 'Úroveň aktivity';
	@override String get metric => 'Metrické';
	@override String get imperial => 'Imperiální';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metrické (cm)';
	@override String get imperialFtIn => 'Imperiální (ft/in)';
	@override String get metricKg => 'Metrické (kg)';
	@override String get imperialLbs => 'Imperiální (lbs)';
	@override late final _TranslationsEditProfileGendersCs genders = _TranslationsEditProfileGendersCs._(_root);
	@override late final _TranslationsEditProfileWeightGoalsCs weightGoals = _TranslationsEditProfileWeightGoalsCs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsCs activityLevels = _TranslationsEditProfileActivityLevelsCs._(_root);
}

// Path: settings
class _TranslationsSettingsCs implements TranslationsSettingsEn {
	_TranslationsSettingsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nastavení';
	@override late final _TranslationsSettingsSectionsCs sections = _TranslationsSettingsSectionsCs._(_root);
	@override late final _TranslationsSettingsEditProfileCs editProfile = _TranslationsSettingsEditProfileCs._(_root);
	@override late final _TranslationsSettingsLanguageCs language = _TranslationsSettingsLanguageCs._(_root);
	@override late final _TranslationsSettingsHeightUnitCs heightUnit = _TranslationsSettingsHeightUnitCs._(_root);
	@override late final _TranslationsSettingsWeightUnitCs weightUnit = _TranslationsSettingsWeightUnitCs._(_root);
	@override late final _TranslationsSettingsMealRemindersCs mealReminders = _TranslationsSettingsMealRemindersCs._(_root);
	@override late final _TranslationsSettingsThemeCs theme = _TranslationsSettingsThemeCs._(_root);
	@override late final _TranslationsSettingsSendFeedbackCs sendFeedback = _TranslationsSettingsSendFeedbackCs._(_root);
	@override late final _TranslationsSettingsExportMealHistoryCs exportMealHistory = _TranslationsSettingsExportMealHistoryCs._(_root);
	@override late final _TranslationsSettingsClearAllDataCs clearAllData = _TranslationsSettingsClearAllDataCs._(_root);
	@override late final _TranslationsSettingsDebugOptionsCs debugOptions = _TranslationsSettingsDebugOptionsCs._(_root);
	@override String get developerModeEnabled => 'Režim vývojáře povolen!';
	@override late final _TranslationsSettingsHealthConnectCs healthConnect = _TranslationsSettingsHealthConnectCs._(_root);
	@override late final _TranslationsSettingsAboutCs about = _TranslationsSettingsAboutCs._(_root);
	@override late final _TranslationsSettingsAppInfoCs appInfo = _TranslationsSettingsAppInfoCs._(_root);
}

// Path: reminders
class _TranslationsRemindersCs implements TranslationsRemindersEn {
	_TranslationsRemindersCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zůstaňte na cestě s připomínkami';
	@override String get description => 'Získejte jemné připomínky, abyste si zapisovali jídla a byli konzistentní se svými výživovými cíli';
	@override String get notificationsEnabled => 'Oznámení povolena';
	@override String get notificationsDisabled => 'Oznámení zakázána';
	@override String get enabledSubtitle => 'Budete dostávat připomínky jídel';
	@override String get disabledSubtitle => 'Povolte oznámení, abyste dostávali připomínky jídel';
	@override String get mealReminders => 'Připomínky jídel';
	@override String get breakfast => 'Snídaně';
	@override String get lunch => 'Oběd';
	@override String get dinner => 'Večeře';
	@override String get snack => 'Svačina';
	@override String get unknown => 'Neznámé';
	@override String get change => 'Změnit';
	@override String get enableNotifications => 'Povolit oznámení';
	@override String get skipForNow => 'Přeskočit prozatím';
	@override String get saveChanges => 'Uložit změny';
	@override String get enabledSuccessfully => 'Oznámení byla úspěšně povolena!';
	@override String get permissionDenied => 'Oprávnění k oznámením odepřeno';
	@override String errorEnabling({required Object error}) => 'Chyba při povolování oznámení: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Chyba při dokončování nastavení: ${error}';
}

// Path: notifications
class _TranslationsNotificationsCs implements TranslationsNotificationsEn {
	_TranslationsNotificationsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastCs breakfast = _TranslationsNotificationsBreakfastCs._(_root);
	@override late final _TranslationsNotificationsLunchCs lunch = _TranslationsNotificationsLunchCs._(_root);
	@override late final _TranslationsNotificationsDinnerCs dinner = _TranslationsNotificationsDinnerCs._(_root);
	@override late final _TranslationsNotificationsSnackCs snack = _TranslationsNotificationsSnackCs._(_root);
	@override late final _TranslationsNotificationsTestCs test = _TranslationsNotificationsTestCs._(_root);
}

// Path: login
class _TranslationsLoginCs implements TranslationsLoginEn {
	_TranslationsLoginCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Přihlášení';
	@override String get signInWithGoogle => 'Přihlásit se přes Google';
	@override String get signInFailed => 'Přihlášení přes Google selhalo nebo bylo zrušeno.';
}

// Path: disclaimer
class _TranslationsDisclaimerCs implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Upozornění';
	@override late final _TranslationsDisclaimerSnapCs snap = _TranslationsDisclaimerSnapCs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateCs weightEstimate = _TranslationsDisclaimerWeightEstimateCs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsCs healthMetrics = _TranslationsDisclaimerHealthMetricsCs._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureCs calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureCs._(_root);
}

// Path: common
class _TranslationsCommonCs implements TranslationsCommonEn {
	_TranslationsCommonCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get close => 'Zavřít';
	@override String get kContinue => 'Pokračovat';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingCs implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Líbí se vám ${appLabel}?';
	@override String get yes => 'Ano, líbí se mi';
	@override String get no => 'Ne tak úplně';
	@override String get rateStepHeading => 'Ohodnotit v Obchodě Play';
	@override String get emailStepHeading => 'Poslat zpětnou vazbu e‑mailem';
	@override String soloDevMessage({required Object appLabel}) => 'Rychlé hodnocení pomáhá ostatním najít ${appLabel} a umožňuje další vývoj. Věnujete tomu chvilku?';
	@override String get shareFeedbackViaEmail => 'Vaše zpětná vazba určuje, co bude dál — čteme každou zprávu. Chcete se podělit o své postřehy e‑mailem?';
	@override String get rateCta => 'Ohodnotit v Obchodě Play';
	@override String get maybeLater => 'Možná později';
	@override String get sendFeedback => 'Odeslat zpětnou vazbu';
	@override String get noThanks => 'Ne, děkuji';
	@override String get aboutUsDescription => 'Vytvořeno s péčí malým týmem. Soustředíme se na soukromí, jednoduchost a pomoc s budováním lepších stravovacích návyků.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Zajímá vás, kdo stojí za ${appLabel}? Podívejte se na ';
	@override String get aboutUsLinkLabel => 'O nás';
	@override String get thankYouMessage => 'Děkujeme! Zeptáme se zase jindy.';
}

// Path: health
class _TranslationsHealthCs implements TranslationsHealthEn {
	_TranslationsHealthCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Nelze synchronizovat s Health Connect';
	@override String get mealSynced => 'Jídlo synchronizováno s Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesCs implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionCs foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionCs._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisCs aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisCs._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationCs healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationCs._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderCs implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jaké je vaše pohlaví?';
	@override String get description => 'Pohlaví nám pomáhá přesně spočítat váš bazální metabolismus (BMR).';
	@override String get next => 'Další';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightCs implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jaká je vaše výška?';
	@override String get description => 'Vaše výška nám pomůže přesně vypočítat BMI a energetické potřeby.';
	@override String get metric => 'Metrické';
	@override String get imperial => 'Imperiální';
	@override String get next => 'Další';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightCs implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Jaká je vaše současná hmotnost?';
	@override String get currentDescription => 'Současná hmotnost je zásadní pro personalizaci vašich denních cílů.';
	@override String get targetTitle => 'Jaká je vaše cílová hmotnost?';
	@override String get targetDescription => 'Stanovení cílové hmotnosti nám pomůže nastavit dlouhodobý plán.';
	@override String get metric => 'Metrické';
	@override String get imperial => 'Imperiální';
	@override String get next => 'Další';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeCs implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kdy máte narozeniny?';
	@override String get description => 'Váš věk nám pomáhá přesně spočítat potřebný kalorický příjem.';
	@override String get next => 'Další';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleCs implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Pod';
	@override String get healthy => 'Zdravá';
	@override String get overweight => 'Nad';
	@override String get obese => 'Obezita';
	@override late final _TranslationsOnboardingBmiScaleCategoriesCs categories = _TranslationsOnboardingBmiScaleCategoriesCs._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesCs messages = _TranslationsOnboardingBmiScaleMessagesCs._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalCs implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jaký je váš cíl?';
	@override String get description => 'Zvolte cíl, který nejlépe vystihuje, čeho chcete dosáhnout';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelCs implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak jste aktivní?';
	@override String get description => 'To nám pomůže přesněji spočítat váš denní kalorický příjem';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectCs implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Připojte Health Connect';
	@override String get description => 'Synchronizujte svá zdravotní data pro lepší přehledy a automatické sledování kalorií';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingCs automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingCs._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsCs progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsCs._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationCs seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationCs._(_root);
	@override String get connected => 'Health Connect připojeno';
	@override String get notConnected => 'Health Connect nepřipojeno';
	@override String get setup => 'Nastavit Health Connect';
	@override String get skipForNow => 'Přeskočit prozatím';
	@override String get statusConnected => 'Health Connect je připojen.';
	@override String get statusSuccess => 'Health Connect byl úspěšně připojen!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Přístup odepřen. Povolte prosím oprávnění Health Connect v nastavení telefonu pro ${appLabel}.';
	@override String statusError({required Object error}) => 'Chyba při nastavování Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementCs implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessCs trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessCs._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileCs healthProfile = _TranslationsOnboardingReinforcementHealthProfileCs._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleCs goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleCs._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryCs implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vaše shrnutí od AI';
	@override String get logMore => 'Zaznamenávejte více jídel v následujících dnech a získejte své personalizované AI přehledy.';
	@override String get loading => 'Načítáme vaše shrnutí…';
	@override String mealCount({required Object count}) => '${count} zaznamenaných jídel';
	@override String macroBalanceScore({required Object score}) => 'Skóre vyváženosti ${score}';
	@override String get topFoods => 'Nejčastější jídla';
	@override String get trendUp => 'Kalorie mají rostoucí trend';
	@override String get trendDown => 'Kalorie mají klesající trend';
	@override String get trendSteady => 'Kalorie zůstávají stabilní';
	@override String generatedAt({required Object time}) => 'Aktualizováno ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalCs implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nastavte si denní cíl';
	@override String get titleSet => 'Váš denní cíl';
	@override String get description => 'Připraveni vydat se na cestu ke zdraví? Nastavte si denní kalorický cíl a nastartujte svůj pokrok.';
	@override String get descriptionSet => 'Váš kompas je nastaven! Toto je váš denní kalorický cíl, který vás povede.';
	@override String get yourGoal => 'Váš cíl';
	@override String get goal => 'Cíl';
	@override String get dailyCalories => 'Denní kalorie (kcal)';
	@override String get setGoal => 'Nastavit cíl';
	@override String get intake => 'Příjem';
	@override String get burned => 'Spáleno';
	@override String get weightImpact => 'Vliv na hmotnost';
	@override String get estLoss => 'Odh. úbytek';
	@override String get estGain => 'Odh. přírůstek';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryCs implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Denní souhrn';
	@override String get calories => 'Kalorie';
	@override String get carbs => 'Sacharidy';
	@override String get protein => 'Bílkoviny';
	@override String get fat => 'Tuky';
	@override String get fiber => 'Vláknina';
	@override String get grams => 'gramů';
	@override String get chartAccessibilityLabel => 'Graf makroživin';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressCs implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dnešní rozložení makroživin';
	@override String get target => 'Cíl';
	@override String get current => 'Aktuální';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryCs implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => '7denní historie makroživin';
	@override String get trendTitle => 'Dnešní trend';
	@override String peakHour({required Object hour}) => 'Špička: ${hour}:00';
	@override String get noHistoryYet => 'Zatím žádná historie';
	@override String get startLogging => 'Začněte si zapisovat jídla, a zde uvidíte\n7denní trendy makroživin';
}

// Path: home.mealLog
class _TranslationsHomeMealLogCs implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zaznamenaná jídla';
	@override String get emptyMessage => 'Vyfoťte své poslední jídlo a zobrazí se zde.';
	@override String get noMealsToday => 'Dnes nejsou zaznamenána žádná jídla';
	@override String get seeAllMeals => 'Zobrazit všechna jídla';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionCs implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rychlé přidání s AI';
	@override String get description => 'Popište své jídlo a detaily nechte na AI.';
	@override String get hint => 'např. K snídani jsem měl(a) velkou misku ovesné kaše s banánem a odměrkou syrovátky ...';
	@override String get analyzeMeal => 'Analyzovat jídlo';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsCs implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oblíbená jídla';
	@override String get description => 'Rychle přidejte některé ze svých oblíbených jídel.';
	@override String get noFavorites => 'Zatím žádná oblíbená jídla.';
	@override String get addFavoriteHint => 'Kliknutím na hvězdičku u jídla jej označíte jako oblíbené.';
	@override String get seeAll => 'Zobrazit vše';
	@override String get add => 'Přidat';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapCs implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vyfoťte a sledujte své jídlo';
	@override String get description => 'Použijte fotoaparát k vyfocení jídla pro AI analýzu.';
	@override String get openCamera => 'Otevřít fotoaparát';
	@override String get gallery => 'Galerie';
	@override String get compressingPhoto => 'Optimalizace fotografie…';
	@override String get uploadingPhoto => 'Nahrávání fotografie…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthCs implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchronizujte s Health Connect';
	@override String get description => 'Synchronizujte svá nutriční data s Health Connect';
	@override String get install => 'Instalovat';
	@override String get connect => 'Připojit';
}

// Path: meal.nutrition
class _TranslationsMealNutritionCs implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorie';
	@override String get carbs => 'Sacharidy (g)';
	@override String get protein => 'Bílkoviny (g)';
	@override String get fat => 'Tuky (g)';
	@override String get fiber => 'Vláknina (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationCs implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Smazat jídlo';
	@override String get message => 'Opravdu chcete smazat tento záznam o jídle?';
	@override String get cancel => 'Zrušit';
	@override String get delete => 'Smazat';
}

// Path: meal.variation
class _TranslationsMealVariationCs implements TranslationsMealVariationEn {
	_TranslationsMealVariationCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Otázka ${current} z ${total}';
	@override String get noVariationsAvailable => 'Žádné varianty k dispozici';
}

// Path: meal.analysis
class _TranslationsMealAnalysisCs implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analýza jídla pomocí AI';
	@override String get reassurance => 'Obvykle to trvá jen pár sekund.';
	@override String get stepStarted => 'Začínáme…';
	@override String get stepDecomposition => 'Analyzujeme vaše jídlo…';
	@override String get stepIngredients => 'Přiřazujeme ingredience k nutričním údajům…';
	@override String get stepUncertainty => 'Kontrolujeme jistotu…';
	@override String get stepMealTypeQuestion => 'Skoro hotovo…';
	@override String get stepResult => 'Finalizujeme výsledek…';
	@override String get stepError => 'Něco se pokazilo';
	@override String get stepDefault => 'Analyzujeme vaše jídlo…';
	@override String get progressUnderstand => 'Porozumět';
	@override String get progressMatch => 'Párovat';
	@override String get progressCheck => 'Ověřit';
	@override String get progressFinish => 'Dokončit';
	@override String ingredientsLine({required Object count}) => '${count} ingrediencí rozpoznáno';
	@override String get ingredientsPending => 'Probíhá skenování ingrediencí…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackCs implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Co vypadá špatně?';
	@override String get subtitle => 'Pomozte nám zlepšit analýzu výběrem jednoho nebo více problémů.';
	@override String get tellUsMore => 'Řekněte nám víc';
	@override String get describeIncorrect => 'Popište, co bylo nesprávné';
	@override String get submit => 'Odeslat';
	@override String get issueFoodIdentification => 'Identifikace jídla';
	@override String get issuePortionSize => 'Velikost porce';
	@override String get issueCalorieDistribution => 'Rozložení kalorií';
	@override String get issueMacrosWrong => 'Makra jsou špatně';
	@override String get issueMissingItems => 'Chybějící položky';
	@override String get issueExtraItems => 'Položky navíc';
	@override String get issueOther => 'Jiné';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsCs implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Nejnovější';
	@override String get calories => 'Kalorie';
	@override String get alphabetical => 'A–Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsCs implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'ZÁKLADNÍ INFORMACE';
	@override String get goalsAndActivity => 'CÍLE A AKTIVITA';
	@override String get calculatedValues => 'VYPOČÍTANÉ HODNOTY';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesCs implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Denní cíl';
	@override String get calPerDay => 'kal/den';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsCs implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'OSOBNÍ ÚDAJE';
	@override String get physicalMeasurements => 'FYZICKÉ MÍRY';
	@override String get goalsAndActivity => 'CÍLE A AKTIVITA';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersCs implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get male => 'Muž';
	@override String get female => 'Žena';
	@override String get other => 'Jiné';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsCs implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightCs loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightCs._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightCs maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightCs._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightCs gainWeight = _TranslationsEditProfileWeightGoalsGainWeightCs._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsCs implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryCs sedentary = _TranslationsEditProfileActivityLevelsSedentaryCs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveCs lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveCs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveCs moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveCs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveCs veryActive = _TranslationsEditProfileActivityLevelsVeryActiveCs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveCs extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveCs._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsCs implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALIZACE';
	@override String get notifications => 'OZNÁMENÍ';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'PODPORA A PRÁVNÍ INFORMACE';
	@override String get about => 'O APLIKACI';
	@override String get dangerZone => 'NEBEZPEČNÁ OBLAST';
	@override String get developer => 'VÝVOJÁŘ';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileCs implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Upravit profil';
	@override String get subtitle => 'Aktualizujte své osobní údaje';
}

// Path: settings.language
class _TranslationsSettingsLanguageCs implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jazyk';
	@override String get subtitle => 'Zvolte preferovaný jazyk';
	@override String get searchHint => 'Hledat jazyky...';
	@override String get noResults => 'Nenalezeny žádné výsledky';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitCs implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jednotka výšky';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitCs implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jednotka hmotnosti';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersCs implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Připomínky jídel';
	@override String get subtitle => 'Zůstaňte na cestě díky včasným upozorněním';
}

// Path: settings.theme
class _TranslationsSettingsThemeCs implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Motiv';
	@override String get light => 'Světlý';
	@override String get dark => 'Tmavý';
	@override String get system => 'Systémový';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackCs implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odeslat zpětnou vazbu';
	@override String subtitle({required Object appLabel}) => 'Pomozte nám vylepšit ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Zpětná vazba k ${appLabel}';
	@override String get emailBodyPrefix => 'Prosíme, napište svou zpětnou vazbu níže:';
	@override String get appVersion => 'Verze aplikace';
	@override String get device => 'Zařízení';
	@override String get osVersion => 'Verze OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryCs implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exportovat historii jídel';
	@override String get subtitle => 'Sdílejte CSV se svými záznamy jídel';
	@override String get shareText => 'Váš export historie jídel Calorify';
	@override String failed({required Object error}) => 'Nelze exportovat historii jídel: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataCs implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Smazat všechna data';
	@override String get subtitle => 'Nezvratně smaže všechny vaše informace';
	@override String get confirmationTitle => 'Smazat všechna data?';
	@override String get confirmationMessage => 'Tuto akci nelze vrátit zpět. Všechna zaznamenaná jídla, oblíbené položky a nastavení profilu budou trvale smazána.';
	@override String get cancel => 'Zrušit';
	@override String get clearEverything => 'Smazat vše';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsCs implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Možnosti ladění';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectCs implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Zobrazit a spravovat oprávnění';
	@override late final _TranslationsSettingsHealthConnectUnavailableCs unavailable = _TranslationsSettingsHealthConnectUnavailableCs._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsCs permissions = _TranslationsSettingsHealthConnectPermissionsCs._(_root);
	@override String get managePermissions => 'Spravovat oprávnění';
	@override String get openSettings => 'Otevřít nastavení Health Connect';
	@override String get requestPermissions => 'Vyžádat oprávnění';
	@override String get permissionRequestCancelledOrFailed => 'Žádost o oprávnění byla zrušena nebo selhala. Zkuste to prosím znovu nebo je udělte ručně v nastavení Health Connect.';
	@override String get permissionRequestFailed => 'Nelze vyžádat oprávnění. Zkuste to prosím znovu nebo je udělte ručně v nastavení Health Connect.';
	@override String get requestingPermissions => 'Žádáme…';
}

// Path: settings.about
class _TranslationsSettingsAboutCs implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'O aplikaci';
	@override String get tagline => 'Rychlé, zdarma a s respektem k soukromí';
	@override late final _TranslationsSettingsAboutOurStoryCs ourStory = _TranslationsSettingsAboutOurStoryCs._(_root);
	@override late final _TranslationsSettingsAboutPrivacyCs privacy = _TranslationsSettingsAboutPrivacyCs._(_root);
	@override late final _TranslationsSettingsAboutDeveloperCs developer = _TranslationsSettingsAboutDeveloperCs._(_root);
	@override late final _TranslationsSettingsAboutFeedbackCs feedback = _TranslationsSettingsAboutFeedbackCs._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoCs implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Sestavení ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastCs implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čas na snídani! 🍳';
	@override String get body => 'Nezapomeňte si zaznamenat snídani';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchCs implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čas na oběd! 🥗';
	@override String get body => 'Je čas zapsat si oběd';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerCs implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čas na večeři! 🍽️';
	@override String get body => 'Nezapomeňte si zaznamenat večeři';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackCs implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čas na svačinu! 🍎';
	@override String get body => 'Dejte si zdravou svačinu a zapište si ji';
}

// Path: notifications.test
class _TranslationsNotificationsTestCs implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testovací oznámení';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapCs implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} poskytuje odhadnuté nutriční informace. Přesnost závisí na vašem zadání a variabilitě potravin. Berte je jako vodítko, ne definitivní zdroj. Pro osobní doporučení se poraďte s odborníkem na výživu.';
	@override late final _TranslationsDisclaimerSnapPortionSizeCs portionSize = _TranslationsDisclaimerSnapPortionSizeCs._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsCs preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsCs._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsCs ingredients = _TranslationsDisclaimerSnapIngredientsCs._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsCs databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsCs._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateCs implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'O odhadu změny hmotnosti';
	@override String get description => 'Projektovaná změna hmotnosti je teoretický odhad založený na jednoduchém modelu příjem vs. výdej kalorií. Slouží pouze jako motivační vodítko, nikoli jako předpověď vaší skutečné hmotnosti.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyCs calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyCs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsCs biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsCs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightCs waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightCs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceCs professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceCs._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsCs implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Tyto metriky vám pomohou porozumět energetickým potřebám těla a nasměrují vaše výživové cíle.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrCs bmr = _TranslationsDisclaimerHealthMetricsBmrCs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeCs tdee = _TranslationsDisclaimerHealthMetricsTdeeCs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalCs dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalCs._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureCs implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odhad spálených kalorií';
	@override String get description => 'Když data z Health Connect nejsou k dispozici, odhadujeme dnešní spálené kalorie pomocí vašeho BMR a úrovně aktivity (TDEE), škálovaných podle části dne, která již uplynula.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedCs howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedCs._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceCs professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceCs._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionCs implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chytré rozpoznání jídla';
	@override String get description => 'Vyfoťte si jídlo a nechte AI rozpoznat, co jíte';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisCs implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI analýza';
	@override String get description => 'Získejte okamžité nutriční informace z popisu jídla';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationCs implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrace se zdravím';
	@override String get description => 'Propojte Health Connect pro lepší přehledy';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesCs implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podváha';
	@override String get healthyWeight => 'Zdravá hmotnost';
	@override String get overweight => 'Nadváha';
	@override String get obese => 'Obezita';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesCs implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Pomůžeme vám sestavit zdravý plán s výživnými jídly, abyste dosáhli vyvážené hmotnosti.';
	@override String get healthy => 'Skvělá práce! Jste v zdravém rozmezí. Pomůžeme vám udržet vitalitu a energii.';
	@override String overweight({required Object appLabel}) => '${appLabel} zjednoduší vaši cestu díky AI‑sledování, abyste pohodlně dosáhli svého cíle.';
	@override String get obese => 'Jsme tu, abychom vás podpořili personalizovaným vedením a udržitelnými strategiemi pro vaše zdravotní cíle.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingCs implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatické sledování kalorií';
	@override String get description => 'Sledujte spálené kalorie z fitness aplikací';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsCs implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Přehledy pokroku';
	@override String get description => 'Získejte detailní vhled do svých zdravotních trendů';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationCs implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plynulá integrace';
	@override String get description => 'Synchronizujte data z oblíbených zdravotních aplikací';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessCs implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nejste v tom sami';
	@override String get genericMessage => 'Výzkumy ukazují, že pravidelné zaznamenávání je nejlepším prediktorem dlouhodobého úspěchu.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'U osoby ve věku ${age} let (${gender}) usilující o ${goal} je konzistentní sledování tím nejdůležitějším faktorem úspěchu.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} to dělá 10× snazší než ručně.';
	@override String get getStartedTitle => 'Připraveni začít?';
	@override String get tipPhoto => 'Vyfoťte si jídla pro okamžitou analýzu';
	@override String get tipConsistency => 'Zapisujte pravidelně, abyste viděli skutečný posun';
	@override String get tipProgress => 'Sledujte pokrok denně a zůstaňte motivovaní';
	@override String get button => 'Jdeme na to';
	@override String get defaultGender => 'osoba';
	@override String get defaultGoal => 'zdravější verzi sebe sama';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileCs implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Váš zdravotní profil';
	@override String bmiDescription({required Object bmi}) => 'Na základě vašich údajů je vaše BMI ${bmi}.';
	@override String get finalizeDescription => 'Pojďme dokončit váš profil a přizpůsobit vám aplikaci.';
	@override String get goalGain => 'přibrat';
	@override String get goalLose => 'zhubnout';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Abyste dosáhli cíle, budete muset ${direction} o ${diff} ${unit}.';
	@override String get goalReached => 'Jste na cílové hmotnosti! Pomůžeme vám ji udržet.';
	@override String get button => 'Jdeme na to';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleCs implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skvělý start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Udělali jste první krok k ${goalText}. Protože jste ${activityText}, ${appLabel} upraví vaše cíle tak, aby odpovídaly vašemu životnímu stylu.';
	@override String get personalizedTargets => 'Personalizované kalorické cíle';
	@override String get aiMealDetection => 'Detekce jídel pomocí AI';
	@override String get macroBreakdowns => 'Podrobné rozklady makroživin';
	@override String get button => 'Jdeme na to';
	@override String get defaultGoal => 'vaše cíle';
	@override String get defaultActivity => 'aktivní';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightCs implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Zhubnout';
	@override String get description => 'Vytvořte kalorický deficit pro hubnutí';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightCs implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Udržovat hmotnost';
	@override String get description => 'Udržujte svou současnou hmotnost';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightCs implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Přibrat na váze';
	@override String get description => 'Vytvořte kalorický nadbytek pro nárůst hmotnosti';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryCs implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedavý';
	@override String get description => 'Málo nebo žádné cvičení';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveCs implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mírně aktivní';
	@override String get description => 'Lehké cvičení 1–3 dny/týden';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveCs implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Středně aktivní';
	@override String get description => 'Střední cvičení 3–5 dní/týden';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveCs implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Velmi aktivní';
	@override String get description => 'Náročné cvičení 6–7 dní/týden';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveCs implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrémně aktivní';
	@override String get description => 'Velmi náročné cvičení, fyzická práce';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableCs implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect není k dispozici';
	@override String get description => 'Health Connect není na tomto zařízení k dispozici. Nainstalujte jej prosím z Obchodu Play (Android 9+) nebo aktualizujte na Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsCs implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oprávnění';
	@override String get description => 'Pro integraci Health Connect jsou vyžadována tato oprávnění:';
	@override String get granted => 'Povoleno';
	@override String get notGranted => 'Nepovoleno';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedCs caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedCs._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadCs nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadCs._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteCs nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteCs._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryCs implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Náš příběh';
	@override String content({required Object appLabel}) => '${appLabel} vznikla z jednoduché frustrace: většina aplikací pro sledování kalorií je buď příliš složitá, vyžaduje neustálé ruční zadávání, účtuje vysoké předplatné, nebo nerespektuje soukromí.\n\nJako sólo vývojář jsem chtěl vytvořit něco jednoduššího a férovějšího — aplikaci, která díky AI snižuje námahu, je rychlá a zdarma, a vaše zdravotní data bere vážně.\n\n${appLabel} je aplikace, kterou jsem si přál mít: bez účtů, bez sledování, bez reklam — jen jasné, praktické přehledy a vaše zdravotní cíle.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyCs implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Na vašem soukromí záleží';
	@override String get description => 'Soukromí není dodatek — je to princip návrhu. Co to znamená v praxi:';
	@override String get noAccounts => 'Není potřeba účet\nAplikaci můžete používat okamžitě. Bez registrace, bez identit.';
	@override String noTracking({required Object appLabel}) => 'Žádné sledování chování\n${appLabel} nesleduje vaši aktivitu, netvoří profily používání ani vás nesleduje napříč aplikacemi či weby.';
	@override String noAds({required Object appLabel}) => 'Bez reklam\n${appLabel} je navržena tak, aby fungovala bez reklam a monetizace založené na datech.';
	@override String get noDataSelling => 'Žádný prodej dat\nVaše zdravotní data nejsou nikdy prodávána ani sdílena s třetími stranami.';
	@override String get localStorage => 'Lokální úložiště na prvním místě\nVaše data zůstávají ve vašem zařízení.';
	@override String get privacyPolicy => 'Zásady ochrany soukromí';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperCs implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vytvořeno sólovým vývojářem';
	@override String description({required Object appLabel}) => '${appLabel} je vyvíjena a udržována jediným vývojářem, který se zaměřuje na klidný software respektující soukromí.\n\nZpětnou vazbu čtu osobně a pomáhá formovat další směřování aplikace.';
	@override String get website => 'Web';
	@override String get email => 'E‑mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackCs implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Líbí se vám ${appLabel}?';
	@override String description({required Object appLabel}) => 'Vaše zpětná vazba pomáhá zlepšovat ${appLabel} pro všechny.';
	@override String get rateApp => 'Ohodnotit v Obchodě Play';
	@override String get sendFeedback => 'Odeslat zpětnou vazbu';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeCs implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Velikost porce';
	@override String get description => 'Přesnost odhadů výrazně závisí na vašem správném určení velikosti porce.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsCs implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Způsoby přípravy';
	@override String description({required Object appLabel}) => 'Způsob vaření může výrazně ovlivnit nutriční hodnoty. Odhady ${appLabel} nemusí tyto rozdíly vždy zohlednit.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsCs implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredience';
	@override String get description => 'Složitá jídla s mnoha skrytými ingrediencemi mohou vést k méně přesným odhadům.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsCs implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Omezení databáze';
	@override String description({required Object appLabel}) => 'Databáze potravin ${appLabel} je rozsáhlá, ale nemusí obsahovat každou potravinu nebo variantu.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyCs implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Přesnost kalorií';
	@override String get description => 'Tento odhad je tak přesný, jak přesné je vaše sledování příjmu a výdeje kalorií. Nepřesné záznamy povedou k nepřesnému odhadu.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsCs implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologické faktory';
	@override String description({required Object appLabel}) => 'Skutečný úbytek/přírůstek hmotnosti ovlivňuje metabolismus, hormony, spánek, stres, hydratace a další individuální faktory, které ${appLabel} nemůže měřit.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightCs implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Voda a kolísání hmotnosti';
	@override String get description => 'Běžná denní hmotnost může výrazně kolísat kvůli zadržování vody, trávení a načasování. Odhad tyto denní změny nezohledňuje.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceCs implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odborné doporučení';
	@override String get description => 'O tento odhad se neopírejte při zdravotních rozhodnutích. Vždy se poraďte se zdravotníkem nebo nutričním terapeutem pro osobní doporučení.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrCs implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Bazální metabolismus (BMR) je počet kalorií, které vaše tělo spálí v klidu pro udržení základních funkcí, jako je dýchání a oběh. BMR závisí na věku, pohlaví, výšce a hmotnosti. Vyšší BMR znamená, že tělo přirozeně spaluje více kalorií v klidu, často díky většímu množství svalů, nižšímu věku nebo mužskému pohlaví. Nižší BMR obvykle ukazuje na méně svalové hmoty, vyšší věk nebo ženské pohlaví.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeCs implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Celkový denní energetický výdej (TDEE) je celkový počet kalorií, které za den spálíte — zahrnuje BMR i kalorie spálené fyzickou aktivitou a běžným pohybem. TDEE závisí na vašem BMR a úrovni aktivity. Vyšší TDEE znamená celkově větší výdej energie, obvykle díky vyšší aktivitě nebo vyššímu BMR. Nižší TDEE naznačuje méně denního pohybu nebo nižší BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalCs implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Denní cíl';
	@override String get description => 'Denní cíl je doporučený denní příjem kalorií na základě vašeho TDEE a cíle hmotnosti. Pro hubnutí přijímejte méně kalorií než je TDEE. Pro udržování hmotnosti se držte TDEE. Pro nárůst hmotnosti přijímejte více kalorií než je TDEE. To vám pomůže dosahovat změn hmotnosti zdravým tempem.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedCs implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak se odhad počítá';
	@override String get description => 'Vypočítáme vaše TDEE (na základě profilu) a vynásobíme ho zlomkem dne, který uplynul (hodiny + minuty) / 24, abychom odhadli dosud spálené kalorie.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceCs implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odborné doporučení';
	@override String get description => 'Tento odhad nepoužívejte k lékařským rozhodnutím. Pro osobní doporučení se vždy poraďte se zdravotníkem nebo nutričním terapeutem.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedCs implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Číst celkové spálené kalorie';
	@override String get description => 'Umožňuje aplikaci číst z Health Connect vaše celkové spálené kalorie.';
	@override String get usage => 'Toto oprávnění se používá ke zobrazení vašeho denního výdeje kalorií v aplikaci, abyste lépe porozuměli své celkové energetické spotřebě během dne.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadCs implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Číst nutriční data';
	@override String get description => 'Umožňuje aplikaci číst nutriční data z Health Connect.';
	@override String get usage => 'Toto oprávnění umožňuje aplikaci číst nutriční informace, které mohly být zaznamenány jinými aplikacemi připojenými k Health Connect, a poskytovat tak ucelený pohled na vaši výživu.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteCs implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zapisovat nutriční data';
	@override String get description => 'Umožňuje aplikaci zapisovat nutriční data do Health Connect.';
	@override String get usage => 'Toto oprávnění umožňuje aplikaci synchronizovat vaše zaznamenaná jídla s Health Connect, aby byla vaše nutriční data dostupná i v dalších zdravotních a fitness aplikacích.';
}

/// The flat map containing all translations for locale <cs>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsCs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Čeština',
			'flag' => '🇨🇿',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Poslali jste příliš mnoho požadavků. Počkejte prosím chvíli a zkuste to znovu.',
			'errors.networkError' => 'Chyba sítě. Zkontrolujte prosím své internetové připojení.',
			'errors.unknownError' => 'Něco se pokazilo. Zkuste to prosím později.',
			'errors.loadingProfileData' => 'Chyba při načítání dat profilu',
			'errors.somethingWentWrong' => 'Něco se pokazilo.',
			'errors.retry' => 'Zkusit znovu',
			'onboarding.welcome' => ({required Object appLabel}) => 'Vítejte v ${appLabel}',
			'onboarding.subtitle' => 'Váš osobní výživový průvodce s podporou AI',
			'onboarding.getStarted' => 'Začít',
			'onboarding.features.foodRecognition.title' => 'Chytré rozpoznání jídla',
			'onboarding.features.foodRecognition.description' => 'Vyfoťte si jídlo a nechte AI rozpoznat, co jíte',
			'onboarding.features.aiAnalysis.title' => 'AI analýza',
			'onboarding.features.aiAnalysis.description' => 'Získejte okamžité nutriční informace z popisu jídla',
			'onboarding.features.healthIntegration.title' => 'Integrace se zdravím',
			'onboarding.features.healthIntegration.description' => 'Propojte Health Connect pro lepší přehledy',
			'onboarding.gender.title' => 'Jaké je vaše pohlaví?',
			'onboarding.gender.description' => 'Pohlaví nám pomáhá přesně spočítat váš bazální metabolismus (BMR).',
			'onboarding.gender.next' => 'Další',
			'onboarding.height.title' => 'Jaká je vaše výška?',
			'onboarding.height.description' => 'Vaše výška nám pomůže přesně vypočítat BMI a energetické potřeby.',
			'onboarding.height.metric' => 'Metrické',
			'onboarding.height.imperial' => 'Imperiální',
			'onboarding.height.next' => 'Další',
			'onboarding.weight.currentTitle' => 'Jaká je vaše současná hmotnost?',
			'onboarding.weight.currentDescription' => 'Současná hmotnost je zásadní pro personalizaci vašich denních cílů.',
			'onboarding.weight.targetTitle' => 'Jaká je vaše cílová hmotnost?',
			'onboarding.weight.targetDescription' => 'Stanovení cílové hmotnosti nám pomůže nastavit dlouhodobý plán.',
			'onboarding.weight.metric' => 'Metrické',
			'onboarding.weight.imperial' => 'Imperiální',
			'onboarding.weight.next' => 'Další',
			'onboarding.age.title' => 'Kdy máte narozeniny?',
			'onboarding.age.description' => 'Váš věk nám pomáhá přesně spočítat potřebný kalorický příjem.',
			'onboarding.age.next' => 'Další',
			'onboarding.bmiScale.underweight' => 'Pod',
			'onboarding.bmiScale.healthy' => 'Zdravá',
			'onboarding.bmiScale.overweight' => 'Nad',
			'onboarding.bmiScale.obese' => 'Obezita',
			'onboarding.bmiScale.categories.underweight' => 'Podváha',
			'onboarding.bmiScale.categories.healthyWeight' => 'Zdravá hmotnost',
			'onboarding.bmiScale.categories.overweight' => 'Nadváha',
			'onboarding.bmiScale.categories.obese' => 'Obezita',
			'onboarding.bmiScale.messages.underweight' => 'Pomůžeme vám sestavit zdravý plán s výživnými jídly, abyste dosáhli vyvážené hmotnosti.',
			'onboarding.bmiScale.messages.healthy' => 'Skvělá práce! Jste v zdravém rozmezí. Pomůžeme vám udržet vitalitu a energii.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} zjednoduší vaši cestu díky AI‑sledování, abyste pohodlně dosáhli svého cíle.',
			'onboarding.bmiScale.messages.obese' => 'Jsme tu, abychom vás podpořili personalizovaným vedením a udržitelnými strategiemi pro vaše zdravotní cíle.',
			'onboarding.weightGoal.title' => 'Jaký je váš cíl?',
			'onboarding.weightGoal.description' => 'Zvolte cíl, který nejlépe vystihuje, čeho chcete dosáhnout',
			'onboarding.activityLevel.title' => 'Jak jste aktivní?',
			'onboarding.activityLevel.description' => 'To nám pomůže přesněji spočítat váš denní kalorický příjem',
			'onboarding.healthConnect.title' => 'Připojte Health Connect',
			'onboarding.healthConnect.description' => 'Synchronizujte svá zdravotní data pro lepší přehledy a automatické sledování kalorií',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatické sledování kalorií',
			'onboarding.healthConnect.automaticTracking.description' => 'Sledujte spálené kalorie z fitness aplikací',
			'onboarding.healthConnect.progressInsights.title' => 'Přehledy pokroku',
			'onboarding.healthConnect.progressInsights.description' => 'Získejte detailní vhled do svých zdravotních trendů',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Plynulá integrace',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronizujte data z oblíbených zdravotních aplikací',
			'onboarding.healthConnect.connected' => 'Health Connect připojeno',
			'onboarding.healthConnect.notConnected' => 'Health Connect nepřipojeno',
			'onboarding.healthConnect.setup' => 'Nastavit Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Přeskočit prozatím',
			'onboarding.healthConnect.statusConnected' => 'Health Connect je připojen.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect byl úspěšně připojen!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Přístup odepřen. Povolte prosím oprávnění Health Connect v nastavení telefonu pro ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Chyba při nastavování Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nejste v tom sami',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Výzkumy ukazují, že pravidelné zaznamenávání je nejlepším prediktorem dlouhodobého úspěchu.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'U osoby ve věku ${age} let (${gender}) usilující o ${goal} je konzistentní sledování tím nejdůležitějším faktorem úspěchu.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} to dělá 10× snazší než ručně.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Připraveni začít?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Vyfoťte si jídla pro okamžitou analýzu',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Zapisujte pravidelně, abyste viděli skutečný posun',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Sledujte pokrok denně a zůstaňte motivovaní',
			'onboarding.reinforcement.trackingSuccess.button' => 'Jdeme na to',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'osoba',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'zdravější verzi sebe sama',
			'onboarding.reinforcement.healthProfile.title' => 'Váš zdravotní profil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Na základě vašich údajů je vaše BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Pojďme dokončit váš profil a přizpůsobit vám aplikaci.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'přibrat',
			'onboarding.reinforcement.healthProfile.goalLose' => 'zhubnout',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Abyste dosáhli cíle, budete muset ${direction} o ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Jste na cílové hmotnosti! Pomůžeme vám ji udržet.',
			'onboarding.reinforcement.healthProfile.button' => 'Jdeme na to',
			'onboarding.reinforcement.goalLifestyle.title' => 'Skvělý start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Udělali jste první krok k ${goalText}. Protože jste ${activityText}, ${appLabel} upraví vaše cíle tak, aby odpovídaly vašemu životnímu stylu.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personalizované kalorické cíle',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Detekce jídel pomocí AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Podrobné rozklady makroživin',
			'onboarding.reinforcement.goalLifestyle.button' => 'Jdeme na to',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'vaše cíle',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktivní',
			'tabs.dashboard' => 'Přehled',
			'tabs.history' => 'Historie',
			'home.aiSummary.title' => 'Vaše shrnutí od AI',
			'home.aiSummary.logMore' => 'Zaznamenávejte více jídel v následujících dnech a získejte své personalizované AI přehledy.',
			'home.aiSummary.loading' => 'Načítáme vaše shrnutí…',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} zaznamenaných jídel',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Skóre vyváženosti ${score}',
			'home.aiSummary.topFoods' => 'Nejčastější jídla',
			'home.aiSummary.trendUp' => 'Kalorie mají rostoucí trend',
			'home.aiSummary.trendDown' => 'Kalorie mají klesající trend',
			'home.aiSummary.trendSteady' => 'Kalorie zůstávají stabilní',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Aktualizováno ${time}',
			'home.dailyGoal.title' => 'Nastavte si denní cíl',
			'home.dailyGoal.titleSet' => 'Váš denní cíl',
			'home.dailyGoal.description' => 'Připraveni vydat se na cestu ke zdraví? Nastavte si denní kalorický cíl a nastartujte svůj pokrok.',
			'home.dailyGoal.descriptionSet' => 'Váš kompas je nastaven! Toto je váš denní kalorický cíl, který vás povede.',
			'home.dailyGoal.yourGoal' => 'Váš cíl',
			'home.dailyGoal.goal' => 'Cíl',
			'home.dailyGoal.dailyCalories' => 'Denní kalorie (kcal)',
			'home.dailyGoal.setGoal' => 'Nastavit cíl',
			'home.dailyGoal.intake' => 'Příjem',
			'home.dailyGoal.burned' => 'Spáleno',
			'home.dailyGoal.weightImpact' => 'Vliv na hmotnost',
			'home.dailyGoal.estLoss' => 'Odh. úbytek',
			'home.dailyGoal.estGain' => 'Odh. přírůstek',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Denní souhrn',
			'home.dailySummary.calories' => 'Kalorie',
			'home.dailySummary.carbs' => 'Sacharidy',
			'home.dailySummary.protein' => 'Bílkoviny',
			'home.dailySummary.fat' => 'Tuky',
			'home.dailySummary.fiber' => 'Vláknina',
			'home.dailySummary.grams' => 'gramů',
			'home.dailySummary.chartAccessibilityLabel' => 'Graf makroživin',
			'home.intakeProgress.title' => 'Dnešní rozložení makroživin',
			'home.intakeProgress.target' => 'Cíl',
			'home.intakeProgress.current' => 'Aktuální',
			'home.intakeHistory.title' => '7denní historie makroživin',
			'home.intakeHistory.trendTitle' => 'Dnešní trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Špička: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Zatím žádná historie',
			'home.intakeHistory.startLogging' => 'Začněte si zapisovat jídla, a zde uvidíte\n7denní trendy makroživin',
			'home.mealLog.title' => 'Zaznamenaná jídla',
			'home.mealLog.emptyMessage' => 'Vyfoťte své poslední jídlo a zobrazí se zde.',
			'home.mealLog.noMealsToday' => 'Dnes nejsou zaznamenána žádná jídla',
			'home.mealLog.seeAllMeals' => 'Zobrazit všechna jídla',
			'home.mealDescription.title' => 'Rychlé přidání s AI',
			'home.mealDescription.description' => 'Popište své jídlo a detaily nechte na AI.',
			'home.mealDescription.hint' => 'např. K snídani jsem měl(a) velkou misku ovesné kaše s banánem a odměrkou syrovátky ...',
			'home.mealDescription.analyzeMeal' => 'Analyzovat jídlo',
			'home.favoriteMeals.title' => 'Oblíbená jídla',
			'home.favoriteMeals.description' => 'Rychle přidejte některé ze svých oblíbených jídel.',
			'home.favoriteMeals.noFavorites' => 'Zatím žádná oblíbená jídla.',
			'home.favoriteMeals.addFavoriteHint' => 'Kliknutím na hvězdičku u jídla jej označíte jako oblíbené.',
			'home.favoriteMeals.seeAll' => 'Zobrazit vše',
			'home.favoriteMeals.add' => 'Přidat',
			'home.mealSnap.title' => 'Vyfoťte a sledujte své jídlo',
			'home.mealSnap.description' => 'Použijte fotoaparát k vyfocení jídla pro AI analýzu.',
			'home.mealSnap.openCamera' => 'Otevřít fotoaparát',
			'home.mealSnap.gallery' => 'Galerie',
			'home.mealSnap.compressingPhoto' => 'Optimalizace fotografie…',
			'home.mealSnap.uploadingPhoto' => 'Nahrávání fotografie…',
			'home.connectHealth.title' => 'Synchronizujte s Health Connect',
			'home.connectHealth.description' => 'Synchronizujte svá nutriční data s Health Connect',
			'home.connectHealth.install' => 'Instalovat',
			'home.connectHealth.connect' => 'Připojit',
			'history.noMeals' => 'Žádná zaznamenaná jídla',
			'history.emptyMessage' => 'Vyfoťte své poslední jídlo a zobrazí se zde.',
			'history.today' => 'Dnes',
			'history.yesterday' => 'Včera',
			'meal.ohNo' => 'Ale ne!',
			'meal.delete' => 'Smazat',
			'meal.editMeal' => 'Upravit jídlo',
			'meal.addMeal' => 'Přidat jídlo',
			'meal.saveMeal' => 'Uložit jídlo',
			'meal.save' => 'Uložit',
			'meal.mealName' => 'Název jídla',
			'meal.mealNameHint' => 'např. Míchaná vejce s toastem',
			'meal.mealQuantity' => 'Množství jídla',
			'meal.mealQuantityHint' => 'např. 1 miska, 2 plátky',
			'meal.timeOfMeal' => 'Čas jídla',
			'meal.timeOfMealHint' => 'Vyberte čas, kdy jste jedli',
			'meal.mealType' => 'Typ jídla',
			'meal.nutrition.calories' => 'Kalorie',
			'meal.nutrition.carbs' => 'Sacharidy (g)',
			'meal.nutrition.protein' => 'Bílkoviny (g)',
			'meal.nutrition.fat' => 'Tuky (g)',
			'meal.nutrition.fiber' => 'Vláknina (g)',
			'meal.deleteConfirmation.title' => 'Smazat jídlo',
			'meal.deleteConfirmation.message' => 'Opravdu chcete smazat tento záznam o jídle?',
			'meal.deleteConfirmation.cancel' => 'Zrušit',
			'meal.deleteConfirmation.delete' => 'Smazat',
			'meal.addedToLog' => 'Jídlo přidáno do vašeho deníku!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nelze přidat jídlo: ${error}',
			'meal.savedSuccessfully' => 'Jídlo úspěšně přidáno!',
			'meal.updatedSuccessfully' => 'Jídlo úspěšně aktualizováno!',
			'meal.errorSaving' => ({required Object error}) => 'Chyba při ukládání jídla: ${error}',
			'meal.removedFromFavorites' => 'Odebráno z oblíbených!',
			'meal.savedAsFavorite' => 'Jídlo uloženo mezi oblíbené!',
			'meal.unfavorite' => 'Odebrat z oblíbených',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nelze aktualizovat oblíbené: ${error}',
			'meal.feedbackThanks' => 'Děkujeme za zpětnou vazbu!',
			'meal.reanalysisUpdated' => 'Analýza jídla byla aktualizována podle vaší zpětné vazby.',
			'meal.failedToProcess' => ({required Object error}) => 'Nepodařilo se zpracovat: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Nepodařilo se zpracovat obrázek: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Chyba při komprimaci obrázku: ${error}',
			'meal.failedToSave' => 'Nepodařilo se uložit data. Zkuste to prosím znovu.',
			'meal.skip' => 'Přeskočit',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Otázka ${current} z ${total}',
			'meal.variation.noVariationsAvailable' => 'Žádné varianty k dispozici',
			'meal.analysis.title' => 'Analýza jídla pomocí AI',
			'meal.analysis.reassurance' => 'Obvykle to trvá jen pár sekund.',
			'meal.analysis.stepStarted' => 'Začínáme…',
			'meal.analysis.stepDecomposition' => 'Analyzujeme vaše jídlo…',
			'meal.analysis.stepIngredients' => 'Přiřazujeme ingredience k nutričním údajům…',
			'meal.analysis.stepUncertainty' => 'Kontrolujeme jistotu…',
			'meal.analysis.stepMealTypeQuestion' => 'Skoro hotovo…',
			'meal.analysis.stepResult' => 'Finalizujeme výsledek…',
			'meal.analysis.stepError' => 'Něco se pokazilo',
			'meal.analysis.stepDefault' => 'Analyzujeme vaše jídlo…',
			'meal.analysis.progressUnderstand' => 'Porozumět',
			'meal.analysis.progressMatch' => 'Párovat',
			'meal.analysis.progressCheck' => 'Ověřit',
			'meal.analysis.progressFinish' => 'Dokončit',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingrediencí rozpoznáno',
			'meal.analysis.ingredientsPending' => 'Probíhá skenování ingrediencí…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'Co vypadá špatně?',
			'meal.feedback.subtitle' => 'Pomozte nám zlepšit analýzu výběrem jednoho nebo více problémů.',
			'meal.feedback.tellUsMore' => 'Řekněte nám víc',
			'meal.feedback.describeIncorrect' => 'Popište, co bylo nesprávné',
			'meal.feedback.submit' => 'Odeslat',
			'meal.feedback.issueFoodIdentification' => 'Identifikace jídla',
			'meal.feedback.issuePortionSize' => 'Velikost porce',
			'meal.feedback.issueCalorieDistribution' => 'Rozložení kalorií',
			'meal.feedback.issueMacrosWrong' => 'Makra jsou špatně',
			'meal.feedback.issueMissingItems' => 'Chybějící položky',
			'meal.feedback.issueExtraItems' => 'Položky navíc',
			'meal.feedback.issueOther' => 'Jiné',
			'favorites.title' => 'Oblíbené',
			'favorites.empty' => 'Zatím žádná oblíbená jídla.',
			'favorites.searchPlaceholder' => 'Hledat v oblíbených jídlech',
			'favorites.searchEmptyTitle' => 'Žádné oblíbené neodpovídají vyhledávání',
			'favorites.searchEmptySubtitle' => 'Zkuste jiný název jídla, množství nebo typ jídla.',
			'favorites.sortLabel' => 'Řadit oblíbené',
			'favorites.undo' => 'Zpět',
			'favorites.removed' => ({required Object name}) => 'Odebráno z oblíbených: ${name}',
			'favorites.sortOptions.recent' => 'Nejnovější',
			'favorites.sortOptions.calories' => 'Kalorie',
			'favorites.sortOptions.alphabetical' => 'A–Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Nenalezena žádná data profilu',
			'profile.yourProfile' => 'Váš profil',
			'profile.viewAndManage' => 'Zobrazte a spravujte své zdravotní informace',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'ZÁKLADNÍ INFORMACE',
			'profile.sections.goalsAndActivity' => 'CÍLE A AKTIVITA',
			'profile.sections.calculatedValues' => 'VYPOČÍTANÉ HODNOTY',
			'profile.gender' => 'Pohlaví',
			'profile.height' => 'Výška',
			'profile.weight' => 'Hmotnost',
			'profile.age' => 'Věk',
			'profile.weightGoal' => 'Cíl hmotnosti',
			'profile.targetWeight' => 'Cílová hmotnost',
			'profile.activityLevel' => 'Úroveň aktivity',
			'profile.healthMetrics' => 'Zdravotní metriky',
			'profile.notSet' => 'Nenastaveno',
			'profile.years' => 'let',
			'profile.updatedSuccessfully' => 'Profil úspěšně aktualizován!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Denní cíl',
			'profile.calculatedValues.calPerDay' => 'kal/den',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Zdravotní skóre',
			'healthScore.whyThisScore' => 'Proč toto skóre?',
			'healthScore.note' => 'Toto skóre je odhad AI založený na zjištěných ingrediencích a nutriční hustotě. Pro osobní rady ohledně stravy se vždy poraďte s odborníkem.',
			'healthScore.unhealthy' => 'Nezdravé',
			'healthScore.healthy' => 'Zdravé',
			'healthScore.neutral' => 'Neutrální',
			'editProfile.title' => 'Upravit profil',
			'editProfile.sections.personalInformation' => 'OSOBNÍ ÚDAJE',
			'editProfile.sections.physicalMeasurements' => 'FYZICKÉ MÍRY',
			'editProfile.sections.goalsAndActivity' => 'CÍLE A AKTIVITA',
			'editProfile.gender' => 'Pohlaví',
			'editProfile.dateOfBirth' => 'Datum narození',
			'editProfile.height' => 'Výška',
			'editProfile.weight' => 'Hmotnost',
			'editProfile.weightGoal' => 'Cíl hmotnosti',
			'editProfile.activityLevel' => 'Úroveň aktivity',
			'editProfile.metric' => 'Metrické',
			'editProfile.imperial' => 'Imperiální',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metrické (cm)',
			'editProfile.imperialFtIn' => 'Imperiální (ft/in)',
			'editProfile.metricKg' => 'Metrické (kg)',
			'editProfile.imperialLbs' => 'Imperiální (lbs)',
			'editProfile.genders.male' => 'Muž',
			'editProfile.genders.female' => 'Žena',
			'editProfile.genders.other' => 'Jiné',
			'editProfile.weightGoals.loseWeight.name' => 'Zhubnout',
			'editProfile.weightGoals.loseWeight.description' => 'Vytvořte kalorický deficit pro hubnutí',
			'editProfile.weightGoals.maintainWeight.name' => 'Udržovat hmotnost',
			'editProfile.weightGoals.maintainWeight.description' => 'Udržujte svou současnou hmotnost',
			'editProfile.weightGoals.gainWeight.name' => 'Přibrat na váze',
			'editProfile.weightGoals.gainWeight.description' => 'Vytvořte kalorický nadbytek pro nárůst hmotnosti',
			'editProfile.activityLevels.sedentary.name' => 'Sedavý',
			'editProfile.activityLevels.sedentary.description' => 'Málo nebo žádné cvičení',
			'editProfile.activityLevels.lightlyActive.name' => 'Mírně aktivní',
			'editProfile.activityLevels.lightlyActive.description' => 'Lehké cvičení 1–3 dny/týden',
			'editProfile.activityLevels.moderatelyActive.name' => 'Středně aktivní',
			'editProfile.activityLevels.moderatelyActive.description' => 'Střední cvičení 3–5 dní/týden',
			'editProfile.activityLevels.veryActive.name' => 'Velmi aktivní',
			'editProfile.activityLevels.veryActive.description' => 'Náročné cvičení 6–7 dní/týden',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrémně aktivní',
			'editProfile.activityLevels.extremelyActive.description' => 'Velmi náročné cvičení, fyzická práce',
			'settings.title' => 'Nastavení',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALIZACE',
			'settings.sections.notifications' => 'OZNÁMENÍ',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'PODPORA A PRÁVNÍ INFORMACE',
			'settings.sections.about' => 'O APLIKACI',
			'settings.sections.dangerZone' => 'NEBEZPEČNÁ OBLAST',
			'settings.sections.developer' => 'VÝVOJÁŘ',
			'settings.editProfile.title' => 'Upravit profil',
			'settings.editProfile.subtitle' => 'Aktualizujte své osobní údaje',
			'settings.language.title' => 'Jazyk',
			'settings.language.subtitle' => 'Zvolte preferovaný jazyk',
			'settings.language.searchHint' => 'Hledat jazyky...',
			'settings.language.noResults' => 'Nenalezeny žádné výsledky',
			'settings.heightUnit.title' => 'Jednotka výšky',
			'settings.weightUnit.title' => 'Jednotka hmotnosti',
			'settings.mealReminders.title' => 'Připomínky jídel',
			'settings.mealReminders.subtitle' => 'Zůstaňte na cestě díky včasným upozorněním',
			'settings.theme.title' => 'Motiv',
			'settings.theme.light' => 'Světlý',
			'settings.theme.dark' => 'Tmavý',
			'settings.theme.system' => 'Systémový',
			'settings.sendFeedback.title' => 'Odeslat zpětnou vazbu',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Pomozte nám vylepšit ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Zpětná vazba k ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Prosíme, napište svou zpětnou vazbu níže:',
			'settings.sendFeedback.appVersion' => 'Verze aplikace',
			'settings.sendFeedback.device' => 'Zařízení',
			'settings.sendFeedback.osVersion' => 'Verze OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Exportovat historii jídel',
			'settings.exportMealHistory.subtitle' => 'Sdílejte CSV se svými záznamy jídel',
			'settings.exportMealHistory.shareText' => 'Váš export historie jídel Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Nelze exportovat historii jídel: ${error}',
			'settings.clearAllData.title' => 'Smazat všechna data',
			'settings.clearAllData.subtitle' => 'Nezvratně smaže všechny vaše informace',
			'settings.clearAllData.confirmationTitle' => 'Smazat všechna data?',
			'settings.clearAllData.confirmationMessage' => 'Tuto akci nelze vrátit zpět. Všechna zaznamenaná jídla, oblíbené položky a nastavení profilu budou trvale smazána.',
			'settings.clearAllData.cancel' => 'Zrušit',
			'settings.clearAllData.clearEverything' => 'Smazat vše',
			'settings.debugOptions.title' => 'Možnosti ladění',
			'settings.developerModeEnabled' => 'Režim vývojáře povolen!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Zobrazit a spravovat oprávnění',
			'settings.healthConnect.unavailable.title' => 'Health Connect není k dispozici',
			'settings.healthConnect.unavailable.description' => 'Health Connect není na tomto zařízení k dispozici. Nainstalujte jej prosím z Obchodu Play (Android 9+) nebo aktualizujte na Android 14+.',
			'settings.healthConnect.permissions.title' => 'Oprávnění',
			'settings.healthConnect.permissions.description' => 'Pro integraci Health Connect jsou vyžadována tato oprávnění:',
			'settings.healthConnect.permissions.granted' => 'Povoleno',
			'settings.healthConnect.permissions.notGranted' => 'Nepovoleno',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Číst celkové spálené kalorie',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Umožňuje aplikaci číst z Health Connect vaše celkové spálené kalorie.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Toto oprávnění se používá ke zobrazení vašeho denního výdeje kalorií v aplikaci, abyste lépe porozuměli své celkové energetické spotřebě během dne.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Číst nutriční data',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Umožňuje aplikaci číst nutriční data z Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Toto oprávnění umožňuje aplikaci číst nutriční informace, které mohly být zaznamenány jinými aplikacemi připojenými k Health Connect, a poskytovat tak ucelený pohled na vaši výživu.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Zapisovat nutriční data',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Umožňuje aplikaci zapisovat nutriční data do Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Toto oprávnění umožňuje aplikaci synchronizovat vaše zaznamenaná jídla s Health Connect, aby byla vaše nutriční data dostupná i v dalších zdravotních a fitness aplikacích.',
			'settings.healthConnect.managePermissions' => 'Spravovat oprávnění',
			'settings.healthConnect.openSettings' => 'Otevřít nastavení Health Connect',
			'settings.healthConnect.requestPermissions' => 'Vyžádat oprávnění',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Žádost o oprávnění byla zrušena nebo selhala. Zkuste to prosím znovu nebo je udělte ručně v nastavení Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Nelze vyžádat oprávnění. Zkuste to prosím znovu nebo je udělte ručně v nastavení Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Žádáme…',
			'settings.about.title' => 'O aplikaci',
			'settings.about.tagline' => 'Rychlé, zdarma a s respektem k soukromí',
			'settings.about.ourStory.title' => 'Náš příběh',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} vznikla z jednoduché frustrace: většina aplikací pro sledování kalorií je buď příliš složitá, vyžaduje neustálé ruční zadávání, účtuje vysoké předplatné, nebo nerespektuje soukromí.\n\nJako sólo vývojář jsem chtěl vytvořit něco jednoduššího a férovějšího — aplikaci, která díky AI snižuje námahu, je rychlá a zdarma, a vaše zdravotní data bere vážně.\n\n${appLabel} je aplikace, kterou jsem si přál mít: bez účtů, bez sledování, bez reklam — jen jasné, praktické přehledy a vaše zdravotní cíle.',
			'settings.about.privacy.title' => 'Na vašem soukromí záleží',
			'settings.about.privacy.description' => 'Soukromí není dodatek — je to princip návrhu. Co to znamená v praxi:',
			'settings.about.privacy.noAccounts' => 'Není potřeba účet\nAplikaci můžete používat okamžitě. Bez registrace, bez identit.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Žádné sledování chování\n${appLabel} nesleduje vaši aktivitu, netvoří profily používání ani vás nesleduje napříč aplikacemi či weby.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Bez reklam\n${appLabel} je navržena tak, aby fungovala bez reklam a monetizace založené na datech.',
			'settings.about.privacy.noDataSelling' => 'Žádný prodej dat\nVaše zdravotní data nejsou nikdy prodávána ani sdílena s třetími stranami.',
			'settings.about.privacy.localStorage' => 'Lokální úložiště na prvním místě\nVaše data zůstávají ve vašem zařízení.',
			'settings.about.privacy.privacyPolicy' => 'Zásady ochrany soukromí',
			'settings.about.developer.title' => 'Vytvořeno sólovým vývojářem',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} je vyvíjena a udržována jediným vývojářem, který se zaměřuje na klidný software respektující soukromí.\n\nZpětnou vazbu čtu osobně a pomáhá formovat další směřování aplikace.',
			'settings.about.developer.website' => 'Web',
			'settings.about.developer.email' => 'E‑mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Líbí se vám ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Vaše zpětná vazba pomáhá zlepšovat ${appLabel} pro všechny.',
			'settings.about.feedback.rateApp' => 'Ohodnotit v Obchodě Play',
			'settings.about.feedback.sendFeedback' => 'Odeslat zpětnou vazbu',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Sestavení ${buildNumber}',
			'reminders.title' => 'Zůstaňte na cestě s připomínkami',
			'reminders.description' => 'Získejte jemné připomínky, abyste si zapisovali jídla a byli konzistentní se svými výživovými cíli',
			'reminders.notificationsEnabled' => 'Oznámení povolena',
			'reminders.notificationsDisabled' => 'Oznámení zakázána',
			'reminders.enabledSubtitle' => 'Budete dostávat připomínky jídel',
			'reminders.disabledSubtitle' => 'Povolte oznámení, abyste dostávali připomínky jídel',
			'reminders.mealReminders' => 'Připomínky jídel',
			'reminders.breakfast' => 'Snídaně',
			'reminders.lunch' => 'Oběd',
			'reminders.dinner' => 'Večeře',
			'reminders.snack' => 'Svačina',
			'reminders.unknown' => 'Neznámé',
			'reminders.change' => 'Změnit',
			'reminders.enableNotifications' => 'Povolit oznámení',
			'reminders.skipForNow' => 'Přeskočit prozatím',
			'reminders.saveChanges' => 'Uložit změny',
			'reminders.enabledSuccessfully' => 'Oznámení byla úspěšně povolena!',
			'reminders.permissionDenied' => 'Oprávnění k oznámením odepřeno',
			'reminders.errorEnabling' => ({required Object error}) => 'Chyba při povolování oznámení: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Chyba při dokončování nastavení: ${error}',
			'notifications.breakfast.title' => 'Čas na snídani! 🍳',
			'notifications.breakfast.body' => 'Nezapomeňte si zaznamenat snídani',
			'notifications.lunch.title' => 'Čas na oběd! 🥗',
			'notifications.lunch.body' => 'Je čas zapsat si oběd',
			'notifications.dinner.title' => 'Čas na večeři! 🍽️',
			'notifications.dinner.body' => 'Nezapomeňte si zaznamenat večeři',
			'notifications.snack.title' => 'Čas na svačinu! 🍎',
			'notifications.snack.body' => 'Dejte si zdravou svačinu a zapište si ji',
			'notifications.test.title' => 'Testovací oznámení',
			'login.title' => 'Přihlášení',
			'login.signInWithGoogle' => 'Přihlásit se přes Google',
			'login.signInFailed' => 'Přihlášení přes Google selhalo nebo bylo zrušeno.',
			'disclaimer.pleaseNote' => 'Upozornění',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} poskytuje odhadnuté nutriční informace. Přesnost závisí na vašem zadání a variabilitě potravin. Berte je jako vodítko, ne definitivní zdroj. Pro osobní doporučení se poraďte s odborníkem na výživu.',
			'disclaimer.snap.portionSize.title' => 'Velikost porce',
			'disclaimer.snap.portionSize.description' => 'Přesnost odhadů výrazně závisí na vašem správném určení velikosti porce.',
			'disclaimer.snap.preparationMethods.title' => 'Způsoby přípravy',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Způsob vaření může výrazně ovlivnit nutriční hodnoty. Odhady ${appLabel} nemusí tyto rozdíly vždy zohlednit.',
			'disclaimer.snap.ingredients.title' => 'Ingredience',
			'disclaimer.snap.ingredients.description' => 'Složitá jídla s mnoha skrytými ingrediencemi mohou vést k méně přesným odhadům.',
			'disclaimer.snap.databaseLimitations.title' => 'Omezení databáze',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Databáze potravin ${appLabel} je rozsáhlá, ale nemusí obsahovat každou potravinu nebo variantu.',
			'disclaimer.weightEstimate.title' => 'O odhadu změny hmotnosti',
			'disclaimer.weightEstimate.description' => 'Projektovaná změna hmotnosti je teoretický odhad založený na jednoduchém modelu příjem vs. výdej kalorií. Slouží pouze jako motivační vodítko, nikoli jako předpověď vaší skutečné hmotnosti.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Přesnost kalorií',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Tento odhad je tak přesný, jak přesné je vaše sledování příjmu a výdeje kalorií. Nepřesné záznamy povedou k nepřesnému odhadu.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologické faktory',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Skutečný úbytek/přírůstek hmotnosti ovlivňuje metabolismus, hormony, spánek, stres, hydratace a další individuální faktory, které ${appLabel} nemůže měřit.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Voda a kolísání hmotnosti',
			'disclaimer.weightEstimate.waterWeight.description' => 'Běžná denní hmotnost může výrazně kolísat kvůli zadržování vody, trávení a načasování. Odhad tyto denní změny nezohledňuje.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Odborné doporučení',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'O tento odhad se neopírejte při zdravotních rozhodnutích. Vždy se poraďte se zdravotníkem nebo nutričním terapeutem pro osobní doporučení.',
			'disclaimer.healthMetrics.description' => 'Tyto metriky vám pomohou porozumět energetickým potřebám těla a nasměrují vaše výživové cíle.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Bazální metabolismus (BMR) je počet kalorií, které vaše tělo spálí v klidu pro udržení základních funkcí, jako je dýchání a oběh. BMR závisí na věku, pohlaví, výšce a hmotnosti. Vyšší BMR znamená, že tělo přirozeně spaluje více kalorií v klidu, často díky většímu množství svalů, nižšímu věku nebo mužskému pohlaví. Nižší BMR obvykle ukazuje na méně svalové hmoty, vyšší věk nebo ženské pohlaví.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Celkový denní energetický výdej (TDEE) je celkový počet kalorií, které za den spálíte — zahrnuje BMR i kalorie spálené fyzickou aktivitou a běžným pohybem. TDEE závisí na vašem BMR a úrovni aktivity. Vyšší TDEE znamená celkově větší výdej energie, obvykle díky vyšší aktivitě nebo vyššímu BMR. Nižší TDEE naznačuje méně denního pohybu nebo nižší BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Denní cíl',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Denní cíl je doporučený denní příjem kalorií na základě vašeho TDEE a cíle hmotnosti. Pro hubnutí přijímejte méně kalorií než je TDEE. Pro udržování hmotnosti se držte TDEE. Pro nárůst hmotnosti přijímejte více kalorií než je TDEE. To vám pomůže dosahovat změn hmotnosti zdravým tempem.',
			'disclaimer.calorieExpenditure.title' => 'Odhad spálených kalorií',
			'disclaimer.calorieExpenditure.description' => 'Když data z Health Connect nejsou k dispozici, odhadujeme dnešní spálené kalorie pomocí vašeho BMR a úrovně aktivity (TDEE), škálovaných podle části dne, která již uplynula.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Jak se odhad počítá',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Vypočítáme vaše TDEE (na základě profilu) a vynásobíme ho zlomkem dne, který uplynul (hodiny + minuty) / 24, abychom odhadli dosud spálené kalorie.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Odborné doporučení',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Tento odhad nepoužívejte k lékařským rozhodnutím. Pro osobní doporučení se vždy poraďte se zdravotníkem nebo nutričním terapeutem.',
			'common.close' => 'Zavřít',
			'common.kContinue' => 'Pokračovat',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Líbí se vám ${appLabel}?',
			'feedbackRating.yes' => 'Ano, líbí se mi',
			'feedbackRating.no' => 'Ne tak úplně',
			'feedbackRating.rateStepHeading' => 'Ohodnotit v Obchodě Play',
			'feedbackRating.emailStepHeading' => 'Poslat zpětnou vazbu e‑mailem',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Rychlé hodnocení pomáhá ostatním najít ${appLabel} a umožňuje další vývoj. Věnujete tomu chvilku?',
			'feedbackRating.shareFeedbackViaEmail' => 'Vaše zpětná vazba určuje, co bude dál — čteme každou zprávu. Chcete se podělit o své postřehy e‑mailem?',
			'feedbackRating.rateCta' => 'Ohodnotit v Obchodě Play',
			'feedbackRating.maybeLater' => 'Možná později',
			'feedbackRating.sendFeedback' => 'Odeslat zpětnou vazbu',
			'feedbackRating.noThanks' => 'Ne, děkuji',
			'feedbackRating.aboutUsDescription' => 'Vytvořeno s péčí malým týmem. Soustředíme se na soukromí, jednoduchost a pomoc s budováním lepších stravovacích návyků.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Zajímá vás, kdo stojí za ${appLabel}? Podívejte se na ',
			'feedbackRating.aboutUsLinkLabel' => 'O nás',
			'feedbackRating.thankYouMessage' => 'Děkujeme! Zeptáme se zase jindy.',
			'health.syncFailed' => 'Nelze synchronizovat s Health Connect',
			'health.mealSynced' => 'Jídlo synchronizováno s Health Connect',
			_ => null,
		};
	}
}
