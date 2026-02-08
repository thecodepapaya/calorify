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
class TranslationsHu with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hu,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hu>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsHu _root = this; // ignore: unused_field

	@override 
	TranslationsHu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHu(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Magyar';
	@override String get flag => '🇭🇺';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingHu onboarding = _TranslationsOnboardingHu._(_root);
	@override late final _TranslationsTabsHu tabs = _TranslationsTabsHu._(_root);
	@override late final _TranslationsHomeHu home = _TranslationsHomeHu._(_root);
	@override late final _TranslationsHistoryHu history = _TranslationsHistoryHu._(_root);
	@override late final _TranslationsMealHu meal = _TranslationsMealHu._(_root);
	@override late final _TranslationsFavoritesHu favorites = _TranslationsFavoritesHu._(_root);
	@override late final _TranslationsProfileHu profile = _TranslationsProfileHu._(_root);
	@override late final _TranslationsHealthScoreHu healthScore = _TranslationsHealthScoreHu._(_root);
	@override late final _TranslationsEditProfileHu editProfile = _TranslationsEditProfileHu._(_root);
	@override late final _TranslationsSettingsHu settings = _TranslationsSettingsHu._(_root);
	@override late final _TranslationsRemindersHu reminders = _TranslationsRemindersHu._(_root);
	@override late final _TranslationsNotificationsHu notifications = _TranslationsNotificationsHu._(_root);
	@override late final _TranslationsLoginHu login = _TranslationsLoginHu._(_root);
	@override late final _TranslationsDisclaimerHu disclaimer = _TranslationsDisclaimerHu._(_root);
	@override late final _TranslationsCommonHu common = _TranslationsCommonHu._(_root);
	@override late final _TranslationsFeedbackRatingHu feedbackRating = _TranslationsFeedbackRatingHu._(_root);
	@override late final _TranslationsErrorsHu errors = _TranslationsErrorsHu._(_root);
	@override late final _TranslationsDebugHu debug = _TranslationsDebugHu._(_root);
	@override late final _TranslationsHealthHu health = _TranslationsHealthHu._(_root);
}

// Path: onboarding
class _TranslationsOnboardingHu implements TranslationsOnboardingEn {
	_TranslationsOnboardingHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Üdvözöljük a(z) ${appLabel} alkalmazásban';
	@override String get subtitle => 'Személyes táplálkozási társ, amelyet az AI hajt';
	@override String get getStarted => 'Kezdjük el';
	@override late final _TranslationsOnboardingFeaturesHu features = _TranslationsOnboardingFeaturesHu._(_root);
	@override late final _TranslationsOnboardingGenderHu gender = _TranslationsOnboardingGenderHu._(_root);
	@override late final _TranslationsOnboardingHeightHu height = _TranslationsOnboardingHeightHu._(_root);
	@override late final _TranslationsOnboardingWeightHu weight = _TranslationsOnboardingWeightHu._(_root);
	@override late final _TranslationsOnboardingAgeHu age = _TranslationsOnboardingAgeHu._(_root);
	@override late final _TranslationsOnboardingBmiScaleHu bmiScale = _TranslationsOnboardingBmiScaleHu._(_root);
	@override late final _TranslationsOnboardingWeightGoalHu weightGoal = _TranslationsOnboardingWeightGoalHu._(_root);
	@override late final _TranslationsOnboardingActivityLevelHu activityLevel = _TranslationsOnboardingActivityLevelHu._(_root);
	@override late final _TranslationsOnboardingHealthConnectHu healthConnect = _TranslationsOnboardingHealthConnectHu._(_root);
	@override late final _TranslationsOnboardingReinforcementHu reinforcement = _TranslationsOnboardingReinforcementHu._(_root);
}

// Path: tabs
class _TranslationsTabsHu implements TranslationsTabsEn {
	_TranslationsTabsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Irányítópult';
	@override String get history => 'Történelem';
}

// Path: home
class _TranslationsHomeHu implements TranslationsHomeEn {
	_TranslationsHomeHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalHu dailyGoal = _TranslationsHomeDailyGoalHu._(_root);
	@override late final _TranslationsHomeDailySummaryHu dailySummary = _TranslationsHomeDailySummaryHu._(_root);
	@override late final _TranslationsHomeIntakeProgressHu intakeProgress = _TranslationsHomeIntakeProgressHu._(_root);
	@override late final _TranslationsHomeIntakeHistoryHu intakeHistory = _TranslationsHomeIntakeHistoryHu._(_root);
	@override late final _TranslationsHomeMealLogHu mealLog = _TranslationsHomeMealLogHu._(_root);
	@override late final _TranslationsHomeMealDescriptionHu mealDescription = _TranslationsHomeMealDescriptionHu._(_root);
	@override late final _TranslationsHomeFavoriteMealsHu favoriteMeals = _TranslationsHomeFavoriteMealsHu._(_root);
	@override late final _TranslationsHomeMealSnapHu mealSnap = _TranslationsHomeMealSnapHu._(_root);
	@override late final _TranslationsHomeConnectHealthHu connectHealth = _TranslationsHomeConnectHealthHu._(_root);
}

// Path: history
class _TranslationsHistoryHu implements TranslationsHistoryEn {
	_TranslationsHistoryHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Nincs rögzített étkezés';
	@override String get emptyMessage => 'Készíts egy képet az utolsó étkezésedről, hogy itt be tudd jegyezni.';
	@override String get today => 'Ma';
	@override String get yesterday => 'Tegnap';
}

// Path: meal
class _TranslationsMealHu implements TranslationsMealEn {
	_TranslationsMealHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Ó, nem!';
	@override String get delete => 'Törlés';
	@override String get editMeal => 'Étkezés szerkesztése';
	@override String get addMeal => 'Étkezés hozzáadása';
	@override String get saveMeal => 'Étkezés mentése';
	@override String get save => 'Mentés';
	@override String get mealName => 'Étkezés neve';
	@override String get mealNameHint => 'pl. Rántotta pirítóssal';
	@override String get mealQuantity => 'Étkezés mennyiség';
	@override String get mealQuantityHint => 'pl. 1 tál, 2 szelet';
	@override String get timeOfMeal => 'Étkezés időpontja';
	@override String get timeOfMealHint => 'Válaszd ki, mikor volt az étkezésed';
	@override String get mealType => 'Étkezés típusa';
	@override late final _TranslationsMealNutritionHu nutrition = _TranslationsMealNutritionHu._(_root);
	@override late final _TranslationsMealDeleteConfirmationHu deleteConfirmation = _TranslationsMealDeleteConfirmationHu._(_root);
	@override String get addedToLog => 'Étkezés hozzáadva a naplóhoz!';
	@override String couldNotAdd({required Object error}) => 'Nem lehetett étkezést hozzáadni: ${error}';
	@override String get savedSuccessfully => 'Étkezés sikeresen hozzáadva!';
	@override String get updatedSuccessfully => 'Étkezés sikeresen frissítve!';
	@override String errorSaving({required Object error}) => 'Hiba az étkezés mentésekor: ${error}';
	@override String get removedFromFavorites => 'Eltávolítva a kedvencek közül!';
	@override String get savedAsFavorite => 'Étkezés mentve kedvencként!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nem lehetett frissíteni a kedvencet: ${error}';
	@override String failedToProcess({required Object error}) => 'A feldolgozás nem sikerült: ${error}';
	@override String failedToProcessImage({required Object error}) => 'A kép feldolgozása nem sikerült: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Hiba a kép tömörítésekor: ${error}';
	@override String get failedToSave => 'Az adatok mentése nem sikerült. Kérlek próbáld újra.';
	@override String get skip => 'Kihagyás';
	@override late final _TranslationsMealVariationHu variation = _TranslationsMealVariationHu._(_root);
}

// Path: favorites
class _TranslationsFavoritesHu implements TranslationsFavoritesEn {
	_TranslationsFavoritesHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kedvencek';
	@override String get empty => 'Még nincs kedvenc étkezés.';
}

// Path: profile
class _TranslationsProfileHu implements TranslationsProfileEn {
	_TranslationsProfileHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Nincs profil adat';
	@override String get yourProfile => 'A Te Profilod';
	@override String get viewAndManage => 'Tekintsd meg és kezeld egészségügyi információidat';
	@override late final _TranslationsProfileSectionsHu sections = _TranslationsProfileSectionsHu._(_root);
	@override String get gender => 'Nem';
	@override String get height => 'Magasság';
	@override String get weight => 'Súly';
	@override String get age => 'Kor';
	@override String get weightGoal => 'Súlycél';
	@override String get targetWeight => 'Cél Súly';
	@override String get activityLevel => 'Aktivitási szint';
	@override String get healthMetrics => 'Egészségügyi mutatók';
	@override String get notSet => 'Nincs beállítva';
	@override String get years => 'év';
	@override String get updatedSuccessfully => 'Profil sikeresen frissítve!';
	@override late final _TranslationsProfileCalculatedValuesHu calculatedValues = _TranslationsProfileCalculatedValuesHu._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreHu implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Egészségi Score';
	@override String get whyThisScore => 'Miért ez a pontszám?';
	@override String get note => 'Ez a pontszám egy AI becslés azonosított összetevők és tápanyag sűrűség alapján. Mindig konzultálj szakemberrel diétás tanácsadásért.';
	@override String get unhealthy => 'Egészségtelen';
	@override String get healthy => 'Egészséges';
	@override String get neutral => 'Semleges';
}

// Path: editProfile
class _TranslationsEditProfileHu implements TranslationsEditProfileEn {
	_TranslationsEditProfileHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil Szerkesztése';
	@override late final _TranslationsEditProfileSectionsHu sections = _TranslationsEditProfileSectionsHu._(_root);
	@override String get gender => 'Nem';
	@override String get dateOfBirth => 'Születési Dátum';
	@override String get height => 'Magasság';
	@override String get weight => 'Súly';
	@override String get weightGoal => 'Súlycél';
	@override String get activityLevel => 'Aktivitási szint';
	@override String get metric => 'Metrikus';
	@override String get imperial => 'Imperiális';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metrikus (cm)';
	@override String get imperialFtIn => 'Imperiális (láb/hüvelyk)';
	@override String get metricKg => 'Metrikus (kg)';
	@override String get imperialLbs => 'Imperiális (font)';
	@override late final _TranslationsEditProfileGendersHu genders = _TranslationsEditProfileGendersHu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsHu weightGoals = _TranslationsEditProfileWeightGoalsHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsHu activityLevels = _TranslationsEditProfileActivityLevelsHu._(_root);
}

// Path: settings
class _TranslationsSettingsHu implements TranslationsSettingsEn {
	_TranslationsSettingsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beállítások';
	@override late final _TranslationsSettingsSectionsHu sections = _TranslationsSettingsSectionsHu._(_root);
	@override late final _TranslationsSettingsEditProfileHu editProfile = _TranslationsSettingsEditProfileHu._(_root);
	@override late final _TranslationsSettingsLanguageHu language = _TranslationsSettingsLanguageHu._(_root);
	@override late final _TranslationsSettingsHeightUnitHu heightUnit = _TranslationsSettingsHeightUnitHu._(_root);
	@override late final _TranslationsSettingsWeightUnitHu weightUnit = _TranslationsSettingsWeightUnitHu._(_root);
	@override late final _TranslationsSettingsMealRemindersHu mealReminders = _TranslationsSettingsMealRemindersHu._(_root);
	@override late final _TranslationsSettingsThemeHu theme = _TranslationsSettingsThemeHu._(_root);
	@override late final _TranslationsSettingsSendFeedbackHu sendFeedback = _TranslationsSettingsSendFeedbackHu._(_root);
	@override late final _TranslationsSettingsClearAllDataHu clearAllData = _TranslationsSettingsClearAllDataHu._(_root);
	@override late final _TranslationsSettingsDebugOptionsHu debugOptions = _TranslationsSettingsDebugOptionsHu._(_root);
	@override String get developerModeEnabled => 'Fejlesztő mód engedélyezve!';
	@override late final _TranslationsSettingsHealthConnectHu healthConnect = _TranslationsSettingsHealthConnectHu._(_root);
	@override late final _TranslationsSettingsAboutHu about = _TranslationsSettingsAboutHu._(_root);
	@override late final _TranslationsSettingsAppInfoHu appInfo = _TranslationsSettingsAppInfoHu._(_root);
}

// Path: reminders
class _TranslationsRemindersHu implements TranslationsRemindersEn {
	_TranslationsRemindersHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tartsd az ütemet emlékeztetőkkel';
	@override String get description => 'Kapsz enyhe emlékeztetőket, hogy naplózd az étkezéseidet és következetes maradj táplálkozási céljaidnál';
	@override String get notificationsEnabled => 'Értesítések Engedélyezve';
	@override String get notificationsDisabled => 'Értesítések Letiltva';
	@override String get enabledSubtitle => 'Érkezni fognak étkezés emlékeztetők';
	@override String get disabledSubtitle => 'Engedélyezd az értesítéseket az étkezés emlékeztetők megszerzéséhez';
	@override String get mealReminders => 'Étkezés Emlékeztetők';
	@override String get breakfast => 'Reggeli';
	@override String get lunch => 'Ebéd';
	@override String get dinner => 'Vacsora';
	@override String get snack => 'Uzsonna';
	@override String get unknown => 'Ismeretlen';
	@override String get change => 'Változtatás';
	@override String get enableNotifications => 'Értesítések Engedélyezése';
	@override String get skipForNow => 'Most kihagy';
	@override String get saveChanges => 'Változások Mentése';
	@override String get enabledSuccessfully => 'Értesítések sikeresen engedélyezve!';
	@override String get permissionDenied => 'Értesítési engedély megtagadva';
	@override String errorEnabling({required Object error}) => 'Hiba az értesítések engedélyezésekor: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Hiba a beállítások befejezésében: ${error}';
}

