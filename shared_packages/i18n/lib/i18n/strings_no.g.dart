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
class TranslationsNo with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsNo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.no,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <no>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsNo _root = this; // ignore: unused_field

	@override 
	TranslationsNo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsNo(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Norsk';
	@override String get flag => '🇳🇴';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsNo errors = _TranslationsErrorsNo._(_root);
	@override late final _TranslationsOnboardingNo onboarding = _TranslationsOnboardingNo._(_root);
	@override late final _TranslationsTabsNo tabs = _TranslationsTabsNo._(_root);
	@override late final _TranslationsHomeNo home = _TranslationsHomeNo._(_root);
	@override late final _TranslationsHistoryNo history = _TranslationsHistoryNo._(_root);
	@override late final _TranslationsMealNo meal = _TranslationsMealNo._(_root);
	@override late final _TranslationsFavoritesNo favorites = _TranslationsFavoritesNo._(_root);
	@override late final _TranslationsProfileNo profile = _TranslationsProfileNo._(_root);
	@override late final _TranslationsHealthScoreNo healthScore = _TranslationsHealthScoreNo._(_root);
	@override late final _TranslationsEditProfileNo editProfile = _TranslationsEditProfileNo._(_root);
	@override late final _TranslationsSettingsNo settings = _TranslationsSettingsNo._(_root);
	@override late final _TranslationsRemindersNo reminders = _TranslationsRemindersNo._(_root);
	@override late final _TranslationsNotificationsNo notifications = _TranslationsNotificationsNo._(_root);
	@override late final _TranslationsLoginNo login = _TranslationsLoginNo._(_root);
	@override late final _TranslationsDisclaimerNo disclaimer = _TranslationsDisclaimerNo._(_root);
	@override late final _TranslationsCommonNo common = _TranslationsCommonNo._(_root);
	@override late final _TranslationsFeedbackRatingNo feedbackRating = _TranslationsFeedbackRatingNo._(_root);
	@override late final _TranslationsHealthNo health = _TranslationsHealthNo._(_root);
}

// Path: errors
class _TranslationsErrorsNo implements TranslationsErrorsEn {
	_TranslationsErrorsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Du har sendt for mange forespørsler. Vennligst vent et øyeblikk og prøv igjen.';
	@override String get networkError => 'Nettverksfeil. Sjekk internettforbindelsen din.';
	@override String get unknownError => 'Noe gikk galt. Prøv igjen senere.';
	@override String get loadingProfileData => 'Feil ved lasting av profildata';
	@override String get somethingWentWrong => 'Noe gikk galt.';
	@override String get retry => 'Prøv igjen';
}

// Path: onboarding
class _TranslationsOnboardingNo implements TranslationsOnboardingEn {
	_TranslationsOnboardingNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Velkommen til ${appLabel}';
	@override String get subtitle => 'Din personlige ernæringsvenn drevet av AI';
	@override String get getStarted => 'Kom i gang';
	@override late final _TranslationsOnboardingFeaturesNo features = _TranslationsOnboardingFeaturesNo._(_root);
	@override late final _TranslationsOnboardingGenderNo gender = _TranslationsOnboardingGenderNo._(_root);
	@override late final _TranslationsOnboardingHeightNo height = _TranslationsOnboardingHeightNo._(_root);
	@override late final _TranslationsOnboardingWeightNo weight = _TranslationsOnboardingWeightNo._(_root);
	@override late final _TranslationsOnboardingAgeNo age = _TranslationsOnboardingAgeNo._(_root);
	@override late final _TranslationsOnboardingBmiScaleNo bmiScale = _TranslationsOnboardingBmiScaleNo._(_root);
	@override late final _TranslationsOnboardingWeightGoalNo weightGoal = _TranslationsOnboardingWeightGoalNo._(_root);
	@override late final _TranslationsOnboardingActivityLevelNo activityLevel = _TranslationsOnboardingActivityLevelNo._(_root);
	@override late final _TranslationsOnboardingHealthConnectNo healthConnect = _TranslationsOnboardingHealthConnectNo._(_root);
	@override late final _TranslationsOnboardingReinforcementNo reinforcement = _TranslationsOnboardingReinforcementNo._(_root);
}

// Path: tabs
class _TranslationsTabsNo implements TranslationsTabsEn {
	_TranslationsTabsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Oversikt';
	@override String get history => 'Historikk';
}

// Path: home
class _TranslationsHomeNo implements TranslationsHomeEn {
	_TranslationsHomeNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryNo aiSummary = _TranslationsHomeAiSummaryNo._(_root);
	@override late final _TranslationsHomeDailyGoalNo dailyGoal = _TranslationsHomeDailyGoalNo._(_root);
	@override late final _TranslationsHomeDailySummaryNo dailySummary = _TranslationsHomeDailySummaryNo._(_root);
	@override late final _TranslationsHomeIntakeProgressNo intakeProgress = _TranslationsHomeIntakeProgressNo._(_root);
	@override late final _TranslationsHomeIntakeHistoryNo intakeHistory = _TranslationsHomeIntakeHistoryNo._(_root);
	@override late final _TranslationsHomeMealLogNo mealLog = _TranslationsHomeMealLogNo._(_root);
	@override late final _TranslationsHomeMealDescriptionNo mealDescription = _TranslationsHomeMealDescriptionNo._(_root);
	@override late final _TranslationsHomeFavoriteMealsNo favoriteMeals = _TranslationsHomeFavoriteMealsNo._(_root);
	@override late final _TranslationsHomeMealSnapNo mealSnap = _TranslationsHomeMealSnapNo._(_root);
	@override late final _TranslationsHomeConnectHealthNo connectHealth = _TranslationsHomeConnectHealthNo._(_root);
}

// Path: history
class _TranslationsHistoryNo implements TranslationsHistoryEn {
	_TranslationsHistoryNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Ingen måltider registrert';
	@override String get emptyMessage => 'Ta et bilde av forrige måltid for å logge det her.';
	@override String get today => 'I dag';
	@override String get yesterday => 'I går';
}

// Path: meal
class _TranslationsMealNo implements TranslationsMealEn {
	_TranslationsMealNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Å nei!';
	@override String get delete => 'Slett';
	@override String get editMeal => 'Rediger måltid';
	@override String get addMeal => 'Legg til måltid';
	@override String get saveMeal => 'Lagre måltid';
	@override String get save => 'Lagre';
	@override String get mealName => 'Måltidsnavn';
	@override String get mealNameHint => 'f.eks. Eggerøre med toast';
	@override String get nameRequired => 'Oppgi et måltidsnavn før du lagrer.';
	@override String get mealQuantity => 'Mengde';
	@override String get mealQuantityHint => 'f.eks. 1 bolle, 2 skiver';
	@override String get timeOfMeal => 'Tidspunkt for måltidet';
	@override String get timeOfMealHint => 'Velg tidspunktet du spiste måltidet';
	@override String get mealType => 'Måltidstype';
	@override late final _TranslationsMealNutritionNo nutrition = _TranslationsMealNutritionNo._(_root);
	@override late final _TranslationsMealDeleteConfirmationNo deleteConfirmation = _TranslationsMealDeleteConfirmationNo._(_root);
	@override String get addedToLog => 'Måltid lagt til i loggen!';
	@override String couldNotAdd({required Object error}) => 'Kunne ikke legge til måltid: ${error}';
	@override String get savedSuccessfully => 'Måltid lagt til!';
	@override String get updatedSuccessfully => 'Måltid oppdatert!';
	@override String errorSaving({required Object error}) => 'Feil ved lagring av måltid: ${error}';
	@override String get removedFromFavorites => 'Fjernet fra favoritter!';
	@override String get savedAsFavorite => 'Måltid lagret som favoritt!';
	@override String get unfavorite => 'Fjern favoritt';
	@override String couldNotUpdateFavorite({required Object error}) => 'Kunne ikke oppdatere favoritt: ${error}';
	@override String get feedbackThanks => 'Takk for tilbakemeldingen!';
	@override String get reanalysisUpdated => 'Oppdaterte måltidsanalysen basert på din tilbakemelding.';
	@override String failedToProcess({required Object error}) => 'Kunne ikke behandle: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Kunne ikke behandle bildet: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Feil ved komprimering av bilde: ${error}';
	@override String get failedToSave => 'Kunne ikke lagre data. Prøv igjen.';
	@override String get skip => 'Hopp over';
	@override late final _TranslationsMealQuestionFlowNo questionFlow = _TranslationsMealQuestionFlowNo._(_root);
	@override late final _TranslationsMealAnalysisNo analysis = _TranslationsMealAnalysisNo._(_root);
	@override late final _TranslationsMealLocalInferenceNo localInference = _TranslationsMealLocalInferenceNo._(_root);
	@override late final _TranslationsMealFeedbackNo feedback = _TranslationsMealFeedbackNo._(_root);
}

// Path: favorites
class _TranslationsFavoritesNo implements TranslationsFavoritesEn {
	_TranslationsFavoritesNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritter';
	@override String get empty => 'Ingen favorittmåltider ennå.';
	@override String get searchPlaceholder => 'Søk i favorittmåltider';
	@override String get searchEmptyTitle => 'Ingen favoritter stemmer med søket';
	@override String get searchEmptySubtitle => 'Prøv et annet måltidsnavn, mengde eller måltidstype.';
	@override String get sortLabel => 'Sorter favoritter';
	@override String get undo => 'Angre';
	@override String removed({required Object name}) => 'Fjernet ${name} fra favoritter';
	@override late final _TranslationsFavoritesSortOptionsNo sortOptions = _TranslationsFavoritesSortOptionsNo._(_root);
}

// Path: profile
class _TranslationsProfileNo implements TranslationsProfileEn {
	_TranslationsProfileNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Ingen profildata funnet';
	@override String get yourProfile => 'Din profil';
	@override String get viewAndManage => 'Vis og administrer helseinformasjonen din';
	@override late final _TranslationsProfileSectionsNo sections = _TranslationsProfileSectionsNo._(_root);
	@override String get gender => 'Kjønn';
	@override String get height => 'Høyde';
	@override String get weight => 'Vekt';
	@override String get age => 'Alder';
	@override String get weightGoal => 'Vektmål';
	@override String get targetWeight => 'Målvekt';
	@override String get activityLevel => 'Aktivitetsnivå';
	@override String get healthMetrics => 'Helsemålinger';
	@override String get notSet => 'Ikke satt';
	@override String get years => 'år';
	@override String get updatedSuccessfully => 'Profil oppdatert!';
	@override late final _TranslationsProfileCalculatedValuesNo calculatedValues = _TranslationsProfileCalculatedValuesNo._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreNo implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Helsescore';
	@override String get whyThisScore => 'Hvorfor denne scoren?';
	@override String get note => 'Denne scoren er et AI-estimat basert på identifiserte ingredienser og næringstetthet. Rådfør deg alltid med en fagperson for personlig kostholdsveiledning.';
	@override String get unhealthy => 'Usunn';
	@override String get healthy => 'Sunn';
	@override String get neutral => 'Nøytral';
}

