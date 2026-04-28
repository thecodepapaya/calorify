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
	@override late final _TranslationsErrorsFi errors = _TranslationsErrorsFi._(_root);
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
	@override late final _TranslationsHealthFi health = _TranslationsHealthFi._(_root);
}

// Path: errors
class _TranslationsErrorsFi implements TranslationsErrorsEn {
	_TranslationsErrorsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Teit liian monta pyyntöä. Odota hetki ja yritä uudelleen.';
	@override String get networkError => 'Verkkovirhe. Tarkista internet-yhteytesi.';
	@override String get unknownError => 'Jotain meni pieleen. Yritä myöhemmin uudelleen.';
	@override String get loadingProfileData => 'Virhe profiilitietojen latauksessa';
	@override String get somethingWentWrong => 'Jotain meni pieleen.';
	@override String get retry => 'Yritä uudelleen';
}

// Path: onboarding
class _TranslationsOnboardingFi implements TranslationsOnboardingEn {
	_TranslationsOnboardingFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Tervetuloa sovellukseen ${appLabel}';
	@override String get subtitle => 'Henkilökohtainen ravitsemuskumppanisi tekoälyn voimalla';
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
	@override String get dashboard => 'Etusivu';
	@override String get history => 'Historia';
}

// Path: home
class _TranslationsHomeFi implements TranslationsHomeEn {
	_TranslationsHomeFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryFi aiSummary = _TranslationsHomeAiSummaryFi._(_root);
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
	@override String get noMeals => 'Ei yhtään ateriaa';
	@override String get emptyMessage => 'Nappaa kuva viimeisimmästä ateriastasi kirjautuaksesi tähän.';
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
	@override String get editMeal => 'Muokkaa ateriaa';
	@override String get addMeal => 'Lisää ateria';
	@override String get saveMeal => 'Tallenna ateria';
	@override String get save => 'Tallenna';
	@override String get mealName => 'Aterian nimi';
	@override String get mealNameHint => 'esim. Munakokkeli ja paahtoleipä';
	@override String get mealQuantity => 'Aterian määrä';
	@override String get mealQuantityHint => 'esim. 1 kulho, 2 viipaletta';
	@override String get timeOfMeal => 'Aterian ajankohta';
	@override String get timeOfMealHint => 'Valitse, milloin söit aterian';
	@override String get mealType => 'Ateriatyyppi';
	@override late final _TranslationsMealNutritionFi nutrition = _TranslationsMealNutritionFi._(_root);
	@override late final _TranslationsMealDeleteConfirmationFi deleteConfirmation = _TranslationsMealDeleteConfirmationFi._(_root);
	@override String get addedToLog => 'Ateria lisättiin lokiin!';
	@override String couldNotAdd({required Object error}) => 'Ateriaa ei voitu lisätä: ${error}';
	@override String get savedSuccessfully => 'Ateria lisätty onnistuneesti!';
	@override String get updatedSuccessfully => 'Ateria päivitetty onnistuneesti!';
	@override String errorSaving({required Object error}) => 'Virhe tallennuksessa: ${error}';
	@override String get removedFromFavorites => 'Poistettu suosikeista!';
	@override String get savedAsFavorite => 'Ateria tallennettu suosikiksi!';
	@override String get unfavorite => 'Poista suosikeista';
	@override String couldNotUpdateFavorite({required Object error}) => 'Suosikin päivitys epäonnistui: ${error}';
	@override String get feedbackThanks => 'Kiitos palautteesta!';
	@override String get reanalysisUpdated => 'Päivitetty ateria-analyysi palautteesi perusteella.';
	@override String failedToProcess({required Object error}) => 'Käsittely epäonnistui: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Kuvan käsittely epäonnistui: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Virhe kuvan pakkaamisessa: ${error}';
	@override String get failedToSave => 'Tietojen tallennus epäonnistui. Yritä uudelleen.';
	@override String get skip => 'Ohita';
	@override late final _TranslationsMealVariationFi variation = _TranslationsMealVariationFi._(_root);
	@override late final _TranslationsMealAnalysisFi analysis = _TranslationsMealAnalysisFi._(_root);
	@override late final _TranslationsMealFeedbackFi feedback = _TranslationsMealFeedbackFi._(_root);
}

// Path: favorites
class _TranslationsFavoritesFi implements TranslationsFavoritesEn {
	_TranslationsFavoritesFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suosikit';
	@override String get empty => 'Ei vielä suosikkiaterioita.';
	@override String get searchPlaceholder => 'Hae suosikkiaterioita';
	@override String get searchEmptyTitle => 'Hakusi ei tuottanut suosikkeja';
	@override String get searchEmptySubtitle => 'Kokeile toista aterian nimeä, määrää tai ateriatyyppiä.';
	@override String get sortLabel => 'Järjestä suosikit';
	@override String get undo => 'Kumoa';
	@override String removed({required Object name}) => 'Poistettiin ${name} suosikeista';
	@override late final _TranslationsFavoritesSortOptionsFi sortOptions = _TranslationsFavoritesSortOptionsFi._(_root);
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
	@override String get weightGoal => 'Painotavoite';
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
	@override String get title => 'Terveysarvio';
	@override String get whyThisScore => 'Miksi tämä arvosana?';
	@override String get note => 'Tämä pisteytys on tekoälyn arvio tunnistetuista ainesosista ja ravintotiheydestä. Käänny aina ammattilaisen puoleen henkilökohtaista ravinto-ohjausta varten.';
	@override String get unhealthy => 'Epäterveellinen';
	@override String get healthy => 'Terveellinen';
	@override String get neutral => 'Neutraali';
}

// Path: editProfile
class _TranslationsEditProfileFi implements TranslationsEditProfileEn {
	_TranslationsEditProfileFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Muokkaa profiilia';
	@override late final _TranslationsEditProfileSectionsFi sections = _TranslationsEditProfileSectionsFi._(_root);
	@override String get gender => 'Sukupuoli';
	@override String get dateOfBirth => 'Syntymäaika';
	@override String get height => 'Pituus';
	@override String get weight => 'Paino';
	@override String get weightGoal => 'Painotavoite';
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
	@override late final _TranslationsSettingsExportMealHistoryFi exportMealHistory = _TranslationsSettingsExportMealHistoryFi._(_root);
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
	@override String get title => 'Pysy raiteilla muistutusten avulla';
	@override String get description => 'Saat lempeitä muistutuksia aterioiden kirjaamiseen ja pysyt johdonmukaisena ravintotavoitteidesi kanssa';
	@override String get notificationsEnabled => 'Ilmoitukset käytössä';
	@override String get notificationsDisabled => 'Ilmoitukset pois käytöstä';
	@override String get enabledSubtitle => 'Saat ateriamuistutuksia';
	@override String get disabledSubtitle => 'Ota ilmoitukset käyttöön saadaksesi ateriamuistutuksia';
	@override String get mealReminders => 'Ateriamuistutukset';
	@override String get breakfast => 'Aamiainen';
	@override String get lunch => 'Lounas';
	@override String get dinner => 'Päivällinen';
	@override String get snack => 'Välipala';
	@override String get unknown => 'Tuntematon';
	@override String get change => 'Muuta';
	@override String get enableNotifications => 'Ota ilmoitukset käyttöön';
	@override String get skipForNow => 'Ohita toistaiseksi';
	@override String get saveChanges => 'Tallenna muutokset';
	@override String get enabledSuccessfully => 'Ilmoitukset otettiin käyttöön onnistuneesti!';
	@override String get permissionDenied => 'Ilmoituslupa evätty';
	@override String errorEnabling({required Object error}) => 'Virhe ilmoitusten käyttöönotossa: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Virhe asetusten viimeistelyssä: ${error}';
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
	@override String get signInWithGoogle => 'Kirjaudu Googlella';
	@override String get signInFailed => 'Google-kirjautuminen epäonnistui tai peruttiin.';
}

// Path: disclaimer
class _TranslationsDisclaimerFi implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Huomio';
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
	@override String enjoyingQuestion({required Object appLabel}) => 'Pidätkö ${appLabel}-sovelluksesta?';
	@override String get yes => 'Kyllä, pidän siitä';
	@override String get no => 'En oikein';
	@override String get rateStepHeading => 'Arvostele Play Storessa';
	@override String get emailStepHeading => 'Lähetä palautetta sähköpostilla';
	@override String soloDevMessage({required Object appLabel}) => 'Nopea arvostelu auttaa muita löytämään ${appLabel}-sovelluksen ja pitää kehityksen käynnissä. Voisitko jättää sellaisen?';
	@override String get shareFeedbackViaEmail => 'Palautteesi ohjaa seuraavia askeleita — luemme jokaisen viestin. Haluaisitko jakaa ajatuksiasi sähköpostitse?';
	@override String get rateCta => 'Arvostele Play Storessa';
	@override String get maybeLater => 'Ehkä myöhemmin';
	@override String get sendFeedback => 'Lähetä palautetta';
	@override String get noThanks => 'Ei kiitos';
	@override String get aboutUsDescription => 'Pienen tiimin huolella tekemä. Keskitymme yksityisyyteen, yksinkertaisuuteen ja parempien ruokailutottumusten rakentamiseen.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Kiinnostaako, kuka ${appLabel}:n takana on? Katso ';
	@override String get aboutUsLinkLabel => 'Tietoa meistä';
	@override String get thankYouMessage => 'Kiitos! Kysymme uudelleen toisen kerran.';
}

