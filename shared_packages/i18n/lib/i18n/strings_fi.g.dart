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
class TranslationsFi extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

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
	@override late final _TranslationsLocalNutritionPhase4Fi localNutritionPhase4 = _TranslationsLocalNutritionPhase4Fi._(_root);
	@override late final _TranslationsCommonFi common = _TranslationsCommonFi._(_root);
	@override late final _TranslationsFeedbackRatingFi feedbackRating = _TranslationsFeedbackRatingFi._(_root);
	@override late final _TranslationsHealthFi health = _TranslationsHealthFi._(_root);
}

// Path: errors
class _TranslationsErrorsFi extends TranslationsErrorsEn {
	_TranslationsErrorsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Olet tehnyt liian monta pyyntöä. Odota hetki ja yritä uudelleen.';
	@override String get networkError => 'Verkkovirhe. Tarkista internet-yhteytesi.';
	@override String get unknownError => 'Jotain meni pieleen. Yritä myöhemmin uudelleen.';
	@override String get loadingProfileData => 'Virhe profiilitietojen lataamisessa';
	@override String get somethingWentWrong => 'Jotain meni pieleen.';
	@override String get retry => 'Yritä uudelleen';
}

// Path: onboarding
class _TranslationsOnboardingFi extends TranslationsOnboardingEn {
	_TranslationsOnboardingFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Tervetuloa ${appLabel}';
	@override String get subtitle => 'Henkilökohtainen ravitsemuskumppanisi, jota pyörittää AI';
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
class _TranslationsTabsFi extends TranslationsTabsEn {
	_TranslationsTabsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Koonti';
	@override String get history => 'Historia';
}

// Path: home
class _TranslationsHomeFi extends TranslationsHomeEn {
	_TranslationsHomeFi._(TranslationsFi root) : this._root = root, super.internal(root);

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
class _TranslationsHistoryFi extends TranslationsHistoryEn {
	_TranslationsHistoryFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Ei kirjattuja aterioita';
	@override String get emptyMessage => 'Ota kuva viimeisestä ateriastasi kirjataksesi sen tänne.';
	@override String get today => 'Tänään';
	@override String get yesterday => 'Eilen';
}

// Path: meal
class _TranslationsMealFi extends TranslationsMealEn {
	_TranslationsMealFi._(TranslationsFi root) : this._root = root, super.internal(root);

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
	@override String get nameRequired => 'Anna aterialle nimi ennen tallentamista.';
	@override String get mealQuantity => 'Aterian määrä';
	@override String get mealQuantityHint => 'esim. 1 kulho, 2 viipaletta';
	@override String get timeOfMeal => 'Ajanhetki';
	@override String get timeOfMealHint => 'Valitse milloin söit aterian';
	@override String get mealType => 'Ateriatyyppi';
	@override late final _TranslationsMealNutritionFi nutrition = _TranslationsMealNutritionFi._(_root);
	@override late final _TranslationsMealDeleteConfirmationFi deleteConfirmation = _TranslationsMealDeleteConfirmationFi._(_root);
	@override String get addedToLog => 'Ateria lisätty kirjanpitoosi!';
	@override String couldNotAdd({required Object error}) => 'Aterian lisääminen epäonnistui: ${error}';
	@override String get savedSuccessfully => 'Ateria lisätty onnistuneesti!';
	@override String get updatedSuccessfully => 'Ateria päivitetty onnistuneesti!';
	@override String errorSaving({required Object error}) => 'Virhe tallennettaessa ateriaa: ${error}';
	@override String get removedFromFavorites => 'Poistettu suosikeista!';
	@override String get savedAsFavorite => 'Ateria tallennettu suosikiksi!';
	@override String get unfavorite => 'Poista suosikista';
	@override String couldNotUpdateFavorite({required Object error}) => 'Suosikin päivittäminen epäonnistui: ${error}';
	@override String get feedbackThanks => 'Kiitos palautteesta!';
	@override String get reanalysisUpdated => 'Päivitettiin aterian analyysi palautteesi perusteella.';
	@override String failedToProcess({required Object error}) => 'Käsittely epäonnistui: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Kuvan käsittely epäonnistui: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Virhe kuvan pakkaamisessa: ${error}';
	@override String get failedToSave => 'Tietojen tallennus epäonnistui. Yritä uudelleen.';
	@override String get skip => 'Ohita';
	@override late final _TranslationsMealQuestionFlowFi questionFlow = _TranslationsMealQuestionFlowFi._(_root);
	@override late final _TranslationsMealAnalysisFi analysis = _TranslationsMealAnalysisFi._(_root);
	@override late final _TranslationsMealLocalInferenceFi localInference = _TranslationsMealLocalInferenceFi._(_root);
	@override late final _TranslationsMealFeedbackFi feedback = _TranslationsMealFeedbackFi._(_root);
}

// Path: favorites
class _TranslationsFavoritesFi extends TranslationsFavoritesEn {
	_TranslationsFavoritesFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suosikit';
	@override String get empty => 'Ei suosikkia vielä.';
	@override String get searchPlaceholder => 'Hae suosikkiaterioita';
	@override String get searchEmptyTitle => 'Hakusi ei vastaa yhtään suosikkia';
	@override String get searchEmptySubtitle => 'Kokeile toista aterian nimeä, määrää tai ateriatyyppiä.';
	@override String get sortLabel => 'Lajittele suosikit';
	@override String get undo => 'Kumoa';
	@override String removed({required Object name}) => 'Poistettiin ${name} suosikeista';
	@override late final _TranslationsFavoritesSortOptionsFi sortOptions = _TranslationsFavoritesSortOptionsFi._(_root);
}

// Path: profile
class _TranslationsProfileFi extends TranslationsProfileEn {
	_TranslationsProfileFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profiili';
	@override String get noProfileData => 'Profiilitietoja ei löytynyt';
	@override String get yourProfile => 'Profiilisi';
	@override String get viewAndManage => 'Katso ja hallinnoi terveystietojasi';
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
class _TranslationsHealthScoreFi extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terveysarvo';
	@override String get whyThisScore => 'Miksi tämä arvo?';
	@override String get note => 'Tämä arvio on AI-arvio tunnistettujen ainesosien ja ravintotiheyden perusteella. Kysy aina ammattilaiselta henkilökohtaista ravitsemusneuvontaa.';
	@override String get unhealthy => 'Epäterveellinen';
	@override String get healthy => 'Terveellinen';
	@override String get neutral => 'Neutraali';
}

// Path: editProfile
class _TranslationsEditProfileFi extends TranslationsEditProfileEn {
	_TranslationsEditProfileFi._(TranslationsFi root) : this._root = root, super.internal(root);

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
	@override String get unitLbs => 'paunaa (lb)';
	@override String get metricCm => 'Metrinen (cm)';
	@override String get imperialFtIn => 'Imperiaalinen (ft/in)';
	@override String get metricKg => 'Metrinen (kg)';
	@override String get imperialLbs => 'Imperiaalinen (lbs)';
	@override late final _TranslationsEditProfileGendersFi genders = _TranslationsEditProfileGendersFi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsFi weightGoals = _TranslationsEditProfileWeightGoalsFi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsFi activityLevels = _TranslationsEditProfileActivityLevelsFi._(_root);
}

// Path: settings
class _TranslationsSettingsFi extends TranslationsSettingsEn {
	_TranslationsSettingsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Asetukset';
	@override late final _TranslationsSettingsSectionsFi sections = _TranslationsSettingsSectionsFi._(_root);
	@override late final _TranslationsSettingsEditProfileFi editProfile = _TranslationsSettingsEditProfileFi._(_root);
	@override late final _TranslationsSettingsLanguageFi language = _TranslationsSettingsLanguageFi._(_root);
	@override late final _TranslationsSettingsHeightUnitFi heightUnit = _TranslationsSettingsHeightUnitFi._(_root);
	@override late final _TranslationsSettingsWeightUnitFi weightUnit = _TranslationsSettingsWeightUnitFi._(_root);
	@override late final _TranslationsSettingsMealRemindersFi mealReminders = _TranslationsSettingsMealRemindersFi._(_root);
	@override late final _TranslationsSettingsLocalInferenceFi localInference = _TranslationsSettingsLocalInferenceFi._(_root);
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
class _TranslationsRemindersFi extends TranslationsRemindersEn {
	_TranslationsRemindersFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pysy raiteilla muistutuksilla';
	@override String get description => 'Saat lempeitä muistutuksia kirjataksesi ateriasi ja pysyäksesi johdonmukaisena ravintotavoissasi';
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
	@override String get change => 'Vaihda';
	@override String get enableNotifications => 'Ota ilmoitukset käyttöön';
	@override String get skipForNow => 'Ohita nyt';
	@override String get saveChanges => 'Tallenna muutokset';
	@override String get enabledSuccessfully => 'Ilmoitukset otettu käyttöön onnistuneesti!';
	@override String get permissionDenied => 'Ilmoitusoikeus evätty';
	@override String errorEnabling({required Object error}) => 'Virhe ilmoitusten ottamisessa käyttöön: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Virhe asetusten viimeistelyssä: ${error}';
}

// Path: notifications
class _TranslationsNotificationsFi extends TranslationsNotificationsEn {
	_TranslationsNotificationsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastFi breakfast = _TranslationsNotificationsBreakfastFi._(_root);
	@override late final _TranslationsNotificationsLunchFi lunch = _TranslationsNotificationsLunchFi._(_root);
	@override late final _TranslationsNotificationsDinnerFi dinner = _TranslationsNotificationsDinnerFi._(_root);
	@override late final _TranslationsNotificationsSnackFi snack = _TranslationsNotificationsSnackFi._(_root);
	@override late final _TranslationsNotificationsTestFi test = _TranslationsNotificationsTestFi._(_root);
}

// Path: login
class _TranslationsLoginFi extends TranslationsLoginEn {
	_TranslationsLoginFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kirjaudu';
	@override String get signInWithGoogle => 'Kirjaudu Googlella';
	@override String get signInFailed => 'Google-kirjautuminen epäonnistui tai peruttiin.';
}

// Path: disclaimer
class _TranslationsDisclaimerFi extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Huomioithan';
	@override late final _TranslationsDisclaimerSnapFi snap = _TranslationsDisclaimerSnapFi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateFi weightEstimate = _TranslationsDisclaimerWeightEstimateFi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsFi healthMetrics = _TranslationsDisclaimerHealthMetricsFi._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureFi calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureFi._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Fi extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Fi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'Ravintoarvot haettiin ladatusta USDA-paketista';
	@override String get nutritionCached => 'Ravintoarvot haettiin laitteen USDA-välimuistista';
	@override String get nutritionMixed => 'Ravintoarvot yhdistettiin ladatuista, välimuistiin tallennetuista ja etänä haetuista USDA-riveistä';
	@override String get calculationLocal => 'Kalorit ja makrot laskettiin tällä laitteella';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: ladattu USDA-paketti';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: laitteen USDA-välimuisti';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: Calorifyn kautta haettu USDA-rivi';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: deterministinen ravintoarvovakio';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · tietoaineisto ${datasetVersion}';
	@override String get portionSmaller => 'Pienempi';
	@override String get portionEstimated => 'Arvioitu';
	@override String get portionLarger => 'Suurempi';
	@override String portionQuestion({required Object ingredient}) => 'Mikä annoskoko vastasi parhaiten ainesta ${ingredient}?';
	@override String get mealTypeQuestion => 'Mikä ateria tämä oli?';
	@override String get localNutritionTip => 'Laskettu varmennetuista paikallisista ravintoarvotiedoista.';
	@override String get offlineNutritionTitle => 'Lataa ravintoarvotiedot';
	@override String get offlineNutritionSubtitle => 'Käytä varmennettuja USDA-rivejä ja determinististä laskentaa tällä laitteella, kun kaikki ainesosat on katettu.';
	@override String get offlineNutritionUnavailable => 'Paikallisia ravintoarvotietoja ei ole saatavilla tähän sovellusversioon.';
	@override String get offlineNutritionNotDownloaded => 'Varmennettua ravintoarvopakettia ei ole ladattu.';
	@override String get offlineNutritionInstalling => 'Ravintoarvotietoja ladataan ja varmennetaan…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Paketti ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} USDA-riviä välimuistissa · ${size}';
	@override String get offlineNutritionUpdate => 'Tarkista päivitykset';
	@override String get offlineNutritionClear => 'Tyhjennä paikalliset ravintoarvotiedot';
	@override String get offlineNutritionClearTitle => 'Tyhjennetäänkö paikalliset ravintoarvotiedot?';
	@override String get offlineNutritionClearBody => 'Tämä poistaa ladatun USDA-paketin ja hakuvälimuistin. Kirjatut ateriat säilyttävät täsmällisen ravintoarvotilannekuvan, jota käytettiin tallennettaessa.';
	@override String get offlineNutritionClearConfirm => 'Tyhjennä tiedot';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Paikallisia ravintoarvotietoja ei voitu ladata ja varmentaa: ${error}';
	@override String get offlineNutritionCleared => 'Paikalliset ravintoarvotiedot tyhjennettiin';
}

// Path: common
class _TranslationsCommonFi extends TranslationsCommonEn {
	_TranslationsCommonFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get close => 'Sulje';
	@override String get kContinue => 'Jatka';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingFi extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Pidätkö ${appLabel}:sta?';
	@override String get yes => 'Kyllä, pidän siitä';
	@override String get no => 'En oikeastaan';
	@override String get rateStepHeading => 'Arvostele Play Storessa';
	@override String get emailStepHeading => 'Lähetä palaute sähköpostilla';
	@override String soloDevMessage({required Object appLabel}) => 'Pikainen arvostelu auttaa muita löytämään ${appLabel}:n ja pitää kehitystyön käynnissä. Voisitko hetken jättää arvion?';
	@override String get shareFeedbackViaEmail => 'Palautteesi muokkaa tulevaa — luemme jokaisen viestin. Haluatko jakaa ajatuksesi sähköpostilla?';
	@override String get rateCta => 'Arvostele Play Storessa';
	@override String get maybeLater => 'Ehkä myöhemmin';
	@override String get sendFeedback => 'Lähetä palaute';
	@override String get noThanks => 'Ei kiitos';
	@override String get aboutUsDescription => 'Tehty huolella pienellä tiimillä. Keskitymme yksityisyyteen, yksinkertaisuuteen ja auttamaan sinua kehittämään parempia ruokailutottumuksia.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Kiinnostaa kuka ${appLabel}:n takana on? Katso ';
	@override String get aboutUsLinkLabel => 'Tietoa meistä';
	@override String get thankYouMessage => 'Kiitos! Kysymme taas myöhemmin.';
}

// Path: health
class _TranslationsHealthFi extends TranslationsHealthEn {
	_TranslationsHealthFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Synkronointi Health Connectiin epäonnistui';
	@override String get mealSynced => 'Ateria synkattu Health Connectiin';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesFi extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionFi foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionFi._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisFi aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisFi._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationFi healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationFi._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderFi extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mikä on sukupuolesi?';
	@override String get description => 'Sukupuoli auttaa meitä laskemaan perusaineenvaihduntasi (BMR) tarkasti.';
	@override String get next => 'Seuraava';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightFi extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kuinka pitkä olet?';
	@override String get description => 'Pituutesi auttaa meitä laskemaan BMI:si ja energiantarpeesi tarkasti.';
	@override String get metric => 'Metrinen';
	@override String get imperial => 'Imperiaalinen';
	@override String get next => 'Seuraava';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightFi extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Mikä on nykyinen painosi?';
	@override String get currentDescription => 'Nykyinen painosi on tärkeä, jotta voimme räätälöidä päivittäiset tavoitteesi.';
	@override String get targetTitle => 'Mikä on tavoitepainosi?';
	@override String get targetDescription => 'Tavoitepainon asettaminen auttaa meitä määrittämään pitkän aikavälin suunnitelmasi.';
	@override String get metric => 'Metrinen';
	@override String get imperial => 'Imperiaalinen';
	@override String get next => 'Seuraava';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeFi extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Milloin olet syntynyt?';
	@override String get description => 'Ikäsi auttaa meitä laskemaan kaloritarpeesi tarkasti.';
	@override String get next => 'Seuraava';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleFi extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleFi._(TranslationsFi root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingWeightGoalFi extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mikä on tavoitteesi?';
	@override String get description => 'Valitse tavoite, joka parhaiten kuvaa mitä haluat saavuttaa';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelFi extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kuinka aktiivinen olet?';
	@override String get description => 'Tämä auttaa meitä laskemaan päivittäiset kaloritarpeesi tarkemmin';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectFi extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yhdistä Health Connectiin';
	@override String get description => 'Synkronoi terveystietosi parempia näkemyksiä ja automaattista kaloriseurantaa varten';
	@override String get overviewDescription => 'Käytä kulutettuja kaloreita päivätavoitteessasi ja halutessasi jaa kirjaamasi ateriat Health Connectiin.';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingFi automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingFi._(_root);
	@override late final _TranslationsOnboardingHealthConnectCaloriesBurnedFi caloriesBurned = _TranslationsOnboardingHealthConnectCaloriesBurnedFi._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsFi progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsFi._(_root);
	@override late final _TranslationsOnboardingHealthConnectShareLoggedMealsFi shareLoggedMeals = _TranslationsOnboardingHealthConnectShareLoggedMealsFi._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationFi seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationFi._(_root);
	@override late final _TranslationsOnboardingHealthConnectUserControlFi userControl = _TranslationsOnboardingHealthConnectUserControlFi._(_root);
	@override String get connected => 'Health Connect yhdistetty';
	@override String get notConnected => 'Health Connect ei yhdistetty';
	@override String get setup => 'Aseta Health Connect';
	@override String get skipForNow => 'Ohita nyt';
	@override String get statusConnected => 'Health Connect on yhdistetty.';
	@override String get statusSuccess => 'Health Connect on yhdistetty onnistuneesti!';
	@override String get statusNotConnected => 'Valitse Health Connect -ominaisuudet, jotka haluat ottaa käyttöön.';
	@override String get statusPartial => 'Health Connect on yhdistetty osittain. Ota jäljellä oleva käyttöoikeus käyttöön käyttääksesi molempia ominaisuuksia.';
	@override String get statusProviderUpdateRequired => 'Jatka asentamalla tai päivittämällä Health Connect.';
	@override String get statusUnavailable => 'Health Connectia ei tueta tällä laitteella.';
	@override String get installOrUpdate => 'Asenna tai päivitä';
	@override String get manageAccess => 'Hallitse pääsyä';
	@override String statusPermissionDenied({required Object appLabel}) => 'Lupa evätty. Ota käyttöön Health Connect -oikeudet puhelimesi asetuksista ${appLabel}:lle.';
	@override String statusError({required Object error}) => 'Virhe Health Connectin asennuksessa: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementFi extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessFi trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessFi._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileFi healthProfile = _TranslationsOnboardingReinforcementHealthProfileFi._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleFi goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleFi._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryFi extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-yhteenvetosi';
	@override String get logMore => 'Kirjaa lisää aterioita seuraavien päivien aikana saadaksesi henkilökohtaisia AI-näkemyksiä.';
	@override String get loading => 'Ladataan yhteenvetoa...';
	@override String mealCount({required Object count}) => '${count} ateriaa kirjattu';
	@override String macroBalanceScore({required Object score}) => 'Tasapainopisteet ${score}';
	@override String get topFoods => 'Suosituimmat ruoat';
	@override String get trendUp => 'Kalorit nousemassa';
	@override String get trendDown => 'Kalorit laskevana';
	@override String get trendSteady => 'Kalorit pysyvät tasaisina';
	@override String generatedAt({required Object time}) => 'Päivitetty ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalFi extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aseta päivittäinen tavoitteesi';
	@override String get titleSet => 'Päivittäinen tavoitteesi';
	@override String get description => 'Valmis aloittamaan hyvinvointimatkasi? Aseta päivittäinen kalorirajasi alle käynnistääksesi edistymisen.';
	@override String get descriptionSet => 'Kompassisi on asetettu! Tämä on päivittäinen kalorirajasi, joka ohjaa sinua.';
	@override String get yourGoal => 'Tavoitteesi';
	@override String get goal => 'Tavoite';
	@override String get dailyCalories => 'Päivittäiset kalorit (kcal)';
	@override String get setGoal => 'Aseta tavoite';
	@override String get intake => 'Saanti';
	@override String get burned => 'Poltettu';
	@override String get weightImpact => 'Vaikutus painoon';
	@override String get estLoss => 'Arvioitu pudotus';
	@override String get estGain => 'Arvioitu nousu';
	@override String get kcal => 'kilokaloria (kcal)';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryFi extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päiväkohtainen yhteenveto';
	@override String get calories => 'Kalorit';
	@override String get carbs => 'Hiilihydraatit';
	@override String get protein => 'Proteiini';
	@override String get fat => 'Rasva';
	@override String get fiber => 'Kuitu';
	@override String get grams => 'grammaa';
	@override String get chartAccessibilityLabel => 'Makroravinteiden kaavio';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressFi extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päivän makrojako';
	@override String get target => 'Tavoite';
	@override String get current => 'Nykyinen';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryFi extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => '7 päivän makrohistoria';
	@override String get trendTitle => 'Päivän trendi';
	@override String peakHour({required Object hour}) => 'Huippu: ${hour}:00';
	@override String get noHistoryYet => 'Ei historiaa vielä';
	@override String get startLogging => 'Aloita aterioiden kirjaaminen nähdäksesi\n7 päivän makrotrendit täällä';
}

// Path: home.mealLog
class _TranslationsHomeMealLogFi extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kirjatut ateriat';
	@override String get emptyMessage => 'Ota kuva viimeisestä ateriastasi kirjataksesi sen tänne.';
	@override String get noMealsToday => 'Ei ateriakirjauksia tälle päivälle';
	@override String get seeAllMeals => 'Näytä kaikki ateriat';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionFi extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nopea lisäys AI:lla';
	@override String get description => 'Kuvaile ateriasi ja anna AI:n hoitaa yksityiskohdat.';
	@override String get hint => 'esim. Aamupalalla söin ison kulhollisen kaurapuuroa viipaloidun banaanin ja mitallisen heraproteiinia ...';
	@override String get analyzeMeal => 'Analysoi ateria';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsFi extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suosikkiateriat';
	@override String get description => 'Lisää nopeasti joku suosikeistasi.';
	@override String get noFavorites => 'Ei suosikkia vielä.';
	@override String get addFavoriteHint => 'Klikkaa tähteä aterian kohdalla merkitäksesi sen suosikiksi.';
	@override String get seeAll => 'Näytä kaikki';
	@override String get add => 'Lisää';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapFi extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kuvaa & seuraa ateriasi';
	@override String get description => 'Käytä kameraa ottaaksesi kuvan ruoastasi AI-analyysiä varten.';
	@override String get openCamera => 'Avaa kamera';
	@override String get gallery => 'Galleria';
	@override String get compressingPhoto => 'Optimoidaan kuva…';
	@override String get uploadingPhoto => 'Lähetetään kuvaa…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthFi extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synkronoi Health Connectiin';
	@override String get description => 'Synkronoi ravintotietosi Health Connectiin';
	@override String get install => 'Asenna';
	@override String get dataUseDescription => 'Käytä kulutettuja kaloreita tavoitteessasi ja jaa kirjatut ateriat';
	@override String get installOrUpdate => 'Asenna tai päivitä';
	@override String get connect => 'Yhdistä';
}

// Path: meal.nutrition
class _TranslationsMealNutritionFi extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorit';
	@override String get carbs => 'Hiilihydraatit (g)';
	@override String get protein => 'Proteiini (g)';
	@override String get fat => 'Rasva (g)';
	@override String get fiber => 'Kuitu (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationFi extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Poista ateria';
	@override String get message => 'Haluatko varmasti poistaa tämän ateriakirjauksen?';
	@override String get cancel => 'Peruuta';
	@override String get delete => 'Poista';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowFi extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Kysymys ${current} / ${total}';
	@override String get noQuestionsAvailable => 'Ei saatavilla olevia kysymyksiä';
	@override String get next => 'Seuraava';
	@override String get continueLabel => 'Jatka';
}

// Path: meal.analysis
class _TranslationsMealAnalysisFi extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analysoidaan ateriaasi';
	@override String get stepStarted => 'Aloitetaan…';
	@override String get stepDecomposition => 'Ymmärretään ateriaasi…';
	@override String get stepIngredients => 'Etsitään ainesosia ja ravintoarvoja…';
	@override String get stepUncertainty => 'Tarkistetaan varmuutta…';
	@override String get stepMealTypeQuestion => 'Melkein valmis…';
	@override String get stepResult => 'Viimeistellään tulosta…';
	@override String get stepError => 'Jotain meni pieleen';
	@override String get stepDefault => 'Analysoidaan ateriaasi…';
	@override String get progressUnderstand => 'Ymmärretään ateria';
	@override String get progressMatch => 'Haetaan ainesosien ravintoarvoja';
	@override String get progressCheck => 'Tarkistetaan annoskoot ja varmuus';
	@override String get progressMealType => 'Valitaan ateriatyyppi';
	@override String get progressFinish => 'Lasketaan kalorit ja makrot';
	@override String get detectedIngredientHeading => 'Havaitsemamme ainesosat';
	@override String ingredientsOverflow({required Object count}) => '${count} lisää';
	@override String ingredientsLine({required Object count}) => '${count} ainesosaa tunnistettu';
	@override String get ingredientsPending => 'Skannataan ainesosia…';
	@override String mealPreviewDescription({required Object text}) => '”${text}”';
	@override String get offlineTip0 => 'Vinkki: Johdonmukaisuus voittaa täydellisyyden—säännölliset merkinnät paljastavat merkitykselliset kaavat.';
	@override String get offlineTip1 => 'Vinkki: Kuvia varten luonnonvalo ja ylhäältä otettu näkymä auttavat annosarvioissa.';
	@override String get offlineTip2 => 'Vinkki: Mainitse juomat, kastikkeet ja paistorasva—ne lisäävät kaloreita, jotka usein unohdetaan.';
	@override String get offlineTip3 => 'Vinkki: Pikainen annosmerkintä (1 kulho, iso kahvi) tekee arvioista tarkempia.';
	@override String get offlineTip4 => 'Vinkki: Aterian jälkeinen kirjaaminen rakentaa silti tapaa; täydellisyyttä ei vaadita.';
	@override String get offlineTip5 => 'Vinkki: Kerro, miten ruoka on valmistettu, jos se muuttaa kaloreita paljon (paistettu vs. uunissa).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceFi extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Tarkista tunnistetut ainesosat';
	@override String get reviewSubtitle => 'Tämä tulkittiin laitteellasi. Korjaa nimet tai annoskoot ennen ravintoarvojen laskemista.';
	@override String get mealName => 'Aterian nimi';
	@override String get ingredient => 'Ainesosa';
	@override String get grams => 'Arvioidut grammat';
	@override String get removeIngredient => 'Poista ainesosa';
	@override String get continueLabel => 'Jatka';
	@override String get invalidProposal => 'Lisää vähintään yksi ainesosa ja käytä positiivista grammamäärää.';
	@override String get localUnavailable => 'Laitteen oma analyysi ei ole tällä hetkellä käytettävissä.';
	@override String get calculationDetails => 'Näin tämä laskettiin';
	@override String get interpretationLocal => 'Ainesosat tulkittu tällä laitteella';
	@override String get interpretationCloud => 'Ainesosat tulkittu pilvipalvelussa';
	@override String get interpretationManual => 'Ainesosat tarkistettu tai muokattu käyttäjän toimesta';
	@override String get nutritionRemote => 'Ravintoarvot haettu USDA:sta Calorifyn kautta';
	@override String get nutritionFallback => 'Osa ravintoarvoista arvioitiin etänä';
	@override String get calculationServer => 'Kalorit ja makroravinteet laskettu Calorifyn toimesta';
	@override String get fallbackUsed => 'Paikallinen analyysi siirtyi pilvikäsittelyyn';
	@override String get noRawContent => 'Diagnostiikkakuittaukset eivät sisällä ateriatekstiäsi tai valokuvaasi.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackFi extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mikä näyttää väärältä?';
	@override String get subtitle => 'Auttaaksesi parantamaan analyysiä, valitse yksi tai useampi ongelma.';
	@override String get tellUsMore => 'Kerro lisää';
	@override String get describeIncorrect => 'Kuvaile mikä oli virheellistä';
	@override String get submit => 'Lähetä';
	@override String get issueFoodIdentification => 'Ruoan tunnistus';
	@override String get issuePortionSize => 'Annoksen koko';
	@override String get issueCalorieDistribution => 'Kalorien jakautuminen';
	@override String get issueMacrosWrong => 'Makrot väärin';
	@override String get issueMissingItems => 'Puuttuvat ainesosat';
	@override String get issueExtraItems => 'Liian monta ainesosaa';
	@override String get issueOther => 'Muu';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsFi extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Viimeisimmät';
	@override String get calories => 'Kalorit';
	@override String get alphabetical => 'A–Ö';
}