// Path: editProfile
class _TranslationsEditProfileNo implements TranslationsEditProfileEn {
	_TranslationsEditProfileNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rediger profil';
	@override late final _TranslationsEditProfileSectionsNo sections = _TranslationsEditProfileSectionsNo._(_root);
	@override String get gender => 'Kjønn';
	@override String get dateOfBirth => 'Fødselsdato';
	@override String get height => 'Høyde';
	@override String get weight => 'Vekt';
	@override String get weightGoal => 'Vektmål';
	@override String get activityLevel => 'Aktivitetsnivå';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metrisk (cm)';
	@override String get imperialFtIn => 'Imperial (ft/in)';
	@override String get metricKg => 'Metrisk (kg)';
	@override String get imperialLbs => 'Imperial (lbs)';
	@override late final _TranslationsEditProfileGendersNo genders = _TranslationsEditProfileGendersNo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsNo weightGoals = _TranslationsEditProfileWeightGoalsNo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsNo activityLevels = _TranslationsEditProfileActivityLevelsNo._(_root);
}

// Path: settings
class _TranslationsSettingsNo implements TranslationsSettingsEn {
	_TranslationsSettingsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Innstillinger';
	@override late final _TranslationsSettingsSectionsNo sections = _TranslationsSettingsSectionsNo._(_root);
	@override late final _TranslationsSettingsEditProfileNo editProfile = _TranslationsSettingsEditProfileNo._(_root);
	@override late final _TranslationsSettingsLanguageNo language = _TranslationsSettingsLanguageNo._(_root);
	@override late final _TranslationsSettingsHeightUnitNo heightUnit = _TranslationsSettingsHeightUnitNo._(_root);
	@override late final _TranslationsSettingsWeightUnitNo weightUnit = _TranslationsSettingsWeightUnitNo._(_root);
	@override late final _TranslationsSettingsMealRemindersNo mealReminders = _TranslationsSettingsMealRemindersNo._(_root);
	@override late final _TranslationsSettingsLocalInferenceNo localInference = _TranslationsSettingsLocalInferenceNo._(_root);
	@override late final _TranslationsSettingsThemeNo theme = _TranslationsSettingsThemeNo._(_root);
	@override late final _TranslationsSettingsSendFeedbackNo sendFeedback = _TranslationsSettingsSendFeedbackNo._(_root);
	@override late final _TranslationsSettingsExportMealHistoryNo exportMealHistory = _TranslationsSettingsExportMealHistoryNo._(_root);
	@override late final _TranslationsSettingsClearAllDataNo clearAllData = _TranslationsSettingsClearAllDataNo._(_root);
	@override late final _TranslationsSettingsDebugOptionsNo debugOptions = _TranslationsSettingsDebugOptionsNo._(_root);
	@override String get developerModeEnabled => 'Utviklermodus aktivert!';
	@override late final _TranslationsSettingsHealthConnectNo healthConnect = _TranslationsSettingsHealthConnectNo._(_root);
	@override late final _TranslationsSettingsAboutNo about = _TranslationsSettingsAboutNo._(_root);
	@override late final _TranslationsSettingsAppInfoNo appInfo = _TranslationsSettingsAppInfoNo._(_root);
}

// Path: reminders
class _TranslationsRemindersNo implements TranslationsRemindersEn {
	_TranslationsRemindersNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hold deg på sporet med påminnelser';
	@override String get description => 'Få vennlige påminnelser om å logge måltidene dine og være konsekvent med ernæringsmålene dine';
	@override String get notificationsEnabled => 'Varsler aktivert';
	@override String get notificationsDisabled => 'Varsler deaktivert';
	@override String get enabledSubtitle => 'Du vil motta måltidspåminnelser';
	@override String get disabledSubtitle => 'Aktiver varsler for å få måltidspåminnelser';
	@override String get mealReminders => 'Måltidspåminnelser';
	@override String get breakfast => 'Frokost';
	@override String get lunch => 'Lunsj';
	@override String get dinner => 'Middag';
	@override String get snack => 'Mellommåltid';
	@override String get unknown => 'Ukjent';
	@override String get change => 'Endre';
	@override String get enableNotifications => 'Aktiver varsler';
	@override String get skipForNow => 'Hopp over for nå';
	@override String get saveChanges => 'Lagre endringer';
	@override String get enabledSuccessfully => 'Varsler aktivert!';
	@override String get permissionDenied => 'Tillatelse til varsler nektet';
	@override String errorEnabling({required Object error}) => 'Feil ved aktivering av varsler: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Feil ved fullføring av oppsett: ${error}';
}

// Path: notifications
class _TranslationsNotificationsNo implements TranslationsNotificationsEn {
	_TranslationsNotificationsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastNo breakfast = _TranslationsNotificationsBreakfastNo._(_root);
	@override late final _TranslationsNotificationsLunchNo lunch = _TranslationsNotificationsLunchNo._(_root);
	@override late final _TranslationsNotificationsDinnerNo dinner = _TranslationsNotificationsDinnerNo._(_root);
	@override late final _TranslationsNotificationsSnackNo snack = _TranslationsNotificationsSnackNo._(_root);
	@override late final _TranslationsNotificationsTestNo test = _TranslationsNotificationsTestNo._(_root);
}

// Path: login
class _TranslationsLoginNo implements TranslationsLoginEn {
	_TranslationsLoginNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Logg inn';
	@override String get signInWithGoogle => 'Logg inn med Google';
	@override String get signInFailed => 'Google-pålogging mislyktes eller ble avbrutt.';
}

// Path: disclaimer
class _TranslationsDisclaimerNo implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Vennligst merk';
	@override late final _TranslationsDisclaimerSnapNo snap = _TranslationsDisclaimerSnapNo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateNo weightEstimate = _TranslationsDisclaimerWeightEstimateNo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsNo healthMetrics = _TranslationsDisclaimerHealthMetricsNo._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureNo calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureNo._(_root);
}

// Path: common
class _TranslationsCommonNo implements TranslationsCommonEn {
	_TranslationsCommonNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get close => 'Lukk';
	@override String get kContinue => 'Fortsett';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingNo implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Liker du ${appLabel}?';
	@override String get yes => 'Ja, jeg liker den';
	@override String get no => 'Ikke så mye';
	@override String get rateStepHeading => 'Vurder i Play Store';
	@override String get emailStepHeading => 'Send tilbakemelding via e-post';
	@override String soloDevMessage({required Object appLabel}) => 'En rask vurdering hjelper andre å finne ${appLabel} og støtter videre utvikling. Vil du bruke et øyeblikk på å legge igjen en vurdering?';
	@override String get shareFeedbackViaEmail => 'Din tilbakemelding former hva som kommer neste — vi leser hver melding. Vil du dele tankene dine via e-post?';
	@override String get rateCta => 'Vurder i Play Store';
	@override String get maybeLater => 'Kanskje senere';
	@override String get sendFeedback => 'Send tilbakemelding';
	@override String get noThanks => 'Nei takk';
	@override String get aboutUsDescription => 'Lagett med omtanke av et lite team. Vi fokuserer på personvern, enkelhet og å hjelpe deg bygge bedre spisevaner.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Nysgjerrig på hvem som står bak ${appLabel}? Se ';
	@override String get aboutUsLinkLabel => 'Om oss';
	@override String get thankYouMessage => 'Takk! Vi spør igjen senere.';
}

// Path: health
class _TranslationsHealthNo implements TranslationsHealthEn {
	_TranslationsHealthNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Kunne ikke synkronisere med Health Connect';
	@override String get mealSynced => 'Måltid synkronisert med Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesNo implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionNo foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionNo._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisNo aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisNo._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationNo healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationNo._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderNo implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hva er kjønn?';
	@override String get description => 'Kjønn hjelper oss å beregne din basal metabolic rate (BMR) nøyaktig.';
	@override String get next => 'Neste';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightNo implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvor høy er du?';
	@override String get description => 'Høyden din hjelper oss å beregne BMI og energibehov nøyaktig.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperial';
	@override String get next => 'Neste';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightNo implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Hva er din nåværende vekt?';
	@override String get currentDescription => 'Din nåværende vekt er viktig for å tilpasse dine daglige mål.';
	@override String get targetTitle => 'Hva er din målsatte vekt?';
	@override String get targetDescription => 'Å sette en målvekt hjelper oss å planlegge langsiktig for deg.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperial';
	@override String get next => 'Neste';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeNo implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Når er bursdagen din?';
	@override String get description => 'Alderen din hjelper oss å beregne kaloriebehovet ditt nøyaktig.';
	@override String get next => 'Neste';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleNo implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervekt';
	@override String get healthy => 'Sunn';
	@override String get overweight => 'Overvekt';
	@override String get obese => 'Fedme';
	@override late final _TranslationsOnboardingBmiScaleCategoriesNo categories = _TranslationsOnboardingBmiScaleCategoriesNo._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesNo messages = _TranslationsOnboardingBmiScaleMessagesNo._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalNo implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hva er målet ditt?';
	@override String get description => 'Velg målet som best beskriver hva du ønsker å oppnå';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelNo implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvor aktiv er du?';
	@override String get description => 'Dette hjelper oss å beregne ditt daglige kaloriebehov mer nøyaktig';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectNo implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Koble til Health Connect';
	@override String get description => 'Synkroniser helsedata for bedre innsikt og automatisk kalorisporing';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingNo automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingNo._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsNo progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsNo._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationNo seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationNo._(_root);
	@override String get connected => 'Health Connect tilkoblet';
	@override String get notConnected => 'Health Connect ikke tilkoblet';
	@override String get setup => 'Sett opp Health Connect';
	@override String get skipForNow => 'Hopp over for nå';
	@override String get statusConnected => 'Health Connect er tilkoblet.';
	@override String get statusSuccess => 'Health Connect ble koblet til!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Tillatelse nektet. Aktiver Health Connect-tillatelser i telefonens innstillinger for ${appLabel}.';
	@override String statusError({required Object error}) => 'Feil ved oppsett av Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementNo implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessNo trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessNo._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileNo healthProfile = _TranslationsOnboardingReinforcementHealthProfileNo._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleNo goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleNo._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryNo implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din AI-oppsummering';
	@override String get logMore => 'Logg flere måltider de neste dagene for å få personlige AI-innsikter.';
	@override String get loading => 'Laster oppsummeringen din...';
	@override String mealCount({required Object count}) => '${count} måltider logget';
	@override String macroBalanceScore({required Object score}) => 'Balansescore ${score}';
	@override String get topFoods => 'Mest spiste matvarer';
	@override String get trendUp => 'Kalorier øker';
	@override String get trendDown => 'Kalorier synker';
	@override String get trendSteady => 'Kalorier stabile';
	@override String generatedAt({required Object time}) => 'Oppdatert ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalNo implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sett ditt daglige mål';
	@override String get titleSet => 'Ditt daglige mål';
	@override String get description => 'Klar for å starte din velværereise? Sett ditt daglige kalori mål nedenfor for å komme i gang.';
	@override String get descriptionSet => 'Kompasset er satt! Dette er ditt daglige kalori mål som vil veilede deg.';
	@override String get yourGoal => 'Ditt mål';
	@override String get goal => 'Mål';
	@override String get dailyCalories => 'Daglige kalorier (kcal)';
	@override String get setGoal => 'Sett mål';
	@override String get intake => 'Inntak';
	@override String get burned => 'Forbrent';
	@override String get weightImpact => 'Vektpåvirkning';
	@override String get estLoss => 'Estimert tap på';
	@override String get estGain => 'Estimert økning på';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryNo implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagsoversikt';
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Karbohydrater';
	@override String get protein => 'Protein';
	@override String get fat => 'Fett';
	@override String get fiber => 'Fiber';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Makrodiagram';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressNo implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens makrofordeling';
	@override String get target => 'Mål';
	@override String get current => 'Nåværende';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryNo implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => '7-dagers makrohistorikk';
	@override String get trendTitle => 'Dagens trend';
	@override String peakHour({required Object hour}) => 'Topp: ${hour}:00';
	@override String get noHistoryYet => 'Ingen historikk ennå';
	@override String get startLogging => 'Begynn å logge måltider for å se dine\n7-dagers makrotrender her';
}