// Path: health
class _TranslationsHealthFi implements TranslationsHealthEn {
	_TranslationsHealthFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Synkkaus Health Connectiin epäonnistui';
	@override String get mealSynced => 'Ateria synkattu Health Connectiin';
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
	@override String get description => 'Sukupuoli auttaa meitä laskemaan perusaineenvaihduntasi (BMR) tarkemmin.';
	@override String get next => 'Seuraava';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightFi implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kuinka pitkä olet?';
	@override String get description => 'Pituutesi auttaa meitä laskemaan BMI:si ja energiatarpeesi tarkasti.';
	@override String get metric => 'Metrinen';
	@override String get imperial => 'Imperiaalinen';
	@override String get next => 'Seuraava';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightFi implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Mikä on nykyinen painosi?';
	@override String get currentDescription => 'Nykyinen painosi on oleellinen päivittäisten tavoitteidesi personoinnissa.';
	@override String get targetTitle => 'Mikä on tavoitepainosi?';
	@override String get targetDescription => 'Tavoitepainon asettaminen auttaa määrittämään pitkän aikavälin suunnitelmasi.';
	@override String get metric => 'Metrinen';
	@override String get imperial => 'Imperiaalinen';
	@override String get next => 'Seuraava';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeFi implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Milloin on syntymäpäiväsi?';
	@override String get description => 'Ikäsi auttaa meitä arvioimaan kaloritarpeesi tarkasti.';
	@override String get next => 'Seuraava';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleFi implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Alipaino';
	@override String get healthy => 'Terve';
	@override String get overweight => 'Ylipaino';
	@override String get obese => 'Lihavuus';
	@override late final _TranslationsOnboardingBmiScaleCategoriesFi categories = _TranslationsOnboardingBmiScaleCategoriesFi._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesFi messages = _TranslationsOnboardingBmiScaleMessagesFi._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalFi implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mikä on tavoitteesi?';
	@override String get description => 'Valitse tavoite, joka kuvaa parhaiten sitä, mitä haluat saavuttaa';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelFi implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kuinka aktiivinen olet?';
	@override String get description => 'Tämä auttaa meitä laskemaan päivittäisen kaloritarpeesi tarkemmin';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectFi implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yhdistä Health Connectiin';
	@override String get description => 'Synkkaa terveystietosi parempia oivalluksia ja automaattista kaloriseurantaa varten';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingFi automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingFi._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsFi progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsFi._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationFi seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationFi._(_root);
	@override String get connected => 'Health Connect yhdistetty';
	@override String get notConnected => 'Health Connect ei yhdistetty';
	@override String get setup => 'Määritä Health Connect';
	@override String get skipForNow => 'Ohita toistaiseksi';
	@override String get statusConnected => 'Health Connect on yhdistetty.';
	@override String get statusSuccess => 'Health Connect yhdistettiin onnistuneesti!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Lupa evätty. Ota Health Connect -lupia käyttöön puhelimesi asetuksista sovellukselle ${appLabel}.';
	@override String statusError({required Object error}) => 'Virhe Health Connectin määrityksessä: ${error}';
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

// Path: home.aiSummary
class _TranslationsHomeAiSummaryFi implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tekoälyn yhteenveto';
	@override String get logMore => 'Kirjaa lisää aterioita seuraavien päivien aikana saadaksesi henkilökohtaiset tekoälyoivallukset.';
	@override String get loading => 'Ladataan yhteenvetoasi...';
	@override String mealCount({required Object count}) => '${count} ateriaa kirjattu';
	@override String macroBalanceScore({required Object score}) => 'Tasapainopiste ${score}';
	@override String get topFoods => 'Suosituimmat ruoat';
	@override String get trendUp => 'Kalorit nousussa';
	@override String get trendDown => 'Kalorit laskussa';
	@override String get trendSteady => 'Kalorit tasaisena';
	@override String generatedAt({required Object time}) => 'Päivitetty ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalFi implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aseta päivätavoitteesi';
	@override String get titleSet => 'Päivätavoitteesi';
	@override String get description => 'Valmis aloittamaan hyvinvointimatkasi? Aseta päivittäinen kaloritaso alla käynnistääksesi edistymisen.';
	@override String get descriptionSet => 'Suuntasi on selvä! Tämä on päivittäinen kaloritasosi ohjenuoraksi.';
	@override String get yourGoal => 'Tavoitteesi';
	@override String get goal => 'Tavoite';
	@override String get dailyCalories => 'Päivittäiset kalorit (kcal)';
	@override String get setGoal => 'Aseta tavoite';
	@override String get intake => 'Saanti';
	@override String get burned => 'Kulutus';
	@override String get weightImpact => 'Vaikutus painoon';
	@override String get estLoss => 'Arv. lasku';
	@override String get estGain => 'Arv. nousu';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryFi implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päivän yhteenveto';
	@override String get calories => 'Kalorit';
	@override String get carbs => 'Hiilihydraatit';
	@override String get protein => 'Proteiini';
	@override String get fat => 'Rasva';
	@override String get fiber => 'Kuitu';
	@override String get grams => 'grammaa';
	@override String get chartAccessibilityLabel => 'Makrojen kaavio';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressFi implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tämän päivän makrojakauma';
	@override String get target => 'Tavoite';
	@override String get current => 'Nykyinen';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryFi implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => '7 päivän makrohistoria';
	@override String get trendTitle => 'Päivän trendi';
	@override String peakHour({required Object hour}) => 'Huippu: klo ${hour}:00';
	@override String get noHistoryYet => 'Ei vielä historiaa';
	@override String get startLogging => 'Aloita aterioiden kirjaaminen nähdäksesi\n7 päivän makrotrendit täällä';
}

// Path: home.mealLog
class _TranslationsHomeMealLogFi implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kirjatut ateriat';
	@override String get emptyMessage => 'Nappaa kuva viimeisimmästä ateriastasi kirjautuaksesi tähän.';
	@override String get noMealsToday => 'Tälle päivälle ei kirjattuja aterioita';
	@override String get seeAllMeals => 'Näytä kaikki ateriat';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionFi implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pikalisäys tekoälyllä';
	@override String get description => 'Kuvaile ateriasi ja anna tekoälyn hoitaa loput.';
	@override String get hint => 'esim. Aamiaiseksi söin ison kulhon kaurapuuroa, banaanin siivuina ja annoksen heraa ...';
	@override String get analyzeMeal => 'Analysoi ateria';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsFi implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suosikkiateriat';
	@override String get description => 'Lisää nopeasti jokin suosikkiaterioistasi.';
	@override String get noFavorites => 'Ei vielä suosikkiaterioita.';
	@override String get addFavoriteHint => 'Merkitse ateria suosikiksi klikkaamalla tähteä.';
	@override String get seeAll => 'Näytä kaikki';
	@override String get add => 'Lisää';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapFi implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kuvaa ja seuraa ateriasi';
	@override String get description => 'Käytä kameraa ottaaksesi kuvan ruoastasi tekoälyanalyysiä varten.';
	@override String get openCamera => 'Avaa kamera';
	@override String get gallery => 'Galleria';
	@override String get compressingPhoto => 'Optimoidaan kuvaa…';
	@override String get uploadingPhoto => 'Lähetetään kuvaa…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthFi implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synkkaa Health Connectiin';
	@override String get description => 'Synkkaa ravitsemustietosi Health Connectin kanssa';
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
	@override String get title => 'Poista ateria';
	@override String get message => 'Haluatko varmasti poistaa tämän ateriamerkinnän?';
	@override String get cancel => 'Peruuta';
	@override String get delete => 'Poista';
}

// Path: meal.variation
class _TranslationsMealVariationFi implements TranslationsMealVariationEn {
	_TranslationsMealVariationFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Kysymys ${current}/${total}';
	@override String get noVariationsAvailable => 'Ei muunnelmia saatavilla';
}

// Path: meal.analysis
class _TranslationsMealAnalysisFi implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tekoälyn ateria-analyysi';
	@override String get reassurance => 'Tämä kestää yleensä vain muutaman sekunnin.';
	@override String get stepStarted => 'Aloitetaan…';
	@override String get stepDecomposition => 'Ymmärretään ateriasi…';
	@override String get stepIngredients => 'Yhdistetään ainesosat ravintotietoihin…';
	@override String get stepUncertainty => 'Tarkistetaan varmuutta…';
	@override String get stepMealTypeQuestion => 'Melkein valmista…';
	@override String get stepResult => 'Viimeistellään tulosta…';
	@override String get stepError => 'Jotain meni pieleen';
	@override String get stepDefault => 'Analysoidaan ateriaasi…';
	@override String get progressUnderstand => 'Ymmärrys';
	@override String get progressMatch => 'Vastaavuus';
	@override String get progressCheck => 'Tarkistus';
	@override String get progressFinish => 'Viimeistely';
	@override String ingredientsLine({required Object count}) => '${count} ainesosaa havaittu';
	@override String get ingredientsPending => 'Skannataan ainesosia…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackFi implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'What looks wrong?';
	@override String get subtitle => 'Help us improve the analysis by selecting one or more issues.';
	@override String get tellUsMore => 'Tell us more';
	@override String get describeIncorrect => 'Describe what was incorrect';
	@override String get submit => 'Submit';
	@override String get issueFoodIdentification => 'Food identification';
	@override String get issuePortionSize => 'Portion size';
	@override String get issueCalorieDistribution => 'Calorie distribution';
	@override String get issueMacrosWrong => 'Macros are wrong';
	@override String get issueMissingItems => 'Missing items';
	@override String get issueExtraItems => 'Extra items';
	@override String get issueOther => 'Other';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsFi implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Uusimmat';
	@override String get calories => 'Kalorit';
	@override String get alphabetical => 'A–Ö';
}

// Path: profile.sections
class _TranslationsProfileSectionsFi implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIILI';
	@override String get basicInformation => 'PERUSTIEDOT';
	@override String get goalsAndActivity => 'TAVOITTEET JA AKTIIVISUUS';
	@override String get calculatedValues => 'LASKETUT ARVOT';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesFi implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Päivätavoite';
	@override String get calPerDay => 'kcal/vrk';
	@override String get notAvailable => 'Ei saatavilla';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsFi implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'HENKILÖTIEDOT';
	@override String get physicalMeasurements => 'FYYSISET MITAT';
	@override String get goalsAndActivity => 'TAVOITTEET JA AKTIIVISUUS';
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
	@override String get localization => 'KIELI JA ALUE';
	@override String get notifications => 'ILMOITUKSET';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'TUKI JA OIKEUDELLISET';
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
	@override String get subtitle => 'Päivitä henkilötietosi';
}

