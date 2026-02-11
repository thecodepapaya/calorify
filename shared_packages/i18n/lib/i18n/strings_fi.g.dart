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
class TranslationsFi with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFi _root = this; // ignore: unused_field

	@override 
	TranslationsFi $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFi(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Suomi';
	@override String get flag => '🇫🇮';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingFi onboarding = _TranslationsOnboardingFi._(_root);
	@override late final _TranslationsTabsFi tabs = _TranslationsTabsFi._(_root);
	@override late final _TranslationsHomeFi home = _TranslationsHomeFi._(_root);
	@override late final _TranslationsHistoryFi history = _TranslationsHistoryFi._(_root);
	@override late final _TranslationsMealFi meal = _TranslationsMealFi._(_root);
	@override late final _TranslationsFavoritesFi favorites = _TranslationsFavoritesFi._(_root);
	@override late final _TranslationsProfileFi profile = _TranslationsProfileFi._(_root);
	@override late final _TranslationsHealthScoreFi healthScore = _TranslationsHealthScoreFi._(_root);
	@override late final _TranslationsEditProfileFi editProfile = _TranslationsEditProfileFi._(_root);
	@override late final _TranslationsSettingsFi settings = _TranslationsSettingsFi._(_root);
	@override late final _TranslationsRemindersFi reminders = _TranslationsRemindersFi._(_root);
	@override late final _TranslationsNotificationsFi notifications = _TranslationsNotificationsFi._(_root);
	@override late final _TranslationsLoginFi login = _TranslationsLoginFi._(_root);
	@override late final _TranslationsDisclaimerFi disclaimer = _TranslationsDisclaimerFi._(_root);
	@override late final _TranslationsCommonFi common = _TranslationsCommonFi._(_root);
	@override late final _TranslationsFeedbackRatingFi feedbackRating = _TranslationsFeedbackRatingFi._(_root);
	@override late final _TranslationsErrorsFi errors = _TranslationsErrorsFi._(_root);
	@override late final _TranslationsDebugFi debug = _TranslationsDebugFi._(_root);
	@override late final _TranslationsHealthFi health = _TranslationsHealthFi._(_root);
}

// Path: onboarding
class _TranslationsOnboardingFi implements TranslationsOnboardingEn {
	_TranslationsOnboardingFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Tervetuloa ${appLabel} -sovellukseen';
	@override String get subtitle => 'Henkilökohtainen ravitsemuskumppanisi, jota ohjaa tekoäly';
	@override String get getStarted => 'Aloita';
	@override late final _TranslationsOnboardingFeaturesFi features = _TranslationsOnboardingFeaturesFi._(_root);
	@override late final _TranslationsOnboardingGenderFi gender = _TranslationsOnboardingGenderFi._(_root);
	@override late final _TranslationsOnboardingHeightFi height = _TranslationsOnboardingHeightFi._(_root);
	@override late final _TranslationsOnboardingWeightFi weight = _TranslationsOnboardingWeightFi._(_root);
	@override late final _TranslationsOnboardingAgeFi age = _TranslationsOnboardingAgeFi._(_root);
	@override late final _TranslationsOnboardingBmiScaleFi bmiScale = _TranslationsOnboardingBmiScaleFi._(_root);
	@override late final _TranslationsOnboardingWeightGoalFi weightGoal = _TranslationsOnboardingWeightGoalFi._(_root);
	@override late final _TranslationsOnboardingActivityLevelFi activityLevel = _TranslationsOnboardingActivityLevelFi._(_root);
	@override late final _TranslationsOnboardingHealthConnectFi healthConnect = _TranslationsOnboardingHealthConnectFi._(_root);
	@override late final _TranslationsOnboardingReinforcementFi reinforcement = _TranslationsOnboardingReinforcementFi._(_root);
}

// Path: tabs
class _TranslationsTabsFi implements TranslationsTabsEn {
	_TranslationsTabsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Hallintapaneeli';
	@override String get history => 'Historia';
}

// Path: home
class _TranslationsHomeFi implements TranslationsHomeEn {
	_TranslationsHomeFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalFi dailyGoal = _TranslationsHomeDailyGoalFi._(_root);
	@override late final _TranslationsHomeDailySummaryFi dailySummary = _TranslationsHomeDailySummaryFi._(_root);
	@override late final _TranslationsHomeIntakeProgressFi intakeProgress = _TranslationsHomeIntakeProgressFi._(_root);
	@override late final _TranslationsHomeIntakeHistoryFi intakeHistory = _TranslationsHomeIntakeHistoryFi._(_root);
	@override late final _TranslationsHomeMealLogFi mealLog = _TranslationsHomeMealLogFi._(_root);
	@override late final _TranslationsHomeMealDescriptionFi mealDescription = _TranslationsHomeMealDescriptionFi._(_root);
	@override late final _TranslationsHomeFavoriteMealsFi favoriteMeals = _TranslationsHomeFavoriteMealsFi._(_root);
	@override late final _TranslationsHomeMealSnapFi mealSnap = _TranslationsHomeMealSnapFi._(_root);
	@override late final _TranslationsHomeConnectHealthFi connectHealth = _TranslationsHomeConnectHealthFi._(_root);
}

// Path: history
class _TranslationsHistoryFi implements TranslationsHistoryEn {
	_TranslationsHistoryFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Ei kirjattuja aterioita';
	@override String get emptyMessage => 'Ota kuva viimeisestä ateriastasi kirjataksesi sen tänne.';
	@override String get today => 'Tänään';
	@override String get yesterday => 'Eilen';
}

// Path: meal
class _TranslationsMealFi implements TranslationsMealEn {
	_TranslationsMealFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Voi ei!';
	@override String get delete => 'Poista';
	@override String get editMeal => 'Muokkaa Ateriaa';
	@override String get addMeal => 'Lisää Ateria';
	@override String get saveMeal => 'Tallenna Ateria';
	@override String get save => 'Tallenna';
	@override String get mealName => 'Aterian Nimi';
	@override String get mealNameHint => 'esim. munakokkeli ja paahtoleipä';
	@override String get mealQuantity => 'Aterian Määrä';
	@override String get mealQuantityHint => 'esim. 1 kulho, 2 viipaletta';
	@override String get timeOfMeal => 'Aterian Aika';
	@override String get timeOfMealHint => 'Valitse aika, jolloin söit ateriasi';
	@override String get mealType => 'Ateriatyyppi';
	@override late final _TranslationsMealNutritionFi nutrition = _TranslationsMealNutritionFi._(_root);
	@override late final _TranslationsMealDeleteConfirmationFi deleteConfirmation = _TranslationsMealDeleteConfirmationFi._(_root);
	@override String get addedToLog => 'Ateria lisätty lokiisi!';
	@override String couldNotAdd({required Object error}) => 'Ateriaa ei voitu lisätä: ${error}';
	@override String get savedSuccessfully => 'Ateria lisätty onnistuneesti!';
	@override String get updatedSuccessfully => 'Ateria päivitetty onnistuneesti!';
	@override String errorSaving({required Object error}) => 'Virhe tallennettaessa ateriaa: ${error}';
	@override String get removedFromFavorites => 'Poistettu suosikeista!';
	@override String get savedAsFavorite => 'Ateria tallennettu suosikiksi!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Suosikkia ei voitu päivittää: ${error}';
	@override String failedToProcess({required Object error}) => 'Käsittely epäonnistui: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Kuvan käsittely epäonnistui: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Virhe kuvan pakkaamisessa: ${error}';
	@override String get failedToSave => 'Tiedon tallentaminen epäonnistui. Yritä uudelleen.';
	@override String get skip => 'Ohita';
	@override late final _TranslationsMealVariationFi variation = _TranslationsMealVariationFi._(_root);
}

// Path: favorites
class _TranslationsFavoritesFi implements TranslationsFavoritesEn {
	_TranslationsFavoritesFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suosikit';
	@override String get empty => 'Ei suosikkiaterioita vielä.';
}

// Path: profile
class _TranslationsProfileFi implements TranslationsProfileEn {
	_TranslationsProfileFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profiili';
	@override String get noProfileData => 'Profiilitietoja ei löytynyt';
	@override String get yourProfile => 'Profiilisi';
	@override String get viewAndManage => 'Näytä ja hallitse terveystietojasi';
	@override late final _TranslationsProfileSectionsFi sections = _TranslationsProfileSectionsFi._(_root);
	@override String get gender => 'Sukupuoli';
	@override String get height => 'Pituus';
	@override String get weight => 'Paino';
	@override String get age => 'Ikä';
	@override String get weightGoal => 'Painontavoite';
	@override String get targetWeight => 'Tavoitepaino';
	@override String get activityLevel => 'Aktiivisuustaso';
	@override String get healthMetrics => 'Terveysmittarit';
	@override String get notSet => 'Ei asetettu';
	@override String get years => 'vuotta';
	@override String get updatedSuccessfully => 'Profiili päivitetty onnistuneesti!';
	@override late final _TranslationsProfileCalculatedValuesFi calculatedValues = _TranslationsProfileCalculatedValuesFi._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreFi implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terveysarvosana';
	@override String get whyThisScore => 'Miksi tämä piste?';
	@override String get note => 'Tämä piste on tekoälyn arvio, joka perustuu tunnistettuihin ainesosiin ja ravinteiden tiheyteen. Konsultoi aina ammattilaista ravitsemusneuvojen osalta.';
	@override String get unhealthy => 'Epäterveellinen';
	@override String get healthy => 'Terveellinen';
	@override String get neutral => 'Neutraali';
}

// Path: editProfile
class _TranslationsEditProfileFi implements TranslationsEditProfileEn {
	_TranslationsEditProfileFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Muokkaa Profeilia';
	@override late final _TranslationsEditProfileSectionsFi sections = _TranslationsEditProfileSectionsFi._(_root);
	@override String get gender => 'Sukupuoli';
	@override String get dateOfBirth => 'Syntymäpäivä';
	@override String get height => 'Pituus';
	@override String get weight => 'Paino';
	@override String get weightGoal => 'Painontavoite';
	@override String get activityLevel => 'Aktiivisuustaso';
	@override String get metric => 'Metrinen';
	@override String get imperial => 'Imperiaalinen';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metrinen (cm)';
	@override String get imperialFtIn => 'Imperiaalinen (ft/in)';
	@override String get metricKg => 'Metrinen (kg)';
	@override String get imperialLbs => 'Imperiaalinen (lbs)';
	@override late final _TranslationsEditProfileGendersFi genders = _TranslationsEditProfileGendersFi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsFi weightGoals = _TranslationsEditProfileWeightGoalsFi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsFi activityLevels = _TranslationsEditProfileActivityLevelsFi._(_root);
}

// Path: settings
class _TranslationsSettingsFi implements TranslationsSettingsEn {
	_TranslationsSettingsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Asetukset';
	@override late final _TranslationsSettingsSectionsFi sections = _TranslationsSettingsSectionsFi._(_root);
	@override late final _TranslationsSettingsEditProfileFi editProfile = _TranslationsSettingsEditProfileFi._(_root);
	@override late final _TranslationsSettingsLanguageFi language = _TranslationsSettingsLanguageFi._(_root);
	@override late final _TranslationsSettingsHeightUnitFi heightUnit = _TranslationsSettingsHeightUnitFi._(_root);
	@override late final _TranslationsSettingsWeightUnitFi weightUnit = _TranslationsSettingsWeightUnitFi._(_root);
	@override late final _TranslationsSettingsMealRemindersFi mealReminders = _TranslationsSettingsMealRemindersFi._(_root);
	@override late final _TranslationsSettingsThemeFi theme = _TranslationsSettingsThemeFi._(_root);
	@override late final _TranslationsSettingsSendFeedbackFi sendFeedback = _TranslationsSettingsSendFeedbackFi._(_root);
	@override late final _TranslationsSettingsClearAllDataFi clearAllData = _TranslationsSettingsClearAllDataFi._(_root);
	@override late final _TranslationsSettingsDebugOptionsFi debugOptions = _TranslationsSettingsDebugOptionsFi._(_root);
	@override String get developerModeEnabled => 'Kehittäjätila käytössä!';
	@override late final _TranslationsSettingsHealthConnectFi healthConnect = _TranslationsSettingsHealthConnectFi._(_root);
	@override late final _TranslationsSettingsAboutFi about = _TranslationsSettingsAboutFi._(_root);
	@override late final _TranslationsSettingsAppInfoFi appInfo = _TranslationsSettingsAppInfoFi._(_root);
}

// Path: reminders
class _TranslationsRemindersFi implements TranslationsRemindersEn {
	_TranslationsRemindersFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pysy askelissa muistutuksilla';
	@override String get description => 'Saat lempeitä muistutuksia aterioiden kirjaamiseksi ja pysyäksesi johdonmukaisena ravitsemustavoitteissasi';
	@override String get notificationsEnabled => 'Ilmoitukset käytössä';
	@override String get notificationsDisabled => 'Ilmoitukset eivät ole käytössä';
	@override String get enabledSubtitle => 'Saat ateriamuistutuksia';
	@override String get disabledSubtitle => 'Ota käyttöön ilmoitukset saadaksesi ateriamuistutuksia';
	@override String get mealReminders => 'Ateriavaroitukset';
	@override String get breakfast => 'Aamiainen';
	@override String get lunch => 'Lounas';
	@override String get dinner => 'Päivällinen';
	@override String get snack => 'Välipala';
	@override String get unknown => 'Tuntematon';
	@override String get change => 'Muuta';
	@override String get enableNotifications => 'Ota ilmoitukset käyttöön';
	@override String get skipForNow => 'Ohita nyt';
	@override String get saveChanges => 'Tallenna muutokset';
	@override String get enabledSuccessfully => 'Ilmoitukset otettu käyttöön onnistuneesti!';
	@override String get permissionDenied => 'Ilmoituslupaa ei myönnetty';
	@override String errorEnabling({required Object error}) => 'Virhe ilmoitusten ottamisessa käyttöön: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Virhe asetusten loppuunsaattamisessa: ${error}';
}