// Path: profile.sections
class _TranslationsProfileSectionsFi extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIILI';
	@override String get basicInformation => 'PERUSTIEDOT';
	@override String get goalsAndActivity => 'TAVOITTEET & AKTIVITEETTI';
	@override String get calculatedValues => 'LASKETUT ARVOT';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesFi extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Päivittäinen tavoite';
	@override String get calPerDay => 'kal/pv';
	@override String get notAvailable => 'Ei saatavilla';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsFi extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'HENKILÖTIEDOT';
	@override String get physicalMeasurements => 'KEHON MITAT';
	@override String get goalsAndActivity => 'TAVOITTEET & AKTIVITEETTI';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersFi extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get male => 'Mies';
	@override String get female => 'Nainen';
	@override String get other => 'Muu';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsFi extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightFi loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightFi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightFi maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightFi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightFi gainWeight = _TranslationsEditProfileWeightGoalsGainWeightFi._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsFi extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryFi sedentary = _TranslationsEditProfileActivityLevelsSedentaryFi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveFi lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveFi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveFi moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveFi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveFi veryActive = _TranslationsEditProfileActivityLevelsVeryActiveFi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveFi extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveFi._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsFi extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIILI';
	@override String get localization => 'LOKALISAATIO';
	@override String get notifications => 'ILMOITUKSET';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'LAITTEEN OMA ANALYYSI';
	@override String get supportAndLegal => 'TUKI & LAINSÄÄDÄNTÖ';
	@override String get about => 'TIETOA';
	@override String get dangerZone => 'VAIKUTUSALUE';
	@override String get developer => 'KEHITTÄJÄ';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileFi extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Muokkaa profiilia';
	@override String get subtitle => 'Päivitä henkilökohtaiset tietosi';
}