// Path: settings.language
class _TranslationsSettingsLanguageFi implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kieli';
	@override String get subtitle => 'Valitse ensisijainen kielesi';
	@override String get searchHint => 'Hae kieliä...';
	@override String get noResults => 'Ei tuloksia';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitFi implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pituuden yksikkö';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitFi implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Painon yksikkö';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersFi implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ateriamuistutukset';
	@override String get subtitle => 'Pysy raiteilla ajantasaisilla muistutuksilla';
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
	@override String subtitle({required Object appLabel}) => 'Auta meitä parantamaan ${appLabel}-sovellusta';
	@override String emailSubject({required Object appLabel}) => '${appLabel}-sovelluksen palaute';
	@override String get emailBodyPrefix => 'Anna palautteesi alle:';
	@override String get appVersion => 'Sovellusversio';
	@override String get device => 'Laite';
	@override String get osVersion => 'Käyttöjärjestelmäversio';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryFi implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vie ateriahistoria';
	@override String get subtitle => 'Jaa CSV kirjatuista aterioistasi';
	@override String get shareText => 'Your Calorify meal history export';
	@override String failed({required Object error}) => 'Ateriahistorian vienti epäonnistui: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataFi implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tyhjennä kaikki tiedot';
	@override String get subtitle => 'Poista kaikki tietosi peruuttamattomasti';
	@override String get confirmationTitle => 'Tyhjennetäänkö kaikki tiedot?';
	@override String get confirmationMessage => 'Tätä toimintoa ei voi perua. Kaikki kirjatut ateriasi, suosikit ja profiiliasetukset poistetaan pysyvästi.';
	@override String get cancel => 'Peruuta';
	@override String get clearEverything => 'Tyhjennä kaikki';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsFi implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vianjäljitysasetukset';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectFi implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Näytä ja hallitse käyttöoikeuksia';
	@override late final _TranslationsSettingsHealthConnectUnavailableFi unavailable = _TranslationsSettingsHealthConnectUnavailableFi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsFi permissions = _TranslationsSettingsHealthConnectPermissionsFi._(_root);
	@override String get managePermissions => 'Hallitse käyttöoikeuksia';
	@override String get openSettings => 'Avaa Health Connect -asetukset';
	@override String get requestPermissions => 'Pyydä käyttöoikeuksia';
	@override String get permissionRequestCancelledOrFailed => 'Käyttöoikeuspyyntö peruttiin tai epäonnistui. Yritä uudelleen tai myönnä oikeudet manuaalisesti Health Connect -asetuksissa.';
	@override String get permissionRequestFailed => 'Käyttöoikeuksien pyytäminen ei onnistu. Yritä uudelleen tai myönnä oikeudet manuaalisesti Health Connect -asetuksissa.';
	@override String get requestingPermissions => 'Pyydetään...';
}

// Path: settings.about
class _TranslationsSettingsAboutFi implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tietoja';
	@override String get tagline => 'Nopea, ilmainen ja yksityisyyttä kunnioittava kalorivalmennus';
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
	@override String get title => 'Aamiaisaika! 🍳';
	@override String get body => 'Muista kirjata aamiaisesi';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchFi implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lounasaika! 🥗';
	@override String get body => 'On aika kirjata lounaasi';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerFi implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päivällisaika! 🍽️';
	@override String get body => 'Muista kirjata päivällisesi';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackFi implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Välipala-aika! 🍎';
	@override String get body => 'Aika terveelliselle välipalalle';
}