// Path: notifications
class _TranslationsNotificationsHu implements TranslationsNotificationsEn {
	_TranslationsNotificationsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastHu breakfast = _TranslationsNotificationsBreakfastHu._(_root);
	@override late final _TranslationsNotificationsLunchHu lunch = _TranslationsNotificationsLunchHu._(_root);
	@override late final _TranslationsNotificationsDinnerHu dinner = _TranslationsNotificationsDinnerHu._(_root);
	@override late final _TranslationsNotificationsSnackHu snack = _TranslationsNotificationsSnackHu._(_root);
	@override late final _TranslationsNotificationsTestHu test = _TranslationsNotificationsTestHu._(_root);
}

// Path: login
class _TranslationsLoginHu implements TranslationsLoginEn {
	_TranslationsLoginHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bejelentkezés';
	@override String get signInWithGoogle => 'Bejelentkezés Google-lal';
	@override String get signInFailed => 'A Google-bejelentkezés sikertelen vagy megszakadt.';
}

// Path: disclaimer
class _TranslationsDisclaimerHu implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Kérlek, vedd figyelembe';
	@override late final _TranslationsDisclaimerSnapHu snap = _TranslationsDisclaimerSnapHu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateHu weightEstimate = _TranslationsDisclaimerWeightEstimateHu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsHu healthMetrics = _TranslationsDisclaimerHealthMetricsHu._(_root);
}

// Path: common
class _TranslationsCommonHu implements TranslationsCommonEn {
	_TranslationsCommonHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get close => 'Bezárás';
	@override String get kContinue => 'Tovább';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingHu implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Tetszik a ${appLabel}?';
	@override String get yes => 'Igen, tetszik!';
	@override String get no => 'Nem igazán';
	@override String soloDevMessage({required Object appLabel}) => 'Egy gyors értékelés segít másoknak megtalálni a(z) ${appLabel} alkalmazást, és támogatja a fejlesztés folytatását. Szánnál rá egy pillanatot, hogy írj egyet?';
	@override String get shareFeedbackViaEmail => 'A visszajelzésed alakítja, mi következik — minden üzenetet elolvasunk. Szeretnéd e-mailben megosztani a gondolataidat?';
	@override String get rateCta => 'Értékeld a Play Áruházban';
	@override String get maybeLater => 'Majd később';
	@override String get sendFeedback => 'Visszajelzés küldése';
	@override String get noThanks => 'Nem, köszönöm';
	@override String get aboutUsDescription => 'Egy kis csapat gondos munkájával készült. Különös figyelmet fordítunk a magánszférára, az egyszerűségre és arra, hogy segítsünk jobb étkezési szokásokat kialakítanod.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Kíváncsi vagy, ki áll a ${appLabel} mögött? Nézd meg ';
	@override String get aboutUsLinkLabel => 'Rólunk';
}

// Path: errors
class _TranslationsErrorsHu implements TranslationsErrorsEn {
	_TranslationsErrorsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Hiba a profiladatok betöltésekor';
	@override String get somethingWentWrong => 'Valami hiba történt.';
}

// Path: debug
class _TranslationsDebugHu implements TranslationsDebugEn {
	_TranslationsDebugHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hibakeresési Beállítások';
	@override String get searchHint => 'Keresési opciók...';
	@override late final _TranslationsDebugSectionsHu sections = _TranslationsDebugSectionsHu._(_root);
	@override String get showActiveNotifications => 'Aktív Értesítések Megjelenítése';
	@override String get scheduleTestNotification => 'Teszt Értesítés Ütemezése (10s)';
	@override String get triggerBreakfastNotification => 'Reggeli Értesítés Kioldása';
	@override String get cancelAllNotifications => 'Összes Értesítés Törlése';
	@override String get activeNotifications => 'Aktív Értesítések';
	@override String get noTitle => 'Nincs Cím';
	@override String get noBody => 'Nincs Törzs';
	@override String get fetchTodaysSteps => 'Ma Lépések Lekérése';
	@override String get fetchTodaysCalories => 'Ma Kalóriák Lekérése';
	@override String get fetchLatestWeight => 'Legfrissebb Súly Lekérése';
	@override String get fetchLatestHeight => 'Legfrissebb Magasság Lekérése';
	@override String get writeTestWeight => 'Teszt Súly Írása (70kg)';
	@override String get writeTestHeight => 'Teszt Magasság Írása (175cm)';
	@override String get syncLast7Days => 'Utolsó 7 Nap Szinkronizálása';
	@override String get sync7DaysTitle => '7 Napos Szinkronizálás';
	@override String get checkCurrentLocale => 'Jelenlegi Helyi Beállítás Ellenőrzése';
	@override String get currentLocale => 'Jelenlegi nyelv';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Nyelv: ${languageCode}\nOrszág: ${countryCode}\nMetrikus rendszer: ${unitSystem}';
	@override String get latestWeight => 'Legfrissebb Súly';
	@override String get latestHeight => 'Legfrissebb Magasság';
	@override String get todaysCalories => 'Mai Kalóriák';
	@override String totalCaloriesBurned({required Object calories}) => 'Összes elégetett kalória: ${calories}';
	@override String syncSuccess({required Object count}) => 'Sikeresen lekérhető ${count} adatpontok a lépések, kalóriák és súly terén az elmúlt 7 napban.';
	@override String get noWeightData => 'Az utolsó 30 napban nincs súly adat.';
	@override String get noHeightData => 'Nincs magasság adat az utolsó évben.';
	@override String get noCalorieData => 'Ma nincs kalória adat.';
	@override String get weightWritten => 'Teszt súly (70kg) sikeresen íródott.';
	@override String get weightWriteFailed => 'A teszt súly írása nem sikerült.';
	@override String get heightWritten => 'Teszt magasság (175cm) sikeresen íródott.';
	@override String get heightWriteFailed => 'A teszt magasság írása nem sikerült.';
	@override String get noNotifications => 'Nincs aktív értesítés.';
	@override String get testNotificationScheduled => 'Teszt értesítés ütemezve, 10 másodperc múlva.';
	@override String get testNotificationBody => 'Ez egy teszt értesítés, ütemezve 10 másodperc múlva.';
	@override String get breakfastNotificationTriggered => 'Reggeli értesítés kioldva.';
	@override String get allNotificationsCancelled => 'Összes értesítés törölve.';
	@override String get fetchingData => 'Adatok lekérése az elmúlt 7 napra...';
	@override String id({required Object id}) => 'ID: ${id}';
	@override String get showFeedbackRatingSheet => 'Visszajelzés/értékelés megjelenítése';
	@override String get clearUserPreferences => 'Felhasználói beállítások törlése';
	@override String get clearUserPreferencesConfirmationTitle => 'Töröljük a felhasználói beállításokat?';
	@override String get clearUserPreferencesConfirmationMessage => 'A téma, a nyelv és a visszajelzési beállítások visszaállnak. Az étkezések és a profil nem érintett.';
	@override String get clearUserProfile => 'Felhasználói profil törlése';
	@override String get clearUserProfileConfirmationTitle => 'Töröljük a felhasználói profilt?';
	@override String get clearUserProfileConfirmationMessage => 'A profiladataid (napi cél, magasság, testsúly stb.) törlődnek. Az étkezések és a beállítások nem érintettek.';
	@override String get clear => 'Törlés';
	@override String get cancel => 'Mégse';
	@override String get checkWatchConnection => 'Óra kapcsolat ellenőrzése';
	@override String get sendTestMessage => 'Tesztüzenet küldése';
	@override String get sendTestMessageSubtitle => 'Küldj egy egyszerű tesztüzenetet az órára';
	@override String get sendTestMealData => 'Teszt ételadat küldése';
	@override String get sendTestMealDataSubtitle => 'Minta ételadat küldése az órára';
	@override String get sendTestCalorieGoal => 'Teszt kalóriacél küldése';
	@override String get sendTestCalorieGoalSubtitle => 'Minta kalóriacél küldése az órára';
	@override String get viewReceivedMessages => 'Kapott üzenetek megtekintése';
	@override String get viewReceivedMessagesSubtitle => 'Az óráról érkezett üzenetek megtekintése';
	@override String get watchConnected => 'Óra csatlakoztatva ✓';
	@override String get device => 'Eszköz';
	@override String get nearby => 'Közelben';
	@override String get yes => 'Igen';
	@override String get no => 'Nem';
	@override String get connectedDevices => 'Csatlakoztatott eszközök';
	@override String get deviceInfoUnavailable => '(Eszközinformációk nem elérhetők)';
	@override String get unknownDevice => 'Ismeretlen eszköz';
	@override String get watchNotConnected => 'Óra nincs csatlakoztatva ✗';
	@override String get watchNotConnectedHint => 'Győződj meg róla:\n• Mindkét eszköz párosítva van\n• Az óra alkalmazás fut\n• Mindkét alkalmazás hibakereső/staging módban van';
	@override String get watchConnection => 'Óra kapcsolat';
	@override String errorCheckingConnection({required Object error}) => 'Hiba a kapcsolat ellenőrzése közben: ${error}';
	@override String get helloFromPhone => 'Szia a telefonról!';
	@override String get testMessageSentSuccess => 'Tesztüzenet sikeresen elküldve!';
	@override String get testMessageFailed => 'Nem sikerült elküldeni a tesztüzenetet. Ellenőrizd az óra kapcsolatát.';
	@override String errorSendingMessage({required Object error}) => 'Hiba az üzenet küldésekor: ${error}';
	@override String get testMeal => 'Teszt étel';
	@override String get testMealDataSentSuccess => 'Teszt ételadat sikeresen elküldve!';
	@override String get failedToSendMealData => 'Nem sikerült elküldeni az ételadatot. Ellenőrizd az óra kapcsolatát.';
	@override String errorSendingMealData({required Object error}) => 'Hiba az ételadat küldésekor: ${error}';
	@override String get testCalorieGoalSentSuccess => 'Teszt kalóriacél sikeresen elküldve!';
	@override String get failedToSendCalorieGoal => 'Nem sikerült elküldeni a kalóriacélt. Ellenőrizd az óra kapcsolatát.';
	@override String errorSendingCalorieGoal({required Object error}) => 'Hiba a kalóriacél küldésekor: ${error}';
	@override String get testAnalyzeImage => 'Kép elemzés tesztelése';
	@override String get testAnalyzeImageSubtitle => 'Előre beállított tesztkép feltöltése';
	@override String get testDetectImage => 'Kép felismerés tesztelése';
	@override String get testDetectImageSubtitle => 'Ételfelismerés kép URL alapján';
	@override String get detectImageFromGallery => 'Kép felismerése a galériából';
	@override String get detectImageFromGallerySubtitle => 'Válassz képet, töltsd fel a tárhelyre és becsüld meg a kalóriákat';
	@override String get testDetectText => 'Szövegfelismerés tesztelése';
	@override String get testDetectTextSubtitle => 'Ételfelismerés szöveges leírásból';
	@override String get testMealLoggingWithVariations => 'Ételfelvitel tesztelése variációkkal';
	@override String get testMealLoggingWithVariationsSubtitle => 'Teszteld a teljes ételfelviteli folyamatot variációkkal';
	@override String get mockMealWithVariations => 'Mintaétel variációkkal';
	@override String get mockMealWithVariationsSubtitle => 'Variációk és tipp lap UI előnézete naplózás nélkül';
	@override String get mockMealName => 'Grillezett csirke rizzsel és zöldségekkel';
	@override String get mockTip => 'Ez egy minta tipp a felhasználói felület előnézetéhez. Az étel nincs rögzítve.';
	@override String get mockMealDescription => 'Minta étel hibakereséshez';
	@override String get portionSizeQuestion => 'Milyen volt az adagméret?';
	@override String get extraSidesQuestion => 'Volt extra köret?';
	@override String get optionSmall => 'Kicsi';
	@override String get optionMedium => 'Közepes';
	@override String get optionLarge => 'Nagy';
	@override String get optionNone => 'Nincs';
	@override String get optionSideSalad => 'Köret saláta';
	@override String get optionBreadRoll => 'Zsemle';
	@override String get testingAnalyzeImage => 'analyzeImage API tesztelése...';
	@override String get testingDetectImage => 'detectImage API tesztelése...';
	@override String get testingDetectText => 'detectText API tesztelése...';
	@override String get selectingImageFromGallery => 'Kép kiválasztása a galériából...';
	@override String get noImageSelected => 'Nincs kép kiválasztva';
	@override String get compressingImage => 'Kép tömörítése...';
	@override String get uploadingImageAndDetecting => 'Kép feltöltése a tárhelyre és az étel felismerése...';
	@override String get testingMealLoggingFlow => 'Ételfelviteli folyamat tesztelése variációkkal...';
	@override String get noMealIdentifiedInResponse => 'A válaszban nem azonosítható étel';
	@override String get mealIdentified => 'Étel felismerve';
	@override String get confidence => 'Valószínűség';
	@override String get tip => 'Tipp';
	@override String get mealName => 'Étel neve';
	@override String get calories => 'Kalória';
	@override String get protein => 'Fehérje';
	@override String get carbs => 'Szénhidrát';
	@override String get fat => 'Zsír';
	@override String get noMealInfo => 'Nincs ételinformáció';
	@override String get na => 'Nincs adat';
	@override String get analyzeImageResult => 'Kép elemzés eredménye';
	@override String get detectImageResult => 'Kép felismerés eredménye';
	@override String get detectImageFromGalleryResult => 'Galériából történő kép felismerés eredménye';
	@override String get detectTextResult => 'Szövegfelismerés eredménye';
	@override String errorGeneric({required Object error}) => 'Hiba: ${error}';
	@override String get variationsCount => 'Variációk';
	@override String get userPreferencesCleared => 'Felhasználói beállítások törölve';
	@override String get userProfileCleared => 'Felhasználói profil törölve';
	@override String get checkForUpdate => 'Frissítések keresése';
	@override String get showPatchNumber => 'Patch szám megjelenítése';
	@override String get showUpdateAvailable => 'Frissítés elérhető jelzése';
	@override String get updateAvailable => 'Frissítés elérhető';
	@override String get upToDate => 'Naprakész';
	@override String get shorebirdUnavailable => 'A Shorebird nem érhető el ebben a környezetben.';
	@override String get patchNumberLabel => 'Patch szám';
	@override String get noPatchInstalled => 'Nincs telepített patch';
	@override String get todaysSteps => 'Mai lépések';
	@override String get stepsLabel => 'Lépések';
	@override String weightLabel({required Object value}) => 'Súly: ${value} kg';
	@override String heightLabel({required Object value}) => 'Magasság: ${value} cm';
	@override String get receivedMessagesFromWatch => 'Óráról kapott üzenetek';
	@override String get noMessagesReceivedYet => 'Még nem érkezett üzenet.\n\nKüldj tesztadatot az óráról, hogy itt lásd az üzeneteket.';
	@override String get messagesCleared => 'Üzenetek törölve';
}