// Path: settings.language
class _TranslationsSettingsLanguageFi extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kieli';
	@override String get subtitle => 'Valitse haluamasi kieli';
	@override String get searchHint => 'Hae kieliä...';
	@override String get noResults => 'Ei tuloksia';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitFi extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pituusyksikkö';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitFi extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Painoyksikkö';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersFi extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ateriamuistutukset';
	@override String get subtitle => 'Pysy raiteilla ajankohtaisilla muistutuksilla';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceFi extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aterioiden paikallinen analyysi';
	@override String get subtitle => 'Tulkitse tuetut ateriat Gemini Nanolla ennen ravintoarvojen laskemista';
	@override String get unavailable => 'Ei käytettävissä tällä laitteella';
	@override String get rolloutUnavailable => 'Yhteensopiva laitteisto löytyi, mutta tämä ominaisuus ei ole käytössä tässä sovellusversiossa';
	@override String get modelSetup => 'Gemini Nanon latauksen on valmistuttava ennen kuin tämä voidaan ottaa käyttöön';
	@override String get useLocalTitle => 'Käytä paikallista analyysia';
	@override String get useLocalSubtitle => 'Valinnainen ja oletuksena pois päältä. Tulokset voivat olla epätarkempia monimutkaisten aterioiden kohdalla.';
	@override String get disclosureTitle => 'Ennen paikallisen analyysin käyttöönottoa';
	@override String get disclosureBody => 'Gemini Nano voi tunnistaa ainesosia ja arvioida annoskokoja tuetuilla Android-laitteilla. Tarkistamasi ainesosaehdotus lähetetään Calorifylle USDA-ravintoarvojen vahvistusta ja laskentaa varten.';
	@override String get disclosureLimit1 => 'Monimutkaiset annokset, piilotetut ainesosat ja annoskoot saatetaan tunnistaa väärin.';
	@override String get disclosureLimit2 => 'Malli voi olla käytettävissämätön latauksen aikana, kun se on varattu, taustalla tai laitteen rajoitusten vuoksi.';
	@override String get disclosureLimit3 => 'Jos paikallinen tulkinta ei valmistu, tämä beta-versio lähettää alkuperäisen ateriakuvauksesi automaattisesti Calorifylle pilvianalyysia varten.';
	@override String get acknowledgement => 'Ymmärrän, että minun tulee tarkistaa tunnistetut ainesosat ja annoskoot.';
	@override String get enable => 'Hyväksy ja ota käyttöön';
	@override String get cancel => 'Peruuta';
}

// Path: settings.theme
class _TranslationsSettingsThemeFi extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Teema';
	@override String get light => 'Vaalea';
	@override String get dark => 'Tumma';
	@override String get system => 'Järjestelmä';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackFi extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lähetä palautetta';
	@override String subtitle({required Object appLabel}) => 'Auta parantamaan ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} - Sovelluspalaute';
	@override String get emailBodyPrefix => 'Anna palautteesi alla:';
	@override String get appVersion => 'Sovelluksen versio';
	@override String get device => 'Laite';
	@override String get osVersion => 'Käyttöjärjestelmäversio';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryFi extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vie ateriakirja';
	@override String get subtitle => 'Jaa CSV tiedosto kirjatuista aterioistasi';
	@override String get shareText => 'Calorify meal history export';
	@override String failed({required Object error}) => 'Ateriakirjan vieminen epäonnistui: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataFi extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tyhjennä kaikki tiedot';
	@override String get subtitle => 'Poista kaikki tietosi peruuttamattomasti';
	@override String get localOnlySubtitle => 'Poista tälle laitteelle tallennetut Calorify-tiedot';
	@override String get confirmationTitle => 'Tyhjennetäänkö kaikki tiedot?';
	@override String get confirmationMessage => 'Tätä toimenpidettä ei voi peruuttaa. Kaikki kirjatut ateriasi, suosikit ja profiiliasetukset poistetaan pysyvästi.';
	@override String get localOnlyConfirmationMessage => 'Tämä poistaa kirjatut ateriat, suosikit ja profiiliasetukset pysyvästi tältä laitteelta. Health Connectiin jo jaettuja aterioita ja Health Connectin käyttöoikeuksia hallitaan erikseen kohdassa Asetukset > Health Connect.';
	@override String get cancel => 'Peruuta';
	@override String get clearEverything => 'Tyhjennä kaikki';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsFi extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug-asetukset';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectFi extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Katso ja hallinnoi käyttöoikeuksia';
	@override late final _TranslationsSettingsHealthConnectUnavailableFi unavailable = _TranslationsSettingsHealthConnectUnavailableFi._(_root);
	@override late final _TranslationsSettingsHealthConnectUpdateRequiredFi updateRequired = _TranslationsSettingsHealthConnectUpdateRequiredFi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsFi permissions = _TranslationsSettingsHealthConnectPermissionsFi._(_root);
	@override String get managePermissions => 'Hallitse käyttöoikeuksia';
	@override String get openSettings => 'Avaa Health Connect -asetukset';
	@override String get disconnect => 'Katkaise Health Connect -yhteys';
	@override String get disconnectConfirmationTitle => 'Katkaistaanko Health Connect -yhteys?';
	@override String get disconnectConfirmationMessage => 'Calorify menettää Health Connectin käyttöoikeuden. Sinne jo kirjoitettuja tietoja ei poisteta.';
	@override String get disconnectConfirmationAction => 'Katkaise yhteys';
	@override String get deleteSyncedMeals => 'Poista Calorify-ateriat Health Connectista';
	@override String get deleteSyncedMealsConfirmationTitle => 'Poistetaanko synkronoidut ateriat?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Poistetaanko tämän Calorify-version synkronoimat ateriat Health Connectista? Paikallinen aterialoki ei muutu. Vanhemmat Calorify-merkinnät on ehkä edelleen poistettava Health Connectin Hallitse tietoja -toiminnolla.';
	@override String get deleteSyncedMealsConfirmationAction => 'Poista synkronoidut ateriat';
	@override String get deleteSyncedMealsSuccess => 'Calorify-ateriat poistettiin Health Connectista.';
	@override String get deleteSyncedMealsFailed => 'Synkronoituja aterioita ei voitu poistaa. Yritä uudelleen.';
	@override String get connectionPartial => 'Jotkin Health Connect -ominaisuudet ovat käytössä.';
	@override String get connectionComplete => 'Molemmat Health Connect -ominaisuudet ovat käytössä.';
	@override String get actionFailed => 'Health Connectia ei voitu avata. Yritä uudelleen.';
	@override String get requestPermissions => 'Pyydä oikeuksia';
	@override String get permissionRequestCancelledOrFailed => 'Käyttöoikeuspyyntö keskeytettiin tai epäonnistui. Yritä uudelleen tai myönnä oikeudet manuaalisesti Health Connectin asetuksista.';
	@override String get permissionRequestFailed => 'Oikeuspyyntöä ei voitu lähettää. Yritä uudelleen tai myönnä oikeudet manuaalisesti Health Connectin asetuksista.';
	@override String get requestingPermissions => 'Pyydetään...';
}

// Path: settings.about
class _TranslationsSettingsAboutFi extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tietoa';
	@override String get tagline => 'Nopea, ilmainen ja tietosuoja etusijalla oleva kaloritehokkuus';
	@override late final _TranslationsSettingsAboutOurStoryFi ourStory = _TranslationsSettingsAboutOurStoryFi._(_root);
	@override late final _TranslationsSettingsAboutPrivacyFi privacy = _TranslationsSettingsAboutPrivacyFi._(_root);
	@override late final _TranslationsSettingsAboutDeveloperFi developer = _TranslationsSettingsAboutDeveloperFi._(_root);
	@override late final _TranslationsSettingsAboutFeedbackFi feedback = _TranslationsSettingsAboutFeedbackFi._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoFi extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify-versio ${version}';
	@override String build({required Object buildNumber}) => 'Koonti ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastFi extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aamupala-aika! 🍳';
	@override String get body => 'Muista kirjata aamiaisesi';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchFi extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lounasaika! 🥗';
	@override String get body => 'On aika kirjata lounas';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerFi extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päivällisaika! 🍽️';
	@override String get body => 'Muista kirjata päivällisesi';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackFi extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Välipala-aika! 🍎';
	@override String get body => 'Aika terveelliselle välipalalle';
}