// Path: notifications
class _TranslationsNotificationsFi implements TranslationsNotificationsEn {
	_TranslationsNotificationsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastFi breakfast = _TranslationsNotificationsBreakfastFi._(_root);
	@override late final _TranslationsNotificationsLunchFi lunch = _TranslationsNotificationsLunchFi._(_root);
	@override late final _TranslationsNotificationsDinnerFi dinner = _TranslationsNotificationsDinnerFi._(_root);
	@override late final _TranslationsNotificationsSnackFi snack = _TranslationsNotificationsSnackFi._(_root);
	@override late final _TranslationsNotificationsTestFi test = _TranslationsNotificationsTestFi._(_root);
}

// Path: login
class _TranslationsLoginFi implements TranslationsLoginEn {
	_TranslationsLoginFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kirjaudu';
	@override String get signInWithGoogle => 'Kirjaudu sisään Googlella';
	@override String get signInFailed => 'Google-sisäänkirjautuminen epäonnistui tai se peruutettiin.';
}

// Path: disclaimer
class _TranslationsDisclaimerFi implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Ole hyvä ja huomaa';
	@override late final _TranslationsDisclaimerSnapFi snap = _TranslationsDisclaimerSnapFi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateFi weightEstimate = _TranslationsDisclaimerWeightEstimateFi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsFi healthMetrics = _TranslationsDisclaimerHealthMetricsFi._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureFi calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureFi._(_root);
}

// Path: common
class _TranslationsCommonFi implements TranslationsCommonEn {
	_TranslationsCommonFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get close => 'Sulje';
	@override String get kContinue => 'Jatka';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingFi implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Nautitko ${appLabel}:stä?';
	@override String get yes => 'Kyllä — pidän siitä';
	@override String get no => 'Ei oikeastaan';
	@override String soloDevMessage({required Object appLabel}) => 'Nopea arvio auttaa muita löytämään ${appLabel} ja pitää kehityksen käynnissä. Haluaisitko käyttää hetken ja jättää arvion?';
	@override String get shareFeedbackViaEmail => 'Palautteesi vaikuttaa siihen, mitä teemme seuraavaksi — luemme jokaisen viestin. Haluaisitko jakaa ajatuksesi sähköpostitse?';
	@override String get rateCta => 'Arvostele Play-kaupassa';
	@override String get maybeLater => 'Ehkä myöhemmin';
	@override String get sendFeedback => 'Lähetä palautetta';
	@override String get noThanks => 'Ei kiitos';
	@override String get aboutUsDescription => 'Pienen tiimin huolella tehty. Keskitymme yksityisyyteen, yksinkertaisuuteen ja siihen, että autamme sinua kehittämään parempia ruokailutottumuksia.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Haluatko tietää, kuka on ${appLabel}:n takana? Katso ';
	@override String get aboutUsLinkLabel => 'Tietoa meistä';
	@override String get thankYouMessage => 'Kiitos! Kysymme uudestaan myöhemmin.';
}

// Path: errors
class _TranslationsErrorsFi implements TranslationsErrorsEn {
	_TranslationsErrorsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Virhe profiilitietojen lataamisessa';
	@override String get somethingWentWrong => 'Jokin meni pieleen.';
}

// Path: debug
class _TranslationsDebugFi implements TranslationsDebugEn {
	_TranslationsDebugFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug-vaihtoehdot';
	@override String get searchHint => 'Hae asetuksia...';
	@override late final _TranslationsDebugSectionsFi sections = _TranslationsDebugSectionsFi._(_root);
	@override String get inspectDatabaseTables => 'Tarkastele tietokannan tauluja';
	@override String get databaseInspectorTitle => 'Tietokannan tarkastaja';
	@override String get databaseOnlyWithRealData => 'Tietokannan tarkastelu on mahdollista vain todellisilla tiedoilla (ei testidatalla).';
	@override String tableRowCount({required Object count}) => '${count} riviä';
	@override String get emptyTable => 'Ei rivejä';
	@override String get showActiveNotifications => 'Näytä aktiiviset ilmoitukset';
	@override String get scheduleTestNotification => 'Aikatauluta testimuistutus (10s)';
	@override String get triggerBreakfastNotification => 'Käynnistä aamiaismuistutus';
	@override String get cancelAllNotifications => 'Peruuta kaikki ilmoitukset';
	@override String get activeNotifications => 'Aktiiviset ilmoitukset';
	@override String get noTitle => 'Ei otsikkoa';
	@override String get noBody => 'Ei sisältöä';
	@override String get fetchTodaysSteps => 'Hae tämän päivän askeleet';
	@override String get fetchTodaysCalories => 'Hae tämän päivän kalorit';
	@override String get fetchLatestWeight => 'Hae viimeisin paino';
	@override String get fetchLatestHeight => 'Hae viimeisin pituus';
	@override String get writeTestWeight => 'Kirjoita testipaino (70kg)';
	@override String get writeTestHeight => 'Kirjoita testipituus (175cm)';
	@override String get syncLast7Days => 'Synkronoi viimeiset 7 päivää';
	@override String get sync7DaysTitle => '7 päivän Synkronointi';
	@override String get checkCurrentLocale => 'Tarkista nykyinen kieliasetus';
	@override String get currentLocale => 'Nykyinen kieli';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Kieli: ${languageCode}\nMaa: ${countryCode}\nYksikköjärjestelmä: ${unitSystem}';
	@override String get latestWeight => 'Viimeisin paino';
	@override String get latestHeight => 'Viimeisin pituus';
	@override String get todaysCalories => 'Tämän päivän kalorit';
	@override String totalCaloriesBurned({required Object calories}) => 'Yhteensä poltetut kalorit: ${calories}';
	@override String syncSuccess({required Object count}) => 'Onnistuneesti haettu ${count} tietopistettä askeleista, kaloreista ja painosta viimeisten 7 päivän aikana.';
	@override String get noWeightData => 'Viimeisen 30 päivän aikana ei ole löytöjä painotiedoista.';
	@override String get noHeightData => 'Viimeisen vuoden aikana ei ole löytöjä pituustiedoista.';
	@override String get noCalorieData => 'Tänään ei ole löytöjä kalorietiedoista.';
	@override String get weightWritten => 'Testipaino (70kg) kirjoitettu onnistuneesti.';
	@override String get weightWriteFailed => 'Testipainon kirjoittaminen epäonnistui.';
	@override String get heightWritten => 'Testipituus (175 cm) kirjoitettu onnistuneesti.';
	@override String get heightWriteFailed => 'Testipituuden kirjoittaminen epäonnistui.';
	@override String get noNotifications => 'Ei aktiivisia ilmoituksia.';
	@override String get testNotificationScheduled => 'Testimuistutus aikataulutettu 10 sekunniksi nyt.';
	@override String get testNotificationBody => 'Tämä on testimuistutus, joka aikataulutettiin 10 sekunniksi nyt.';
	@override String get breakfastNotificationTriggered => 'Aamiaismuistutus käynnistetty.';
	@override String get allNotificationsCancelled => 'Kaikki ilmoitukset peruutettu.';
	@override String get fetchingData => 'Hakee tietoja viimeisiltä 7 päivältä...';
	@override String id({required Object id}) => 'ID: ${id}';
	@override String get showFeedbackRatingSheet => 'Näytä palaute- ja arvosteluikkuna';
	@override String get clearUserPreferences => 'Nollaa käyttäjäasetukset';
	@override String get clearUserPreferencesConfirmationTitle => 'Nollataanko käyttäjäasetukset?';
	@override String get clearUserPreferencesConfirmationMessage => 'Teema, kieli ja palautteeseen liittyvät asetukset nollataan. Ateriat ja profiilitiedot eivät muutu.';
	@override String get clearUserProfile => 'Nollaa käyttäjäprofiili';
	@override String get clearUserProfileConfirmationTitle => 'Nollataanko käyttäjäprofiili?';
	@override String get clearUserProfileConfirmationMessage => 'Profiilitietosi (päivittäinen tavoite, pituus, paino jne.) tyhjennetään. Ateriat ja asetukset eivät muutu.';
	@override String get clear => 'Tyhjennä';
	@override String get cancel => 'Peruuta';
	@override String get checkWatchConnection => 'Tarkista kelloyhteys';
	@override String get sendTestMessage => 'Lähetä testiviesti';
	@override String get sendTestMessageSubtitle => 'Lähetä yksinkertainen testiviesti kelloon';
	@override String get sendTestMealData => 'Lähetä testiateriatiedot';
	@override String get sendTestMealDataSubtitle => 'Lähetä esimerkkiaineistoa kelloon';
	@override String get sendTestCalorieGoal => 'Lähetä testikaloritavoite';
	@override String get sendTestCalorieGoalSubtitle => 'Lähetä esimerkkikaloritavoite kelloon';
	@override String get viewReceivedMessages => 'Näytä vastaanotetut viestit';
	@override String get viewReceivedMessagesSubtitle => 'Näytä kellosta vastaanotetut viestit';
	@override String get watchConnected => 'Kello yhdistetty ✓';
	@override String get device => 'Laite';
	@override String get nearby => 'Lähellä';
	@override String get yes => 'Kyllä';
	@override String get no => 'Ei';
	@override String get connectedDevices => 'Yhdistetyt laitteet';
	@override String get deviceInfoUnavailable => '(Laitetietoja ei saatavilla)';
	@override String get unknownDevice => 'Tuntematon laite';
	@override String get watchNotConnected => 'Kello ei ole yhdistetty ✗';
	@override String get watchNotConnectedHint => 'Varmista:\n• Laitteet on paritettu\n• Kellosovellus on käynnissä\n• Molemmat sovellukset ovat debug-/staging-tilassa';
	@override String get watchConnection => 'Kelloyhteys';
	@override String errorCheckingConnection({required Object error}) => 'Virhe yhteyden tarkistamisessa: ${error}';
	@override String get helloFromPhone => 'Hei puhelimesta!';
	@override String get testMessageSentSuccess => 'Testiviesti lähetetty onnistuneesti!';
	@override String get testMessageFailed => 'Testiviestin lähetys epäonnistui. Tarkista kelloyhteys.';
	@override String errorSendingMessage({required Object error}) => 'Virhe viestin lähettämisessä: ${error}';
	@override String get testMeal => 'Testiateria';
	@override String get testMealDataSentSuccess => 'Testiateriatiedot lähetetty onnistuneesti!';
	@override String get failedToSendMealData => 'Ateriatietojen lähetys epäonnistui. Tarkista kelloyhteys.';
	@override String errorSendingMealData({required Object error}) => 'Virhe ateriatietojen lähettämisessä: ${error}';
	@override String get testCalorieGoalSentSuccess => 'Testikaloritavoite lähetetty onnistuneesti!';
	@override String get failedToSendCalorieGoal => 'Kaloritavoitteen lähetys epäonnistui. Tarkista kelloyhteys.';
	@override String errorSendingCalorieGoal({required Object error}) => 'Virhe kaloritavoitteen lähettämisessä: ${error}';
	@override String get testAnalyzeImage => 'Testaa kuvan analysointi';
	@override String get testAnalyzeImageSubtitle => 'Lähetä kovakoodattu testikuva';
	@override String get testDetectImage => 'Testaa kuvan tunnistus';
	@override String get testDetectImageSubtitle => 'Tunnista ateria kuvan URL-osoitteesta';
	@override String get detectImageFromGallery => 'Tunnista kuva galleriasta';
	@override String get detectImageFromGallerySubtitle => 'Valitse kuva, lataa säilöön ja arvioi kalorit';
	@override String get testDetectText => 'Testaa tekstintunnistusta';
	@override String get testDetectTextSubtitle => 'Tunnista ateria tekstikuvauksen perusteella';
	@override String get testMealLoggingWithVariations => 'Testaa aterian kirjaus variaatioilla';
	@override String get testMealLoggingWithVariationsSubtitle => 'Testaa koko aterian kirjausprosessi variaatioineen';
	@override String get mockMealWithVariations => 'Mallipäivä (variaatioilla)';
	@override String get mockMealWithVariationsSubtitle => 'Esikatsele variaatio- ja vinkkinäkymää ilman kirjaamista';
	@override String get mockMealName => 'Grillattua kanaa riisin ja vihannesten kanssa';
	@override String get mockTip => 'Tämä on esimerkkivinkki käyttöliittymän esikatseluun. Ateriaa ei ole kirjattu.';
	@override String get mockMealDescription => 'Mallinäytteinen ateria debuggausta varten';
	@override String get portionSizeQuestion => 'Kuinka suuri annoskoko oli?';
	@override String get extraSidesQuestion => 'Onko lisukkeita?';
	@override String get optionSmall => 'Pieni';
	@override String get optionMedium => 'Keskikokoinen';
	@override String get optionLarge => 'Suuri';
	@override String get optionNone => 'Ei mitään';
	@override String get optionSideSalad => 'Lisäsalaatti';
	@override String get optionBreadRoll => 'Sämpylä';
	@override String get testingAnalyzeImage => 'Testataan analyzeImage-APIa...';
	@override String get testingDetectImage => 'Testataan detectImage-APIa...';
	@override String get testingDetectText => 'Testataan detectText-APIa...';
	@override String get selectingImageFromGallery => 'Valitaan kuva galleriasta...';
	@override String get noImageSelected => 'Ei valittua kuvaa';
	@override String get compressingImage => 'Kuvapakkaus...';
	@override String get uploadingImageAndDetecting => 'Lähetetään kuva säilöön ja tunnistetaan ateria...';
	@override String get testingMealLoggingFlow => 'Testataan aterian kirjausprosessia variaatioilla...';
	@override String get testUpdateProfile => 'Testaa profiilin päivitys';
	@override String get testUpdateProfileSubtitle => 'Lähetä esimerkkiprofiili POST-pyynnöllä palvelimelle';
	@override String get testingProfileApi => 'Testataan profiili-APIa...';
	@override String get profileUpdateSuccess => 'Profiili-API vastasi onnistuneesti';
	@override String profileUpdateFailed({required Object error}) => 'Profiili-API-virhe: ${error}';
	@override String get noMealIdentifiedInResponse => 'Vastauksesta ei tunnistettu ateriaa';
	@override String get mealIdentified => 'Ateria tunnistettu';
	@override String get confidence => 'Luottamustaso';
	@override String get tip => 'Vinkki';
	@override String get mealName => 'Aterian nimi';
	@override String get calories => 'Kalorit';
	@override String get protein => 'Proteiini';
	@override String get carbs => 'Hiilihydraatit';
	@override String get fat => 'Rasva';
	@override String get noMealInfo => 'Ei ateriatietoja';
	@override String get na => 'Ei saatavilla';
	@override String get analyzeImageResult => 'Kuvan analysoinnin tulos';
	@override String get detectImageResult => 'Kuvan tunnistuksen tulos';
	@override String get detectImageFromGalleryResult => 'Gallerian kuvan tunnistuksen tulos';
	@override String get detectTextResult => 'Tekstin tunnistuksen tulos';
	@override String errorGeneric({required Object error}) => 'Virhe: ${error}';
	@override String get variationsCount => 'Variaatiot';
	@override String get userPreferencesCleared => 'Käyttäjäasetukset tyhjennetty';
	@override String get userProfileCleared => 'Käyttäjäprofiili tyhjennetty';
	@override String get checkForUpdate => 'Tarkista päivitykset';
	@override String get showPatchNumber => 'Näytä patch-numero';
	@override String get showUpdateAvailable => 'Näytä saatavilla oleva päivitys';
	@override String get updateAvailable => 'Päivitys saatavilla';
	@override String get upToDate => 'Ajantasalla';
	@override String get shorebirdUnavailable => 'Shorebird ei ole käytettävissä tässä ympäristössä.';
	@override String get patchNumberLabel => 'Patch-numero';
	@override String get noPatchInstalled => 'Ei asennettua patchia';
	@override String get todaysSteps => 'Tämän päivän askeleet';
	@override String get stepsLabel => 'Askeleet';
	@override String weightLabel({required Object value}) => 'Paino: ${value} kg';
	@override String heightLabel({required Object value}) => 'Pituus: ${value} cm';
	@override String get receivedMessagesFromWatch => 'Vastaanotetut viestit kellosta';
	@override String get noMessagesReceivedYet => 'Ei vielä vastaanotettu viestejä.\n\nLähetä testitietoja kellosta nähdäksesi viestit täällä.';
	@override String get messagesCleared => 'Viestit tyhjennetty';
}

