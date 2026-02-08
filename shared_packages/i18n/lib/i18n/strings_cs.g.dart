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
	@override late final _TranslationsErrorsCs errors = _TranslationsErrorsCs._(_root);
	@override late final _TranslationsDebugCs debug = _TranslationsDebugCs._(_root);
	@override late final _TranslationsHealthCs health = _TranslationsHealthCs._(_root);
}

// Path: onboarding
class _TranslationsOnboardingCs implements TranslationsOnboardingEn {
	_TranslationsOnboardingCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Vítejte v ${appLabel}';
	@override String get subtitle => 'Váš osobní nutriční společník, který využívá umělou inteligenci';
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
	@override String get dashboard => 'Nástěnka';
	@override String get history => 'Historie';
}

// Path: home
class _TranslationsHomeCs implements TranslationsHomeEn {
	_TranslationsHomeCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
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
	@override String get noMeals => 'Žádná jídla nebyla zaznamenána';
	@override String get emptyMessage => 'Vyfoťte obrázek vašeho posledního jídla, aby se zaznamenalo zde.';
	@override String get today => 'Dnes';
	@override String get yesterday => 'Včera';
}

// Path: meal
class _TranslationsMealCs implements TranslationsMealEn {
	_TranslationsMealCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Ach ne!';
	@override String get delete => 'Smazat';
	@override String get editMeal => 'Upravit jídlo';
	@override String get addMeal => 'Přidat jídlo';
	@override String get saveMeal => 'Uložit jídlo';
	@override String get save => 'Uložit';
	@override String get mealName => 'Název jídla';
	@override String get mealNameHint => 'např. míchaná vajíčka s toustem';
	@override String get mealQuantity => 'Množství jídla';
	@override String get mealQuantityHint => 'např. 1 miska, 2 plátky';
	@override String get timeOfMeal => 'Čas jídla';
	@override String get timeOfMealHint => 'Vyberte čas, kdy jste měli své jídlo';
	@override String get mealType => 'Typ jídla';
	@override late final _TranslationsMealNutritionCs nutrition = _TranslationsMealNutritionCs._(_root);
	@override late final _TranslationsMealDeleteConfirmationCs deleteConfirmation = _TranslationsMealDeleteConfirmationCs._(_root);
	@override String get addedToLog => 'Jídlo bylo přidáno do vašeho deníku!';
	@override String couldNotAdd({required Object error}) => 'Nelze přidat jídlo: ${error}';
	@override String get savedSuccessfully => 'Jídlo bylo úspěšně přidáno!';
	@override String get updatedSuccessfully => 'Jídlo bylo úspěšně aktualizováno!';
	@override String errorSaving({required Object error}) => 'Chyba při ukládání jídla: ${error}';
	@override String get removedFromFavorites => 'Odebráno z oblíbených!';
	@override String get savedAsFavorite => 'Jídlo bylo uloženo jako oblíbené!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nelze aktualizovat oblíbené: ${error}';
	@override String failedToProcess({required Object error}) => 'Nepodařilo se zpracovat: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Nepodařilo se zpracovat obrázek: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Chyba při kompresi obrázku: ${error}';
	@override String get failedToSave => 'Nepodařilo se uložit data. Zkuste to prosím znovu.';
	@override String get skip => 'Přeskočit';
	@override late final _TranslationsMealVariationCs variation = _TranslationsMealVariationCs._(_root);
}

// Path: favorites
class _TranslationsFavoritesCs implements TranslationsFavoritesEn {
	_TranslationsFavoritesCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oblíbené';
	@override String get empty => 'Žádná oblíbená jídla zatím.';
}

// Path: profile
class _TranslationsProfileCs implements TranslationsProfileEn {
	_TranslationsProfileCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Nebyla nalezena žádná data profilu';
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
	@override String get notSet => 'Nastaveno není';
	@override String get years => 'roky';
	@override String get updatedSuccessfully => 'Profil byl úspěšně aktualizován!';
	@override late final _TranslationsProfileCalculatedValuesCs calculatedValues = _TranslationsProfileCalculatedValuesCs._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreCs implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zdravotní skóre';
	@override String get whyThisScore => 'Proč toto skóre?';
	@override String get note => 'Toto skóre je odhad AI založený na identifikovaných ingrediencích a nutriční hustotě. Vždy se poraďte s odborníkem ohledně výživového poradenství.';
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
	@override late final _TranslationsSettingsClearAllDataCs clearAllData = _TranslationsSettingsClearAllDataCs._(_root);
	@override late final _TranslationsSettingsDebugOptionsCs debugOptions = _TranslationsSettingsDebugOptionsCs._(_root);
	@override String get developerModeEnabled => 'Režim vývojáře je povolen!';
	@override late final _TranslationsSettingsHealthConnectCs healthConnect = _TranslationsSettingsHealthConnectCs._(_root);
	@override late final _TranslationsSettingsAboutCs about = _TranslationsSettingsAboutCs._(_root);
	@override late final _TranslationsSettingsAppInfoCs appInfo = _TranslationsSettingsAppInfoCs._(_root);
}

// Path: reminders
class _TranslationsRemindersCs implements TranslationsRemindersEn {
	_TranslationsRemindersCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zůstaňte na správné cestě s připomínkami';
	@override String get description => 'Získejte jemné připomínky k zaznamenávání vašich jídel a zůstaňte konzistentní s vašimi nutričními cíli';
	@override String get notificationsEnabled => 'Upozornění povolena';
	@override String get notificationsDisabled => 'Upozornění zakázána';
	@override String get enabledSubtitle => 'Obdržíte připomínky k jídlům';
	@override String get disabledSubtitle => 'Povolte oznámení, abyste dostávali připomínky k jídlům';
	@override String get mealReminders => 'Připomínky jídel';
	@override String get breakfast => 'Snídaně';
	@override String get lunch => 'Oběd';
	@override String get dinner => 'Večeře';
	@override String get snack => 'Svačina';
	@override String get unknown => 'Neznámé';
	@override String get change => 'Změnit';
	@override String get enableNotifications => 'Povolit notifikace';
	@override String get skipForNow => 'Přeskočit prozatím';
	@override String get saveChanges => 'Uložit změny';
	@override String get enabledSuccessfully => 'Upozornění byla úspěšně povolena!';
	@override String get permissionDenied => 'Povolení pro notifikace bylo zamítnuto';
	@override String errorEnabling({required Object error}) => 'Chyba při povolování notifikací: ${error}';
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
	@override String get signInWithGoogle => 'Přihlásit se pomocí Google';
	@override String get signInFailed => 'Přihlášení přes Google se nezdařilo nebo bylo zrušeno.';
}

// Path: disclaimer
class _TranslationsDisclaimerCs implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Prosím vezměte na vědomí';
	@override late final _TranslationsDisclaimerSnapCs snap = _TranslationsDisclaimerSnapCs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateCs weightEstimate = _TranslationsDisclaimerWeightEstimateCs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsCs healthMetrics = _TranslationsDisclaimerHealthMetricsCs._(_root);
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
	@override String enjoyingQuestion({required Object appLabel}) => 'Líbí se vám ${appLabel}? Vaše zkušenost je pro nás důležitá.';
	@override String get yes => 'Ano, líbí se mi.';
	@override String get no => 'Ne, moc ne.';
	@override String soloDevMessage({required Object appLabel}) => '${appLabel} vytváří jedna osoba. Krátké hodnocení v Obchodě Play pomůže ostatním aplikaci najít a podpoří další vývoj — opravdu to pomáhá. Věnujete chvilku a ohodnotíte ji?';
	@override String shareFeedbackViaEmail({required Object appLabel}) => '${appLabel} vytváří jedna osoba. Vaše zpětná vazba skutečně ovlivňuje, co přijde dál — a každý vzkaz čteme. Chtěli byste své názory sdílet e-mailem?';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Zajímá vás, kdo stojí za ${appLabel}? Podívejte se ';
	@override String get aboutUsLinkLabel => 'O nás';
}

// Path: errors
class _TranslationsErrorsCs implements TranslationsErrorsEn {
	_TranslationsErrorsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Chyba při načítání dat profilu';
	@override String get somethingWentWrong => 'Něco se pokazilo.';
}