// Path: notifications.test
class _TranslationsNotificationsTestFi implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testi-ilmoitus';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapFi implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} tarjoaa arvioidut ravintoarvot. Tarkkuus riippuu syötteestäsi ja ruoan vaihtelusta. Käytä ohjenuorana, ei lopullisena lähteenä. Käänny ammattilaisen puoleen henkilökohtaista ravinto-ohjausta varten.';
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
	@override String get title => 'Tietoa painoarviosta';
	@override String get description => 'Arvioitu painonmuutos perustuu teoreettiseen malliimme kalorit sisään vs. kalorit ulos. Se on tarkoitettu vain motivaatioksi, ei todellisen painon ennusteeksi.';
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
	@override String get description => 'Nämä mittarit auttavat sinua ymmärtämään kehosi energiantarvetta ja ohjaavat ravintotavoitteitasi.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrFi bmr = _TranslationsDisclaimerHealthMetricsBmrFi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeFi tdee = _TranslationsDisclaimerHealthMetricsTdeeFi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalFi dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalFi._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureFi implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorien kulutuksen arvio';
	@override String get description => 'Kun Health Connect -tietoja ei ole saatavilla, arvioimme tämän päivän kulutetut kalorit perusaineenvaihdunnan (BMR) ja aktiivisuustason (TDEE) perusteella, skaalattuna kuluneen päivän osuuden mukaan.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedFi howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedFi._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFi professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFi._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionFi implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Älykäs ruoantunnistus';
	@override String get description => 'Ota kuva ja anna tekoälyn tunnistaa ateriasi';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisFi implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tekoälyanalyysi';
	@override String get description => 'Saat heti ravintoarvot kuvauksesi perusteella';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationFi implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect -integraatio';
	@override String get description => 'Yhdistä Health Connectiin parempia oivalluksia varten';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesFi implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Alipaino';
	@override String get healthyWeight => 'Normaalipaino';
	@override String get overweight => 'Ylipaino';
	@override String get obese => 'Lihavuus';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesFi implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Autamme sinua rakentamaan terveellisen suunnitelman tasapainoiseen painoon ravintorikkaiden aterioiden avulla.';
	@override String get healthy => 'Hienoa! Olet terveellisellä alueella. Autamme sinua ylläpitämään vireyttäsi ja energiatasojasi.';
	@override String overweight({required Object appLabel}) => '${appLabel} tekee matkasta helpomman tekoälypohjaisella seurannalla, jotta pääset kohti tavoitettasi mukavasti.';
	@override String get obese => 'Olemme tukenasi henkilökohtaisella ohjauksella ja kestävillä strategioilla terveytesi tavoitteisiin.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingFi implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automaattinen kaloriseuranta';
	@override String get description => 'Seuraa poltettuja kaloreita kuntosovelluksistasi';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsFi implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edistymisen oivallukset';
	@override String get description => 'Saat yksityiskohtaisia näkymiä terveystrendeihin';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationFi implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Saumaton integrointi';
	@override String get description => 'Synkkaa tietoja suosikkiterveyssovelluksistasi';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessFi implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Et ole yksin';
	@override String get genericMessage => 'Tutkimusten mukaan johdonmukainen seuranta on pitkäaikaisen menestyksen ykkösennustaja.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age}-vuotiaalle ${gender}, joka haluaa ${goal}, johdonmukainen seuranta on tärkein menestyksen ennustaja.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} tekee tästä 10x helpompaa kuin manuaalisesti.';
	@override String get getStartedTitle => 'Valmis aloittamaan?';
	@override String get tipPhoto => 'Ota kuvat aterioistasi saadaksesi välittömän analyysin';
	@override String get tipConsistency => 'Kirjaa säännöllisesti nähdäksesi merkityksellistä edistystä';
	@override String get tipProgress => 'Seuraa edistymistäsi päivittäin pysyäksesi motivoituneena';
	@override String get button => 'Aloitetaan';
	@override String get defaultGender => 'henkilö';
	@override String get defaultGoal => 'terveempi sinä';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileFi implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terveysprofiilisi';
	@override String bmiDescription({required Object bmi}) => 'Mittariesi perusteella BMI:si on ${bmi}.';
	@override String get finalizeDescription => 'Viimeistellään profiilisi, jotta voimme räätälöidä kokemuksesi.';
	@override String get goalGain => 'nostaa';
	@override String get goalLose => 'laskea';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Päästäksesi tavoitteeseesi sinun tulisi ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Olet tavoitepainossasi! Autamme sinua ylläpitämään sen.';
	@override String get button => 'Aloitetaan';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleFi implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Loistava alku!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Olet ottanut ensimmäisen askeleen kohti ${goalText}. Koska olet ${activityText}, ${appLabel} säätää tavoitteitasi elämäntapaasi sopiviksi.';
	@override String get personalizedTargets => 'Henkilökohtaiset kalorisuositukset';
	@override String get aiMealDetection => 'Tekoälypohjainen aterioiden tunnistus';
	@override String get macroBreakdowns => 'Yksityiskohtaiset makroravinne-erittelyt';
	@override String get button => 'Aloitetaan';
	@override String get defaultGoal => 'tavoitteitasi';
	@override String get defaultActivity => 'aktiivinen';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightFi implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Laihdu';
	@override String get description => 'Luo kalorivaje laihtuaksesi';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightFi implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ylläpidä paino';
	@override String get description => 'Ylläpidä nykyinen painosi';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightFi implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nosta painoa';
	@override String get description => 'Luo kaloriylijäämä painon nostamiseksi';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryFi implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Vähäinen aktiivisuus';
	@override String get description => 'Vähän tai ei lainkaan liikuntaa';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveFi implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kevyen aktiivinen';
	@override String get description => 'Kevyttä liikuntaa 1–3 päivää/viikko';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveFi implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kohtalaisen aktiivinen';
	@override String get description => 'Kohtalaista liikuntaa 3–5 päivää/viikko';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveFi implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Erittäin aktiivinen';
	@override String get description => 'Raskasta liikuntaa 6–7 päivää/viikko';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveFi implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Äärimmäisen aktiivinen';
	@override String get description => 'Erittäin raskasta liikuntaa, fyysinen työ';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableFi implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ei ole saatavilla';
	@override String get description => 'Health Connect ei ole saatavilla tällä laitteella. Asenna Health Connect Play Storesta (Android 9+) tai päivitä Android 14+:aan.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsFi implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Käyttöluvat';
	@override String get description => 'Seuraavia lupia pyydetään Health Connect -integraation tarjoamiseksi:';
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
	@override String get title => 'Tarina';
	@override String content({required Object appLabel}) => '${appLabel} syntyi yksinkertaisesta turhautumisesta: useimmat kaloriseurantasovellukset ovat joko liian monimutkaisia, vaativat jatkuvaa manuaalista syöttöä, perivät korkeat tilausmaksut tai tinkivät yksityisyydestä.\n\nYksin kehittäjänä halusin rakentaa jotain yksinkertaisempaa ja reilumpaa — sovelluksen, joka hyödyntää tekoälyä vaivannäön vähentämiseksi, pysyy nopeana ja ilmaisena sekä kohtelee terveystietojasi kunnioittavasti.\n\n${appLabel} on sovellus, jonka olisin itse halunnut: ei tilejä, ei seurantaa, ei mainoksia — vain selkeitä, käytännöllisiä oivalluksia ja terveytesi tukemista.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyFi implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yksityisyytesi on tärkeä';
	@override String get description => 'Yksityisyys ei ole jälkiajatus — se on suunnitteluperiaate. Tässä, mitä se tarkoittaa käytännössä:';
	@override String get noAccounts => 'Ei tilejä tarpeen\nKäytä sovellusta heti. Ei rekisteröitymisiä, ei henkilöllisyyksiä.';
	@override String noTracking({required Object appLabel}) => 'Ei käyttäytymisen seurantaa\n${appLabel} ei seuraa toimintaasi, laadi käyttötapaprofiileja tai seuraa sinua sovellusten tai verkkosivustojen välillä.';
	@override String noAds({required Object appLabel}) => 'Ei mainoksia suunnittelusta lähtien\n${appLabel} on rakennettu toimimaan ilman mainoksia tai datavetoista kaupallistamista.';
	@override String get noDataSelling => 'Ei tietojen myyntiä\nTerveysdataasi ei koskaan myydä tai jaeta kolmansille osapuolille.';
	@override String get localStorage => 'Lokaali tallennus ensin\nTietosi pysyvät laitteellasi.';
	@override String get privacyPolicy => 'Tietosuojakäytäntö';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperFi implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rakennettu yksinkehittäjän toimesta';
	@override String description({required Object appLabel}) => '${appLabel} on yhden kehittäjän rakentama ja ylläpitämä, keskittyen rauhalliseen, yksityisyyttä kunnioittavaan terveysteknologiaan.\n\nPalaute luetaan henkilökohtaisesti ja se ohjaa sovelluksen suuntaa.';
	@override String get website => 'Verkkosivusto';
	@override String get email => 'Sähköposti';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackFi implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Pidätkö ${appLabel}-sovelluksesta?';
	@override String description({required Object appLabel}) => 'Palautteesi auttaa tekemään ${appLabel}-sovelluksesta paremman kaikille.';
	@override String get rateApp => 'Arvostele Play Storessa';
	@override String get sendFeedback => 'Lähetä palautetta';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeFi implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Annoskoko';
	@override String get description => 'Arvioiden tarkkuus riippuu vahvasti annoskoon oikeasta arviostasi.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsFi implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Valmistustavat';
	@override String description({required Object appLabel}) => 'Ruoanvalmistus voi muuttaa ravintosisältöä merkittävästi. ${appLabel}:n arviot eivät aina huomioi kaikkia vaihteluita.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsFi implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ainesosat';
	@override String get description => 'Monimutkaiset ruoat, joissa on paljon piiloainesosia, voivat johtaa epätarkempiin arvioihin.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsFi implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tietokannan rajoitukset';
	@override String description({required Object appLabel}) => '${appLabel}:n ruokakanta on laaja, mutta ei välttämättä sisällä jokaista ruoka-ainetta tai variaatiota.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyFi implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorilukemien tarkkuus';
	@override String get description => 'Tämä arvio on yhtä tarkka kuin kirjaamasi kalorien saanti ja kulutus. Epätarkat merkinnät tuottavat epätarkan arvion.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsFi implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiset tekijät';
	@override String description({required Object appLabel}) => 'Todelliseen painonmuutokseen vaikuttavat aineenvaihdunta, hormonit, uni, stressi, nesteytys ja muut yksilölliset tekijät, joita ${appLabel} ei voi mitata.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightFi implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nestetasapaino ja vaihtelut';
	@override String get description => 'Päivittäinen paino voi vaihdella merkittävästi veden kertymisen, ruoansulatuksen ja ajoituksen vuoksi. Arvio ei huomioi näitä vaihteluita.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceFi implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ammattilaisen ohjeistus';
	@override String get description => 'Älä tee tämän arvion perusteella lääketieteellisiä päätöksiä. Käänny aina terveydenhuollon ammattilaisen tai ravitsemusterapeutin puoleen.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrFi implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Perusaineenvaihdunta (BMR) on kalorimäärä, jonka kehosi kuluttaa levossa ylläpitääkseen perustoimintoja, kuten hengitystä ja verenkiertoa. BMR riippuu iästäsi, sukupuolestasi, pituudestasi ja painostasi. Korkeampi BMR tarkoittaa, että kehosi kuluttaa levossa luonnostaan enemmän kaloreita, usein suuremman lihasmassan, nuoremman iän tai miehen sukupuolen vuoksi. Matalampi BMR viittaa tyypillisesti pienempään lihasmassaan, vanhempaan ikään tai naisen sukupuoleen.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeFi implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Päivittäinen kokonaisenergiankulutus (TDEE) on kokonaiskalorimäärä, jonka kulutat päivässä, mukaan lukien BMR sekä fyysisen aktiivisuuden ja päivittäisen liikkumisen kulutus. TDEE riippuu BMR-arvostasi ja aktiivisuustasostasi. Korkeampi TDEE tarkoittaa, että kulutat kokonaisuudessaan enemmän kaloreita, yleensä koska olet aktiivisempi tai BMR-arvosi on korkeampi. Matalampi TDEE viittaa vähäisempään päivittäiseen aktiivisuuteen tai alempaan BMR:ään.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalFi implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päivittäinen tavoite';
	@override String get description => 'Päivittäinen tavoite on suositeltu päivittäinen kalorinsaanti TDEE-arvosi ja painotavoitteesi perusteella. Painonpudotuksessa syöt vähemmän kaloreita kuin TDEE-arvosi. Painon ylläpidossa kalorien saanti vastaa TDEE-arvoasi. Painonnousussa syöt enemmän kaloreita kuin TDEE-arvosi. Tämä auttaa saavuttamaan toivotun painonmuutoksen terveellisessä tahdissa.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedFi implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Miten arvio lasketaan';
	@override String get description => 'Laskemme TDEE-arvosi (profiilisi perusteella) ja kerromme sen kuluneen päivän murto-osalla (tunnit + minuutit) / 24 arvioidaksemme tähän mennessä kulutetut kalorit.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFi implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ammattilaisen ohjeistus';
	@override String get description => 'Älä käytä tätä arviota lääketieteellisten päätösten tekemiseen. Käänny aina terveydenhuollon ammattilaisen tai laillistetun ravitsemusterapeutin puoleen saadaksesi yksilöllisiä neuvoja painonhallintaan.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFi implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lue poltetut kalorit yhteensä';
	@override String get description => 'Mahdollistaa sovelluksen lukea Health Connectista kokonaistason poltetut kalorit.';
	@override String get usage => 'Tätä lupaa käytetään näyttämään päivittäinen kalorinkulutuksesi sovelluksessa, jotta ymmärrät kokonaisenergiankulutuksesi päivän aikana.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadFi implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lue ravitsemustiedot';
	@override String get description => 'Mahdollistaa sovelluksen lukea ravitsemustietoja Health Connectista.';
	@override String get usage => 'Tämän luvan avulla sovellus voi lukea ravintotietoja, joita muut Health Connectiin yhdistetyt sovellukset ovat kirjanneet, tarjoten kattavan näkymän ravitsemukseesi.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteFi implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteFi._(this._root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kirjoita ravitsemustietoja';
	@override String get description => 'Mahdollistaa sovelluksen kirjoittaa ravitsemustietoja Health Connectiin.';
	@override String get usage => 'Tämän luvan avulla sovellus synkkaa kirjatut ateriasi Health Connectiin, jolloin ravintotietosi ovat käytettävissä muissa käyttämissäsi terveys- ja kuntosovelluksissa.';
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
			'errors.rateLimitExceeded' => 'Teit liian monta pyyntöä. Odota hetki ja yritä uudelleen.',
			'errors.networkError' => 'Verkkovirhe. Tarkista internet-yhteytesi.',
			'errors.unknownError' => 'Jotain meni pieleen. Yritä myöhemmin uudelleen.',
			'errors.loadingProfileData' => 'Virhe profiilitietojen latauksessa',
			'errors.somethingWentWrong' => 'Jotain meni pieleen.',
			'errors.retry' => 'Yritä uudelleen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Tervetuloa sovellukseen ${appLabel}',
			'onboarding.subtitle' => 'Henkilökohtainen ravitsemuskumppanisi tekoälyn voimalla',
			'onboarding.getStarted' => 'Aloita',
			'onboarding.features.foodRecognition.title' => 'Älykäs ruoantunnistus',
			'onboarding.features.foodRecognition.description' => 'Ota kuva ja anna tekoälyn tunnistaa ateriasi',
			'onboarding.features.aiAnalysis.title' => 'Tekoälyanalyysi',
			'onboarding.features.aiAnalysis.description' => 'Saat heti ravintoarvot kuvauksesi perusteella',
			'onboarding.features.healthIntegration.title' => 'Health Connect -integraatio',
			'onboarding.features.healthIntegration.description' => 'Yhdistä Health Connectiin parempia oivalluksia varten',
			'onboarding.gender.title' => 'Mikä on sukupuolesi?',
			'onboarding.gender.description' => 'Sukupuoli auttaa meitä laskemaan perusaineenvaihduntasi (BMR) tarkemmin.',
			'onboarding.gender.next' => 'Seuraava',
			'onboarding.height.title' => 'Kuinka pitkä olet?',
			'onboarding.height.description' => 'Pituutesi auttaa meitä laskemaan BMI:si ja energiatarpeesi tarkasti.',
			'onboarding.height.metric' => 'Metrinen',
			'onboarding.height.imperial' => 'Imperiaalinen',
			'onboarding.height.next' => 'Seuraava',
			'onboarding.weight.currentTitle' => 'Mikä on nykyinen painosi?',
			'onboarding.weight.currentDescription' => 'Nykyinen painosi on oleellinen päivittäisten tavoitteidesi personoinnissa.',
			'onboarding.weight.targetTitle' => 'Mikä on tavoitepainosi?',
			'onboarding.weight.targetDescription' => 'Tavoitepainon asettaminen auttaa määrittämään pitkän aikavälin suunnitelmasi.',
			'onboarding.weight.metric' => 'Metrinen',
			'onboarding.weight.imperial' => 'Imperiaalinen',
			'onboarding.weight.next' => 'Seuraava',
			'onboarding.age.title' => 'Milloin on syntymäpäiväsi?',
			'onboarding.age.description' => 'Ikäsi auttaa meitä arvioimaan kaloritarpeesi tarkasti.',
			'onboarding.age.next' => 'Seuraava',
			'onboarding.bmiScale.underweight' => 'Alipaino',
			'onboarding.bmiScale.healthy' => 'Terve',
			'onboarding.bmiScale.overweight' => 'Ylipaino',
			'onboarding.bmiScale.obese' => 'Lihavuus',
			'onboarding.bmiScale.categories.underweight' => 'Alipaino',
			'onboarding.bmiScale.categories.healthyWeight' => 'Normaalipaino',
			'onboarding.bmiScale.categories.overweight' => 'Ylipaino',
			'onboarding.bmiScale.categories.obese' => 'Lihavuus',
			'onboarding.bmiScale.messages.underweight' => 'Autamme sinua rakentamaan terveellisen suunnitelman tasapainoiseen painoon ravintorikkaiden aterioiden avulla.',
			'onboarding.bmiScale.messages.healthy' => 'Hienoa! Olet terveellisellä alueella. Autamme sinua ylläpitämään vireyttäsi ja energiatasojasi.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} tekee matkasta helpomman tekoälypohjaisella seurannalla, jotta pääset kohti tavoitettasi mukavasti.',
			'onboarding.bmiScale.messages.obese' => 'Olemme tukenasi henkilökohtaisella ohjauksella ja kestävillä strategioilla terveytesi tavoitteisiin.',
			'onboarding.weightGoal.title' => 'Mikä on tavoitteesi?',
			'onboarding.weightGoal.description' => 'Valitse tavoite, joka kuvaa parhaiten sitä, mitä haluat saavuttaa',
			'onboarding.activityLevel.title' => 'Kuinka aktiivinen olet?',
			'onboarding.activityLevel.description' => 'Tämä auttaa meitä laskemaan päivittäisen kaloritarpeesi tarkemmin',
			'onboarding.healthConnect.title' => 'Yhdistä Health Connectiin',
			'onboarding.healthConnect.description' => 'Synkkaa terveystietosi parempia oivalluksia ja automaattista kaloriseurantaa varten',
			'onboarding.healthConnect.automaticTracking.title' => 'Automaattinen kaloriseuranta',
			'onboarding.healthConnect.automaticTracking.description' => 'Seuraa poltettuja kaloreita kuntosovelluksistasi',
			'onboarding.healthConnect.progressInsights.title' => 'Edistymisen oivallukset',
			'onboarding.healthConnect.progressInsights.description' => 'Saat yksityiskohtaisia näkymiä terveystrendeihin',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Saumaton integrointi',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synkkaa tietoja suosikkiterveyssovelluksistasi',
			'onboarding.healthConnect.connected' => 'Health Connect yhdistetty',
			'onboarding.healthConnect.notConnected' => 'Health Connect ei yhdistetty',
			'onboarding.healthConnect.setup' => 'Määritä Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Ohita toistaiseksi',
			'onboarding.healthConnect.statusConnected' => 'Health Connect on yhdistetty.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect yhdistettiin onnistuneesti!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Lupa evätty. Ota Health Connect -lupia käyttöön puhelimesi asetuksista sovellukselle ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Virhe Health Connectin määrityksessä: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Et ole yksin',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Tutkimusten mukaan johdonmukainen seuranta on pitkäaikaisen menestyksen ykkösennustaja.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age}-vuotiaalle ${gender}, joka haluaa ${goal}, johdonmukainen seuranta on tärkein menestyksen ennustaja.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} tekee tästä 10x helpompaa kuin manuaalisesti.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Valmis aloittamaan?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Ota kuvat aterioistasi saadaksesi välittömän analyysin',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Kirjaa säännöllisesti nähdäksesi merkityksellistä edistystä',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Seuraa edistymistäsi päivittäin pysyäksesi motivoituneena',
			'onboarding.reinforcement.trackingSuccess.button' => 'Aloitetaan',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'henkilö',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'terveempi sinä',
			'onboarding.reinforcement.healthProfile.title' => 'Terveysprofiilisi',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Mittariesi perusteella BMI:si on ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Viimeistellään profiilisi, jotta voimme räätälöidä kokemuksesi.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'nostaa',
			'onboarding.reinforcement.healthProfile.goalLose' => 'laskea',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Päästäksesi tavoitteeseesi sinun tulisi ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Olet tavoitepainossasi! Autamme sinua ylläpitämään sen.',
			'onboarding.reinforcement.healthProfile.button' => 'Aloitetaan',
			'onboarding.reinforcement.goalLifestyle.title' => 'Loistava alku!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Olet ottanut ensimmäisen askeleen kohti ${goalText}. Koska olet ${activityText}, ${appLabel} säätää tavoitteitasi elämäntapaasi sopiviksi.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Henkilökohtaiset kalorisuositukset',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Tekoälypohjainen aterioiden tunnistus',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Yksityiskohtaiset makroravinne-erittelyt',
			'onboarding.reinforcement.goalLifestyle.button' => 'Aloitetaan',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'tavoitteitasi',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiivinen',
			'tabs.dashboard' => 'Etusivu',
			'tabs.history' => 'Historia',
			'home.aiSummary.title' => 'Tekoälyn yhteenveto',
			'home.aiSummary.logMore' => 'Kirjaa lisää aterioita seuraavien päivien aikana saadaksesi henkilökohtaiset tekoälyoivallukset.',
			'home.aiSummary.loading' => 'Ladataan yhteenvetoasi...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} ateriaa kirjattu',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Tasapainopiste ${score}',
			'home.aiSummary.topFoods' => 'Suosituimmat ruoat',
			'home.aiSummary.trendUp' => 'Kalorit nousussa',
			'home.aiSummary.trendDown' => 'Kalorit laskussa',
			'home.aiSummary.trendSteady' => 'Kalorit tasaisena',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Päivitetty ${time}',
			'home.dailyGoal.title' => 'Aseta päivätavoitteesi',
			'home.dailyGoal.titleSet' => 'Päivätavoitteesi',
			'home.dailyGoal.description' => 'Valmis aloittamaan hyvinvointimatkasi? Aseta päivittäinen kaloritaso alla käynnistääksesi edistymisen.',
			'home.dailyGoal.descriptionSet' => 'Suuntasi on selvä! Tämä on päivittäinen kaloritasosi ohjenuoraksi.',
			'home.dailyGoal.yourGoal' => 'Tavoitteesi',
			'home.dailyGoal.goal' => 'Tavoite',
			'home.dailyGoal.dailyCalories' => 'Päivittäiset kalorit (kcal)',
			'home.dailyGoal.setGoal' => 'Aseta tavoite',
			'home.dailyGoal.intake' => 'Saanti',
			'home.dailyGoal.burned' => 'Kulutus',
			'home.dailyGoal.weightImpact' => 'Vaikutus painoon',
			'home.dailyGoal.estLoss' => 'Arv. lasku',
			'home.dailyGoal.estGain' => 'Arv. nousu',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Päivän yhteenveto',
			'home.dailySummary.calories' => 'Kalorit',
			'home.dailySummary.carbs' => 'Hiilihydraatit',
			'home.dailySummary.protein' => 'Proteiini',
			'home.dailySummary.fat' => 'Rasva',
			'home.dailySummary.fiber' => 'Kuitu',
			'home.dailySummary.grams' => 'grammaa',
			'home.dailySummary.chartAccessibilityLabel' => 'Makrojen kaavio',
			'home.intakeProgress.title' => 'Tämän päivän makrojakauma',
			'home.intakeProgress.target' => 'Tavoite',
			'home.intakeProgress.current' => 'Nykyinen',
			'home.intakeHistory.title' => '7 päivän makrohistoria',
			'home.intakeHistory.trendTitle' => 'Päivän trendi',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Huippu: klo ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Ei vielä historiaa',
			'home.intakeHistory.startLogging' => 'Aloita aterioiden kirjaaminen nähdäksesi\n7 päivän makrotrendit täällä',
			'home.mealLog.title' => 'Kirjatut ateriat',
			'home.mealLog.emptyMessage' => 'Nappaa kuva viimeisimmästä ateriastasi kirjautuaksesi tähän.',
			'home.mealLog.noMealsToday' => 'Tälle päivälle ei kirjattuja aterioita',
			'home.mealLog.seeAllMeals' => 'Näytä kaikki ateriat',
			'home.mealDescription.title' => 'Pikalisäys tekoälyllä',
			'home.mealDescription.description' => 'Kuvaile ateriasi ja anna tekoälyn hoitaa loput.',
			'home.mealDescription.hint' => 'esim. Aamiaiseksi söin ison kulhon kaurapuuroa, banaanin siivuina ja annoksen heraa ...',
			'home.mealDescription.analyzeMeal' => 'Analysoi ateria',
			'home.favoriteMeals.title' => 'Suosikkiateriat',
			'home.favoriteMeals.description' => 'Lisää nopeasti jokin suosikkiaterioistasi.',
			'home.favoriteMeals.noFavorites' => 'Ei vielä suosikkiaterioita.',
			'home.favoriteMeals.addFavoriteHint' => 'Merkitse ateria suosikiksi klikkaamalla tähteä.',
			'home.favoriteMeals.seeAll' => 'Näytä kaikki',
			'home.favoriteMeals.add' => 'Lisää',
			'home.mealSnap.title' => 'Kuvaa ja seuraa ateriasi',
			'home.mealSnap.description' => 'Käytä kameraa ottaaksesi kuvan ruoastasi tekoälyanalyysiä varten.',
			'home.mealSnap.openCamera' => 'Avaa kamera',
			'home.mealSnap.gallery' => 'Galleria',
			'home.mealSnap.compressingPhoto' => 'Optimoidaan kuvaa…',
			'home.mealSnap.uploadingPhoto' => 'Lähetetään kuvaa…',
			'home.connectHealth.title' => 'Synkkaa Health Connectiin',
			'home.connectHealth.description' => 'Synkkaa ravitsemustietosi Health Connectin kanssa',
			'home.connectHealth.install' => 'Asenna',
			'home.connectHealth.connect' => 'Yhdistä',
			'history.noMeals' => 'Ei yhtään ateriaa',
			'history.emptyMessage' => 'Nappaa kuva viimeisimmästä ateriastasi kirjautuaksesi tähän.',
			'history.today' => 'Tänään',
			'history.yesterday' => 'Eilen',
			'meal.ohNo' => 'Voi ei!',
			'meal.delete' => 'Poista',
			'meal.editMeal' => 'Muokkaa ateriaa',
			'meal.addMeal' => 'Lisää ateria',
			'meal.saveMeal' => 'Tallenna ateria',
			'meal.save' => 'Tallenna',
			'meal.mealName' => 'Aterian nimi',
			'meal.mealNameHint' => 'esim. Munakokkeli ja paahtoleipä',
			'meal.mealQuantity' => 'Aterian määrä',
			'meal.mealQuantityHint' => 'esim. 1 kulho, 2 viipaletta',
			'meal.timeOfMeal' => 'Aterian ajankohta',
			'meal.timeOfMealHint' => 'Valitse, milloin söit aterian',
			'meal.mealType' => 'Ateriatyyppi',
			'meal.nutrition.calories' => 'Kalorit',
			'meal.nutrition.carbs' => 'Hiilihydraatit (g)',
			'meal.nutrition.protein' => 'Proteiini (g)',
			'meal.nutrition.fat' => 'Rasva (g)',
			'meal.nutrition.fiber' => 'Kuitu (g)',
			'meal.deleteConfirmation.title' => 'Poista ateria',
			'meal.deleteConfirmation.message' => 'Haluatko varmasti poistaa tämän ateriamerkinnän?',
			'meal.deleteConfirmation.cancel' => 'Peruuta',
			'meal.deleteConfirmation.delete' => 'Poista',
			'meal.addedToLog' => 'Ateria lisättiin lokiin!',
			'meal.couldNotAdd' => ({required Object error}) => 'Ateriaa ei voitu lisätä: ${error}',
			'meal.savedSuccessfully' => 'Ateria lisätty onnistuneesti!',
			'meal.updatedSuccessfully' => 'Ateria päivitetty onnistuneesti!',
			'meal.errorSaving' => ({required Object error}) => 'Virhe tallennuksessa: ${error}',
			'meal.removedFromFavorites' => 'Poistettu suosikeista!',
			'meal.savedAsFavorite' => 'Ateria tallennettu suosikiksi!',
			'meal.unfavorite' => 'Poista suosikeista',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Suosikin päivitys epäonnistui: ${error}',
			'meal.feedbackThanks' => 'Kiitos palautteesta!',
			'meal.reanalysisUpdated' => 'Päivitetty ateria-analyysi palautteesi perusteella.',
			'meal.failedToProcess' => ({required Object error}) => 'Käsittely epäonnistui: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Kuvan käsittely epäonnistui: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Virhe kuvan pakkaamisessa: ${error}',
			'meal.failedToSave' => 'Tietojen tallennus epäonnistui. Yritä uudelleen.',
			'meal.skip' => 'Ohita',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Kysymys ${current}/${total}',
			'meal.variation.noVariationsAvailable' => 'Ei muunnelmia saatavilla',
			'meal.analysis.title' => 'Tekoälyn ateria-analyysi',
			'meal.analysis.reassurance' => 'Tämä kestää yleensä vain muutaman sekunnin.',
			'meal.analysis.stepStarted' => 'Aloitetaan…',
			'meal.analysis.stepDecomposition' => 'Ymmärretään ateriasi…',
			'meal.analysis.stepIngredients' => 'Yhdistetään ainesosat ravintotietoihin…',
			'meal.analysis.stepUncertainty' => 'Tarkistetaan varmuutta…',
			'meal.analysis.stepMealTypeQuestion' => 'Melkein valmista…',
			'meal.analysis.stepResult' => 'Viimeistellään tulosta…',
			'meal.analysis.stepError' => 'Jotain meni pieleen',
			'meal.analysis.stepDefault' => 'Analysoidaan ateriaasi…',
			'meal.analysis.progressUnderstand' => 'Ymmärrys',
			'meal.analysis.progressMatch' => 'Vastaavuus',
			'meal.analysis.progressCheck' => 'Tarkistus',
			'meal.analysis.progressFinish' => 'Viimeistely',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ainesosaa havaittu',
			'meal.analysis.ingredientsPending' => 'Skannataan ainesosia…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'What looks wrong?',
			'meal.feedback.subtitle' => 'Help us improve the analysis by selecting one or more issues.',
			'meal.feedback.tellUsMore' => 'Tell us more',
			'meal.feedback.describeIncorrect' => 'Describe what was incorrect',
			'meal.feedback.submit' => 'Submit',
			'meal.feedback.issueFoodIdentification' => 'Food identification',
			'meal.feedback.issuePortionSize' => 'Portion size',
			'meal.feedback.issueCalorieDistribution' => 'Calorie distribution',
			'meal.feedback.issueMacrosWrong' => 'Macros are wrong',
			'meal.feedback.issueMissingItems' => 'Missing items',
			'meal.feedback.issueExtraItems' => 'Extra items',
			'meal.feedback.issueOther' => 'Other',
			'favorites.title' => 'Suosikit',
			'favorites.empty' => 'Ei vielä suosikkiaterioita.',
			'favorites.searchPlaceholder' => 'Hae suosikkiaterioita',
			'favorites.searchEmptyTitle' => 'Hakusi ei tuottanut suosikkeja',
			'favorites.searchEmptySubtitle' => 'Kokeile toista aterian nimeä, määrää tai ateriatyyppiä.',
			'favorites.sortLabel' => 'Järjestä suosikit',
			'favorites.undo' => 'Kumoa',
			'favorites.removed' => ({required Object name}) => 'Poistettiin ${name} suosikeista',
			'favorites.sortOptions.recent' => 'Uusimmat',
			'favorites.sortOptions.calories' => 'Kalorit',
			'favorites.sortOptions.alphabetical' => 'A–Ö',
			'profile.title' => 'Profiili',
			'profile.noProfileData' => 'Profiilitietoja ei löytynyt',
			'profile.yourProfile' => 'Profiilisi',
			'profile.viewAndManage' => 'Näytä ja hallitse terveystietojasi',
			'profile.sections.profile' => 'PROFIILI',
			'profile.sections.basicInformation' => 'PERUSTIEDOT',
			'profile.sections.goalsAndActivity' => 'TAVOITTEET JA AKTIIVISUUS',
			'profile.sections.calculatedValues' => 'LASKETUT ARVOT',
			'profile.gender' => 'Sukupuoli',
			'profile.height' => 'Pituus',
			'profile.weight' => 'Paino',
			'profile.age' => 'Ikä',
			'profile.weightGoal' => 'Painotavoite',
			'profile.targetWeight' => 'Tavoitepaino',
			'profile.activityLevel' => 'Aktiivisuustaso',
			'profile.healthMetrics' => 'Terveysmittarit',
			'profile.notSet' => 'Ei asetettu',
			'profile.years' => 'vuotta',
			'profile.updatedSuccessfully' => 'Profiili päivitetty onnistuneesti!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Päivätavoite',
			'profile.calculatedValues.calPerDay' => 'kcal/vrk',
			'profile.calculatedValues.notAvailable' => 'Ei saatavilla',
			'healthScore.title' => 'Terveysarvio',
			'healthScore.whyThisScore' => 'Miksi tämä arvosana?',
			'healthScore.note' => 'Tämä pisteytys on tekoälyn arvio tunnistetuista ainesosista ja ravintotiheydestä. Käänny aina ammattilaisen puoleen henkilökohtaista ravinto-ohjausta varten.',
			'healthScore.unhealthy' => 'Epäterveellinen',
			'healthScore.healthy' => 'Terveellinen',
			'healthScore.neutral' => 'Neutraali',
			'editProfile.title' => 'Muokkaa profiilia',
			'editProfile.sections.personalInformation' => 'HENKILÖTIEDOT',
			'editProfile.sections.physicalMeasurements' => 'FYYSISET MITAT',
			'editProfile.sections.goalsAndActivity' => 'TAVOITTEET JA AKTIIVISUUS',
			'editProfile.gender' => 'Sukupuoli',
			'editProfile.dateOfBirth' => 'Syntymäaika',
			'editProfile.height' => 'Pituus',
			'editProfile.weight' => 'Paino',
			'editProfile.weightGoal' => 'Painotavoite',
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
			'editProfile.weightGoals.loseWeight.name' => 'Laihdu',
			'editProfile.weightGoals.loseWeight.description' => 'Luo kalorivaje laihtuaksesi',
			'editProfile.weightGoals.maintainWeight.name' => 'Ylläpidä paino',
			'editProfile.weightGoals.maintainWeight.description' => 'Ylläpidä nykyinen painosi',
			'editProfile.weightGoals.gainWeight.name' => 'Nosta painoa',
			'editProfile.weightGoals.gainWeight.description' => 'Luo kaloriylijäämä painon nostamiseksi',
			'editProfile.activityLevels.sedentary.name' => 'Vähäinen aktiivisuus',
			'editProfile.activityLevels.sedentary.description' => 'Vähän tai ei lainkaan liikuntaa',
			'editProfile.activityLevels.lightlyActive.name' => 'Kevyen aktiivinen',
			'editProfile.activityLevels.lightlyActive.description' => 'Kevyttä liikuntaa 1–3 päivää/viikko',
			'editProfile.activityLevels.moderatelyActive.name' => 'Kohtalaisen aktiivinen',
			'editProfile.activityLevels.moderatelyActive.description' => 'Kohtalaista liikuntaa 3–5 päivää/viikko',
			'editProfile.activityLevels.veryActive.name' => 'Erittäin aktiivinen',
			'editProfile.activityLevels.veryActive.description' => 'Raskasta liikuntaa 6–7 päivää/viikko',
			'editProfile.activityLevels.extremelyActive.name' => 'Äärimmäisen aktiivinen',
			'editProfile.activityLevels.extremelyActive.description' => 'Erittäin raskasta liikuntaa, fyysinen työ',
			'settings.title' => 'Asetukset',
			'settings.sections.profile' => 'PROFIILI',
			'settings.sections.localization' => 'KIELI JA ALUE',
			'settings.sections.notifications' => 'ILMOITUKSET',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'TUKI JA OIKEUDELLISET',
			'settings.sections.about' => 'TIETOJA',
			'settings.sections.dangerZone' => 'VAARA-ALUE',
			'settings.sections.developer' => 'KEHITTÄJÄ',
			'settings.editProfile.title' => 'Muokkaa profiilia',
			'settings.editProfile.subtitle' => 'Päivitä henkilötietosi',
			'settings.language.title' => 'Kieli',
			'settings.language.subtitle' => 'Valitse ensisijainen kielesi',
			'settings.language.searchHint' => 'Hae kieliä...',
			'settings.language.noResults' => 'Ei tuloksia',
			'settings.heightUnit.title' => 'Pituuden yksikkö',
			'settings.weightUnit.title' => 'Painon yksikkö',
			'settings.mealReminders.title' => 'Ateriamuistutukset',
			'settings.mealReminders.subtitle' => 'Pysy raiteilla ajantasaisilla muistutuksilla',
			'settings.theme.title' => 'Teema',
			'settings.theme.light' => 'Vaalea',
			'settings.theme.dark' => 'Tumma',
			'settings.theme.system' => 'Järjestelmä',
			'settings.sendFeedback.title' => 'Lähetä palautetta',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Auta meitä parantamaan ${appLabel}-sovellusta',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel}-sovelluksen palaute',
			'settings.sendFeedback.emailBodyPrefix' => 'Anna palautteesi alle:',
			'settings.sendFeedback.appVersion' => 'Sovellusversio',
			'settings.sendFeedback.device' => 'Laite',
			'settings.sendFeedback.osVersion' => 'Käyttöjärjestelmäversio',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Vie ateriahistoria',
			'settings.exportMealHistory.subtitle' => 'Jaa CSV kirjatuista aterioistasi',
			'settings.exportMealHistory.shareText' => 'Your Calorify meal history export',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Ateriahistorian vienti epäonnistui: ${error}',
			'settings.clearAllData.title' => 'Tyhjennä kaikki tiedot',
			'settings.clearAllData.subtitle' => 'Poista kaikki tietosi peruuttamattomasti',
			'settings.clearAllData.confirmationTitle' => 'Tyhjennetäänkö kaikki tiedot?',
			'settings.clearAllData.confirmationMessage' => 'Tätä toimintoa ei voi perua. Kaikki kirjatut ateriasi, suosikit ja profiiliasetukset poistetaan pysyvästi.',
			'settings.clearAllData.cancel' => 'Peruuta',
			'settings.clearAllData.clearEverything' => 'Tyhjennä kaikki',
			'settings.debugOptions.title' => 'Vianjäljitysasetukset',
			'settings.developerModeEnabled' => 'Kehittäjätila käytössä!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Näytä ja hallitse käyttöoikeuksia',
			'settings.healthConnect.unavailable.title' => 'Health Connect ei ole saatavilla',
			'settings.healthConnect.unavailable.description' => 'Health Connect ei ole saatavilla tällä laitteella. Asenna Health Connect Play Storesta (Android 9+) tai päivitä Android 14+:aan.',
			'settings.healthConnect.permissions.title' => 'Käyttöluvat',
			'settings.healthConnect.permissions.description' => 'Seuraavia lupia pyydetään Health Connect -integraation tarjoamiseksi:',
			'settings.healthConnect.permissions.granted' => 'Myönnetty',
			'settings.healthConnect.permissions.notGranted' => 'Ei myönnetty',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Lue poltetut kalorit yhteensä',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Mahdollistaa sovelluksen lukea Health Connectista kokonaistason poltetut kalorit.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Tätä lupaa käytetään näyttämään päivittäinen kalorinkulutuksesi sovelluksessa, jotta ymmärrät kokonaisenergiankulutuksesi päivän aikana.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Lue ravitsemustiedot',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Mahdollistaa sovelluksen lukea ravitsemustietoja Health Connectista.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Tämän luvan avulla sovellus voi lukea ravintotietoja, joita muut Health Connectiin yhdistetyt sovellukset ovat kirjanneet, tarjoten kattavan näkymän ravitsemukseesi.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Kirjoita ravitsemustietoja',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Mahdollistaa sovelluksen kirjoittaa ravitsemustietoja Health Connectiin.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Tämän luvan avulla sovellus synkkaa kirjatut ateriasi Health Connectiin, jolloin ravintotietosi ovat käytettävissä muissa käyttämissäsi terveys- ja kuntosovelluksissa.',
			'settings.healthConnect.managePermissions' => 'Hallitse käyttöoikeuksia',
			'settings.healthConnect.openSettings' => 'Avaa Health Connect -asetukset',
			'settings.healthConnect.requestPermissions' => 'Pyydä käyttöoikeuksia',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Käyttöoikeuspyyntö peruttiin tai epäonnistui. Yritä uudelleen tai myönnä oikeudet manuaalisesti Health Connect -asetuksissa.',
			'settings.healthConnect.permissionRequestFailed' => 'Käyttöoikeuksien pyytäminen ei onnistu. Yritä uudelleen tai myönnä oikeudet manuaalisesti Health Connect -asetuksissa.',
			'settings.healthConnect.requestingPermissions' => 'Pyydetään...',
			'settings.about.title' => 'Tietoja',
			'settings.about.tagline' => 'Nopea, ilmainen ja yksityisyyttä kunnioittava kalorivalmennus',
			'settings.about.ourStory.title' => 'Tarina',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} syntyi yksinkertaisesta turhautumisesta: useimmat kaloriseurantasovellukset ovat joko liian monimutkaisia, vaativat jatkuvaa manuaalista syöttöä, perivät korkeat tilausmaksut tai tinkivät yksityisyydestä.\n\nYksin kehittäjänä halusin rakentaa jotain yksinkertaisempaa ja reilumpaa — sovelluksen, joka hyödyntää tekoälyä vaivannäön vähentämiseksi, pysyy nopeana ja ilmaisena sekä kohtelee terveystietojasi kunnioittavasti.\n\n${appLabel} on sovellus, jonka olisin itse halunnut: ei tilejä, ei seurantaa, ei mainoksia — vain selkeitä, käytännöllisiä oivalluksia ja terveytesi tukemista.',
			'settings.about.privacy.title' => 'Yksityisyytesi on tärkeä',
			'settings.about.privacy.description' => 'Yksityisyys ei ole jälkiajatus — se on suunnitteluperiaate. Tässä, mitä se tarkoittaa käytännössä:',
			'settings.about.privacy.noAccounts' => 'Ei tilejä tarpeen\nKäytä sovellusta heti. Ei rekisteröitymisiä, ei henkilöllisyyksiä.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Ei käyttäytymisen seurantaa\n${appLabel} ei seuraa toimintaasi, laadi käyttötapaprofiileja tai seuraa sinua sovellusten tai verkkosivustojen välillä.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Ei mainoksia suunnittelusta lähtien\n${appLabel} on rakennettu toimimaan ilman mainoksia tai datavetoista kaupallistamista.',
			'settings.about.privacy.noDataSelling' => 'Ei tietojen myyntiä\nTerveysdataasi ei koskaan myydä tai jaeta kolmansille osapuolille.',
			'settings.about.privacy.localStorage' => 'Lokaali tallennus ensin\nTietosi pysyvät laitteellasi.',
			'settings.about.privacy.privacyPolicy' => 'Tietosuojakäytäntö',
			'settings.about.developer.title' => 'Rakennettu yksinkehittäjän toimesta',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} on yhden kehittäjän rakentama ja ylläpitämä, keskittyen rauhalliseen, yksityisyyttä kunnioittavaan terveysteknologiaan.\n\nPalaute luetaan henkilökohtaisesti ja se ohjaa sovelluksen suuntaa.',
			'settings.about.developer.website' => 'Verkkosivusto',
			'settings.about.developer.email' => 'Sähköposti',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Pidätkö ${appLabel}-sovelluksesta?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Palautteesi auttaa tekemään ${appLabel}-sovelluksesta paremman kaikille.',
			'settings.about.feedback.rateApp' => 'Arvostele Play Storessa',
			'settings.about.feedback.sendFeedback' => 'Lähetä palautetta',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Koontiversio ${buildNumber}',
			'reminders.title' => 'Pysy raiteilla muistutusten avulla',
			'reminders.description' => 'Saat lempeitä muistutuksia aterioiden kirjaamiseen ja pysyt johdonmukaisena ravintotavoitteidesi kanssa',
			'reminders.notificationsEnabled' => 'Ilmoitukset käytössä',
			'reminders.notificationsDisabled' => 'Ilmoitukset pois käytöstä',
			'reminders.enabledSubtitle' => 'Saat ateriamuistutuksia',
			'reminders.disabledSubtitle' => 'Ota ilmoitukset käyttöön saadaksesi ateriamuistutuksia',
			'reminders.mealReminders' => 'Ateriamuistutukset',
			'reminders.breakfast' => 'Aamiainen',
			'reminders.lunch' => 'Lounas',
			'reminders.dinner' => 'Päivällinen',
			'reminders.snack' => 'Välipala',
			'reminders.unknown' => 'Tuntematon',
			'reminders.change' => 'Muuta',
			'reminders.enableNotifications' => 'Ota ilmoitukset käyttöön',
			'reminders.skipForNow' => 'Ohita toistaiseksi',
			'reminders.saveChanges' => 'Tallenna muutokset',
			'reminders.enabledSuccessfully' => 'Ilmoitukset otettiin käyttöön onnistuneesti!',
			'reminders.permissionDenied' => 'Ilmoituslupa evätty',
			'reminders.errorEnabling' => ({required Object error}) => 'Virhe ilmoitusten käyttöönotossa: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Virhe asetusten viimeistelyssä: ${error}',
			'notifications.breakfast.title' => 'Aamiaisaika! 🍳',
			'notifications.breakfast.body' => 'Muista kirjata aamiaisesi',
			'notifications.lunch.title' => 'Lounasaika! 🥗',
			'notifications.lunch.body' => 'On aika kirjata lounaasi',
			'notifications.dinner.title' => 'Päivällisaika! 🍽️',
			'notifications.dinner.body' => 'Muista kirjata päivällisesi',
			'notifications.snack.title' => 'Välipala-aika! 🍎',
			'notifications.snack.body' => 'Aika terveelliselle välipalalle',
			'notifications.test.title' => 'Testi-ilmoitus',
			'login.title' => 'Kirjaudu',
			'login.signInWithGoogle' => 'Kirjaudu Googlella',
			'login.signInFailed' => 'Google-kirjautuminen epäonnistui tai peruttiin.',
			'disclaimer.pleaseNote' => 'Huomio',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} tarjoaa arvioidut ravintoarvot. Tarkkuus riippuu syötteestäsi ja ruoan vaihtelusta. Käytä ohjenuorana, ei lopullisena lähteenä. Käänny ammattilaisen puoleen henkilökohtaista ravinto-ohjausta varten.',
			'disclaimer.snap.portionSize.title' => 'Annoskoko',
			'disclaimer.snap.portionSize.description' => 'Arvioiden tarkkuus riippuu vahvasti annoskoon oikeasta arviostasi.',
			'disclaimer.snap.preparationMethods.title' => 'Valmistustavat',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Ruoanvalmistus voi muuttaa ravintosisältöä merkittävästi. ${appLabel}:n arviot eivät aina huomioi kaikkia vaihteluita.',
			'disclaimer.snap.ingredients.title' => 'Ainesosat',
			'disclaimer.snap.ingredients.description' => 'Monimutkaiset ruoat, joissa on paljon piiloainesosia, voivat johtaa epätarkempiin arvioihin.',
			'disclaimer.snap.databaseLimitations.title' => 'Tietokannan rajoitukset',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}:n ruokakanta on laaja, mutta ei välttämättä sisällä jokaista ruoka-ainetta tai variaatiota.',
			'disclaimer.weightEstimate.title' => 'Tietoa painoarviosta',
			'disclaimer.weightEstimate.description' => 'Arvioitu painonmuutos perustuu teoreettiseen malliimme kalorit sisään vs. kalorit ulos. Se on tarkoitettu vain motivaatioksi, ei todellisen painon ennusteeksi.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalorilukemien tarkkuus',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Tämä arvio on yhtä tarkka kuin kirjaamasi kalorien saanti ja kulutus. Epätarkat merkinnät tuottavat epätarkan arvion.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiset tekijät',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Todelliseen painonmuutokseen vaikuttavat aineenvaihdunta, hormonit, uni, stressi, nesteytys ja muut yksilölliset tekijät, joita ${appLabel} ei voi mitata.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Nestetasapaino ja vaihtelut',
			'disclaimer.weightEstimate.waterWeight.description' => 'Päivittäinen paino voi vaihdella merkittävästi veden kertymisen, ruoansulatuksen ja ajoituksen vuoksi. Arvio ei huomioi näitä vaihteluita.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Ammattilaisen ohjeistus',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Älä tee tämän arvion perusteella lääketieteellisiä päätöksiä. Käänny aina terveydenhuollon ammattilaisen tai ravitsemusterapeutin puoleen.',
			'disclaimer.healthMetrics.description' => 'Nämä mittarit auttavat sinua ymmärtämään kehosi energiantarvetta ja ohjaavat ravintotavoitteitasi.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Perusaineenvaihdunta (BMR) on kalorimäärä, jonka kehosi kuluttaa levossa ylläpitääkseen perustoimintoja, kuten hengitystä ja verenkiertoa. BMR riippuu iästäsi, sukupuolestasi, pituudestasi ja painostasi. Korkeampi BMR tarkoittaa, että kehosi kuluttaa levossa luonnostaan enemmän kaloreita, usein suuremman lihasmassan, nuoremman iän tai miehen sukupuolen vuoksi. Matalampi BMR viittaa tyypillisesti pienempään lihasmassaan, vanhempaan ikään tai naisen sukupuoleen.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Päivittäinen kokonaisenergiankulutus (TDEE) on kokonaiskalorimäärä, jonka kulutat päivässä, mukaan lukien BMR sekä fyysisen aktiivisuuden ja päivittäisen liikkumisen kulutus. TDEE riippuu BMR-arvostasi ja aktiivisuustasostasi. Korkeampi TDEE tarkoittaa, että kulutat kokonaisuudessaan enemmän kaloreita, yleensä koska olet aktiivisempi tai BMR-arvosi on korkeampi. Matalampi TDEE viittaa vähäisempään päivittäiseen aktiivisuuteen tai alempaan BMR:ään.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Päivittäinen tavoite',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Päivittäinen tavoite on suositeltu päivittäinen kalorinsaanti TDEE-arvosi ja painotavoitteesi perusteella. Painonpudotuksessa syöt vähemmän kaloreita kuin TDEE-arvosi. Painon ylläpidossa kalorien saanti vastaa TDEE-arvoasi. Painonnousussa syöt enemmän kaloreita kuin TDEE-arvosi. Tämä auttaa saavuttamaan toivotun painonmuutoksen terveellisessä tahdissa.',
			'disclaimer.calorieExpenditure.title' => 'Kalorien kulutuksen arvio',
			'disclaimer.calorieExpenditure.description' => 'Kun Health Connect -tietoja ei ole saatavilla, arvioimme tämän päivän kulutetut kalorit perusaineenvaihdunnan (BMR) ja aktiivisuustason (TDEE) perusteella, skaalattuna kuluneen päivän osuuden mukaan.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Miten arvio lasketaan',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Laskemme TDEE-arvosi (profiilisi perusteella) ja kerromme sen kuluneen päivän murto-osalla (tunnit + minuutit) / 24 arvioidaksemme tähän mennessä kulutetut kalorit.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Ammattilaisen ohjeistus',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Älä käytä tätä arviota lääketieteellisten päätösten tekemiseen. Käänny aina terveydenhuollon ammattilaisen tai laillistetun ravitsemusterapeutin puoleen saadaksesi yksilöllisiä neuvoja painonhallintaan.',
			'common.close' => 'Sulje',
			'common.kContinue' => 'Jatka',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Pidätkö ${appLabel}-sovelluksesta?',
			'feedbackRating.yes' => 'Kyllä, pidän siitä',
			'feedbackRating.no' => 'En oikein',
			'feedbackRating.rateStepHeading' => 'Arvostele Play Storessa',
			'feedbackRating.emailStepHeading' => 'Lähetä palautetta sähköpostilla',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Nopea arvostelu auttaa muita löytämään ${appLabel}-sovelluksen ja pitää kehityksen käynnissä. Voisitko jättää sellaisen?',
			'feedbackRating.shareFeedbackViaEmail' => 'Palautteesi ohjaa seuraavia askeleita — luemme jokaisen viestin. Haluaisitko jakaa ajatuksiasi sähköpostitse?',
			'feedbackRating.rateCta' => 'Arvostele Play Storessa',
			'feedbackRating.maybeLater' => 'Ehkä myöhemmin',
			'feedbackRating.sendFeedback' => 'Lähetä palautetta',
			'feedbackRating.noThanks' => 'Ei kiitos',
			'feedbackRating.aboutUsDescription' => 'Pienen tiimin huolella tekemä. Keskitymme yksityisyyteen, yksinkertaisuuteen ja parempien ruokailutottumusten rakentamiseen.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Kiinnostaako, kuka ${appLabel}:n takana on? Katso ',
			'feedbackRating.aboutUsLinkLabel' => 'Tietoa meistä',
			'feedbackRating.thankYouMessage' => 'Kiitos! Kysymme uudelleen toisen kerran.',
			'health.syncFailed' => 'Synkkaus Health Connectiin epäonnistui',
			'health.mealSynced' => 'Ateria synkattu Health Connectiin',
			_ => null,
		};
	}
}