// Path: health
class _TranslationsHealthFi implements TranslationsHealthEn {
	_TranslationsHealthFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Yhdistäminen Health Connectiin epäonnistui';
	@override String get mealSynced => 'Ateria synkronoitu Health Connectin kanssa';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesFi implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionFi foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionFi._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisFi aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisFi._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationFi healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationFi._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderFi implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mikä on sukupuolesi?';
	@override String get description => 'Sukupuoli auttaa meitä laskemaan perustason aineenvaihduntasi (BMR) tarkasti.';
	@override String get next => 'Seuraava';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightFi implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kuinka pitkä olet?';
	@override String get description => 'Pituutesi auttaa meitä laskemaan BMI:si ja energiatarpeesi tarkasti.';
	@override String get metric => 'Metri';
	@override String get imperial => 'Imperiaalinen';
	@override String get next => 'Seuraava';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightFi implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Mikä on nykyinen painosi?';
	@override String get currentDescription => 'Nykyinen painosi on keskeinen päivittäisten tavoitteidesi personoimiseksi.';
	@override String get targetTitle => 'Mikä on tavoitepainosi?';
	@override String get targetDescription => 'Tavoitepainon asettaminen auttaa meitä määrittämään pitkän aikavälin suunnitelmasi.';
	@override String get metric => 'Metri';
	@override String get imperial => 'Imperiaalinen';
	@override String get next => 'Seuraava';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeFi implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Milloin on syntymäpäiväsi?';
	@override String get description => 'Ikäsi auttaa meitä laskemaan päivittäiset kaloritarpeesi tarkasti.';
	@override String get next => 'Seuraava';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleFi implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Alipainoinen';
	@override String get healthy => 'Terveellinen';
	@override String get overweight => 'Ylipainoinen';
	@override String get obese => 'Lihava';
	@override late final _TranslationsOnboardingBmiScaleCategoriesFi categories = _TranslationsOnboardingBmiScaleCategoriesFi._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesFi messages = _TranslationsOnboardingBmiScaleMessagesFi._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalFi implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mikä on tavoitteesi?';
	@override String get description => 'Valitse tavoite, joka parhaiten kuvaa mitä haluat saavuttaa';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelFi implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kuinka aktiivinen olet?';
	@override String get description => 'Tämä auttaa meitä laskemaan päivittäiset kaloritarpeesi tarkemmin';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectFi implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yhdistä Health Connectiin';
	@override String get description => 'Synkronoi terveystietosi saadaksesi parempaa tietoa ja automaattista kalorien seurantaa';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingFi automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingFi._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsFi progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsFi._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationFi seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationFi._(_root);
	@override String get connected => 'Health Connect Yhdistetty';
	@override String get notConnected => 'Health Connect Ei Yhdistetty';
	@override String get setup => 'Aseta Health Connect';
	@override String get skipForNow => 'Ohita nyt';
	@override String get statusConnected => 'Health Connect on yhdistetty.';
	@override String get statusSuccess => 'Health Connect on onnistuneesti yhdistetty!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Käyttöoikeus evätty. Ota käyttöön Health Connect -käyttöoikeudet puhelimesi asetuksista ${appLabel} -sovellusta varten.';
	@override String statusError({required Object error}) => 'Virhe Health Connectin asettamiseen: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementFi implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessFi trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessFi._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileFi healthProfile = _TranslationsOnboardingReinforcementHealthProfileFi._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleFi goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleFi._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalFi implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aseta Päivittäinen Tavoitteesi';
	@override String get titleSet => 'Päivittäinen Tavoitteesi';
	@override String get description => 'Valmiina aloittamaan hyvinvointimatkasi? Aseta päivittäinen kaloritavoitteesi alla käynnistääksesi edistymisesi.';
	@override String get descriptionSet => 'Kompassisi on asetettu! Tämä on päivittäinen kaloritavoitteesi, joka ohjaa sinua.';
	@override String get yourGoal => 'Tavoitteesi';
	@override String get goal => 'Tavoite';
	@override String get dailyCalories => 'Päivittäiset kalorit (kcal)';
	@override String get setGoal => 'Aseta Tavoite';
	@override String get intake => 'Saanti';
	@override String get burned => 'Kulutettu';
	@override String get weightImpact => 'Painovaikutus';
	@override String get estLoss => 'Arvioitu pudotus';
	@override String get estGain => 'Arvioitu nousu';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryFi implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päivittäinen Yhteenveto';
	@override String get calories => 'Kalorit';
	@override String get carbs => 'Hiilihydraatit';
	@override String get protein => 'Proteiini';
	@override String get fat => 'Rasva';
	@override String get fiber => 'Kuitu';
	@override String get grams => 'grammaa';
	@override String get chartAccessibilityLabel => 'Makroravinteiden kaavio';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressFi implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tämän päivän Makro Jako';
	@override String get target => 'Tavoite';
	@override String get current => 'Nykyinen';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryFi implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => '7 päivän Makro Historia';
	@override String get noHistoryYet => 'Ei historiaa vielä';
	@override String get startLogging => 'Aloita aterioiden kirjaaminen nähdäksesi täältä 7 päivän makrotrendit';
}

// Path: home.mealLog
class _TranslationsHomeMealLogFi implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kirjatut Ateriat';
	@override String get emptyMessage => 'Ota kuva viimeisestä ateriastasi kirjataksesi sen tänne.';
	@override String get noMealsToday => 'Tänään ei ole kirjattuja aterioita';
	@override String get seeAllMeals => 'Näytä kaikki ateriat';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionFi implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nopea Lisääminen Tekoälyn Kanssa';
	@override String get description => 'Kuvaile ateriaasi, ja anna tekoälyn hoitaa yksityiskohdat.';
	@override String get hint => 'esim. Aamiaisella söin suuren kulhollisen kaurapuuroa viipaloidun banaanin ja nokareen heraproteiinia ...';
	@override String get analyzeMeal => 'Analysoi ateria';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsFi implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suosikki Ateriat';
	@override String get description => 'Lisää nopeasti yksi suosikkiaterioistasi.';
	@override String get noFavorites => 'Ei suosikkiaterioita vielä.';
	@override String get addFavoriteHint => 'Napsauta tähteä aterialla merkitäksesi sen suosikiksi.';
	@override String get seeAll => 'Näytä kaikki';
	@override String get add => 'Lisää';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapFi implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ota kuva & Seuraa Ateriaasi';
	@override String get description => 'Käytä kameraasi ottaaksesi kuva ruoastasi tekoälyanalyysiä varten.';
	@override String get openCamera => 'Avaa Kamera';
	@override String get gallery => 'Galleria';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthFi implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synkronoi Health Connectiin';
	@override String get description => 'Synkronoi ravitsemustietosi Health Connectin kanssa';
	@override String get install => 'Asenna';
	@override String get connect => 'Yhdistä';
}

// Path: meal.nutrition
class _TranslationsMealNutritionFi implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorit';
	@override String get carbs => 'Hiilihydraatit (g)';
	@override String get protein => 'Proteiini (g)';
	@override String get fat => 'Rasva (g)';
	@override String get fiber => 'Kuitu (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationFi implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Poista Ateria';
	@override String get message => 'Oletko varma, että haluat poistaa tämän aterian merkinnän?';
	@override String get cancel => 'Peruuta';
	@override String get delete => 'Poista';
}

// Path: meal.variation
class _TranslationsMealVariationFi implements TranslationsMealVariationEn {
	_TranslationsMealVariationFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Kysymys ${current}/${total}';
	@override String get noVariationsAvailable => 'Muunnelmia ei ole saatavilla';
}

// Path: profile.sections
class _TranslationsProfileSectionsFi implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIILI';
	@override String get basicInformation => 'PERUSTIEDOT';
	@override String get goalsAndActivity => 'TAVOITTEET & TOIMINTA';
	@override String get calculatedValues => 'LASKETUT ARVOT';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesFi implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Päivittäinen Tavoite';
	@override String get calPerDay => 'kal/päivä';
	@override String get notAvailable => 'Ei saatavilla';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsFi implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'HENKILÖKOHTAISET TIEDOT';
	@override String get physicalMeasurements => 'FYYSISET MITTAUKSET';
	@override String get goalsAndActivity => 'TAVOITTEET & TOIMINTA';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersFi implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get male => 'Mies';
	@override String get female => 'Nainen';
	@override String get other => 'Muu';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsFi implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightFi loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightFi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightFi maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightFi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightFi gainWeight = _TranslationsEditProfileWeightGoalsGainWeightFi._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsFi implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryFi sedentary = _TranslationsEditProfileActivityLevelsSedentaryFi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveFi lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveFi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveFi moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveFi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveFi veryActive = _TranslationsEditProfileActivityLevelsVeryActiveFi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveFi extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveFi._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsFi implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIILI';
	@override String get localization => 'KIELIASETUS';
	@override String get notifications => 'ILMOITUKSET';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'TUKI & LAKITEKSTIT';
	@override String get about => 'TIETOJA';
	@override String get dangerZone => 'VAARA-ALUE';
	@override String get developer => 'KEHITTÄJÄ';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileFi implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Muokkaa profiilia';
	@override String get subtitle => 'Päivitä henkilökohtaisia tietojasi';
}

// Path: settings.language
class _TranslationsSettingsLanguageFi implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kieli';
	@override String get subtitle => 'Valitse haluamasi kieli';
	@override String get searchHint => 'Etsi kieliä...';
	@override String get noResults => 'Tuloksia ei löytynyt';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitFi implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pituusyksikkö';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitFi implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Painoyksikkö';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersFi implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ateriavaroitukset';
	@override String get subtitle => 'Pysy aikataulussa aterioidesi kanssa';
}