// Path: notifications.test
class _TranslationsNotificationsTestFi extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testi-ilmoitus';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapFi extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} antaa arvioidut ravintoarvot. Tarkkuus riippuu antamistasi tiedoista ja ruokien vaihteluista. Käytä ohjeellisena, ei lopullisena tietolähteenä. Kysy henkilökohtaista ravitsemusneuvontaa ammattilaiselta.';
	@override late final _TranslationsDisclaimerSnapPortionSizeFi portionSize = _TranslationsDisclaimerSnapPortionSizeFi._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsFi preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsFi._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsFi ingredients = _TranslationsDisclaimerSnapIngredientsFi._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsFi databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsFi._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateFi extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tietoa painoarviosta';
	@override String get description => 'Projektio painonmuutoksesta on teoreettinen arvio perustuen yksinkertaiseen kalorien sisään vs. ulos -malliin. Se on tarkoitettu motivoivaksi ohjaukseksi, ei ennusteeksi todellisesta painostasi.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyFi calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyFi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsFi biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsFi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightFi waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightFi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceFi professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceFi._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsFi extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get description => 'Nämä mittarit auttavat ymmärtämään kehosi energiantarpeita ja ohjaavat ravitsemustavoitteitasi.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrFi bmr = _TranslationsDisclaimerHealthMetricsBmrFi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeFi tdee = _TranslationsDisclaimerHealthMetricsTdeeFi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalFi dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalFi._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureFi extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Arvio kalorinkulutuksesta';
	@override String get description => 'Kun Health Connect -data ei ole saatavilla, arvioimme tämän päivän poltetut kalorit käyttäen perusaineenvaihduntaasi (BMR) ja aktiivisuustasoasi (TDEE), skaalaamalla sen kuluneen päivän osuuden mukaan.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedFi howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedFi._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFi professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFi._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionFi extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Älykäs ruoan tunnistus';
	@override String get description => 'Ota kuva ja anna AI:n tunnistaa ateriasi';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisFi extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-analyysi';
	@override String get description => 'Saat välittömiä ravintoarvoja kuvauksistasi';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationFi extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terveystietojen integraatio';
	@override String get description => 'Yhdistä Health Connectiin saadaksesi parempia näkemyksiä';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesFi extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Alipaino';
	@override String get healthyWeight => 'Terve paino';
	@override String get overweight => 'Ylipaino';
	@override String get obese => 'Lihavuus';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesFi extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Voimme auttaa sinua rakentamaan terveellisen suunnitelman kohti tasapainoista painoa ja ravinteikkaita aterioita.';
	@override String get healthy => 'Hyvä työ! Olet terveellä alueella. Autamme sinua ylläpitämään elinvoimaa ja energiatason.';
	@override String overweight({required Object appLabel}) => '${appLabel} yksinkertaistaa matkaasi AI-pohjaisella seurannalla, jotta saavutat tavoitteesi mukavasti.';
	@override String get obese => 'Olemme täällä tukemassa sinua henkilökohtaisella ohjauksella ja kestäviksi suunnitelluilla strategioilla terveyttäsi varten.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingFi extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automaattinen kaloriseuranta';
	@override String get description => 'Seuraa harjoittelun polttamia kaloreita suosikkisovelluksistasi';
}

// Path: onboarding.healthConnect.caloriesBurned
class _TranslationsOnboardingHealthConnectCaloriesBurnedFi extends TranslationsOnboardingHealthConnectCaloriesBurnedEn {
	_TranslationsOnboardingHealthConnectCaloriesBurnedFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kulutetut kalorit';
	@override String get description => 'Lue tämän päivän kulutettujen kalorien kokonaismäärä Health Connectista';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsFi extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edistymisnäkymät';
	@override String get description => 'Saat yksityiskohtaisia näkymiä terveystrendeistäsi';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _TranslationsOnboardingHealthConnectShareLoggedMealsFi extends TranslationsOnboardingHealthConnectShareLoggedMealsEn {
	_TranslationsOnboardingHealthConnectShareLoggedMealsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jaa kirjatut ateriat';
	@override String get description => 'Kirjoita Calorifyyn kirjaamasi ateriat Health Connectiin';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationFi extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Saumaton integraatio';
	@override String get description => 'Synkronoi tietoja suosikkiterveyssovelluksistasi';
}

// Path: onboarding.healthConnect.userControl
class _TranslationsOnboardingHealthConnectUserControlFi extends TranslationsOnboardingHealthConnectUserControlEn {
	_TranslationsOnboardingHealthConnectUserControlFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sinä päätät';
	@override String get description => 'Valitse haluamasi käyttöoikeus ja muuta pääsyä milloin tahansa';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessFi extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Et ole yksin';
	@override String get genericMessage => 'Tutkimukset osoittavat, että johdonmukainen seuranta on paras ennustaja pitkäaikaiselle menestykselle.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age}-vuotiaalle ${gender}:lle, joka haluaa ${goal}, johdonmukainen seuranta on tärkein menestyksen ennustaja.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} tekee siitä 10x helpompaa kuin manuaalisesti.';
	@override String get getStartedTitle => 'Valmis aloittamaan?';
	@override String get tipPhoto => 'Ota kuva aterioistasi välitöntä analyysia varten';
	@override String get tipConsistency => 'Kirjaa säännöllisesti nähdäksesi merkittäviä edistysaskeleita';
	@override String get tipProgress => 'Seuraa edistystäsi päivittäin pysyäksesi motivoituneena';
	@override String get button => 'Aloitetaan';
	@override String get defaultGender => 'henkilö';
	@override String get defaultGoal => 'terveempi sinä';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileFi extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terveysprofiilisi';
	@override String bmiDescription({required Object bmi}) => 'Mittiesi perusteella BMI:si on ${bmi}.';
	@override String get finalizeDescription => 'Viimeistellään profiilisi, jotta voimme räätälöidä kokemuksesi.';
	@override String get goalGain => 'saada';
	@override String get goalLose => 'laihtua';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Saavuttaaksesi tavoitteen, sinun täytyy ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Olet tavoitepainossasi! Autamme sinua ylläpitämään sitä.';
	@override String get button => 'Aloitetaan';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleFi extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erinomainen alku!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Olet ottanut ensimmäisen askeleen kohti ${goalText}. Koska olet ${activityText}, ${appLabel} säätää tavoitteesi vastaamaan elämäntyyliäsi.';
	@override String get personalizedTargets => 'Räätälöidyt kalorintavoitteet';
	@override String get aiMealDetection => 'AI-pohjainen aterian tunnistus';
	@override String get macroBreakdowns => 'Yksityiskohtaiset makroravinteiden erittelyt';
	@override String get button => 'Aloitetaan';
	@override String get defaultGoal => 'tavoitteitasi';
	@override String get defaultActivity => 'aktiivinen';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightFi extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Läihtyminen';
	@override String get description => 'Luo kalorivajetta laihtumista varten';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightFi extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Säilytä paino';
	@override String get description => 'Säilytä nykyinen painosi';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightFi extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lisää painoa';
	@override String get description => 'Luo kaloriylijäämä painon lisäämiseksi';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryFi extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Vähän liikkuva';
	@override String get description => 'Vähän tai ei lainkaan liikuntaa';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveFi extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kevyesti aktiivinen';
	@override String get description => 'Kevyt liikunta 1–3 päivää/viikko';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveFi extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kohtalaisesti aktiivinen';
	@override String get description => 'Kohtalainen liikunta 3–5 päivää/viikko';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveFi extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Erittäin aktiivinen';
	@override String get description => 'Rankka liikunta 6–7 päivää/viikko';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveFi extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Erittäin intensiivinen';
	@override String get description => 'Todella raskas liikunta tai fyysinen työ';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableFi extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ei saatavilla';
	@override String get description => 'Health Connect ei ole käytettävissä tällä laitteella. Asenna Health Connect Play Storesta (Android 9+) tai päivitä Android 14+:aan.';
	@override String get unsupportedDescription => 'Health Connectia ei tueta tällä laitteella.';
}

// Path: settings.healthConnect.updateRequired
class _TranslationsSettingsHealthConnectUpdateRequiredFi extends TranslationsSettingsHealthConnectUpdateRequiredEn {
	_TranslationsSettingsHealthConnectUpdateRequiredFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect vaatii huomiota';
	@override String get description => 'Asenna tai päivitä Health Connect ennen pääsyn hallintaa.';
	@override String get action => 'Asenna tai päivitä';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsFi extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oikeudet';
	@override String get description => 'Seuraavia oikeuksia pyydetään tarjotaksemme Health Connect -integraation:';
	@override String get granted => 'Myönnetty';
	@override String get notGranted => 'Ei myönnetty';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFi caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadFi nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadFi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteFi nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteFi._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryFi extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tarinaamme';
	@override String content({required Object appLabel}) => '${appLabel} syntyi yksinkertaisesta turhautumisesta: useimmat kaloriseurantasovellukset ovat joko liian monimutkaisia, vaativat jatkuvaa manuaalista syöttöä, veloittavat suuria tilausmaksuja tai vaarantavat yksityisyyden.\n\nYksittäisenä kehittäjänä halusin rakentaa jotain yksinkertaisempaa ja reilumpaa — sovelluksen, joka käyttää AI:ta vähentääkseen vaivaa, pysyy nopeana ja ilmaisena käyttää, ja käsittelee terveystietojasi kunnioittavasti.\n\n${appLabel} on sovellus, jonka toivoisin olevan olemassa: ei tilejä, ei seurantaa, ei mainoksia — vain selkeitä, käytännöllisiä näkemyksiä ja sinun terveystavoitteesi.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyFi extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yksityisyytesi on tärkeä';
	@override String get description => 'Yksityisyys ei ole harkinnanvarainen lisä — se on suunnitteluperiaate. Tässä, mitä se tarkoittaa käytännössä:';
	@override String get noAccounts => 'Ei tilejä vaadita\nKäytä sovellusta välittömästi. Ei kirjautumisia, ei identiteettejä.';
	@override String noTracking({required Object appLabel}) => 'Ei käytöksen seurantaa\n${appLabel} ei seuraa toimintaasi, rakenna käyttötottumuksia tai seuraa sinua sovellusten tai verkkosivujen välillä.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Rajoitettu analytiikka ja diagnostiikka\n${appLabel} käyttää sovelluksen perustapahtumia ja kaatumisdiagnostiikkaa luotettavuuden parantamiseen. Terveystietojen arvoja ei käytetä mainontaan eikä myydä.';
	@override String noAds({required Object appLabel}) => 'Mainokseton suunnittelu\n${appLabel} on rakennettu toimimaan ilman mainoksia tai dataperusteista rahastusta.';
	@override String get noDataSelling => 'Ei datan myyntiä\nTerveystietojasi ei koskaan myydä tai jaeta kolmansille osapuolille.';
	@override String get localStorage => 'Laitteella ensisijaisesti tallennus\nTietosi säilyvät laitteellasi.';
	@override String get privacyPolicy => 'Tietosuojakäytäntö';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperFi extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rakennettu yksinkehittäjän toimesta';
	@override String description({required Object appLabel}) => '${appLabel} on rakennettu ja ylläpidetty yhden kehittäjän toimesta, joka keskittyy rauhalliseen, yksityisyyttä kunnioittavaan terveysohjelmistoon.\n\nPalaute luetaan henkilökohtaisesti ja auttaa muovaamaan sovelluksen kehityssuuntaa.';
	@override String get website => 'Verkkosivusto';
	@override String get email => 'Sähköposti';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackFi extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Pidätkö ${appLabel}:sta?';
	@override String description({required Object appLabel}) => 'Palautteesi auttaa tekemään ${appLabel}:sta parempaa kaikille.';
	@override String get rateApp => 'Arvostele Play Storessa';
	@override String get sendFeedback => 'Lähetä palaute';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeFi extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Annoskoko';
	@override String get description => 'Arvioiden tarkkuus perustuu pitkälti oikeaan annoskoon arviointiisi.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsFi extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Valmistustavat';
	@override String description({required Object appLabel}) => 'Ruokien valmistustavat voivat merkittävästi muuttaa ravintoarvoja. ${appLabel}in arviot eivät aina huomioi näitä eroja.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsFi extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ainesosat';
	@override String get description => 'Monimutkaiset ruoat, joissa on paljon piilotettuja ainesosia, saattavat johtaa epätarkempiin arvioihin.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsFi extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tietokantaan liittyvät rajoitukset';
	@override String description({required Object appLabel}) => '${appLabel}in ruokarekisteri on laaja, mutta se ei välttämättä sisällä jokaista mahdollista ruokaa tai variaatiota.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyFi extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorien tarkkuus';
	@override String get description => 'Tämä arvio on yhtä tarkka kuin kirjaamiesi kulutus- ja polttoarvioiden tarkkuus. Virheellinen kirjaaminen johtaa virheelliseen ennusteeseen.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsFi extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiset tekijät';
	@override String description({required Object appLabel}) => 'Todellinen laihtuminen/lihastus riippuu aineenvaihdunnasta, hormoneista, unesta, stressistä, nesteytyksestä ja muista yksilöllisistä tekijöistä, joita ${appLabel} ei voi mitata.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightFi extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veden paino & vaihtelut';
	@override String get description => 'Normaali päiväkohtainen paino voi vaihdella merkittävästi vedenpidätyksen, ruoansulatuksen ja ajankohdan vuoksi. Arvio ei ota huomioon näitä päivittäisiä vaihteluita.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceFi extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ammatillinen ohjaus';
	@override String get description => 'Älä käytä tätä arviota lääketieteellisten päätösten tekemiseen. Kysy aina terveydenhuollon ammattilaiselta tai rekisteröidyltä ravitsemusterapeutilta henkilökohtaista painonhallintaohjeistusta.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrFi extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Perusaineenvaihdunta (BMR) on kalorimäärä, jonka kehosi polttaa levossa ylläpitääkseen perustoimintoja, kuten hengitystä ja verenkiertoa. BMR riippuu iästäsi, sukupuolestasi, pituudestasi ja painostasi. Korkeampi BMR tarkoittaa, että kehosi polttaa luonnollisesti enemmän kaloreita levossa, usein enemmän lihasmassan, nuoren iän tai miehisyyden takia. Alhaisempi BMR viittaa yleensä vähäisempään lihasmassan määrään, korkeampaan ikään tai naiseuteen.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeFi extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Kokonaispäivittäinen energiankulutus (TDEE) on päivittäinen kalorimäärä, jonka poltat, ja siihen sisältyy BMR sekä liikunnasta ja päivittäisestä liikkumisesta poltetut kalorit. TDEE riippuu BMR:stäsi ja aktiivisuustasostasi. Korkeampi TDEE tarkoittaa, että poltat enemmän kaloreita kokonaisuudessaan, yleensä aktiivisuuden tai korkeamman BMR:n vuoksi. Alhaisempi TDEE viittaa vähäisempään päivittäiseen aktiivisuuteen tai matalampaan BMR:ään.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalFi extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Päivittäinen tavoite';
	@override String get description => 'Päivittäinen tavoite on suositeltu päivittäinen kalorinsaantisi TDEE:si ja painotavoitteesi perusteella. Laihduttaessa kulutat vähemmän kaloreita kuin TDEE. Painon ylläpitämiseksi vastaat TDEE:tä. Painon nostamiseksi kulutat enemmän kaloreita kuin TDEE. Tämä auttaa sinua saavuttamaan halutun painon muutoksen terveellisellä tahdilla.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedFi extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Miten arvio lasketaan';
	@override String get description => 'Laskemme TDEE:si (profiilisi perusteella) ja kerromme sen kuluneen päivän osuudella (tunnit + minuutit) / 24 arvioidaksemme tähän mennessä poltetut kalorit.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFi extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ammatillinen ohjaus';
	@override String get description => 'Älä käytä tätä arviota lääketieteellisten päätösten tekemiseen. Kysy aina terveydenhuollon ammattilaiselta tai rekisteröidyltä ravitsemusterapeutilta henkilökohtaista painonhallintaohjeistusta.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFi extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lue poltetut kokonaiskalorit';
	@override String get description => 'Antaa sovellukselle luvan lukea Health Connectista polttamasi kokonaiskalorit.';
	@override String get usage => 'Tätä käyttöoikeutta käytetään näyttämään päivittäinen kalorinkulutuksesi sovelluksessa, jotta ymmärrät kokonaissähkönkulutuksesi päivän aikana.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadFi extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lue ravintotiedot';
	@override String get description => 'Antaa sovellukselle luvan lukea ravintotietoja Health Connectista.';
	@override String get usage => 'Tämä oikeus sallii sovelluksen lukea muiden Health Connectiin yhdistettyjen sovellusten kirjaamia ravintotietoja ja tarjoaa kattavamman kuvan ravinnostasi.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteFi extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteFi._(TranslationsFi root) : this._root = root, super.internal(root);

