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
	@override String get rateLimitExceeded => 'Odeslali jste příliš mnoho požadavků. Počkejte prosím chvíli a zkuste to znovu.';
	@override String get networkError => 'Síťová chyba. Zkontrolujte prosím připojení k internetu.';
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
	@override String get subtitle => 'Váš osobní výživový průvodce poháněný AI';
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
	@override String get emptyMessage => 'Vyfoťte poslední jídlo a zaznamenejte ho sem.';
	@override String get today => 'Dnes';
	@override String get yesterday => 'Včera';
}

// Path: meal
class _TranslationsMealCs implements TranslationsMealEn {
	_TranslationsMealCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Jejda!';
	@override String get delete => 'Smazat';
	@override String get editMeal => 'Upravit jídlo';
	@override String get addMeal => 'Přidat jídlo';
	@override String get saveMeal => 'Uložit jídlo';
	@override String get save => 'Uložit';
	@override String get mealName => 'Název jídla';
	@override String get mealNameHint => 'např. Míchaná vejce s toustem';
	@override String get mealQuantity => 'Množství jídla';
	@override String get mealQuantityHint => 'např. 1 miska, 2 plátky';
	@override String get timeOfMeal => 'Čas jídla';
	@override String get timeOfMealHint => 'Vyberte čas, kdy jste jídlo měli';
	@override String get mealType => 'Typ jídla';
	@override late final _TranslationsMealNutritionCs nutrition = _TranslationsMealNutritionCs._(_root);
	@override late final _TranslationsMealDeleteConfirmationCs deleteConfirmation = _TranslationsMealDeleteConfirmationCs._(_root);
	@override String get addedToLog => 'Jídlo přidáno do záznamu!';
	@override String couldNotAdd({required Object error}) => 'Nepodařilo se přidat jídlo: ${error}';
	@override String get savedSuccessfully => 'Jídlo úspěšně přidáno!';
	@override String get updatedSuccessfully => 'Jídlo úspěšně upraveno!';
	@override String errorSaving({required Object error}) => 'Chyba při ukládání jídla: ${error}';
	@override String get removedFromFavorites => 'Odebráno z oblíbených!';
	@override String get savedAsFavorite => 'Jídlo uloženo mezi oblíbené!';
	@override String get unfavorite => 'Odebrat z oblíbených';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nepodařilo se aktualizovat oblíbené: ${error}';
	@override String get feedbackThanks => 'Díky za zpětnou vazbu!';
	@override String get reanalysisUpdated => 'Analýza jídla byla aktualizována podle vaší zpětné vazby.';
	@override String failedToProcess({required Object error}) => 'Zpracování selhalo: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Zpracování obrázku selhalo: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Chyba při kompresi obrázku: ${error}';
	@override String get failedToSave => 'Nepodařilo se uložit data. Zkuste to prosím znovu.';
	@override String get skip => 'Přeskočit';
	@override late final _TranslationsMealQuestionFlowCs questionFlow = _TranslationsMealQuestionFlowCs._(_root);
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
	@override String get searchPlaceholder => 'Hledat oblíbená jídla';
	@override String get searchEmptyTitle => 'Žádné oblíbené neodpovídají hledání';
	@override String get searchEmptySubtitle => 'Zkuste jiný název jídla, množství nebo typ jídla.';
	@override String get sortLabel => 'Seřadit oblíbené';
	@override String get undo => 'Vrátit';
	@override String removed({required Object name}) => 'Odebráno ${name} z oblíbených';
	@override late final _TranslationsFavoritesSortOptionsCs sortOptions = _TranslationsFavoritesSortOptionsCs._(_root);
}

// Path: profile
class _TranslationsProfileCs implements TranslationsProfileEn {
	_TranslationsProfileCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Nenalezena data profilu';
	@override String get yourProfile => 'Váš profil';
	@override String get viewAndManage => 'Prohlížet a spravovat své zdravotní informace';
	@override late final _TranslationsProfileSectionsCs sections = _TranslationsProfileSectionsCs._(_root);
	@override String get gender => 'Pohlaví';
	@override String get height => 'Výška';
	@override String get weight => 'Hmotnost';
	@override String get age => 'Věk';
	@override String get weightGoal => 'Cíl hmotnosti';
	@override String get targetWeight => 'Cílová hmotnost';
	@override String get activityLevel => 'Úroveň aktivity';
	@override String get healthMetrics => 'Zdravotní ukazatele';
	@override String get notSet => 'Nenastaveno';
	@override String get years => 'let';
	@override String get updatedSuccessfully => 'Profil byl úspěšně aktualizován!';
	@override late final _TranslationsProfileCalculatedValuesCs calculatedValues = _TranslationsProfileCalculatedValuesCs._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreCs implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hodnocení zdraví';
	@override String get whyThisScore => 'Proč takové hodnocení?';
	@override String get note => 'Toto hodnocení je odhad AI založený na identifikovaných ingrediencích a nutriční hustotě. Pro dietní doporučení se vždy poraďte s odborníkem.';
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
	@override String get title => 'Zůstaňte na cestě díky připomenutím';
	@override String get description => 'Dostávejte jemná upozornění, abyste si zaznamenávali jídla a udrželi se v souladu se svými výživovými cíli';
	@override String get notificationsEnabled => 'Upozornění povolena';
	@override String get notificationsDisabled => 'Upozornění vypnuta';
	@override String get enabledSubtitle => 'Budete dostávat připomenutí jídel';
	@override String get disabledSubtitle => 'Povolte upozornění pro připomenutí jídel';
	@override String get mealReminders => 'Připomenutí jídel';
	@override String get breakfast => 'Snídaně';
	@override String get lunch => 'Oběd';
	@override String get dinner => 'Večeře';
	@override String get snack => 'Svačina';
	@override String get unknown => 'Neznámé';
	@override String get change => 'Změnit';
	@override String get enableNotifications => 'Povolit upozornění';
	@override String get skipForNow => 'Přeskočit nyní';
	@override String get saveChanges => 'Uložit změny';
	@override String get enabledSuccessfully => 'Upozornění úspěšně povolena!';
	@override String get permissionDenied => 'Oprávnění k upozorněním odepřeno';
	@override String errorEnabling({required Object error}) => 'Chyba při povolování upozornění: ${error}';
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
	@override String get pleaseNote => 'Vezměte prosím na vědomí';
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
	@override String get no => 'Ne tak moc';
	@override String get rateStepHeading => 'Ohodnoťte v Play Store';
	@override String get emailStepHeading => 'Poslat zpětnou vazbu e-mailem';
	@override String soloDevMessage({required Object appLabel}) => 'Krátké hodnocení pomůže ostatním najít ${appLabel} a podpoří další vývoj. Věnujete chvíli a ohodnotíte nás?';
	@override String get shareFeedbackViaEmail => 'Vaše zpětná vazba formuje další kroky — čteme každou zprávu. Chcete sdílet své myšlenky e-mailem?';
	@override String get rateCta => 'Ohodnotit v Play Store';
	@override String get maybeLater => 'Možná později';
	@override String get sendFeedback => 'Poslat zpětnou vazbu';
	@override String get noThanks => 'Ne, díky';
	@override String get aboutUsDescription => 'Vytvořeno s péčí malým týmem. Zaměřujeme se na soukromí, jednoduchost a pomoc s lepšími stravovacími návyky.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Zajímá vás, kdo stojí za ${appLabel}? Podívejte se ';
	@override String get aboutUsLinkLabel => 'O nás';
	@override String get thankYouMessage => 'Děkujeme! Zeptáme se vás znovu jindy.';
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
	@override String get description => 'Pohlaví nám pomáhá přesně vypočítat váš bazální metabolismus (BMR).';
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
	@override String get currentTitle => 'Jaká je vaše aktuální hmotnost?';
	@override String get currentDescription => 'Vaše aktuální hmotnost je zásadní pro personalizaci denních cílů.';
	@override String get targetTitle => 'Jaká je vaše cílová hmotnost?';
	@override String get targetDescription => 'Nastavení cílové hmotnosti nám pomůže sestavit dlouhodobý plán.';
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
	@override String get description => 'Věk nám pomáhá přesně vypočítat denní potřebu kalorií.';
	@override String get next => 'Další';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleCs implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podváha';
	@override String get healthy => 'Zdravé';
	@override String get overweight => 'Nadváha';
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
	@override String get description => 'Vyberte cíl, který nejlépe vystihuje, čeho chcete dosáhnout';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelCs implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak jste aktivní?';
	@override String get description => 'To nám pomůže přesněji vypočítat vaši denní potřebu kalorií';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectCs implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Propojte se s Health Connect';
	@override String get description => 'Synchronizujte svá zdravotní data pro lepší přehledy a automatické sledování kalorií';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingCs automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingCs._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsCs progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsCs._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationCs seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationCs._(_root);
	@override String get connected => 'Health Connect propojeno';
	@override String get notConnected => 'Health Connect není propojen';
	@override String get setup => 'Nastavit Health Connect';
	@override String get skipForNow => 'Přeskočit nyní';
	@override String get statusConnected => 'Health Connect je propojen.';
	@override String get statusSuccess => 'Health Connect byl úspěšně propojen!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Oprávnění odepřeno. Povolte prosím oprávnění Health Connect v nastavení telefonu pro ${appLabel}.';
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
	@override String get title => 'Vaše AI shrnutí';
	@override String get logMore => 'Zaznamenávejte více jídel v příštích dnech, aby vám AI poskytla personalizované postřehy.';
	@override String get loading => 'Načítám souhrn...';
	@override String mealCount({required Object count}) => '${count} zaznamenaných jídel';
	@override String macroBalanceScore({required Object score}) => 'Skóre vyváženosti ${score}';
	@override String get topFoods => 'Nejčastější potraviny';
	@override String get trendUp => 'Kalorie rostou';
	@override String get trendDown => 'Kalorie klesají';
	@override String get trendSteady => 'Kalorie stabilní';
	@override String generatedAt({required Object time}) => 'Aktualizováno ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalCs implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nastavte svůj denní cíl';
	@override String get titleSet => 'Váš denní cíl';
	@override String get description => 'Připraveni začít svou cestu ke zdraví? Nastavte si níže denní cílový příjem kalorií a vydejte se na cestu.';
	@override String get descriptionSet => 'Kompas je nastaven! Toto je váš denní kalorický cíl.';
	@override String get yourGoal => 'Váš cíl';
	@override String get goal => 'Cíl';
	@override String get dailyCalories => 'Denní kalorie (kcal)';
	@override String get setGoal => 'Nastavit cíl';
	@override String get intake => 'Příjem';
	@override String get burned => 'Spáleno';
	@override String get weightImpact => 'Dopad na váhu';
	@override String get estLoss => 'Odhad. úbytek';
	@override String get estGain => 'Odhad. přírůstek';
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
	@override String get grams => 'gramy';
	@override String get chartAccessibilityLabel => 'Graf makroživin';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressCs implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dnešní rozdělení makroživin';
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
	@override String peakHour({required Object hour}) => 'Vrchol: ${hour}:00';
	@override String get noHistoryYet => 'Zatím žádná historie';
	@override String get startLogging => 'Začněte zaznamenávat jídla, abyste zde viděli\n7denní trendy makroživin';
}