// Path: settings.theme
class _TranslationsSettingsThemeFi implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Teema';
	@override String get light => 'Vaalea';
	@override String get dark => 'Tumma';
	@override String get system => 'Järjestelmä';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackFi implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lähetä palautetta';
	@override String subtitle({required Object appLabel}) => 'Auta meitä parantamaan ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} -sovelluksen palautetta';
	@override String get emailBodyPrefix => 'Ole hyvä ja anna palautteesi alla:';
	@override String get appVersion => 'Sovellusversio';
	@override String get device => 'Laite';
	@override String get osVersion => 'Käyttöjärjestelmäversio';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataFi implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tyhjennä Kaikki Tiedot';
	@override String get subtitle => 'Poista peruuttamattomasti kaikki tietosi';
	@override String get confirmationTitle => 'Tyhjennä kaikki tiedot?';
	@override String get confirmationMessage => 'Tämä toiminto ei ole palautettavissa. Kaikki kirjattuja aterioita, suosikkeja ja profiiliasetuksia poistetaan pysyvästi.';
	@override String get cancel => 'Peruuta';
	@override String get clearEverything => 'Tyhjennä kaikki';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsFi implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Virheenkorjausvaihtoehdot';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectFi implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terveyteen yhdistäminen';
	@override String get subtitle => 'Näytä ja hallinnoi käyttöoikeuksia';
	@override late final _TranslationsSettingsHealthConnectUnavailableFi unavailable = _TranslationsSettingsHealthConnectUnavailableFi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsFi permissions = _TranslationsSettingsHealthConnectPermissionsFi._(_root);
	@override String get managePermissions => 'Hallitse käyttöoikeuksia';
	@override String get openSettings => 'Avaa Health Connect -asetukset';
	@override String get requestPermissions => 'Pyydä lupia';
	@override String get permissionRequestCancelledOrFailed => 'Lupapyyntö peruutettiin tai epäonnistui. Yritä uudelleen tai myönnä luvat manuaalisesti Health Connectin asetuksista.';
	@override String get permissionRequestFailed => 'Lupia ei voitu pyytää. Yritä uudelleen tai myönnä luvat manuaalisesti Health Connectin asetuksista.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutFi implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tietoa';
	@override String get tagline => 'Nopea, ilmainen ja yksityisyyteen keskittyvä kalorilaskuri';
	@override late final _TranslationsSettingsAboutOurStoryFi ourStory = _TranslationsSettingsAboutOurStoryFi._(_root);
	@override late final _TranslationsSettingsAboutPrivacyFi privacy = _TranslationsSettingsAboutPrivacyFi._(_root);
	@override late final _TranslationsSettingsAboutDeveloperFi developer = _TranslationsSettingsAboutDeveloperFi._(_root);
	@override late final _TranslationsSettingsAboutFeedbackFi feedback = _TranslationsSettingsAboutFeedbackFi._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoFi implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Koontiversio ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastFi implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aamiainen Aika! 🍳';
	@override String get body => 'Älä unohda kirjata aamiaista';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchFi implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lounas Aika! 🥗';
	@override String get body => 'Aika kirjata lounas';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerFi implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päivällinen Aika! 🍽️';
	@override String get body => 'Älä unohda kirjata päivällistä';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackFi implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Välipala Aika! 🍎';
	@override String get body => 'Aika terveelliselle välipalalle';
}

// Path: notifications.test
class _TranslationsNotificationsTestFi implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testimuistutus';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapFi implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} antaa arvioidut ravintoarvot. Tarkkuus riippuu syötteestäsi ja ruokavariaatioista. Käytä opastuksena, ei ehdottomana lähteenä. Konsultoi asiantuntijaa saadaksesi henkilökohtaisia ruokavalio-ohjeita.';
	@override late final _TranslationsDisclaimerSnapPortionSizeFi portionSize = _TranslationsDisclaimerSnapPortionSizeFi._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsFi preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsFi._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsFi ingredients = _TranslationsDisclaimerSnapIngredientsFi._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsFi databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsFi._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateFi implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tietoa Painoarviosta';
	@override String get description => 'Arvioitu painon muutos on teoreettinen arvio perus kalori-in vs. kalori-out malli. Se on tarkoitettu vain motivoivaksi oppaaksi, ei ennusteeksi oikeasta painostasi.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyFi calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyFi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsFi biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsFi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightFi waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightFi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceFi professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceFi._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsFi implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get description => 'Nämä mittarit auttavat sinua ymmärtämään kehosi energian tarpeet ja ohjaavat ravitsemustavoitteitasi.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrFi bmr = _TranslationsDisclaimerHealthMetricsBmrFi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeFi tdee = _TranslationsDisclaimerHealthMetricsTdeeFi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalFi dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalFi._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureFi implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Arvio kalorinkulutuksesta';
	@override String get description => 'Kun Health Connect -dataa ei ole saatavilla, arvioimme tämän päivän poltetut kalorit käyttämällä perusaineenvaihduntaasi (BMR) ja aktiivisuustasoasi (TDEE), skaalattuna kuluneen päivän osuudelle.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedFi howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedFi._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFi professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFi._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsFi implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Ilmoitukset';
	@override String get healthConnect => 'Health Connect';
	@override String get wearOs => 'Wear OS';
	@override String get foodApiTests => 'Ruoan API -testit';
	@override String get profileApiTests => 'Profiili-API-testit';
	@override String get feedback => 'Palaute';
	@override String get dataReset => 'Tietojen nollaus';
	@override String get database => 'Tietokanta';
	@override String get appInfo => 'Sovellustiedot';
	@override String get shorebird => 'Shorebird';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionFi implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Älykäs Ruokantunnistus';
	@override String get description => 'Ota valokuva ja anna tekoälyn tunnistaa ateriasi';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisFi implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tekoälyanalyysi';
	@override String get description => 'Saat välittömästi ravitsemustiedot kuvauksestasi';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationFi implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terveystietojen Integrointi';
	@override String get description => 'Yhdistä Health Connect -sovellukseen saadaksesi parempaa tietoa';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesFi implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Alipainoinen';
	@override String get healthyWeight => 'Terveellinen paino';
	@override String get overweight => 'Ylipainoinen';
	@override String get obese => 'Lihava';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesFi implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Voimme auttaa sinua luomaan terveellisen suunnitelman, jotta saavutat tasapainoisen painon ravinteikkalla ruualla.';
	@override String get healthy => 'Hienoa! Olet terveellisellä alueella. Autamme sinua ylläpitämään elinvoimaasi ja energiatasojasi.';
	@override String overweight({required Object appLabel}) => '${appLabel} helpottaa matkaasi tekoälypohjaisella seurannalla, jotta voit saavuttaa tavoitteesi mukavasti.';
	@override String get obese => 'Olemme täällä tukemassa sinua henkilökohtaisella ohjauksella ja kestävämmillä strategioilla terveyshaaveidesi saavuttamiseksi.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingFi implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automaattinen Kalorien Seuranta';
	@override String get description => 'Seuraa kaloreita, jotka olet kuluttanut kuntoilusovelluksistasi';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsFi implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edistymisen Näkökulmat';
	@override String get description => 'Saat yksityiskohtaisia näkemyksiä terveytrendisi';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationFi implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Saumaton Integrointi';
	@override String get description => 'Synkronoi tietoja suosikkiterveys sovelluksistasi';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessFi implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Et ole yksin';
	@override String get genericMessage => 'Tutkimukset osoittavat, että johdonmukainen seuranta on tärkein pitkäaikaisen menestyksen ennustaja.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => ' ${age}-vuotiaalle ${gender}, joka haluaa ${goal}, johdonmukainen seuranta on ykköskäyttäjä menestyksen ennustajana.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} tekee sen 10 kertaa helpommaksi kuin manuaalisesti tekeminen.';
	@override String get getStartedTitle => 'Valmiina aloittamaan?';
	@override String get tipPhoto => 'Ota kuva aterioistasi saadaksesi välitöntä analyysiä';
	@override String get tipConsistency => 'Kirjaa ruokasi säännöllisesti nähdäksesi merkittävää edistystä';
	@override String get tipProgress => 'Seuraa edistymistäsi päivittäin pysyäksesi motivoituneena';
	@override String get button => 'Mennään!';
	@override String get defaultGender => 'yksilö';
	@override String get defaultGoal => 'terveellisempi sinä';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileFi implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terveysprofiilisi';
	@override String bmiDescription({required Object bmi}) => 'Pohjalta mittarisi mukaan, BMI:si on ${bmi}.';
	@override String get finalizeDescription => 'Viimeistelemme profiilisi, jotta voimme räätälöidä kokemuksesi.';
	@override String get goalGain => 'painon nosto';
	@override String get goalLose => 'painon pudotus';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Saavuttaaksesi tavoitteesi, sinun tulee ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Olet tavoitepainossasi! Autamme sinua ylläpitämään sitä.';
	@override String get button => 'Mennään!';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleFi implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erinomainen Aloitus!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Olet ottanut ensimmäisen askeleen kohti ${goalText}. Koska olet ${activityText}, ${appLabel} säätää tavoitteesi vastaamaan elämäntapaasi.';
	@override String get personalizedTargets => 'Personoidut kaloritavoitteet';
	@override String get aiMealDetection => 'Tekoälypohjainen ateriatunnistus';
	@override String get macroBreakdowns => 'Yksityiskohtaiset makroravinteiden purkaukset';
	@override String get button => 'Mennään!';
	@override String get defaultGoal => 'tavoitteesi';
	@override String get defaultActivity => 'aktiivinen';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightFi implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Pudota Painoa';
	@override String get description => 'Luo kalorin vähennys pudottaaksesi painoa';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightFi implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Pidä Paino';
	@override String get description => 'Pysy nykyisessä painossasi';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightFi implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nosta Painoa';
	@override String get description => 'Luo kalorin lisäys nostaaksesi painoa';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryFi implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Vain istumatyö';
	@override String get description => 'Vähän tai ei lainkaan liikuntaa';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveFi implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kevyesti aktiivinen';
	@override String get description => 'Kevyttä liikuntaa 1-3 päivää viikossa';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveFi implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kohtalaisesti aktiivinen';
	@override String get description => 'Kohtalaista liikuntaa 3-5 päivää viikossa';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveFi implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Erittäin aktiivinen';
	@override String get description => 'Rankkaa liikuntaa 6-7 päivää viikossa';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveFi implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Äärimmäisen aktiivinen';
	@override String get description => 'Erittäin rankka liikunta, fyysinen työ';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableFi implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ei ole saatavilla';
	@override String get description => 'Health Connect ei ole saatavilla tällä laitteella. Asenna Health Connect Play Kaupasta (Android 9+) tai päivitä Android 14+:ään.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsFi implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Käyttöoikeudet';
	@override String get description => 'Seuraavia käyttöoikeuksia pyydetään Terveydeen yhdistämisen tarjoamiseksi:';
	@override String get granted => 'Myönnetty';
	@override String get notGranted => 'Ei myönnetty';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFi caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadFi nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadFi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteFi nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteFi._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryFi implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tarinaamme';
	@override String content({required Object appLabel}) => '${appLabel} sai alkunsa yksinkertaisesta turhautumisesta: suurin osa kaloriseuranta-sovelluksista on joko liian monimutkaisia, vaativat jatkuvaa manuaalista syöttämistä, perivät korkeat tilausmaksut tai uhraavat yksityisyyden.\n\nItsenäisen kehittäjänä halusin rakentaa jotain yksinkertaisempaa ja oikeudenmukaisempaa — sovelluksen, joka käyttää tekoälyä vähentämään vaivannäköä, pysyy nopeana ja ilmaisena käyttää, ja käsittelee terveystietojasi kunnioituksella.\n\n${appLabel} on sovellus, jonka toivoin olevan olemassa: ei tilejä, ei seurantaa, ei mainoksia — vain selkeitä, käytännöllisiä oivalluksia ja tavoitteitasi terveydelle.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyFi implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yksityisyytesi on tärkeää';
	@override String get description => 'Yksityisyys ei ole jälkiajatus — se on suunnitteluperiaate. Tässä on, mitä se käytännössä tarkoittaa:';
	@override String get noAccounts => 'Ei tilejä vaadita\nKäytä sovellusta heti. Ei rekisteröitymisiä, ei identiteettejä.';
	@override String noTracking({required Object appLabel}) => 'Ei käyttäytymisseurantaa\n${appLabel} ei valvo toimintaasi, rakenna käyttöprofiileja tai seuraa sinua sovellusten tai verkkosivustojen välillä.';
	@override String noAds({required Object appLabel}) => 'Ilman mainoksia suunniteltu\n${appLabel} on rakennettu toimimaan ilman mainoksia tai datavetosta rahoitusta.';
	@override String get noDataSelling => 'Ei tietojen myyntiä\nTerveystietojasi ei koskaan myydä tai jaeta kolmansille osapuolille.';
	@override String get localStorage => 'Paikallinen tallennus edellä\nTietosi pysyvät laitteellasi.';
	@override String get privacyPolicy => 'Tietosuojakäytäntö';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperFi implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rakentanut itsenäinen kehittäjä';
	@override String description({required Object appLabel}) => '${appLabel} on rakentanut ja ylläpitänyt yksi itsenäinen kehittäjä, joka keskittyy rauhallisten, yksityisyyttä kunnioittavien terveysohjelmistojen luomiseen.\n\nPalautteesi luetaan henkilökohtaisesti ja auttaa muokkaamaan sovelluksen suuntaa.';
	@override String get website => 'Verkkosivusto';
	@override String get email => 'Sähköposti';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackFi implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Pitkäaikainen ${appLabel}?';
	@override String description({required Object appLabel}) => 'Palaute auttaa tekemään ${appLabel} paremman kaikille.';
	@override String get rateApp => 'Arvostele Play Kaupassa';
	@override String get sendFeedback => 'Lähetä palautetta';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeFi implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Annoksen Koko';
	@override String get description => 'Arvioiden tarkkuus riippuu suuresti oikeasta arvioinnistasi annoksen koosta.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsFi implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Valmistusmenetelmät';
	@override String description({required Object appLabel}) => 'Valmistusmenetelmät voivat merkittävästi muuttaa ruoan ravintosisältöä. ${appLabel}:n arviot eivät välttämättä aina ota näitä vaihteluita huomioon.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsFi implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ainesosat';
	@override String get description => 'Monimuotoiset annokset, joissa on monia piilotettuja ainesosia, voivat johtaa vähemmän tarkkoihin arvioihin.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsFi implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tietokannan Rajoitukset';
	@override String description({required Object appLabel}) => '${appLabel}:n ruokakanta on laaja, mutta se ei välttämättä sisällä jokaista yksittäistä ruokaa tai variaatiota.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyFi implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorin Tarkkuus';
	@override String get description => 'Tämä arvio on yhtä tarkka kuin kirjatut kalori saanti ja kulutus. Epätarkka kirjaaminen johtaa epätarkkaan ennusteeseen.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsFi implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiset Tekijät';
	@override String description({required Object appLabel}) => 'Todelliseen painonpudotukseen/kasvuun vaikuttavat aineenvaihdunta, hormonit, uni, stressi, nesteytys ja muut yksilölliset tekijät, joita ${appLabel} ei voi mitata.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightFi implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veden Paino & Heilahtelut';
	@override String get description => 'Normaali päivittäinen paino voi vaihdella merkittävästi veden pidätyksen, ruoansulatuksen ja ajoituksen vuoksi. Arvio ei ota huomioon näitä päivittäisiä muutoksia.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceFi implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ammattiohjaus';
	@override String get description => 'Älä käytä tätä arviota lääketieteellisiin päätöksiin. Konsultoi aina terveydenhuoltoalan ammattilaista tai rekisteröityä ravitsemusterapeuttia henkilökohtaisille painon hallinta neuvoille.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrFi implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Perusaineenvaihdunta (BMR) on kalorimäärä, jonka kehosi polttaa levossa ylläpitääkseen perustavanlaatuisia toimintoja, kuten hengitystä ja verenkiertoa. BMR riippuu ikäsi, sukupuolesi, pituutesi ja painostasi. Korkeampi BMR tarkoittaa, että kehosi polttaa luonnostaan enemmän kaloreita levossa, yleensä johtuen suuremmasta lihasmassasta, nuoremmasta iästä tai miehisyydestä. Alempi BMR viittaa tyypillisesti pienempään lihasmassaan, vanhempaan ikään tai naisellisuuteen.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeFi implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Kokonaispäivittäinen energian kulutus (TDEE) on kokonaiskalorimäärä, jonka poltat päivässä, mukaan lukien BMR ja kalorit fyysisestä aktiivisuudesta ja päivittäisestä liikkumisesta. TDEE riippuu BMR:stäsi ja aktiivisuustasostasi. Korkeampi TDEE tarkoittaa, että poltat enemmän kaloreita yhteensä, yleensä koska olet aktiivisempi tai sinulla on korkeampi BMR. Alempi TDEE viittaa vähäisempään päivittäiseen aktiivisuuteen tai matalampaan BMR:ään.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalFi implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päivittäinen Tavoite';
	@override String get description => 'Päivittäinen Tavoite on suositeltu päivittäinen kalorinsaantisi, joka perustuu TDEE:hesi ja painotavoitteeseesi. Painon pudotuksessa kulutat vähemmän kaloreita kuin TDEE:si. Painon ylläpidossa vastaat TDEE:si. Painon lisäämisessä kulutat enemmän kaloreita kuin TDEE:si. Tämä auttaa sinua saavuttamaan haluamasi painomuutoksen terveellisellä tahdilla.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedFi implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Miten arvio lasketaan';
	@override String get description => 'Laskemme TDEE-arvosi (profiilisi perusteella) ja kerromme sen kuluneen päivän murto-osalla (tunnit + minuutit) / 24 arvioidaksemme tähän mennessä poltetut kalorit.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFi implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ammattilaisohjeet';
	@override String get description => 'Tätä arviota ei saa käyttää lääkinnällisten päätösten perustana. Kysy aina terveydenhuollon ammattilaiselta tai laillistetulta ravitsemusterapeutilta henkilökohtaista neuvontaa painonhallintaan.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFi implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lue kokonaispoltetut kalorit';
	@override String get description => 'Sallii sovelluksen lukea kokonaispoltetut kalorit Terveyteen yhdistämisestä.';
	@override String get usage => 'Tätä käyttöoikeutta käytetään päivittäisen kalorien kulutuksen näyttämiseen sovelluksessa, auttaen sinua ymmärtämään kokonaisenergiankulutuksesi päivän aikana.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadFi implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lue ravintotiedot';
	@override String get description => 'Sallii sovelluksen lukea ravintotietoja Terveydeen yhdistämisestä.';
	@override String get usage => 'Tämä käyttöoikeus sallii sovelluksen lukea ravintotietoja, joita muut Terveydeen yhdistämiseen liitetyt sovellukset ovat saattaneet kirjata, tarjoten kattavan näkymän ravitsemukseesi.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteFi implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kirjoita ravintotiedot';
	@override String get description => 'Sallii sovelluksen kirjoittaa ravintotietoja Terveydeen yhdistämiseen.';
	@override String get usage => 'Tämä käyttöoikeus sallii sovelluksen synkronoida kirjatut ateriasi Terveydeen yhdistämiseen, tehden ravintotietosi saataville muille käyttämillesi terveys- ja liikuntasovelluksille.';
}