// Path: health
class _TranslationsHealthHu implements TranslationsHealthEn {
	_TranslationsHealthHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Nem sikerült szinkronizálni a Health Connect-tel';
	@override String get mealSynced => 'Étkezés szinkronizálva a Health Connect-tel';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesHu implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionHu foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionHu._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisHu aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisHu._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationHu healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationHu._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderHu implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mi a nemed?';
	@override String get description => 'A nem segít pontosan kiszámolni az alapanyagcserét (BMR).';
	@override String get next => 'Tovább';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightHu implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mennyi a magasságod?';
	@override String get description => 'A magasságod segít pontosan kiszámolni a BMI-t és az energiaszükségletet.';
	@override String get metric => 'Metrikus';
	@override String get imperial => 'Imperiális';
	@override String get next => 'Tovább';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightHu implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Mi a jelenlegi súlyod?';
	@override String get currentDescription => 'A jelenlegi súlyod elengedhetetlen a napi céljaid személyre szabásához.';
	@override String get targetTitle => 'Mi a cél súlyod?';
	@override String get targetDescription => 'A cél súly beállítása segít meghatározni a hosszú távú tervedet.';
	@override String get metric => 'Metrikus';
	@override String get imperial => 'Imperiális';
	@override String get next => 'Tovább';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeHu implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mikor van a születésnapod?';
	@override String get description => 'A korod segít pontosan kiszámolni a kalóriaszükségletedet.';
	@override String get next => 'Tovább';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleHu implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Súlyhiányos';
	@override String get healthy => 'Egészséges';
	@override String get overweight => 'Túlsúlyos';
	@override String get obese => 'Elhízott';
	@override late final _TranslationsOnboardingBmiScaleCategoriesHu categories = _TranslationsOnboardingBmiScaleCategoriesHu._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesHu messages = _TranslationsOnboardingBmiScaleMessagesHu._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalHu implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mi a célod?';
	@override String get description => 'Válaszd ki a célt, ami legjobban leírja, mit szeretnél elérni';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelHu implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mennyi a aktivitásod?';
	@override String get description => 'Ez segít pontosabban kiszámolni a napi kalóriaszükségletedet';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectHu implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Csatlakozz a Health Connect-hez';
	@override String get description => 'Szinkronizáld az egészségügyi adatokat jobb betekintésekért és automatikus kalóriaszámlálásért';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingHu automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingHu._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsHu progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsHu._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationHu seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationHu._(_root);
	@override String get connected => 'Health Connect csatlakoztatva';
	@override String get notConnected => 'Health Connect nincs csatlakoztatva';
	@override String get setup => 'Állítsd be a Health Connect-et';
	@override String get skipForNow => 'Most hagyd ki';
	@override String get statusConnected => 'A Health Connect csatlakoztatva van.';
	@override String get statusSuccess => 'A Health Connect sikeresen csatlakoztatva lett!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Hozzáférés megtagadva. Kérjük, engedélyezze a Health Connect engedélyeket a telefon beállításaiból a(z) ${appLabel} számára.';
	@override String statusError({required Object error}) => 'Hiba történt a Health Connect beállításánál: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementHu implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessHu trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessHu._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileHu healthProfile = _TranslationsOnboardingReinforcementHealthProfileHu._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleHu goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleHu._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalHu implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Állítsd Be Napi Célodat';
	@override String get titleSet => 'Napi Célod';
	@override String get description => 'Készen állsz elindulni a jóléted útján? Állítsd be napi kalória célodat az alábbiakban a fejlődésed kezdetéhez.';
	@override String get descriptionSet => 'A tájékozódásod beállítva! Ez a napi kalóriaszámod, ami irányt ad neked.';
	@override String get yourGoal => 'Célod';
	@override String get goal => 'Cél';
	@override String get dailyCalories => 'Napi kalóriák (kcal)';
	@override String get setGoal => 'Cél Beállítása';
	@override String get intake => 'Fogyasztás';
	@override String get burned => 'Elégetett';
	@override String get weightImpact => 'Súly Hatás';
	@override String get estLoss => 'Becsült fogyás: ';
	@override String get estGain => 'Becsült gyarapodás: ';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryHu implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Napi Összegzés';
	@override String get calories => 'Kalóriák';
	@override String get carbs => 'Szénhidrátok';
	@override String get protein => 'Fehérjék';
	@override String get fat => 'Zsírok';
	@override String get fiber => 'Rost';
	@override String get grams => 'gramm';
	@override String get chartAccessibilityLabel => 'Makrotápanyagok grafikonja';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressHu implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mai Makrómegoszlás';
	@override String get target => 'Cél';
	@override String get current => 'Jelenlegi';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryHu implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => '7 Napos Makró Történelem';
	@override String get noHistoryYet => 'Nincs még történet';
	@override String get startLogging => 'Kezd el étkezéseid naplózását, hogy itt lásd\na 7 napos makró trendjeidet';
}

// Path: home.mealLog
class _TranslationsHomeMealLogHu implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Naplózott Étkezések';
	@override String get emptyMessage => 'Készíts egy képet az utolsó étkezésedről, hogy itt be tudd jegyezni.';
	@override String get noMealsToday => 'Ma nincs rögzített étkezés';
	@override String get seeAllMeals => 'Összes étkezés megtekintése';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionHu implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gyors Hozzáadás AI-val';
	@override String get description => 'Írd le az étkezésed, és hagyd, hogy az AI kezelje a részleteket.';
	@override String get hint => 'pl. Reggelire egy nagy tál zabliszttel, egy szelet banánnal és egy adag tejsavóval ...';
	@override String get analyzeMeal => 'Éttervezés elemzése';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsHu implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kedvenc Étkezések';
	@override String get description => 'Gyorsan add hozzá az egyik kedvenc étkezésed.';
	@override String get noFavorites => 'Még nincs kedvenc étkezés.';
	@override String get addFavoriteHint => 'Kattints a csillagra egy étkezés mellett, hogy kedvencekké tedd.';
	@override String get seeAll => 'Összes megtekintése';
	@override String get add => 'Hozzáadás';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapHu implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Képzelj és Kövesd Az Étkezésed';
	@override String get description => 'Használj kamerát, hogy fényképet készíts az ételedről az AI elemzése érdekében.';
	@override String get openCamera => 'Kamera megnyitása';
	@override String get gallery => 'Galéria';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthHu implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szinkronizálás az Health Connect-tel';
	@override String get description => 'Szinkronizáld táplálkozási adataidat az Health Connect-tel';
	@override String get install => 'Telepítés';
	@override String get connect => 'Csatlakozás';
}

// Path: meal.nutrition
class _TranslationsMealNutritionHu implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalóriák';
	@override String get carbs => 'Szénhidrátok (g)';
	@override String get protein => 'Fehérjék (g)';
	@override String get fat => 'Zsírok (g)';
	@override String get fiber => 'Rost (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationHu implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Étkezés Törlése';
	@override String get message => 'Biztosan törölni szeretnéd ezt az étkezést?';
	@override String get cancel => 'Mégse';
	@override String get delete => 'Törlés';
}

// Path: meal.variation
class _TranslationsMealVariationHu implements TranslationsMealVariationEn {
	_TranslationsMealVariationHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Kérdés ${current} a ${total}-ből';
	@override String get noVariationsAvailable => 'Nincsenek elérhető variációk';
}

// Path: profile.sections
class _TranslationsProfileSectionsHu implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'ALAP INFORMÁCIÓK';
	@override String get goalsAndActivity => 'CÉLOK ÉS TEVÉKENYSÉG';
	@override String get calculatedValues => 'SZÁMÍTOTT ÉRTÉKEK';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesHu implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Napi Cél';
	@override String get calPerDay => 'kal/nap';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsHu implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'SZEMÉLYES INFORMÁCIÓK';
	@override String get physicalMeasurements => 'FIZIKAI MÉRÉSEK';
	@override String get goalsAndActivity => 'CÉLOK ÉS TEVÉKENYSÉG';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersHu implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get male => 'Férfi';
	@override String get female => 'Nő';
	@override String get other => 'Egyéb';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsHu implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightHu loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightHu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightHu maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightHu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightHu gainWeight = _TranslationsEditProfileWeightGoalsGainWeightHu._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsHu implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryHu sedentary = _TranslationsEditProfileActivityLevelsSedentaryHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveHu lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveHu moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveHu veryActive = _TranslationsEditProfileActivityLevelsVeryActiveHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveHu extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveHu._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsHu implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'HELYI BEÁLLÍTÁSOK';
	@override String get notifications => 'ÉRTESÍTÉSEK';
	@override String get healthConnect => 'EGÉSZSÉG KAPCSOLAT';
	@override String get supportAndLegal => 'TÁMOGATÁS ÉS JOGI ÜGYEK';
	@override String get about => 'TÁJÉKOZTATÁS';
	@override String get dangerZone => 'VESZÉLYES ZÓNA';
	@override String get developer => 'FEJLESZTŐ';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileHu implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil Szerkesztése';
	@override String get subtitle => 'Frissítsd személyes adataidat';
}

// Path: settings.language
class _TranslationsSettingsLanguageHu implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nyelv';
	@override String get subtitle => 'Válaszd ki preferált nyelved';
	@override String get searchHint => 'Nyelvek keresése...';
	@override String get noResults => 'Nincs találat';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitHu implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Magasság Mértékegysége';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitHu implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Súly Mértékegysége';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersHu implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Étkezés Emlékeztetők';
	@override String get subtitle => 'Tartsd az ütemet időben érkező értesítésekkel';
}