// Path: home.mealLog
class _TranslationsHomeMealLogNo implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Loggede måltider';
	@override String get emptyMessage => 'Ta et bilde av forrige måltid for å logge det her.';
	@override String get noMealsToday => 'Ingen måltider registrert i dag';
	@override String get seeAllMeals => 'Se alle måltider';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionNo implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Raskt tillegg med AI';
	@override String get description => 'Beskriv måltidet, så håndterer AI resten.';
	@override String get hint => 'f.eks. Til frokost hadde jeg en stor bolle havregrøt med en skivet banan og en scoop whey ...';
	@override String get analyzeMeal => 'Analyser måltid';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsNo implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorittmåltider';
	@override String get description => 'Legg raskt til et av favorittmåltidene dine.';
	@override String get noFavorites => 'Ingen favorittmåltider ennå.';
	@override String get addFavoriteHint => 'Klikk stjernen på et måltid for å merke det som favoritt.';
	@override String get seeAll => 'Se alle';
	@override String get add => 'Legg til';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapNo implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ta bilde & logg måltidet';
	@override String get description => 'Bruk kameraet for å ta et bilde av maten for AI-analyse.';
	@override String get openCamera => 'Åpne kamera';
	@override String get gallery => 'Galleri';
	@override String get compressingPhoto => 'Optimaliserer bilde…';
	@override String get uploadingPhoto => 'Laster opp bilde…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthNo implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synk med Health Connect';
	@override String get description => 'Synk ernæringsdata med Health Connect';
	@override String get install => 'Installer';
	@override String get connect => 'Koble til';
}

// Path: meal.nutrition
class _TranslationsMealNutritionNo implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Karbohydrater (g)';
	@override String get protein => 'Protein (g)';
	@override String get fat => 'Fett (g)';
	@override String get fiber => 'Fiber (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationNo implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slett måltid';
	@override String get message => 'Er du sikker på at du vil slette denne måltidsoppføringen?';
	@override String get cancel => 'Avbryt';
	@override String get delete => 'Slett';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowNo implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Spørsmål ${current} av ${total}';
	@override String get noQuestionsAvailable => 'Ingen spørsmål tilgjengelig';
	@override String get next => 'Neste';
	@override String get continueLabel => 'Fortsett';
}

// Path: meal.analysis
class _TranslationsMealAnalysisNo implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyserer måltidet ditt';
	@override String get stepStarted => 'Kommer i gang…';
	@override String get stepDecomposition => 'Forstår måltidet ditt…';
	@override String get stepIngredients => 'Matcher ingredienser med næringsdata…';
	@override String get stepUncertainty => 'Sjekker sikkerhet…';
	@override String get stepMealTypeQuestion => 'Nesten ferdig…';
	@override String get stepResult => 'Ferdigstiller resultatet…';
	@override String get stepError => 'Noe gikk galt';
	@override String get stepDefault => 'Analyserer måltidet ditt…';
	@override String get progressUnderstand => 'Forstår måltidet ditt';
	@override String get progressMatch => 'Slår opp ingrediensnæring';
	@override String get progressCheck => 'Sjekker porsjoner og sikkerhet';
	@override String get progressMealType => 'Velger måltidstype';
	@override String get progressFinish => 'Beregner kalorier og makroer';
	@override String get detectedIngredientHeading => 'Ingredienser vi ser';
	@override String ingredientsOverflow({required Object count}) => '${count} til';
	@override String ingredientsLine({required Object count}) => '${count} ingredienser oppdaget';
	@override String get ingredientsPending => 'Skanner ingredienser…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tips: Konsistens slår perfeksjon—jevn logging avdekker mønstrene som betyr noe.';
	@override String get offlineTip1 => 'Tips: Naturlig lys og et bilde ovenfra hjelper med porsjonsnøyaktighet.';
	@override String get offlineTip2 => 'Tips: Nevn drikker, sauser og matolje—de tilfører ofte kalorier folk glemmer.';
	@override String get offlineTip3 => 'Tips: En kort porsjonsbeskrivelse (1 bolle, stor kaffe) gjør estimatene mye mer presise.';
	@override String get offlineTip4 => 'Tips: Å logge etter måltidet bygger fortsatt vanen; perfeksjon er valgfritt.';
	@override String get offlineTip5 => 'Tips: Si hvordan maten er tilberedt når det påvirker kalorier mye (stekt vs bakt).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceNo implements TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Se over gjenkjente ingredienser';
	@override String get reviewSubtitle => 'Dette ble tolket på enheten din. Korriger navn eller porsjoner før næringsinnholdet beregnes.';
	@override String get mealName => 'Måltidnavn';
	@override String get ingredient => 'Ingrediens';
	@override String get grams => 'Estimert antall gram';
	@override String get removeIngredient => 'Fjern ingrediens';
	@override String get continueLabel => 'Fortsett';
	@override String get invalidProposal => 'Legg til minst én ingrediens og bruk en positiv mengde gram.';
	@override String get localUnavailable => 'Analyse på enheten er utilgjengelig akkurat nå.';
	@override String get calculationDetails => 'Slik ble dette beregnet';
	@override String get interpretationLocal => 'Ingredienser tolket på denne enheten';
	@override String get interpretationCloud => 'Ingredienser tolket i skyen';
	@override String get interpretationManual => 'Ingredienser gjennomgått eller redigert av deg';
	@override String get nutritionRemote => 'Næringsinnhold hentet fra USDA via Calorify';
	@override String get nutritionFallback => 'Noen næringsverdier ble estimert eksternt';
	@override String get calculationServer => 'Kalorier og makronæringsstoffer beregnet av Calorify';
	@override String get fallbackUsed => 'Lokal analyse ble erstattet av skybehandling';
	@override String get noRawContent => 'Diagnostiske kvitteringer inkluderer ikke måltidstekst eller bilder.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackNo implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hva ser feil ut?';
	@override String get subtitle => 'Hjelp oss forbedre analysen ved å velge ett eller flere problemer.';
	@override String get tellUsMore => 'Fortell oss mer';
	@override String get describeIncorrect => 'Beskriv hva som var feil';
	@override String get submit => 'Send inn';
	@override String get issueFoodIdentification => 'Matidentifikasjon';
	@override String get issuePortionSize => 'Porsjonsstørrelse';
	@override String get issueCalorieDistribution => 'Kalorifordeling';
	@override String get issueMacrosWrong => 'Makroer feil';
	@override String get issueMissingItems => 'Mangler elementer';
	@override String get issueExtraItems => 'Ekstra elementer';
	@override String get issueOther => 'Annet';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsNo implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Nylige';
	@override String get calories => 'Kalorier';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsNo implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'BASISINFORMASJON';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
	@override String get calculatedValues => 'BEREGNEDE VERDIER';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesNo implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Daglig mål';
	@override String get calPerDay => 'cal/dag';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsNo implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSONLIG INFORMASJON';
	@override String get physicalMeasurements => 'FYSISKE MÅL';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersNo implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get male => 'Mann';
	@override String get female => 'Kvinne';
	@override String get other => 'Annet';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsNo implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightNo loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightNo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightNo maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightNo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightNo gainWeight = _TranslationsEditProfileWeightGoalsGainWeightNo._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsNo implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryNo sedentary = _TranslationsEditProfileActivityLevelsSedentaryNo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveNo lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveNo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveNo moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveNo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveNo veryActive = _TranslationsEditProfileActivityLevelsVeryActiveNo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveNo extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveNo._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsNo implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALISERING';
	@override String get notifications => 'MELDINGER';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get localInference => 'ANALYSE PÅ ENHETEN';
	@override String get supportAndLegal => 'SUPPORT & JURIDISK';
	@override String get about => 'OM';
	@override String get dangerZone => 'FARLIG SONE';
	@override String get developer => 'UTVIKLER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileNo implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rediger profil';
	@override String get subtitle => 'Oppdater din personlige informasjon';
}

// Path: settings.language
class _TranslationsSettingsLanguageNo implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Språk';
	@override String get subtitle => 'Velg foretrukket språk';
	@override String get searchHint => 'Søk i språk...';
	@override String get noResults => 'Ingen resultater funnet';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitNo implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Høydeenhet';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitNo implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vektenhet';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersNo implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidspåminnelser';
	@override String get subtitle => 'Hold deg på sporet med vennlige varsler';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceNo implements TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidsanalyse på enheten';
	@override String get subtitle => 'Tolk støttede måltider med Gemini Nano før næringsinnholdet beregnes';
	@override String get unavailable => 'Ikke tilgjengelig på denne enheten';
	@override String get rolloutUnavailable => 'Støttet maskinvare funnet, men denne funksjonen er ikke aktivert for denne app-versjonen';
	@override String get modelSetup => 'Gemini Nano må fullføre nedlastingen før dette kan aktiveres';
	@override String get useLocalTitle => 'Bruk analyse på enheten';
	@override String get useLocalSubtitle => 'Valgfritt og avslått som standard. Resultatene kan være mindre pålitelige for komplekse måltider.';
	@override String get disclosureTitle => 'Før du aktiverer analyse på enheten';
	@override String get disclosureBody => 'Gemini Nano kan identifisere ingredienser og estimere porsjoner på støttede Android-enheter. Ditt gjennomgåtte forslag til ingredienser sendes til Calorify for USDA-næringsgrunnlag og beregning.';
	@override String get disclosureLimit1 => 'Komplekse retter, skjulte ingredienser og porsjonsstørrelser kan bli identifisert feil.';
	@override String get disclosureLimit2 => 'Modellen kan være utilgjengelig under nedlasting, når den er opptatt, kjører i bakgrunnen eller er begrenset av enheten.';
	@override String get disclosureLimit3 => 'Hvis lokal tolkning ikke kan fullføres, sender denne betaen automatisk din opprinnelige måltidsbeskrivelse til Calorify for skyanalyse.';
	@override String get acknowledgement => 'Jeg forstår at jeg bør se over gjenkjente ingredienser og porsjoner.';
	@override String get enable => 'Bekreft og aktiver';
	@override String get cancel => 'Avbryt';
}