// Path: debug
class _TranslationsDebugCs implements TranslationsDebugEn {
	_TranslationsDebugCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Možnosti ladění';
	@override late final _TranslationsDebugSectionsCs sections = _TranslationsDebugSectionsCs._(_root);
	@override String get showActiveNotifications => 'Zobrazit aktivní notifikace';
	@override String get scheduleTestNotification => 'Naplánovat testovací notifikaci (10s)';
	@override String get triggerBreakfastNotification => 'Spustit notifikaci na snídani';
	@override String get cancelAllNotifications => 'Zrušit všechny notifikace';
	@override String get activeNotifications => 'Aktivní notifikace';
	@override String get noTitle => 'Žádný název';
	@override String get noBody => 'Žádné tělo';
	@override String get fetchTodaysSteps => 'Načíst dnešní kroky';
	@override String get fetchTodaysCalories => 'Načíst dnešní kalorie';
	@override String get fetchLatestWeight => 'Načíst poslední hmotnost';
	@override String get fetchLatestHeight => 'Načíst poslední výšku';
	@override String get writeTestWeight => 'Zapsat testovací hmotnost (70kg)';
	@override String get writeTestHeight => 'Zapsat testovací výšku (175cm)';
	@override String get syncLast7Days => 'Synchronizovat posledních 7 dní';
	@override String get sync7DaysTitle => 'Synchronizace za 7 dní';
	@override String get checkCurrentLocale => 'Zkontrolovat aktuální lokalitu';
	@override String get currentLocale => 'Aktuální lokalita';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Jazyk: ${languageCode}\nZemě: ${countryCode}\nJednotkový systém: ${unitSystem}';
	@override String get latestWeight => 'Nejnovější hmotnost';
	@override String get latestHeight => 'Nejnovější výška';
	@override String get todaysCalories => 'Dnešní kalorie';
	@override String totalCaloriesBurned({required Object calories}) => 'Celkové spálené kalorie: ${calories}';
	@override String syncSuccess({required Object count}) => 'Úspěšně načteno ${count} datových bodů pro kroky, kalorie a hmotnost za posledních 7 dní.';
	@override String get noWeightData => 'Žádná hmotnostní data nalezena za posledních 30 dní.';
	@override String get noHeightData => 'Žádná výška data nalezena za poslední rok.';
	@override String get noCalorieData => 'Žádná data o kaloriích nalezena pro dnešek.';
	@override String get weightWritten => 'Úspěšně zapsána testovací hmotnost (70kg).';
	@override String get weightWriteFailed => 'Nepodařilo se zapsat testovací hmotnost.';
	@override String get heightWritten => 'Úspěšně zapsána testovací výška (175cm).';
	@override String get heightWriteFailed => 'Nepodařilo se zapsat testovací výšku.';
	@override String get noNotifications => 'Žádné aktivní notifikace.';
	@override String get testNotificationScheduled => 'Testovací notifikace naplánována na 10 sekund.';
	@override String get testNotificationBody => 'Toto je testovací notifikace naplánovaná na 10 sekund.';
	@override String get breakfastNotificationTriggered => 'Notifikace na snídani byla spuštěna.';
	@override String get allNotificationsCancelled => 'Všechny notifikace byly zrušeny.';
	@override String get fetchingData => 'Načítám data za posledních 7 dní...';
	@override String id({required Object id}) => 'ID: ${id}';
	@override String get showFeedbackRatingSheet => 'Zobrazit formulář pro zpětnou vazbu / hodnocení';
	@override String get clearUserPreferences => 'Vymazat uživatelská nastavení';
	@override String get clearUserPreferencesConfirmationTitle => 'Vymazat uživatelská nastavení?';
	@override String get clearUserPreferencesConfirmationMessage => 'Téma, jazyk a nastavení týkající se zpětné vazby budou resetovány. Jídla a profil nebudou ovlivněny.';
	@override String get clearUserProfile => 'Vymazat uživatelský profil';
	@override String get clearUserProfileConfirmationTitle => 'Vymazat uživatelský profil?';
	@override String get clearUserProfileConfirmationMessage => 'Data vašeho profilu (denní cíl, výška, váha atd.) budou vymazána. Jídla a nastavení nebudou ovlivněny.';
	@override String get clear => 'Vymazat';
	@override String get cancel => 'Zrušit';
}

// Path: health
class _TranslationsHealthCs implements TranslationsHealthEn {
	_TranslationsHealthCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Nedaří se synchronizovat s Health Connect';
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
	@override String get title => 'Jak vysoký/á jste?';
	@override String get description => 'Vaše výška nám pomáhá přesně vypočítat váš BMI a energetické potřeby.';
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
	@override String get currentDescription => 'Vaše aktuální hmotnost je zásadní pro personalizaci vašich denních cílů.';
	@override String get targetTitle => 'Jaká je vaše cílová hmotnost?';
	@override String get targetDescription => 'Nastavení cílové hmotnosti nám pomůže určit váš dlouhodobý plán.';
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
	@override String get description => 'Váš věk nám pomáhá přesně vypočítat vaše kalorické potřeby.';
	@override String get next => 'Další';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleCs implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Podváha';
	@override String get healthy => 'Zdravá hmotnost';
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
	@override String get description => 'Vyberte cíl, který nejlépe vystihuje to, co chcete dosáhnout';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelCs implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jak aktivní jste?';
	@override String get description => 'To nám pomáhá přesněji vypočítat vaše denní kalorické potřeby';
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
	@override String get connected => 'Health Connect připojeno';
	@override String get notConnected => 'Health Connect není připojeno';
	@override String get setup => 'Nastavit Health Connect';
	@override String get skipForNow => 'Přeskočit nyní';
	@override String get statusConnected => 'Health Connect je připojeno.';
	@override String get statusSuccess => 'Health Connect byl úspěšně připojen!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Odmítnuto. Prosím, povolte oprávnění pro Health Connect v nastavení vašeho telefonu pro ${appLabel}.';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalCs implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nastavte si svůj denní cíl';
	@override String get titleSet => 'Váš denní cíl';
	@override String get description => 'Připraveni na začátek vaší wellness cesty? Nastavte si svůj denní kalorický cíl níže, abyste zahájili svůj pokrok.';
	@override String get descriptionSet => 'Vaše kompas je nastaven! Toto je váš denní kalorický cíl, který vás povede.';
	@override String get yourGoal => 'Váš cíl';
	@override String get dailyCalories => 'Denní kalorie (kcal)';
	@override String get setGoal => 'Nastavit cíl';
	@override String get intake => 'Příjem';
	@override String get burned => 'Spálené';
	@override String get weightImpact => 'Dopad na hmotnost';
	@override String get estLoss => 'Odhadovaná ztráta';
	@override String get estGain => 'Odhadované zvýšení';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryCs implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Denní shrnutí';
	@override String get calories => 'Kalorie';
	@override String get carbs => 'Sacharidy';
	@override String get protein => 'Bílkoviny';
	@override String get fat => 'Tuky';
	@override String get fiber => 'Vláknina';
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
	@override String get title => 'Historie makroživin za 7 dní';
	@override String get noHistoryYet => 'Žádná historie zatím';
	@override String get startLogging => 'Začněte zaznamenávat jídla, abyste zde viděli\ntrendy makroživin za 7 dní';
}

// Path: home.mealLog
class _TranslationsHomeMealLogCs implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zaznamenaná jídla';
	@override String get emptyMessage => 'Vyfoťte obrázek vašeho posledního jídla, aby se zaznamenalo zde.';
	@override String get noMealsToday => 'Žádná jídla nebyla zaznamenána pro dnešek';
	@override String get seeAllMeals => 'Zobrazit všechna jídla';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionCs implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rychlé přidání s AI';
	@override String get description => 'Popište své jídlo a nechte AI se postarat o detaily.';
	@override String get hint => 'např. Na snídani jsem měl velkou misku ovesné kaše s plátkem banánu a dávku syrovátkového proteinu...';
	@override String get analyzeMeal => 'Analyzovat jídlo';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsCs implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oblíbená jídla';
	@override String get description => 'Rychle přidejte jedno z vašich oblíbených jídel.';
	@override String get noFavorites => 'Žádná oblíbená jídla zatím.';
	@override String get addFavoriteHint => 'Klikněte na hvězdičku u jídla, abyste jej označili jako oblíbené.';
	@override String get seeAll => 'Zobrazit všechna';
	@override String get add => 'Přidat';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapCs implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vyfoťte a sledujte své jídlo';
	@override String get description => 'Použijte svoji kameru, abyste vyfotili své jídlo pro analýzu AI.';
	@override String get openCamera => 'Otevřít kameru';
	@override String get gallery => 'Galerie';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthCs implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchronizujte s Health Connect';
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
	@override String get message => 'Opravdu chcete smazat tento záznam o jídle?';
	@override String get cancel => 'Storno';
	@override String get delete => 'Smazat';
}