// Path: settings.theme
class _TranslationsSettingsThemeHu implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Téma';
	@override String get light => 'Világos';
	@override String get dark => 'Sötét';
	@override String get system => 'Rendszer';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackHu implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Visszajelzés Küldése';
	@override String subtitle({required Object appLabel}) => 'Segítsen nekünk fejleszteni a(z) ${appLabel} alkalmazást';
	@override String emailSubject({required Object appLabel}) => '${appLabel} Alkalmazás Visszajelzés';
	@override String get emailBodyPrefix => 'Kérlek, írd meg visszajelzésed alább:';
	@override String get appVersion => 'Alkalmazás Verzió';
	@override String get device => 'Eszköz';
	@override String get osVersion => 'OS Verzió';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataHu implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Összes Adat Törlése';
	@override String get subtitle => 'Visszafordíthatatlanul töröld az összes információdat';
	@override String get confirmationTitle => 'Összes Adat Törlése?';
	@override String get confirmationMessage => 'Ez a művelet nem vonható vissza. Minden rögzített étkezésed, kedvenc, és profilbeállítás véglegesen törlésre kerül.';
	@override String get cancel => 'Mégse';
	@override String get clearEverything => 'Összes Törlése';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsHu implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hibakeresési Beállítások';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectHu implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Egészség Kapcsolat';
	@override String get subtitle => 'Engedélyek megtekintése és kezelése';
	@override late final _TranslationsSettingsHealthConnectUnavailableHu unavailable = _TranslationsSettingsHealthConnectUnavailableHu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsHu permissions = _TranslationsSettingsHealthConnectPermissionsHu._(_root);
	@override String get managePermissions => 'Engedélyek Kezelése';
	@override String get openSettings => 'Nyisd meg az Egészségkapcsolat beállításait';
	@override String get requestPermissions => 'Engedélyek kérése';
	@override String get permissionRequestCancelledOrFailed => 'Az engedélykérés megszakadt vagy sikertelen volt. Próbáld újra, vagy add meg az engedélyeket manuálisan a Health Connect beállításaiban.';
	@override String get permissionRequestFailed => 'Nem sikerült engedélyeket kérni. Próbáld újra, vagy add meg az engedélyeket manuálisan a Health Connect beállításaiban.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutHu implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rólunk';
	@override String get tagline => 'Gyors, ingyenes és adatvédelmi szempontból elsődleges kalóriaszámláló';
	@override late final _TranslationsSettingsAboutOurStoryHu ourStory = _TranslationsSettingsAboutOurStoryHu._(_root);
	@override late final _TranslationsSettingsAboutPrivacyHu privacy = _TranslationsSettingsAboutPrivacyHu._(_root);
	@override late final _TranslationsSettingsAboutDeveloperHu developer = _TranslationsSettingsAboutDeveloperHu._(_root);
	@override late final _TranslationsSettingsAboutFeedbackHu feedback = _TranslationsSettingsAboutFeedbackHu._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoHu implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastHu implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reggeli Idő! 🍳';
	@override String get body => 'Ne felejtsd el bejegyezni a reggelidet';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchHu implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ebéd Idő! 🥗';
	@override String get body => 'Ideje bejegyezni az ebéded';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerHu implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vacsora Idő! 🍽️';
	@override String get body => 'Ne felejtsd el bejegyezni a vacsorádat';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackHu implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uzsonna Idő! 🍎';
	@override String get body => 'Ideje egy egészséges uzsonnára';
}

// Path: notifications.test
class _TranslationsNotificationsTestHu implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Teszt Értesítés';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapHu implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => 'A(z) ${appLabel} becsült tápanyaginformációkat nyújt. A pontosság a megadott adatoktól és az ételek változatosságától függ. Használja útmutatóként, ne pedig végérvényes forrásként. Kérjük, konzultáljon szakemberrel a személyre szabott táplálkozási tanácsokért.';
	@override late final _TranslationsDisclaimerSnapPortionSizeHu portionSize = _TranslationsDisclaimerSnapPortionSizeHu._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsHu preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsHu._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsHu ingredients = _TranslationsDisclaimerSnapIngredientsHu._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsHu databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsHu._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateHu implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'A Súlybecslésről';
	@override String get description => 'A becsült súlyváltozás egy elméleti becslés, amely az egyszerű kalória-bevitel és -kiadás modell alapján készül. Csak motiváló útmutatásként szolgál, nem pedig a tényleges súlyod előrejelzéseként.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyHu calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyHu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsHu biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsHu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightHu waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightHu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHu professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHu._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsHu implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get description => 'Ezek a mutatók segítenek megérteni a tested energiaigényét, és irányt mutatnak a táplálkozási céljaidhoz.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrHu bmr = _TranslationsDisclaimerHealthMetricsBmrHu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeHu tdee = _TranslationsDisclaimerHealthMetricsTdeeHu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalHu dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalHu._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsHu implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Értesítések';
	@override String get healthConnect => 'Health Connect';
	@override String get wearOs => 'Wear OS';
	@override String get foodApiTests => 'Étel API tesztek';
	@override String get feedback => 'Visszajelzés';
	@override String get dataReset => 'Adatok visszaállítása';
	@override String get appInfo => 'Alkalmazás Információ';
	@override String get shorebird => 'Shorebird';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionHu implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intelligens Étel Felismerés';
	@override String get description => 'Készíts egy fényképet, és hagyd, hogy az AI azonosítsa az étkezésed';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisHu implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI Elemzés';
	@override String get description => 'Azonnali táplálkozási tények a leírásaid alapján';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationHu implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Egészség Integráció';
	@override String get description => 'Csatlakozz a Health Connect-hez a jobb betekintésekért';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesHu implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Súlyhiányos';
	@override String get healthyWeight => 'Egészséges testsúly';
	@override String get overweight => 'Túlsúlyos';
	@override String get obese => 'Elhízott';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesHu implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Segíthetünk egy egészséges tervet kialakítani, hogy kiegyensúlyozott súlyt érj el tápanyagban gazdag ételekkel.';
	@override String get healthy => 'Nagyszerű munka! Egészséges tartományban vagy. Segítünk fenntartani az életerődet és energiaszintedet.';
	@override String overweight({required Object appLabel}) => 'A(z) ${appLabel} egyszerűsíti az utazását az AI-alapú nyomon követéssel, hogy kényelmesen elérje a célját.';
	@override String get obese => 'Itt vagyunk, hogy támogassunk téged a személyre szabott útmutatással és fenntartható stratégiákkal az egészségi céljaid elérésében.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingHu implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatikus Kalóriaszámlálás';
	@override String get description => 'Kövessd a fitness alkalmazásokból égetett kalóriákat';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsHu implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Haladási Betekintések';
	@override String get description => 'Részletes betekintéseket kapsz az egészségi trendjeidbe';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationHu implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zökkenőmentes Integráció';
	@override String get description => 'Szinkronizáld az adatokat a kedvenc egészségügyi alkalmazásaidból';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessHu implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nem vagy Egyedül';
	@override String get genericMessage => 'A kutatások azt mutatják, hogy a következetes nyomon követés a hosszú távú siker legfontosabb előrejelzője.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Egy ${age} éves ${gender} számára, aki ${goal}-t szeretne elérni, a következetes nyomon követés a siker legfontosabb előrejelzője.';
	@override String closingMessage({required Object appLabel}) => 'A(z) ${appLabel} 10-szer könnyebbé teszi a dolgot, mint ha manuálisan csinálná.';
	@override String get getStartedTitle => 'Készen állsz a kezdésre?';
	@override String get tipPhoto => 'Készíts képet az ételeidről az azonnali elemzéshez';
	@override String get tipConsistency => 'Rendszeresen jegyezd fel az étkezéseidet a lényeges fejlődés érdekében';
	@override String get tipProgress => 'Kövesd a fejlődésed naponta a motivációd fenntartásához';
	@override String get button => 'Induljunk!';
	@override String get defaultGender => 'személy';
	@override String get defaultGoal => 'egészségesebb te';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileHu implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Az Egészségügyi Profilod';
	@override String bmiDescription({required Object bmi}) => 'A metrikáid alapján a BMI-d: ${bmi}.';
	@override String get finalizeDescription => 'Fejezzük be a profilod, hogy testre szabhassuk az élményed.';
	@override String get goalGain => 'növelni';
	@override String get goalLose => 'csökkenteni';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'A célod eléréséhez ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Elérted a cél súlyodat! Segítünk fenntartani.';
	@override String get button => 'Induljunk!';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleHu implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kiváló Kezdés!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Megtette az első lépést a(z) ${goalText} felé. Mivel Ön ${activityText}, a(z) ${appLabel} hozzáigazítja a céljait az életmódjához.';
	@override String get personalizedTargets => 'Személyre szabott kalóriacélok';
	@override String get aiMealDetection => 'AI-alapú étkezés-felismerés';
	@override String get macroBreakdowns => 'Részletes makrotápanyagbontások';
	@override String get button => 'Induljunk!';
	@override String get defaultGoal => 'a céljaid';
	@override String get defaultActivity => 'aktív';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightHu implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Fogyás';
	@override String get description => 'Kalóriadeficit létrehozása a fogyás érdekében';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightHu implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Súly megőrzése';
	@override String get description => 'Jelenlegi súlyod fenntartása';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightHu implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hízás';
	@override String get description => 'Kalóriatöbblet létrehozása a hízás érdekében';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryHu implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ülő';
	@override String get description => 'Kicsi vagy semmilyen testedzés';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveHu implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Enyhén Aktív';
	@override String get description => 'Könnyű edzés 1-3 nap/hét';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveHu implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mérsékelten Aktív';
	@override String get description => 'Mérsékelt edzés 3-5 nap/hét';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveHu implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nagyon Aktív';
	@override String get description => 'Kemény edzés 6-7 nap/hét';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveHu implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrém Aktív';
	@override String get description => 'Nagyon kemény edzés, fizikai munka';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableHu implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect nem elérhető';
	@override String get description => 'A Health Connect nem érhető el ezen az eszközön. Kérjük, telepítse a Health Connectet a Play Áruházból (Android 9+), vagy frissítsen Android 14+-ra.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsHu implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Engedélyek';
	@override String get description => 'Az alábbi engedélyeket kérjük az Egészség Kapcsolat integráció biztosításához:';
	@override String get granted => 'Engedélyezve';
	@override String get notGranted => 'Nem Engedélyezve';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHu caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadHu nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadHu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteHu nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteHu._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryHu implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Történetünk';
	@override String content({required Object appLabel}) => '${appLabel} egy egyszerű frusztrációból született: a legtöbb kalóriaszámláló alkalmazás vagy túlságosan bonyolult, folyamatos manuális bevitelre kényszerít, magas előfizetési díjakat kér, vagy megtévesztően kezeli az adatvédelmet.\n\nFüggetlen fejlesztőként olyan dolgot akartam létrehozni, ami egyszerűbb és tisztességesebb – egy alkalmazást, amely mesterséges intelligenciát használ a munka csökkentésére, gyors marad, ingyenesen használható, és tisztelettel kezeli az egészségügyi adataidat.\n\n${appLabel} az alkalmazás, amit szerettem volna, ha létezne: nincs fiók, nincs követés, nincs hirdetés – csak világos, gyakorlati betekintések és az egészségügyi céljaid.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyHu implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Az Ön Adatvédelme Fontos';
	@override String get description => 'Az adatvédelem nem utolsó pillanatos gondolat – ez egy tervezési elv. Ez a gyakorlatban azt jelenti:';
	@override String get noAccounts => 'Nincs szükség fiókra\nAz alkalmazást azonnal használhatja. Nincs regisztráció, nincs személyazonosság.';
	@override String noTracking({required Object appLabel}) => 'Nincs viselkedési követés\n${appLabel} nem figyeli az Ön tevékenységét, nem épít felhasználói profilokat, és nem követi nyomon különböző alkalmazásokban vagy weboldalakon.';
	@override String noAds({required Object appLabel}) => 'Hirdetésmentes tervezés\n${appLabel} úgy van megalkotva, hogy működjön hirdetések vagy adatvezérelt monetizáció nélkül.';
	@override String get noDataSelling => 'Nincs adatértékesítés\nAz egészségügyi adataid soha nem kerülnek eladásra vagy megosztásra harmadik felekkel.';
	@override String get localStorage => 'Helyi tárolás előtérbe helyezve\nAz adataid a készülékeden maradnak.';
	@override String get privacyPolicy => 'Adatvédelmi irányelvek';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperHu implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Független Solo Fejlesztő Által Készítve';
	@override String description({required Object appLabel}) => '${appLabel} egyetlen solo fejlesztő által készült és karbantartott, aki a nyugodt, adatvédelmet tiszteletben tartó egészségügyi szoftverek fejlesztésére összpontosít.\n\nA visszajelzéseket személyesen olvassuk és segítenek alakítani az alkalmazás irányát.';
	@override String get website => 'Weboldal';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackHu implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Tetszik a(z) ${appLabel}?';
	@override String description({required Object appLabel}) => 'A visszajelzésed segít abban, hogy a(z) ${appLabel} jobb legyen mindenki számára.';
	@override String get rateApp => 'Értékelje a Play Áruházban';
	@override String get sendFeedback => 'Visszajelzés küldése';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeHu implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adag Méret';
	@override String get description => 'A becslések pontossága erősen függ a megfelelő adagméret megítélésétől.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsHu implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Előkészítési Módszerek';
	@override String description({required Object appLabel}) => 'A főzési módszerek jelentősen befolyásolhatják az ételek tápanyagtartalmát. A(z) ${appLabel} becslései nem mindig veszik figyelembe ezeket a változásokat.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsHu implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Összetevők';
	@override String get description => 'A bonyolult ételek sok rejtett összetevője miatt a becslések kevésbé pontosak lehetnek.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsHu implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adatbázis Korlátozások';
	@override String description({required Object appLabel}) => 'A(z) ${appLabel} élelmiszer-adatbázisa széleskörű, de előfordulhat, hogy nem tartalmazza az összes élelmiszert vagy változatot.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyHu implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalória Pontosság';
	@override String get description => 'Ez a becslés csak annyira pontos, amennyire a nyomon követett kalória bevitel és kiadás akkurátus. A pontatlan naplózás pontatlan előrejelzést eredményez.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsHu implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biológiai Tényezők';
	@override String description({required Object appLabel}) => 'A valódi súlyvesztést/gyarapodást a metabolizmus, hormonok, alvás, stressz, hidratáció és egyéb egyéni tényezők befolyásolják, amelyeket a(z) ${appLabel} nem tud mérni.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightHu implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Víz Súly & Ingadozások';
	@override String get description => 'A normális napi súly jelentősen ingadozhat a vízvisszatartás, emésztés és időzítés miatt. A becslés nem veszi figyelembe ezeket a napi változásokat.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHu implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szakmai Útmutatás';
	@override String get description => 'Ne használd ezt a becslést orvosi döntések meghozatalához. Mindig konzultálj egészségügyi szakemberrel vagy bejegyzett dietetikussal személyre szabott súlykezelési tanácsadásért.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrHu implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'A Bazális Anyagcsere Sebessége (BMR) az a kalóriamennyiség, amelyet a tested nyugalmi állapotban éget el az alapvető funkciók fenntartásához, mint a légzés és a vérkeringés. A BMR a korodtól, nemedtől, magasságodtól és súlyodtól függ. A magasabb BMR azt jelenti, hogy a tested természetesen több kalóriát éget el nyugalomban, jellemzően a nagyobb izomtömeg, a fiatalabb kor vagy a férfi nem következményeként. Az alacsonyabb BMR általában kevesebb izomtömegre, idősebb korra vagy női nemre utal.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeHu implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'A Teljes Napi Energiafelhasználás (TDEE) az a kalóriamennyiség, amelyet egy nap alatt elégetsz, beleértve a BMR-t és a fizikai aktivitásból valamint a napi mozgásból származó kalóriákat. A TDEE a BMR-dtől és az aktivitási szintedtől függ. A magasabb TDEE azt jelenti, hogy összességében több kalóriát égetsz el, általában a nagyobb aktivitásból vagy a magasabb BMR-ből adódóan. Az alacsonyabb TDEE kevesebb napi aktivitást vagy alacsonyabb BMR-t jelez.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalHu implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Napi Cél';
	@override String get description => 'A Napi Cél a javasolt napi kalóriabeviteled, amely a TDEE-d és a súlycélod alapján van megállapítva. Súlycsökkentés esetén kevesebb kalóriát fogyasztasz, mint a TDEE-d. A súly fenntartásához a TDEE-dnek megfelelő mennyiséget fogyasztasz. Súlygyarapodás érdekében pedig többet eszel, mint a TDEE-d. Ez segít elérni a kívánt súlyváltozást egészséges ütemben.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHu implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Összes Kcal Égetése Olvasása';
	@override String get description => 'Lehetővé teszi az alkalmazás számára, hogy elolvassa a Health Connect-en a teljes elégetett kalóriát.';
	@override String get usage => 'Ez az engedély szükséges a napi kalóriaégetés megjelenítéséhez az alkalmazásban, segítve a napi energiapazarlás megértését.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadHu implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tápanyagadatok Olvasása';
	@override String get description => 'Lehetővé teszi az alkalmazás számára, hogy elolvassa a tápanyagadatokat az Egészség Kapcsolattól.';
	@override String get usage => 'Ez az engedély lehetővé teszi az alkalmazás számára, hogy hozzáférjen azokra a tápanyaginformációkra, amelyeket más alkalmazások rögzítettek, amelyek kapcsolódnak az Egészség Kapcsolathoz, átfogó képet adva a táplálkozásodról.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteHu implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tápanyagadatok Írása';
	@override String get description => 'Lehetővé teszi az alkalmazás számára, hogy tápanyagadatokat írjon az Egészség Kapcsolatra.';
	@override String get usage => 'Ez az engedély lehetővé teszi az alkalmazás számára, hogy szinkronizálja a rögzített ételeidet az Egészség Kapcsolatra, így a táplálkozási adataid más egészségügyi és fitness alkalmazások számára is elérhetővé válnak.';
}