// Path: settings.theme
class _TranslationsSettingsThemeNo implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Lyst';
	@override String get dark => 'Mørkt';
	@override String get system => 'System';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackNo implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Send tilbakemelding';
	@override String subtitle({required Object appLabel}) => 'Hjelp oss forbedre ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Tilbakemelding for ${appLabel}-appen';
	@override String get emailBodyPrefix => 'Vennligst gi din tilbakemelding nedenfor:';
	@override String get appVersion => 'Appversjon';
	@override String get device => 'Enhet';
	@override String get osVersion => 'OS-versjon';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryNo implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eksporter måltidshistorikk';
	@override String get subtitle => 'Del en CSV av dine loggede måltider';
	@override String get shareText => 'Din Calorify-måltidshistorikk eksport';
	@override String failed({required Object error}) => 'Kunne ikke eksportere måltidshistorikk: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataNo implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slett alle data';
	@override String get subtitle => 'Slett all informasjon permanent';
	@override String get confirmationTitle => 'Slette alle data?';
	@override String get confirmationMessage => 'Denne handlingen kan ikke angres. Alle dine loggede måltider, favoritter og profilinnstillinger slettes permanent.';
	@override String get cancel => 'Avbryt';
	@override String get clearEverything => 'Slett alt';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsNo implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Feilsøkingsvalg';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectNo implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Se og administrer tillatelser';
	@override late final _TranslationsSettingsHealthConnectUnavailableNo unavailable = _TranslationsSettingsHealthConnectUnavailableNo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNo permissions = _TranslationsSettingsHealthConnectPermissionsNo._(_root);
	@override String get managePermissions => 'Administrer tillatelser';
	@override String get openSettings => 'Åpne Health Connect-innstillinger';
	@override String get requestPermissions => 'Be om tillatelser';
	@override String get permissionRequestCancelledOrFailed => 'Tillatelsesforespørselen ble avbrutt eller mislyktes. Prøv igjen eller gi tillatelser manuelt i Health Connect-innstillingene.';
	@override String get permissionRequestFailed => 'Kunne ikke be om tillatelser. Prøv igjen eller gi tillatelser manuelt i Health Connect-innstillingene.';
	@override String get requestingPermissions => 'Ber om...';
}

// Path: settings.about
class _TranslationsSettingsAboutNo implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om';
	@override String get tagline => 'Rask, gratis og personvernfokusert kalorioversikt';
	@override late final _TranslationsSettingsAboutOurStoryNo ourStory = _TranslationsSettingsAboutOurStoryNo._(_root);
	@override late final _TranslationsSettingsAboutPrivacyNo privacy = _TranslationsSettingsAboutPrivacyNo._(_root);
	@override late final _TranslationsSettingsAboutDeveloperNo developer = _TranslationsSettingsAboutDeveloperNo._(_root);
	@override late final _TranslationsSettingsAboutFeedbackNo feedback = _TranslationsSettingsAboutFeedbackNo._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoNo implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Bygg ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastNo implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Frokosttid! 🍳';
	@override String get body => 'Ikke glem å logge frokosten din';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchNo implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lunsjtid! 🥗';
	@override String get body => 'Det er på tide å logge lunsjen din';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerNo implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Middagstid! 🍽️';
	@override String get body => 'Ikke glem å logge middagen din';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackNo implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snacketid! 🍎';
	@override String get body => 'Tid for en sunn snack';
}

// Path: notifications.test
class _TranslationsNotificationsTestNo implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testvarsel';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapNo implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} gir estimerte næringsverdier. Nøyaktigheten avhenger av innspillene dine og variasjon i mat. Bruk som veiledning, ikke som en definitiv kilde. Rådfør deg med en fagperson for personlig kostholdsråd.';
	@override late final _TranslationsDisclaimerSnapPortionSizeNo portionSize = _TranslationsDisclaimerSnapPortionSizeNo._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsNo preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsNo._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsNo ingredients = _TranslationsDisclaimerSnapIngredientsNo._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsNo databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsNo._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateNo implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om vektestimatet';
	@override String get description => 'Den projiserte vektendringen er et teoretisk estimat basert på det enkle kalori inn vs. kalori ut-modellen. Det er ment som motivasjonsveiledning, ikke en prediksjon av din faktiske vekt.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyNo calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyNo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsNo biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsNo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightNo waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightNo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceNo professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceNo._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsNo implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Disse målingene hjelper deg å forstå kroppens energibehov og veileder ernæringsmålene dine.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrNo bmr = _TranslationsDisclaimerHealthMetricsBmrNo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeNo tdee = _TranslationsDisclaimerHealthMetricsTdeeNo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalNo dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalNo._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureNo implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimert kalori-forbruk';
	@override String get description => 'Når Health Connect-data ikke er tilgjengelig, estimerer vi dagens forbruk ved å bruke din BMR og aktivitetsnivå (TDEE), skalert etter hvor mye av dagen som har gått.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedNo howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedNo._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceNo professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceNo._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionNo implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Smart matgjenkjenning';
	@override String get description => 'Ta et bilde og la AI identifisere måltidet ditt';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisNo implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-analyse';
	@override String get description => 'Få øyeblikkelige næringsfakta fra beskrivelsene dine';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationNo implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Helsesynk';
	@override String get description => 'Koble til Health Connect for bedre innsikt';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesNo implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervekt';
	@override String get healthyWeight => 'Sunn vekt';
	@override String get overweight => 'Overvekt';
	@override String get obese => 'Fedme';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesNo implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Vi kan hjelpe deg med å bygge en sunn plan for å nå en balansert vekt med næringstette måltider.';
	@override String get healthy => 'Flott jobb! Du er i et sunt område. Vi hjelper deg å opprettholde energi og vitalitet.';
	@override String overweight({required Object appLabel}) => '${appLabel} vil gjøre reisen enklere med AI-basert sporing for å hjelpe deg nå målet på en bærekraftig måte.';
	@override String get obese => 'Vi er her for å støtte deg med personlig veiledning og bærekraftige strategier for dine helse mål.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingNo implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatisk kalorisporing';
	@override String get description => 'Spor kalorier forbrent fra treningsapper';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsNo implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fremdriftsinnsikt';
	@override String get description => 'Få detaljerte innsikter i helsetrendene dine';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationNo implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sømløs integrering';
	@override String get description => 'Synk data fra favoritt helseapper';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessNo implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du er ikke alene';
	@override String get genericMessage => 'Forskning viser at jevn sporing er den viktigste faktoren for langsiktig suksess.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'For en ${age} år gammel ${gender} som ønsker å ${goal}, er jevn sporing den viktigste prediktoren for suksess.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} gjør det 10x enklere enn å gjøre det manuelt.';
	@override String get getStartedTitle => 'Klar til å starte?';
	@override String get tipPhoto => 'Ta et bilde av måltidene for øyeblikkelig analyse';
	@override String get tipConsistency => 'Logg jevnlig for å se meningsfull fremgang';
	@override String get tipProgress => 'Følg fremgangen din daglig for motivasjon';
	@override String get button => 'La oss gå';
	@override String get defaultGender => 'individ';
	@override String get defaultGoal => 'en sunnere deg';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileNo implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din helseprofil';
	@override String bmiDescription({required Object bmi}) => 'Basert på målingene dine er BMI-en din ${bmi}.';
	@override String get finalizeDescription => 'La oss fullføre profilen for å tilpasse opplevelsen din.';
	@override String get goalGain => 'øke';
	@override String get goalLose => 'miste';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'For å nå målet ditt vil du ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Du er på målvekten! Vi hjelper deg å vedlikeholde den.';
	@override String get button => 'La oss gå';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleNo implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Utmerket start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har tatt første skritt mot ${goalText}. Siden du er ${activityText}, vil ${appLabel} justere målene dine for å passe livsstilen din.';
	@override String get personalizedTargets => 'Personlige kalori mål';
	@override String get aiMealDetection => 'AI-drevet måltidsdeteksjon';
	@override String get macroBreakdowns => 'Detaljerte makronæringsfordelinger';
	@override String get button => 'La oss gå';
	@override String get defaultGoal => 'dine mål';
	@override String get defaultActivity => 'aktiv';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightNo implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gå ned i vekt';
	@override String get description => 'Skap kalorimangel for å gå ned i vekt';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightNo implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Beholde vekt';
	@override String get description => 'Oppretthold din nåværende vekt';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightNo implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gå opp i vekt';
	@override String get description => 'Skap kalorioverskudd for å gå opp i vekt';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryNo implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Svært lite aktivitet';
	@override String get description => 'Lite eller ingen trening';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveNo implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lett aktiv';
	@override String get description => 'Lett trening 1–3 dager/uke';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveNo implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderat aktiv';
	@override String get description => 'Moderat trening 3–5 dager/uke';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveNo implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Veldig aktiv';
	@override String get description => 'Hard trening 6–7 dager/uke';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveNo implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ekstremt aktiv';
	@override String get description => 'Veldig hard trening eller fysisk krevende jobb';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableNo implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect utilgjengelig';
	@override String get description => 'Health Connect er ikke tilgjengelig på denne enheten. Installer Health Connect fra Play Store (Android 9+) eller oppdater til Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsNo implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tillatelser';
	@override String get description => 'Følgende tillatelser blir bedt om for å gi Health Connect-integrasjon:';
	@override String get granted => 'Gitt';
	@override String get notGranted => 'Ikke gitt';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedNo caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedNo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadNo nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadNo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteNo nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteNo._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryNo implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vår historie';
	@override String content({required Object appLabel}) => '${appLabel} ble født ut fra en enkel frustrasjon: de fleste kaloritrapingsapper er enten for kompliserte, krever konstant manuelt innspill, tar høye abonnementsavgifter, eller går på kompromiss med personvernet.\n\nSom en solo-utvikler ønsket jeg å lage noe enklere og mer rettferdig — en app som bruker AI for å redusere innsatsen, forblir rask og gratis å bruke, og behandler helsedataene dine med respekt.\n\n${appLabel} er appen jeg skulle ønske fantes: ingen kontoer, ingen sporing, ingen annonser — bare klare, praktiske innsikter og dine helse mål.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyNo implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ditt personvern betyr noe';
	@override String get description => 'Personvern er ikke en ettertanke — det er et designprinsipp. Her er hva det betyr i praksis:';
	@override String get noAccounts => 'Ingen kontoer nødvendig\nBruk appen med en gang. Ingen registrering, ingen identiteter.';
	@override String noTracking({required Object appLabel}) => 'Ingen atferdssporing\n${appLabel} overvåker ikke aktiviteten din, bygger ikke bruksprofiler eller sporer deg på tvers av apper eller nettsteder.';
	@override String noAds({required Object appLabel}) => 'Annonsefri etter design\n${appLabel} er bygget for å fungere uten annonser eller datadrevet inntektsmodell.';
	@override String get noDataSelling => 'Ingen videresalg av data\nDine helsedata blir aldri solgt eller delt med tredjepart.';
	@override String get localStorage => 'Lokal-først lagring\nDine data blir værende på enheten din.';
	@override String get privacyPolicy => 'Personvernerklæring';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperNo implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bygget av en solo-utvikler';
	@override String description({required Object appLabel}) => '${appLabel} er bygget og vedlikeholdt av én solo-utvikler som fokuserer på å lage rolig, personvernvennlig helseprogramvare.\n\nTilbakemeldinger leses personlig og former retningen for appen.';
	@override String get website => 'Nettsted';
	@override String get email => 'E-post';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackNo implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Liker du ${appLabel}?';
	@override String description({required Object appLabel}) => 'Dine tilbakemeldinger gjør ${appLabel} bedre for alle.';
	@override String get rateApp => 'Vurder i Play Store';
	@override String get sendFeedback => 'Send tilbakemelding';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeNo implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Porsjonsstørrelse';
	@override String get description => 'Nøyaktigheten av estimatene avhenger i stor grad av din korrekte vurdering av porsjonsstørrelsen.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsNo implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tilberedningsmetoder';
	@override String description({required Object appLabel}) => 'Tilberedningsmetoder kan endre næringsinnholdet betydelig. ${appLabel}s estimater tar ikke alltid høyde for disse variasjonene.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsNo implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredienser';
	@override String get description => 'Komplekse retter med mange skjulte ingredienser kan gi mindre nøyaktige estimater.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsNo implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Databasebegrensninger';
	@override String description({required Object appLabel}) => '${appLabel}s matdatabase er omfattende, men kan ikke inneholde hvert enkelt matvarealternativ eller variasjon.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyNo implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorinøyaktighet';
	@override String get description => 'Dette estimatet er så nøyaktig som registreringen av ditt kaloriinntak og -forbruk. Unøyaktig logging gir et unøyaktig estimat.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsNo implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiske faktorer';
	@override String description({required Object appLabel}) => 'Faktisk vekttap/økning påvirkes av metabolisme, hormoner, søvn, stress, hydrering og andre individuelle faktorer som ${appLabel} ikke kan måle.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightNo implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vannvekt og svingninger';
	@override String get description => 'Normal daglig vekt kan variere betydelig på grunn av vannretensjon, fordøyelse og timing. Estimatet tar ikke hensyn til disse daglige endringene.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceNo implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profesjonell veiledning';
	@override String get description => 'Bruk ikke dette estimatet til medisinske beslutninger. Rådfør deg alltid med helsepersonell eller en registrert ernæringsfysiolog for personlig veiledning.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrNo implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) er antall kalorier kroppen din forbrenner i hvile for å opprettholde grunnleggende funksjoner som pust og sirkulasjon. BMR avhenger av alder, kjønn, høyde og vekt. Høyere BMR betyr ofte at kroppen forbrenner mer kalorier i hvile, ofte på grunn av mer muskelmasse, yngre alder eller mannlig kjønn. Lavere BMR indikerer ofte mindre muskelmasse, høyere alder eller kvinnelig kjønn.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeNo implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) er totale kalorier du forbrenner per dag, inkludert BMR pluss kalorier fra fysisk aktivitet og daglig bevegelse. TDEE avhenger av BMR og aktivitetsnivå. Høyere TDEE betyr at du forbrenner mer totalt, vanligvis fra mer aktivitet eller høyere BMR. Lavere TDEE antyder mindre daglig aktivitet eller lavere BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalNo implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Daglig mål';
	@override String get description => 'Daglig mål er ditt anbefalte daglige kaloriinntak basert på TDEE og vektmål. For vekttap inntar du færre kalorier enn TDEE. For vektvedlikehold matcher du TDEE. For vektøkning inntar du mer enn TDEE. Dette hjelper deg å nå ønsket vektendring i et sunt tempo.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedNo implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvordan estimatet beregnes';
	@override String get description => 'Vi kalkulerer TDEE (basert på profilen din) og multipliserer med andelen av dagen som har gått (timer + minutter) / 24 for å estimere kalorier brukt så langt.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceNo implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profesjonell veiledning';
	@override String get description => 'Bruk ikke dette estimatet til medisinske beslutninger. Rådfør deg alltid med helsepersonell eller en registrert ernæringsfysiolog for personlig veiledning.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedNo implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Les totalforbrente kalorier';
	@override String get description => 'Lar appen lese dine totale forbrente kalorier fra Health Connect.';
	@override String get usage => 'Denne tillatelsen brukes for å vise din daglige kaloriforbrenning i appen, slik at du forstår total energiforbruk gjennom dagen.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadNo implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Les ernæringsdata';
	@override String get description => 'Lar appen lese ernæringsdata fra Health Connect.';
	@override String get usage => 'Denne tillatelsen gjør at appen kan lese ernæringsinformasjon som kan være logget av andre apper koblet til Health Connect, og gir en helhetlig oversikt over ernæring.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteNo implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skriv ernæringsdata';
	@override String get description => 'Lar appen skrive ernæringsdata til Health Connect.';
	@override String get usage => 'Denne tillatelsen gjør at appen kan synkronisere dine loggede måltider til Health Connect, slik at ernæringsdataene dine blir tilgjengelige for andre helse- og treningsapper du bruker.';
}