// Path: home.mealLog
class _TranslationsHomeMealLogCs implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zaznamenaná jídla';
	@override String get emptyMessage => 'Vyfoťte poslední jídlo a zaznamenejte ho sem.';
	@override String get noMealsToday => 'Dnes žádná zaznamenaná jídla';
	@override String get seeAllMeals => 'Zobrazit všechna jídla';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionCs implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rychlé přidání s AI';
	@override String get description => 'Popište své jídlo a AI se postará o zbytek.';
	@override String get hint => 'např. K snídani jsem měl velkou misku ovesné kaše s nakrájeným banánem a odměrkou syrovátkového proteinu ...';
	@override String get analyzeMeal => 'Analyzovat jídlo';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsCs implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oblíbená jídla';
	@override String get description => 'Rychle přidejte některé z vašich oblíbených jídel.';
	@override String get noFavorites => 'Zatím žádná oblíbená jídla.';
	@override String get addFavoriteHint => 'Klikněte na hvězdičku u jídla pro označení jako oblíbené.';
	@override String get seeAll => 'Zobrazit vše';
	@override String get add => 'Přidat';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapCs implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vyfoťte a zaznamenejte jídlo';
	@override String get description => 'Použijte fotoaparát k vyfocení jídla pro AI analýzu.';
	@override String get openCamera => 'Otevřít fotoaparát';
	@override String get gallery => 'Galerie';
	@override String get compressingPhoto => 'Optimalizuji fotku…';
	@override String get uploadingPhoto => 'Nahrávám fotku…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthCs implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchronizovat s Health Connect';
	@override String get description => 'Synchronizujte svá nutriční data s Health Connect';
	@override String get install => 'Nainstalovat';
	@override String get connect => 'Propojit';
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
	@override String get message => 'Jste si jistí, že chcete smazat tento záznam o jídle?';
	@override String get cancel => 'Zrušit';
	@override String get delete => 'Smazat';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowCs implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Otázka ${current} z ${total}';
	@override String get noQuestionsAvailable => 'Žádné otázky nejsou k dispozici';
	@override String get next => 'Další';
	@override String get continueLabel => 'Pokračovat';
}

// Path: meal.analysis
class _TranslationsMealAnalysisCs implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyzuji vaše jídlo';
	@override String get stepStarted => 'Začínám…';
	@override String get stepDecomposition => 'Porozumění jídlu…';
	@override String get stepIngredients => 'Párování ingrediencí s nutričními daty…';
	@override String get stepUncertainty => 'Kontroluji jistotu…';
	@override String get stepMealTypeQuestion => 'Skoro hotovo…';
	@override String get stepResult => 'Dokončuji výsledek…';
	@override String get stepError => 'Něco se pokazilo';
	@override String get stepDefault => 'Analyzuji vaše jídlo…';
	@override String get progressUnderstand => 'Porozumění jídlu';
	@override String get progressMatch => 'Vyhledávání nutričních údajů ingrediencí';
	@override String get progressCheck => 'Kontrola porcí a jistoty';
	@override String get progressMealType => 'Výběr typu jídla';
	@override String get progressFinish => 'Výpočet kalorií a makroživin';
	@override String get detectedIngredientHeading => 'Ingredience, které zaznamenáváme';
	@override String ingredientsOverflow({required Object count}) => '${count} dalších';
	@override String ingredientsLine({required Object count}) => 'Zjištěno ${count} ingrediencí';
	@override String get ingredientsPending => 'Skenuji ingredience…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Pravidelnost je důležitější než dokonalost — pravidelné záznamy odhalí podstatné vzorce.';
	@override String get offlineTip1 => 'Tip: Pro fotky pomáhá přirozené světlo a pohled shora pro přesnost porcí.';
	@override String get offlineTip2 => 'Tip: Uveďte nápoje, omáčky a olej používaný při vaření — přidávají kalorie, na které se často zapomíná.';
	@override String get offlineTip3 => 'Tip: Krátká poznámka o porci (1 miska, velká káva) výrazně zpřesní odhady.';
	@override String get offlineTip4 => 'Tip: Záznam po jídle stále buduje návyk; dokonalost není nutná.';
	@override String get offlineTip5 => 'Tip: Uveďte způsob přípravy, pokud zásadně mění kalorickou hodnotu (smažené vs pečené).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackCs implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Co vypadá špatně?';
	@override String get subtitle => 'Označte jednu nebo více chyb a pomozte nám zlepšit analýzu.';
	@override String get tellUsMore => 'Řekněte více';
	@override String get describeIncorrect => 'Popište, co bylo nepřesné';
	@override String get submit => 'Odeslat';
	@override String get issueFoodIdentification => 'Identifikace jídla';
	@override String get issuePortionSize => 'Velikost porce';
	@override String get issueCalorieDistribution => 'Rozložení kalorií';
	@override String get issueMacrosWrong => 'Makroživiny jsou špatně';
	@override String get issueMissingItems => 'Chybějící položky';
	@override String get issueExtraItems => 'Nadbytečné položky';
	@override String get issueOther => 'Jiné';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsCs implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Nedávné';
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
	@override String get goalsAndActivity => 'CÍLE & AKTIVITA';
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
	@override String get calPerDay => 'cal/den';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsCs implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'OSOBNÍ INFORMACE';
	@override String get physicalMeasurements => 'TĚLESNÉ ROZMĚRY';
	@override String get goalsAndActivity => 'CÍLE & AKTIVITA';
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
	@override String get notifications => 'UPOZORNĚNÍ';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'PODPORA & PRÁVNÍ';
	@override String get about => 'O APLIKACI';
	@override String get dangerZone => 'RIZIKOVÁ ZÓNA';
	@override String get developer => 'VÝVOJÁŘ';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileCs implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Upravit profil';
	@override String get subtitle => 'Aktualizujte své osobní informace';
}

// Path: settings.language
class _TranslationsSettingsLanguageCs implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jazyk';
	@override String get subtitle => 'Vyberte preferovaný jazyk';
	@override String get searchHint => 'Hledat jazyky...';
	@override String get noResults => 'Nebyly nalezeny výsledky';
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
	@override String get title => 'Připomenutí jídel';
	@override String get subtitle => 'Zůstaňte na cestě díky včasným upozorněním';
}