/// The flat map containing all translations for locale <hu>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Magyar',
			'flag' => '🇭🇺',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => 'Üdvözöljük a(z) ${appLabel} alkalmazásban',
			'onboarding.subtitle' => 'Személyes táplálkozási társ, amelyet az AI hajt',
			'onboarding.getStarted' => 'Kezdjük el',
			'onboarding.features.foodRecognition.title' => 'Intelligens Étel Felismerés',
			'onboarding.features.foodRecognition.description' => 'Készíts egy fényképet, és hagyd, hogy az AI azonosítsa az étkezésed',
			'onboarding.features.aiAnalysis.title' => 'AI Elemzés',
			'onboarding.features.aiAnalysis.description' => 'Azonnali táplálkozási tények a leírásaid alapján',
			'onboarding.features.healthIntegration.title' => 'Egészség Integráció',
			'onboarding.features.healthIntegration.description' => 'Csatlakozz a Health Connect-hez a jobb betekintésekért',
			'onboarding.gender.title' => 'Mi a nemed?',
			'onboarding.gender.description' => 'A nem segít pontosan kiszámolni az alapanyagcserét (BMR).',
			'onboarding.gender.next' => 'Tovább',
			'onboarding.height.title' => 'Mennyi a magasságod?',
			'onboarding.height.description' => 'A magasságod segít pontosan kiszámolni a BMI-t és az energiaszükségletet.',
			'onboarding.height.metric' => 'Metrikus',
			'onboarding.height.imperial' => 'Imperiális',
			'onboarding.height.next' => 'Tovább',
			'onboarding.weight.currentTitle' => 'Mi a jelenlegi súlyod?',
			'onboarding.weight.currentDescription' => 'A jelenlegi súlyod elengedhetetlen a napi céljaid személyre szabásához.',
			'onboarding.weight.targetTitle' => 'Mi a cél súlyod?',
			'onboarding.weight.targetDescription' => 'A cél súly beállítása segít meghatározni a hosszú távú tervedet.',
			'onboarding.weight.metric' => 'Metrikus',
			'onboarding.weight.imperial' => 'Imperiális',
			'onboarding.weight.next' => 'Tovább',
			'onboarding.age.title' => 'Mikor van a születésnapod?',
			'onboarding.age.description' => 'A korod segít pontosan kiszámolni a kalóriaszükségletedet.',
			'onboarding.age.next' => 'Tovább',
			'onboarding.bmiScale.underweight' => 'Súlyhiányos',
			'onboarding.bmiScale.healthy' => 'Egészséges',
			'onboarding.bmiScale.overweight' => 'Túlsúlyos',
			'onboarding.bmiScale.obese' => 'Elhízott',
			'onboarding.bmiScale.categories.underweight' => 'Súlyhiányos',
			'onboarding.bmiScale.categories.healthyWeight' => 'Egészséges testsúly',
			'onboarding.bmiScale.categories.overweight' => 'Túlsúlyos',
			'onboarding.bmiScale.categories.obese' => 'Elhízott',
			'onboarding.bmiScale.messages.underweight' => 'Segíthetünk egy egészséges tervet kialakítani, hogy kiegyensúlyozott súlyt érj el tápanyagban gazdag ételekkel.',
			'onboarding.bmiScale.messages.healthy' => 'Nagyszerű munka! Egészséges tartományban vagy. Segítünk fenntartani az életerődet és energiaszintedet.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => 'A(z) ${appLabel} egyszerűsíti az utazását az AI-alapú nyomon követéssel, hogy kényelmesen elérje a célját.',
			'onboarding.bmiScale.messages.obese' => 'Itt vagyunk, hogy támogassunk téged a személyre szabott útmutatással és fenntartható stratégiákkal az egészségi céljaid elérésében.',
			'onboarding.weightGoal.title' => 'Mi a célod?',
			'onboarding.weightGoal.description' => 'Válaszd ki a célt, ami legjobban leírja, mit szeretnél elérni',
			'onboarding.activityLevel.title' => 'Mennyi a aktivitásod?',
			'onboarding.activityLevel.description' => 'Ez segít pontosabban kiszámolni a napi kalóriaszükségletedet',
			'onboarding.healthConnect.title' => 'Csatlakozz a Health Connect-hez',
			'onboarding.healthConnect.description' => 'Szinkronizáld az egészségügyi adatokat jobb betekintésekért és automatikus kalóriaszámlálásért',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatikus Kalóriaszámlálás',
			'onboarding.healthConnect.automaticTracking.description' => 'Kövessd a fitness alkalmazásokból égetett kalóriákat',
			'onboarding.healthConnect.progressInsights.title' => 'Haladási Betekintések',
			'onboarding.healthConnect.progressInsights.description' => 'Részletes betekintéseket kapsz az egészségi trendjeidbe',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Zökkenőmentes Integráció',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Szinkronizáld az adatokat a kedvenc egészségügyi alkalmazásaidból',
			'onboarding.healthConnect.connected' => 'Health Connect csatlakoztatva',
			'onboarding.healthConnect.notConnected' => 'Health Connect nincs csatlakoztatva',
			'onboarding.healthConnect.setup' => 'Állítsd be a Health Connect-et',
			'onboarding.healthConnect.skipForNow' => 'Most hagyd ki',
			'onboarding.healthConnect.statusConnected' => 'A Health Connect csatlakoztatva van.',
			'onboarding.healthConnect.statusSuccess' => 'A Health Connect sikeresen csatlakoztatva lett!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Hozzáférés megtagadva. Kérjük, engedélyezze a Health Connect engedélyeket a telefon beállításaiból a(z) ${appLabel} számára.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Hiba történt a Health Connect beállításánál: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nem vagy Egyedül',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'A kutatások azt mutatják, hogy a következetes nyomon követés a hosszú távú siker legfontosabb előrejelzője.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Egy ${age} éves ${gender} számára, aki ${goal}-t szeretne elérni, a következetes nyomon követés a siker legfontosabb előrejelzője.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => 'A(z) ${appLabel} 10-szer könnyebbé teszi a dolgot, mint ha manuálisan csinálná.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Készen állsz a kezdésre?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Készíts képet az ételeidről az azonnali elemzéshez',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Rendszeresen jegyezd fel az étkezéseidet a lényeges fejlődés érdekében',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Kövesd a fejlődésed naponta a motivációd fenntartásához',
			'onboarding.reinforcement.trackingSuccess.button' => 'Induljunk!',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'személy',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'egészségesebb te',
			'onboarding.reinforcement.healthProfile.title' => 'Az Egészségügyi Profilod',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'A metrikáid alapján a BMI-d: ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Fejezzük be a profilod, hogy testre szabhassuk az élményed.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'növelni',
			'onboarding.reinforcement.healthProfile.goalLose' => 'csökkenteni',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'A célod eléréséhez ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Elérted a cél súlyodat! Segítünk fenntartani.',
			'onboarding.reinforcement.healthProfile.button' => 'Induljunk!',
			'onboarding.reinforcement.goalLifestyle.title' => 'Kiváló Kezdés!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Megtette az első lépést a(z) ${goalText} felé. Mivel Ön ${activityText}, a(z) ${appLabel} hozzáigazítja a céljait az életmódjához.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Személyre szabott kalóriacélok',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-alapú étkezés-felismerés',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Részletes makrotápanyagbontások',
			'onboarding.reinforcement.goalLifestyle.button' => 'Induljunk!',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'a céljaid',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktív',
			'tabs.dashboard' => 'Irányítópult',
			'tabs.history' => 'Történelem',
			'home.dailyGoal.title' => 'Állítsd Be Napi Célodat',
			'home.dailyGoal.titleSet' => 'Napi Célod',
			'home.dailyGoal.description' => 'Készen állsz elindulni a jóléted útján? Állítsd be napi kalória célodat az alábbiakban a fejlődésed kezdetéhez.',
			'home.dailyGoal.descriptionSet' => 'A tájékozódásod beállítva! Ez a napi kalóriaszámod, ami irányt ad neked.',
			'home.dailyGoal.yourGoal' => 'Célod',
			'home.dailyGoal.goal' => 'Cél',
			'home.dailyGoal.dailyCalories' => 'Napi kalóriák (kcal)',
			'home.dailyGoal.setGoal' => 'Cél Beállítása',
			'home.dailyGoal.intake' => 'Fogyasztás',
			'home.dailyGoal.burned' => 'Elégetett',
			'home.dailyGoal.weightImpact' => 'Súly Hatás',
			'home.dailyGoal.estLoss' => 'Becsült fogyás: ',
			'home.dailyGoal.estGain' => 'Becsült gyarapodás: ',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Napi Összegzés',
			'home.dailySummary.calories' => 'Kalóriák',
			'home.dailySummary.carbs' => 'Szénhidrátok',
			'home.dailySummary.protein' => 'Fehérjék',
			'home.dailySummary.fat' => 'Zsírok',
			'home.dailySummary.fiber' => 'Rost',
			'home.dailySummary.grams' => 'gramm',
			'home.dailySummary.chartAccessibilityLabel' => 'Makrotápanyagok grafikonja',
			'home.intakeProgress.title' => 'Mai Makrómegoszlás',
			'home.intakeProgress.target' => 'Cél',
			'home.intakeProgress.current' => 'Jelenlegi',
			'home.intakeHistory.title' => '7 Napos Makró Történelem',
			'home.intakeHistory.noHistoryYet' => 'Nincs még történet',
			'home.intakeHistory.startLogging' => 'Kezd el étkezéseid naplózását, hogy itt lásd\na 7 napos makró trendjeidet',
			'home.mealLog.title' => 'Naplózott Étkezések',
			'home.mealLog.emptyMessage' => 'Készíts egy képet az utolsó étkezésedről, hogy itt be tudd jegyezni.',
			'home.mealLog.noMealsToday' => 'Ma nincs rögzített étkezés',
			'home.mealLog.seeAllMeals' => 'Összes étkezés megtekintése',
			'home.mealDescription.title' => 'Gyors Hozzáadás AI-val',
			'home.mealDescription.description' => 'Írd le az étkezésed, és hagyd, hogy az AI kezelje a részleteket.',
			'home.mealDescription.hint' => 'pl. Reggelire egy nagy tál zabliszttel, egy szelet banánnal és egy adag tejsavóval ...',
			'home.mealDescription.analyzeMeal' => 'Éttervezés elemzése',
			'home.favoriteMeals.title' => 'Kedvenc Étkezések',
			'home.favoriteMeals.description' => 'Gyorsan add hozzá az egyik kedvenc étkezésed.',
			'home.favoriteMeals.noFavorites' => 'Még nincs kedvenc étkezés.',
			'home.favoriteMeals.addFavoriteHint' => 'Kattints a csillagra egy étkezés mellett, hogy kedvencekké tedd.',
			'home.favoriteMeals.seeAll' => 'Összes megtekintése',
			'home.favoriteMeals.add' => 'Hozzáadás',
			'home.mealSnap.title' => 'Képzelj és Kövesd Az Étkezésed',
			'home.mealSnap.description' => 'Használj kamerát, hogy fényképet készíts az ételedről az AI elemzése érdekében.',
			'home.mealSnap.openCamera' => 'Kamera megnyitása',
			'home.mealSnap.gallery' => 'Galéria',
			'home.connectHealth.title' => 'Szinkronizálás az Health Connect-tel',
			'home.connectHealth.description' => 'Szinkronizáld táplálkozási adataidat az Health Connect-tel',
			'home.connectHealth.install' => 'Telepítés',
			'home.connectHealth.connect' => 'Csatlakozás',
			'history.noMeals' => 'Nincs rögzített étkezés',
			'history.emptyMessage' => 'Készíts egy képet az utolsó étkezésedről, hogy itt be tudd jegyezni.',
			'history.today' => 'Ma',
			'history.yesterday' => 'Tegnap',
			'meal.ohNo' => 'Ó, nem!',
			'meal.delete' => 'Törlés',
			'meal.editMeal' => 'Étkezés szerkesztése',
			'meal.addMeal' => 'Étkezés hozzáadása',
			'meal.saveMeal' => 'Étkezés mentése',
			'meal.save' => 'Mentés',
			'meal.mealName' => 'Étkezés neve',
			'meal.mealNameHint' => 'pl. Rántotta pirítóssal',
			'meal.mealQuantity' => 'Étkezés mennyiség',
			'meal.mealQuantityHint' => 'pl. 1 tál, 2 szelet',
			'meal.timeOfMeal' => 'Étkezés időpontja',
			'meal.timeOfMealHint' => 'Válaszd ki, mikor volt az étkezésed',
			'meal.mealType' => 'Étkezés típusa',
			'meal.nutrition.calories' => 'Kalóriák',
			'meal.nutrition.carbs' => 'Szénhidrátok (g)',
			'meal.nutrition.protein' => 'Fehérjék (g)',
			'meal.nutrition.fat' => 'Zsírok (g)',
			'meal.nutrition.fiber' => 'Rost (g)',
			'meal.deleteConfirmation.title' => 'Étkezés Törlése',
			'meal.deleteConfirmation.message' => 'Biztosan törölni szeretnéd ezt az étkezést?',
			'meal.deleteConfirmation.cancel' => 'Mégse',
			'meal.deleteConfirmation.delete' => 'Törlés',
			'meal.addedToLog' => 'Étkezés hozzáadva a naplóhoz!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nem lehetett étkezést hozzáadni: ${error}',
			'meal.savedSuccessfully' => 'Étkezés sikeresen hozzáadva!',
			'meal.updatedSuccessfully' => 'Étkezés sikeresen frissítve!',
			'meal.errorSaving' => ({required Object error}) => 'Hiba az étkezés mentésekor: ${error}',
			'meal.removedFromFavorites' => 'Eltávolítva a kedvencek közül!',
			'meal.savedAsFavorite' => 'Étkezés mentve kedvencként!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nem lehetett frissíteni a kedvencet: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'A feldolgozás nem sikerült: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'A kép feldolgozása nem sikerült: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Hiba a kép tömörítésekor: ${error}',
			'meal.failedToSave' => 'Az adatok mentése nem sikerült. Kérlek próbáld újra.',
			'meal.skip' => 'Kihagyás',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Kérdés ${current} a ${total}-ből',
			'meal.variation.noVariationsAvailable' => 'Nincsenek elérhető variációk',
			'favorites.title' => 'Kedvencek',
			'favorites.empty' => 'Még nincs kedvenc étkezés.',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Nincs profil adat',
			'profile.yourProfile' => 'A Te Profilod',
			'profile.viewAndManage' => 'Tekintsd meg és kezeld egészségügyi információidat',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'ALAP INFORMÁCIÓK',
			'profile.sections.goalsAndActivity' => 'CÉLOK ÉS TEVÉKENYSÉG',
			'profile.sections.calculatedValues' => 'SZÁMÍTOTT ÉRTÉKEK',
			'profile.gender' => 'Nem',
			'profile.height' => 'Magasság',
			'profile.weight' => 'Súly',
			'profile.age' => 'Kor',
			'profile.weightGoal' => 'Súlycél',
			'profile.targetWeight' => 'Cél Súly',
			'profile.activityLevel' => 'Aktivitási szint',
			'profile.healthMetrics' => 'Egészségügyi mutatók',
			'profile.notSet' => 'Nincs beállítva',
			'profile.years' => 'év',
			'profile.updatedSuccessfully' => 'Profil sikeresen frissítve!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Napi Cél',
			'profile.calculatedValues.calPerDay' => 'kal/nap',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Egészségi Score',
			'healthScore.whyThisScore' => 'Miért ez a pontszám?',
			'healthScore.note' => 'Ez a pontszám egy AI becslés azonosított összetevők és tápanyag sűrűség alapján. Mindig konzultálj szakemberrel diétás tanácsadásért.',
			'healthScore.unhealthy' => 'Egészségtelen',
			'healthScore.healthy' => 'Egészséges',
			'healthScore.neutral' => 'Semleges',
			'editProfile.title' => 'Profil Szerkesztése',
			'editProfile.sections.personalInformation' => 'SZEMÉLYES INFORMÁCIÓK',
			'editProfile.sections.physicalMeasurements' => 'FIZIKAI MÉRÉSEK',
			'editProfile.sections.goalsAndActivity' => 'CÉLOK ÉS TEVÉKENYSÉG',
			'editProfile.gender' => 'Nem',
			'editProfile.dateOfBirth' => 'Születési Dátum',
			'editProfile.height' => 'Magasság',
			'editProfile.weight' => 'Súly',
			'editProfile.weightGoal' => 'Súlycél',
			'editProfile.activityLevel' => 'Aktivitási szint',
			'editProfile.metric' => 'Metrikus',
			'editProfile.imperial' => 'Imperiális',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metrikus (cm)',
			'editProfile.imperialFtIn' => 'Imperiális (láb/hüvelyk)',
			'editProfile.metricKg' => 'Metrikus (kg)',
			'editProfile.imperialLbs' => 'Imperiális (font)',
			'editProfile.genders.male' => 'Férfi',
			'editProfile.genders.female' => 'Nő',
			'editProfile.genders.other' => 'Egyéb',
			'editProfile.weightGoals.loseWeight.name' => 'Fogyás',
			'editProfile.weightGoals.loseWeight.description' => 'Kalóriadeficit létrehozása a fogyás érdekében',
			'editProfile.weightGoals.maintainWeight.name' => 'Súly megőrzése',
			'editProfile.weightGoals.maintainWeight.description' => 'Jelenlegi súlyod fenntartása',
			'editProfile.weightGoals.gainWeight.name' => 'Hízás',
			'editProfile.weightGoals.gainWeight.description' => 'Kalóriatöbblet létrehozása a hízás érdekében',
			'editProfile.activityLevels.sedentary.name' => 'Ülő',
			'editProfile.activityLevels.sedentary.description' => 'Kicsi vagy semmilyen testedzés',
			'editProfile.activityLevels.lightlyActive.name' => 'Enyhén Aktív',
			'editProfile.activityLevels.lightlyActive.description' => 'Könnyű edzés 1-3 nap/hét',
			'editProfile.activityLevels.moderatelyActive.name' => 'Mérsékelten Aktív',
			'editProfile.activityLevels.moderatelyActive.description' => 'Mérsékelt edzés 3-5 nap/hét',
			'editProfile.activityLevels.veryActive.name' => 'Nagyon Aktív',
			'editProfile.activityLevels.veryActive.description' => 'Kemény edzés 6-7 nap/hét',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrém Aktív',
			'editProfile.activityLevels.extremelyActive.description' => 'Nagyon kemény edzés, fizikai munka',
			'settings.title' => 'Beállítások',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'HELYI BEÁLLÍTÁSOK',
			'settings.sections.notifications' => 'ÉRTESÍTÉSEK',
			'settings.sections.healthConnect' => 'EGÉSZSÉG KAPCSOLAT',
			'settings.sections.supportAndLegal' => 'TÁMOGATÁS ÉS JOGI ÜGYEK',
			'settings.sections.about' => 'TÁJÉKOZTATÁS',
			'settings.sections.dangerZone' => 'VESZÉLYES ZÓNA',
			'settings.sections.developer' => 'FEJLESZTŐ',
			'settings.editProfile.title' => 'Profil Szerkesztése',
			'settings.editProfile.subtitle' => 'Frissítsd személyes adataidat',
			'settings.language.title' => 'Nyelv',
			'settings.language.subtitle' => 'Válaszd ki preferált nyelved',
			'settings.language.searchHint' => 'Nyelvek keresése...',
			'settings.language.noResults' => 'Nincs találat',
			'settings.heightUnit.title' => 'Magasság Mértékegysége',
			'settings.weightUnit.title' => 'Súly Mértékegysége',
			'settings.mealReminders.title' => 'Étkezés Emlékeztetők',
			'settings.mealReminders.subtitle' => 'Tartsd az ütemet időben érkező értesítésekkel',
			'settings.theme.title' => 'Téma',
			'settings.theme.light' => 'Világos',
			'settings.theme.dark' => 'Sötét',
			'settings.theme.system' => 'Rendszer',
			'settings.sendFeedback.title' => 'Visszajelzés Küldése',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Segítsen nekünk fejleszteni a(z) ${appLabel} alkalmazást',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} Alkalmazás Visszajelzés',
			'settings.sendFeedback.emailBodyPrefix' => 'Kérlek, írd meg visszajelzésed alább:',
			'settings.sendFeedback.appVersion' => 'Alkalmazás Verzió',
			'settings.sendFeedback.device' => 'Eszköz',
			'settings.sendFeedback.osVersion' => 'OS Verzió',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Összes Adat Törlése',
			'settings.clearAllData.subtitle' => 'Visszafordíthatatlanul töröld az összes információdat',
			'settings.clearAllData.confirmationTitle' => 'Összes Adat Törlése?',
			'settings.clearAllData.confirmationMessage' => 'Ez a művelet nem vonható vissza. Minden rögzített étkezésed, kedvenc, és profilbeállítás véglegesen törlésre kerül.',
			'settings.clearAllData.cancel' => 'Mégse',
			'settings.clearAllData.clearEverything' => 'Összes Törlése',
			'settings.debugOptions.title' => 'Hibakeresési Beállítások',
			'settings.developerModeEnabled' => 'Fejlesztő mód engedélyezve!',
			'settings.healthConnect.title' => 'Egészség Kapcsolat',
			'settings.healthConnect.subtitle' => 'Engedélyek megtekintése és kezelése',
			'settings.healthConnect.unavailable.title' => 'Health Connect nem elérhető',
			'settings.healthConnect.unavailable.description' => 'A Health Connect nem érhető el ezen az eszközön. Kérjük, telepítse a Health Connectet a Play Áruházból (Android 9+), vagy frissítsen Android 14+-ra.',
			'settings.healthConnect.permissions.title' => 'Engedélyek',
			'settings.healthConnect.permissions.description' => 'Az alábbi engedélyeket kérjük az Egészség Kapcsolat integráció biztosításához:',
			'settings.healthConnect.permissions.granted' => 'Engedélyezve',
			'settings.healthConnect.permissions.notGranted' => 'Nem Engedélyezve',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Összes Kcal Égetése Olvasása',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Lehetővé teszi az alkalmazás számára, hogy elolvassa a Health Connect-en a teljes elégetett kalóriát.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Ez az engedély szükséges a napi kalóriaégetés megjelenítéséhez az alkalmazásban, segítve a napi energiapazarlás megértését.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Tápanyagadatok Olvasása',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Lehetővé teszi az alkalmazás számára, hogy elolvassa a tápanyagadatokat az Egészség Kapcsolattól.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Ez az engedély lehetővé teszi az alkalmazás számára, hogy hozzáférjen azokra a tápanyaginformációkra, amelyeket más alkalmazások rögzítettek, amelyek kapcsolódnak az Egészség Kapcsolathoz, átfogó képet adva a táplálkozásodról.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Tápanyagadatok Írása',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Lehetővé teszi az alkalmazás számára, hogy tápanyagadatokat írjon az Egészség Kapcsolatra.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Ez az engedély lehetővé teszi az alkalmazás számára, hogy szinkronizálja a rögzített ételeidet az Egészség Kapcsolatra, így a táplálkozási adataid más egészségügyi és fitness alkalmazások számára is elérhetővé válnak.',
			'settings.healthConnect.managePermissions' => 'Engedélyek Kezelése',
			'settings.healthConnect.openSettings' => 'Nyisd meg az Egészségkapcsolat beállításait',
			'settings.healthConnect.requestPermissions' => 'Engedélyek kérése',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Az engedélykérés megszakadt vagy sikertelen volt. Próbáld újra, vagy add meg az engedélyeket manuálisan a Health Connect beállításaiban.',
			'settings.healthConnect.permissionRequestFailed' => 'Nem sikerült engedélyeket kérni. Próbáld újra, vagy add meg az engedélyeket manuálisan a Health Connect beállításaiban.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Rólunk',
			'settings.about.tagline' => 'Gyors, ingyenes és adatvédelmi szempontból elsődleges kalóriaszámláló',
			'settings.about.ourStory.title' => 'Történetünk',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} egy egyszerű frusztrációból született: a legtöbb kalóriaszámláló alkalmazás vagy túlságosan bonyolult, folyamatos manuális bevitelre kényszerít, magas előfizetési díjakat kér, vagy megtévesztően kezeli az adatvédelmet.\n\nFüggetlen fejlesztőként olyan dolgot akartam létrehozni, ami egyszerűbb és tisztességesebb – egy alkalmazást, amely mesterséges intelligenciát használ a munka csökkentésére, gyors marad, ingyenesen használható, és tisztelettel kezeli az egészségügyi adataidat.\n\n${appLabel} az alkalmazás, amit szerettem volna, ha létezne: nincs fiók, nincs követés, nincs hirdetés – csak világos, gyakorlati betekintések és az egészségügyi céljaid.',
			'settings.about.privacy.title' => 'Az Ön Adatvédelme Fontos',
			'settings.about.privacy.description' => 'Az adatvédelem nem utolsó pillanatos gondolat – ez egy tervezési elv. Ez a gyakorlatban azt jelenti:',
			'settings.about.privacy.noAccounts' => 'Nincs szükség fiókra\nAz alkalmazást azonnal használhatja. Nincs regisztráció, nincs személyazonosság.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Nincs viselkedési követés\n${appLabel} nem figyeli az Ön tevékenységét, nem épít felhasználói profilokat, és nem követi nyomon különböző alkalmazásokban vagy weboldalakon.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Hirdetésmentes tervezés\n${appLabel} úgy van megalkotva, hogy működjön hirdetések vagy adatvezérelt monetizáció nélkül.',
			'settings.about.privacy.noDataSelling' => 'Nincs adatértékesítés\nAz egészségügyi adataid soha nem kerülnek eladásra vagy megosztásra harmadik felekkel.',
			'settings.about.privacy.localStorage' => 'Helyi tárolás előtérbe helyezve\nAz adataid a készülékeden maradnak.',
			'settings.about.privacy.privacyPolicy' => 'Adatvédelmi irányelvek',
			'settings.about.developer.title' => 'Független Solo Fejlesztő Által Készítve',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} egyetlen solo fejlesztő által készült és karbantartott, aki a nyugodt, adatvédelmet tiszteletben tartó egészségügyi szoftverek fejlesztésére összpontosít.\n\nA visszajelzéseket személyesen olvassuk és segítenek alakítani az alkalmazás irányát.',
			'settings.about.developer.website' => 'Weboldal',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Tetszik a(z) ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'A visszajelzésed segít abban, hogy a(z) ${appLabel} jobb legyen mindenki számára.',
			'settings.about.feedback.rateApp' => 'Értékelje a Play Áruházban',
			'settings.about.feedback.sendFeedback' => 'Visszajelzés küldése',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Tartsd az ütemet emlékeztetőkkel',
			'reminders.description' => 'Kapsz enyhe emlékeztetőket, hogy naplózd az étkezéseidet és következetes maradj táplálkozási céljaidnál',
			'reminders.notificationsEnabled' => 'Értesítések Engedélyezve',
			'reminders.notificationsDisabled' => 'Értesítések Letiltva',
			'reminders.enabledSubtitle' => 'Érkezni fognak étkezés emlékeztetők',
			'reminders.disabledSubtitle' => 'Engedélyezd az értesítéseket az étkezés emlékeztetők megszerzéséhez',
			'reminders.mealReminders' => 'Étkezés Emlékeztetők',
			'reminders.breakfast' => 'Reggeli',
			'reminders.lunch' => 'Ebéd',
			'reminders.dinner' => 'Vacsora',
			'reminders.snack' => 'Uzsonna',
			'reminders.unknown' => 'Ismeretlen',
			'reminders.change' => 'Változtatás',
			'reminders.enableNotifications' => 'Értesítések Engedélyezése',
			'reminders.skipForNow' => 'Most kihagy',
			'reminders.saveChanges' => 'Változások Mentése',
			'reminders.enabledSuccessfully' => 'Értesítések sikeresen engedélyezve!',
			'reminders.permissionDenied' => 'Értesítési engedély megtagadva',
			'reminders.errorEnabling' => ({required Object error}) => 'Hiba az értesítések engedélyezésekor: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Hiba a beállítások befejezésében: ${error}',
			'notifications.breakfast.title' => 'Reggeli Idő! 🍳',
			'notifications.breakfast.body' => 'Ne felejtsd el bejegyezni a reggelidet',
			'notifications.lunch.title' => 'Ebéd Idő! 🥗',
			'notifications.lunch.body' => 'Ideje bejegyezni az ebéded',
			'notifications.dinner.title' => 'Vacsora Idő! 🍽️',
			'notifications.dinner.body' => 'Ne felejtsd el bejegyezni a vacsorádat',
			'notifications.snack.title' => 'Uzsonna Idő! 🍎',
			'notifications.snack.body' => 'Ideje egy egészséges uzsonnára',
			'notifications.test.title' => 'Teszt Értesítés',
			'login.title' => 'Bejelentkezés',
			'login.signInWithGoogle' => 'Bejelentkezés Google-lal',
			'login.signInFailed' => 'A Google-bejelentkezés sikertelen vagy megszakadt.',
			'disclaimer.pleaseNote' => 'Kérlek, vedd figyelembe',
			'disclaimer.snap.description' => ({required Object appLabel}) => 'A(z) ${appLabel} becsült tápanyaginformációkat nyújt. A pontosság a megadott adatoktól és az ételek változatosságától függ. Használja útmutatóként, ne pedig végérvényes forrásként. Kérjük, konzultáljon szakemberrel a személyre szabott táplálkozási tanácsokért.',
			'disclaimer.snap.portionSize.title' => 'Adag Méret',
			'disclaimer.snap.portionSize.description' => 'A becslések pontossága erősen függ a megfelelő adagméret megítélésétől.',
			'disclaimer.snap.preparationMethods.title' => 'Előkészítési Módszerek',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'A főzési módszerek jelentősen befolyásolhatják az ételek tápanyagtartalmát. A(z) ${appLabel} becslései nem mindig veszik figyelembe ezeket a változásokat.',
			'disclaimer.snap.ingredients.title' => 'Összetevők',
			'disclaimer.snap.ingredients.description' => 'A bonyolult ételek sok rejtett összetevője miatt a becslések kevésbé pontosak lehetnek.',
			'disclaimer.snap.databaseLimitations.title' => 'Adatbázis Korlátozások',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'A(z) ${appLabel} élelmiszer-adatbázisa széleskörű, de előfordulhat, hogy nem tartalmazza az összes élelmiszert vagy változatot.',
			'disclaimer.weightEstimate.title' => 'A Súlybecslésről',
			'disclaimer.weightEstimate.description' => 'A becsült súlyváltozás egy elméleti becslés, amely az egyszerű kalória-bevitel és -kiadás modell alapján készül. Csak motiváló útmutatásként szolgál, nem pedig a tényleges súlyod előrejelzéseként.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalória Pontosság',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Ez a becslés csak annyira pontos, amennyire a nyomon követett kalória bevitel és kiadás akkurátus. A pontatlan naplózás pontatlan előrejelzést eredményez.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biológiai Tényezők',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'A valódi súlyvesztést/gyarapodást a metabolizmus, hormonok, alvás, stressz, hidratáció és egyéb egyéni tényezők befolyásolják, amelyeket a(z) ${appLabel} nem tud mérni.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Víz Súly & Ingadozások',
			'disclaimer.weightEstimate.waterWeight.description' => 'A normális napi súly jelentősen ingadozhat a vízvisszatartás, emésztés és időzítés miatt. A becslés nem veszi figyelembe ezeket a napi változásokat.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Szakmai Útmutatás',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Ne használd ezt a becslést orvosi döntések meghozatalához. Mindig konzultálj egészségügyi szakemberrel vagy bejegyzett dietetikussal személyre szabott súlykezelési tanácsadásért.',
			'disclaimer.healthMetrics.description' => 'Ezek a mutatók segítenek megérteni a tested energiaigényét, és irányt mutatnak a táplálkozási céljaidhoz.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'A Bazális Anyagcsere Sebessége (BMR) az a kalóriamennyiség, amelyet a tested nyugalmi állapotban éget el az alapvető funkciók fenntartásához, mint a légzés és a vérkeringés. A BMR a korodtól, nemedtől, magasságodtól és súlyodtól függ. A magasabb BMR azt jelenti, hogy a tested természetesen több kalóriát éget el nyugalomban, jellemzően a nagyobb izomtömeg, a fiatalabb kor vagy a férfi nem következményeként. Az alacsonyabb BMR általában kevesebb izomtömegre, idősebb korra vagy női nemre utal.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'A Teljes Napi Energiafelhasználás (TDEE) az a kalóriamennyiség, amelyet egy nap alatt elégetsz, beleértve a BMR-t és a fizikai aktivitásból valamint a napi mozgásból származó kalóriákat. A TDEE a BMR-dtől és az aktivitási szintedtől függ. A magasabb TDEE azt jelenti, hogy összességében több kalóriát égetsz el, általában a nagyobb aktivitásból vagy a magasabb BMR-ből adódóan. Az alacsonyabb TDEE kevesebb napi aktivitást vagy alacsonyabb BMR-t jelez.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Napi Cél',
			'disclaimer.healthMetrics.dailyGoal.description' => 'A Napi Cél a javasolt napi kalóriabeviteled, amely a TDEE-d és a súlycélod alapján van megállapítva. Súlycsökkentés esetén kevesebb kalóriát fogyasztasz, mint a TDEE-d. A súly fenntartásához a TDEE-dnek megfelelő mennyiséget fogyasztasz. Súlygyarapodás érdekében pedig többet eszel, mint a TDEE-d. Ez segít elérni a kívánt súlyváltozást egészséges ütemben.',
			'common.close' => 'Bezárás',
			'common.kContinue' => 'Tovább',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Tetszik a ${appLabel}?',
			'feedbackRating.yes' => 'Igen, tetszik!',
			'feedbackRating.no' => 'Nem igazán',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Egy gyors értékelés segít másoknak megtalálni a(z) ${appLabel} alkalmazást, és támogatja a fejlesztés folytatását. Szánnál rá egy pillanatot, hogy írj egyet?',
			'feedbackRating.shareFeedbackViaEmail' => 'A visszajelzésed alakítja, mi következik — minden üzenetet elolvasunk. Szeretnéd e-mailben megosztani a gondolataidat?',
			'feedbackRating.rateCta' => 'Értékeld a Play Áruházban',
			'feedbackRating.maybeLater' => 'Majd később',
			'feedbackRating.sendFeedback' => 'Visszajelzés küldése',
			'feedbackRating.noThanks' => 'Nem, köszönöm',
			'feedbackRating.aboutUsDescription' => 'Egy kis csapat gondos munkájával készült. Különös figyelmet fordítunk a magánszférára, az egyszerűségre és arra, hogy segítsünk jobb étkezési szokásokat kialakítanod.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Kíváncsi vagy, ki áll a ${appLabel} mögött? Nézd meg ',
			'feedbackRating.aboutUsLinkLabel' => 'Rólunk',
			'errors.loadingProfileData' => 'Hiba a profiladatok betöltésekor',
			'errors.somethingWentWrong' => 'Valami hiba történt.',
			'debug.title' => 'Hibakeresési Beállítások',
			'debug.searchHint' => 'Keresési opciók...',
			'debug.sections.notifications' => 'Értesítések',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.wearOs' => 'Wear OS',
			'debug.sections.foodApiTests' => 'Étel API tesztek',
			'debug.sections.feedback' => 'Visszajelzés',
			'debug.sections.dataReset' => 'Adatok visszaállítása',
			'debug.sections.appInfo' => 'Alkalmazás Információ',
			'debug.sections.shorebird' => 'Shorebird',
			'debug.showActiveNotifications' => 'Aktív Értesítések Megjelenítése',
			'debug.scheduleTestNotification' => 'Teszt Értesítés Ütemezése (10s)',
			'debug.triggerBreakfastNotification' => 'Reggeli Értesítés Kioldása',
			'debug.cancelAllNotifications' => 'Összes Értesítés Törlése',
			'debug.activeNotifications' => 'Aktív Értesítések',
			'debug.noTitle' => 'Nincs Cím',
			'debug.noBody' => 'Nincs Törzs',
			'debug.fetchTodaysSteps' => 'Ma Lépések Lekérése',
			'debug.fetchTodaysCalories' => 'Ma Kalóriák Lekérése',
			'debug.fetchLatestWeight' => 'Legfrissebb Súly Lekérése',
			'debug.fetchLatestHeight' => 'Legfrissebb Magasság Lekérése',
			'debug.writeTestWeight' => 'Teszt Súly Írása (70kg)',
			'debug.writeTestHeight' => 'Teszt Magasság Írása (175cm)',
			'debug.syncLast7Days' => 'Utolsó 7 Nap Szinkronizálása',
			'debug.sync7DaysTitle' => '7 Napos Szinkronizálás',
			'debug.checkCurrentLocale' => 'Jelenlegi Helyi Beállítás Ellenőrzése',
			'debug.currentLocale' => 'Jelenlegi nyelv',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Nyelv: ${languageCode}\nOrszág: ${countryCode}\nMetrikus rendszer: ${unitSystem}',
			'debug.latestWeight' => 'Legfrissebb Súly',
			'debug.latestHeight' => 'Legfrissebb Magasság',
			'debug.todaysCalories' => 'Mai Kalóriák',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Összes elégetett kalória: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Sikeresen lekérhető ${count} adatpontok a lépések, kalóriák és súly terén az elmúlt 7 napban.',
			'debug.noWeightData' => 'Az utolsó 30 napban nincs súly adat.',
			'debug.noHeightData' => 'Nincs magasság adat az utolsó évben.',
			'debug.noCalorieData' => 'Ma nincs kalória adat.',
			'debug.weightWritten' => 'Teszt súly (70kg) sikeresen íródott.',
			'debug.weightWriteFailed' => 'A teszt súly írása nem sikerült.',
			'debug.heightWritten' => 'Teszt magasság (175cm) sikeresen íródott.',
			'debug.heightWriteFailed' => 'A teszt magasság írása nem sikerült.',
			'debug.noNotifications' => 'Nincs aktív értesítés.',
			'debug.testNotificationScheduled' => 'Teszt értesítés ütemezve, 10 másodperc múlva.',
			'debug.testNotificationBody' => 'Ez egy teszt értesítés, ütemezve 10 másodperc múlva.',
			'debug.breakfastNotificationTriggered' => 'Reggeli értesítés kioldva.',
			'debug.allNotificationsCancelled' => 'Összes értesítés törölve.',
			'debug.fetchingData' => 'Adatok lekérése az elmúlt 7 napra...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'debug.showFeedbackRatingSheet' => 'Visszajelzés/értékelés megjelenítése',
			'debug.clearUserPreferences' => 'Felhasználói beállítások törlése',
			'debug.clearUserPreferencesConfirmationTitle' => 'Töröljük a felhasználói beállításokat?',
			'debug.clearUserPreferencesConfirmationMessage' => 'A téma, a nyelv és a visszajelzési beállítások visszaállnak. Az étkezések és a profil nem érintett.',
			'debug.clearUserProfile' => 'Felhasználói profil törlése',
			'debug.clearUserProfileConfirmationTitle' => 'Töröljük a felhasználói profilt?',
			'debug.clearUserProfileConfirmationMessage' => 'A profiladataid (napi cél, magasság, testsúly stb.) törlődnek. Az étkezések és a beállítások nem érintettek.',
			'debug.clear' => 'Törlés',
			'debug.cancel' => 'Mégse',
			'debug.checkWatchConnection' => 'Óra kapcsolat ellenőrzése',
			'debug.sendTestMessage' => 'Tesztüzenet küldése',
			'debug.sendTestMessageSubtitle' => 'Küldj egy egyszerű tesztüzenetet az órára',
			'debug.sendTestMealData' => 'Teszt ételadat küldése',
			'debug.sendTestMealDataSubtitle' => 'Minta ételadat küldése az órára',
			'debug.sendTestCalorieGoal' => 'Teszt kalóriacél küldése',
			'debug.sendTestCalorieGoalSubtitle' => 'Minta kalóriacél küldése az órára',
			'debug.viewReceivedMessages' => 'Kapott üzenetek megtekintése',
			'debug.viewReceivedMessagesSubtitle' => 'Az óráról érkezett üzenetek megtekintése',
			'debug.watchConnected' => 'Óra csatlakoztatva ✓',
			'debug.device' => 'Eszköz',
			'debug.nearby' => 'Közelben',
			'debug.yes' => 'Igen',
			'debug.no' => 'Nem',
			'debug.connectedDevices' => 'Csatlakoztatott eszközök',
			'debug.deviceInfoUnavailable' => '(Eszközinformációk nem elérhetők)',
			'debug.unknownDevice' => 'Ismeretlen eszköz',
			'debug.watchNotConnected' => 'Óra nincs csatlakoztatva ✗',
			'debug.watchNotConnectedHint' => 'Győződj meg róla:\n• Mindkét eszköz párosítva van\n• Az óra alkalmazás fut\n• Mindkét alkalmazás hibakereső/staging módban van',
			'debug.watchConnection' => 'Óra kapcsolat',
			'debug.errorCheckingConnection' => ({required Object error}) => 'Hiba a kapcsolat ellenőrzése közben: ${error}',
			'debug.helloFromPhone' => 'Szia a telefonról!',
			'debug.testMessageSentSuccess' => 'Tesztüzenet sikeresen elküldve!',
			'debug.testMessageFailed' => 'Nem sikerült elküldeni a tesztüzenetet. Ellenőrizd az óra kapcsolatát.',
			'debug.errorSendingMessage' => ({required Object error}) => 'Hiba az üzenet küldésekor: ${error}',
			'debug.testMeal' => 'Teszt étel',
			'debug.testMealDataSentSuccess' => 'Teszt ételadat sikeresen elküldve!',
			'debug.failedToSendMealData' => 'Nem sikerült elküldeni az ételadatot. Ellenőrizd az óra kapcsolatát.',
			'debug.errorSendingMealData' => ({required Object error}) => 'Hiba az ételadat küldésekor: ${error}',
			'debug.testCalorieGoalSentSuccess' => 'Teszt kalóriacél sikeresen elküldve!',
			'debug.failedToSendCalorieGoal' => 'Nem sikerült elküldeni a kalóriacélt. Ellenőrizd az óra kapcsolatát.',
			'debug.errorSendingCalorieGoal' => ({required Object error}) => 'Hiba a kalóriacél küldésekor: ${error}',
			'debug.testAnalyzeImage' => 'Kép elemzés tesztelése',
			'debug.testAnalyzeImageSubtitle' => 'Előre beállított tesztkép feltöltése',
			'debug.testDetectImage' => 'Kép felismerés tesztelése',
			'debug.testDetectImageSubtitle' => 'Ételfelismerés kép URL alapján',
			'debug.detectImageFromGallery' => 'Kép felismerése a galériából',
			'debug.detectImageFromGallerySubtitle' => 'Válassz képet, töltsd fel a tárhelyre és becsüld meg a kalóriákat',
			'debug.testDetectText' => 'Szövegfelismerés tesztelése',
			'debug.testDetectTextSubtitle' => 'Ételfelismerés szöveges leírásból',
			'debug.testMealLoggingWithVariations' => 'Ételfelvitel tesztelése variációkkal',
			'debug.testMealLoggingWithVariationsSubtitle' => 'Teszteld a teljes ételfelviteli folyamatot variációkkal',
			'debug.mockMealWithVariations' => 'Mintaétel variációkkal',
			'debug.mockMealWithVariationsSubtitle' => 'Variációk és tipp lap UI előnézete naplózás nélkül',
			_ => null,
		} ?? switch (path) {
			'debug.mockMealName' => 'Grillezett csirke rizzsel és zöldségekkel',
			'debug.mockTip' => 'Ez egy minta tipp a felhasználói felület előnézetéhez. Az étel nincs rögzítve.',
			'debug.mockMealDescription' => 'Minta étel hibakereséshez',
			'debug.portionSizeQuestion' => 'Milyen volt az adagméret?',
			'debug.extraSidesQuestion' => 'Volt extra köret?',
			'debug.optionSmall' => 'Kicsi',
			'debug.optionMedium' => 'Közepes',
			'debug.optionLarge' => 'Nagy',
			'debug.optionNone' => 'Nincs',
			'debug.optionSideSalad' => 'Köret saláta',
			'debug.optionBreadRoll' => 'Zsemle',
			'debug.testingAnalyzeImage' => 'analyzeImage API tesztelése...',
			'debug.testingDetectImage' => 'detectImage API tesztelése...',
			'debug.testingDetectText' => 'detectText API tesztelése...',
			'debug.selectingImageFromGallery' => 'Kép kiválasztása a galériából...',
			'debug.noImageSelected' => 'Nincs kép kiválasztva',
			'debug.compressingImage' => 'Kép tömörítése...',
			'debug.uploadingImageAndDetecting' => 'Kép feltöltése a tárhelyre és az étel felismerése...',
			'debug.testingMealLoggingFlow' => 'Ételfelviteli folyamat tesztelése variációkkal...',
			'debug.noMealIdentifiedInResponse' => 'A válaszban nem azonosítható étel',
			'debug.mealIdentified' => 'Étel felismerve',
			'debug.confidence' => 'Valószínűség',
			'debug.tip' => 'Tipp',
			'debug.mealName' => 'Étel neve',
			'debug.calories' => 'Kalória',
			'debug.protein' => 'Fehérje',
			'debug.carbs' => 'Szénhidrát',
			'debug.fat' => 'Zsír',
			'debug.noMealInfo' => 'Nincs ételinformáció',
			'debug.na' => 'Nincs adat',
			'debug.analyzeImageResult' => 'Kép elemzés eredménye',
			'debug.detectImageResult' => 'Kép felismerés eredménye',
			'debug.detectImageFromGalleryResult' => 'Galériából történő kép felismerés eredménye',
			'debug.detectTextResult' => 'Szövegfelismerés eredménye',
			'debug.errorGeneric' => ({required Object error}) => 'Hiba: ${error}',
			'debug.variationsCount' => 'Variációk',
			'debug.userPreferencesCleared' => 'Felhasználói beállítások törölve',
			'debug.userProfileCleared' => 'Felhasználói profil törölve',
			'debug.checkForUpdate' => 'Frissítések keresése',
			'debug.showPatchNumber' => 'Patch szám megjelenítése',
			'debug.showUpdateAvailable' => 'Frissítés elérhető jelzése',
			'debug.updateAvailable' => 'Frissítés elérhető',
			'debug.upToDate' => 'Naprakész',
			'debug.shorebirdUnavailable' => 'A Shorebird nem érhető el ebben a környezetben.',
			'debug.patchNumberLabel' => 'Patch szám',
			'debug.noPatchInstalled' => 'Nincs telepített patch',
			'debug.todaysSteps' => 'Mai lépések',
			'debug.stepsLabel' => 'Lépések',
			'debug.weightLabel' => ({required Object value}) => 'Súly: ${value} kg',
			'debug.heightLabel' => ({required Object value}) => 'Magasság: ${value} cm',
			'debug.receivedMessagesFromWatch' => 'Óráról kapott üzenetek',
			'debug.noMessagesReceivedYet' => 'Még nem érkezett üzenet.\n\nKüldj tesztadatot az óráról, hogy itt lásd az üzeneteket.',
			'debug.messagesCleared' => 'Üzenetek törölve',
			'health.syncFailed' => 'Nem sikerült szinkronizálni a Health Connect-tel',
			'health.mealSynced' => 'Étkezés szinkronizálva a Health Connect-tel',
			_ => null,
		};
	}
}