/// The flat map containing all translations for locale <no>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsNo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Norsk',
			'flag' => '🇳🇴',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Du har sendt for mange forespørsler. Vennligst vent et øyeblikk og prøv igjen.',
			'errors.networkError' => 'Nettverksfeil. Sjekk internettforbindelsen din.',
			'errors.unknownError' => 'Noe gikk galt. Prøv igjen senere.',
			'errors.loadingProfileData' => 'Feil ved lasting av profildata',
			'errors.somethingWentWrong' => 'Noe gikk galt.',
			'errors.retry' => 'Prøv igjen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Velkommen til ${appLabel}',
			'onboarding.subtitle' => 'Din personlige ernæringsvenn drevet av AI',
			'onboarding.getStarted' => 'Kom i gang',
			'onboarding.features.foodRecognition.title' => 'Smart matgjenkjenning',
			'onboarding.features.foodRecognition.description' => 'Ta et bilde og la AI identifisere måltidet ditt',
			'onboarding.features.aiAnalysis.title' => 'AI-analyse',
			'onboarding.features.aiAnalysis.description' => 'Få øyeblikkelige næringsfakta fra beskrivelsene dine',
			'onboarding.features.healthIntegration.title' => 'Helsesynk',
			'onboarding.features.healthIntegration.description' => 'Koble til Health Connect for bedre innsikt',
			'onboarding.gender.title' => 'Hva er kjønn?',
			'onboarding.gender.description' => 'Kjønn hjelper oss å beregne din basal metabolic rate (BMR) nøyaktig.',
			'onboarding.gender.next' => 'Neste',
			'onboarding.height.title' => 'Hvor høy er du?',
			'onboarding.height.description' => 'Høyden din hjelper oss å beregne BMI og energibehov nøyaktig.',
			'onboarding.height.metric' => 'Metrisk',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Neste',
			'onboarding.weight.currentTitle' => 'Hva er din nåværende vekt?',
			'onboarding.weight.currentDescription' => 'Din nåværende vekt er viktig for å tilpasse dine daglige mål.',
			'onboarding.weight.targetTitle' => 'Hva er din målsatte vekt?',
			'onboarding.weight.targetDescription' => 'Å sette en målvekt hjelper oss å planlegge langsiktig for deg.',
			'onboarding.weight.metric' => 'Metrisk',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Neste',
			'onboarding.age.title' => 'Når er bursdagen din?',
			'onboarding.age.description' => 'Alderen din hjelper oss å beregne kaloriebehovet ditt nøyaktig.',
			'onboarding.age.next' => 'Neste',
			'onboarding.bmiScale.underweight' => 'Undervekt',
			'onboarding.bmiScale.healthy' => 'Sunn',
			'onboarding.bmiScale.overweight' => 'Overvekt',
			'onboarding.bmiScale.obese' => 'Fedme',
			'onboarding.bmiScale.categories.underweight' => 'Undervekt',
			'onboarding.bmiScale.categories.healthyWeight' => 'Sunn vekt',
			'onboarding.bmiScale.categories.overweight' => 'Overvekt',
			'onboarding.bmiScale.categories.obese' => 'Fedme',
			'onboarding.bmiScale.messages.underweight' => 'Vi kan hjelpe deg med å bygge en sunn plan for å nå en balansert vekt med næringstette måltider.',
			'onboarding.bmiScale.messages.healthy' => 'Flott jobb! Du er i et sunt område. Vi hjelper deg å opprettholde energi og vitalitet.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} vil gjøre reisen enklere med AI-basert sporing for å hjelpe deg nå målet på en bærekraftig måte.',
			'onboarding.bmiScale.messages.obese' => 'Vi er her for å støtte deg med personlig veiledning og bærekraftige strategier for dine helse mål.',
			'onboarding.weightGoal.title' => 'Hva er målet ditt?',
			'onboarding.weightGoal.description' => 'Velg målet som best beskriver hva du ønsker å oppnå',
			'onboarding.activityLevel.title' => 'Hvor aktiv er du?',
			'onboarding.activityLevel.description' => 'Dette hjelper oss å beregne ditt daglige kaloriebehov mer nøyaktig',
			'onboarding.healthConnect.title' => 'Koble til Health Connect',
			'onboarding.healthConnect.description' => 'Synkroniser helsedata for bedre innsikt og automatisk kalorisporing',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatisk kalorisporing',
			'onboarding.healthConnect.automaticTracking.description' => 'Spor kalorier forbrent fra treningsapper',
			'onboarding.healthConnect.progressInsights.title' => 'Fremdriftsinnsikt',
			'onboarding.healthConnect.progressInsights.description' => 'Få detaljerte innsikter i helsetrendene dine',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Sømløs integrering',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synk data fra favoritt helseapper',
			'onboarding.healthConnect.connected' => 'Health Connect tilkoblet',
			'onboarding.healthConnect.notConnected' => 'Health Connect ikke tilkoblet',
			'onboarding.healthConnect.setup' => 'Sett opp Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Hopp over for nå',
			'onboarding.healthConnect.statusConnected' => 'Health Connect er tilkoblet.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect ble koblet til!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Tillatelse nektet. Aktiver Health Connect-tillatelser i telefonens innstillinger for ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Feil ved oppsett av Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Du er ikke alene',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Forskning viser at jevn sporing er den viktigste faktoren for langsiktig suksess.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'For en ${age} år gammel ${gender} som ønsker å ${goal}, er jevn sporing den viktigste prediktoren for suksess.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} gjør det 10x enklere enn å gjøre det manuelt.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Klar til å starte?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Ta et bilde av måltidene for øyeblikkelig analyse',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Logg jevnlig for å se meningsfull fremgang',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Følg fremgangen din daglig for motivasjon',
			'onboarding.reinforcement.trackingSuccess.button' => 'La oss gå',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individ',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'en sunnere deg',
			'onboarding.reinforcement.healthProfile.title' => 'Din helseprofil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Basert på målingene dine er BMI-en din ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'La oss fullføre profilen for å tilpasse opplevelsen din.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'øke',
			'onboarding.reinforcement.healthProfile.goalLose' => 'miste',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'For å nå målet ditt vil du ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Du er på målvekten! Vi hjelper deg å vedlikeholde den.',
			'onboarding.reinforcement.healthProfile.button' => 'La oss gå',
			'onboarding.reinforcement.goalLifestyle.title' => 'Utmerket start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har tatt første skritt mot ${goalText}. Siden du er ${activityText}, vil ${appLabel} justere målene dine for å passe livsstilen din.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personlige kalori mål',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-drevet måltidsdeteksjon',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaljerte makronæringsfordelinger',
			'onboarding.reinforcement.goalLifestyle.button' => 'La oss gå',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'dine mål',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiv',
			'tabs.dashboard' => 'Oversikt',
			'tabs.history' => 'Historikk',
			'home.aiSummary.title' => 'Din AI-oppsummering',
			'home.aiSummary.logMore' => 'Logg flere måltider de neste dagene for å få personlige AI-innsikter.',
			'home.aiSummary.loading' => 'Laster oppsummeringen din...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} måltider logget',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balansescore ${score}',
			'home.aiSummary.topFoods' => 'Mest spiste matvarer',
			'home.aiSummary.trendUp' => 'Kalorier øker',
			'home.aiSummary.trendDown' => 'Kalorier synker',
			'home.aiSummary.trendSteady' => 'Kalorier stabile',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Oppdatert ${time}',
			'home.dailyGoal.title' => 'Sett ditt daglige mål',
			'home.dailyGoal.titleSet' => 'Ditt daglige mål',
			'home.dailyGoal.description' => 'Klar for å starte din velværereise? Sett ditt daglige kalori mål nedenfor for å komme i gang.',
			'home.dailyGoal.descriptionSet' => 'Kompasset er satt! Dette er ditt daglige kalori mål som vil veilede deg.',
			'home.dailyGoal.yourGoal' => 'Ditt mål',
			'home.dailyGoal.goal' => 'Mål',
			'home.dailyGoal.dailyCalories' => 'Daglige kalorier (kcal)',
			'home.dailyGoal.setGoal' => 'Sett mål',
			'home.dailyGoal.intake' => 'Inntak',
			'home.dailyGoal.burned' => 'Forbrent',
			'home.dailyGoal.weightImpact' => 'Vektpåvirkning',
			'home.dailyGoal.estLoss' => 'Estimert tap på',
			'home.dailyGoal.estGain' => 'Estimert økning på',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Dagsoversikt',
			'home.dailySummary.calories' => 'Kalorier',
			'home.dailySummary.carbs' => 'Karbohydrater',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Fett',
			'home.dailySummary.fiber' => 'Fiber',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Makrodiagram',
			'home.intakeProgress.title' => 'Dagens makrofordeling',
			'home.intakeProgress.target' => 'Mål',
			'home.intakeProgress.current' => 'Nåværende',
			'home.intakeHistory.title' => '7-dagers makrohistorikk',
			'home.intakeHistory.trendTitle' => 'Dagens trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Topp: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Ingen historikk ennå',
			'home.intakeHistory.startLogging' => 'Begynn å logge måltider for å se dine\n7-dagers makrotrender her',
			'home.mealLog.title' => 'Loggede måltider',
			'home.mealLog.emptyMessage' => 'Ta et bilde av forrige måltid for å logge det her.',
			'home.mealLog.noMealsToday' => 'Ingen måltider registrert i dag',
			'home.mealLog.seeAllMeals' => 'Se alle måltider',
			'home.mealDescription.title' => 'Raskt tillegg med AI',
			'home.mealDescription.description' => 'Beskriv måltidet, så håndterer AI resten.',
			'home.mealDescription.hint' => 'f.eks. Til frokost hadde jeg en stor bolle havregrøt med en skivet banan og en scoop whey ...',
			'home.mealDescription.analyzeMeal' => 'Analyser måltid',
			'home.favoriteMeals.title' => 'Favorittmåltider',
			'home.favoriteMeals.description' => 'Legg raskt til et av favorittmåltidene dine.',
			'home.favoriteMeals.noFavorites' => 'Ingen favorittmåltider ennå.',
			'home.favoriteMeals.addFavoriteHint' => 'Klikk stjernen på et måltid for å merke det som favoritt.',
			'home.favoriteMeals.seeAll' => 'Se alle',
			'home.favoriteMeals.add' => 'Legg til',
			'home.mealSnap.title' => 'Ta bilde & logg måltidet',
			'home.mealSnap.description' => 'Bruk kameraet for å ta et bilde av maten for AI-analyse.',
			'home.mealSnap.openCamera' => 'Åpne kamera',
			'home.mealSnap.gallery' => 'Galleri',
			'home.mealSnap.compressingPhoto' => 'Optimaliserer bilde…',
			'home.mealSnap.uploadingPhoto' => 'Laster opp bilde…',
			'home.connectHealth.title' => 'Synk med Health Connect',
			'home.connectHealth.description' => 'Synk ernæringsdata med Health Connect',
			'home.connectHealth.install' => 'Installer',
			'home.connectHealth.connect' => 'Koble til',
			'history.noMeals' => 'Ingen måltider registrert',
			'history.emptyMessage' => 'Ta et bilde av forrige måltid for å logge det her.',
			'history.today' => 'I dag',
			'history.yesterday' => 'I går',
			'meal.ohNo' => 'Å nei!',
			'meal.delete' => 'Slett',
			'meal.editMeal' => 'Rediger måltid',
			'meal.addMeal' => 'Legg til måltid',
			'meal.saveMeal' => 'Lagre måltid',
			'meal.save' => 'Lagre',
			'meal.mealName' => 'Måltidsnavn',
			'meal.mealNameHint' => 'f.eks. Eggerøre med toast',
			'meal.nameRequired' => 'Oppgi et måltidsnavn før du lagrer.',
			'meal.mealQuantity' => 'Mengde',
			'meal.mealQuantityHint' => 'f.eks. 1 bolle, 2 skiver',
			'meal.timeOfMeal' => 'Tidspunkt for måltidet',
			'meal.timeOfMealHint' => 'Velg tidspunktet du spiste måltidet',
			'meal.mealType' => 'Måltidstype',
			'meal.nutrition.calories' => 'Kalorier',
			'meal.nutrition.carbs' => 'Karbohydrater (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Fett (g)',
			'meal.nutrition.fiber' => 'Fiber (g)',
			'meal.deleteConfirmation.title' => 'Slett måltid',
			'meal.deleteConfirmation.message' => 'Er du sikker på at du vil slette denne måltidsoppføringen?',
			'meal.deleteConfirmation.cancel' => 'Avbryt',
			'meal.deleteConfirmation.delete' => 'Slett',
			'meal.addedToLog' => 'Måltid lagt til i loggen!',
			'meal.couldNotAdd' => ({required Object error}) => 'Kunne ikke legge til måltid: ${error}',
			'meal.savedSuccessfully' => 'Måltid lagt til!',
			'meal.updatedSuccessfully' => 'Måltid oppdatert!',
			'meal.errorSaving' => ({required Object error}) => 'Feil ved lagring av måltid: ${error}',
			'meal.removedFromFavorites' => 'Fjernet fra favoritter!',
			'meal.savedAsFavorite' => 'Måltid lagret som favoritt!',
			'meal.unfavorite' => 'Fjern favoritt',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Kunne ikke oppdatere favoritt: ${error}',
			'meal.feedbackThanks' => 'Takk for tilbakemeldingen!',
			'meal.reanalysisUpdated' => 'Oppdaterte måltidsanalysen basert på din tilbakemelding.',
			'meal.failedToProcess' => ({required Object error}) => 'Kunne ikke behandle: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Kunne ikke behandle bildet: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Feil ved komprimering av bilde: ${error}',
			'meal.failedToSave' => 'Kunne ikke lagre data. Prøv igjen.',
			'meal.skip' => 'Hopp over',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Spørsmål ${current} av ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Ingen spørsmål tilgjengelig',
			'meal.questionFlow.next' => 'Neste',
			'meal.questionFlow.continueLabel' => 'Fortsett',
			'meal.analysis.title' => 'Analyserer måltidet ditt',
			'meal.analysis.stepStarted' => 'Kommer i gang…',
			'meal.analysis.stepDecomposition' => 'Forstår måltidet ditt…',
			'meal.analysis.stepIngredients' => 'Matcher ingredienser med næringsdata…',
			'meal.analysis.stepUncertainty' => 'Sjekker sikkerhet…',
			'meal.analysis.stepMealTypeQuestion' => 'Nesten ferdig…',
			'meal.analysis.stepResult' => 'Ferdigstiller resultatet…',
			'meal.analysis.stepError' => 'Noe gikk galt',
			'meal.analysis.stepDefault' => 'Analyserer måltidet ditt…',
			'meal.analysis.progressUnderstand' => 'Forstår måltidet ditt',
			'meal.analysis.progressMatch' => 'Slår opp ingrediensnæring',
			'meal.analysis.progressCheck' => 'Sjekker porsjoner og sikkerhet',
			'meal.analysis.progressMealType' => 'Velger måltidstype',
			'meal.analysis.progressFinish' => 'Beregner kalorier og makroer',
			'meal.analysis.detectedIngredientHeading' => 'Ingredienser vi ser',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} til',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredienser oppdaget',
			'meal.analysis.ingredientsPending' => 'Skanner ingredienser…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tips: Konsistens slår perfeksjon—jevn logging avdekker mønstrene som betyr noe.',
			'meal.analysis.offlineTip1' => 'Tips: Naturlig lys og et bilde ovenfra hjelper med porsjonsnøyaktighet.',
			'meal.analysis.offlineTip2' => 'Tips: Nevn drikker, sauser og matolje—de tilfører ofte kalorier folk glemmer.',
			'meal.analysis.offlineTip3' => 'Tips: En kort porsjonsbeskrivelse (1 bolle, stor kaffe) gjør estimatene mye mer presise.',
			'meal.analysis.offlineTip4' => 'Tips: Å logge etter måltidet bygger fortsatt vanen; perfeksjon er valgfritt.',
			'meal.analysis.offlineTip5' => 'Tips: Si hvordan maten er tilberedt når det påvirker kalorier mye (stekt vs bakt).',
			'meal.localInference.reviewTitle' => 'Se over gjenkjente ingredienser',
			'meal.localInference.reviewSubtitle' => 'Dette ble tolket på enheten din. Korriger navn eller porsjoner før næringsinnholdet beregnes.',
			'meal.localInference.mealName' => 'Måltidnavn',
			'meal.localInference.ingredient' => 'Ingrediens',
			'meal.localInference.grams' => 'Estimert antall gram',
			'meal.localInference.removeIngredient' => 'Fjern ingrediens',
			'meal.localInference.continueLabel' => 'Fortsett',
			'meal.localInference.invalidProposal' => 'Legg til minst én ingrediens og bruk en positiv mengde gram.',
			'meal.localInference.localUnavailable' => 'Analyse på enheten er utilgjengelig akkurat nå.',
			'meal.localInference.calculationDetails' => 'Slik ble dette beregnet',
			'meal.localInference.interpretationLocal' => 'Ingredienser tolket på denne enheten',
			'meal.localInference.interpretationCloud' => 'Ingredienser tolket i skyen',
			'meal.localInference.interpretationManual' => 'Ingredienser gjennomgått eller redigert av deg',
			'meal.localInference.nutritionRemote' => 'Næringsinnhold hentet fra USDA via Calorify',
			'meal.localInference.nutritionFallback' => 'Noen næringsverdier ble estimert eksternt',
			'meal.localInference.calculationServer' => 'Kalorier og makronæringsstoffer beregnet av Calorify',
			'meal.localInference.fallbackUsed' => 'Lokal analyse ble erstattet av skybehandling',
			'meal.localInference.noRawContent' => 'Diagnostiske kvitteringer inkluderer ikke måltidstekst eller bilder.',
			'meal.feedback.title' => 'Hva ser feil ut?',
			'meal.feedback.subtitle' => 'Hjelp oss forbedre analysen ved å velge ett eller flere problemer.',
			'meal.feedback.tellUsMore' => 'Fortell oss mer',
			'meal.feedback.describeIncorrect' => 'Beskriv hva som var feil',
			'meal.feedback.submit' => 'Send inn',
			'meal.feedback.issueFoodIdentification' => 'Matidentifikasjon',
			'meal.feedback.issuePortionSize' => 'Porsjonsstørrelse',
			'meal.feedback.issueCalorieDistribution' => 'Kalorifordeling',
			'meal.feedback.issueMacrosWrong' => 'Makroer feil',
			'meal.feedback.issueMissingItems' => 'Mangler elementer',
			'meal.feedback.issueExtraItems' => 'Ekstra elementer',
			'meal.feedback.issueOther' => 'Annet',
			'favorites.title' => 'Favoritter',
			'favorites.empty' => 'Ingen favorittmåltider ennå.',
			'favorites.searchPlaceholder' => 'Søk i favorittmåltider',
			'favorites.searchEmptyTitle' => 'Ingen favoritter stemmer med søket',
			'favorites.searchEmptySubtitle' => 'Prøv et annet måltidsnavn, mengde eller måltidstype.',
			'favorites.sortLabel' => 'Sorter favoritter',
			'favorites.undo' => 'Angre',
			'favorites.removed' => ({required Object name}) => 'Fjernet ${name} fra favoritter',
			'favorites.sortOptions.recent' => 'Nylige',
			'favorites.sortOptions.calories' => 'Kalorier',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Ingen profildata funnet',
			'profile.yourProfile' => 'Din profil',
			'profile.viewAndManage' => 'Vis og administrer helseinformasjonen din',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'BASISINFORMASJON',
			'profile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'profile.sections.calculatedValues' => 'BEREGNEDE VERDIER',
			'profile.gender' => 'Kjønn',
			'profile.height' => 'Høyde',
			'profile.weight' => 'Vekt',
			'profile.age' => 'Alder',
			'profile.weightGoal' => 'Vektmål',
			'profile.targetWeight' => 'Målvekt',
			'profile.activityLevel' => 'Aktivitetsnivå',
			'profile.healthMetrics' => 'Helsemålinger',
			'profile.notSet' => 'Ikke satt',
			'profile.years' => 'år',
			'profile.updatedSuccessfully' => 'Profil oppdatert!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Daglig mål',
			'profile.calculatedValues.calPerDay' => 'cal/dag',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Helsescore',
			'healthScore.whyThisScore' => 'Hvorfor denne scoren?',
			'healthScore.note' => 'Denne scoren er et AI-estimat basert på identifiserte ingredienser og næringstetthet. Rådfør deg alltid med en fagperson for personlig kostholdsveiledning.',
			'healthScore.unhealthy' => 'Usunn',
			'healthScore.healthy' => 'Sunn',
			'healthScore.neutral' => 'Nøytral',
			'editProfile.title' => 'Rediger profil',
			'editProfile.sections.personalInformation' => 'PERSONLIG INFORMASJON',
			'editProfile.sections.physicalMeasurements' => 'FYSISKE MÅL',
			'editProfile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'editProfile.gender' => 'Kjønn',
			'editProfile.dateOfBirth' => 'Fødselsdato',
			'editProfile.height' => 'Høyde',
			'editProfile.weight' => 'Vekt',
			'editProfile.weightGoal' => 'Vektmål',
			'editProfile.activityLevel' => 'Aktivitetsnivå',
			'editProfile.metric' => 'Metrisk',
			'editProfile.imperial' => 'Imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metrisk (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Metrisk (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Mann',
			'editProfile.genders.female' => 'Kvinne',
			'editProfile.genders.other' => 'Annet',
			'editProfile.weightGoals.loseWeight.name' => 'Gå ned i vekt',
			'editProfile.weightGoals.loseWeight.description' => 'Skap kalorimangel for å gå ned i vekt',
			'editProfile.weightGoals.maintainWeight.name' => 'Beholde vekt',
			'editProfile.weightGoals.maintainWeight.description' => 'Oppretthold din nåværende vekt',
			'editProfile.weightGoals.gainWeight.name' => 'Gå opp i vekt',
			'editProfile.weightGoals.gainWeight.description' => 'Skap kalorioverskudd for å gå opp i vekt',
			'editProfile.activityLevels.sedentary.name' => 'Svært lite aktivitet',
			'editProfile.activityLevels.sedentary.description' => 'Lite eller ingen trening',
			'editProfile.activityLevels.lightlyActive.name' => 'Lett aktiv',
			'editProfile.activityLevels.lightlyActive.description' => 'Lett trening 1–3 dager/uke',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderat aktiv',
			'editProfile.activityLevels.moderatelyActive.description' => 'Moderat trening 3–5 dager/uke',
			'editProfile.activityLevels.veryActive.name' => 'Veldig aktiv',
			'editProfile.activityLevels.veryActive.description' => 'Hard trening 6–7 dager/uke',
			'editProfile.activityLevels.extremelyActive.name' => 'Ekstremt aktiv',
			'editProfile.activityLevels.extremelyActive.description' => 'Veldig hard trening eller fysisk krevende jobb',
			'settings.title' => 'Innstillinger',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISERING',
			'settings.sections.notifications' => 'MELDINGER',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.localInference' => 'ANALYSE PÅ ENHETEN',
			'settings.sections.supportAndLegal' => 'SUPPORT & JURIDISK',
			'settings.sections.about' => 'OM',
			'settings.sections.dangerZone' => 'FARLIG SONE',
			'settings.sections.developer' => 'UTVIKLER',
			'settings.editProfile.title' => 'Rediger profil',
			'settings.editProfile.subtitle' => 'Oppdater din personlige informasjon',
			'settings.language.title' => 'Språk',
			'settings.language.subtitle' => 'Velg foretrukket språk',
			'settings.language.searchHint' => 'Søk i språk...',
			'settings.language.noResults' => 'Ingen resultater funnet',
			'settings.heightUnit.title' => 'Høydeenhet',
			'settings.weightUnit.title' => 'Vektenhet',
			'settings.mealReminders.title' => 'Måltidspåminnelser',
			'settings.mealReminders.subtitle' => 'Hold deg på sporet med vennlige varsler',
			'settings.localInference.title' => 'Måltidsanalyse på enheten',
			'settings.localInference.subtitle' => 'Tolk støttede måltider med Gemini Nano før næringsinnholdet beregnes',
			'settings.localInference.unavailable' => 'Ikke tilgjengelig på denne enheten',
			'settings.localInference.rolloutUnavailable' => 'Støttet maskinvare funnet, men denne funksjonen er ikke aktivert for denne app-versjonen',
			'settings.localInference.modelSetup' => 'Gemini Nano må fullføre nedlastingen før dette kan aktiveres',
			'settings.localInference.useLocalTitle' => 'Bruk analyse på enheten',
			'settings.localInference.useLocalSubtitle' => 'Valgfritt og avslått som standard. Resultatene kan være mindre pålitelige for komplekse måltider.',
			'settings.localInference.disclosureTitle' => 'Før du aktiverer analyse på enheten',
			'settings.localInference.disclosureBody' => 'Gemini Nano kan identifisere ingredienser og estimere porsjoner på støttede Android-enheter. Ditt gjennomgåtte forslag til ingredienser sendes til Calorify for USDA-næringsgrunnlag og beregning.',
			'settings.localInference.disclosureLimit1' => 'Komplekse retter, skjulte ingredienser og porsjonsstørrelser kan bli identifisert feil.',
			'settings.localInference.disclosureLimit2' => 'Modellen kan være utilgjengelig under nedlasting, når den er opptatt, kjører i bakgrunnen eller er begrenset av enheten.',
			'settings.localInference.disclosureLimit3' => 'Hvis lokal tolkning ikke kan fullføres, sender denne betaen automatisk din opprinnelige måltidsbeskrivelse til Calorify for skyanalyse.',
			'settings.localInference.acknowledgement' => 'Jeg forstår at jeg bør se over gjenkjente ingredienser og porsjoner.',
			'settings.localInference.enable' => 'Bekreft og aktiver',
			'settings.localInference.cancel' => 'Avbryt',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Lyst',
			'settings.theme.dark' => 'Mørkt',
			'settings.theme.system' => 'System',
			'settings.sendFeedback.title' => 'Send tilbakemelding',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Hjelp oss forbedre ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Tilbakemelding for ${appLabel}-appen',
			'settings.sendFeedback.emailBodyPrefix' => 'Vennligst gi din tilbakemelding nedenfor:',
			'settings.sendFeedback.appVersion' => 'Appversjon',
			'settings.sendFeedback.device' => 'Enhet',
			'settings.sendFeedback.osVersion' => 'OS-versjon',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Eksporter måltidshistorikk',
			'settings.exportMealHistory.subtitle' => 'Del en CSV av dine loggede måltider',
			'settings.exportMealHistory.shareText' => 'Din Calorify-måltidshistorikk eksport',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Kunne ikke eksportere måltidshistorikk: ${error}',
			'settings.clearAllData.title' => 'Slett alle data',
			'settings.clearAllData.subtitle' => 'Slett all informasjon permanent',
			'settings.clearAllData.confirmationTitle' => 'Slette alle data?',
			'settings.clearAllData.confirmationMessage' => 'Denne handlingen kan ikke angres. Alle dine loggede måltider, favoritter og profilinnstillinger slettes permanent.',
			'settings.clearAllData.cancel' => 'Avbryt',
			'settings.clearAllData.clearEverything' => 'Slett alt',
			'settings.debugOptions.title' => 'Feilsøkingsvalg',
			'settings.developerModeEnabled' => 'Utviklermodus aktivert!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Se og administrer tillatelser',
			'settings.healthConnect.unavailable.title' => 'Health Connect utilgjengelig',
			'settings.healthConnect.unavailable.description' => 'Health Connect er ikke tilgjengelig på denne enheten. Installer Health Connect fra Play Store (Android 9+) eller oppdater til Android 14+.',
			'settings.healthConnect.permissions.title' => 'Tillatelser',
			'settings.healthConnect.permissions.description' => 'Følgende tillatelser blir bedt om for å gi Health Connect-integrasjon:',
			'settings.healthConnect.permissions.granted' => 'Gitt',
			'settings.healthConnect.permissions.notGranted' => 'Ikke gitt',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Les totalforbrente kalorier',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Lar appen lese dine totale forbrente kalorier fra Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Denne tillatelsen brukes for å vise din daglige kaloriforbrenning i appen, slik at du forstår total energiforbruk gjennom dagen.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Les ernæringsdata',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Lar appen lese ernæringsdata fra Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Denne tillatelsen gjør at appen kan lese ernæringsinformasjon som kan være logget av andre apper koblet til Health Connect, og gir en helhetlig oversikt over ernæring.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Skriv ernæringsdata',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Lar appen skrive ernæringsdata til Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Denne tillatelsen gjør at appen kan synkronisere dine loggede måltider til Health Connect, slik at ernæringsdataene dine blir tilgjengelige for andre helse- og treningsapper du bruker.',
			'settings.healthConnect.managePermissions' => 'Administrer tillatelser',
			'settings.healthConnect.openSettings' => 'Åpne Health Connect-innstillinger',
			'settings.healthConnect.requestPermissions' => 'Be om tillatelser',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Tillatelsesforespørselen ble avbrutt eller mislyktes. Prøv igjen eller gi tillatelser manuelt i Health Connect-innstillingene.',
			'settings.healthConnect.permissionRequestFailed' => 'Kunne ikke be om tillatelser. Prøv igjen eller gi tillatelser manuelt i Health Connect-innstillingene.',
			'settings.healthConnect.requestingPermissions' => 'Ber om...',
			'settings.about.title' => 'Om',
			'settings.about.tagline' => 'Rask, gratis og personvernfokusert kalorioversikt',
			'settings.about.ourStory.title' => 'Vår historie',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} ble født ut fra en enkel frustrasjon: de fleste kaloritrapingsapper er enten for kompliserte, krever konstant manuelt innspill, tar høye abonnementsavgifter, eller går på kompromiss med personvernet.\n\nSom en solo-utvikler ønsket jeg å lage noe enklere og mer rettferdig — en app som bruker AI for å redusere innsatsen, forblir rask og gratis å bruke, og behandler helsedataene dine med respekt.\n\n${appLabel} er appen jeg skulle ønske fantes: ingen kontoer, ingen sporing, ingen annonser — bare klare, praktiske innsikter og dine helse mål.',
			'settings.about.privacy.title' => 'Ditt personvern betyr noe',
			'settings.about.privacy.description' => 'Personvern er ikke en ettertanke — det er et designprinsipp. Her er hva det betyr i praksis:',
			'settings.about.privacy.noAccounts' => 'Ingen kontoer nødvendig\nBruk appen med en gang. Ingen registrering, ingen identiteter.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Ingen atferdssporing\n${appLabel} overvåker ikke aktiviteten din, bygger ikke bruksprofiler eller sporer deg på tvers av apper eller nettsteder.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Annonsefri etter design\n${appLabel} er bygget for å fungere uten annonser eller datadrevet inntektsmodell.',
			'settings.about.privacy.noDataSelling' => 'Ingen videresalg av data\nDine helsedata blir aldri solgt eller delt med tredjepart.',
			'settings.about.privacy.localStorage' => 'Lokal-først lagring\nDine data blir værende på enheten din.',
			'settings.about.privacy.privacyPolicy' => 'Personvernerklæring',
			'settings.about.developer.title' => 'Bygget av en solo-utvikler',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} er bygget og vedlikeholdt av én solo-utvikler som fokuserer på å lage rolig, personvernvennlig helseprogramvare.\n\nTilbakemeldinger leses personlig og former retningen for appen.',
			'settings.about.developer.website' => 'Nettsted',
			'settings.about.developer.email' => 'E-post',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Liker du ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Dine tilbakemeldinger gjør ${appLabel} bedre for alle.',
			'settings.about.feedback.rateApp' => 'Vurder i Play Store',
			'settings.about.feedback.sendFeedback' => 'Send tilbakemelding',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Bygg ${buildNumber}',
			'reminders.title' => 'Hold deg på sporet med påminnelser',
			'reminders.description' => 'Få vennlige påminnelser om å logge måltidene dine og være konsekvent med ernæringsmålene dine',
			'reminders.notificationsEnabled' => 'Varsler aktivert',
			'reminders.notificationsDisabled' => 'Varsler deaktivert',
			'reminders.enabledSubtitle' => 'Du vil motta måltidspåminnelser',
			'reminders.disabledSubtitle' => 'Aktiver varsler for å få måltidspåminnelser',
			'reminders.mealReminders' => 'Måltidspåminnelser',
			'reminders.breakfast' => 'Frokost',
			'reminders.lunch' => 'Lunsj',
			'reminders.dinner' => 'Middag',
			'reminders.snack' => 'Mellommåltid',
			'reminders.unknown' => 'Ukjent',
			'reminders.change' => 'Endre',
			'reminders.enableNotifications' => 'Aktiver varsler',
			'reminders.skipForNow' => 'Hopp over for nå',
			'reminders.saveChanges' => 'Lagre endringer',
			'reminders.enabledSuccessfully' => 'Varsler aktivert!',
			'reminders.permissionDenied' => 'Tillatelse til varsler nektet',
			'reminders.errorEnabling' => ({required Object error}) => 'Feil ved aktivering av varsler: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Feil ved fullføring av oppsett: ${error}',
			'notifications.breakfast.title' => 'Frokosttid! 🍳',
			'notifications.breakfast.body' => 'Ikke glem å logge frokosten din',
			'notifications.lunch.title' => 'Lunsjtid! 🥗',
			'notifications.lunch.body' => 'Det er på tide å logge lunsjen din',
			'notifications.dinner.title' => 'Middagstid! 🍽️',
			'notifications.dinner.body' => 'Ikke glem å logge middagen din',
			'notifications.snack.title' => 'Snacketid! 🍎',
			'notifications.snack.body' => 'Tid for en sunn snack',
			'notifications.test.title' => 'Testvarsel',
			'login.title' => 'Logg inn',
			'login.signInWithGoogle' => 'Logg inn med Google',
			'login.signInFailed' => 'Google-pålogging mislyktes eller ble avbrutt.',
			'disclaimer.pleaseNote' => 'Vennligst merk',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} gir estimerte næringsverdier. Nøyaktigheten avhenger av innspillene dine og variasjon i mat. Bruk som veiledning, ikke som en definitiv kilde. Rådfør deg med en fagperson for personlig kostholdsråd.',
			'disclaimer.snap.portionSize.title' => 'Porsjonsstørrelse',
			'disclaimer.snap.portionSize.description' => 'Nøyaktigheten av estimatene avhenger i stor grad av din korrekte vurdering av porsjonsstørrelsen.',
			'disclaimer.snap.preparationMethods.title' => 'Tilberedningsmetoder',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Tilberedningsmetoder kan endre næringsinnholdet betydelig. ${appLabel}s estimater tar ikke alltid høyde for disse variasjonene.',
			'disclaimer.snap.ingredients.title' => 'Ingredienser',
			'disclaimer.snap.ingredients.description' => 'Komplekse retter med mange skjulte ingredienser kan gi mindre nøyaktige estimater.',
			'disclaimer.snap.databaseLimitations.title' => 'Databasebegrensninger',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}s matdatabase er omfattende, men kan ikke inneholde hvert enkelt matvarealternativ eller variasjon.',
			'disclaimer.weightEstimate.title' => 'Om vektestimatet',
			'disclaimer.weightEstimate.description' => 'Den projiserte vektendringen er et teoretisk estimat basert på det enkle kalori inn vs. kalori ut-modellen. Det er ment som motivasjonsveiledning, ikke en prediksjon av din faktiske vekt.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalorinøyaktighet',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Dette estimatet er så nøyaktig som registreringen av ditt kaloriinntak og -forbruk. Unøyaktig logging gir et unøyaktig estimat.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiske faktorer',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Faktisk vekttap/økning påvirkes av metabolisme, hormoner, søvn, stress, hydrering og andre individuelle faktorer som ${appLabel} ikke kan måle.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Vannvekt og svingninger',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normal daglig vekt kan variere betydelig på grunn av vannretensjon, fordøyelse og timing. Estimatet tar ikke hensyn til disse daglige endringene.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Profesjonell veiledning',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Bruk ikke dette estimatet til medisinske beslutninger. Rådfør deg alltid med helsepersonell eller en registrert ernæringsfysiolog for personlig veiledning.',
			'disclaimer.healthMetrics.description' => 'Disse målingene hjelper deg å forstå kroppens energibehov og veileder ernæringsmålene dine.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) er antall kalorier kroppen din forbrenner i hvile for å opprettholde grunnleggende funksjoner som pust og sirkulasjon. BMR avhenger av alder, kjønn, høyde og vekt. Høyere BMR betyr ofte at kroppen forbrenner mer kalorier i hvile, ofte på grunn av mer muskelmasse, yngre alder eller mannlig kjønn. Lavere BMR indikerer ofte mindre muskelmasse, høyere alder eller kvinnelig kjønn.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) er totale kalorier du forbrenner per dag, inkludert BMR pluss kalorier fra fysisk aktivitet og daglig bevegelse. TDEE avhenger av BMR og aktivitetsnivå. Høyere TDEE betyr at du forbrenner mer totalt, vanligvis fra mer aktivitet eller høyere BMR. Lavere TDEE antyder mindre daglig aktivitet eller lavere BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Daglig mål',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Daglig mål er ditt anbefalte daglige kaloriinntak basert på TDEE og vektmål. For vekttap inntar du færre kalorier enn TDEE. For vektvedlikehold matcher du TDEE. For vektøkning inntar du mer enn TDEE. Dette hjelper deg å nå ønsket vektendring i et sunt tempo.',
			'disclaimer.calorieExpenditure.title' => 'Estimert kalori-forbruk',
			'disclaimer.calorieExpenditure.description' => 'Når Health Connect-data ikke er tilgjengelig, estimerer vi dagens forbruk ved å bruke din BMR og aktivitetsnivå (TDEE), skalert etter hvor mye av dagen som har gått.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Hvordan estimatet beregnes',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Vi kalkulerer TDEE (basert på profilen din) og multipliserer med andelen av dagen som har gått (timer + minutter) / 24 for å estimere kalorier brukt så langt.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Profesjonell veiledning',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Bruk ikke dette estimatet til medisinske beslutninger. Rådfør deg alltid med helsepersonell eller en registrert ernæringsfysiolog for personlig veiledning.',
			_ => null,
		} ?? switch (path) {
			'common.close' => 'Lukk',
			'common.kContinue' => 'Fortsett',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Liker du ${appLabel}?',
			'feedbackRating.yes' => 'Ja, jeg liker den',
			'feedbackRating.no' => 'Ikke så mye',
			'feedbackRating.rateStepHeading' => 'Vurder i Play Store',
			'feedbackRating.emailStepHeading' => 'Send tilbakemelding via e-post',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'En rask vurdering hjelper andre å finne ${appLabel} og støtter videre utvikling. Vil du bruke et øyeblikk på å legge igjen en vurdering?',
			'feedbackRating.shareFeedbackViaEmail' => 'Din tilbakemelding former hva som kommer neste — vi leser hver melding. Vil du dele tankene dine via e-post?',
			'feedbackRating.rateCta' => 'Vurder i Play Store',
			'feedbackRating.maybeLater' => 'Kanskje senere',
			'feedbackRating.sendFeedback' => 'Send tilbakemelding',
			'feedbackRating.noThanks' => 'Nei takk',
			'feedbackRating.aboutUsDescription' => 'Lagett med omtanke av et lite team. Vi fokuserer på personvern, enkelhet og å hjelpe deg bygge bedre spisevaner.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Nysgjerrig på hvem som står bak ${appLabel}? Se ',
			'feedbackRating.aboutUsLinkLabel' => 'Om oss',
			'feedbackRating.thankYouMessage' => 'Takk! Vi spør igjen senere.',
			'health.syncFailed' => 'Kunne ikke synkronisere med Health Connect',
			'health.mealSynced' => 'Måltid synkronisert med Health Connect',
			_ => null,
		};
	}
}