// Path: settings.theme
class _TranslationsSettingsThemeCs implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Téma';
	@override String get light => 'Světlé';
	@override String get dark => 'Tmavé';
	@override String get system => 'Systémové';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackCs implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Poslat zpětnou vazbu';
	@override String subtitle({required Object appLabel}) => 'Pomozte nám vylepšit ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} - zpětná vazba k aplikaci';
	@override String get emailBodyPrefix => 'Napište prosím svou zpětnou vazbu níže:';
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
	@override String get title => 'Export historie jídel';
	@override String get subtitle => 'Sdílejte CSV se zaznamenanými jídly';
	@override String get shareText => 'Export historie jídel Calorify';
	@override String failed({required Object error}) => 'Nepodařilo se exportovat historii jídel: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataCs implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vymazat všechna data';
	@override String get subtitle => 'Trvale smazat všechny vaše informace';
	@override String get confirmationTitle => 'Vymazat všechna data?';
	@override String get confirmationMessage => 'Tuto akci nelze vrátit zpět. Všechna vaše zaznamenaná jídla, oblíbené položky a nastavení profilu budou trvale smazány.';
	@override String get cancel => 'Zrušit';
	@override String get clearEverything => 'Vymazat vše';
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
	@override String get subtitle => 'Prohlížet a spravovat oprávnění';
	@override late final _TranslationsSettingsHealthConnectUnavailableCs unavailable = _TranslationsSettingsHealthConnectUnavailableCs._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsCs permissions = _TranslationsSettingsHealthConnectPermissionsCs._(_root);
	@override String get managePermissions => 'Spravovat oprávnění';
	@override String get openSettings => 'Otevřít nastavení Health Connect';
	@override String get requestPermissions => 'Požádat o oprávnění';
	@override String get permissionRequestCancelledOrFailed => 'Požadavek na oprávnění byl zrušen nebo selhal. Zkuste to prosím znovu nebo udělte oprávnění ručně v nastavení Health Connect.';
	@override String get permissionRequestFailed => 'Nelze požádat o oprávnění. Zkuste to prosím znovu nebo udělte oprávnění ručně v nastavení Health Connect.';
	@override String get requestingPermissions => 'Žádám o oprávnění...';
}

// Path: settings.about
class _TranslationsSettingsAboutCs implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'O aplikaci';
	@override String get tagline => 'Rychlé, bezplatné a soukromí na prvním místě — povědomí o kaloriích';
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
	@override String get body => 'Nezapomeňte zaznamenat snídani';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchCs implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čas na oběd! 🥗';
	@override String get body => 'Je čas zaznamenat oběd';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerCs implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čas na večeři! 🍽️';
	@override String get body => 'Nezapomeňte zaznamenat večeři';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackCs implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čas na svačinu! 🍎';
	@override String get body => 'Čas na zdravou svačinu';
}