/// The flat map containing all translations for locale <fi>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFi {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Suomi',
			'flag' => '🇫🇮',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => 'Tervetuloa ${appLabel} -sovellukseen',
			'onboarding.subtitle' => 'Henkilökohtainen ravitsemuskumppanisi, jota ohjaa tekoäly',
			'onboarding.getStarted' => 'Aloita',
			'onboarding.features.foodRecognition.title' => 'Älykäs Ruokantunnistus',
			'onboarding.features.foodRecognition.description' => 'Ota valokuva ja anna tekoälyn tunnistaa ateriasi',
			'onboarding.features.aiAnalysis.title' => 'Tekoälyanalyysi',
			'onboarding.features.aiAnalysis.description' => 'Saat välittömästi ravitsemustiedot kuvauksestasi',
			'onboarding.features.healthIntegration.title' => 'Terveystietojen Integrointi',
			'onboarding.features.healthIntegration.description' => 'Yhdistä Health Connect -sovellukseen saadaksesi parempaa tietoa',
			'onboarding.gender.title' => 'Mikä on sukupuolesi?',
			'onboarding.gender.description' => 'Sukupuoli auttaa meitä laskemaan perustason aineenvaihduntasi (BMR) tarkasti.',
			'onboarding.gender.next' => 'Seuraava',
			'onboarding.height.title' => 'Kuinka pitkä olet?',
			'onboarding.height.description' => 'Pituutesi auttaa meitä laskemaan BMI:si ja energiatarpeesi tarkasti.',
			'onboarding.height.metric' => 'Metri',
			'onboarding.height.imperial' => 'Imperiaalinen',
			'onboarding.height.next' => 'Seuraava',
			'onboarding.weight.currentTitle' => 'Mikä on nykyinen painosi?',
			'onboarding.weight.currentDescription' => 'Nykyinen painosi on keskeinen päivittäisten tavoitteidesi personoimiseksi.',
			'onboarding.weight.targetTitle' => 'Mikä on tavoitepainosi?',
			'onboarding.weight.targetDescription' => 'Tavoitepainon asettaminen auttaa meitä määrittämään pitkän aikavälin suunnitelmasi.',
			'onboarding.weight.metric' => 'Metri',
			'onboarding.weight.imperial' => 'Imperiaalinen',
			'onboarding.weight.next' => 'Seuraava',
			'onboarding.age.title' => 'Milloin on syntymäpäiväsi?',
			'onboarding.age.description' => 'Ikäsi auttaa meitä laskemaan päivittäiset kaloritarpeesi tarkasti.',
			'onboarding.age.next' => 'Seuraava',
			'onboarding.bmiScale.underweight' => 'Alipainoinen',
			'onboarding.bmiScale.healthy' => 'Terveellinen',
			'onboarding.bmiScale.overweight' => 'Ylipainoinen',
			'onboarding.bmiScale.obese' => 'Lihava',
			'onboarding.bmiScale.categories.underweight' => 'Alipainoinen',
			'onboarding.bmiScale.categories.healthyWeight' => 'Terveellinen paino',
			'onboarding.bmiScale.categories.overweight' => 'Ylipainoinen',
			'onboarding.bmiScale.categories.obese' => 'Lihava',
			'onboarding.bmiScale.messages.underweight' => 'Voimme auttaa sinua luomaan terveellisen suunnitelman, jotta saavutat tasapainoisen painon ravinteikkalla ruualla.',
			'onboarding.bmiScale.messages.healthy' => 'Hienoa! Olet terveellisellä alueella. Autamme sinua ylläpitämään elinvoimaasi ja energiatasojasi.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} helpottaa matkaasi tekoälypohjaisella seurannalla, jotta voit saavuttaa tavoitteesi mukavasti.',
			'onboarding.bmiScale.messages.obese' => 'Olemme täällä tukemassa sinua henkilökohtaisella ohjauksella ja kestävämmillä strategioilla terveyshaaveidesi saavuttamiseksi.',
			'onboarding.weightGoal.title' => 'Mikä on tavoitteesi?',
			'onboarding.weightGoal.description' => 'Valitse tavoite, joka parhaiten kuvaa mitä haluat saavuttaa',
			'onboarding.activityLevel.title' => 'Kuinka aktiivinen olet?',
			'onboarding.activityLevel.description' => 'Tämä auttaa meitä laskemaan päivittäiset kaloritarpeesi tarkemmin',
			'onboarding.healthConnect.title' => 'Yhdistä Health Connectiin',
			'onboarding.healthConnect.description' => 'Synkronoi terveystietosi saadaksesi parempaa tietoa ja automaattista kalorien seurantaa',
			'onboarding.healthConnect.automaticTracking.title' => 'Automaattinen Kalorien Seuranta',
			'onboarding.healthConnect.automaticTracking.description' => 'Seuraa kaloreita, jotka olet kuluttanut kuntoilusovelluksistasi',
			'onboarding.healthConnect.progressInsights.title' => 'Edistymisen Näkökulmat',
			'onboarding.healthConnect.progressInsights.description' => 'Saat yksityiskohtaisia näkemyksiä terveytrendisi',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Saumaton Integrointi',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synkronoi tietoja suosikkiterveys sovelluksistasi',
			'onboarding.healthConnect.connected' => 'Health Connect Yhdistetty',
			'onboarding.healthConnect.notConnected' => 'Health Connect Ei Yhdistetty',
			'onboarding.healthConnect.setup' => 'Aseta Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Ohita nyt',
			'onboarding.healthConnect.statusConnected' => 'Health Connect on yhdistetty.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect on onnistuneesti yhdistetty!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Käyttöoikeus evätty. Ota käyttöön Health Connect -käyttöoikeudet puhelimesi asetuksista ${appLabel} -sovellusta varten.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Virhe Health Connectin asettamiseen: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Et ole yksin',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Tutkimukset osoittavat, että johdonmukainen seuranta on tärkein pitkäaikaisen menestyksen ennustaja.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => ' ${age}-vuotiaalle ${gender}, joka haluaa ${goal}, johdonmukainen seuranta on ykköskäyttäjä menestyksen ennustajana.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} tekee sen 10 kertaa helpommaksi kuin manuaalisesti tekeminen.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Valmiina aloittamaan?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Ota kuva aterioistasi saadaksesi välitöntä analyysiä',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Kirjaa ruokasi säännöllisesti nähdäksesi merkittävää edistystä',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Seuraa edistymistäsi päivittäin pysyäksesi motivoituneena',
			'onboarding.reinforcement.trackingSuccess.button' => 'Mennään!',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'yksilö',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'terveellisempi sinä',
			'onboarding.reinforcement.healthProfile.title' => 'Terveysprofiilisi',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Pohjalta mittarisi mukaan, BMI:si on ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Viimeistelemme profiilisi, jotta voimme räätälöidä kokemuksesi.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'painon nosto',
			'onboarding.reinforcement.healthProfile.goalLose' => 'painon pudotus',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Saavuttaaksesi tavoitteesi, sinun tulee ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Olet tavoitepainossasi! Autamme sinua ylläpitämään sitä.',
			'onboarding.reinforcement.healthProfile.button' => 'Mennään!',
			'onboarding.reinforcement.goalLifestyle.title' => 'Erinomainen Aloitus!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Olet ottanut ensimmäisen askeleen kohti ${goalText}. Koska olet ${activityText}, ${appLabel} säätää tavoitteesi vastaamaan elämäntapaasi.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personoidut kaloritavoitteet',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Tekoälypohjainen ateriatunnistus',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Yksityiskohtaiset makroravinteiden purkaukset',
			'onboarding.reinforcement.goalLifestyle.button' => 'Mennään!',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'tavoitteesi',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiivinen',
			'tabs.dashboard' => 'Hallintapaneeli',
			'tabs.history' => 'Historia',
			'home.dailyGoal.title' => 'Aseta Päivittäinen Tavoitteesi',
			'home.dailyGoal.titleSet' => 'Päivittäinen Tavoitteesi',
			'home.dailyGoal.description' => 'Valmiina aloittamaan hyvinvointimatkasi? Aseta päivittäinen kaloritavoitteesi alla käynnistääksesi edistymisesi.',
			'home.dailyGoal.descriptionSet' => 'Kompassisi on asetettu! Tämä on päivittäinen kaloritavoitteesi, joka ohjaa sinua.',
			'home.dailyGoal.yourGoal' => 'Tavoitteesi',
			'home.dailyGoal.goal' => 'Tavoite',
			'home.dailyGoal.dailyCalories' => 'Päivittäiset kalorit (kcal)',
			'home.dailyGoal.setGoal' => 'Aseta Tavoite',
			'home.dailyGoal.intake' => 'Saanti',
			'home.dailyGoal.burned' => 'Kulutettu',
			'home.dailyGoal.weightImpact' => 'Painovaikutus',
			'home.dailyGoal.estLoss' => 'Arvioitu pudotus',
			'home.dailyGoal.estGain' => 'Arvioitu nousu',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Päivittäinen Yhteenveto',
			'home.dailySummary.calories' => 'Kalorit',
			'home.dailySummary.carbs' => 'Hiilihydraatit',
			'home.dailySummary.protein' => 'Proteiini',
			'home.dailySummary.fat' => 'Rasva',
			'home.dailySummary.fiber' => 'Kuitu',
			'home.dailySummary.grams' => 'grammaa',
			'home.dailySummary.chartAccessibilityLabel' => 'Makroravinteiden kaavio',
			'home.intakeProgress.title' => 'Tämän päivän Makro Jako',
			'home.intakeProgress.target' => 'Tavoite',
			'home.intakeProgress.current' => 'Nykyinen',
			'home.intakeHistory.title' => '7 päivän Makro Historia',
			'home.intakeHistory.noHistoryYet' => 'Ei historiaa vielä',
			'home.intakeHistory.startLogging' => 'Aloita aterioiden kirjaaminen nähdäksesi täältä 7 päivän makrotrendit',
			'home.mealLog.title' => 'Kirjatut Ateriat',
			'home.mealLog.emptyMessage' => 'Ota kuva viimeisestä ateriastasi kirjataksesi sen tänne.',
			'home.mealLog.noMealsToday' => 'Tänään ei ole kirjattuja aterioita',
			'home.mealLog.seeAllMeals' => 'Näytä kaikki ateriat',
			'home.mealDescription.title' => 'Nopea Lisääminen Tekoälyn Kanssa',
			'home.mealDescription.description' => 'Kuvaile ateriaasi, ja anna tekoälyn hoitaa yksityiskohdat.',
			'home.mealDescription.hint' => 'esim. Aamiaisella söin suuren kulhollisen kaurapuuroa viipaloidun banaanin ja nokareen heraproteiinia ...',
			'home.mealDescription.analyzeMeal' => 'Analysoi ateria',
			'home.favoriteMeals.title' => 'Suosikki Ateriat',
			'home.favoriteMeals.description' => 'Lisää nopeasti yksi suosikkiaterioistasi.',
			'home.favoriteMeals.noFavorites' => 'Ei suosikkiaterioita vielä.',
			'home.favoriteMeals.addFavoriteHint' => 'Napsauta tähteä aterialla merkitäksesi sen suosikiksi.',
			'home.favoriteMeals.seeAll' => 'Näytä kaikki',
			'home.favoriteMeals.add' => 'Lisää',
			'home.mealSnap.title' => 'Ota kuva & Seuraa Ateriaasi',
			'home.mealSnap.description' => 'Käytä kameraasi ottaaksesi kuva ruoastasi tekoälyanalyysiä varten.',
			'home.mealSnap.openCamera' => 'Avaa Kamera',
			'home.mealSnap.gallery' => 'Galleria',
			'home.connectHealth.title' => 'Synkronoi Health Connectiin',
			'home.connectHealth.description' => 'Synkronoi ravitsemustietosi Health Connectin kanssa',
			'home.connectHealth.install' => 'Asenna',
			'home.connectHealth.connect' => 'Yhdistä',
			'history.noMeals' => 'Ei kirjattuja aterioita',
			'history.emptyMessage' => 'Ota kuva viimeisestä ateriastasi kirjataksesi sen tänne.',
			'history.today' => 'Tänään',
			'history.yesterday' => 'Eilen',
			'meal.ohNo' => 'Voi ei!',
			'meal.delete' => 'Poista',
			'meal.editMeal' => 'Muokkaa Ateriaa',
			'meal.addMeal' => 'Lisää Ateria',
			'meal.saveMeal' => 'Tallenna Ateria',
			'meal.save' => 'Tallenna',
			'meal.mealName' => 'Aterian Nimi',
			'meal.mealNameHint' => 'esim. munakokkeli ja paahtoleipä',
			'meal.mealQuantity' => 'Aterian Määrä',
			'meal.mealQuantityHint' => 'esim. 1 kulho, 2 viipaletta',
			'meal.timeOfMeal' => 'Aterian Aika',
			'meal.timeOfMealHint' => 'Valitse aika, jolloin söit ateriasi',
			'meal.mealType' => 'Ateriatyyppi',
			'meal.nutrition.calories' => 'Kalorit',
			'meal.nutrition.carbs' => 'Hiilihydraatit (g)',
			'meal.nutrition.protein' => 'Proteiini (g)',
			'meal.nutrition.fat' => 'Rasva (g)',
			'meal.nutrition.fiber' => 'Kuitu (g)',
			'meal.deleteConfirmation.title' => 'Poista Ateria',
			'meal.deleteConfirmation.message' => 'Oletko varma, että haluat poistaa tämän aterian merkinnän?',
			'meal.deleteConfirmation.cancel' => 'Peruuta',
			'meal.deleteConfirmation.delete' => 'Poista',
			'meal.addedToLog' => 'Ateria lisätty lokiisi!',
			'meal.couldNotAdd' => ({required Object error}) => 'Ateriaa ei voitu lisätä: ${error}',
			'meal.savedSuccessfully' => 'Ateria lisätty onnistuneesti!',
			'meal.updatedSuccessfully' => 'Ateria päivitetty onnistuneesti!',
			'meal.errorSaving' => ({required Object error}) => 'Virhe tallennettaessa ateriaa: ${error}',
			'meal.removedFromFavorites' => 'Poistettu suosikeista!',
			'meal.savedAsFavorite' => 'Ateria tallennettu suosikiksi!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Suosikkia ei voitu päivittää: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Käsittely epäonnistui: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Kuvan käsittely epäonnistui: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Virhe kuvan pakkaamisessa: ${error}',
			'meal.failedToSave' => 'Tiedon tallentaminen epäonnistui. Yritä uudelleen.',
			'meal.skip' => 'Ohita',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Kysymys ${current}/${total}',
			'meal.variation.noVariationsAvailable' => 'Muunnelmia ei ole saatavilla',
			'favorites.title' => 'Suosikit',
			'favorites.empty' => 'Ei suosikkiaterioita vielä.',
			'profile.title' => 'Profiili',
			'profile.noProfileData' => 'Profiilitietoja ei löytynyt',
			'profile.yourProfile' => 'Profiilisi',
			'profile.viewAndManage' => 'Näytä ja hallitse terveystietojasi',
			'profile.sections.profile' => 'PROFIILI',
			'profile.sections.basicInformation' => 'PERUSTIEDOT',
			'profile.sections.goalsAndActivity' => 'TAVOITTEET & TOIMINTA',
			'profile.sections.calculatedValues' => 'LASKETUT ARVOT',
			'profile.gender' => 'Sukupuoli',
			'profile.height' => 'Pituus',
			'profile.weight' => 'Paino',
			'profile.age' => 'Ikä',
			'profile.weightGoal' => 'Painontavoite',
			'profile.targetWeight' => 'Tavoitepaino',
			'profile.activityLevel' => 'Aktiivisuustaso',
			'profile.healthMetrics' => 'Terveysmittarit',
			'profile.notSet' => 'Ei asetettu',
			'profile.years' => 'vuotta',
			'profile.updatedSuccessfully' => 'Profiili päivitetty onnistuneesti!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Päivittäinen Tavoite',
			'profile.calculatedValues.calPerDay' => 'kal/päivä',
			'profile.calculatedValues.notAvailable' => 'Ei saatavilla',
			'healthScore.title' => 'Terveysarvosana',
			'healthScore.whyThisScore' => 'Miksi tämä piste?',
			'healthScore.note' => 'Tämä piste on tekoälyn arvio, joka perustuu tunnistettuihin ainesosiin ja ravinteiden tiheyteen. Konsultoi aina ammattilaista ravitsemusneuvojen osalta.',
			'healthScore.unhealthy' => 'Epäterveellinen',
			'healthScore.healthy' => 'Terveellinen',
			'healthScore.neutral' => 'Neutraali',
			'editProfile.title' => 'Muokkaa Profeilia',
			'editProfile.sections.personalInformation' => 'HENKILÖKOHTAISET TIEDOT',
			'editProfile.sections.physicalMeasurements' => 'FYYSISET MITTAUKSET',
			'editProfile.sections.goalsAndActivity' => 'TAVOITTEET & TOIMINTA',
			'editProfile.gender' => 'Sukupuoli',
			'editProfile.dateOfBirth' => 'Syntymäpäivä',
			'editProfile.height' => 'Pituus',
			'editProfile.weight' => 'Paino',
			'editProfile.weightGoal' => 'Painontavoite',
			'editProfile.activityLevel' => 'Aktiivisuustaso',
			'editProfile.metric' => 'Metrinen',
			'editProfile.imperial' => 'Imperiaalinen',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metrinen (cm)',
			'editProfile.imperialFtIn' => 'Imperiaalinen (ft/in)',
			'editProfile.metricKg' => 'Metrinen (kg)',
			'editProfile.imperialLbs' => 'Imperiaalinen (lbs)',
			'editProfile.genders.male' => 'Mies',
			'editProfile.genders.female' => 'Nainen',
			'editProfile.genders.other' => 'Muu',
			'editProfile.weightGoals.loseWeight.name' => 'Pudota Painoa',
			'editProfile.weightGoals.loseWeight.description' => 'Luo kalorin vähennys pudottaaksesi painoa',
			'editProfile.weightGoals.maintainWeight.name' => 'Pidä Paino',
			'editProfile.weightGoals.maintainWeight.description' => 'Pysy nykyisessä painossasi',
			'editProfile.weightGoals.gainWeight.name' => 'Nosta Painoa',
			'editProfile.weightGoals.gainWeight.description' => 'Luo kalorin lisäys nostaaksesi painoa',
			'editProfile.activityLevels.sedentary.name' => 'Vain istumatyö',
			'editProfile.activityLevels.sedentary.description' => 'Vähän tai ei lainkaan liikuntaa',
			'editProfile.activityLevels.lightlyActive.name' => 'Kevyesti aktiivinen',
			'editProfile.activityLevels.lightlyActive.description' => 'Kevyttä liikuntaa 1-3 päivää viikossa',
			'editProfile.activityLevels.moderatelyActive.name' => 'Kohtalaisesti aktiivinen',
			'editProfile.activityLevels.moderatelyActive.description' => 'Kohtalaista liikuntaa 3-5 päivää viikossa',
			'editProfile.activityLevels.veryActive.name' => 'Erittäin aktiivinen',
			'editProfile.activityLevels.veryActive.description' => 'Rankkaa liikuntaa 6-7 päivää viikossa',
			'editProfile.activityLevels.extremelyActive.name' => 'Äärimmäisen aktiivinen',
			'editProfile.activityLevels.extremelyActive.description' => 'Erittäin rankka liikunta, fyysinen työ',
			'settings.title' => 'Asetukset',
			'settings.sections.profile' => 'PROFIILI',
			'settings.sections.localization' => 'KIELIASETUS',
			'settings.sections.notifications' => 'ILMOITUKSET',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'TUKI & LAKITEKSTIT',
			'settings.sections.about' => 'TIETOJA',
			'settings.sections.dangerZone' => 'VAARA-ALUE',
			'settings.sections.developer' => 'KEHITTÄJÄ',
			'settings.editProfile.title' => 'Muokkaa profiilia',
			'settings.editProfile.subtitle' => 'Päivitä henkilökohtaisia tietojasi',
			'settings.language.title' => 'Kieli',
			'settings.language.subtitle' => 'Valitse haluamasi kieli',
			'settings.language.searchHint' => 'Etsi kieliä...',
			'settings.language.noResults' => 'Tuloksia ei löytynyt',
			'settings.heightUnit.title' => 'Pituusyksikkö',
			'settings.weightUnit.title' => 'Painoyksikkö',
			'settings.mealReminders.title' => 'Ateriavaroitukset',
			'settings.mealReminders.subtitle' => 'Pysy aikataulussa aterioidesi kanssa',
			'settings.theme.title' => 'Teema',
			'settings.theme.light' => 'Vaalea',
			'settings.theme.dark' => 'Tumma',
			'settings.theme.system' => 'Järjestelmä',
			'settings.sendFeedback.title' => 'Lähetä palautetta',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Auta meitä parantamaan ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} -sovelluksen palautetta',
			'settings.sendFeedback.emailBodyPrefix' => 'Ole hyvä ja anna palautteesi alla:',
			'settings.sendFeedback.appVersion' => 'Sovellusversio',
			'settings.sendFeedback.device' => 'Laite',
			'settings.sendFeedback.osVersion' => 'Käyttöjärjestelmäversio',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Tyhjennä Kaikki Tiedot',
			'settings.clearAllData.subtitle' => 'Poista peruuttamattomasti kaikki tietosi',
			'settings.clearAllData.confirmationTitle' => 'Tyhjennä kaikki tiedot?',
			'settings.clearAllData.confirmationMessage' => 'Tämä toiminto ei ole palautettavissa. Kaikki kirjattuja aterioita, suosikkeja ja profiiliasetuksia poistetaan pysyvästi.',
			'settings.clearAllData.cancel' => 'Peruuta',
			'settings.clearAllData.clearEverything' => 'Tyhjennä kaikki',
			'settings.debugOptions.title' => 'Virheenkorjausvaihtoehdot',
			'settings.developerModeEnabled' => 'Kehittäjätila käytössä!',
			'settings.healthConnect.title' => 'Terveyteen yhdistäminen',
			'settings.healthConnect.subtitle' => 'Näytä ja hallinnoi käyttöoikeuksia',
			'settings.healthConnect.unavailable.title' => 'Health Connect ei ole saatavilla',
			'settings.healthConnect.unavailable.description' => 'Health Connect ei ole saatavilla tällä laitteella. Asenna Health Connect Play Kaupasta (Android 9+) tai päivitä Android 14+:ään.',
			'settings.healthConnect.permissions.title' => 'Käyttöoikeudet',
			'settings.healthConnect.permissions.description' => 'Seuraavia käyttöoikeuksia pyydetään Terveydeen yhdistämisen tarjoamiseksi:',
			'settings.healthConnect.permissions.granted' => 'Myönnetty',
			'settings.healthConnect.permissions.notGranted' => 'Ei myönnetty',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Lue kokonaispoltetut kalorit',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Sallii sovelluksen lukea kokonaispoltetut kalorit Terveyteen yhdistämisestä.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Tätä käyttöoikeutta käytetään päivittäisen kalorien kulutuksen näyttämiseen sovelluksessa, auttaen sinua ymmärtämään kokonaisenergiankulutuksesi päivän aikana.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Lue ravintotiedot',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Sallii sovelluksen lukea ravintotietoja Terveydeen yhdistämisestä.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Tämä käyttöoikeus sallii sovelluksen lukea ravintotietoja, joita muut Terveydeen yhdistämiseen liitetyt sovellukset ovat saattaneet kirjata, tarjoten kattavan näkymän ravitsemukseesi.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Kirjoita ravintotiedot',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Sallii sovelluksen kirjoittaa ravintotietoja Terveydeen yhdistämiseen.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Tämä käyttöoikeus sallii sovelluksen synkronoida kirjatut ateriasi Terveydeen yhdistämiseen, tehden ravintotietosi saataville muille käyttämillesi terveys- ja liikuntasovelluksille.',
			'settings.healthConnect.managePermissions' => 'Hallitse käyttöoikeuksia',
			'settings.healthConnect.openSettings' => 'Avaa Health Connect -asetukset',
			'settings.healthConnect.requestPermissions' => 'Pyydä lupia',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Lupapyyntö peruutettiin tai epäonnistui. Yritä uudelleen tai myönnä luvat manuaalisesti Health Connectin asetuksista.',
			'settings.healthConnect.permissionRequestFailed' => 'Lupia ei voitu pyytää. Yritä uudelleen tai myönnä luvat manuaalisesti Health Connectin asetuksista.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Tietoa',
			'settings.about.tagline' => 'Nopea, ilmainen ja yksityisyyteen keskittyvä kalorilaskuri',
			'settings.about.ourStory.title' => 'Tarinaamme',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} sai alkunsa yksinkertaisesta turhautumisesta: suurin osa kaloriseuranta-sovelluksista on joko liian monimutkaisia, vaativat jatkuvaa manuaalista syöttämistä, perivät korkeat tilausmaksut tai uhraavat yksityisyyden.\n\nItsenäisen kehittäjänä halusin rakentaa jotain yksinkertaisempaa ja oikeudenmukaisempaa — sovelluksen, joka käyttää tekoälyä vähentämään vaivannäköä, pysyy nopeana ja ilmaisena käyttää, ja käsittelee terveystietojasi kunnioituksella.\n\n${appLabel} on sovellus, jonka toivoin olevan olemassa: ei tilejä, ei seurantaa, ei mainoksia — vain selkeitä, käytännöllisiä oivalluksia ja tavoitteitasi terveydelle.',
			'settings.about.privacy.title' => 'Yksityisyytesi on tärkeää',
			'settings.about.privacy.description' => 'Yksityisyys ei ole jälkiajatus — se on suunnitteluperiaate. Tässä on, mitä se käytännössä tarkoittaa:',
			'settings.about.privacy.noAccounts' => 'Ei tilejä vaadita\nKäytä sovellusta heti. Ei rekisteröitymisiä, ei identiteettejä.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Ei käyttäytymisseurantaa\n${appLabel} ei valvo toimintaasi, rakenna käyttöprofiileja tai seuraa sinua sovellusten tai verkkosivustojen välillä.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Ilman mainoksia suunniteltu\n${appLabel} on rakennettu toimimaan ilman mainoksia tai datavetosta rahoitusta.',
			'settings.about.privacy.noDataSelling' => 'Ei tietojen myyntiä\nTerveystietojasi ei koskaan myydä tai jaeta kolmansille osapuolille.',
			'settings.about.privacy.localStorage' => 'Paikallinen tallennus edellä\nTietosi pysyvät laitteellasi.',
			'settings.about.privacy.privacyPolicy' => 'Tietosuojakäytäntö',
			'settings.about.developer.title' => 'Rakentanut itsenäinen kehittäjä',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} on rakentanut ja ylläpitänyt yksi itsenäinen kehittäjä, joka keskittyy rauhallisten, yksityisyyttä kunnioittavien terveysohjelmistojen luomiseen.\n\nPalautteesi luetaan henkilökohtaisesti ja auttaa muokkaamaan sovelluksen suuntaa.',
			'settings.about.developer.website' => 'Verkkosivusto',
			'settings.about.developer.email' => 'Sähköposti',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Pitkäaikainen ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Palaute auttaa tekemään ${appLabel} paremman kaikille.',
			'settings.about.feedback.rateApp' => 'Arvostele Play Kaupassa',
			'settings.about.feedback.sendFeedback' => 'Lähetä palautetta',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Koontiversio ${buildNumber}',
			'reminders.title' => 'Pysy askelissa muistutuksilla',
			'reminders.description' => 'Saat lempeitä muistutuksia aterioiden kirjaamiseksi ja pysyäksesi johdonmukaisena ravitsemustavoitteissasi',
			'reminders.notificationsEnabled' => 'Ilmoitukset käytössä',
			'reminders.notificationsDisabled' => 'Ilmoitukset eivät ole käytössä',
			'reminders.enabledSubtitle' => 'Saat ateriamuistutuksia',
			'reminders.disabledSubtitle' => 'Ota käyttöön ilmoitukset saadaksesi ateriamuistutuksia',
			'reminders.mealReminders' => 'Ateriavaroitukset',
			'reminders.breakfast' => 'Aamiainen',
			'reminders.lunch' => 'Lounas',
			'reminders.dinner' => 'Päivällinen',
			'reminders.snack' => 'Välipala',
			'reminders.unknown' => 'Tuntematon',
			'reminders.change' => 'Muuta',
			'reminders.enableNotifications' => 'Ota ilmoitukset käyttöön',
			'reminders.skipForNow' => 'Ohita nyt',
			'reminders.saveChanges' => 'Tallenna muutokset',
			'reminders.enabledSuccessfully' => 'Ilmoitukset otettu käyttöön onnistuneesti!',
			'reminders.permissionDenied' => 'Ilmoituslupaa ei myönnetty',
			'reminders.errorEnabling' => ({required Object error}) => 'Virhe ilmoitusten ottamisessa käyttöön: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Virhe asetusten loppuunsaattamisessa: ${error}',
			'notifications.breakfast.title' => 'Aamiainen Aika! 🍳',
			'notifications.breakfast.body' => 'Älä unohda kirjata aamiaista',
			'notifications.lunch.title' => 'Lounas Aika! 🥗',
			'notifications.lunch.body' => 'Aika kirjata lounas',
			'notifications.dinner.title' => 'Päivällinen Aika! 🍽️',
			'notifications.dinner.body' => 'Älä unohda kirjata päivällistä',
			'notifications.snack.title' => 'Välipala Aika! 🍎',
			'notifications.snack.body' => 'Aika terveelliselle välipalalle',
			'notifications.test.title' => 'Testimuistutus',
			'login.title' => 'Kirjaudu',
			'login.signInWithGoogle' => 'Kirjaudu sisään Googlella',
			'login.signInFailed' => 'Google-sisäänkirjautuminen epäonnistui tai se peruutettiin.',
			'disclaimer.pleaseNote' => 'Ole hyvä ja huomaa',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} antaa arvioidut ravintoarvot. Tarkkuus riippuu syötteestäsi ja ruokavariaatioista. Käytä opastuksena, ei ehdottomana lähteenä. Konsultoi asiantuntijaa saadaksesi henkilökohtaisia ruokavalio-ohjeita.',
			'disclaimer.snap.portionSize.title' => 'Annoksen Koko',
			'disclaimer.snap.portionSize.description' => 'Arvioiden tarkkuus riippuu suuresti oikeasta arvioinnistasi annoksen koosta.',
			'disclaimer.snap.preparationMethods.title' => 'Valmistusmenetelmät',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Valmistusmenetelmät voivat merkittävästi muuttaa ruoan ravintosisältöä. ${appLabel}:n arviot eivät välttämättä aina ota näitä vaihteluita huomioon.',
			'disclaimer.snap.ingredients.title' => 'Ainesosat',
			'disclaimer.snap.ingredients.description' => 'Monimuotoiset annokset, joissa on monia piilotettuja ainesosia, voivat johtaa vähemmän tarkkoihin arvioihin.',
			'disclaimer.snap.databaseLimitations.title' => 'Tietokannan Rajoitukset',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}:n ruokakanta on laaja, mutta se ei välttämättä sisällä jokaista yksittäistä ruokaa tai variaatiota.',
			'disclaimer.weightEstimate.title' => 'Tietoa Painoarviosta',
			'disclaimer.weightEstimate.description' => 'Arvioitu painon muutos on teoreettinen arvio perus kalori-in vs. kalori-out malli. Se on tarkoitettu vain motivoivaksi oppaaksi, ei ennusteeksi oikeasta painostasi.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalorin Tarkkuus',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Tämä arvio on yhtä tarkka kuin kirjatut kalori saanti ja kulutus. Epätarkka kirjaaminen johtaa epätarkkaan ennusteeseen.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiset Tekijät',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Todelliseen painonpudotukseen/kasvuun vaikuttavat aineenvaihdunta, hormonit, uni, stressi, nesteytys ja muut yksilölliset tekijät, joita ${appLabel} ei voi mitata.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Veden Paino & Heilahtelut',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normaali päivittäinen paino voi vaihdella merkittävästi veden pidätyksen, ruoansulatuksen ja ajoituksen vuoksi. Arvio ei ota huomioon näitä päivittäisiä muutoksia.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Ammattiohjaus',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Älä käytä tätä arviota lääketieteellisiin päätöksiin. Konsultoi aina terveydenhuoltoalan ammattilaista tai rekisteröityä ravitsemusterapeuttia henkilökohtaisille painon hallinta neuvoille.',
			'disclaimer.healthMetrics.description' => 'Nämä mittarit auttavat sinua ymmärtämään kehosi energian tarpeet ja ohjaavat ravitsemustavoitteitasi.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Perusaineenvaihdunta (BMR) on kalorimäärä, jonka kehosi polttaa levossa ylläpitääkseen perustavanlaatuisia toimintoja, kuten hengitystä ja verenkiertoa. BMR riippuu ikäsi, sukupuolesi, pituutesi ja painostasi. Korkeampi BMR tarkoittaa, että kehosi polttaa luonnostaan enemmän kaloreita levossa, yleensä johtuen suuremmasta lihasmassasta, nuoremmasta iästä tai miehisyydestä. Alempi BMR viittaa tyypillisesti pienempään lihasmassaan, vanhempaan ikään tai naisellisuuteen.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Kokonaispäivittäinen energian kulutus (TDEE) on kokonaiskalorimäärä, jonka poltat päivässä, mukaan lukien BMR ja kalorit fyysisestä aktiivisuudesta ja päivittäisestä liikkumisesta. TDEE riippuu BMR:stäsi ja aktiivisuustasostasi. Korkeampi TDEE tarkoittaa, että poltat enemmän kaloreita yhteensä, yleensä koska olet aktiivisempi tai sinulla on korkeampi BMR. Alempi TDEE viittaa vähäisempään päivittäiseen aktiivisuuteen tai matalampaan BMR:ään.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Päivittäinen Tavoite',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Päivittäinen Tavoite on suositeltu päivittäinen kalorinsaantisi, joka perustuu TDEE:hesi ja painotavoitteeseesi. Painon pudotuksessa kulutat vähemmän kaloreita kuin TDEE:si. Painon ylläpidossa vastaat TDEE:si. Painon lisäämisessä kulutat enemmän kaloreita kuin TDEE:si. Tämä auttaa sinua saavuttamaan haluamasi painomuutoksen terveellisellä tahdilla.',
			'disclaimer.calorieExpenditure.title' => 'Arvio kalorinkulutuksesta',
			'disclaimer.calorieExpenditure.description' => 'Kun Health Connect -dataa ei ole saatavilla, arvioimme tämän päivän poltetut kalorit käyttämällä perusaineenvaihduntaasi (BMR) ja aktiivisuustasoasi (TDEE), skaalattuna kuluneen päivän osuudelle.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Miten arvio lasketaan',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Laskemme TDEE-arvosi (profiilisi perusteella) ja kerromme sen kuluneen päivän murto-osalla (tunnit + minuutit) / 24 arvioidaksemme tähän mennessä poltetut kalorit.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Ammattilaisohjeet',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Tätä arviota ei saa käyttää lääkinnällisten päätösten perustana. Kysy aina terveydenhuollon ammattilaiselta tai laillistetulta ravitsemusterapeutilta henkilökohtaista neuvontaa painonhallintaan.',
			'common.close' => 'Sulje',
			'common.kContinue' => 'Jatka',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Nautitko ${appLabel}:stä?',
			'feedbackRating.yes' => 'Kyllä — pidän siitä',
			'feedbackRating.no' => 'Ei oikeastaan',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Nopea arvio auttaa muita löytämään ${appLabel} ja pitää kehityksen käynnissä. Haluaisitko käyttää hetken ja jättää arvion?',
			'feedbackRating.shareFeedbackViaEmail' => 'Palautteesi vaikuttaa siihen, mitä teemme seuraavaksi — luemme jokaisen viestin. Haluaisitko jakaa ajatuksesi sähköpostitse?',
			'feedbackRating.rateCta' => 'Arvostele Play-kaupassa',
			'feedbackRating.maybeLater' => 'Ehkä myöhemmin',
			'feedbackRating.sendFeedback' => 'Lähetä palautetta',
			'feedbackRating.noThanks' => 'Ei kiitos',
			'feedbackRating.aboutUsDescription' => 'Pienen tiimin huolella tehty. Keskitymme yksityisyyteen, yksinkertaisuuteen ja siihen, että autamme sinua kehittämään parempia ruokailutottumuksia.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Haluatko tietää, kuka on ${appLabel}:n takana? Katso ',
			'feedbackRating.aboutUsLinkLabel' => 'Tietoa meistä',
			'feedbackRating.thankYouMessage' => 'Kiitos! Kysymme uudestaan myöhemmin.',
			'errors.loadingProfileData' => 'Virhe profiilitietojen lataamisessa',
			'errors.somethingWentWrong' => 'Jokin meni pieleen.',
			'debug.title' => 'Debug-vaihtoehdot',
			'debug.searchHint' => 'Hae asetuksia...',
			'debug.sections.notifications' => 'Ilmoitukset',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.wearOs' => 'Wear OS',
			'debug.sections.foodApiTests' => 'Ruoan API -testit',
			'debug.sections.profileApiTests' => 'Profiili-API-testit',
			'debug.sections.feedback' => 'Palaute',
			'debug.sections.dataReset' => 'Tietojen nollaus',
			'debug.sections.database' => 'Tietokanta',
			'debug.sections.appInfo' => 'Sovellustiedot',
			'debug.sections.shorebird' => 'Shorebird',
			'debug.inspectDatabaseTables' => 'Tarkastele tietokannan tauluja',
			'debug.databaseInspectorTitle' => 'Tietokannan tarkastaja',
			'debug.databaseOnlyWithRealData' => 'Tietokannan tarkastelu on mahdollista vain todellisilla tiedoilla (ei testidatalla).',
			'debug.tableRowCount' => ({required Object count}) => '${count} riviä',
			'debug.emptyTable' => 'Ei rivejä',
			'debug.showActiveNotifications' => 'Näytä aktiiviset ilmoitukset',
			'debug.scheduleTestNotification' => 'Aikatauluta testimuistutus (10s)',
			'debug.triggerBreakfastNotification' => 'Käynnistä aamiaismuistutus',
			'debug.cancelAllNotifications' => 'Peruuta kaikki ilmoitukset',
			'debug.activeNotifications' => 'Aktiiviset ilmoitukset',
			'debug.noTitle' => 'Ei otsikkoa',
			'debug.noBody' => 'Ei sisältöä',
			'debug.fetchTodaysSteps' => 'Hae tämän päivän askeleet',
			'debug.fetchTodaysCalories' => 'Hae tämän päivän kalorit',
			'debug.fetchLatestWeight' => 'Hae viimeisin paino',
			'debug.fetchLatestHeight' => 'Hae viimeisin pituus',
			'debug.writeTestWeight' => 'Kirjoita testipaino (70kg)',
			'debug.writeTestHeight' => 'Kirjoita testipituus (175cm)',
			'debug.syncLast7Days' => 'Synkronoi viimeiset 7 päivää',
			'debug.sync7DaysTitle' => '7 päivän Synkronointi',
			'debug.checkCurrentLocale' => 'Tarkista nykyinen kieliasetus',
			'debug.currentLocale' => 'Nykyinen kieli',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Kieli: ${languageCode}\nMaa: ${countryCode}\nYksikköjärjestelmä: ${unitSystem}',
			'debug.latestWeight' => 'Viimeisin paino',
			'debug.latestHeight' => 'Viimeisin pituus',
			'debug.todaysCalories' => 'Tämän päivän kalorit',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Yhteensä poltetut kalorit: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Onnistuneesti haettu ${count} tietopistettä askeleista, kaloreista ja painosta viimeisten 7 päivän aikana.',
			'debug.noWeightData' => 'Viimeisen 30 päivän aikana ei ole löytöjä painotiedoista.',
			'debug.noHeightData' => 'Viimeisen vuoden aikana ei ole löytöjä pituustiedoista.',
			'debug.noCalorieData' => 'Tänään ei ole löytöjä kalorietiedoista.',
			'debug.weightWritten' => 'Testipaino (70kg) kirjoitettu onnistuneesti.',
			'debug.weightWriteFailed' => 'Testipainon kirjoittaminen epäonnistui.',
			'debug.heightWritten' => 'Testipituus (175 cm) kirjoitettu onnistuneesti.',
			'debug.heightWriteFailed' => 'Testipituuden kirjoittaminen epäonnistui.',
			'debug.noNotifications' => 'Ei aktiivisia ilmoituksia.',
			'debug.testNotificationScheduled' => 'Testimuistutus aikataulutettu 10 sekunniksi nyt.',
			'debug.testNotificationBody' => 'Tämä on testimuistutus, joka aikataulutettiin 10 sekunniksi nyt.',
			'debug.breakfastNotificationTriggered' => 'Aamiaismuistutus käynnistetty.',
			'debug.allNotificationsCancelled' => 'Kaikki ilmoitukset peruutettu.',
			'debug.fetchingData' => 'Hakee tietoja viimeisiltä 7 päivältä...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'debug.showFeedbackRatingSheet' => 'Näytä palaute- ja arvosteluikkuna',
			'debug.clearUserPreferences' => 'Nollaa käyttäjäasetukset',
			'debug.clearUserPreferencesConfirmationTitle' => 'Nollataanko käyttäjäasetukset?',
			'debug.clearUserPreferencesConfirmationMessage' => 'Teema, kieli ja palautteeseen liittyvät asetukset nollataan. Ateriat ja profiilitiedot eivät muutu.',
			'debug.clearUserProfile' => 'Nollaa käyttäjäprofiili',
			'debug.clearUserProfileConfirmationTitle' => 'Nollataanko käyttäjäprofiili?',
			'debug.clearUserProfileConfirmationMessage' => 'Profiilitietosi (päivittäinen tavoite, pituus, paino jne.) tyhjennetään. Ateriat ja asetukset eivät muutu.',
			'debug.clear' => 'Tyhjennä',
			'debug.cancel' => 'Peruuta',
			'debug.checkWatchConnection' => 'Tarkista kelloyhteys',
			'debug.sendTestMessage' => 'Lähetä testiviesti',
			'debug.sendTestMessageSubtitle' => 'Lähetä yksinkertainen testiviesti kelloon',
			'debug.sendTestMealData' => 'Lähetä testiateriatiedot',
			'debug.sendTestMealDataSubtitle' => 'Lähetä esimerkkiaineistoa kelloon',
			'debug.sendTestCalorieGoal' => 'Lähetä testikaloritavoite',
			'debug.sendTestCalorieGoalSubtitle' => 'Lähetä esimerkkikaloritavoite kelloon',
			'debug.viewReceivedMessages' => 'Näytä vastaanotetut viestit',
			'debug.viewReceivedMessagesSubtitle' => 'Näytä kellosta vastaanotetut viestit',
			'debug.watchConnected' => 'Kello yhdistetty ✓',
			'debug.device' => 'Laite',
			'debug.nearby' => 'Lähellä',
			'debug.yes' => 'Kyllä',
			'debug.no' => 'Ei',
			'debug.connectedDevices' => 'Yhdistetyt laitteet',
			'debug.deviceInfoUnavailable' => '(Laitetietoja ei saatavilla)',
			'debug.unknownDevice' => 'Tuntematon laite',
			'debug.watchNotConnected' => 'Kello ei ole yhdistetty ✗',
			'debug.watchNotConnectedHint' => 'Varmista:\n• Laitteet on paritettu\n• Kellosovellus on käynnissä\n• Molemmat sovellukset ovat debug-/staging-tilassa',
			'debug.watchConnection' => 'Kelloyhteys',
			'debug.errorCheckingConnection' => ({required Object error}) => 'Virhe yhteyden tarkistamisessa: ${error}',
			'debug.helloFromPhone' => 'Hei puhelimesta!',
			'debug.testMessageSentSuccess' => 'Testiviesti lähetetty onnistuneesti!',
			'debug.testMessageFailed' => 'Testiviestin lähetys epäonnistui. Tarkista kelloyhteys.',
			'debug.errorSendingMessage' => ({required Object error}) => 'Virhe viestin lähettämisessä: ${error}',
			'debug.testMeal' => 'Testiateria',
			'debug.testMealDataSentSuccess' => 'Testiateriatiedot lähetetty onnistuneesti!',
			'debug.failedToSendMealData' => 'Ateriatietojen lähetys epäonnistui. Tarkista kelloyhteys.',
			'debug.errorSendingMealData' => ({required Object error}) => 'Virhe ateriatietojen lähettämisessä: ${error}',
			'debug.testCalorieGoalSentSuccess' => 'Testikaloritavoite lähetetty onnistuneesti!',
			_ => null,
		} ?? switch (path) {
			'debug.failedToSendCalorieGoal' => 'Kaloritavoitteen lähetys epäonnistui. Tarkista kelloyhteys.',
			'debug.errorSendingCalorieGoal' => ({required Object error}) => 'Virhe kaloritavoitteen lähettämisessä: ${error}',
			'debug.testAnalyzeImage' => 'Testaa kuvan analysointi',
			'debug.testAnalyzeImageSubtitle' => 'Lähetä kovakoodattu testikuva',
			'debug.testDetectImage' => 'Testaa kuvan tunnistus',
			'debug.testDetectImageSubtitle' => 'Tunnista ateria kuvan URL-osoitteesta',
			'debug.detectImageFromGallery' => 'Tunnista kuva galleriasta',
			'debug.detectImageFromGallerySubtitle' => 'Valitse kuva, lataa säilöön ja arvioi kalorit',
			'debug.testDetectText' => 'Testaa tekstintunnistusta',
			'debug.testDetectTextSubtitle' => 'Tunnista ateria tekstikuvauksen perusteella',
			'debug.testMealLoggingWithVariations' => 'Testaa aterian kirjaus variaatioilla',
			'debug.testMealLoggingWithVariationsSubtitle' => 'Testaa koko aterian kirjausprosessi variaatioineen',
			'debug.mockMealWithVariations' => 'Mallipäivä (variaatioilla)',
			'debug.mockMealWithVariationsSubtitle' => 'Esikatsele variaatio- ja vinkkinäkymää ilman kirjaamista',
			'debug.mockMealName' => 'Grillattua kanaa riisin ja vihannesten kanssa',
			'debug.mockTip' => 'Tämä on esimerkkivinkki käyttöliittymän esikatseluun. Ateriaa ei ole kirjattu.',
			'debug.mockMealDescription' => 'Mallinäytteinen ateria debuggausta varten',
			'debug.portionSizeQuestion' => 'Kuinka suuri annoskoko oli?',
			'debug.extraSidesQuestion' => 'Onko lisukkeita?',
			'debug.optionSmall' => 'Pieni',
			'debug.optionMedium' => 'Keskikokoinen',
			'debug.optionLarge' => 'Suuri',
			'debug.optionNone' => 'Ei mitään',
			'debug.optionSideSalad' => 'Lisäsalaatti',
			'debug.optionBreadRoll' => 'Sämpylä',
			'debug.testingAnalyzeImage' => 'Testataan analyzeImage-APIa...',
			'debug.testingDetectImage' => 'Testataan detectImage-APIa...',
			'debug.testingDetectText' => 'Testataan detectText-APIa...',
			'debug.selectingImageFromGallery' => 'Valitaan kuva galleriasta...',
			'debug.noImageSelected' => 'Ei valittua kuvaa',
			'debug.compressingImage' => 'Kuvapakkaus...',
			'debug.uploadingImageAndDetecting' => 'Lähetetään kuva säilöön ja tunnistetaan ateria...',
			'debug.testingMealLoggingFlow' => 'Testataan aterian kirjausprosessia variaatioilla...',
			'debug.testUpdateProfile' => 'Testaa profiilin päivitys',
			'debug.testUpdateProfileSubtitle' => 'Lähetä esimerkkiprofiili POST-pyynnöllä palvelimelle',
			'debug.testingProfileApi' => 'Testataan profiili-APIa...',
			'debug.profileUpdateSuccess' => 'Profiili-API vastasi onnistuneesti',
			'debug.profileUpdateFailed' => ({required Object error}) => 'Profiili-API-virhe: ${error}',
			'debug.noMealIdentifiedInResponse' => 'Vastauksesta ei tunnistettu ateriaa',
			'debug.mealIdentified' => 'Ateria tunnistettu',
			'debug.confidence' => 'Luottamustaso',
			'debug.tip' => 'Vinkki',
			'debug.mealName' => 'Aterian nimi',
			'debug.calories' => 'Kalorit',
			'debug.protein' => 'Proteiini',
			'debug.carbs' => 'Hiilihydraatit',
			'debug.fat' => 'Rasva',
			'debug.noMealInfo' => 'Ei ateriatietoja',
			'debug.na' => 'Ei saatavilla',
			'debug.analyzeImageResult' => 'Kuvan analysoinnin tulos',
			'debug.detectImageResult' => 'Kuvan tunnistuksen tulos',
			'debug.detectImageFromGalleryResult' => 'Gallerian kuvan tunnistuksen tulos',
			'debug.detectTextResult' => 'Tekstin tunnistuksen tulos',
			'debug.errorGeneric' => ({required Object error}) => 'Virhe: ${error}',
			'debug.variationsCount' => 'Variaatiot',
			'debug.userPreferencesCleared' => 'Käyttäjäasetukset tyhjennetty',
			'debug.userProfileCleared' => 'Käyttäjäprofiili tyhjennetty',
			'debug.checkForUpdate' => 'Tarkista päivitykset',
			'debug.showPatchNumber' => 'Näytä patch-numero',
			'debug.showUpdateAvailable' => 'Näytä saatavilla oleva päivitys',
			'debug.updateAvailable' => 'Päivitys saatavilla',
			'debug.upToDate' => 'Ajantasalla',
			'debug.shorebirdUnavailable' => 'Shorebird ei ole käytettävissä tässä ympäristössä.',
			'debug.patchNumberLabel' => 'Patch-numero',
			'debug.noPatchInstalled' => 'Ei asennettua patchia',
			'debug.todaysSteps' => 'Tämän päivän askeleet',
			'debug.stepsLabel' => 'Askeleet',
			'debug.weightLabel' => ({required Object value}) => 'Paino: ${value} kg',
			'debug.heightLabel' => ({required Object value}) => 'Pituus: ${value} cm',
			'debug.receivedMessagesFromWatch' => 'Vastaanotetut viestit kellosta',
			'debug.noMessagesReceivedYet' => 'Ei vielä vastaanotettu viestejä.\n\nLähetä testitietoja kellosta nähdäksesi viestit täällä.',
			'debug.messagesCleared' => 'Viestit tyhjennetty',
			'health.syncFailed' => 'Yhdistäminen Health Connectiin epäonnistui',
			'health.mealSynced' => 'Ateria synkronoitu Health Connectin kanssa',
			_ => null,
		};
	}
}