// Path: meal.variation
class _TranslationsMealVariationCs implements TranslationsMealVariationEn {
	_TranslationsMealVariationCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Otázka ${current} z ${total}';
	@override String get noVariationsAvailable => 'Nejsou dostupné žádné varianty';
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
	@override String get calPerDay => 'kal/den';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsCs implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'OSOBNÍ INFORMACE';
	@override String get physicalMeasurements => 'FYZICKÉ ROZMĚRY';
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
	@override String get notifications => 'NOTIFIKACE';
	@override String get healthConnect => 'ZDRAVOTNÍ SPOJENÍ';
	@override String get supportAndLegal => 'POMOC & PRÁVNÍ';
	@override String get about => 'O APLIKACI';
	@override String get dangerZone => 'NEBEZPEČNÁ ZÓNA';
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
	@override String get subtitle => 'Vyberte svůj preferovaný jazyk';
	@override String get searchHint => 'Hledat jazyky...';
	@override String get noResults => 'Žádné výsledky nenalezeny';
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
	@override String get subtitle => 'Zůstaňte na správné cestě s včasnými upozorněními';
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
	@override String get title => 'Odeslat zpětnou vazbu';
	@override String subtitle({required Object appLabel}) => 'Pomozte nám zlepšit ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Zpětná vazba k aplikaci ${appLabel}';
	@override String get emailBodyPrefix => 'Prosím, poskytněte zpětnou vazbu níže:';
	@override String get appVersion => 'Verze aplikace';
	@override String get device => 'Zařízení';
	@override String get osVersion => 'Verze OS';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataCs implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vymazat všechna data';
	@override String get subtitle => 'Nevratně smažte všechny své informace';
	@override String get confirmationTitle => 'Vymazat všechna data?';
	@override String get confirmationMessage => 'Toto akce nelze vrátit. Všechna vaše zaznamenaná jídla, oblíbená jídla a nastavení profilu budou trvale smazána.';
	@override String get cancel => 'Storno';
	@override String get clearEverything => 'Smazat všechno';
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
	@override String get title => 'Zdravotní spojení';
	@override String get subtitle => 'Zobrazit a spravovat oprávnění';
	@override late final _TranslationsSettingsHealthConnectUnavailableCs unavailable = _TranslationsSettingsHealthConnectUnavailableCs._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsCs permissions = _TranslationsSettingsHealthConnectPermissionsCs._(_root);
	@override String get managePermissions => 'Spravovat oprávnění';
	@override String get openSettings => 'Otevřít nastavení Health Connect';
	@override String get requestPermissions => 'Žádat o oprávnění';
	@override String get permissionRequestCancelledOrFailed => 'Žádost o oprávnění byla zrušena nebo selhala. Zkuste to prosím znovu nebo udělte oprávnění ručně v nastavení Health Connect.';
	@override String get permissionRequestFailed => 'Nepodařilo se vyžádat oprávnění. Zkuste to prosím znovu nebo udělte oprávnění ručně v nastavení Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutCs implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'O nás';
	@override String get tagline => 'Rychlá, zdarma a s důrazem na soukromí v oblasti kalorické povědomí';
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
	@override String get body => 'Nezapomeňte zaznamenat svou snídani';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchCs implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čas na oběd! 🥗';
	@override String get body => 'Čas na zaznamenání oběda';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerCs implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Čas na večeři! 🍽️';
	@override String get body => 'Nezapomeňte zaznamenat svou večeři';
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
	@override String get title => 'Testovací notifikace';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapCs implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} poskytuje odhadované nutriční informace. Přesnost závisí na vašem vstupu a variacích potravin. Používejte jako vodítko, nikoli jako definitivní zdroj. Konzultujte s odborníkem pro personalizované dietní rady.';
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
	@override String get title => 'Odhad hmotnosti';
	@override String get description => 'Odhadovaná změna hmotnosti je teoretickým odhadem na základě jednoduchého modelu kalorického příjmu versus výdeje. Je určen pouze pro motivaci, nikoli jako předpověď vaší skutečné hmotnosti.';
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
	@override String get description => 'Tyto metriky vám pomáhají chápat energetické potřeby vašeho těla a usměrňují vaše nutriční cíle.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrCs bmr = _TranslationsDisclaimerHealthMetricsBmrCs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeCs tdee = _TranslationsDisclaimerHealthMetricsTdeeCs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalCs dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalCs._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsCs implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Notifikace';
	@override String get healthConnect => 'Health Connect';
	@override String get feedback => 'Zpětná vazba';
	@override String get dataReset => 'Reset dat';
	@override String get appInfo => 'Informace o aplikaci';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionCs implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chytré rozpoznávání potravin';
	@override String get description => 'Vyfoťte jídlo a nechte umělou inteligenci identifikovat váš pokrm';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisCs implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analýza AI';
	@override String get description => 'Získejte okamžité nutriční informace z vašich popisů';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationCs implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrace se zdravím';
	@override String get description => 'Propojte se s Health Connect pro lepší přehledy';
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
	@override String get underweight => 'Můžeme vám pomoci vytvořit zdravý plán, abyste dosáhli vyvážené hmotnosti s výživnými jídly.';
	@override String get healthy => 'Skvěle! Jste v zdravém rozmezí. Pomůžeme vám udržet vaši vitalitu a energii.';
	@override String overweight({required Object appLabel}) => '${appLabel} vám usnadní cestu pomocí sledování na bázi AI, které vám pomůže dosáhnout vašich cílů s lehkostí.';
	@override String get obese => 'Jsme tu, abychom vás podpořili s personalizovaným poradenstvím a udržitelnými strategiemi pro vaše zdraví.';
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
	@override String get description => 'Získejte podrobné přehledy o vašich zdravotních trendech';
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
	@override String get title => 'Nejste sami';
	@override String get genericMessage => 'Výzkum ukazuje, že konzistentní sledování je prvním prediktorem dlouhodobého úspěchu.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Pro ${age}-letého ${gender}, který se snaží ${goal}, je konzistentní sledování prvním prediktorem úspěchu.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} to dělá 10x snazší než to dělat ručně.';
	@override String get getStartedTitle => 'Připraveni začít?';
	@override String get tipPhoto => 'Pořiďte fotografii svých jídel pro okamžitou analýzu';
	@override String get tipConsistency => 'Zaznamenávejte pravidelně, abyste viděli smysluplný pokrok';
	@override String get tipProgress => 'Sledujte svůj pokrok denně, abyste zůstali motivováni';
	@override String get button => 'Jdeme na to';
	@override String get defaultGender => 'osoba';
	@override String get defaultGoal => 'zdravější vy';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileCs implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Váš zdravotní profil';
	@override String bmiDescription({required Object bmi}) => 'Na základě vašich údajů je vaše BMI ${bmi}.';
	@override String get finalizeDescription => 'Dokončeme váš profil pro přizpůsobení vašeho zážitku.';
	@override String get goalGain => 'přibrat';
	@override String get goalLose => 'zhubnout';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Abychom dosáhli vašeho cíle, budete ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Jste na své cílové hmotnosti! Pomůžeme vám ji udržet.';
	@override String get button => 'Jdeme na to';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleCs implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skvělý začátek!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Udělal(a) jste první krok směrem k ${goalText}. Protože jste ${activityText}, ${appLabel} upraví vaše cíle tak, aby odpovídaly vašemu životnímu stylu.';
	@override String get personalizedTargets => 'Personalizované cíle v kaloriích';
	@override String get aiMealDetection => 'Detekce jídel pomocí AI';
	@override String get macroBreakdowns => 'Podrobné rozdělení makroživin';
	@override String get button => 'Jdeme na to';
	@override String get defaultGoal => 'vašim cílům';
	@override String get defaultActivity => 'aktivní';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightCs implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Zhubnout';
	@override String get description => 'Vytvořte kalorický deficit, abyste zhubli';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightCs implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Udržet hmotnost';
	@override String get description => 'Udržujte svou aktuální hmotnost';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightCs implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Přibrat na váze';
	@override String get description => 'Vytvořte kalorický přebytek, abyste nabrali na váze';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryCs implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedavý';
	@override String get description => 'Málo až žádné cvičení';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveCs implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lehce aktivní';
	@override String get description => 'Lehká aktivita 1-3 dny/týden';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveCs implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Středně aktivní';
	@override String get description => 'Střední cvičení 3-5 dní/týden';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveCs implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Velmi aktivní';
	@override String get description => 'Intenzivní cvičení 6-7 dní/týden';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveCs implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrémně aktivní';
	@override String get description => 'Velmi intenzivní cvičení, fyzicky náročná práce';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableCs implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect není k dispozici';
	@override String get description => 'Health Connect není na tomto zařízení k dispozici. Nainstalujte si prosím Health Connect z Obchodu Play (Android 9+) nebo aktualizujte na Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsCs implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oprávnění';
	@override String get description => 'Následující oprávnění jsou požadována k zajištění integrace zdravotního spojení:';
	@override String get granted => 'Schváleno';
	@override String get notGranted => 'Neschváleno';
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
	@override String content({required Object appLabel}) => '${appLabel} vzniklo z jednoduché frustrace: většina aplikací pro sledování kalorií je buď příliš složitá, vyžaduje neustálý ruční vstup, účtuje vysoké poplatky za předplatné nebo kompromituje soukromí.\n\nJako nezávislý vývojář jsem chtěl vytvořit něco jednoduššího a spravedlivějšího - aplikaci, která využívá AI k minimalizaci úsilí, zůstává rychlá a zdarma k použití a zachází s vašimi zdravotními údaji s respektem.\n\n${appLabel} je aplikace, kterou jsem si přál mít: žádné účty, žádné sledování, žádné reklamy - jen jasné, praktické poznatky a vaše zdravotní cíle.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyCs implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vaše soukromí je důležité';
	@override String get description => 'Soukromí není dodatečný prvek - je to princip návrhu. Co to znamená v praxi:';
	@override String get noAccounts => 'Žádné účty nejsou potřeba\nPoužívejte aplikaci okamžitě. Žádné registrace, žádné identity.';
	@override String noTracking({required Object appLabel}) => 'Žádné sledování chování\n${appLabel} nesleduje vaši aktivitu, nevytváří profily používání ani vás nesleduje napříč aplikacemi či webovými stránkami.';
	@override String noAds({required Object appLabel}) => 'Bez reklam díky návrhu\n${appLabel} je navržena tak, aby fungovala bez reklam nebo monetizace založené na datech.';
	@override String get noDataSelling => 'Žádné prodávání dat\nVaše zdravotní údaje nejsou nikdy prodávány ani sdíleny s třetími stranami.';
	@override String get localStorage => 'Úložiště na místě\nVaše data zůstávají na vašem zařízení.';
	@override String get privacyPolicy => 'Zásady ochrany osobních údajů';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperCs implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vytvořeno nezávislým vývojářem';
	@override String description({required Object appLabel}) => '${appLabel} je vyvinutá a udržovaná jedním nezávislým vývojářem, který se soustředí na tvorbu klidného, soukromí respektujícího zdravotního softwaru.\n\nZpětná vazba je čtena osobně a pomáhá utvářet směr aplikace.';
	@override String get website => 'Webové stránky';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackCs implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Líbí se vám ${appLabel}?';
	@override String description({required Object appLabel}) => 'Vaše zpětná vazba pomáhá zlepšovat ${appLabel} pro všechny.';
	@override String get rateApp => 'Ohodnoťte na Play Store';
	@override String get sendFeedback => 'Odeslat zpětnou vazbu';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeCs implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Velikost porce';
	@override String get description => 'Přesnost odhadů silně závisí na vašem správném vyhodnocení velikosti porce.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsCs implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metody přípravy';
	@override String description({required Object appLabel}) => 'Způsoby přípravy mohou značně ovlivnit nutriční obsah potravin. Odhady ${appLabel} nemusí vždy zohlednit tyto variace.';
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
	@override String description({required Object appLabel}) => 'Databáze potravin ${appLabel} je rozsáhlá, ale nemusí obsahovat každou jednotlivou potravinu nebo její variantu.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyCs implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Přesnost kalorií';
	@override String get description => 'Tento odhad je pouze tak přesný, jak přesně sledujete příjem a výdej kalorií. Nepřesné zaznamenávání povede k nepřesnému odhadu.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsCs implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologické faktory';
	@override String description({required Object appLabel}) => 'Skutečná ztráta/přírůstek hmotnosti je ovlivněna metabolismem, hormony, spánkem, stresem, hydratací a jinými individuálními faktory, které ${appLabel} nemůže změřit.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightCs implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hmotnost vody a výkyvy';
	@override String get description => 'Normální denní hmotnost se může výrazně lišit kvůli zadržování vody, trávení a časování. Odhad nezohledňuje tyto každodenní změny.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceCs implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odborné poradenství';
	@override String get description => 'Nepoužívejte tento odhad k lékařským rozhodnutím. Vždy se poraďte s odborníkem na zdraví nebo registrovaným dietologem pro personalizované rady ohledně řízení hmotnosti.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrCs implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Bazální metabolická rychlost (BMR) je počet kalorií, které vaše tělo spálí v klidu, aby udrželo základní funkce jako je dýchání a oběh. BMR závisí na vašem věku, pohlaví, výšce a hmotnosti. Vyšší BMR znamená, že vaše tělo přirozeně spaluje více kalorií v klidu, často díky větší svalové hmotě, mladšímu věku nebo mužskému pohlaví. Nižší BMR obvykle naznačuje méně svalové hmoty, vyšší věk nebo ženské pohlaví.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeCs implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Celkový denní výdej energie (TDEE) je celkový počet kalorií, které spálíte za den, včetně vašeho BMR plus kalorií z fyzické aktivity a denního pohybu. TDEE závisí na vašem BMR a úrovni aktivity. Vyšší TDEE znamená, že spálíte více kalorií celkově, obvykle díky větší aktivitě nebo vyššímu BMR. Nižší TDEE naznačuje méně denní aktivity nebo nižší BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalCs implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Denní cíl';
	@override String get description => 'Denní cíl je vaše doporučená denní příjem kalorií na základě vašeho TDEE a cílové hmotnosti. Při hubnutí konzumujete méně kalorií než vaše TDEE. Pro udržení hmotnosti odpovídáte svému TDEE. Při přibírání na váze konzumujete více kalorií než vaše TDEE. To vám pomůže dosáhnout požadované změny hmotnosti zdravým tempem.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedCs implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Číst celkové spálené kalorie';
	@override String get description => 'Umožňuje aplikaci číst vaše celkové spálené kalorie ze zdravotního spojení.';
	@override String get usage => 'Toto oprávnění se používá k zobrazení vašeho denního spáleného množství kalorií v aplikaci, což vám pomůže pochopit váš celkový energetický výdej během dne.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadCs implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Číst údaje o výživě';
	@override String get description => 'Umožňuje aplikaci číst údaje o výživě ze zdravotního spojení.';
	@override String get usage => 'Toto oprávnění umožňuje aplikaci číst informace o výživě, které mohly být zapsány jinými aplikacemi připojenými ke zdravotnímu spojení, a poskytuje komplexní přehled o vaší výživě.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteCs implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zapsat údaje o výživě';
	@override String get description => 'Umožňuje aplikaci zapsat údaje o výživě do zdravotního spojení.';
	@override String get usage => 'Toto oprávnění umožňuje aplikaci synchronizovat vaše zapsané jídla do zdravotního spojení, což činí vaše údaje o výživě dostupné pro další aplikace týkající se zdraví a fitness, které používáte.';
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
			'onboarding.welcome' => ({required Object appLabel}) => 'Vítejte v ${appLabel}',
			'onboarding.subtitle' => 'Váš osobní nutriční společník, který využívá umělou inteligenci',
			'onboarding.getStarted' => 'Začít',
			'onboarding.features.foodRecognition.title' => 'Chytré rozpoznávání potravin',
			'onboarding.features.foodRecognition.description' => 'Vyfoťte jídlo a nechte umělou inteligenci identifikovat váš pokrm',
			'onboarding.features.aiAnalysis.title' => 'Analýza AI',
			'onboarding.features.aiAnalysis.description' => 'Získejte okamžité nutriční informace z vašich popisů',
			'onboarding.features.healthIntegration.title' => 'Integrace se zdravím',
			'onboarding.features.healthIntegration.description' => 'Propojte se s Health Connect pro lepší přehledy',
			'onboarding.gender.title' => 'Jaké je vaše pohlaví?',
			'onboarding.gender.description' => 'Pohlaví nám pomáhá přesně vypočítat váš bazální metabolismus (BMR).',
			'onboarding.gender.next' => 'Další',
			'onboarding.height.title' => 'Jak vysoký/á jste?',
			'onboarding.height.description' => 'Vaše výška nám pomáhá přesně vypočítat váš BMI a energetické potřeby.',
			'onboarding.height.metric' => 'Metrické',
			'onboarding.height.imperial' => 'Imperiální',
			'onboarding.height.next' => 'Další',
			'onboarding.weight.currentTitle' => 'Jaká je vaše aktuální hmotnost?',
			'onboarding.weight.currentDescription' => 'Vaše aktuální hmotnost je zásadní pro personalizaci vašich denních cílů.',
			'onboarding.weight.targetTitle' => 'Jaká je vaše cílová hmotnost?',
			'onboarding.weight.targetDescription' => 'Nastavení cílové hmotnosti nám pomůže určit váš dlouhodobý plán.',
			'onboarding.weight.metric' => 'Metrické',
			'onboarding.weight.imperial' => 'Imperiální',
			'onboarding.weight.next' => 'Další',
			'onboarding.age.title' => 'Kdy máte narozeniny?',
			'onboarding.age.description' => 'Váš věk nám pomáhá přesně vypočítat vaše kalorické potřeby.',
			'onboarding.age.next' => 'Další',
			'onboarding.bmiScale.underweight' => 'Podváha',
			'onboarding.bmiScale.healthy' => 'Zdravá hmotnost',
			'onboarding.bmiScale.overweight' => 'Nadváha',
			'onboarding.bmiScale.obese' => 'Obezita',
			'onboarding.bmiScale.categories.underweight' => 'Podváha',
			'onboarding.bmiScale.categories.healthyWeight' => 'Zdravá hmotnost',
			'onboarding.bmiScale.categories.overweight' => 'Nadváha',
			'onboarding.bmiScale.categories.obese' => 'Obezita',
			'onboarding.bmiScale.messages.underweight' => 'Můžeme vám pomoci vytvořit zdravý plán, abyste dosáhli vyvážené hmotnosti s výživnými jídly.',
			'onboarding.bmiScale.messages.healthy' => 'Skvěle! Jste v zdravém rozmezí. Pomůžeme vám udržet vaši vitalitu a energii.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} vám usnadní cestu pomocí sledování na bázi AI, které vám pomůže dosáhnout vašich cílů s lehkostí.',
			'onboarding.bmiScale.messages.obese' => 'Jsme tu, abychom vás podpořili s personalizovaným poradenstvím a udržitelnými strategiemi pro vaše zdraví.',
			'onboarding.weightGoal.title' => 'Jaký je váš cíl?',
			'onboarding.weightGoal.description' => 'Vyberte cíl, který nejlépe vystihuje to, co chcete dosáhnout',
			'onboarding.activityLevel.title' => 'Jak aktivní jste?',
			'onboarding.activityLevel.description' => 'To nám pomáhá přesněji vypočítat vaše denní kalorické potřeby',
			'onboarding.healthConnect.title' => 'Propojte se s Health Connect',
			'onboarding.healthConnect.description' => 'Synchronizujte svá zdravotní data pro lepší přehledy a automatické sledování kalorií',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatické sledování kalorií',
			'onboarding.healthConnect.automaticTracking.description' => 'Sledujte spálené kalorie z vašich fitness aplikací',
			'onboarding.healthConnect.progressInsights.title' => 'Přehled pokroku',
			'onboarding.healthConnect.progressInsights.description' => 'Získejte podrobné přehledy o vašich zdravotních trendech',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Bezproblémová integrace',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronizujte data z vašich oblíbených zdravotních aplikací',
			'onboarding.healthConnect.connected' => 'Health Connect připojeno',
			'onboarding.healthConnect.notConnected' => 'Health Connect není připojeno',
			'onboarding.healthConnect.setup' => 'Nastavit Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Přeskočit nyní',
			'onboarding.healthConnect.statusConnected' => 'Health Connect je připojeno.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect byl úspěšně připojen!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Odmítnuto. Prosím, povolte oprávnění pro Health Connect v nastavení vašeho telefonu pro ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Chyba při nastavování Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nejste sami',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Výzkum ukazuje, že konzistentní sledování je prvním prediktorem dlouhodobého úspěchu.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Pro ${age}-letého ${gender}, který se snaží ${goal}, je konzistentní sledování prvním prediktorem úspěchu.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} to dělá 10x snazší než to dělat ručně.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Připraveni začít?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Pořiďte fotografii svých jídel pro okamžitou analýzu',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Zaznamenávejte pravidelně, abyste viděli smysluplný pokrok',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Sledujte svůj pokrok denně, abyste zůstali motivováni',
			'onboarding.reinforcement.trackingSuccess.button' => 'Jdeme na to',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'osoba',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'zdravější vy',
			'onboarding.reinforcement.healthProfile.title' => 'Váš zdravotní profil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Na základě vašich údajů je vaše BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Dokončeme váš profil pro přizpůsobení vašeho zážitku.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'přibrat',
			'onboarding.reinforcement.healthProfile.goalLose' => 'zhubnout',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Abychom dosáhli vašeho cíle, budete ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Jste na své cílové hmotnosti! Pomůžeme vám ji udržet.',
			'onboarding.reinforcement.healthProfile.button' => 'Jdeme na to',
			'onboarding.reinforcement.goalLifestyle.title' => 'Skvělý začátek!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Udělal(a) jste první krok směrem k ${goalText}. Protože jste ${activityText}, ${appLabel} upraví vaše cíle tak, aby odpovídaly vašemu životnímu stylu.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personalizované cíle v kaloriích',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Detekce jídel pomocí AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Podrobné rozdělení makroživin',
			'onboarding.reinforcement.goalLifestyle.button' => 'Jdeme na to',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'vašim cílům',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktivní',
			'tabs.dashboard' => 'Nástěnka',
			'tabs.history' => 'Historie',
			'home.dailyGoal.title' => 'Nastavte si svůj denní cíl',
			'home.dailyGoal.titleSet' => 'Váš denní cíl',
			'home.dailyGoal.description' => 'Připraveni na začátek vaší wellness cesty? Nastavte si svůj denní kalorický cíl níže, abyste zahájili svůj pokrok.',
			'home.dailyGoal.descriptionSet' => 'Vaše kompas je nastaven! Toto je váš denní kalorický cíl, který vás povede.',
			'home.dailyGoal.yourGoal' => 'Váš cíl',
			'home.dailyGoal.dailyCalories' => 'Denní kalorie (kcal)',
			'home.dailyGoal.setGoal' => 'Nastavit cíl',
			'home.dailyGoal.intake' => 'Příjem',
			'home.dailyGoal.burned' => 'Spálené',
			'home.dailyGoal.weightImpact' => 'Dopad na hmotnost',
			'home.dailyGoal.estLoss' => 'Odhadovaná ztráta',
			'home.dailyGoal.estGain' => 'Odhadované zvýšení',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Denní shrnutí',
			'home.dailySummary.calories' => 'Kalorie',
			'home.dailySummary.carbs' => 'Sacharidy',
			'home.dailySummary.protein' => 'Bílkoviny',
			'home.dailySummary.fat' => 'Tuky',
			'home.dailySummary.fiber' => 'Vláknina',
			'home.intakeProgress.title' => 'Dnešní rozdělení makroživin',
			'home.intakeProgress.target' => 'Cíl',
			'home.intakeProgress.current' => 'Aktuální',
			'home.intakeHistory.title' => 'Historie makroživin za 7 dní',
			'home.intakeHistory.noHistoryYet' => 'Žádná historie zatím',
			'home.intakeHistory.startLogging' => 'Začněte zaznamenávat jídla, abyste zde viděli\ntrendy makroživin za 7 dní',
			'home.mealLog.title' => 'Zaznamenaná jídla',
			'home.mealLog.emptyMessage' => 'Vyfoťte obrázek vašeho posledního jídla, aby se zaznamenalo zde.',
			'home.mealLog.noMealsToday' => 'Žádná jídla nebyla zaznamenána pro dnešek',
			'home.mealLog.seeAllMeals' => 'Zobrazit všechna jídla',
			'home.mealDescription.title' => 'Rychlé přidání s AI',
			'home.mealDescription.description' => 'Popište své jídlo a nechte AI se postarat o detaily.',
			'home.mealDescription.hint' => 'např. Na snídani jsem měl velkou misku ovesné kaše s plátkem banánu a dávku syrovátkového proteinu...',
			'home.mealDescription.analyzeMeal' => 'Analyzovat jídlo',
			'home.favoriteMeals.title' => 'Oblíbená jídla',
			'home.favoriteMeals.description' => 'Rychle přidejte jedno z vašich oblíbených jídel.',
			'home.favoriteMeals.noFavorites' => 'Žádná oblíbená jídla zatím.',
			'home.favoriteMeals.addFavoriteHint' => 'Klikněte na hvězdičku u jídla, abyste jej označili jako oblíbené.',
			'home.favoriteMeals.seeAll' => 'Zobrazit všechna',
			'home.favoriteMeals.add' => 'Přidat',
			'home.mealSnap.title' => 'Vyfoťte a sledujte své jídlo',
			'home.mealSnap.description' => 'Použijte svoji kameru, abyste vyfotili své jídlo pro analýzu AI.',
			'home.mealSnap.openCamera' => 'Otevřít kameru',
			'home.mealSnap.gallery' => 'Galerie',
			'home.connectHealth.title' => 'Synchronizujte s Health Connect',
			'home.connectHealth.description' => 'Synchronizujte svá nutriční data s Health Connect',
			'home.connectHealth.install' => 'Nainstalovat',
			'home.connectHealth.connect' => 'Propojit',
			'history.noMeals' => 'Žádná jídla nebyla zaznamenána',
			'history.emptyMessage' => 'Vyfoťte obrázek vašeho posledního jídla, aby se zaznamenalo zde.',
			'history.today' => 'Dnes',
			'history.yesterday' => 'Včera',
			'meal.ohNo' => 'Ach ne!',
			'meal.delete' => 'Smazat',
			'meal.editMeal' => 'Upravit jídlo',
			'meal.addMeal' => 'Přidat jídlo',
			'meal.saveMeal' => 'Uložit jídlo',
			'meal.save' => 'Uložit',
			'meal.mealName' => 'Název jídla',
			'meal.mealNameHint' => 'např. míchaná vajíčka s toustem',
			'meal.mealQuantity' => 'Množství jídla',
			'meal.mealQuantityHint' => 'např. 1 miska, 2 plátky',
			'meal.timeOfMeal' => 'Čas jídla',
			'meal.timeOfMealHint' => 'Vyberte čas, kdy jste měli své jídlo',
			'meal.mealType' => 'Typ jídla',
			'meal.nutrition.calories' => 'Kalorie',
			'meal.nutrition.carbs' => 'Sacharidy (g)',
			'meal.nutrition.protein' => 'Bílkoviny (g)',
			'meal.nutrition.fat' => 'Tuky (g)',
			'meal.nutrition.fiber' => 'Vláknina (g)',
			'meal.deleteConfirmation.title' => 'Smazat jídlo',
			'meal.deleteConfirmation.message' => 'Opravdu chcete smazat tento záznam o jídle?',
			'meal.deleteConfirmation.cancel' => 'Storno',
			'meal.deleteConfirmation.delete' => 'Smazat',
			'meal.addedToLog' => 'Jídlo bylo přidáno do vašeho deníku!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nelze přidat jídlo: ${error}',
			'meal.savedSuccessfully' => 'Jídlo bylo úspěšně přidáno!',
			'meal.updatedSuccessfully' => 'Jídlo bylo úspěšně aktualizováno!',
			'meal.errorSaving' => ({required Object error}) => 'Chyba při ukládání jídla: ${error}',
			'meal.removedFromFavorites' => 'Odebráno z oblíbených!',
			'meal.savedAsFavorite' => 'Jídlo bylo uloženo jako oblíbené!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nelze aktualizovat oblíbené: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Nepodařilo se zpracovat: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Nepodařilo se zpracovat obrázek: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Chyba při kompresi obrázku: ${error}',
			'meal.failedToSave' => 'Nepodařilo se uložit data. Zkuste to prosím znovu.',
			'meal.skip' => 'Přeskočit',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Otázka ${current} z ${total}',
			'meal.variation.noVariationsAvailable' => 'Nejsou dostupné žádné varianty',
			'favorites.title' => 'Oblíbené',
			'favorites.empty' => 'Žádná oblíbená jídla zatím.',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Nebyla nalezena žádná data profilu',
			'profile.yourProfile' => 'Váš profil',
			'profile.viewAndManage' => 'Zobrazte a spravujte své zdravotní informace',
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
			'profile.healthMetrics' => 'Zdravotní metriky',
			'profile.notSet' => 'Nastaveno není',
			'profile.years' => 'roky',
			'profile.updatedSuccessfully' => 'Profil byl úspěšně aktualizován!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Denní cíl',
			'profile.calculatedValues.calPerDay' => 'kal/den',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Zdravotní skóre',
			'healthScore.whyThisScore' => 'Proč toto skóre?',
			'healthScore.note' => 'Toto skóre je odhad AI založený na identifikovaných ingrediencích a nutriční hustotě. Vždy se poraďte s odborníkem ohledně výživového poradenství.',
			'healthScore.unhealthy' => 'Nezdravé',
			'healthScore.healthy' => 'Zdravé',
			'healthScore.neutral' => 'Neutrální',
			'editProfile.title' => 'Upravit profil',
			'editProfile.sections.personalInformation' => 'OSOBNÍ INFORMACE',
			'editProfile.sections.physicalMeasurements' => 'FYZICKÉ ROZMĚRY',
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
			'editProfile.weightGoals.loseWeight.description' => 'Vytvořte kalorický deficit, abyste zhubli',
			'editProfile.weightGoals.maintainWeight.name' => 'Udržet hmotnost',
			'editProfile.weightGoals.maintainWeight.description' => 'Udržujte svou aktuální hmotnost',
			'editProfile.weightGoals.gainWeight.name' => 'Přibrat na váze',
			'editProfile.weightGoals.gainWeight.description' => 'Vytvořte kalorický přebytek, abyste nabrali na váze',
			'editProfile.activityLevels.sedentary.name' => 'Sedavý',
			'editProfile.activityLevels.sedentary.description' => 'Málo až žádné cvičení',
			'editProfile.activityLevels.lightlyActive.name' => 'Lehce aktivní',
			'editProfile.activityLevels.lightlyActive.description' => 'Lehká aktivita 1-3 dny/týden',
			'editProfile.activityLevels.moderatelyActive.name' => 'Středně aktivní',
			'editProfile.activityLevels.moderatelyActive.description' => 'Střední cvičení 3-5 dní/týden',
			'editProfile.activityLevels.veryActive.name' => 'Velmi aktivní',
			'editProfile.activityLevels.veryActive.description' => 'Intenzivní cvičení 6-7 dní/týden',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrémně aktivní',
			'editProfile.activityLevels.extremelyActive.description' => 'Velmi intenzivní cvičení, fyzicky náročná práce',
			'settings.title' => 'Nastavení',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALIZACE',
			'settings.sections.notifications' => 'NOTIFIKACE',
			'settings.sections.healthConnect' => 'ZDRAVOTNÍ SPOJENÍ',
			'settings.sections.supportAndLegal' => 'POMOC & PRÁVNÍ',
			'settings.sections.about' => 'O APLIKACI',
			'settings.sections.dangerZone' => 'NEBEZPEČNÁ ZÓNA',
			'settings.sections.developer' => 'VÝVOJÁŘ',
			'settings.editProfile.title' => 'Upravit profil',
			'settings.editProfile.subtitle' => 'Aktualizujte své osobní informace',
			'settings.language.title' => 'Jazyk',
			'settings.language.subtitle' => 'Vyberte svůj preferovaný jazyk',
			'settings.language.searchHint' => 'Hledat jazyky...',
			'settings.language.noResults' => 'Žádné výsledky nenalezeny',
			'settings.heightUnit.title' => 'Jednotka výšky',
			'settings.weightUnit.title' => 'Jednotka hmotnosti',
			'settings.mealReminders.title' => 'Připomínky jídel',
			'settings.mealReminders.subtitle' => 'Zůstaňte na správné cestě s včasnými upozorněními',
			'settings.theme.title' => 'Téma',
			'settings.theme.light' => 'Světlé',
			'settings.theme.dark' => 'Tmavé',
			'settings.theme.system' => 'Systémové',
			'settings.sendFeedback.title' => 'Odeslat zpětnou vazbu',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Pomozte nám zlepšit ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Zpětná vazba k aplikaci ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Prosím, poskytněte zpětnou vazbu níže:',
			'settings.sendFeedback.appVersion' => 'Verze aplikace',
			'settings.sendFeedback.device' => 'Zařízení',
			'settings.sendFeedback.osVersion' => 'Verze OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Vymazat všechna data',
			'settings.clearAllData.subtitle' => 'Nevratně smažte všechny své informace',
			'settings.clearAllData.confirmationTitle' => 'Vymazat všechna data?',
			'settings.clearAllData.confirmationMessage' => 'Toto akce nelze vrátit. Všechna vaše zaznamenaná jídla, oblíbená jídla a nastavení profilu budou trvale smazána.',
			'settings.clearAllData.cancel' => 'Storno',
			'settings.clearAllData.clearEverything' => 'Smazat všechno',
			'settings.debugOptions.title' => 'Možnosti ladění',
			'settings.developerModeEnabled' => 'Režim vývojáře je povolen!',
			'settings.healthConnect.title' => 'Zdravotní spojení',
			'settings.healthConnect.subtitle' => 'Zobrazit a spravovat oprávnění',
			'settings.healthConnect.unavailable.title' => 'Health Connect není k dispozici',
			'settings.healthConnect.unavailable.description' => 'Health Connect není na tomto zařízení k dispozici. Nainstalujte si prosím Health Connect z Obchodu Play (Android 9+) nebo aktualizujte na Android 14+.',
			'settings.healthConnect.permissions.title' => 'Oprávnění',
			'settings.healthConnect.permissions.description' => 'Následující oprávnění jsou požadována k zajištění integrace zdravotního spojení:',
			'settings.healthConnect.permissions.granted' => 'Schváleno',
			'settings.healthConnect.permissions.notGranted' => 'Neschváleno',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Číst celkové spálené kalorie',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Umožňuje aplikaci číst vaše celkové spálené kalorie ze zdravotního spojení.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Toto oprávnění se používá k zobrazení vašeho denního spáleného množství kalorií v aplikaci, což vám pomůže pochopit váš celkový energetický výdej během dne.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Číst údaje o výživě',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Umožňuje aplikaci číst údaje o výživě ze zdravotního spojení.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Toto oprávnění umožňuje aplikaci číst informace o výživě, které mohly být zapsány jinými aplikacemi připojenými ke zdravotnímu spojení, a poskytuje komplexní přehled o vaší výživě.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Zapsat údaje o výživě',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Umožňuje aplikaci zapsat údaje o výživě do zdravotního spojení.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Toto oprávnění umožňuje aplikaci synchronizovat vaše zapsané jídla do zdravotního spojení, což činí vaše údaje o výživě dostupné pro další aplikace týkající se zdraví a fitness, které používáte.',
			'settings.healthConnect.managePermissions' => 'Spravovat oprávnění',
			'settings.healthConnect.openSettings' => 'Otevřít nastavení Health Connect',
			'settings.healthConnect.requestPermissions' => 'Žádat o oprávnění',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Žádost o oprávnění byla zrušena nebo selhala. Zkuste to prosím znovu nebo udělte oprávnění ručně v nastavení Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Nepodařilo se vyžádat oprávnění. Zkuste to prosím znovu nebo udělte oprávnění ručně v nastavení Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'O nás',
			'settings.about.tagline' => 'Rychlá, zdarma a s důrazem na soukromí v oblasti kalorické povědomí',
			'settings.about.ourStory.title' => 'Náš příběh',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} vzniklo z jednoduché frustrace: většina aplikací pro sledování kalorií je buď příliš složitá, vyžaduje neustálý ruční vstup, účtuje vysoké poplatky za předplatné nebo kompromituje soukromí.\n\nJako nezávislý vývojář jsem chtěl vytvořit něco jednoduššího a spravedlivějšího - aplikaci, která využívá AI k minimalizaci úsilí, zůstává rychlá a zdarma k použití a zachází s vašimi zdravotními údaji s respektem.\n\n${appLabel} je aplikace, kterou jsem si přál mít: žádné účty, žádné sledování, žádné reklamy - jen jasné, praktické poznatky a vaše zdravotní cíle.',
			'settings.about.privacy.title' => 'Vaše soukromí je důležité',
			'settings.about.privacy.description' => 'Soukromí není dodatečný prvek - je to princip návrhu. Co to znamená v praxi:',
			'settings.about.privacy.noAccounts' => 'Žádné účty nejsou potřeba\nPoužívejte aplikaci okamžitě. Žádné registrace, žádné identity.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Žádné sledování chování\n${appLabel} nesleduje vaši aktivitu, nevytváří profily používání ani vás nesleduje napříč aplikacemi či webovými stránkami.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Bez reklam díky návrhu\n${appLabel} je navržena tak, aby fungovala bez reklam nebo monetizace založené na datech.',
			'settings.about.privacy.noDataSelling' => 'Žádné prodávání dat\nVaše zdravotní údaje nejsou nikdy prodávány ani sdíleny s třetími stranami.',
			'settings.about.privacy.localStorage' => 'Úložiště na místě\nVaše data zůstávají na vašem zařízení.',
			'settings.about.privacy.privacyPolicy' => 'Zásady ochrany osobních údajů',
			'settings.about.developer.title' => 'Vytvořeno nezávislým vývojářem',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} je vyvinutá a udržovaná jedním nezávislým vývojářem, který se soustředí na tvorbu klidného, soukromí respektujícího zdravotního softwaru.\n\nZpětná vazba je čtena osobně a pomáhá utvářet směr aplikace.',
			'settings.about.developer.website' => 'Webové stránky',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Líbí se vám ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Vaše zpětná vazba pomáhá zlepšovat ${appLabel} pro všechny.',
			'settings.about.feedback.rateApp' => 'Ohodnoťte na Play Store',
			'settings.about.feedback.sendFeedback' => 'Odeslat zpětnou vazbu',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Sestavení ${buildNumber}',
			'reminders.title' => 'Zůstaňte na správné cestě s připomínkami',
			'reminders.description' => 'Získejte jemné připomínky k zaznamenávání vašich jídel a zůstaňte konzistentní s vašimi nutričními cíli',
			'reminders.notificationsEnabled' => 'Upozornění povolena',
			'reminders.notificationsDisabled' => 'Upozornění zakázána',
			'reminders.enabledSubtitle' => 'Obdržíte připomínky k jídlům',
			'reminders.disabledSubtitle' => 'Povolte oznámení, abyste dostávali připomínky k jídlům',
			'reminders.mealReminders' => 'Připomínky jídel',
			'reminders.breakfast' => 'Snídaně',
			'reminders.lunch' => 'Oběd',
			'reminders.dinner' => 'Večeře',
			'reminders.snack' => 'Svačina',
			'reminders.unknown' => 'Neznámé',
			'reminders.change' => 'Změnit',
			'reminders.enableNotifications' => 'Povolit notifikace',
			'reminders.skipForNow' => 'Přeskočit prozatím',
			'reminders.saveChanges' => 'Uložit změny',
			'reminders.enabledSuccessfully' => 'Upozornění byla úspěšně povolena!',
			'reminders.permissionDenied' => 'Povolení pro notifikace bylo zamítnuto',
			'reminders.errorEnabling' => ({required Object error}) => 'Chyba při povolování notifikací: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Chyba při dokončování nastavení: ${error}',
			'notifications.breakfast.title' => 'Čas na snídani! 🍳',
			'notifications.breakfast.body' => 'Nezapomeňte zaznamenat svou snídani',
			'notifications.lunch.title' => 'Čas na oběd! 🥗',
			'notifications.lunch.body' => 'Čas na zaznamenání oběda',
			'notifications.dinner.title' => 'Čas na večeři! 🍽️',
			'notifications.dinner.body' => 'Nezapomeňte zaznamenat svou večeři',
			'notifications.snack.title' => 'Čas na svačinu! 🍎',
			'notifications.snack.body' => 'Čas na zdravou svačinu',
			'notifications.test.title' => 'Testovací notifikace',
			'login.title' => 'Přihlášení',
			'login.signInWithGoogle' => 'Přihlásit se pomocí Google',
			'login.signInFailed' => 'Přihlášení přes Google se nezdařilo nebo bylo zrušeno.',
			'disclaimer.pleaseNote' => 'Prosím vezměte na vědomí',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} poskytuje odhadované nutriční informace. Přesnost závisí na vašem vstupu a variacích potravin. Používejte jako vodítko, nikoli jako definitivní zdroj. Konzultujte s odborníkem pro personalizované dietní rady.',
			'disclaimer.snap.portionSize.title' => 'Velikost porce',
			'disclaimer.snap.portionSize.description' => 'Přesnost odhadů silně závisí na vašem správném vyhodnocení velikosti porce.',
			'disclaimer.snap.preparationMethods.title' => 'Metody přípravy',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Způsoby přípravy mohou značně ovlivnit nutriční obsah potravin. Odhady ${appLabel} nemusí vždy zohlednit tyto variace.',
			'disclaimer.snap.ingredients.title' => 'Ingredience',
			'disclaimer.snap.ingredients.description' => 'Složitá jídla s mnoha skrytými ingrediencemi mohou vést k méně přesným odhadům.',
			'disclaimer.snap.databaseLimitations.title' => 'Omezení databáze',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Databáze potravin ${appLabel} je rozsáhlá, ale nemusí obsahovat každou jednotlivou potravinu nebo její variantu.',
			'disclaimer.weightEstimate.title' => 'Odhad hmotnosti',
			'disclaimer.weightEstimate.description' => 'Odhadovaná změna hmotnosti je teoretickým odhadem na základě jednoduchého modelu kalorického příjmu versus výdeje. Je určen pouze pro motivaci, nikoli jako předpověď vaší skutečné hmotnosti.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Přesnost kalorií',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Tento odhad je pouze tak přesný, jak přesně sledujete příjem a výdej kalorií. Nepřesné zaznamenávání povede k nepřesnému odhadu.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologické faktory',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Skutečná ztráta/přírůstek hmotnosti je ovlivněna metabolismem, hormony, spánkem, stresem, hydratací a jinými individuálními faktory, které ${appLabel} nemůže změřit.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Hmotnost vody a výkyvy',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normální denní hmotnost se může výrazně lišit kvůli zadržování vody, trávení a časování. Odhad nezohledňuje tyto každodenní změny.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Odborné poradenství',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Nepoužívejte tento odhad k lékařským rozhodnutím. Vždy se poraďte s odborníkem na zdraví nebo registrovaným dietologem pro personalizované rady ohledně řízení hmotnosti.',
			'disclaimer.healthMetrics.description' => 'Tyto metriky vám pomáhají chápat energetické potřeby vašeho těla a usměrňují vaše nutriční cíle.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Bazální metabolická rychlost (BMR) je počet kalorií, které vaše tělo spálí v klidu, aby udrželo základní funkce jako je dýchání a oběh. BMR závisí na vašem věku, pohlaví, výšce a hmotnosti. Vyšší BMR znamená, že vaše tělo přirozeně spaluje více kalorií v klidu, často díky větší svalové hmotě, mladšímu věku nebo mužskému pohlaví. Nižší BMR obvykle naznačuje méně svalové hmoty, vyšší věk nebo ženské pohlaví.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Celkový denní výdej energie (TDEE) je celkový počet kalorií, které spálíte za den, včetně vašeho BMR plus kalorií z fyzické aktivity a denního pohybu. TDEE závisí na vašem BMR a úrovni aktivity. Vyšší TDEE znamená, že spálíte více kalorií celkově, obvykle díky větší aktivitě nebo vyššímu BMR. Nižší TDEE naznačuje méně denní aktivity nebo nižší BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Denní cíl',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Denní cíl je vaše doporučená denní příjem kalorií na základě vašeho TDEE a cílové hmotnosti. Při hubnutí konzumujete méně kalorií než vaše TDEE. Pro udržení hmotnosti odpovídáte svému TDEE. Při přibírání na váze konzumujete více kalorií než vaše TDEE. To vám pomůže dosáhnout požadované změny hmotnosti zdravým tempem.',
			'common.close' => 'Zavřít',
			'common.kContinue' => 'Pokračovat',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Líbí se vám ${appLabel}? Vaše zkušenost je pro nás důležitá.',
			'feedbackRating.yes' => 'Ano, líbí se mi.',
			'feedbackRating.no' => 'Ne, moc ne.',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => '${appLabel} vytváří jedna osoba. Krátké hodnocení v Obchodě Play pomůže ostatním aplikaci najít a podpoří další vývoj — opravdu to pomáhá. Věnujete chvilku a ohodnotíte ji?',
			'feedbackRating.shareFeedbackViaEmail' => ({required Object appLabel}) => '${appLabel} vytváří jedna osoba. Vaše zpětná vazba skutečně ovlivňuje, co přijde dál — a každý vzkaz čteme. Chtěli byste své názory sdílet e-mailem?',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Zajímá vás, kdo stojí za ${appLabel}? Podívejte se ',
			'feedbackRating.aboutUsLinkLabel' => 'O nás',
			'errors.loadingProfileData' => 'Chyba při načítání dat profilu',
			'errors.somethingWentWrong' => 'Něco se pokazilo.',
			'debug.title' => 'Možnosti ladění',
			'debug.sections.notifications' => 'Notifikace',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.feedback' => 'Zpětná vazba',
			'debug.sections.dataReset' => 'Reset dat',
			'debug.sections.appInfo' => 'Informace o aplikaci',
			'debug.showActiveNotifications' => 'Zobrazit aktivní notifikace',
			'debug.scheduleTestNotification' => 'Naplánovat testovací notifikaci (10s)',
			'debug.triggerBreakfastNotification' => 'Spustit notifikaci na snídani',
			'debug.cancelAllNotifications' => 'Zrušit všechny notifikace',
			'debug.activeNotifications' => 'Aktivní notifikace',
			'debug.noTitle' => 'Žádný název',
			'debug.noBody' => 'Žádné tělo',
			'debug.fetchTodaysSteps' => 'Načíst dnešní kroky',
			'debug.fetchTodaysCalories' => 'Načíst dnešní kalorie',
			'debug.fetchLatestWeight' => 'Načíst poslední hmotnost',
			'debug.fetchLatestHeight' => 'Načíst poslední výšku',
			'debug.writeTestWeight' => 'Zapsat testovací hmotnost (70kg)',
			'debug.writeTestHeight' => 'Zapsat testovací výšku (175cm)',
			'debug.syncLast7Days' => 'Synchronizovat posledních 7 dní',
			'debug.sync7DaysTitle' => 'Synchronizace za 7 dní',
			'debug.checkCurrentLocale' => 'Zkontrolovat aktuální lokalitu',
			'debug.currentLocale' => 'Aktuální lokalita',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Jazyk: ${languageCode}\nZemě: ${countryCode}\nJednotkový systém: ${unitSystem}',
			'debug.latestWeight' => 'Nejnovější hmotnost',
			'debug.latestHeight' => 'Nejnovější výška',
			'debug.todaysCalories' => 'Dnešní kalorie',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Celkové spálené kalorie: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Úspěšně načteno ${count} datových bodů pro kroky, kalorie a hmotnost za posledních 7 dní.',
			'debug.noWeightData' => 'Žádná hmotnostní data nalezena za posledních 30 dní.',
			'debug.noHeightData' => 'Žádná výška data nalezena za poslední rok.',
			'debug.noCalorieData' => 'Žádná data o kaloriích nalezena pro dnešek.',
			'debug.weightWritten' => 'Úspěšně zapsána testovací hmotnost (70kg).',
			'debug.weightWriteFailed' => 'Nepodařilo se zapsat testovací hmotnost.',
			'debug.heightWritten' => 'Úspěšně zapsána testovací výška (175cm).',
			'debug.heightWriteFailed' => 'Nepodařilo se zapsat testovací výšku.',
			'debug.noNotifications' => 'Žádné aktivní notifikace.',
			'debug.testNotificationScheduled' => 'Testovací notifikace naplánována na 10 sekund.',
			'debug.testNotificationBody' => 'Toto je testovací notifikace naplánovaná na 10 sekund.',
			'debug.breakfastNotificationTriggered' => 'Notifikace na snídani byla spuštěna.',
			'debug.allNotificationsCancelled' => 'Všechny notifikace byly zrušeny.',
			'debug.fetchingData' => 'Načítám data za posledních 7 dní...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'debug.showFeedbackRatingSheet' => 'Zobrazit formulář pro zpětnou vazbu / hodnocení',
			'debug.clearUserPreferences' => 'Vymazat uživatelská nastavení',
			'debug.clearUserPreferencesConfirmationTitle' => 'Vymazat uživatelská nastavení?',
			'debug.clearUserPreferencesConfirmationMessage' => 'Téma, jazyk a nastavení týkající se zpětné vazby budou resetovány. Jídla a profil nebudou ovlivněny.',
			'debug.clearUserProfile' => 'Vymazat uživatelský profil',
			'debug.clearUserProfileConfirmationTitle' => 'Vymazat uživatelský profil?',
			'debug.clearUserProfileConfirmationMessage' => 'Data vašeho profilu (denní cíl, výška, váha atd.) budou vymazána. Jídla a nastavení nebudou ovlivněny.',
			'debug.clear' => 'Vymazat',
			'debug.cancel' => 'Zrušit',
			'health.syncFailed' => 'Nedaří se synchronizovat s Health Connect',
			'health.mealSynced' => 'Jídlo synchronizováno s Health Connect',
			_ => null,
		};
	}
}