	final TranslationsFi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kirjoita ravintotietoja';
	@override String get description => 'Antaa sovellukselle luvan kirjoittaa ravintotietoja Health Connectiin.';
	@override String get usage => 'Tämä oikeus sallii sovelluksen synkronoida kirjauksesi Health Connectiin, jolloin ravintotietosi ovat muiden käyttämiesi terveys- ja kuntoilussovellusten saatavilla.';
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
			'errors.rateLimitExceeded' => 'Olet tehnyt liian monta pyyntöä. Odota hetki ja yritä uudelleen.',
			'errors.networkError' => 'Verkkovirhe. Tarkista internet-yhteytesi.',
			'errors.unknownError' => 'Jotain meni pieleen. Yritä myöhemmin uudelleen.',
			'errors.loadingProfileData' => 'Virhe profiilitietojen lataamisessa',
			'errors.somethingWentWrong' => 'Jotain meni pieleen.',
			'errors.retry' => 'Yritä uudelleen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Tervetuloa ${appLabel}',
			'onboarding.subtitle' => 'Henkilökohtainen ravitsemuskumppanisi, jota pyörittää AI',
			'onboarding.getStarted' => 'Aloita',
			'onboarding.features.foodRecognition.title' => 'Älykäs ruoan tunnistus',
			'onboarding.features.foodRecognition.description' => 'Ota kuva ja anna AI:n tunnistaa ateriasi',
			'onboarding.features.aiAnalysis.title' => 'AI-analyysi',
			'onboarding.features.aiAnalysis.description' => 'Saat välittömiä ravintoarvoja kuvauksistasi',
			'onboarding.features.healthIntegration.title' => 'Terveystietojen integraatio',
			'onboarding.features.healthIntegration.description' => 'Yhdistä Health Connectiin saadaksesi parempia näkemyksiä',
			'onboarding.gender.title' => 'Mikä on sukupuolesi?',
			'onboarding.gender.description' => 'Sukupuoli auttaa meitä laskemaan perusaineenvaihduntasi (BMR) tarkasti.',
			'onboarding.gender.next' => 'Seuraava',
			'onboarding.height.title' => 'Kuinka pitkä olet?',
			'onboarding.height.description' => 'Pituutesi auttaa meitä laskemaan BMI:si ja energiantarpeesi tarkasti.',
			'onboarding.height.metric' => 'Metrinen',
			'onboarding.height.imperial' => 'Imperiaalinen',
			'onboarding.height.next' => 'Seuraava',
			'onboarding.weight.currentTitle' => 'Mikä on nykyinen painosi?',
			'onboarding.weight.currentDescription' => 'Nykyinen painosi on tärkeä, jotta voimme räätälöidä päivittäiset tavoitteesi.',
			'onboarding.weight.targetTitle' => 'Mikä on tavoitepainosi?',
			'onboarding.weight.targetDescription' => 'Tavoitepainon asettaminen auttaa meitä määrittämään pitkän aikavälin suunnitelmasi.',
			'onboarding.weight.metric' => 'Metrinen',
			'onboarding.weight.imperial' => 'Imperiaalinen',
			'onboarding.weight.next' => 'Seuraava',
			'onboarding.age.title' => 'Milloin olet syntynyt?',
			'onboarding.age.description' => 'Ikäsi auttaa meitä laskemaan kaloritarpeesi tarkasti.',
			'onboarding.age.next' => 'Seuraava',
			'onboarding.bmiScale.underweight' => 'Alipaino',
			'onboarding.bmiScale.healthy' => 'Terve',
			'onboarding.bmiScale.overweight' => 'Ylipaino',
			'onboarding.bmiScale.obese' => 'Lihavuus',
			'onboarding.bmiScale.categories.underweight' => 'Alipaino',
			'onboarding.bmiScale.categories.healthyWeight' => 'Terve paino',
			'onboarding.bmiScale.categories.overweight' => 'Ylipaino',
			'onboarding.bmiScale.categories.obese' => 'Lihavuus',
			'onboarding.bmiScale.messages.underweight' => 'Voimme auttaa sinua rakentamaan terveellisen suunnitelman kohti tasapainoista painoa ja ravinteikkaita aterioita.',
			'onboarding.bmiScale.messages.healthy' => 'Hyvä työ! Olet terveellä alueella. Autamme sinua ylläpitämään elinvoimaa ja energiatason.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} yksinkertaistaa matkaasi AI-pohjaisella seurannalla, jotta saavutat tavoitteesi mukavasti.',
			'onboarding.bmiScale.messages.obese' => 'Olemme täällä tukemassa sinua henkilökohtaisella ohjauksella ja kestäviksi suunnitelluilla strategioilla terveyttäsi varten.',
			'onboarding.weightGoal.title' => 'Mikä on tavoitteesi?',
			'onboarding.weightGoal.description' => 'Valitse tavoite, joka parhaiten kuvaa mitä haluat saavuttaa',
			'onboarding.activityLevel.title' => 'Kuinka aktiivinen olet?',
			'onboarding.activityLevel.description' => 'Tämä auttaa meitä laskemaan päivittäiset kaloritarpeesi tarkemmin',
			'onboarding.healthConnect.title' => 'Yhdistä Health Connectiin',
			'onboarding.healthConnect.description' => 'Synkronoi terveystietosi parempia näkemyksiä ja automaattista kaloriseurantaa varten',
			'onboarding.healthConnect.overviewDescription' => 'Käytä kulutettuja kaloreita päivätavoitteessasi ja halutessasi jaa kirjaamasi ateriat Health Connectiin.',
			'onboarding.healthConnect.automaticTracking.title' => 'Automaattinen kaloriseuranta',
			'onboarding.healthConnect.automaticTracking.description' => 'Seuraa harjoittelun polttamia kaloreita suosikkisovelluksistasi',
			'onboarding.healthConnect.caloriesBurned.title' => 'Kulutetut kalorit',
			'onboarding.healthConnect.caloriesBurned.description' => 'Lue tämän päivän kulutettujen kalorien kokonaismäärä Health Connectista',
			'onboarding.healthConnect.progressInsights.title' => 'Edistymisnäkymät',
			'onboarding.healthConnect.progressInsights.description' => 'Saat yksityiskohtaisia näkymiä terveystrendeistäsi',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Jaa kirjatut ateriat',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Kirjoita Calorifyyn kirjaamasi ateriat Health Connectiin',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Saumaton integraatio',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synkronoi tietoja suosikkiterveyssovelluksistasi',
			'onboarding.healthConnect.userControl.title' => 'Sinä päätät',
			'onboarding.healthConnect.userControl.description' => 'Valitse haluamasi käyttöoikeus ja muuta pääsyä milloin tahansa',
			'onboarding.healthConnect.connected' => 'Health Connect yhdistetty',
			'onboarding.healthConnect.notConnected' => 'Health Connect ei yhdistetty',
			'onboarding.healthConnect.setup' => 'Aseta Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Ohita nyt',
			'onboarding.healthConnect.statusConnected' => 'Health Connect on yhdistetty.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect on yhdistetty onnistuneesti!',
			'onboarding.healthConnect.statusNotConnected' => 'Valitse Health Connect -ominaisuudet, jotka haluat ottaa käyttöön.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect on yhdistetty osittain. Ota jäljellä oleva käyttöoikeus käyttöön käyttääksesi molempia ominaisuuksia.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Jatka asentamalla tai päivittämällä Health Connect.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connectia ei tueta tällä laitteella.',
			'onboarding.healthConnect.installOrUpdate' => 'Asenna tai päivitä',
			'onboarding.healthConnect.manageAccess' => 'Hallitse pääsyä',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Lupa evätty. Ota käyttöön Health Connect -oikeudet puhelimesi asetuksista ${appLabel}:lle.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Virhe Health Connectin asennuksessa: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Et ole yksin',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Tutkimukset osoittavat, että johdonmukainen seuranta on paras ennustaja pitkäaikaiselle menestykselle.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age}-vuotiaalle ${gender}:lle, joka haluaa ${goal}, johdonmukainen seuranta on tärkein menestyksen ennustaja.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} tekee siitä 10x helpompaa kuin manuaalisesti.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Valmis aloittamaan?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Ota kuva aterioistasi välitöntä analyysia varten',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Kirjaa säännöllisesti nähdäksesi merkittäviä edistysaskeleita',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Seuraa edistystäsi päivittäin pysyäksesi motivoituneena',
			'onboarding.reinforcement.trackingSuccess.button' => 'Aloitetaan',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'henkilö',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'terveempi sinä',
			'onboarding.reinforcement.healthProfile.title' => 'Terveysprofiilisi',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Mittiesi perusteella BMI:si on ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Viimeistellään profiilisi, jotta voimme räätälöidä kokemuksesi.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'saada',
			'onboarding.reinforcement.healthProfile.goalLose' => 'laihtua',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Saavuttaaksesi tavoitteen, sinun täytyy ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Olet tavoitepainossasi! Autamme sinua ylläpitämään sitä.',
			'onboarding.reinforcement.healthProfile.button' => 'Aloitetaan',
			'onboarding.reinforcement.goalLifestyle.title' => 'Erinomainen alku!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Olet ottanut ensimmäisen askeleen kohti ${goalText}. Koska olet ${activityText}, ${appLabel} säätää tavoitteesi vastaamaan elämäntyyliäsi.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Räätälöidyt kalorintavoitteet',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-pohjainen aterian tunnistus',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Yksityiskohtaiset makroravinteiden erittelyt',
			'onboarding.reinforcement.goalLifestyle.button' => 'Aloitetaan',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'tavoitteitasi',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiivinen',
			'tabs.dashboard' => 'Koonti',
			'tabs.history' => 'Historia',
			'home.aiSummary.title' => 'AI-yhteenvetosi',
			'home.aiSummary.logMore' => 'Kirjaa lisää aterioita seuraavien päivien aikana saadaksesi henkilökohtaisia AI-näkemyksiä.',
			'home.aiSummary.loading' => 'Ladataan yhteenvetoa...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} ateriaa kirjattu',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Tasapainopisteet ${score}',
			'home.aiSummary.topFoods' => 'Suosituimmat ruoat',
			'home.aiSummary.trendUp' => 'Kalorit nousemassa',
			'home.aiSummary.trendDown' => 'Kalorit laskevana',
			'home.aiSummary.trendSteady' => 'Kalorit pysyvät tasaisina',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Päivitetty ${time}',
			'home.dailyGoal.title' => 'Aseta päivittäinen tavoitteesi',
			'home.dailyGoal.titleSet' => 'Päivittäinen tavoitteesi',
			'home.dailyGoal.description' => 'Valmis aloittamaan hyvinvointimatkasi? Aseta päivittäinen kalorirajasi alle käynnistääksesi edistymisen.',
			'home.dailyGoal.descriptionSet' => 'Kompassisi on asetettu! Tämä on päivittäinen kalorirajasi, joka ohjaa sinua.',
			'home.dailyGoal.yourGoal' => 'Tavoitteesi',
			'home.dailyGoal.goal' => 'Tavoite',
			'home.dailyGoal.dailyCalories' => 'Päivittäiset kalorit (kcal)',
			'home.dailyGoal.setGoal' => 'Aseta tavoite',
			'home.dailyGoal.intake' => 'Saanti',
			'home.dailyGoal.burned' => 'Poltettu',
			'home.dailyGoal.weightImpact' => 'Vaikutus painoon',
			'home.dailyGoal.estLoss' => 'Arvioitu pudotus',
			'home.dailyGoal.estGain' => 'Arvioitu nousu',
			'home.dailyGoal.kcal' => 'kilokaloria (kcal)',
			'home.dailySummary.title' => 'Päiväkohtainen yhteenveto',
			'home.dailySummary.calories' => 'Kalorit',
			'home.dailySummary.carbs' => 'Hiilihydraatit',
			'home.dailySummary.protein' => 'Proteiini',
			'home.dailySummary.fat' => 'Rasva',
			'home.dailySummary.fiber' => 'Kuitu',
			'home.dailySummary.grams' => 'grammaa',
			'home.dailySummary.chartAccessibilityLabel' => 'Makroravinteiden kaavio',
			'home.intakeProgress.title' => 'Päivän makrojako',
			'home.intakeProgress.target' => 'Tavoite',
			'home.intakeProgress.current' => 'Nykyinen',
			'home.intakeHistory.title' => '7 päivän makrohistoria',
			'home.intakeHistory.trendTitle' => 'Päivän trendi',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Huippu: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Ei historiaa vielä',
			'home.intakeHistory.startLogging' => 'Aloita aterioiden kirjaaminen nähdäksesi\n7 päivän makrotrendit täällä',
			'home.mealLog.title' => 'Kirjatut ateriat',
			'home.mealLog.emptyMessage' => 'Ota kuva viimeisestä ateriastasi kirjataksesi sen tänne.',
			'home.mealLog.noMealsToday' => 'Ei ateriakirjauksia tälle päivälle',
			'home.mealLog.seeAllMeals' => 'Näytä kaikki ateriat',
			'home.mealDescription.title' => 'Nopea lisäys AI:lla',
			'home.mealDescription.description' => 'Kuvaile ateriasi ja anna AI:n hoitaa yksityiskohdat.',
			'home.mealDescription.hint' => 'esim. Aamupalalla söin ison kulhollisen kaurapuuroa viipaloidun banaanin ja mitallisen heraproteiinia ...',
			'home.mealDescription.analyzeMeal' => 'Analysoi ateria',
			'home.favoriteMeals.title' => 'Suosikkiateriat',
			'home.favoriteMeals.description' => 'Lisää nopeasti joku suosikeistasi.',
			'home.favoriteMeals.noFavorites' => 'Ei suosikkia vielä.',
			'home.favoriteMeals.addFavoriteHint' => 'Klikkaa tähteä aterian kohdalla merkitäksesi sen suosikiksi.',
			'home.favoriteMeals.seeAll' => 'Näytä kaikki',
			'home.favoriteMeals.add' => 'Lisää',
			'home.mealSnap.title' => 'Kuvaa & seuraa ateriasi',
			'home.mealSnap.description' => 'Käytä kameraa ottaaksesi kuvan ruoastasi AI-analyysiä varten.',
			'home.mealSnap.openCamera' => 'Avaa kamera',
			'home.mealSnap.gallery' => 'Galleria',
			'home.mealSnap.compressingPhoto' => 'Optimoidaan kuva…',
			'home.mealSnap.uploadingPhoto' => 'Lähetetään kuvaa…',
			'home.connectHealth.title' => 'Synkronoi Health Connectiin',
			'home.connectHealth.description' => 'Synkronoi ravintotietosi Health Connectiin',
			'home.connectHealth.install' => 'Asenna',
			'home.connectHealth.dataUseDescription' => 'Käytä kulutettuja kaloreita tavoitteessasi ja jaa kirjatut ateriat',
			'home.connectHealth.installOrUpdate' => 'Asenna tai päivitä',
			'home.connectHealth.connect' => 'Yhdistä',
			'history.noMeals' => 'Ei kirjattuja aterioita',
			'history.emptyMessage' => 'Ota kuva viimeisestä ateriastasi kirjataksesi sen tänne.',
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
			'meal.nameRequired' => 'Anna aterialle nimi ennen tallentamista.',
			'meal.mealQuantity' => 'Aterian määrä',
			'meal.mealQuantityHint' => 'esim. 1 kulho, 2 viipaletta',
			'meal.timeOfMeal' => 'Ajanhetki',
			'meal.timeOfMealHint' => 'Valitse milloin söit aterian',
			'meal.mealType' => 'Ateriatyyppi',
			'meal.nutrition.calories' => 'Kalorit',
			'meal.nutrition.carbs' => 'Hiilihydraatit (g)',
			'meal.nutrition.protein' => 'Proteiini (g)',
			'meal.nutrition.fat' => 'Rasva (g)',
			'meal.nutrition.fiber' => 'Kuitu (g)',
			'meal.deleteConfirmation.title' => 'Poista ateria',
			'meal.deleteConfirmation.message' => 'Haluatko varmasti poistaa tämän ateriakirjauksen?',
			'meal.deleteConfirmation.cancel' => 'Peruuta',
			'meal.deleteConfirmation.delete' => 'Poista',
			'meal.addedToLog' => 'Ateria lisätty kirjanpitoosi!',
			'meal.couldNotAdd' => ({required Object error}) => 'Aterian lisääminen epäonnistui: ${error}',
			'meal.savedSuccessfully' => 'Ateria lisätty onnistuneesti!',
			'meal.updatedSuccessfully' => 'Ateria päivitetty onnistuneesti!',
			'meal.errorSaving' => ({required Object error}) => 'Virhe tallennettaessa ateriaa: ${error}',
			'meal.removedFromFavorites' => 'Poistettu suosikeista!',
			'meal.savedAsFavorite' => 'Ateria tallennettu suosikiksi!',
			'meal.unfavorite' => 'Poista suosikista',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Suosikin päivittäminen epäonnistui: ${error}',
			'meal.feedbackThanks' => 'Kiitos palautteesta!',
			'meal.reanalysisUpdated' => 'Päivitettiin aterian analyysi palautteesi perusteella.',
			'meal.failedToProcess' => ({required Object error}) => 'Käsittely epäonnistui: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Kuvan käsittely epäonnistui: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Virhe kuvan pakkaamisessa: ${error}',
			'meal.failedToSave' => 'Tietojen tallennus epäonnistui. Yritä uudelleen.',
			'meal.skip' => 'Ohita',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Kysymys ${current} / ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Ei saatavilla olevia kysymyksiä',
			'meal.questionFlow.next' => 'Seuraava',
			'meal.questionFlow.continueLabel' => 'Jatka',
			'meal.analysis.title' => 'Analysoidaan ateriaasi',
			'meal.analysis.stepStarted' => 'Aloitetaan…',
			'meal.analysis.stepDecomposition' => 'Ymmärretään ateriaasi…',
			'meal.analysis.stepIngredients' => 'Etsitään ainesosia ja ravintoarvoja…',
			'meal.analysis.stepUncertainty' => 'Tarkistetaan varmuutta…',
			'meal.analysis.stepMealTypeQuestion' => 'Melkein valmis…',
			'meal.analysis.stepResult' => 'Viimeistellään tulosta…',
			'meal.analysis.stepError' => 'Jotain meni pieleen',
			'meal.analysis.stepDefault' => 'Analysoidaan ateriaasi…',
			'meal.analysis.progressUnderstand' => 'Ymmärretään ateria',
			'meal.analysis.progressMatch' => 'Haetaan ainesosien ravintoarvoja',
			'meal.analysis.progressCheck' => 'Tarkistetaan annoskoot ja varmuus',
			'meal.analysis.progressMealType' => 'Valitaan ateriatyyppi',
			'meal.analysis.progressFinish' => 'Lasketaan kalorit ja makrot',
			'meal.analysis.detectedIngredientHeading' => 'Havaitsemamme ainesosat',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} lisää',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ainesosaa tunnistettu',
			'meal.analysis.ingredientsPending' => 'Skannataan ainesosia…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '”${text}”',
			'meal.analysis.offlineTip0' => 'Vinkki: Johdonmukaisuus voittaa täydellisyyden—säännölliset merkinnät paljastavat merkitykselliset kaavat.',
			'meal.analysis.offlineTip1' => 'Vinkki: Kuvia varten luonnonvalo ja ylhäältä otettu näkymä auttavat annosarvioissa.',
			'meal.analysis.offlineTip2' => 'Vinkki: Mainitse juomat, kastikkeet ja paistorasva—ne lisäävät kaloreita, jotka usein unohdetaan.',
			'meal.analysis.offlineTip3' => 'Vinkki: Pikainen annosmerkintä (1 kulho, iso kahvi) tekee arvioista tarkempia.',
			'meal.analysis.offlineTip4' => 'Vinkki: Aterian jälkeinen kirjaaminen rakentaa silti tapaa; täydellisyyttä ei vaadita.',
			'meal.analysis.offlineTip5' => 'Vinkki: Kerro, miten ruoka on valmistettu, jos se muuttaa kaloreita paljon (paistettu vs. uunissa).',
			'meal.localInference.reviewTitle' => 'Tarkista tunnistetut ainesosat',
			'meal.localInference.reviewSubtitle' => 'Tämä tulkittiin laitteellasi. Korjaa nimet tai annoskoot ennen ravintoarvojen laskemista.',
			'meal.localInference.mealName' => 'Aterian nimi',
			'meal.localInference.ingredient' => 'Ainesosa',
			'meal.localInference.grams' => 'Arvioidut grammat',
			'meal.localInference.removeIngredient' => 'Poista ainesosa',
			'meal.localInference.continueLabel' => 'Jatka',
			'meal.localInference.invalidProposal' => 'Lisää vähintään yksi ainesosa ja käytä positiivista grammamäärää.',
			'meal.localInference.localUnavailable' => 'Laitteen oma analyysi ei ole tällä hetkellä käytettävissä.',
			'meal.localInference.calculationDetails' => 'Näin tämä laskettiin',
			'meal.localInference.interpretationLocal' => 'Ainesosat tulkittu tällä laitteella',
			'meal.localInference.interpretationCloud' => 'Ainesosat tulkittu pilvipalvelussa',
			'meal.localInference.interpretationManual' => 'Ainesosat tarkistettu tai muokattu käyttäjän toimesta',
			'meal.localInference.nutritionRemote' => 'Ravintoarvot haettu USDA:sta Calorifyn kautta',
			'meal.localInference.nutritionFallback' => 'Osa ravintoarvoista arvioitiin etänä',
			'meal.localInference.calculationServer' => 'Kalorit ja makroravinteet laskettu Calorifyn toimesta',
			'meal.localInference.fallbackUsed' => 'Paikallinen analyysi siirtyi pilvikäsittelyyn',
			'meal.localInference.noRawContent' => 'Diagnostiikkakuittaukset eivät sisällä ateriatekstiäsi tai valokuvaasi.',
			'meal.feedback.title' => 'Mikä näyttää väärältä?',
			'meal.feedback.subtitle' => 'Auttaaksesi parantamaan analyysiä, valitse yksi tai useampi ongelma.',
			'meal.feedback.tellUsMore' => 'Kerro lisää',
			'meal.feedback.describeIncorrect' => 'Kuvaile mikä oli virheellistä',
			'meal.feedback.submit' => 'Lähetä',
			'meal.feedback.issueFoodIdentification' => 'Ruoan tunnistus',
			'meal.feedback.issuePortionSize' => 'Annoksen koko',
			'meal.feedback.issueCalorieDistribution' => 'Kalorien jakautuminen',
			'meal.feedback.issueMacrosWrong' => 'Makrot väärin',
			'meal.feedback.issueMissingItems' => 'Puuttuvat ainesosat',
			'meal.feedback.issueExtraItems' => 'Liian monta ainesosaa',
			'meal.feedback.issueOther' => 'Muu',
			'favorites.title' => 'Suosikit',
			'favorites.empty' => 'Ei suosikkia vielä.',
			'favorites.searchPlaceholder' => 'Hae suosikkiaterioita',
			'favorites.searchEmptyTitle' => 'Hakusi ei vastaa yhtään suosikkia',
			'favorites.searchEmptySubtitle' => 'Kokeile toista aterian nimeä, määrää tai ateriatyyppiä.',
			'favorites.sortLabel' => 'Lajittele suosikit',
			'favorites.undo' => 'Kumoa',
			'favorites.removed' => ({required Object name}) => 'Poistettiin ${name} suosikeista',
			'favorites.sortOptions.recent' => 'Viimeisimmät',
			'favorites.sortOptions.calories' => 'Kalorit',
			'favorites.sortOptions.alphabetical' => 'A–Ö',
			'profile.title' => 'Profiili',
			'profile.noProfileData' => 'Profiilitietoja ei löytynyt',
			'profile.yourProfile' => 'Profiilisi',
			'profile.viewAndManage' => 'Katso ja hallinnoi terveystietojasi',
			'profile.sections.profile' => 'PROFIILI',
			'profile.sections.basicInformation' => 'PERUSTIEDOT',
			'profile.sections.goalsAndActivity' => 'TAVOITTEET & AKTIVITEETTI',
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
			'profile.calculatedValues.dailyGoal' => 'Päivittäinen tavoite',
			'profile.calculatedValues.calPerDay' => 'kal/pv',
			'profile.calculatedValues.notAvailable' => 'Ei saatavilla',
			'healthScore.title' => 'Terveysarvo',
			'healthScore.whyThisScore' => 'Miksi tämä arvo?',
			'healthScore.note' => 'Tämä arvio on AI-arvio tunnistettujen ainesosien ja ravintotiheyden perusteella. Kysy aina ammattilaiselta henkilökohtaista ravitsemusneuvontaa.',
			'healthScore.unhealthy' => 'Epäterveellinen',
			'healthScore.healthy' => 'Terveellinen',
			'healthScore.neutral' => 'Neutraali',
			'editProfile.title' => 'Muokkaa profiilia',
			'editProfile.sections.personalInformation' => 'HENKILÖTIEDOT',
			'editProfile.sections.physicalMeasurements' => 'KEHON MITAT',
			'editProfile.sections.goalsAndActivity' => 'TAVOITTEET & AKTIVITEETTI',
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
			'editProfile.unitLbs' => 'paunaa (lb)',
			'editProfile.metricCm' => 'Metrinen (cm)',
			'editProfile.imperialFtIn' => 'Imperiaalinen (ft/in)',
			'editProfile.metricKg' => 'Metrinen (kg)',
			'editProfile.imperialLbs' => 'Imperiaalinen (lbs)',
			'editProfile.genders.male' => 'Mies',
			'editProfile.genders.female' => 'Nainen',
			'editProfile.genders.other' => 'Muu',
			'editProfile.weightGoals.loseWeight.name' => 'Läihtyminen',
			'editProfile.weightGoals.loseWeight.description' => 'Luo kalorivajetta laihtumista varten',
			'editProfile.weightGoals.maintainWeight.name' => 'Säilytä paino',
			'editProfile.weightGoals.maintainWeight.description' => 'Säilytä nykyinen painosi',
			'editProfile.weightGoals.gainWeight.name' => 'Lisää painoa',
			'editProfile.weightGoals.gainWeight.description' => 'Luo kaloriylijäämä painon lisäämiseksi',
			'editProfile.activityLevels.sedentary.name' => 'Vähän liikkuva',
			'editProfile.activityLevels.sedentary.description' => 'Vähän tai ei lainkaan liikuntaa',
			'editProfile.activityLevels.lightlyActive.name' => 'Kevyesti aktiivinen',
			'editProfile.activityLevels.lightlyActive.description' => 'Kevyt liikunta 1–3 päivää/viikko',
			'editProfile.activityLevels.moderatelyActive.name' => 'Kohtalaisesti aktiivinen',
			'editProfile.activityLevels.moderatelyActive.description' => 'Kohtalainen liikunta 3–5 päivää/viikko',
			'editProfile.activityLevels.veryActive.name' => 'Erittäin aktiivinen',
			'editProfile.activityLevels.veryActive.description' => 'Rankka liikunta 6–7 päivää/viikko',
			'editProfile.activityLevels.extremelyActive.name' => 'Erittäin intensiivinen',
			'editProfile.activityLevels.extremelyActive.description' => 'Todella raskas liikunta tai fyysinen työ',
			'settings.title' => 'Asetukset',
			'settings.sections.profile' => 'PROFIILI',
			'settings.sections.localization' => 'LOKALISAATIO',
			'settings.sections.notifications' => 'ILMOITUKSET',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.localInference' => 'LAITTEEN OMA ANALYYSI',
			'settings.sections.supportAndLegal' => 'TUKI & LAINSÄÄDÄNTÖ',
			'settings.sections.about' => 'TIETOA',
			'settings.sections.dangerZone' => 'VAIKUTUSALUE',
			'settings.sections.developer' => 'KEHITTÄJÄ',
			'settings.editProfile.title' => 'Muokkaa profiilia',
			'settings.editProfile.subtitle' => 'Päivitä henkilökohtaiset tietosi',
			'settings.language.title' => 'Kieli',
			'settings.language.subtitle' => 'Valitse haluamasi kieli',
			'settings.language.searchHint' => 'Hae kieliä...',
			'settings.language.noResults' => 'Ei tuloksia',
			'settings.heightUnit.title' => 'Pituusyksikkö',
			'settings.weightUnit.title' => 'Painoyksikkö',
			'settings.mealReminders.title' => 'Ateriamuistutukset',
			'settings.mealReminders.subtitle' => 'Pysy raiteilla ajankohtaisilla muistutuksilla',
			'settings.localInference.title' => 'Aterioiden paikallinen analyysi',
			'settings.localInference.subtitle' => 'Tulkitse tuetut ateriat Gemini Nanolla ennen ravintoarvojen laskemista',
			'settings.localInference.unavailable' => 'Ei käytettävissä tällä laitteella',
			'settings.localInference.rolloutUnavailable' => 'Yhteensopiva laitteisto löytyi, mutta tämä ominaisuus ei ole käytössä tässä sovellusversiossa',
			'settings.localInference.modelSetup' => 'Gemini Nanon latauksen on valmistuttava ennen kuin tämä voidaan ottaa käyttöön',
			'settings.localInference.useLocalTitle' => 'Käytä paikallista analyysia',
			'settings.localInference.useLocalSubtitle' => 'Valinnainen ja oletuksena pois päältä. Tulokset voivat olla epätarkempia monimutkaisten aterioiden kohdalla.',
			'settings.localInference.disclosureTitle' => 'Ennen paikallisen analyysin käyttöönottoa',
			'settings.localInference.disclosureBody' => 'Gemini Nano voi tunnistaa ainesosia ja arvioida annoskokoja tuetuilla Android-laitteilla. Tarkistamasi ainesosaehdotus lähetetään Calorifylle USDA-ravintoarvojen vahvistusta ja laskentaa varten.',
			'settings.localInference.disclosureLimit1' => 'Monimutkaiset annokset, piilotetut ainesosat ja annoskoot saatetaan tunnistaa väärin.',
			'settings.localInference.disclosureLimit2' => 'Malli voi olla käytettävissämätön latauksen aikana, kun se on varattu, taustalla tai laitteen rajoitusten vuoksi.',
			'settings.localInference.disclosureLimit3' => 'Jos paikallinen tulkinta ei valmistu, tämä beta-versio lähettää alkuperäisen ateriakuvauksesi automaattisesti Calorifylle pilvianalyysia varten.',
			'settings.localInference.acknowledgement' => 'Ymmärrän, että minun tulee tarkistaa tunnistetut ainesosat ja annoskoot.',
			'settings.localInference.enable' => 'Hyväksy ja ota käyttöön',
			'settings.localInference.cancel' => 'Peruuta',
			'settings.theme.title' => 'Teema',
			'settings.theme.light' => 'Vaalea',
			'settings.theme.dark' => 'Tumma',
			'settings.theme.system' => 'Järjestelmä',
			'settings.sendFeedback.title' => 'Lähetä palautetta',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Auta parantamaan ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} - Sovelluspalaute',
			'settings.sendFeedback.emailBodyPrefix' => 'Anna palautteesi alla:',
			'settings.sendFeedback.appVersion' => 'Sovelluksen versio',
			'settings.sendFeedback.device' => 'Laite',
			'settings.sendFeedback.osVersion' => 'Käyttöjärjestelmäversio',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Vie ateriakirja',
			'settings.exportMealHistory.subtitle' => 'Jaa CSV tiedosto kirjatuista aterioistasi',
			'settings.exportMealHistory.shareText' => 'Calorify meal history export',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Ateriakirjan vieminen epäonnistui: ${error}',
			'settings.clearAllData.title' => 'Tyhjennä kaikki tiedot',
			'settings.clearAllData.subtitle' => 'Poista kaikki tietosi peruuttamattomasti',
			'settings.clearAllData.localOnlySubtitle' => 'Poista tälle laitteelle tallennetut Calorify-tiedot',
			'settings.clearAllData.confirmationTitle' => 'Tyhjennetäänkö kaikki tiedot?',
			'settings.clearAllData.confirmationMessage' => 'Tätä toimenpidettä ei voi peruuttaa. Kaikki kirjatut ateriasi, suosikit ja profiiliasetukset poistetaan pysyvästi.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Tämä poistaa kirjatut ateriat, suosikit ja profiiliasetukset pysyvästi tältä laitteelta. Health Connectiin jo jaettuja aterioita ja Health Connectin käyttöoikeuksia hallitaan erikseen kohdassa Asetukset > Health Connect.',
			'settings.clearAllData.cancel' => 'Peruuta',
			'settings.clearAllData.clearEverything' => 'Tyhjennä kaikki',
			'settings.debugOptions.title' => 'Debug-asetukset',
			'settings.developerModeEnabled' => 'Kehittäjätila käytössä!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Katso ja hallinnoi käyttöoikeuksia',
			'settings.healthConnect.unavailable.title' => 'Health Connect ei saatavilla',
			'settings.healthConnect.unavailable.description' => 'Health Connect ei ole käytettävissä tällä laitteella. Asenna Health Connect Play Storesta (Android 9+) tai päivitä Android 14+:aan.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connectia ei tueta tällä laitteella.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect vaatii huomiota',
			'settings.healthConnect.updateRequired.description' => 'Asenna tai päivitä Health Connect ennen pääsyn hallintaa.',
			'settings.healthConnect.updateRequired.action' => 'Asenna tai päivitä',
			'settings.healthConnect.permissions.title' => 'Oikeudet',
			'settings.healthConnect.permissions.description' => 'Seuraavia oikeuksia pyydetään tarjotaksemme Health Connect -integraation:',
			'settings.healthConnect.permissions.granted' => 'Myönnetty',
			'settings.healthConnect.permissions.notGranted' => 'Ei myönnetty',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Lue poltetut kokonaiskalorit',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Antaa sovellukselle luvan lukea Health Connectista polttamasi kokonaiskalorit.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Tätä käyttöoikeutta käytetään näyttämään päivittäinen kalorinkulutuksesi sovelluksessa, jotta ymmärrät kokonaissähkönkulutuksesi päivän aikana.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Lue ravintotiedot',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Antaa sovellukselle luvan lukea ravintotietoja Health Connectista.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Tämä oikeus sallii sovelluksen lukea muiden Health Connectiin yhdistettyjen sovellusten kirjaamia ravintotietoja ja tarjoaa kattavamman kuvan ravinnostasi.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Kirjoita ravintotietoja',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Antaa sovellukselle luvan kirjoittaa ravintotietoja Health Connectiin.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Tämä oikeus sallii sovelluksen synkronoida kirjauksesi Health Connectiin, jolloin ravintotietosi ovat muiden käyttämiesi terveys- ja kuntoilussovellusten saatavilla.',
			'settings.healthConnect.managePermissions' => 'Hallitse käyttöoikeuksia',
			'settings.healthConnect.openSettings' => 'Avaa Health Connect -asetukset',
			'settings.healthConnect.disconnect' => 'Katkaise Health Connect -yhteys',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Katkaistaanko Health Connect -yhteys?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify menettää Health Connectin käyttöoikeuden. Sinne jo kirjoitettuja tietoja ei poisteta.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Katkaise yhteys',
			'settings.healthConnect.deleteSyncedMeals' => 'Poista Calorify-ateriat Health Connectista',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Poistetaanko synkronoidut ateriat?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Poistetaanko tämän Calorify-version synkronoimat ateriat Health Connectista? Paikallinen aterialoki ei muutu. Vanhemmat Calorify-merkinnät on ehkä edelleen poistettava Health Connectin Hallitse tietoja -toiminnolla.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Poista synkronoidut ateriat',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Calorify-ateriat poistettiin Health Connectista.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Synkronoituja aterioita ei voitu poistaa. Yritä uudelleen.',
			'settings.healthConnect.connectionPartial' => 'Jotkin Health Connect -ominaisuudet ovat käytössä.',
			'settings.healthConnect.connectionComplete' => 'Molemmat Health Connect -ominaisuudet ovat käytössä.',
			'settings.healthConnect.actionFailed' => 'Health Connectia ei voitu avata. Yritä uudelleen.',
			'settings.healthConnect.requestPermissions' => 'Pyydä oikeuksia',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Käyttöoikeuspyyntö keskeytettiin tai epäonnistui. Yritä uudelleen tai myönnä oikeudet manuaalisesti Health Connectin asetuksista.',
			'settings.healthConnect.permissionRequestFailed' => 'Oikeuspyyntöä ei voitu lähettää. Yritä uudelleen tai myönnä oikeudet manuaalisesti Health Connectin asetuksista.',
			'settings.healthConnect.requestingPermissions' => 'Pyydetään...',
			'settings.about.title' => 'Tietoa',
			'settings.about.tagline' => 'Nopea, ilmainen ja tietosuoja etusijalla oleva kaloritehokkuus',
			'settings.about.ourStory.title' => 'Tarinaamme',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} syntyi yksinkertaisesta turhautumisesta: useimmat kaloriseurantasovellukset ovat joko liian monimutkaisia, vaativat jatkuvaa manuaalista syöttöä, veloittavat suuria tilausmaksuja tai vaarantavat yksityisyyden.\n\nYksittäisenä kehittäjänä halusin rakentaa jotain yksinkertaisempaa ja reilumpaa — sovelluksen, joka käyttää AI:ta vähentääkseen vaivaa, pysyy nopeana ja ilmaisena käyttää, ja käsittelee terveystietojasi kunnioittavasti.\n\n${appLabel} on sovellus, jonka toivoisin olevan olemassa: ei tilejä, ei seurantaa, ei mainoksia — vain selkeitä, käytännöllisiä näkemyksiä ja sinun terveystavoitteesi.',
			'settings.about.privacy.title' => 'Yksityisyytesi on tärkeä',
			'settings.about.privacy.description' => 'Yksityisyys ei ole harkinnanvarainen lisä — se on suunnitteluperiaate. Tässä, mitä se tarkoittaa käytännössä:',
			'settings.about.privacy.noAccounts' => 'Ei tilejä vaadita\nKäytä sovellusta välittömästi. Ei kirjautumisia, ei identiteettejä.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Ei käytöksen seurantaa\n${appLabel} ei seuraa toimintaasi, rakenna käyttötottumuksia tai seuraa sinua sovellusten tai verkkosivujen välillä.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Rajoitettu analytiikka ja diagnostiikka\n${appLabel} käyttää sovelluksen perustapahtumia ja kaatumisdiagnostiikkaa luotettavuuden parantamiseen. Terveystietojen arvoja ei käytetä mainontaan eikä myydä.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Mainokseton suunnittelu\n${appLabel} on rakennettu toimimaan ilman mainoksia tai dataperusteista rahastusta.',
			'settings.about.privacy.noDataSelling' => 'Ei datan myyntiä\nTerveystietojasi ei koskaan myydä tai jaeta kolmansille osapuolille.',
			'settings.about.privacy.localStorage' => 'Laitteella ensisijaisesti tallennus\nTietosi säilyvät laitteellasi.',
			'settings.about.privacy.privacyPolicy' => 'Tietosuojakäytäntö',
			'settings.about.developer.title' => 'Rakennettu yksinkehittäjän toimesta',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} on rakennettu ja ylläpidetty yhden kehittäjän toimesta, joka keskittyy rauhalliseen, yksityisyyttä kunnioittavaan terveysohjelmistoon.\n\nPalaute luetaan henkilökohtaisesti ja auttaa muovaamaan sovelluksen kehityssuuntaa.',
			'settings.about.developer.website' => 'Verkkosivusto',
			'settings.about.developer.email' => 'Sähköposti',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Pidätkö ${appLabel}:sta?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Palautteesi auttaa tekemään ${appLabel}:sta parempaa kaikille.',
			'settings.about.feedback.rateApp' => 'Arvostele Play Storessa',
			'settings.about.feedback.sendFeedback' => 'Lähetä palaute',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify-versio ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Koonti ${buildNumber}',
			'reminders.title' => 'Pysy raiteilla muistutuksilla',
			'reminders.description' => 'Saat lempeitä muistutuksia kirjataksesi ateriasi ja pysyäksesi johdonmukaisena ravintotavoissasi',
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
			'reminders.change' => 'Vaihda',
			'reminders.enableNotifications' => 'Ota ilmoitukset käyttöön',
			'reminders.skipForNow' => 'Ohita nyt',
			'reminders.saveChanges' => 'Tallenna muutokset',
			'reminders.enabledSuccessfully' => 'Ilmoitukset otettu käyttöön onnistuneesti!',
			'reminders.permissionDenied' => 'Ilmoitusoikeus evätty',
			'reminders.errorEnabling' => ({required Object error}) => 'Virhe ilmoitusten ottamisessa käyttöön: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Virhe asetusten viimeistelyssä: ${error}',
			'notifications.breakfast.title' => 'Aamupala-aika! 🍳',
			'notifications.breakfast.body' => 'Muista kirjata aamiaisesi',
			'notifications.lunch.title' => 'Lounasaika! 🥗',
			'notifications.lunch.body' => 'On aika kirjata lounas',
			'notifications.dinner.title' => 'Päivällisaika! 🍽️',
			'notifications.dinner.body' => 'Muista kirjata päivällisesi',
			'notifications.snack.title' => 'Välipala-aika! 🍎',
			'notifications.snack.body' => 'Aika terveelliselle välipalalle',
			'notifications.test.title' => 'Testi-ilmoitus',
			'login.title' => 'Kirjaudu',
			_ => null,
		} ?? switch (path) {
			'login.signInWithGoogle' => 'Kirjaudu Googlella',
			'login.signInFailed' => 'Google-kirjautuminen epäonnistui tai peruttiin.',
			'disclaimer.pleaseNote' => 'Huomioithan',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} antaa arvioidut ravintoarvot. Tarkkuus riippuu antamistasi tiedoista ja ruokien vaihteluista. Käytä ohjeellisena, ei lopullisena tietolähteenä. Kysy henkilökohtaista ravitsemusneuvontaa ammattilaiselta.',
			'disclaimer.snap.portionSize.title' => 'Annoskoko',
			'disclaimer.snap.portionSize.description' => 'Arvioiden tarkkuus perustuu pitkälti oikeaan annoskoon arviointiisi.',
			'disclaimer.snap.preparationMethods.title' => 'Valmistustavat',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Ruokien valmistustavat voivat merkittävästi muuttaa ravintoarvoja. ${appLabel}in arviot eivät aina huomioi näitä eroja.',
			'disclaimer.snap.ingredients.title' => 'Ainesosat',
			'disclaimer.snap.ingredients.description' => 'Monimutkaiset ruoat, joissa on paljon piilotettuja ainesosia, saattavat johtaa epätarkempiin arvioihin.',
			'disclaimer.snap.databaseLimitations.title' => 'Tietokantaan liittyvät rajoitukset',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}in ruokarekisteri on laaja, mutta se ei välttämättä sisällä jokaista mahdollista ruokaa tai variaatiota.',
			'disclaimer.weightEstimate.title' => 'Tietoa painoarviosta',
			'disclaimer.weightEstimate.description' => 'Projektio painonmuutoksesta on teoreettinen arvio perustuen yksinkertaiseen kalorien sisään vs. ulos -malliin. Se on tarkoitettu motivoivaksi ohjaukseksi, ei ennusteeksi todellisesta painostasi.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalorien tarkkuus',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Tämä arvio on yhtä tarkka kuin kirjaamiesi kulutus- ja polttoarvioiden tarkkuus. Virheellinen kirjaaminen johtaa virheelliseen ennusteeseen.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiset tekijät',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Todellinen laihtuminen/lihastus riippuu aineenvaihdunnasta, hormoneista, unesta, stressistä, nesteytyksestä ja muista yksilöllisistä tekijöistä, joita ${appLabel} ei voi mitata.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Veden paino & vaihtelut',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normaali päiväkohtainen paino voi vaihdella merkittävästi vedenpidätyksen, ruoansulatuksen ja ajankohdan vuoksi. Arvio ei ota huomioon näitä päivittäisiä vaihteluita.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Ammatillinen ohjaus',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Älä käytä tätä arviota lääketieteellisten päätösten tekemiseen. Kysy aina terveydenhuollon ammattilaiselta tai rekisteröidyltä ravitsemusterapeutilta henkilökohtaista painonhallintaohjeistusta.',
			'disclaimer.healthMetrics.description' => 'Nämä mittarit auttavat ymmärtämään kehosi energiantarpeita ja ohjaavat ravitsemustavoitteitasi.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Perusaineenvaihdunta (BMR) on kalorimäärä, jonka kehosi polttaa levossa ylläpitääkseen perustoimintoja, kuten hengitystä ja verenkiertoa. BMR riippuu iästäsi, sukupuolestasi, pituudestasi ja painostasi. Korkeampi BMR tarkoittaa, että kehosi polttaa luonnollisesti enemmän kaloreita levossa, usein enemmän lihasmassan, nuoren iän tai miehisyyden takia. Alhaisempi BMR viittaa yleensä vähäisempään lihasmassan määrään, korkeampaan ikään tai naiseuteen.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Kokonaispäivittäinen energiankulutus (TDEE) on päivittäinen kalorimäärä, jonka poltat, ja siihen sisältyy BMR sekä liikunnasta ja päivittäisestä liikkumisesta poltetut kalorit. TDEE riippuu BMR:stäsi ja aktiivisuustasostasi. Korkeampi TDEE tarkoittaa, että poltat enemmän kaloreita kokonaisuudessaan, yleensä aktiivisuuden tai korkeamman BMR:n vuoksi. Alhaisempi TDEE viittaa vähäisempään päivittäiseen aktiivisuuteen tai matalampaan BMR:ään.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Päivittäinen tavoite',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Päivittäinen tavoite on suositeltu päivittäinen kalorinsaantisi TDEE:si ja painotavoitteesi perusteella. Laihduttaessa kulutat vähemmän kaloreita kuin TDEE. Painon ylläpitämiseksi vastaat TDEE:tä. Painon nostamiseksi kulutat enemmän kaloreita kuin TDEE. Tämä auttaa sinua saavuttamaan halutun painon muutoksen terveellisellä tahdilla.',
			'disclaimer.calorieExpenditure.title' => 'Arvio kalorinkulutuksesta',
			'disclaimer.calorieExpenditure.description' => 'Kun Health Connect -data ei ole saatavilla, arvioimme tämän päivän poltetut kalorit käyttäen perusaineenvaihduntaasi (BMR) ja aktiivisuustasoasi (TDEE), skaalaamalla sen kuluneen päivän osuuden mukaan.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Miten arvio lasketaan',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Laskemme TDEE:si (profiilisi perusteella) ja kerromme sen kuluneen päivän osuudella (tunnit + minuutit) / 24 arvioidaksemme tähän mennessä poltetut kalorit.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Ammatillinen ohjaus',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Älä käytä tätä arviota lääketieteellisten päätösten tekemiseen. Kysy aina terveydenhuollon ammattilaiselta tai rekisteröidyltä ravitsemusterapeutilta henkilökohtaista painonhallintaohjeistusta.',
			'localNutritionPhase4.nutritionBundled' => 'Ravintoarvot haettiin ladatusta USDA-paketista',
			'localNutritionPhase4.nutritionCached' => 'Ravintoarvot haettiin laitteen USDA-välimuistista',
			'localNutritionPhase4.nutritionMixed' => 'Ravintoarvot yhdistettiin ladatuista, välimuistiin tallennetuista ja etänä haetuista USDA-riveistä',
			'localNutritionPhase4.calculationLocal' => 'Kalorit ja makrot laskettiin tällä laitteella',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: ladattu USDA-paketti',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: laitteen USDA-välimuisti',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: Calorifyn kautta haettu USDA-rivi',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: deterministinen ravintoarvovakio',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · tietoaineisto ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Pienempi',
			'localNutritionPhase4.portionEstimated' => 'Arvioitu',
			'localNutritionPhase4.portionLarger' => 'Suurempi',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Mikä annoskoko vastasi parhaiten ainesta ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Mikä ateria tämä oli?',
			'localNutritionPhase4.localNutritionTip' => 'Laskettu varmennetuista paikallisista ravintoarvotiedoista.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Lataa ravintoarvotiedot',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Käytä varmennettuja USDA-rivejä ja determinististä laskentaa tällä laitteella, kun kaikki ainesosat on katettu.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Paikallisia ravintoarvotietoja ei ole saatavilla tähän sovellusversioon.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Varmennettua ravintoarvopakettia ei ole ladattu.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Ravintoarvotietoja ladataan ja varmennetaan…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Paketti ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} USDA-riviä välimuistissa · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Tarkista päivitykset',
			'localNutritionPhase4.offlineNutritionClear' => 'Tyhjennä paikalliset ravintoarvotiedot',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Tyhjennetäänkö paikalliset ravintoarvotiedot?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Tämä poistaa ladatun USDA-paketin ja hakuvälimuistin. Kirjatut ateriat säilyttävät täsmällisen ravintoarvotilannekuvan, jota käytettiin tallennettaessa.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Tyhjennä tiedot',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Paikallisia ravintoarvotietoja ei voitu ladata ja varmentaa: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Paikalliset ravintoarvotiedot tyhjennettiin',
			'common.close' => 'Sulje',
			'common.kContinue' => 'Jatka',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Pidätkö ${appLabel}:sta?',
			'feedbackRating.yes' => 'Kyllä, pidän siitä',
			'feedbackRating.no' => 'En oikeastaan',
			'feedbackRating.rateStepHeading' => 'Arvostele Play Storessa',
			'feedbackRating.emailStepHeading' => 'Lähetä palaute sähköpostilla',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Pikainen arvostelu auttaa muita löytämään ${appLabel}:n ja pitää kehitystyön käynnissä. Voisitko hetken jättää arvion?',
			'feedbackRating.shareFeedbackViaEmail' => 'Palautteesi muokkaa tulevaa — luemme jokaisen viestin. Haluatko jakaa ajatuksesi sähköpostilla?',
			'feedbackRating.rateCta' => 'Arvostele Play Storessa',
			'feedbackRating.maybeLater' => 'Ehkä myöhemmin',
			'feedbackRating.sendFeedback' => 'Lähetä palaute',
			'feedbackRating.noThanks' => 'Ei kiitos',
			'feedbackRating.aboutUsDescription' => 'Tehty huolella pienellä tiimillä. Keskitymme yksityisyyteen, yksinkertaisuuteen ja auttamaan sinua kehittämään parempia ruokailutottumuksia.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Kiinnostaa kuka ${appLabel}:n takana on? Katso ',
			'feedbackRating.aboutUsLinkLabel' => 'Tietoa meistä',
			'feedbackRating.thankYouMessage' => 'Kiitos! Kysymme taas myöhemmin.',
			'health.syncFailed' => 'Synkronointi Health Connectiin epäonnistui',
			'health.mealSynced' => 'Ateria synkattu Health Connectiin',
			_ => null,
		};
	}
}