// Path: notifications.test
class _TranslationsNotificationsTestCs implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testovací upozornění';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapCs implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} poskytuje odhadnuté nutriční informace. Přesnost závisí na vašem zadání a na variacích potravin. Používejte je jako orientaci, nikoli jako definitivní zdroj. Pro osobní dietní poradenství se poraďte s odborníkem.';
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
	@override String get title => 'Odhad váhové změny';
	@override String get description => 'Projekce změny hmotnosti je teoretický odhad založený na jednoduchém modelu kalorický příjem vs. výdej. Slouží pouze jako motivační vodítko, nikoli jako předpověď vaší skutečné váhy.';
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
	@override String get description => 'Tyto metriky vám pomáhají porozumět energetickým potřebám těla a vést vaše výživové cíle.';
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
	@override String get description => 'Pokud nejsou dostupná data z Health Connect, odhadujeme dnešní spálené kalorie na základě vašeho BMR a úrovně aktivity (TDEE), škálované podle části dne, která již uplynula.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedCs howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedCs._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceCs professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceCs._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionCs implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chytré rozpoznávání jídla';
	@override String get description => 'Vyfoťte jídlo a nechte AI identifikovat váš pokrm';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisCs implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI analýza';
	@override String get description => 'Získejte okamžité nutriční informace z vašich popisů';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationCs implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrace se Health Connect';
	@override String get description => 'Propojte se s Health Connect pro lepší přehledy';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesCs implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podváha';
	@override String get healthyWeight => 'Zdravá váha';
	@override String get overweight => 'Nadváha';
	@override String get obese => 'Obezita';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesCs implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Pomůžeme vám vytvořit zdravý plán k dosažení vyvážené hmotnosti s nutričně bohatými jídly.';
	@override String get healthy => 'Skvěle! Jste ve zdravém rozmezí. Pomůžeme vám udržet vitalitu a energetickou hladinu.';
	@override String overweight({required Object appLabel}) => '${appLabel} zjednoduší vaši cestu díky sledování poháněnému AI, aby vám pomohl pohodlně dosáhnout cíle.';
	@override String get obese => 'Jsme tu, abychom vás podpořili osobním vedením a udržitelnými strategiemi pro vaše zdravotní cíle.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingCs implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatické sledování kalorií';
	@override String get description => 'Sledujte spálené kalorie z vašich fitness aplikací';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsCs implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Přehled pokroku';
	@override String get description => 'Získejte podrobné poznatky o trendech vašeho zdraví';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationCs implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bezproblémová integrace';
	@override String get description => 'Synchronizujte data z vašich oblíbených zdravotních aplikací';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessCs implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nejste na to sami';
	@override String get genericMessage => 'Výzkumy ukazují, že konzistentní sledování je nejlepším ukazatelem dlouhodobého úspěchu.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Pro ${age}letého ${gender}, který chce ${goal}, je konzistentní sledování nejlepším ukazatelem úspěchu.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} to udělá 10× snazší než ruční zadávání.';
	@override String get getStartedTitle => 'Jste připraveni začít?';
	@override String get tipPhoto => 'Vyfoťte jídlo pro okamžitou analýzu';
	@override String get tipConsistency => 'Zaznamenávejte průběžně, abyste viděli významný pokrok';
	@override String get tipProgress => 'Denně sledujte pokrok, abyste zůstali motivovaní';
	@override String get button => 'Pojďme na to';
	@override String get defaultGender => 'jedinec';
	@override String get defaultGoal => 'zdravější já';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileCs implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Váš zdravotní profil';
	@override String bmiDescription({required Object bmi}) => 'Na základě vašich údajů je váš BMI ${bmi}.';
	@override String get finalizeDescription => 'Dokončeme váš profil pro přizpůsobení zážitku.';
	@override String get goalGain => 'přibrat';
	@override String get goalLose => 'zhubnout';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Abyste dosáhli cíle, budete muset ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Dosáhli jste cílové hmotnosti! Pomůžeme vám ji udržet.';
	@override String get button => 'Pojďme na to';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleCs implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Výborný začátek!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Udělali jste první krok k ${goalText}. Vzhledem k tomu, že jste ${activityText}, ${appLabel} upraví vaše cíle tak, aby odpovídaly vašemu životnímu stylu.';
	@override String get personalizedTargets => 'Personalizované kalorické cíle';
	@override String get aiMealDetection => 'Detekce jídel poháněná AI';
	@override String get macroBreakdowns => 'Podrobné rozbory makroživin';
	@override String get button => 'Pojďme na to';
	@override String get defaultGoal => 'vaše cíle';
	@override String get defaultActivity => 'aktivní';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightCs implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Zhubnout';
	@override String get description => 'Vytvořit kalorický deficit pro hubnutí';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightCs implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Udržet váhu';
	@override String get description => 'Udržovat současnou hmotnost';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightCs implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Přibrat';
	@override String get description => 'Vytvořit kalorický přebytek pro přibrání';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryCs implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentární';
	@override String get description => 'Málo nebo žádné cvičení';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveCs implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lehce aktivní';
	@override String get description => 'Lehké cvičení 1–3× týdně';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveCs implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Středně aktivní';
	@override String get description => 'Středně intenzivní cvičení 3–5× týdně';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveCs implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Velmi aktivní';
	@override String get description => 'Intenzivní cvičení 6–7× týdně';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveCs implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrémně aktivní';
	@override String get description => 'Velmi náročné cvičení nebo fyzická práce';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableCs implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect není k dispozici';
	@override String get description => 'Health Connect není na tomto zařízení dostupný. Nainstalujte prosím Health Connect z Play Store (Android 9+) nebo aktualizujte na Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsCs implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oprávnění';
	@override String get description => 'Následující oprávnění jsou požadována pro integraci s Health Connect:';
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
	@override String content({required Object appLabel}) => '${appLabel} vznikl z jednoduché frustrace: většina aplikací pro sledování kalorií je buď příliš složitá, vyžaduje neustálé ruční zadávání, účtuje vysoké předplatné nebo kompromituje soukromí.\n\nJako samostatný vývojář jsem chtěl vytvořit něco jednoduššího a spravedlivějšího — aplikaci, která využívá AI ke zmenšení námahy, zůstává rychlá a zdarma a zachází s vašimi zdravotními daty s respektem.\n\n${appLabel} je aplikace, kterou bych si přál, aby existovala: žádné účty, žádné sledování, žádné reklamy — jen jasné, praktické postřehy a vaše zdravotní cíle.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyCs implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vaše soukromí je důležité';
	@override String get description => 'Soukromí není dodatek — je to princip návrhu. Co to v praxi znamená:';
	@override String get noAccounts => 'Není potřeba účet\nPoužijte aplikaci okamžitě. Žádné registrace, žádné identity.';
	@override String noTracking({required Object appLabel}) => 'Žádné sledování chování\n${appLabel} nesleduje vaši aktivitu, netvoří uživatelské profily ani vás nesleduje napříč aplikacemi či weby.';
	@override String noAds({required Object appLabel}) => 'Bez reklam záměrně\n${appLabel} je navržen tak, aby fungoval bez reklam a monetizace založené na datech.';
	@override String get noDataSelling => 'Žádný prodej dat\nVaše zdravotní údaje nejsou nikdy prodávány ani sdíleny s třetími stranami.';
	@override String get localStorage => 'Primárně lokální úložiště\nVaše data zůstávají v zařízení.';
	@override String get privacyPolicy => 'Zásady ochrany osobních údajů';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperCs implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vytvořeno jedním vývojářem';
	@override String description({required Object appLabel}) => '${appLabel} je vytvořen a udržován jediným vývojářem, který se zaměřuje na klidný software pro zdraví, respektující soukromí.\n\nZpětnou vazbu čte osobně a pomáhá směrovat další vývoj aplikace.';
	@override String get website => 'Web';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackCs implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Líbí se vám ${appLabel}?';
	@override String description({required Object appLabel}) => 'Vaše zpětná vazba pomáhá zlepšit ${appLabel} pro všechny.';
	@override String get rateApp => 'Ohodnotit v Play Store';
	@override String get sendFeedback => 'Poslat zpětnou vazbu';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeCs implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Velikost porce';
	@override String get description => 'Přesnost odhadů silně závisí na správném odhadu velikosti porce.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsCs implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Způsoby přípravy';
	@override String description({required Object appLabel}) => 'Způsoby vaření mohou výrazně měnit nutriční hodnotu jídla. Odhady ${appLabel} nemusí tyto rozdíly vždy zohlednit.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsCs implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredience';
	@override String get description => 'Složité pokrmy s mnoha skrytými ingrediencemi mohou vést k méně přesným odhadům.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsCs implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Omezení databáze';
	@override String description({required Object appLabel}) => 'Databáze potravin v ${appLabel} je rozsáhlá, ale nemusí obsahovat každou potravinu nebo variantu.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyCs implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Přesnost odhadů kalorií';
	@override String get description => 'Tento odhad je přesný jen tolik, kolik jsou přesné vaše záznamy o příjmu a výdeji kalorií. Nepřesné záznamy povedou k nepřesné projekci.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsCs implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologické faktory';
	@override String description({required Object appLabel}) => 'Skutečný úbytek nebo nárůst hmotnosti ovlivňují metabolismus, hormony, spánek, stres, hydratace a další individuální faktory, které ${appLabel} neměří.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightCs implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Voda v těle a výkyvy';
	@override String get description => 'Běžná denní hmotnost se může výrazně lišit kvůli zadržování vody, trávení a načasování. Odhad tyto denní výkyvy nezohledňuje.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceCs implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odborné poradenství';
	@override String get description => 'Nepoužívejte tento odhad k lékařským rozhodnutím. Vždy se poraďte se zdravotnickým odborníkem nebo registrovaným dietologem pro personalizovanou péči.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrCs implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Bazální metabolický výdej (BMR) je počet kalorií, které vaše tělo spálí v klidu pro udržení základních funkcí, jako je dýchání a krevní oběh. BMR závisí na věku, pohlaví, výšce a hmotnosti. Vyšší BMR obvykle znamená, že tělo spaluje více kalorií v klidu, často kvůli vyššímu podílu svalové hmoty, nižšímu věku nebo tomu, že jde o muže. Nižší BMR obvykle naznačuje méně svalové hmoty, vyšší věk nebo že jde o ženu.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeCs implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Celkový denní energetický výdej (TDEE) je celkový počet kalorií, které spálíte za den, včetně BMR a kalorií spálených při fyzické aktivitě a běžném pohybu. TDEE závisí na vašem BMR a úrovni aktivity. Vyšší TDEE znamená, že celkově spálíte více kalorií, obvykle díky větší aktivitě nebo vyššímu BMR. Nižší TDEE naznačuje méně denní aktivity nebo nižší BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalCs implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Denní cíl';
	@override String get description => 'Denní cíl je doporučený denní příjem kalorií založený na vašem TDEE a cíli hmotnosti. Při hubnutí konzumujete méně kalorií než váš TDEE. Pro udržení váhy se příjem vyrovná TDEE. Při nabírání váhy konzumujete více kalorií než TDEE. Pomáhá to dosáhnout požadované změny váhy zdravým tempem.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedCs implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak je odhad vypočítán';
	@override String get description => 'Vypočítáme váš TDEE (na základě profilu) a vynásobíme ho zlomkem uběhlého dne (hodiny + minuty) / 24, abychom odhadli dosud spálené kalorie.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceCs implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odborné poradenství';
	@override String get description => 'Nepoužívejte tento odhad pro lékařská rozhodnutí. Vždy se poraďte se zdravotnickým odborníkem nebo registrovaným dietologem pro personalizovanou péči.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedCs implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Číst celkový počet spálených kalorií';
	@override String get description => 'Umožňuje aplikaci číst celkové spálené kalorie z Health Connect.';
	@override String get usage => 'Toto oprávnění se používá k zobrazení denního výdeje kalorií v aplikaci, což pomáhá pochopit váš celkový energetický výdej během dne.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadCs implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Číst nutriční údaje';
	@override String get description => 'Umožňuje aplikaci číst nutriční data z Health Connect.';
	@override String get usage => 'Toto oprávnění umožňuje aplikaci číst nutriční informace, které mohly být zaznamenány jinými aplikacemi připojenými k Health Connect, a poskytuje komplexní pohled na vaši výživu.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteCs implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zapisovat nutriční údaje';
	@override String get description => 'Umožňuje aplikaci zapisovat nutriční data do Health Connect.';
	@override String get usage => 'Toto oprávnění umožňuje aplikaci synchronizovat vaše zaznamenaná jídla s Health Connect, takže vaše nutriční data budou dostupná dalším zdravotním a fitness aplikacím, které používáte.';
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
			'errors.rateLimitExceeded' => 'Odeslali jste příliš mnoho požadavků. Počkejte prosím chvíli a zkuste to znovu.',
			'errors.networkError' => 'Síťová chyba. Zkontrolujte prosím připojení k internetu.',
			'errors.unknownError' => 'Něco se pokazilo. Zkuste to prosím později.',
			'errors.loadingProfileData' => 'Chyba při načítání dat profilu',
			'errors.somethingWentWrong' => 'Něco se pokazilo.',
			'errors.retry' => 'Zkusit znovu',
			'onboarding.welcome' => ({required Object appLabel}) => 'Vítejte v ${appLabel}',
			'onboarding.subtitle' => 'Váš osobní výživový průvodce poháněný AI',
			'onboarding.getStarted' => 'Začít',
			'onboarding.features.foodRecognition.title' => 'Chytré rozpoznávání jídla',
			'onboarding.features.foodRecognition.description' => 'Vyfoťte jídlo a nechte AI identifikovat váš pokrm',
			'onboarding.features.aiAnalysis.title' => 'AI analýza',
			'onboarding.features.aiAnalysis.description' => 'Získejte okamžité nutriční informace z vašich popisů',
			'onboarding.features.healthIntegration.title' => 'Integrace se Health Connect',
			'onboarding.features.healthIntegration.description' => 'Propojte se s Health Connect pro lepší přehledy',
			'onboarding.gender.title' => 'Jaké je vaše pohlaví?',
			'onboarding.gender.description' => 'Pohlaví nám pomáhá přesně vypočítat váš bazální metabolismus (BMR).',
			'onboarding.gender.next' => 'Další',
			'onboarding.height.title' => 'Jaká je vaše výška?',
			'onboarding.height.description' => 'Vaše výška nám pomůže přesně vypočítat BMI a energetické potřeby.',
			'onboarding.height.metric' => 'Metrické',
			'onboarding.height.imperial' => 'Imperiální',
			'onboarding.height.next' => 'Další',
			'onboarding.weight.currentTitle' => 'Jaká je vaše aktuální hmotnost?',
			'onboarding.weight.currentDescription' => 'Vaše aktuální hmotnost je zásadní pro personalizaci denních cílů.',
			'onboarding.weight.targetTitle' => 'Jaká je vaše cílová hmotnost?',
			'onboarding.weight.targetDescription' => 'Nastavení cílové hmotnosti nám pomůže sestavit dlouhodobý plán.',
			'onboarding.weight.metric' => 'Metrické',
			'onboarding.weight.imperial' => 'Imperiální',
			'onboarding.weight.next' => 'Další',
			'onboarding.age.title' => 'Kdy máte narozeniny?',
			'onboarding.age.description' => 'Věk nám pomáhá přesně vypočítat denní potřebu kalorií.',
			'onboarding.age.next' => 'Další',
			'onboarding.bmiScale.underweight' => 'Podváha',
			'onboarding.bmiScale.healthy' => 'Zdravé',
			'onboarding.bmiScale.overweight' => 'Nadváha',
			'onboarding.bmiScale.obese' => 'Obezita',
			'onboarding.bmiScale.categories.underweight' => 'Podváha',
			'onboarding.bmiScale.categories.healthyWeight' => 'Zdravá váha',
			'onboarding.bmiScale.categories.overweight' => 'Nadváha',
			'onboarding.bmiScale.categories.obese' => 'Obezita',
			'onboarding.bmiScale.messages.underweight' => 'Pomůžeme vám vytvořit zdravý plán k dosažení vyvážené hmotnosti s nutričně bohatými jídly.',
			'onboarding.bmiScale.messages.healthy' => 'Skvěle! Jste ve zdravém rozmezí. Pomůžeme vám udržet vitalitu a energetickou hladinu.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} zjednoduší vaši cestu díky sledování poháněnému AI, aby vám pomohl pohodlně dosáhnout cíle.',
			'onboarding.bmiScale.messages.obese' => 'Jsme tu, abychom vás podpořili osobním vedením a udržitelnými strategiemi pro vaše zdravotní cíle.',
			'onboarding.weightGoal.title' => 'Jaký je váš cíl?',
			'onboarding.weightGoal.description' => 'Vyberte cíl, který nejlépe vystihuje, čeho chcete dosáhnout',
			'onboarding.activityLevel.title' => 'Jak jste aktivní?',
			'onboarding.activityLevel.description' => 'To nám pomůže přesněji vypočítat vaši denní potřebu kalorií',
			'onboarding.healthConnect.title' => 'Propojte se s Health Connect',
			'onboarding.healthConnect.description' => 'Synchronizujte svá zdravotní data pro lepší přehledy a automatické sledování kalorií',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatické sledování kalorií',
			'onboarding.healthConnect.automaticTracking.description' => 'Sledujte spálené kalorie z vašich fitness aplikací',
			'onboarding.healthConnect.progressInsights.title' => 'Přehled pokroku',
			'onboarding.healthConnect.progressInsights.description' => 'Získejte podrobné poznatky o trendech vašeho zdraví',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Bezproblémová integrace',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronizujte data z vašich oblíbených zdravotních aplikací',
			'onboarding.healthConnect.connected' => 'Health Connect propojeno',
			'onboarding.healthConnect.notConnected' => 'Health Connect není propojen',
			'onboarding.healthConnect.setup' => 'Nastavit Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Přeskočit nyní',
			'onboarding.healthConnect.statusConnected' => 'Health Connect je propojen.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect byl úspěšně propojen!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Oprávnění odepřeno. Povolte prosím oprávnění Health Connect v nastavení telefonu pro ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Chyba při nastavování Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nejste na to sami',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Výzkumy ukazují, že konzistentní sledování je nejlepším ukazatelem dlouhodobého úspěchu.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Pro ${age}letého ${gender}, který chce ${goal}, je konzistentní sledování nejlepším ukazatelem úspěchu.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} to udělá 10× snazší než ruční zadávání.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Jste připraveni začít?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Vyfoťte jídlo pro okamžitou analýzu',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Zaznamenávejte průběžně, abyste viděli významný pokrok',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Denně sledujte pokrok, abyste zůstali motivovaní',
			'onboarding.reinforcement.trackingSuccess.button' => 'Pojďme na to',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'jedinec',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'zdravější já',
			'onboarding.reinforcement.healthProfile.title' => 'Váš zdravotní profil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Na základě vašich údajů je váš BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Dokončeme váš profil pro přizpůsobení zážitku.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'přibrat',
			'onboarding.reinforcement.healthProfile.goalLose' => 'zhubnout',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Abyste dosáhli cíle, budete muset ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Dosáhli jste cílové hmotnosti! Pomůžeme vám ji udržet.',
			'onboarding.reinforcement.healthProfile.button' => 'Pojďme na to',
			'onboarding.reinforcement.goalLifestyle.title' => 'Výborný začátek!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Udělali jste první krok k ${goalText}. Vzhledem k tomu, že jste ${activityText}, ${appLabel} upraví vaše cíle tak, aby odpovídaly vašemu životnímu stylu.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personalizované kalorické cíle',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Detekce jídel poháněná AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Podrobné rozbory makroživin',
			'onboarding.reinforcement.goalLifestyle.button' => 'Pojďme na to',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'vaše cíle',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktivní',
			'tabs.dashboard' => 'Přehled',
			'tabs.history' => 'Historie',
			'home.aiSummary.title' => 'Vaše AI shrnutí',
			'home.aiSummary.logMore' => 'Zaznamenávejte více jídel v příštích dnech, aby vám AI poskytla personalizované postřehy.',
			'home.aiSummary.loading' => 'Načítám souhrn...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} zaznamenaných jídel',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Skóre vyváženosti ${score}',
			'home.aiSummary.topFoods' => 'Nejčastější potraviny',
			'home.aiSummary.trendUp' => 'Kalorie rostou',
			'home.aiSummary.trendDown' => 'Kalorie klesají',
			'home.aiSummary.trendSteady' => 'Kalorie stabilní',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Aktualizováno ${time}',
			'home.dailyGoal.title' => 'Nastavte svůj denní cíl',
			'home.dailyGoal.titleSet' => 'Váš denní cíl',
			'home.dailyGoal.description' => 'Připraveni začít svou cestu ke zdraví? Nastavte si níže denní cílový příjem kalorií a vydejte se na cestu.',
			'home.dailyGoal.descriptionSet' => 'Kompas je nastaven! Toto je váš denní kalorický cíl.',
			'home.dailyGoal.yourGoal' => 'Váš cíl',
			'home.dailyGoal.goal' => 'Cíl',
			'home.dailyGoal.dailyCalories' => 'Denní kalorie (kcal)',
			'home.dailyGoal.setGoal' => 'Nastavit cíl',
			'home.dailyGoal.intake' => 'Příjem',
			'home.dailyGoal.burned' => 'Spáleno',
			'home.dailyGoal.weightImpact' => 'Dopad na váhu',
			'home.dailyGoal.estLoss' => 'Odhad. úbytek',
			'home.dailyGoal.estGain' => 'Odhad. přírůstek',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Denní souhrn',
			'home.dailySummary.calories' => 'Kalorie',
			'home.dailySummary.carbs' => 'Sacharidy',
			'home.dailySummary.protein' => 'Bílkoviny',
			'home.dailySummary.fat' => 'Tuky',
			'home.dailySummary.fiber' => 'Vláknina',
			'home.dailySummary.grams' => 'gramy',
			'home.dailySummary.chartAccessibilityLabel' => 'Graf makroživin',
			'home.intakeProgress.title' => 'Dnešní rozdělení makroživin',
			'home.intakeProgress.target' => 'Cíl',
			'home.intakeProgress.current' => 'Aktuální',
			'home.intakeHistory.title' => '7denní historie makroživin',
			'home.intakeHistory.trendTitle' => 'Dnešní trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Vrchol: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Zatím žádná historie',
			'home.intakeHistory.startLogging' => 'Začněte zaznamenávat jídla, abyste zde viděli\n7denní trendy makroživin',
			'home.mealLog.title' => 'Zaznamenaná jídla',
			'home.mealLog.emptyMessage' => 'Vyfoťte poslední jídlo a zaznamenejte ho sem.',
			'home.mealLog.noMealsToday' => 'Dnes žádná zaznamenaná jídla',
			'home.mealLog.seeAllMeals' => 'Zobrazit všechna jídla',
			'home.mealDescription.title' => 'Rychlé přidání s AI',
			'home.mealDescription.description' => 'Popište své jídlo a AI se postará o zbytek.',
			'home.mealDescription.hint' => 'např. K snídani jsem měl velkou misku ovesné kaše s nakrájeným banánem a odměrkou syrovátkového proteinu ...',
			'home.mealDescription.analyzeMeal' => 'Analyzovat jídlo',
			'home.favoriteMeals.title' => 'Oblíbená jídla',
			'home.favoriteMeals.description' => 'Rychle přidejte některé z vašich oblíbených jídel.',
			'home.favoriteMeals.noFavorites' => 'Zatím žádná oblíbená jídla.',
			'home.favoriteMeals.addFavoriteHint' => 'Klikněte na hvězdičku u jídla pro označení jako oblíbené.',
			'home.favoriteMeals.seeAll' => 'Zobrazit vše',
			'home.favoriteMeals.add' => 'Přidat',
			'home.mealSnap.title' => 'Vyfoťte a zaznamenejte jídlo',
			'home.mealSnap.description' => 'Použijte fotoaparát k vyfocení jídla pro AI analýzu.',
			'home.mealSnap.openCamera' => 'Otevřít fotoaparát',
			'home.mealSnap.gallery' => 'Galerie',
			'home.mealSnap.compressingPhoto' => 'Optimalizuji fotku…',
			'home.mealSnap.uploadingPhoto' => 'Nahrávám fotku…',
			'home.connectHealth.title' => 'Synchronizovat s Health Connect',
			'home.connectHealth.description' => 'Synchronizujte svá nutriční data s Health Connect',
			'home.connectHealth.install' => 'Nainstalovat',
			'home.connectHealth.connect' => 'Propojit',
			'history.noMeals' => 'Žádná zaznamenaná jídla',
			'history.emptyMessage' => 'Vyfoťte poslední jídlo a zaznamenejte ho sem.',
			'history.today' => 'Dnes',
			'history.yesterday' => 'Včera',
			'meal.ohNo' => 'Jejda!',
			'meal.delete' => 'Smazat',
			'meal.editMeal' => 'Upravit jídlo',
			'meal.addMeal' => 'Přidat jídlo',
			'meal.saveMeal' => 'Uložit jídlo',
			'meal.save' => 'Uložit',
			'meal.mealName' => 'Název jídla',
			'meal.mealNameHint' => 'např. Míchaná vejce s toustem',
			'meal.mealQuantity' => 'Množství jídla',
			'meal.mealQuantityHint' => 'např. 1 miska, 2 plátky',
			'meal.timeOfMeal' => 'Čas jídla',
			'meal.timeOfMealHint' => 'Vyberte čas, kdy jste jídlo měli',
			'meal.mealType' => 'Typ jídla',
			'meal.nutrition.calories' => 'Kalorie',
			'meal.nutrition.carbs' => 'Sacharidy (g)',
			'meal.nutrition.protein' => 'Bílkoviny (g)',
			'meal.nutrition.fat' => 'Tuky (g)',
			'meal.nutrition.fiber' => 'Vláknina (g)',
			'meal.deleteConfirmation.title' => 'Smazat jídlo',
			'meal.deleteConfirmation.message' => 'Jste si jistí, že chcete smazat tento záznam o jídle?',
			'meal.deleteConfirmation.cancel' => 'Zrušit',
			'meal.deleteConfirmation.delete' => 'Smazat',
			'meal.addedToLog' => 'Jídlo přidáno do záznamu!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nepodařilo se přidat jídlo: ${error}',
			'meal.savedSuccessfully' => 'Jídlo úspěšně přidáno!',
			'meal.updatedSuccessfully' => 'Jídlo úspěšně upraveno!',
			'meal.errorSaving' => ({required Object error}) => 'Chyba při ukládání jídla: ${error}',
			'meal.removedFromFavorites' => 'Odebráno z oblíbených!',
			'meal.savedAsFavorite' => 'Jídlo uloženo mezi oblíbené!',
			'meal.unfavorite' => 'Odebrat z oblíbených',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nepodařilo se aktualizovat oblíbené: ${error}',
			'meal.feedbackThanks' => 'Díky za zpětnou vazbu!',
			'meal.reanalysisUpdated' => 'Analýza jídla byla aktualizována podle vaší zpětné vazby.',
			'meal.failedToProcess' => ({required Object error}) => 'Zpracování selhalo: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Zpracování obrázku selhalo: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Chyba při kompresi obrázku: ${error}',
			'meal.failedToSave' => 'Nepodařilo se uložit data. Zkuste to prosím znovu.',
			'meal.skip' => 'Přeskočit',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Otázka ${current} z ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Žádné otázky nejsou k dispozici',
			'meal.questionFlow.next' => 'Další',
			'meal.questionFlow.continueLabel' => 'Pokračovat',
			'meal.analysis.title' => 'Analyzuji vaše jídlo',
			'meal.analysis.stepStarted' => 'Začínám…',
			'meal.analysis.stepDecomposition' => 'Porozumění jídlu…',
			'meal.analysis.stepIngredients' => 'Párování ingrediencí s nutričními daty…',
			'meal.analysis.stepUncertainty' => 'Kontroluji jistotu…',
			'meal.analysis.stepMealTypeQuestion' => 'Skoro hotovo…',
			'meal.analysis.stepResult' => 'Dokončuji výsledek…',
			'meal.analysis.stepError' => 'Něco se pokazilo',
			'meal.analysis.stepDefault' => 'Analyzuji vaše jídlo…',
			'meal.analysis.progressUnderstand' => 'Porozumění jídlu',
			'meal.analysis.progressMatch' => 'Vyhledávání nutričních údajů ingrediencí',
			'meal.analysis.progressCheck' => 'Kontrola porcí a jistoty',
			'meal.analysis.progressMealType' => 'Výběr typu jídla',
			'meal.analysis.progressFinish' => 'Výpočet kalorií a makroživin',
			'meal.analysis.detectedIngredientHeading' => 'Ingredience, které zaznamenáváme',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} dalších',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'Zjištěno ${count} ingrediencí',
			'meal.analysis.ingredientsPending' => 'Skenuji ingredience…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Pravidelnost je důležitější než dokonalost — pravidelné záznamy odhalí podstatné vzorce.',
			'meal.analysis.offlineTip1' => 'Tip: Pro fotky pomáhá přirozené světlo a pohled shora pro přesnost porcí.',
			'meal.analysis.offlineTip2' => 'Tip: Uveďte nápoje, omáčky a olej používaný při vaření — přidávají kalorie, na které se často zapomíná.',
			'meal.analysis.offlineTip3' => 'Tip: Krátká poznámka o porci (1 miska, velká káva) výrazně zpřesní odhady.',
			'meal.analysis.offlineTip4' => 'Tip: Záznam po jídle stále buduje návyk; dokonalost není nutná.',
			'meal.analysis.offlineTip5' => 'Tip: Uveďte způsob přípravy, pokud zásadně mění kalorickou hodnotu (smažené vs pečené).',
			'meal.feedback.title' => 'Co vypadá špatně?',
			'meal.feedback.subtitle' => 'Označte jednu nebo více chyb a pomozte nám zlepšit analýzu.',
			'meal.feedback.tellUsMore' => 'Řekněte více',
			'meal.feedback.describeIncorrect' => 'Popište, co bylo nepřesné',
			'meal.feedback.submit' => 'Odeslat',
			'meal.feedback.issueFoodIdentification' => 'Identifikace jídla',
			'meal.feedback.issuePortionSize' => 'Velikost porce',
			'meal.feedback.issueCalorieDistribution' => 'Rozložení kalorií',
			'meal.feedback.issueMacrosWrong' => 'Makroživiny jsou špatně',
			'meal.feedback.issueMissingItems' => 'Chybějící položky',
			'meal.feedback.issueExtraItems' => 'Nadbytečné položky',
			'meal.feedback.issueOther' => 'Jiné',
			'favorites.title' => 'Oblíbené',
			'favorites.empty' => 'Zatím žádná oblíbená jídla.',
			'favorites.searchPlaceholder' => 'Hledat oblíbená jídla',
			'favorites.searchEmptyTitle' => 'Žádné oblíbené neodpovídají hledání',
			'favorites.searchEmptySubtitle' => 'Zkuste jiný název jídla, množství nebo typ jídla.',
			'favorites.sortLabel' => 'Seřadit oblíbené',
			'favorites.undo' => 'Vrátit',
			'favorites.removed' => ({required Object name}) => 'Odebráno ${name} z oblíbených',
			'favorites.sortOptions.recent' => 'Nedávné',
			'favorites.sortOptions.calories' => 'Kalorie',
			'favorites.sortOptions.alphabetical' => 'A–Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Nenalezena data profilu',
			'profile.yourProfile' => 'Váš profil',
			'profile.viewAndManage' => 'Prohlížet a spravovat své zdravotní informace',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'ZÁKLADNÍ INFORMACE',
			'profile.sections.goalsAndActivity' => 'CÍLE & AKTIVITA',
			'profile.sections.calculatedValues' => 'VYPOČÍTANÉ HODNOTY',
			'profile.gender' => 'Pohlaví',
			'profile.height' => 'Výška',
			'profile.weight' => 'Hmotnost',
			'profile.age' => 'Věk',
			'profile.weightGoal' => 'Cíl hmotnosti',
			'profile.targetWeight' => 'Cílová hmotnost',
			'profile.activityLevel' => 'Úroveň aktivity',
			'profile.healthMetrics' => 'Zdravotní ukazatele',
			'profile.notSet' => 'Nenastaveno',
			'profile.years' => 'let',
			'profile.updatedSuccessfully' => 'Profil byl úspěšně aktualizován!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Denní cíl',
			'profile.calculatedValues.calPerDay' => 'cal/den',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Hodnocení zdraví',
			'healthScore.whyThisScore' => 'Proč takové hodnocení?',
			'healthScore.note' => 'Toto hodnocení je odhad AI založený na identifikovaných ingrediencích a nutriční hustotě. Pro dietní doporučení se vždy poraďte s odborníkem.',
			'healthScore.unhealthy' => 'Nezdravé',
			'healthScore.healthy' => 'Zdravé',
			'healthScore.neutral' => 'Neutrální',
			'editProfile.title' => 'Upravit profil',
			'editProfile.sections.personalInformation' => 'OSOBNÍ INFORMACE',
			'editProfile.sections.physicalMeasurements' => 'TĚLESNÉ ROZMĚRY',
			'editProfile.sections.goalsAndActivity' => 'CÍLE & AKTIVITA',
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
			'editProfile.weightGoals.loseWeight.description' => 'Vytvořit kalorický deficit pro hubnutí',
			'editProfile.weightGoals.maintainWeight.name' => 'Udržet váhu',
			'editProfile.weightGoals.maintainWeight.description' => 'Udržovat současnou hmotnost',
			'editProfile.weightGoals.gainWeight.name' => 'Přibrat',
			'editProfile.weightGoals.gainWeight.description' => 'Vytvořit kalorický přebytek pro přibrání',
			'editProfile.activityLevels.sedentary.name' => 'Sedentární',
			'editProfile.activityLevels.sedentary.description' => 'Málo nebo žádné cvičení',
			'editProfile.activityLevels.lightlyActive.name' => 'Lehce aktivní',
			'editProfile.activityLevels.lightlyActive.description' => 'Lehké cvičení 1–3× týdně',
			'editProfile.activityLevels.moderatelyActive.name' => 'Středně aktivní',
			'editProfile.activityLevels.moderatelyActive.description' => 'Středně intenzivní cvičení 3–5× týdně',
			'editProfile.activityLevels.veryActive.name' => 'Velmi aktivní',
			'editProfile.activityLevels.veryActive.description' => 'Intenzivní cvičení 6–7× týdně',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrémně aktivní',
			'editProfile.activityLevels.extremelyActive.description' => 'Velmi náročné cvičení nebo fyzická práce',
			'settings.title' => 'Nastavení',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALIZACE',
			'settings.sections.notifications' => 'UPOZORNĚNÍ',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'PODPORA & PRÁVNÍ',
			'settings.sections.about' => 'O APLIKACI',
			'settings.sections.dangerZone' => 'RIZIKOVÁ ZÓNA',
			'settings.sections.developer' => 'VÝVOJÁŘ',
			'settings.editProfile.title' => 'Upravit profil',
			'settings.editProfile.subtitle' => 'Aktualizujte své osobní informace',
			'settings.language.title' => 'Jazyk',
			'settings.language.subtitle' => 'Vyberte preferovaný jazyk',
			'settings.language.searchHint' => 'Hledat jazyky...',
			'settings.language.noResults' => 'Nebyly nalezeny výsledky',
			'settings.heightUnit.title' => 'Jednotka výšky',
			'settings.weightUnit.title' => 'Jednotka hmotnosti',
			'settings.mealReminders.title' => 'Připomenutí jídel',
			'settings.mealReminders.subtitle' => 'Zůstaňte na cestě díky včasným upozorněním',
			'settings.theme.title' => 'Téma',
			'settings.theme.light' => 'Světlé',
			'settings.theme.dark' => 'Tmavé',
			'settings.theme.system' => 'Systémové',
			'settings.sendFeedback.title' => 'Poslat zpětnou vazbu',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Pomozte nám vylepšit ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} - zpětná vazba k aplikaci',
			'settings.sendFeedback.emailBodyPrefix' => 'Napište prosím svou zpětnou vazbu níže:',
			'settings.sendFeedback.appVersion' => 'Verze aplikace',
			'settings.sendFeedback.device' => 'Zařízení',
			'settings.sendFeedback.osVersion' => 'Verze OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Export historie jídel',
			'settings.exportMealHistory.subtitle' => 'Sdílejte CSV se zaznamenanými jídly',
			'settings.exportMealHistory.shareText' => 'Export historie jídel Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Nepodařilo se exportovat historii jídel: ${error}',
			'settings.clearAllData.title' => 'Vymazat všechna data',
			'settings.clearAllData.subtitle' => 'Trvale smazat všechny vaše informace',
			'settings.clearAllData.confirmationTitle' => 'Vymazat všechna data?',
			'settings.clearAllData.confirmationMessage' => 'Tuto akci nelze vrátit zpět. Všechna vaše zaznamenaná jídla, oblíbené položky a nastavení profilu budou trvale smazány.',
			'settings.clearAllData.cancel' => 'Zrušit',
			'settings.clearAllData.clearEverything' => 'Vymazat vše',
			'settings.debugOptions.title' => 'Možnosti ladění',
			'settings.developerModeEnabled' => 'Režim vývojáře povolen!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Prohlížet a spravovat oprávnění',
			'settings.healthConnect.unavailable.title' => 'Health Connect není k dispozici',
			'settings.healthConnect.unavailable.description' => 'Health Connect není na tomto zařízení dostupný. Nainstalujte prosím Health Connect z Play Store (Android 9+) nebo aktualizujte na Android 14+.',
			'settings.healthConnect.permissions.title' => 'Oprávnění',
			'settings.healthConnect.permissions.description' => 'Následující oprávnění jsou požadována pro integraci s Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Povoleno',
			'settings.healthConnect.permissions.notGranted' => 'Nepovoleno',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Číst celkový počet spálených kalorií',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Umožňuje aplikaci číst celkové spálené kalorie z Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Toto oprávnění se používá k zobrazení denního výdeje kalorií v aplikaci, což pomáhá pochopit váš celkový energetický výdej během dne.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Číst nutriční údaje',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Umožňuje aplikaci číst nutriční data z Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Toto oprávnění umožňuje aplikaci číst nutriční informace, které mohly být zaznamenány jinými aplikacemi připojenými k Health Connect, a poskytuje komplexní pohled na vaši výživu.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Zapisovat nutriční údaje',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Umožňuje aplikaci zapisovat nutriční data do Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Toto oprávnění umožňuje aplikaci synchronizovat vaše zaznamenaná jídla s Health Connect, takže vaše nutriční data budou dostupná dalším zdravotním a fitness aplikacím, které používáte.',
			'settings.healthConnect.managePermissions' => 'Spravovat oprávnění',
			'settings.healthConnect.openSettings' => 'Otevřít nastavení Health Connect',
			'settings.healthConnect.requestPermissions' => 'Požádat o oprávnění',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Požadavek na oprávnění byl zrušen nebo selhal. Zkuste to prosím znovu nebo udělte oprávnění ručně v nastavení Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Nelze požádat o oprávnění. Zkuste to prosím znovu nebo udělte oprávnění ručně v nastavení Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Žádám o oprávnění...',
			'settings.about.title' => 'O aplikaci',
			'settings.about.tagline' => 'Rychlé, bezplatné a soukromí na prvním místě — povědomí o kaloriích',
			'settings.about.ourStory.title' => 'Náš příběh',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} vznikl z jednoduché frustrace: většina aplikací pro sledování kalorií je buď příliš složitá, vyžaduje neustálé ruční zadávání, účtuje vysoké předplatné nebo kompromituje soukromí.\n\nJako samostatný vývojář jsem chtěl vytvořit něco jednoduššího a spravedlivějšího — aplikaci, která využívá AI ke zmenšení námahy, zůstává rychlá a zdarma a zachází s vašimi zdravotními daty s respektem.\n\n${appLabel} je aplikace, kterou bych si přál, aby existovala: žádné účty, žádné sledování, žádné reklamy — jen jasné, praktické postřehy a vaše zdravotní cíle.',
			'settings.about.privacy.title' => 'Vaše soukromí je důležité',
			'settings.about.privacy.description' => 'Soukromí není dodatek — je to princip návrhu. Co to v praxi znamená:',
			'settings.about.privacy.noAccounts' => 'Není potřeba účet\nPoužijte aplikaci okamžitě. Žádné registrace, žádné identity.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Žádné sledování chování\n${appLabel} nesleduje vaši aktivitu, netvoří uživatelské profily ani vás nesleduje napříč aplikacemi či weby.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Bez reklam záměrně\n${appLabel} je navržen tak, aby fungoval bez reklam a monetizace založené na datech.',
			'settings.about.privacy.noDataSelling' => 'Žádný prodej dat\nVaše zdravotní údaje nejsou nikdy prodávány ani sdíleny s třetími stranami.',
			'settings.about.privacy.localStorage' => 'Primárně lokální úložiště\nVaše data zůstávají v zařízení.',
			'settings.about.privacy.privacyPolicy' => 'Zásady ochrany osobních údajů',
			'settings.about.developer.title' => 'Vytvořeno jedním vývojářem',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} je vytvořen a udržován jediným vývojářem, který se zaměřuje na klidný software pro zdraví, respektující soukromí.\n\nZpětnou vazbu čte osobně a pomáhá směrovat další vývoj aplikace.',
			'settings.about.developer.website' => 'Web',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Líbí se vám ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Vaše zpětná vazba pomáhá zlepšit ${appLabel} pro všechny.',
			'settings.about.feedback.rateApp' => 'Ohodnotit v Play Store',
			'settings.about.feedback.sendFeedback' => 'Poslat zpětnou vazbu',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Sestavení ${buildNumber}',
			'reminders.title' => 'Zůstaňte na cestě díky připomenutím',
			'reminders.description' => 'Dostávejte jemná upozornění, abyste si zaznamenávali jídla a udrželi se v souladu se svými výživovými cíli',
			'reminders.notificationsEnabled' => 'Upozornění povolena',
			'reminders.notificationsDisabled' => 'Upozornění vypnuta',
			'reminders.enabledSubtitle' => 'Budete dostávat připomenutí jídel',
			'reminders.disabledSubtitle' => 'Povolte upozornění pro připomenutí jídel',
			'reminders.mealReminders' => 'Připomenutí jídel',
			'reminders.breakfast' => 'Snídaně',
			'reminders.lunch' => 'Oběd',
			'reminders.dinner' => 'Večeře',
			'reminders.snack' => 'Svačina',
			'reminders.unknown' => 'Neznámé',
			'reminders.change' => 'Změnit',
			'reminders.enableNotifications' => 'Povolit upozornění',
			'reminders.skipForNow' => 'Přeskočit nyní',
			'reminders.saveChanges' => 'Uložit změny',
			'reminders.enabledSuccessfully' => 'Upozornění úspěšně povolena!',
			'reminders.permissionDenied' => 'Oprávnění k upozorněním odepřeno',
			'reminders.errorEnabling' => ({required Object error}) => 'Chyba při povolování upozornění: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Chyba při dokončování nastavení: ${error}',
			'notifications.breakfast.title' => 'Čas na snídani! 🍳',
			'notifications.breakfast.body' => 'Nezapomeňte zaznamenat snídani',
			'notifications.lunch.title' => 'Čas na oběd! 🥗',
			'notifications.lunch.body' => 'Je čas zaznamenat oběd',
			'notifications.dinner.title' => 'Čas na večeři! 🍽️',
			'notifications.dinner.body' => 'Nezapomeňte zaznamenat večeři',
			'notifications.snack.title' => 'Čas na svačinu! 🍎',
			'notifications.snack.body' => 'Čas na zdravou svačinu',
			'notifications.test.title' => 'Testovací upozornění',
			'login.title' => 'Přihlášení',
			'login.signInWithGoogle' => 'Přihlásit se přes Google',
			'login.signInFailed' => 'Přihlášení přes Google selhalo nebo bylo zrušeno.',
			'disclaimer.pleaseNote' => 'Vezměte prosím na vědomí',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} poskytuje odhadnuté nutriční informace. Přesnost závisí na vašem zadání a na variacích potravin. Používejte je jako orientaci, nikoli jako definitivní zdroj. Pro osobní dietní poradenství se poraďte s odborníkem.',
			'disclaimer.snap.portionSize.title' => 'Velikost porce',
			'disclaimer.snap.portionSize.description' => 'Přesnost odhadů silně závisí na správném odhadu velikosti porce.',
			'disclaimer.snap.preparationMethods.title' => 'Způsoby přípravy',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Způsoby vaření mohou výrazně měnit nutriční hodnotu jídla. Odhady ${appLabel} nemusí tyto rozdíly vždy zohlednit.',
			'disclaimer.snap.ingredients.title' => 'Ingredience',
			'disclaimer.snap.ingredients.description' => 'Složité pokrmy s mnoha skrytými ingrediencemi mohou vést k méně přesným odhadům.',
			'disclaimer.snap.databaseLimitations.title' => 'Omezení databáze',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Databáze potravin v ${appLabel} je rozsáhlá, ale nemusí obsahovat každou potravinu nebo variantu.',
			'disclaimer.weightEstimate.title' => 'Odhad váhové změny',
			'disclaimer.weightEstimate.description' => 'Projekce změny hmotnosti je teoretický odhad založený na jednoduchém modelu kalorický příjem vs. výdej. Slouží pouze jako motivační vodítko, nikoli jako předpověď vaší skutečné váhy.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Přesnost odhadů kalorií',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Tento odhad je přesný jen tolik, kolik jsou přesné vaše záznamy o příjmu a výdeji kalorií. Nepřesné záznamy povedou k nepřesné projekci.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologické faktory',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Skutečný úbytek nebo nárůst hmotnosti ovlivňují metabolismus, hormony, spánek, stres, hydratace a další individuální faktory, které ${appLabel} neměří.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Voda v těle a výkyvy',
			'disclaimer.weightEstimate.waterWeight.description' => 'Běžná denní hmotnost se může výrazně lišit kvůli zadržování vody, trávení a načasování. Odhad tyto denní výkyvy nezohledňuje.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Odborné poradenství',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Nepoužívejte tento odhad k lékařským rozhodnutím. Vždy se poraďte se zdravotnickým odborníkem nebo registrovaným dietologem pro personalizovanou péči.',
			'disclaimer.healthMetrics.description' => 'Tyto metriky vám pomáhají porozumět energetickým potřebám těla a vést vaše výživové cíle.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Bazální metabolický výdej (BMR) je počet kalorií, které vaše tělo spálí v klidu pro udržení základních funkcí, jako je dýchání a krevní oběh. BMR závisí na věku, pohlaví, výšce a hmotnosti. Vyšší BMR obvykle znamená, že tělo spaluje více kalorií v klidu, často kvůli vyššímu podílu svalové hmoty, nižšímu věku nebo tomu, že jde o muže. Nižší BMR obvykle naznačuje méně svalové hmoty, vyšší věk nebo že jde o ženu.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Celkový denní energetický výdej (TDEE) je celkový počet kalorií, které spálíte za den, včetně BMR a kalorií spálených při fyzické aktivitě a běžném pohybu. TDEE závisí na vašem BMR a úrovni aktivity. Vyšší TDEE znamená, že celkově spálíte více kalorií, obvykle díky větší aktivitě nebo vyššímu BMR. Nižší TDEE naznačuje méně denní aktivity nebo nižší BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Denní cíl',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Denní cíl je doporučený denní příjem kalorií založený na vašem TDEE a cíli hmotnosti. Při hubnutí konzumujete méně kalorií než váš TDEE. Pro udržení váhy se příjem vyrovná TDEE. Při nabírání váhy konzumujete více kalorií než TDEE. Pomáhá to dosáhnout požadované změny váhy zdravým tempem.',
			'disclaimer.calorieExpenditure.title' => 'Odhad spálených kalorií',
			'disclaimer.calorieExpenditure.description' => 'Pokud nejsou dostupná data z Health Connect, odhadujeme dnešní spálené kalorie na základě vašeho BMR a úrovně aktivity (TDEE), škálované podle části dne, která již uplynula.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Jak je odhad vypočítán',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Vypočítáme váš TDEE (na základě profilu) a vynásobíme ho zlomkem uběhlého dne (hodiny + minuty) / 24, abychom odhadli dosud spálené kalorie.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Odborné poradenství',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Nepoužívejte tento odhad pro lékařská rozhodnutí. Vždy se poraďte se zdravotnickým odborníkem nebo registrovaným dietologem pro personalizovanou péči.',
			'common.close' => 'Zavřít',
			'common.kContinue' => 'Pokračovat',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Líbí se vám ${appLabel}?',
			'feedbackRating.yes' => 'Ano, líbí se mi',
			'feedbackRating.no' => 'Ne tak moc',
			'feedbackRating.rateStepHeading' => 'Ohodnoťte v Play Store',
			'feedbackRating.emailStepHeading' => 'Poslat zpětnou vazbu e-mailem',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Krátké hodnocení pomůže ostatním najít ${appLabel} a podpoří další vývoj. Věnujete chvíli a ohodnotíte nás?',
			'feedbackRating.shareFeedbackViaEmail' => 'Vaše zpětná vazba formuje další kroky — čteme každou zprávu. Chcete sdílet své myšlenky e-mailem?',
			'feedbackRating.rateCta' => 'Ohodnotit v Play Store',
			'feedbackRating.maybeLater' => 'Možná později',
			'feedbackRating.sendFeedback' => 'Poslat zpětnou vazbu',
			'feedbackRating.noThanks' => 'Ne, díky',
			'feedbackRating.aboutUsDescription' => 'Vytvořeno s péčí malým týmem. Zaměřujeme se na soukromí, jednoduchost a pomoc s lepšími stravovacími návyky.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Zajímá vás, kdo stojí za ${appLabel}? Podívejte se ',
			'feedbackRating.aboutUsLinkLabel' => 'O nás',
			'feedbackRating.thankYouMessage' => 'Děkujeme! Zeptáme se vás znovu jindy.',
			'health.syncFailed' => 'Nelze synchronizovat s Health Connect',
			'health.mealSynced' => 'Jídlo synchronizováno s Health Connect',
			_ => null,
		};
	}
}
