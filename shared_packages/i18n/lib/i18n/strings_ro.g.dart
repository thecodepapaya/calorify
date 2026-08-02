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
class TranslationsRo with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ro,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ro>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsRo _root = this; // ignore: unused_field

	@override 
	TranslationsRo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRo(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Română';
	@override String get flag => '🇷🇴';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsRo errors = _TranslationsErrorsRo._(_root);
	@override late final _TranslationsOnboardingRo onboarding = _TranslationsOnboardingRo._(_root);
	@override late final _TranslationsTabsRo tabs = _TranslationsTabsRo._(_root);
	@override late final _TranslationsHomeRo home = _TranslationsHomeRo._(_root);
	@override late final _TranslationsHistoryRo history = _TranslationsHistoryRo._(_root);
	@override late final _TranslationsMealRo meal = _TranslationsMealRo._(_root);
	@override late final _TranslationsFavoritesRo favorites = _TranslationsFavoritesRo._(_root);
	@override late final _TranslationsProfileRo profile = _TranslationsProfileRo._(_root);
	@override late final _TranslationsHealthScoreRo healthScore = _TranslationsHealthScoreRo._(_root);
	@override late final _TranslationsEditProfileRo editProfile = _TranslationsEditProfileRo._(_root);
	@override late final _TranslationsSettingsRo settings = _TranslationsSettingsRo._(_root);
	@override late final _TranslationsRemindersRo reminders = _TranslationsRemindersRo._(_root);
	@override late final _TranslationsNotificationsRo notifications = _TranslationsNotificationsRo._(_root);
	@override late final _TranslationsLoginRo login = _TranslationsLoginRo._(_root);
	@override late final _TranslationsDisclaimerRo disclaimer = _TranslationsDisclaimerRo._(_root);
	@override late final _TranslationsCommonRo common = _TranslationsCommonRo._(_root);
	@override late final _TranslationsFeedbackRatingRo feedbackRating = _TranslationsFeedbackRatingRo._(_root);
	@override late final _TranslationsHealthRo health = _TranslationsHealthRo._(_root);
}

// Path: errors
class _TranslationsErrorsRo implements TranslationsErrorsEn {
	_TranslationsErrorsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Ai făcut prea multe solicitări. Așteaptă puțin înainte de a încerca din nou.';
	@override String get networkError => 'Eroare de rețea. Verifică conexiunea la internet.';
	@override String get unknownError => 'Ceva nu a mers bine. Te rugăm încearcă din nou mai târziu.';
	@override String get loadingProfileData => 'Eroare la încărcarea datelor profilului';
	@override String get somethingWentWrong => 'Ceva nu a mers bine.';
	@override String get retry => 'Reîncearcă';
}

// Path: onboarding
class _TranslationsOnboardingRo implements TranslationsOnboardingEn {
	_TranslationsOnboardingRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bine ai venit la ${appLabel}';
	@override String get subtitle => 'Companionul tău personal pentru nutriție alimentat de AI';
	@override String get getStarted => 'Începe';
	@override late final _TranslationsOnboardingFeaturesRo features = _TranslationsOnboardingFeaturesRo._(_root);
	@override late final _TranslationsOnboardingGenderRo gender = _TranslationsOnboardingGenderRo._(_root);
	@override late final _TranslationsOnboardingHeightRo height = _TranslationsOnboardingHeightRo._(_root);
	@override late final _TranslationsOnboardingWeightRo weight = _TranslationsOnboardingWeightRo._(_root);
	@override late final _TranslationsOnboardingAgeRo age = _TranslationsOnboardingAgeRo._(_root);
	@override late final _TranslationsOnboardingBmiScaleRo bmiScale = _TranslationsOnboardingBmiScaleRo._(_root);
	@override late final _TranslationsOnboardingWeightGoalRo weightGoal = _TranslationsOnboardingWeightGoalRo._(_root);
	@override late final _TranslationsOnboardingActivityLevelRo activityLevel = _TranslationsOnboardingActivityLevelRo._(_root);
	@override late final _TranslationsOnboardingHealthConnectRo healthConnect = _TranslationsOnboardingHealthConnectRo._(_root);
	@override late final _TranslationsOnboardingReinforcementRo reinforcement = _TranslationsOnboardingReinforcementRo._(_root);
}

// Path: tabs
class _TranslationsTabsRo implements TranslationsTabsEn {
	_TranslationsTabsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Tabloul de bord';
	@override String get history => 'Istoric';
}

// Path: home
class _TranslationsHomeRo implements TranslationsHomeEn {
	_TranslationsHomeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryRo aiSummary = _TranslationsHomeAiSummaryRo._(_root);
	@override late final _TranslationsHomeDailyGoalRo dailyGoal = _TranslationsHomeDailyGoalRo._(_root);
	@override late final _TranslationsHomeDailySummaryRo dailySummary = _TranslationsHomeDailySummaryRo._(_root);
	@override late final _TranslationsHomeIntakeProgressRo intakeProgress = _TranslationsHomeIntakeProgressRo._(_root);
	@override late final _TranslationsHomeIntakeHistoryRo intakeHistory = _TranslationsHomeIntakeHistoryRo._(_root);
	@override late final _TranslationsHomeMealLogRo mealLog = _TranslationsHomeMealLogRo._(_root);
	@override late final _TranslationsHomeMealDescriptionRo mealDescription = _TranslationsHomeMealDescriptionRo._(_root);
	@override late final _TranslationsHomeFavoriteMealsRo favoriteMeals = _TranslationsHomeFavoriteMealsRo._(_root);
	@override late final _TranslationsHomeMealSnapRo mealSnap = _TranslationsHomeMealSnapRo._(_root);
	@override late final _TranslationsHomeConnectHealthRo connectHealth = _TranslationsHomeConnectHealthRo._(_root);
}

// Path: history
class _TranslationsHistoryRo implements TranslationsHistoryEn {
	_TranslationsHistoryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Nicio masă înregistrată';
	@override String get emptyMessage => 'Fă o poză ultimei tale mese pentru a o înregistra aici.';
	@override String get today => 'Azi';
	@override String get yesterday => 'Ieri';
}

// Path: meal
class _TranslationsMealRo implements TranslationsMealEn {
	_TranslationsMealRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'O, nu!';
	@override String get delete => 'Șterge';
	@override String get editMeal => 'Editează masa';
	@override String get addMeal => 'Adaugă masă';
	@override String get saveMeal => 'Salvează masa';
	@override String get save => 'Salvează';
	@override String get mealName => 'Numele mesei';
	@override String get mealNameHint => 'ex.: Ouă amestecate cu pâine prăjită';
	@override String get mealQuantity => 'Cantitate masă';
	@override String get mealQuantityHint => 'ex.: 1 bol, 2 felii';
	@override String get timeOfMeal => 'Ora mesei';
	@override String get timeOfMealHint => 'Selectează ora la care ai mâncat';
	@override String get mealType => 'Tipul mesei';
	@override late final _TranslationsMealNutritionRo nutrition = _TranslationsMealNutritionRo._(_root);
	@override late final _TranslationsMealDeleteConfirmationRo deleteConfirmation = _TranslationsMealDeleteConfirmationRo._(_root);
	@override String get addedToLog => 'Masa a fost adăugată în jurnal!';
	@override String couldNotAdd({required Object error}) => 'Nu s-a putut adăuga masa: ${error}';
	@override String get savedSuccessfully => 'Masa a fost adăugată cu succes!';
	@override String get updatedSuccessfully => 'Masa a fost actualizată cu succes!';
	@override String errorSaving({required Object error}) => 'Eroare la salvarea mesei: ${error}';
	@override String get removedFromFavorites => 'Eliminat din favorite!';
	@override String get savedAsFavorite => 'Masa salvată ca favorit!';
	@override String get unfavorite => 'Elimină din favorite';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nu s-a putut actualiza favorit: ${error}';
	@override String get feedbackThanks => 'Mulțumim pentru feedback!';
	@override String get reanalysisUpdated => 'Analiza mesei a fost actualizată pe baza feedback-ului tău.';
	@override String failedToProcess({required Object error}) => 'Procesare eșuată: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Procesare imagine eșuată: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Eroare la comprimarea imaginii: ${error}';
	@override String get failedToSave => 'Salvarea datelor a eșuat. Te rugăm încearcă din nou.';
	@override String get skip => 'Sari';
	@override late final _TranslationsMealQuestionFlowRo questionFlow = _TranslationsMealQuestionFlowRo._(_root);
	@override late final _TranslationsMealAnalysisRo analysis = _TranslationsMealAnalysisRo._(_root);
	@override late final _TranslationsMealFeedbackRo feedback = _TranslationsMealFeedbackRo._(_root);
}

// Path: favorites
class _TranslationsFavoritesRo implements TranslationsFavoritesEn {
	_TranslationsFavoritesRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorite';
	@override String get empty => 'Nu există mese favorite încă.';
	@override String get searchPlaceholder => 'Caută mese favorite';
	@override String get searchEmptyTitle => 'Niciun favorit nu se potrivește căutării';
	@override String get searchEmptySubtitle => 'Încearcă un alt nume de masă, cantitate sau tip de masă.';
	@override String get sortLabel => 'Sortează favoritele';
	@override String get undo => 'Anulează';
	@override String removed({required Object name}) => 'Am eliminat ${name} din favorite';
	@override late final _TranslationsFavoritesSortOptionsRo sortOptions = _TranslationsFavoritesSortOptionsRo._(_root);
}

// Path: profile
class _TranslationsProfileRo implements TranslationsProfileEn {
	_TranslationsProfileRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Nu s-au găsit date de profil';
	@override String get yourProfile => 'Profilul tău';
	@override String get viewAndManage => 'Vizualizează și gestionează informațiile tale de sănătate';
	@override late final _TranslationsProfileSectionsRo sections = _TranslationsProfileSectionsRo._(_root);
	@override String get gender => 'Gen';
	@override String get height => 'Înălțime';
	@override String get weight => 'Greutate';
	@override String get age => 'Vârstă';
	@override String get weightGoal => 'Obiectiv greutate';
	@override String get targetWeight => 'Greutate țintă';
	@override String get activityLevel => 'Nivel de activitate';
	@override String get healthMetrics => 'Metrici de sănătate';
	@override String get notSet => 'Nedefinit';
	@override String get years => 'ani';
	@override String get updatedSuccessfully => 'Profil actualizat cu succes!';
	@override late final _TranslationsProfileCalculatedValuesRo calculatedValues = _TranslationsProfileCalculatedValuesRo._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreRo implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scor de sănătate';
	@override String get whyThisScore => 'De ce acest scor?';
	@override String get note => 'Acest scor este o estimare AI bazată pe ingredientele identificate și densitatea nutrițională. Consultă întotdeauna un profesionist pentru sfaturi dietetice.';
	@override String get unhealthy => 'Nesănătos';
	@override String get healthy => 'Sănătos';
	@override String get neutral => 'Neutru';
}

// Path: editProfile
class _TranslationsEditProfileRo implements TranslationsEditProfileEn {
	_TranslationsEditProfileRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editează profilul';
	@override late final _TranslationsEditProfileSectionsRo sections = _TranslationsEditProfileSectionsRo._(_root);
	@override String get gender => 'Gen';
	@override String get dateOfBirth => 'Data nașterii';
	@override String get height => 'Înălțime';
	@override String get weight => 'Greutate';
	@override String get weightGoal => 'Obiectiv greutate';
	@override String get activityLevel => 'Nivel de activitate';
	@override String get metric => 'Metric';
	@override String get imperial => 'Imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metric (cm)';
	@override String get imperialFtIn => 'Imperial (ft/in)';
	@override String get metricKg => 'Metric (kg)';
	@override String get imperialLbs => 'Imperial (lbs)';
	@override late final _TranslationsEditProfileGendersRo genders = _TranslationsEditProfileGendersRo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsRo weightGoals = _TranslationsEditProfileWeightGoalsRo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsRo activityLevels = _TranslationsEditProfileActivityLevelsRo._(_root);
}

// Path: settings
class _TranslationsSettingsRo implements TranslationsSettingsEn {
	_TranslationsSettingsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Setări';
	@override late final _TranslationsSettingsSectionsRo sections = _TranslationsSettingsSectionsRo._(_root);
	@override late final _TranslationsSettingsEditProfileRo editProfile = _TranslationsSettingsEditProfileRo._(_root);
	@override late final _TranslationsSettingsLanguageRo language = _TranslationsSettingsLanguageRo._(_root);
	@override late final _TranslationsSettingsHeightUnitRo heightUnit = _TranslationsSettingsHeightUnitRo._(_root);
	@override late final _TranslationsSettingsWeightUnitRo weightUnit = _TranslationsSettingsWeightUnitRo._(_root);
	@override late final _TranslationsSettingsMealRemindersRo mealReminders = _TranslationsSettingsMealRemindersRo._(_root);
	@override late final _TranslationsSettingsThemeRo theme = _TranslationsSettingsThemeRo._(_root);
	@override late final _TranslationsSettingsSendFeedbackRo sendFeedback = _TranslationsSettingsSendFeedbackRo._(_root);
	@override late final _TranslationsSettingsExportMealHistoryRo exportMealHistory = _TranslationsSettingsExportMealHistoryRo._(_root);
	@override late final _TranslationsSettingsClearAllDataRo clearAllData = _TranslationsSettingsClearAllDataRo._(_root);
	@override late final _TranslationsSettingsDebugOptionsRo debugOptions = _TranslationsSettingsDebugOptionsRo._(_root);
	@override String get developerModeEnabled => 'Mod dezvoltator activat!';
	@override late final _TranslationsSettingsHealthConnectRo healthConnect = _TranslationsSettingsHealthConnectRo._(_root);
	@override late final _TranslationsSettingsAboutRo about = _TranslationsSettingsAboutRo._(_root);
	@override late final _TranslationsSettingsAppInfoRo appInfo = _TranslationsSettingsAppInfoRo._(_root);
}

// Path: reminders
class _TranslationsRemindersRo implements TranslationsRemindersEn {
	_TranslationsRemindersRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rămâi pe drumul cel bun cu mementouri';
	@override String get description => 'Primește mementouri blânde pentru a-ți înregistra mesele și a rămâne consecvent cu obiectivele nutriționale';
	@override String get notificationsEnabled => 'Notificări activate';
	@override String get notificationsDisabled => 'Notificări dezactivate';
	@override String get enabledSubtitle => 'Vei primi mementouri pentru mese';
	@override String get disabledSubtitle => 'Activează notificările pentru a primi mementouri pentru mese';
	@override String get mealReminders => 'Mementouri mese';
	@override String get breakfast => 'Mic dejun';
	@override String get lunch => 'Prânz';
	@override String get dinner => 'Cină';
	@override String get snack => 'Gustare';
	@override String get unknown => 'Necunoscut';
	@override String get change => 'Schimbă';
	@override String get enableNotifications => 'Activează notificările';
	@override String get skipForNow => 'Sari pentru moment';
	@override String get saveChanges => 'Salvează modificările';
	@override String get enabledSuccessfully => 'Notificările au fost activate cu succes!';
	@override String get permissionDenied => 'Permisiune notificări refuzată';
	@override String errorEnabling({required Object error}) => 'Eroare la activarea notificărilor: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Eroare la finalizarea configurării: ${error}';
}

// Path: notifications
class _TranslationsNotificationsRo implements TranslationsNotificationsEn {
	_TranslationsNotificationsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastRo breakfast = _TranslationsNotificationsBreakfastRo._(_root);
	@override late final _TranslationsNotificationsLunchRo lunch = _TranslationsNotificationsLunchRo._(_root);
	@override late final _TranslationsNotificationsDinnerRo dinner = _TranslationsNotificationsDinnerRo._(_root);
	@override late final _TranslationsNotificationsSnackRo snack = _TranslationsNotificationsSnackRo._(_root);
	@override late final _TranslationsNotificationsTestRo test = _TranslationsNotificationsTestRo._(_root);
}

// Path: login
class _TranslationsLoginRo implements TranslationsLoginEn {
	_TranslationsLoginRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autentificare';
	@override String get signInWithGoogle => 'Autentifică-te cu Google';
	@override String get signInFailed => 'Autentificarea cu Google a eșuat sau a fost anulată.';
}

// Path: disclaimer
class _TranslationsDisclaimerRo implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Te rugăm să reții';
	@override late final _TranslationsDisclaimerSnapRo snap = _TranslationsDisclaimerSnapRo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateRo weightEstimate = _TranslationsDisclaimerWeightEstimateRo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsRo healthMetrics = _TranslationsDisclaimerHealthMetricsRo._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureRo calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureRo._(_root);
}

// Path: common
class _TranslationsCommonRo implements TranslationsCommonEn {
	_TranslationsCommonRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get close => 'Închide';
	@override String get kContinue => 'Continuă';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingRo implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Îți place ${appLabel}?';
	@override String get yes => 'Da, îmi place';
	@override String get no => 'Nu chiar';
	@override String get rateStepHeading => 'Evaluează în Play Store';
	@override String get emailStepHeading => 'Trimite feedback prin email';
	@override String soloDevMessage({required Object appLabel}) => 'O evaluare rapidă ajută alții să găsească ${appLabel} și susține dezvoltarea. Ai putea lăsa una?';
	@override String get shareFeedbackViaEmail => 'Feedback-ul tău modelează viitorul — citim fiecare mesaj. Vrei să ne împărtășești gândurile prin email?';
	@override String get rateCta => 'Evaluează în Play Store';
	@override String get maybeLater => 'Poate mai târziu';
	@override String get sendFeedback => 'Trimite feedback';
	@override String get noThanks => 'Nu, mulțumesc';
	@override String get aboutUsDescription => 'Creat cu grijă de o echipă mică. Ne concentrăm pe confidențialitate, simplitate și pe a te ajuta să construiești obiceiuri alimentare mai bune.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Curios cine stă în spatele ${appLabel}? Vezi ';
	@override String get aboutUsLinkLabel => 'Despre noi';
	@override String get thankYouMessage => 'Mulțumim! Te vom întreba din nou altădată.';
}

// Path: health
class _TranslationsHealthRo implements TranslationsHealthEn {
	_TranslationsHealthRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Sincronizarea cu Health Connect a eșuat';
	@override String get mealSynced => 'Masa sincronizată cu Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesRo implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionRo foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionRo._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisRo aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisRo._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationRo healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationRo._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderRo implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Care este genul tău?';
	@override String get description => 'Genul ne ajută să calculăm corect rata metabolică bazală (BMR).';
	@override String get next => 'Următorul';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightRo implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cât de înalt ești?';
	@override String get description => 'Înălțimea te ajută să calculăm BMI și nevoile energetice cu acuratețe.';
	@override String get metric => 'Metric';
	@override String get imperial => 'Imperial';
	@override String get next => 'Următorul';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightRo implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Care este greutatea ta actuală?';
	@override String get currentDescription => 'Greutatea actuală este esențială pentru personalizarea obiectivelor zilnice.';
	@override String get targetTitle => 'Care este greutatea ta țintă?';
	@override String get targetDescription => 'Stabilirea unei greutăți țintă ne ajută să determinăm planul pe termen lung.';
	@override String get metric => 'Metric';
	@override String get imperial => 'Imperial';
	@override String get next => 'Următorul';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeRo implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Când e ziua ta de naștere?';
	@override String get description => 'Vârsta te ajută să calculăm cu acuratețe necesarul tău caloric.';
	@override String get next => 'Următorul';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleRo implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Sub';
	@override String get healthy => 'Sănătos';
	@override String get overweight => 'Peste';
	@override String get obese => 'Obez';
	@override late final _TranslationsOnboardingBmiScaleCategoriesRo categories = _TranslationsOnboardingBmiScaleCategoriesRo._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesRo messages = _TranslationsOnboardingBmiScaleMessagesRo._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalRo implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Care este obiectivul tău?';
	@override String get description => 'Alege obiectivul care descrie cel mai bine ce vrei să obții';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelRo implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cât de activ ești?';
	@override String get description => 'Acest lucru ne ajută să calculăm mai precis necesarul tău caloric zilnic';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectRo implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conectează-te la Health Connect';
	@override String get description => 'Sincronizează datele tale de sănătate pentru informații mai bune și urmărire automată a caloriilor';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingRo automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingRo._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsRo progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsRo._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationRo seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationRo._(_root);
	@override String get connected => 'Health Connect conectat';
	@override String get notConnected => 'Health Connect neconectat';
	@override String get setup => 'Configurează Health Connect';
	@override String get skipForNow => 'Sari pentru moment';
	@override String get statusConnected => 'Health Connect este conectat.';
	@override String get statusSuccess => 'Health Connect a fost conectat cu succes!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permisiune refuzată. Activează permisiunile Health Connect din setările telefonului pentru ${appLabel}.';
	@override String statusError({required Object error}) => 'Eroare la configurarea Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementRo implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessRo trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessRo._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileRo healthProfile = _TranslationsOnboardingReinforcementHealthProfileRo._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleRo goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleRo._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryRo implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rezumat AI';
	@override String get logMore => 'Înregistrează mai multe mese în următoarele zile pentru a primi perspective AI personalizate.';
	@override String get loading => 'Se încarcă rezumatul...';
	@override String mealCount({required Object count}) => '${count} mese înregistrate';
	@override String macroBalanceScore({required Object score}) => 'Scor echilibru ${score}';
	@override String get topFoods => 'Alimente principale';
	@override String get trendUp => 'Calorii în creștere';
	@override String get trendDown => 'Calorii în scădere';
	@override String get trendSteady => 'Calorii stabile';
	@override String generatedAt({required Object time}) => 'Actualizat ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalRo implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Setează-ți obiectivul zilnic';
	@override String get titleSet => 'Obiectivul tău zilnic';
	@override String get description => 'Gata să pornești călătoria spre bine? Setează-ți ținta calorică zilnică mai jos pentru a-ți începe progresul.';
	@override String get descriptionSet => 'Compasul tău este setat! Aceasta este ținta ta calorică zilnică pentru orientare.';
	@override String get yourGoal => 'Obiectivul tău';
	@override String get goal => 'Obiectiv';
	@override String get dailyCalories => 'Calorii zilnice (kcal)';
	@override String get setGoal => 'Setează obiectiv';
	@override String get intake => 'Consum';
	@override String get burned => 'Arse';
	@override String get weightImpact => 'Impact asupra greutății';
	@override String get estLoss => 'Estim. pierdere de';
	@override String get estGain => 'Estim. câștig de';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryRo implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rezumat zilnic';
	@override String get calories => 'Calorii';
	@override String get carbs => 'Carbohidrați';
	@override String get protein => 'Proteine';
	@override String get fat => 'Grăsimi';
	@override String get fiber => 'Fibră';
	@override String get grams => 'grame';
	@override String get chartAccessibilityLabel => 'Graficul macronutrienților';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressRo implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Distribuția macro de azi';
	@override String get target => 'Țintă';
	@override String get current => 'Curent';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryRo implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Istoric macro pe 7 zile';
	@override String get trendTitle => 'Tendința de azi';
	@override String peakHour({required Object hour}) => 'Vârf: ${hour}:00';
	@override String get noHistoryYet => 'Încă nu există istoricul';
	@override String get startLogging => 'Începe să înregistrezi mese pentru a vedea\n7-day macro trends here';
}

// Path: home.mealLog
class _TranslationsHomeMealLogRo implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mese înregistrate';
	@override String get emptyMessage => 'Fă o poză ultimei tale mese pentru a o înregistra aici.';
	@override String get noMealsToday => 'Nicio masă înregistrată pentru azi';
	@override String get seeAllMeals => 'Vezi toate mesele';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionRo implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adăugare rapidă cu AI';
	@override String get description => 'Descrie-ți masa și lasă AI să se ocupe de detalii.';
	@override String get hint => 'ex. la micul dejun am avut un bol mare de fulgi de ovăz cu o banană feliată și o cupă de whey ...';
	@override String get analyzeMeal => 'Analizează masa';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsRo implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mese favorite';
	@override String get description => 'Adaugă rapid una dintre mesele tale preferate.';
	@override String get noFavorites => 'Nu există mese favorite încă.';
	@override String get addFavoriteHint => 'Apasă steaua pe o masă pentru a o marca ca favorit.';
	@override String get seeAll => 'Vezi toate';
	@override String get add => 'Adaugă';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapRo implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fă o poză & urmărește masa';
	@override String get description => 'Folosește camera pentru a face o poză alimentelor pentru analiza AI.';
	@override String get openCamera => 'Deschide camera';
	@override String get gallery => 'Galerie';
	@override String get compressingPhoto => 'Optimizare fotografie…';
	@override String get uploadingPhoto => 'Încărcare fotografie…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthRo implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizează cu Health Connect';
	@override String get description => 'Sincronizează datele tale nutriționale cu Health Connect';
	@override String get install => 'Instalează';
	@override String get connect => 'Conectează-te';
}

// Path: meal.nutrition
class _TranslationsMealNutritionRo implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorii';
	@override String get carbs => 'Carbohidrați (g)';
	@override String get protein => 'Proteine (g)';
	@override String get fat => 'Grăsimi (g)';
	@override String get fiber => 'Fibră (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationRo implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Șterge masa';
	@override String get message => 'Ești sigur că vrei să ștergi această înregistrare a mesei?';
	@override String get cancel => 'Anulează';
	@override String get delete => 'Șterge';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowRo implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Întrebare ${current} din ${total}';
	@override String get noQuestionsAvailable => 'Nu există întrebări disponibile';
	@override String get next => 'Următorul';
	@override String get continueLabel => 'Continuă';
}

// Path: meal.analysis
class _TranslationsMealAnalysisRo implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Se analizează masa ta';
	@override String get stepStarted => 'Începem…';
	@override String get stepDecomposition => 'Înțelegem masa…';
	@override String get stepIngredients => 'Potrivim ingredientele cu date nutriționale…';
	@override String get stepUncertainty => 'Verificăm încrederea…';
	@override String get stepMealTypeQuestion => 'Mai aproape…';
	@override String get stepResult => 'Finalizăm rezultatul…';
	@override String get stepError => 'Ceva nu a mers bine';
	@override String get stepDefault => 'Se analizează masa ta…';
	@override String get progressUnderstand => 'Înțelegerea mesei';
	@override String get progressMatch => 'Căutarea informațiilor nutriționale pentru ingrediente';
	@override String get progressCheck => 'Verificarea porțiilor și a încrederii';
	@override String get progressMealType => 'Alegerea tipului de masă';
	@override String get progressFinish => 'Calcularea caloriilor și a macronutrienților';
	@override String get detectedIngredientHeading => 'Ingredientele pe care le observăm';
	@override String ingredientsOverflow({required Object count}) => '${count} în plus';
	@override String ingredientsLine({required Object count}) => '${count} ingrediente detectate';
	@override String get ingredientsPending => 'Scanare ingrediente…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Sfat: Consistența bate perfecțiunea—înregistrările regulate dezvăluie tiparele care contează.';
	@override String get offlineTip1 => 'Sfat: Pentru fotografii, lumina naturală și o vedere de sus ajută la acuratețea porțiilor.';
	@override String get offlineTip2 => 'Sfat: Menționează băuturile, sosurile și uleiul de gătit—ele adaugă calorii pe care oamenii le uită des.';
	@override String get offlineTip3 => 'Sfat: O scurtă notă despre porție (1 bol, cafea mare) face estimările mult mai precise.';
	@override String get offlineTip4 => 'Sfat: Înregistrarea după masă tot construiește obiceiul; perfecțiunea e opțională.';
	@override String get offlineTip5 => 'Sfat: Spune cum a fost gătit când afectează mult caloriile (prăjit vs copt).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackRo implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ce pare greșit?';
	@override String get subtitle => 'Ajută-ne să îmbunătățim analiza selectând una sau mai multe probleme.';
	@override String get tellUsMore => 'Spune-ne mai mult';
	@override String get describeIncorrect => 'Descrie ce a fost incorect';
	@override String get submit => 'Trimite';
	@override String get issueFoodIdentification => 'Identificare aliment';
	@override String get issuePortionSize => 'Mărimea porției';
	@override String get issueCalorieDistribution => 'Distribuția caloriilor';
	@override String get issueMacrosWrong => 'Macronutrienții sunt greșiți';
	@override String get issueMissingItems => 'Lipsesc elemente';
	@override String get issueExtraItems => 'Elemente în plus';
	@override String get issueOther => 'Altceva';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsRo implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Recente';
	@override String get calories => 'Calorii';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsRo implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'INFORMAȚII DE BAZĂ';
	@override String get goalsAndActivity => 'OBIECTIVE & ACTIVITATE';
	@override String get calculatedValues => 'VALORI CALCULATE';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesRo implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Obiectiv zilnic';
	@override String get calPerDay => 'cal/zi';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsRo implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMAȚII PERSONALE';
	@override String get physicalMeasurements => 'MĂSURĂTORI FIZICE';
	@override String get goalsAndActivity => 'OBIECTIVE & ACTIVITATE';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersRo implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get male => 'Bărbat';
	@override String get female => 'Femeie';
	@override String get other => 'Altul';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsRo implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightRo loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightRo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightRo maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightRo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightRo gainWeight = _TranslationsEditProfileWeightGoalsGainWeightRo._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsRo implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryRo sedentary = _TranslationsEditProfileActivityLevelsSedentaryRo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveRo lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveRo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveRo moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveRo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveRo veryActive = _TranslationsEditProfileActivityLevelsVeryActiveRo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveRo extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveRo._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsRo implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOCALIZARE';
	@override String get notifications => 'NOTIFICĂRI';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'SUPORT & LEGAL';
	@override String get about => 'DESPRE';
	@override String get dangerZone => 'ZONĂ DE PERICOL';
	@override String get developer => 'DEZVOLTATOR';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileRo implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editează profilul';
	@override String get subtitle => 'Actualizează informațiile tale personale';
}

// Path: settings.language
class _TranslationsSettingsLanguageRo implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limbă';
	@override String get subtitle => 'Alege limba preferată';
	@override String get searchHint => 'Caută limbi...';
	@override String get noResults => 'Nu s-au găsit rezultate';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitRo implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unitate înălțime';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitRo implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unitate greutate';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersRo implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mementouri mese';
	@override String get subtitle => 'Rămâi pe drumul cel bun cu alerte la timp';
}

// Path: settings.theme
class _TranslationsSettingsThemeRo implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Temă';
	@override String get light => 'Lumină';
	@override String get dark => 'Întunecat';
	@override String get system => 'Sistem';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackRo implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trimite feedback';
	@override String subtitle({required Object appLabel}) => 'Ajută-ne să îmbunătățim ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Feedback pentru ${appLabel}';
	@override String get emailBodyPrefix => 'Te rugăm oferă feedback-ul tău mai jos:';
	@override String get appVersion => 'Versiune aplicație';
	@override String get device => 'Dispozitiv';
	@override String get osVersion => 'Versiune OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryRo implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exportă istoricul meselor';
	@override String get subtitle => 'Partajează un CSV cu mesele înregistrate';
	@override String get shareText => 'Exportul istoricului meselor Calorify';
	@override String failed({required Object error}) => 'Nu s-a putut exporta istoricul meselor: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataRo implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Șterge toate datele';
	@override String get subtitle => 'Șterge irevocabil toate informațiile tale';
	@override String get confirmationTitle => 'Ștergi toate datele?';
	@override String get confirmationMessage => 'Această acțiune nu poate fi anulată. Toate mesele înregistrate, favoritele și setările profilului vor fi șterse definitiv.';
	@override String get cancel => 'Anulează';
	@override String get clearEverything => 'Șterge totul';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsRo implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opțiuni debug';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectRo implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Vizualizează și gestionează permisiunile';
	@override late final _TranslationsSettingsHealthConnectUnavailableRo unavailable = _TranslationsSettingsHealthConnectUnavailableRo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsRo permissions = _TranslationsSettingsHealthConnectPermissionsRo._(_root);
	@override String get managePermissions => 'Gestionare permisiuni';
	@override String get openSettings => 'Deschide setările Health Connect';
	@override String get requestPermissions => 'Solicită permisiuni';
	@override String get permissionRequestCancelledOrFailed => 'Cererea de permisiuni a fost anulată sau a eșuat. Te rugăm încearcă din nou sau acordă permisiunile manual în setările Health Connect.';
	@override String get permissionRequestFailed => 'Imposibil de solicitat permisiuni. Te rugăm încearcă din nou sau acordă permisiunile manual în setările Health Connect.';
	@override String get requestingPermissions => 'Se solicită...';
}

// Path: settings.about
class _TranslationsSettingsAboutRo implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Despre';
	@override String get tagline => 'Conștientizare calorică rapidă, gratuită și cu confidențialitate pe primul loc';
	@override late final _TranslationsSettingsAboutOurStoryRo ourStory = _TranslationsSettingsAboutOurStoryRo._(_root);
	@override late final _TranslationsSettingsAboutPrivacyRo privacy = _TranslationsSettingsAboutPrivacyRo._(_root);
	@override late final _TranslationsSettingsAboutDeveloperRo developer = _TranslationsSettingsAboutDeveloperRo._(_root);
	@override late final _TranslationsSettingsAboutFeedbackRo feedback = _TranslationsSettingsAboutFeedbackRo._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoRo implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastRo implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mic dejun! 🍳';
	@override String get body => 'Nu uita să-ți înregistrezi micul dejun';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchRo implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Prânz! 🥗';
	@override String get body => 'E timpul să notezi prânzul';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerRo implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cină! 🍽️';
	@override String get body => 'Nu uita să-ți înregistrezi cina';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackRo implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gustare! 🍎';
	@override String get body => 'E timpul pentru o gustare sănătoasă';
}

// Path: notifications.test
class _TranslationsNotificationsTestRo implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificare de test';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapRo implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} oferă informații nutriționale estimate. Precizia depinde de datele tale și de variațiile alimentelor. Folosește-le ca ghid, nu ca sursă definitivă. Consultă un specialist pentru sfaturi dietetice personalizate.';
	@override late final _TranslationsDisclaimerSnapPortionSizeRo portionSize = _TranslationsDisclaimerSnapPortionSizeRo._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsRo preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsRo._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsRo ingredients = _TranslationsDisclaimerSnapIngredientsRo._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsRo databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsRo._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateRo implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Despre estimarea greutății';
	@override String get description => 'Schimbarea proiectată a greutății este o estimare teoretică bazată pe modelul simplu calorii-in vs calorii-out. Este destinat doar ca ghid motivațional, nu ca o predicție a greutății tale reale.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyRo calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyRo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsRo biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsRo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightRo waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightRo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRo professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRo._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsRo implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Acești indicatori te ajută să înțelegi nevoile de energie ale corpului tău și să îți ghideze obiectivele nutriționale.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrRo bmr = _TranslationsDisclaimerHealthMetricsBmrRo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeRo tdee = _TranslationsDisclaimerHealthMetricsTdeeRo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalRo dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalRo._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureRo implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimare cheltuieli calorice';
	@override String get description => 'Când datele din Health Connect nu sunt disponibile, estimăm caloriile arse astăzi folosind BMR și nivelul de activitate (TDEE), scalate pentru porțiunea zilei care a trecut.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedRo howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedRo._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRo professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRo._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionRo implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recunoaștere inteligentă a alimentelor';
	@override String get description => 'Fă o fotografie și lasă AI să identifice masa ta';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisRo implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analiză AI';
	@override String get description => 'Primește informații nutriționale instant din descrierile tale';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationRo implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrare Health Connect';
	@override String get description => 'Conectează-te la Health Connect pentru informații mai bune';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesRo implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Sub greutate';
	@override String get healthyWeight => 'Greutate sănătoasă';
	@override String get overweight => 'Supraponderal';
	@override String get obese => 'Obez';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesRo implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Te putem ajuta să construiești un plan sănătos pentru a ajunge la o greutate echilibrată, cu mese bogate în nutrienți.';
	@override String get healthy => 'Felicitări! Te încadrezi într-un interval sănătos. Te vom ajuta să-ți menții vitalitatea și nivelul de energie.';
	@override String overweight({required Object appLabel}) => '${appLabel} îți va simplifica parcursul cu urmărire asistată de AI pentru a te ajuta să-ți atingi ținta confortabil.';
	@override String get obese => 'Suntem aici să te susținem cu recomandări personalizate și strategii sustenabile pentru obiectivele tale de sănătate.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingRo implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Urmărire automată a caloriilor';
	@override String get description => 'Urmărește caloriile arse din aplicațiile tale de fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsRo implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informații despre progres';
	@override String get description => 'Obține informații detaliate despre tendințele tale de sănătate';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationRo implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrare fără efort';
	@override String get description => 'Sincronizează date din aplicațiile tale preferate de sănătate';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessRo implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nu ești singur';
	@override String get genericMessage => 'Cercetările arată că urmărirea consecventă este principalul predictor al succesului pe termen lung.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Pentru o persoană de ${age} ani (${gender}) care dorește să ${goal}, urmărirea constantă este principalul predictor al succesului.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} face procesul de 10x mai ușor decât manual.';
	@override String get getStartedTitle => 'Gata să începi?';
	@override String get tipPhoto => 'Fotografiază mesele pentru analiză instantanee';
	@override String get tipConsistency => 'Înregistrează constant pentru a vedea progrese semnificative';
	@override String get tipProgress => 'Urmărește-ți progresul zilnic pentru a rămâne motivat';
	@override String get button => 'Hai să începem';
	@override String get defaultGender => 'persoană';
	@override String get defaultGoal => 'tu mai sănătos';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileRo implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profilul tău de sănătate';
	@override String bmiDescription({required Object bmi}) => 'Pe baza metricilor tale, BMI este ${bmi}.';
	@override String get finalizeDescription => 'Să finalizăm profilul tău pentru a-ți personaliza experiența.';
	@override String get goalGain => 'câștigă';
	@override String get goalLose => 'pierde';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Pentru a-ți atinge obiectivul, vei ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Ai atins greutatea țintă! Te vom ajuta să o menții.';
	@override String get button => 'Hai să începem';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleRo implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un început excelent!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Ai făcut primul pas către ${goalText}. Deoarece ești ${activityText}, ${appLabel} îți va ajusta țintele pentru a se potrivi stilului tău de viață.';
	@override String get personalizedTargets => 'Ținte calorice personalizate';
	@override String get aiMealDetection => 'Detectare mese asistată de AI';
	@override String get macroBreakdowns => 'Defalcări detaliate ale macronutrienților';
	@override String get button => 'Hai să începem';
	@override String get defaultGoal => 'obiectivele tale';
	@override String get defaultActivity => 'activ';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightRo implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Slăbește';
	@override String get description => 'Creează un deficit caloric pentru a pierde în greutate';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightRo implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Menține greutatea';
	@override String get description => 'Menține greutatea actuală';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightRo implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Crește în greutate';
	@override String get description => 'Creează un surplus caloric pentru a crește în greutate';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryRo implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentar';
	@override String get description => 'Puțin sau deloc exercițiu';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveRo implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ușor activ';
	@override String get description => 'Exercițiu ușor 1-3 zile/săptămână';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveRo implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderat activ';
	@override String get description => 'Exercițiu moderat 3-5 zile/săptămână';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveRo implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Foarte activ';
	@override String get description => 'Exercițiu intens 6-7 zile/săptămână';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveRo implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrem de activ';
	@override String get description => 'Exercițiu foarte intens, muncă fizică';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableRo implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect indisponibil';
	@override String get description => 'Health Connect nu este disponibil pe acest dispozitiv. Te rugăm instalează Health Connect din Play Store (Android 9+) sau actualizează la Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsRo implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permisiuni';
	@override String get description => 'Următoarele permisiuni sunt solicitate pentru integrarea cu Health Connect:';
	@override String get granted => 'Acordat';
	@override String get notGranted => 'Neacordat';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRo caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadRo nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadRo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteRo nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteRo._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryRo implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Povestea noastră';
	@override String content({required Object appLabel}) => '${appLabel} a luat naștere dintr-o frustrare simplă: majoritatea aplicațiilor de urmărire a caloriilor sunt fie prea complicate, solicită introduceri manuale constante, percep taxe mari de abonament sau compromit confidențialitatea.\n\nCa dezvoltator solo, am vrut să creez ceva mai simplu și mai corect — o aplicație care folosește AI pentru a reduce efortul, rămâne rapidă și gratuită și tratează datele tale de sănătate cu respect.\n\n${appLabel} este aplicația pe care mi-aș fi dorit să existe: fără conturi, fără urmărire, fără reclame — doar informații clare, practice și obiectivele tale de sănătate.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyRo implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confidențialitatea ta contează';
	@override String get description => 'Confidențialitatea nu este un detaliu — este un principiu de design. Iată ce înseamnă asta în practică:';
	@override String get noAccounts => 'Fără conturi necesare\nFolosește aplicația imediat. Fără înregistrări, fără identități.';
	@override String noTracking({required Object appLabel}) => 'Fără urmărire comportamentală\n${appLabel} nu îți monitorizează activitatea, nu creează profile de utilizare și nu te urmărește în aplicații sau site-uri.';
	@override String noAds({required Object appLabel}) => 'Fără reclame prin design\n${appLabel} este construit pentru a funcționa fără reclame sau monetizare bazată pe date.';
	@override String get noDataSelling => 'Fără vânzare de date\nDatele tale de sănătate nu sunt niciodată vândute sau împărtășite terților.';
	@override String get localStorage => 'Stocare locală prioritară\nDatele tale rămân pe dispozitivul tău.';
	@override String get privacyPolicy => 'Politica de confidențialitate';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperRo implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Creat de un dezvoltator solo';
	@override String description({required Object appLabel}) => '${appLabel} este creat și întreținut de un singur dezvoltator concentrat pe crearea de software de sănătate calm și respectuos cu confidențialitatea.\n\nFeedback-ul este citit personal și ajută la direcționarea aplicației.';
	@override String get website => 'Site web';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackRo implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Îți place ${appLabel}?';
	@override String description({required Object appLabel}) => 'Feedback-ul tău ajută la îmbunătățirea ${appLabel} pentru toată lumea.';
	@override String get rateApp => 'Evaluează în Play Store';
	@override String get sendFeedback => 'Trimite feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeRo implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mărimea porției';
	@override String get description => 'Acuratețea estimărilor depinde în mare măsură de evaluarea corectă a mărimii porției.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsRo implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metode de preparare';
	@override String description({required Object appLabel}) => 'Metodele de gătit pot altera semnificativ conținutul nutrițional. Estimările ${appLabel} pot să nu ia întotdeauna în calcul aceste variații.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsRo implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingrediente';
	@override String get description => 'Preparatele complexe cu multe ingrediente ascunse pot duce la estimări mai puțin exacte.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsRo implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitări ale bazei de date';
	@override String description({required Object appLabel}) => 'Baza de date de alimente a ${appLabel} este extinsă, dar s-ar putea să nu includă fiecare aliment sau variație.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyRo implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Acuratețea caloriilor';
	@override String get description => 'Această estimare este la fel de precisă ca înregistrările tale de aport și cheltuieli calorice. Înregistrările inexacte vor conduce la proiecții inexacte.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsRo implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Factori biologici';
	@override String description({required Object appLabel}) => 'Pierderea/câștigul real în greutate este influențat de metabolism, hormoni, somn, stres, hidratare și alți factori individuali pe care ${appLabel} nu îi poate măsura.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightRo implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Greutate apă & fluctuații';
	@override String get description => 'Greutatea zilnică normală poate fluctua semnificativ din cauza retenției de apă, digestiei și a momentului. Estimarea nu ia în calcul aceste schimbări zilnice.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRo implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ghidare profesională';
	@override String get description => 'Nu folosi această estimare pentru decizii medicale. Consultă întotdeauna un profesionist în sănătate sau un dietetician înregistrat pentru sfaturi personalizate privind gestionarea greutății.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrRo implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Rata metabolică bazală (BMR) este numărul de calorii pe care corpul le arde în repaus pentru a menține funcțiile de bază precum respirația și circulația. BMR depinde de vârstă, gen, înălțime și greutate. Un BMR mai mare înseamnă că organismul arde natural mai multe calorii în repaus, de obicei din cauza masei musculare mai mari, a vârstei mai tinere sau a sexului masculin. Un BMR mai mic indică de obicei masă musculară mai redusă, vârstă mai înaintată sau sex feminin.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeRo implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Cheltuiala totală de energie pe zi (TDEE) este totalul caloriilor arse zilnic, incluzând BMR plus caloriile din activitate fizică și mișcare zilnică. TDEE depinde de BMR și nivelul de activitate. Un TDEE mai mare înseamnă că arzi mai multe calorii în total, de obicei pentru că ești mai activ sau ai un BMR mai mare. Un TDEE mai mic sugerează mai puțină activitate zilnică sau un BMR mai mic.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalRo implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Obiectiv zilnic';
	@override String get description => 'Obiectivul zilnic este recomandarea ta de aport caloric zilnic bazată pe TDEE și obiectivul de greutate. Pentru pierdere în greutate, consumi mai puține calorii decât TDEE. Pentru menținere, egalezi TDEE. Pentru creștere, consumi mai multe calorii decât TDEE. Acest lucru te ajută să atingi schimbarea dorită a greutății într-un ritm sănătos.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedRo implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cum se calculează estimarea';
	@override String get description => 'Calculăm TDEE-ul tău (pe baza profilului) și îl înmulțim cu fracțiunea zilei trecute (ore + minute) / 24 pentru a estima caloriile arse până acum.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRo implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ghidare profesională';
	@override String get description => 'Nu folosi această estimare pentru decizii medicale. Consultă întotdeauna un profesionist în sănătate sau un dietetician înregistrat pentru sfaturi personalizate privind gestionarea greutății.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRo implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Citește caloriile totale arse';
	@override String get description => 'Permite aplicației să citească caloriile tale totale arse din Health Connect.';
	@override String get usage => 'Această permisiune este folosită pentru a afișa arderea zilnică de calorii în aplicație, ajutându-te să înțelegi cheltuiala totală de energie pe parcursul zilei.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadRo implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Citește date nutriționale';
	@override String get description => 'Permite aplicației să citească date nutriționale din Health Connect.';
	@override String get usage => 'Această permisiune permite aplicației să citească informații nutriționale înregistrate de alte aplicații conectate la Health Connect, oferind o vedere completă a nutriției tale.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteRo implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scrie date nutriționale';
	@override String get description => 'Permite aplicației să scrie date nutriționale în Health Connect.';
	@override String get usage => 'Această permisiune permite aplicației să sincronizeze mesele înregistrate în Health Connect, făcând datele tale nutriționale disponibile pentru alte aplicații de sănătate și fitness pe care le folosești.';
}

/// The flat map containing all translations for locale <ro>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Română',
			'flag' => '🇷🇴',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Ai făcut prea multe solicitări. Așteaptă puțin înainte de a încerca din nou.',
			'errors.networkError' => 'Eroare de rețea. Verifică conexiunea la internet.',
			'errors.unknownError' => 'Ceva nu a mers bine. Te rugăm încearcă din nou mai târziu.',
			'errors.loadingProfileData' => 'Eroare la încărcarea datelor profilului',
			'errors.somethingWentWrong' => 'Ceva nu a mers bine.',
			'errors.retry' => 'Reîncearcă',
			'onboarding.welcome' => ({required Object appLabel}) => 'Bine ai venit la ${appLabel}',
			'onboarding.subtitle' => 'Companionul tău personal pentru nutriție alimentat de AI',
			'onboarding.getStarted' => 'Începe',
			'onboarding.features.foodRecognition.title' => 'Recunoaștere inteligentă a alimentelor',
			'onboarding.features.foodRecognition.description' => 'Fă o fotografie și lasă AI să identifice masa ta',
			'onboarding.features.aiAnalysis.title' => 'Analiză AI',
			'onboarding.features.aiAnalysis.description' => 'Primește informații nutriționale instant din descrierile tale',
			'onboarding.features.healthIntegration.title' => 'Integrare Health Connect',
			'onboarding.features.healthIntegration.description' => 'Conectează-te la Health Connect pentru informații mai bune',
			'onboarding.gender.title' => 'Care este genul tău?',
			'onboarding.gender.description' => 'Genul ne ajută să calculăm corect rata metabolică bazală (BMR).',
			'onboarding.gender.next' => 'Următorul',
			'onboarding.height.title' => 'Cât de înalt ești?',
			'onboarding.height.description' => 'Înălțimea te ajută să calculăm BMI și nevoile energetice cu acuratețe.',
			'onboarding.height.metric' => 'Metric',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Următorul',
			'onboarding.weight.currentTitle' => 'Care este greutatea ta actuală?',
			'onboarding.weight.currentDescription' => 'Greutatea actuală este esențială pentru personalizarea obiectivelor zilnice.',
			'onboarding.weight.targetTitle' => 'Care este greutatea ta țintă?',
			'onboarding.weight.targetDescription' => 'Stabilirea unei greutăți țintă ne ajută să determinăm planul pe termen lung.',
			'onboarding.weight.metric' => 'Metric',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Următorul',
			'onboarding.age.title' => 'Când e ziua ta de naștere?',
			'onboarding.age.description' => 'Vârsta te ajută să calculăm cu acuratețe necesarul tău caloric.',
			'onboarding.age.next' => 'Următorul',
			'onboarding.bmiScale.underweight' => 'Sub',
			'onboarding.bmiScale.healthy' => 'Sănătos',
			'onboarding.bmiScale.overweight' => 'Peste',
			'onboarding.bmiScale.obese' => 'Obez',
			'onboarding.bmiScale.categories.underweight' => 'Sub greutate',
			'onboarding.bmiScale.categories.healthyWeight' => 'Greutate sănătoasă',
			'onboarding.bmiScale.categories.overweight' => 'Supraponderal',
			'onboarding.bmiScale.categories.obese' => 'Obez',
			'onboarding.bmiScale.messages.underweight' => 'Te putem ajuta să construiești un plan sănătos pentru a ajunge la o greutate echilibrată, cu mese bogate în nutrienți.',
			'onboarding.bmiScale.messages.healthy' => 'Felicitări! Te încadrezi într-un interval sănătos. Te vom ajuta să-ți menții vitalitatea și nivelul de energie.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} îți va simplifica parcursul cu urmărire asistată de AI pentru a te ajuta să-ți atingi ținta confortabil.',
			'onboarding.bmiScale.messages.obese' => 'Suntem aici să te susținem cu recomandări personalizate și strategii sustenabile pentru obiectivele tale de sănătate.',
			'onboarding.weightGoal.title' => 'Care este obiectivul tău?',
			'onboarding.weightGoal.description' => 'Alege obiectivul care descrie cel mai bine ce vrei să obții',
			'onboarding.activityLevel.title' => 'Cât de activ ești?',
			'onboarding.activityLevel.description' => 'Acest lucru ne ajută să calculăm mai precis necesarul tău caloric zilnic',
			'onboarding.healthConnect.title' => 'Conectează-te la Health Connect',
			'onboarding.healthConnect.description' => 'Sincronizează datele tale de sănătate pentru informații mai bune și urmărire automată a caloriilor',
			'onboarding.healthConnect.automaticTracking.title' => 'Urmărire automată a caloriilor',
			'onboarding.healthConnect.automaticTracking.description' => 'Urmărește caloriile arse din aplicațiile tale de fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Informații despre progres',
			'onboarding.healthConnect.progressInsights.description' => 'Obține informații detaliate despre tendințele tale de sănătate',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integrare fără efort',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sincronizează date din aplicațiile tale preferate de sănătate',
			'onboarding.healthConnect.connected' => 'Health Connect conectat',
			'onboarding.healthConnect.notConnected' => 'Health Connect neconectat',
			'onboarding.healthConnect.setup' => 'Configurează Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Sari pentru moment',
			'onboarding.healthConnect.statusConnected' => 'Health Connect este conectat.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect a fost conectat cu succes!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permisiune refuzată. Activează permisiunile Health Connect din setările telefonului pentru ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Eroare la configurarea Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nu ești singur',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Cercetările arată că urmărirea consecventă este principalul predictor al succesului pe termen lung.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Pentru o persoană de ${age} ani (${gender}) care dorește să ${goal}, urmărirea constantă este principalul predictor al succesului.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} face procesul de 10x mai ușor decât manual.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Gata să începi?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Fotografiază mesele pentru analiză instantanee',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Înregistrează constant pentru a vedea progrese semnificative',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Urmărește-ți progresul zilnic pentru a rămâne motivat',
			'onboarding.reinforcement.trackingSuccess.button' => 'Hai să începem',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'persoană',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'tu mai sănătos',
			'onboarding.reinforcement.healthProfile.title' => 'Profilul tău de sănătate',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Pe baza metricilor tale, BMI este ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Să finalizăm profilul tău pentru a-ți personaliza experiența.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'câștigă',
			'onboarding.reinforcement.healthProfile.goalLose' => 'pierde',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Pentru a-ți atinge obiectivul, vei ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Ai atins greutatea țintă! Te vom ajuta să o menții.',
			'onboarding.reinforcement.healthProfile.button' => 'Hai să începem',
			'onboarding.reinforcement.goalLifestyle.title' => 'Un început excelent!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Ai făcut primul pas către ${goalText}. Deoarece ești ${activityText}, ${appLabel} îți va ajusta țintele pentru a se potrivi stilului tău de viață.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Ținte calorice personalizate',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Detectare mese asistată de AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Defalcări detaliate ale macronutrienților',
			'onboarding.reinforcement.goalLifestyle.button' => 'Hai să începem',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'obiectivele tale',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'activ',
			'tabs.dashboard' => 'Tabloul de bord',
			'tabs.history' => 'Istoric',
			'home.aiSummary.title' => 'Rezumat AI',
			'home.aiSummary.logMore' => 'Înregistrează mai multe mese în următoarele zile pentru a primi perspective AI personalizate.',
			'home.aiSummary.loading' => 'Se încarcă rezumatul...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} mese înregistrate',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Scor echilibru ${score}',
			'home.aiSummary.topFoods' => 'Alimente principale',
			'home.aiSummary.trendUp' => 'Calorii în creștere',
			'home.aiSummary.trendDown' => 'Calorii în scădere',
			'home.aiSummary.trendSteady' => 'Calorii stabile',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Actualizat ${time}',
			'home.dailyGoal.title' => 'Setează-ți obiectivul zilnic',
			'home.dailyGoal.titleSet' => 'Obiectivul tău zilnic',
			'home.dailyGoal.description' => 'Gata să pornești călătoria spre bine? Setează-ți ținta calorică zilnică mai jos pentru a-ți începe progresul.',
			'home.dailyGoal.descriptionSet' => 'Compasul tău este setat! Aceasta este ținta ta calorică zilnică pentru orientare.',
			'home.dailyGoal.yourGoal' => 'Obiectivul tău',
			'home.dailyGoal.goal' => 'Obiectiv',
			'home.dailyGoal.dailyCalories' => 'Calorii zilnice (kcal)',
			'home.dailyGoal.setGoal' => 'Setează obiectiv',
			'home.dailyGoal.intake' => 'Consum',
			'home.dailyGoal.burned' => 'Arse',
			'home.dailyGoal.weightImpact' => 'Impact asupra greutății',
			'home.dailyGoal.estLoss' => 'Estim. pierdere de',
			'home.dailyGoal.estGain' => 'Estim. câștig de',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Rezumat zilnic',
			'home.dailySummary.calories' => 'Calorii',
			'home.dailySummary.carbs' => 'Carbohidrați',
			'home.dailySummary.protein' => 'Proteine',
			'home.dailySummary.fat' => 'Grăsimi',
			'home.dailySummary.fiber' => 'Fibră',
			'home.dailySummary.grams' => 'grame',
			'home.dailySummary.chartAccessibilityLabel' => 'Graficul macronutrienților',
			'home.intakeProgress.title' => 'Distribuția macro de azi',
			'home.intakeProgress.target' => 'Țintă',
			'home.intakeProgress.current' => 'Curent',
			'home.intakeHistory.title' => 'Istoric macro pe 7 zile',
			'home.intakeHistory.trendTitle' => 'Tendința de azi',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Vârf: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Încă nu există istoricul',
			'home.intakeHistory.startLogging' => 'Începe să înregistrezi mese pentru a vedea\n7-day macro trends here',
			'home.mealLog.title' => 'Mese înregistrate',
			'home.mealLog.emptyMessage' => 'Fă o poză ultimei tale mese pentru a o înregistra aici.',
			'home.mealLog.noMealsToday' => 'Nicio masă înregistrată pentru azi',
			'home.mealLog.seeAllMeals' => 'Vezi toate mesele',
			'home.mealDescription.title' => 'Adăugare rapidă cu AI',
			'home.mealDescription.description' => 'Descrie-ți masa și lasă AI să se ocupe de detalii.',
			'home.mealDescription.hint' => 'ex. la micul dejun am avut un bol mare de fulgi de ovăz cu o banană feliată și o cupă de whey ...',
			'home.mealDescription.analyzeMeal' => 'Analizează masa',
			'home.favoriteMeals.title' => 'Mese favorite',
			'home.favoriteMeals.description' => 'Adaugă rapid una dintre mesele tale preferate.',
			'home.favoriteMeals.noFavorites' => 'Nu există mese favorite încă.',
			'home.favoriteMeals.addFavoriteHint' => 'Apasă steaua pe o masă pentru a o marca ca favorit.',
			'home.favoriteMeals.seeAll' => 'Vezi toate',
			'home.favoriteMeals.add' => 'Adaugă',
			'home.mealSnap.title' => 'Fă o poză & urmărește masa',
			'home.mealSnap.description' => 'Folosește camera pentru a face o poză alimentelor pentru analiza AI.',
			'home.mealSnap.openCamera' => 'Deschide camera',
			'home.mealSnap.gallery' => 'Galerie',
			'home.mealSnap.compressingPhoto' => 'Optimizare fotografie…',
			'home.mealSnap.uploadingPhoto' => 'Încărcare fotografie…',
			'home.connectHealth.title' => 'Sincronizează cu Health Connect',
			'home.connectHealth.description' => 'Sincronizează datele tale nutriționale cu Health Connect',
			'home.connectHealth.install' => 'Instalează',
			'home.connectHealth.connect' => 'Conectează-te',
			'history.noMeals' => 'Nicio masă înregistrată',
			'history.emptyMessage' => 'Fă o poză ultimei tale mese pentru a o înregistra aici.',
			'history.today' => 'Azi',
			'history.yesterday' => 'Ieri',
			'meal.ohNo' => 'O, nu!',
			'meal.delete' => 'Șterge',
			'meal.editMeal' => 'Editează masa',
			'meal.addMeal' => 'Adaugă masă',
			'meal.saveMeal' => 'Salvează masa',
			'meal.save' => 'Salvează',
			'meal.mealName' => 'Numele mesei',
			'meal.mealNameHint' => 'ex.: Ouă amestecate cu pâine prăjită',
			'meal.mealQuantity' => 'Cantitate masă',
			'meal.mealQuantityHint' => 'ex.: 1 bol, 2 felii',
			'meal.timeOfMeal' => 'Ora mesei',
			'meal.timeOfMealHint' => 'Selectează ora la care ai mâncat',
			'meal.mealType' => 'Tipul mesei',
			'meal.nutrition.calories' => 'Calorii',
			'meal.nutrition.carbs' => 'Carbohidrați (g)',
			'meal.nutrition.protein' => 'Proteine (g)',
			'meal.nutrition.fat' => 'Grăsimi (g)',
			'meal.nutrition.fiber' => 'Fibră (g)',
			'meal.deleteConfirmation.title' => 'Șterge masa',
			'meal.deleteConfirmation.message' => 'Ești sigur că vrei să ștergi această înregistrare a mesei?',
			'meal.deleteConfirmation.cancel' => 'Anulează',
			'meal.deleteConfirmation.delete' => 'Șterge',
			'meal.addedToLog' => 'Masa a fost adăugată în jurnal!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nu s-a putut adăuga masa: ${error}',
			'meal.savedSuccessfully' => 'Masa a fost adăugată cu succes!',
			'meal.updatedSuccessfully' => 'Masa a fost actualizată cu succes!',
			'meal.errorSaving' => ({required Object error}) => 'Eroare la salvarea mesei: ${error}',
			'meal.removedFromFavorites' => 'Eliminat din favorite!',
			'meal.savedAsFavorite' => 'Masa salvată ca favorit!',
			'meal.unfavorite' => 'Elimină din favorite',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nu s-a putut actualiza favorit: ${error}',
			'meal.feedbackThanks' => 'Mulțumim pentru feedback!',
			'meal.reanalysisUpdated' => 'Analiza mesei a fost actualizată pe baza feedback-ului tău.',
			'meal.failedToProcess' => ({required Object error}) => 'Procesare eșuată: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Procesare imagine eșuată: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Eroare la comprimarea imaginii: ${error}',
			'meal.failedToSave' => 'Salvarea datelor a eșuat. Te rugăm încearcă din nou.',
			'meal.skip' => 'Sari',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Întrebare ${current} din ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Nu există întrebări disponibile',
			'meal.questionFlow.next' => 'Următorul',
			'meal.questionFlow.continueLabel' => 'Continuă',
			'meal.analysis.title' => 'Se analizează masa ta',
			'meal.analysis.stepStarted' => 'Începem…',
			'meal.analysis.stepDecomposition' => 'Înțelegem masa…',
			'meal.analysis.stepIngredients' => 'Potrivim ingredientele cu date nutriționale…',
			'meal.analysis.stepUncertainty' => 'Verificăm încrederea…',
			'meal.analysis.stepMealTypeQuestion' => 'Mai aproape…',
			'meal.analysis.stepResult' => 'Finalizăm rezultatul…',
			'meal.analysis.stepError' => 'Ceva nu a mers bine',
			'meal.analysis.stepDefault' => 'Se analizează masa ta…',
			'meal.analysis.progressUnderstand' => 'Înțelegerea mesei',
			'meal.analysis.progressMatch' => 'Căutarea informațiilor nutriționale pentru ingrediente',
			'meal.analysis.progressCheck' => 'Verificarea porțiilor și a încrederii',
			'meal.analysis.progressMealType' => 'Alegerea tipului de masă',
			'meal.analysis.progressFinish' => 'Calcularea caloriilor și a macronutrienților',
			'meal.analysis.detectedIngredientHeading' => 'Ingredientele pe care le observăm',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} în plus',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingrediente detectate',
			'meal.analysis.ingredientsPending' => 'Scanare ingrediente…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Sfat: Consistența bate perfecțiunea—înregistrările regulate dezvăluie tiparele care contează.',
			'meal.analysis.offlineTip1' => 'Sfat: Pentru fotografii, lumina naturală și o vedere de sus ajută la acuratețea porțiilor.',
			'meal.analysis.offlineTip2' => 'Sfat: Menționează băuturile, sosurile și uleiul de gătit—ele adaugă calorii pe care oamenii le uită des.',
			'meal.analysis.offlineTip3' => 'Sfat: O scurtă notă despre porție (1 bol, cafea mare) face estimările mult mai precise.',
			'meal.analysis.offlineTip4' => 'Sfat: Înregistrarea după masă tot construiește obiceiul; perfecțiunea e opțională.',
			'meal.analysis.offlineTip5' => 'Sfat: Spune cum a fost gătit când afectează mult caloriile (prăjit vs copt).',
			'meal.feedback.title' => 'Ce pare greșit?',
			'meal.feedback.subtitle' => 'Ajută-ne să îmbunătățim analiza selectând una sau mai multe probleme.',
			'meal.feedback.tellUsMore' => 'Spune-ne mai mult',
			'meal.feedback.describeIncorrect' => 'Descrie ce a fost incorect',
			'meal.feedback.submit' => 'Trimite',
			'meal.feedback.issueFoodIdentification' => 'Identificare aliment',
			'meal.feedback.issuePortionSize' => 'Mărimea porției',
			'meal.feedback.issueCalorieDistribution' => 'Distribuția caloriilor',
			'meal.feedback.issueMacrosWrong' => 'Macronutrienții sunt greșiți',
			'meal.feedback.issueMissingItems' => 'Lipsesc elemente',
			'meal.feedback.issueExtraItems' => 'Elemente în plus',
			'meal.feedback.issueOther' => 'Altceva',
			'favorites.title' => 'Favorite',
			'favorites.empty' => 'Nu există mese favorite încă.',
			'favorites.searchPlaceholder' => 'Caută mese favorite',
			'favorites.searchEmptyTitle' => 'Niciun favorit nu se potrivește căutării',
			'favorites.searchEmptySubtitle' => 'Încearcă un alt nume de masă, cantitate sau tip de masă.',
			'favorites.sortLabel' => 'Sortează favoritele',
			'favorites.undo' => 'Anulează',
			'favorites.removed' => ({required Object name}) => 'Am eliminat ${name} din favorite',
			'favorites.sortOptions.recent' => 'Recente',
			'favorites.sortOptions.calories' => 'Calorii',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Nu s-au găsit date de profil',
			'profile.yourProfile' => 'Profilul tău',
			'profile.viewAndManage' => 'Vizualizează și gestionează informațiile tale de sănătate',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'INFORMAȚII DE BAZĂ',
			'profile.sections.goalsAndActivity' => 'OBIECTIVE & ACTIVITATE',
			'profile.sections.calculatedValues' => 'VALORI CALCULATE',
			'profile.gender' => 'Gen',
			'profile.height' => 'Înălțime',
			'profile.weight' => 'Greutate',
			'profile.age' => 'Vârstă',
			'profile.weightGoal' => 'Obiectiv greutate',
			'profile.targetWeight' => 'Greutate țintă',
			'profile.activityLevel' => 'Nivel de activitate',
			'profile.healthMetrics' => 'Metrici de sănătate',
			'profile.notSet' => 'Nedefinit',
			'profile.years' => 'ani',
			'profile.updatedSuccessfully' => 'Profil actualizat cu succes!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Obiectiv zilnic',
			'profile.calculatedValues.calPerDay' => 'cal/zi',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Scor de sănătate',
			'healthScore.whyThisScore' => 'De ce acest scor?',
			'healthScore.note' => 'Acest scor este o estimare AI bazată pe ingredientele identificate și densitatea nutrițională. Consultă întotdeauna un profesionist pentru sfaturi dietetice.',
			'healthScore.unhealthy' => 'Nesănătos',
			'healthScore.healthy' => 'Sănătos',
			'healthScore.neutral' => 'Neutru',
			'editProfile.title' => 'Editează profilul',
			'editProfile.sections.personalInformation' => 'INFORMAȚII PERSONALE',
			'editProfile.sections.physicalMeasurements' => 'MĂSURĂTORI FIZICE',
			'editProfile.sections.goalsAndActivity' => 'OBIECTIVE & ACTIVITATE',
			'editProfile.gender' => 'Gen',
			'editProfile.dateOfBirth' => 'Data nașterii',
			'editProfile.height' => 'Înălțime',
			'editProfile.weight' => 'Greutate',
			'editProfile.weightGoal' => 'Obiectiv greutate',
			'editProfile.activityLevel' => 'Nivel de activitate',
			'editProfile.metric' => 'Metric',
			'editProfile.imperial' => 'Imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metric (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Metric (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Bărbat',
			'editProfile.genders.female' => 'Femeie',
			'editProfile.genders.other' => 'Altul',
			'editProfile.weightGoals.loseWeight.name' => 'Slăbește',
			'editProfile.weightGoals.loseWeight.description' => 'Creează un deficit caloric pentru a pierde în greutate',
			'editProfile.weightGoals.maintainWeight.name' => 'Menține greutatea',
			'editProfile.weightGoals.maintainWeight.description' => 'Menține greutatea actuală',
			'editProfile.weightGoals.gainWeight.name' => 'Crește în greutate',
			'editProfile.weightGoals.gainWeight.description' => 'Creează un surplus caloric pentru a crește în greutate',
			'editProfile.activityLevels.sedentary.name' => 'Sedentar',
			'editProfile.activityLevels.sedentary.description' => 'Puțin sau deloc exercițiu',
			'editProfile.activityLevels.lightlyActive.name' => 'Ușor activ',
			'editProfile.activityLevels.lightlyActive.description' => 'Exercițiu ușor 1-3 zile/săptămână',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderat activ',
			'editProfile.activityLevels.moderatelyActive.description' => 'Exercițiu moderat 3-5 zile/săptămână',
			'editProfile.activityLevels.veryActive.name' => 'Foarte activ',
			'editProfile.activityLevels.veryActive.description' => 'Exercițiu intens 6-7 zile/săptămână',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrem de activ',
			'editProfile.activityLevels.extremelyActive.description' => 'Exercițiu foarte intens, muncă fizică',
			'settings.title' => 'Setări',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOCALIZARE',
			'settings.sections.notifications' => 'NOTIFICĂRI',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SUPORT & LEGAL',
			'settings.sections.about' => 'DESPRE',
			'settings.sections.dangerZone' => 'ZONĂ DE PERICOL',
			'settings.sections.developer' => 'DEZVOLTATOR',
			'settings.editProfile.title' => 'Editează profilul',
			'settings.editProfile.subtitle' => 'Actualizează informațiile tale personale',
			'settings.language.title' => 'Limbă',
			'settings.language.subtitle' => 'Alege limba preferată',
			'settings.language.searchHint' => 'Caută limbi...',
			'settings.language.noResults' => 'Nu s-au găsit rezultate',
			'settings.heightUnit.title' => 'Unitate înălțime',
			'settings.weightUnit.title' => 'Unitate greutate',
			'settings.mealReminders.title' => 'Mementouri mese',
			'settings.mealReminders.subtitle' => 'Rămâi pe drumul cel bun cu alerte la timp',
			'settings.theme.title' => 'Temă',
			'settings.theme.light' => 'Lumină',
			'settings.theme.dark' => 'Întunecat',
			'settings.theme.system' => 'Sistem',
			'settings.sendFeedback.title' => 'Trimite feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Ajută-ne să îmbunătățim ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback pentru ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Te rugăm oferă feedback-ul tău mai jos:',
			'settings.sendFeedback.appVersion' => 'Versiune aplicație',
			'settings.sendFeedback.device' => 'Dispozitiv',
			'settings.sendFeedback.osVersion' => 'Versiune OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Exportă istoricul meselor',
			'settings.exportMealHistory.subtitle' => 'Partajează un CSV cu mesele înregistrate',
			'settings.exportMealHistory.shareText' => 'Exportul istoricului meselor Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Nu s-a putut exporta istoricul meselor: ${error}',
			'settings.clearAllData.title' => 'Șterge toate datele',
			'settings.clearAllData.subtitle' => 'Șterge irevocabil toate informațiile tale',
			'settings.clearAllData.confirmationTitle' => 'Ștergi toate datele?',
			'settings.clearAllData.confirmationMessage' => 'Această acțiune nu poate fi anulată. Toate mesele înregistrate, favoritele și setările profilului vor fi șterse definitiv.',
			'settings.clearAllData.cancel' => 'Anulează',
			'settings.clearAllData.clearEverything' => 'Șterge totul',
			'settings.debugOptions.title' => 'Opțiuni debug',
			'settings.developerModeEnabled' => 'Mod dezvoltator activat!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Vizualizează și gestionează permisiunile',
			'settings.healthConnect.unavailable.title' => 'Health Connect indisponibil',
			'settings.healthConnect.unavailable.description' => 'Health Connect nu este disponibil pe acest dispozitiv. Te rugăm instalează Health Connect din Play Store (Android 9+) sau actualizează la Android 14+.',
			'settings.healthConnect.permissions.title' => 'Permisiuni',
			'settings.healthConnect.permissions.description' => 'Următoarele permisiuni sunt solicitate pentru integrarea cu Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Acordat',
			'settings.healthConnect.permissions.notGranted' => 'Neacordat',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Citește caloriile totale arse',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Permite aplicației să citească caloriile tale totale arse din Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Această permisiune este folosită pentru a afișa arderea zilnică de calorii în aplicație, ajutându-te să înțelegi cheltuiala totală de energie pe parcursul zilei.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Citește date nutriționale',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Permite aplicației să citească date nutriționale din Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Această permisiune permite aplicației să citească informații nutriționale înregistrate de alte aplicații conectate la Health Connect, oferind o vedere completă a nutriției tale.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Scrie date nutriționale',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Permite aplicației să scrie date nutriționale în Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Această permisiune permite aplicației să sincronizeze mesele înregistrate în Health Connect, făcând datele tale nutriționale disponibile pentru alte aplicații de sănătate și fitness pe care le folosești.',
			'settings.healthConnect.managePermissions' => 'Gestionare permisiuni',
			'settings.healthConnect.openSettings' => 'Deschide setările Health Connect',
			'settings.healthConnect.requestPermissions' => 'Solicită permisiuni',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Cererea de permisiuni a fost anulată sau a eșuat. Te rugăm încearcă din nou sau acordă permisiunile manual în setările Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Imposibil de solicitat permisiuni. Te rugăm încearcă din nou sau acordă permisiunile manual în setările Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Se solicită...',
			'settings.about.title' => 'Despre',
			'settings.about.tagline' => 'Conștientizare calorică rapidă, gratuită și cu confidențialitate pe primul loc',
			'settings.about.ourStory.title' => 'Povestea noastră',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} a luat naștere dintr-o frustrare simplă: majoritatea aplicațiilor de urmărire a caloriilor sunt fie prea complicate, solicită introduceri manuale constante, percep taxe mari de abonament sau compromit confidențialitatea.\n\nCa dezvoltator solo, am vrut să creez ceva mai simplu și mai corect — o aplicație care folosește AI pentru a reduce efortul, rămâne rapidă și gratuită și tratează datele tale de sănătate cu respect.\n\n${appLabel} este aplicația pe care mi-aș fi dorit să existe: fără conturi, fără urmărire, fără reclame — doar informații clare, practice și obiectivele tale de sănătate.',
			'settings.about.privacy.title' => 'Confidențialitatea ta contează',
			'settings.about.privacy.description' => 'Confidențialitatea nu este un detaliu — este un principiu de design. Iată ce înseamnă asta în practică:',
			'settings.about.privacy.noAccounts' => 'Fără conturi necesare\nFolosește aplicația imediat. Fără înregistrări, fără identități.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Fără urmărire comportamentală\n${appLabel} nu îți monitorizează activitatea, nu creează profile de utilizare și nu te urmărește în aplicații sau site-uri.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Fără reclame prin design\n${appLabel} este construit pentru a funcționa fără reclame sau monetizare bazată pe date.',
			'settings.about.privacy.noDataSelling' => 'Fără vânzare de date\nDatele tale de sănătate nu sunt niciodată vândute sau împărtășite terților.',
			'settings.about.privacy.localStorage' => 'Stocare locală prioritară\nDatele tale rămân pe dispozitivul tău.',
			'settings.about.privacy.privacyPolicy' => 'Politica de confidențialitate',
			'settings.about.developer.title' => 'Creat de un dezvoltator solo',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} este creat și întreținut de un singur dezvoltator concentrat pe crearea de software de sănătate calm și respectuos cu confidențialitatea.\n\nFeedback-ul este citit personal și ajută la direcționarea aplicației.',
			'settings.about.developer.website' => 'Site web',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Îți place ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Feedback-ul tău ajută la îmbunătățirea ${appLabel} pentru toată lumea.',
			'settings.about.feedback.rateApp' => 'Evaluează în Play Store',
			'settings.about.feedback.sendFeedback' => 'Trimite feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Rămâi pe drumul cel bun cu mementouri',
			'reminders.description' => 'Primește mementouri blânde pentru a-ți înregistra mesele și a rămâne consecvent cu obiectivele nutriționale',
			'reminders.notificationsEnabled' => 'Notificări activate',
			'reminders.notificationsDisabled' => 'Notificări dezactivate',
			'reminders.enabledSubtitle' => 'Vei primi mementouri pentru mese',
			'reminders.disabledSubtitle' => 'Activează notificările pentru a primi mementouri pentru mese',
			'reminders.mealReminders' => 'Mementouri mese',
			'reminders.breakfast' => 'Mic dejun',
			'reminders.lunch' => 'Prânz',
			'reminders.dinner' => 'Cină',
			'reminders.snack' => 'Gustare',
			'reminders.unknown' => 'Necunoscut',
			'reminders.change' => 'Schimbă',
			'reminders.enableNotifications' => 'Activează notificările',
			'reminders.skipForNow' => 'Sari pentru moment',
			'reminders.saveChanges' => 'Salvează modificările',
			'reminders.enabledSuccessfully' => 'Notificările au fost activate cu succes!',
			'reminders.permissionDenied' => 'Permisiune notificări refuzată',
			'reminders.errorEnabling' => ({required Object error}) => 'Eroare la activarea notificărilor: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Eroare la finalizarea configurării: ${error}',
			'notifications.breakfast.title' => 'Mic dejun! 🍳',
			'notifications.breakfast.body' => 'Nu uita să-ți înregistrezi micul dejun',
			'notifications.lunch.title' => 'Prânz! 🥗',
			'notifications.lunch.body' => 'E timpul să notezi prânzul',
			'notifications.dinner.title' => 'Cină! 🍽️',
			'notifications.dinner.body' => 'Nu uita să-ți înregistrezi cina',
			'notifications.snack.title' => 'Gustare! 🍎',
			'notifications.snack.body' => 'E timpul pentru o gustare sănătoasă',
			'notifications.test.title' => 'Notificare de test',
			'login.title' => 'Autentificare',
			'login.signInWithGoogle' => 'Autentifică-te cu Google',
			'login.signInFailed' => 'Autentificarea cu Google a eșuat sau a fost anulată.',
			'disclaimer.pleaseNote' => 'Te rugăm să reții',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} oferă informații nutriționale estimate. Precizia depinde de datele tale și de variațiile alimentelor. Folosește-le ca ghid, nu ca sursă definitivă. Consultă un specialist pentru sfaturi dietetice personalizate.',
			'disclaimer.snap.portionSize.title' => 'Mărimea porției',
			'disclaimer.snap.portionSize.description' => 'Acuratețea estimărilor depinde în mare măsură de evaluarea corectă a mărimii porției.',
			'disclaimer.snap.preparationMethods.title' => 'Metode de preparare',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Metodele de gătit pot altera semnificativ conținutul nutrițional. Estimările ${appLabel} pot să nu ia întotdeauna în calcul aceste variații.',
			'disclaimer.snap.ingredients.title' => 'Ingrediente',
			'disclaimer.snap.ingredients.description' => 'Preparatele complexe cu multe ingrediente ascunse pot duce la estimări mai puțin exacte.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitări ale bazei de date',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Baza de date de alimente a ${appLabel} este extinsă, dar s-ar putea să nu includă fiecare aliment sau variație.',
			'disclaimer.weightEstimate.title' => 'Despre estimarea greutății',
			'disclaimer.weightEstimate.description' => 'Schimbarea proiectată a greutății este o estimare teoretică bazată pe modelul simplu calorii-in vs calorii-out. Este destinat doar ca ghid motivațional, nu ca o predicție a greutății tale reale.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Acuratețea caloriilor',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Această estimare este la fel de precisă ca înregistrările tale de aport și cheltuieli calorice. Înregistrările inexacte vor conduce la proiecții inexacte.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Factori biologici',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Pierderea/câștigul real în greutate este influențat de metabolism, hormoni, somn, stres, hidratare și alți factori individuali pe care ${appLabel} nu îi poate măsura.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Greutate apă & fluctuații',
			'disclaimer.weightEstimate.waterWeight.description' => 'Greutatea zilnică normală poate fluctua semnificativ din cauza retenției de apă, digestiei și a momentului. Estimarea nu ia în calcul aceste schimbări zilnice.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Ghidare profesională',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Nu folosi această estimare pentru decizii medicale. Consultă întotdeauna un profesionist în sănătate sau un dietetician înregistrat pentru sfaturi personalizate privind gestionarea greutății.',
			'disclaimer.healthMetrics.description' => 'Acești indicatori te ajută să înțelegi nevoile de energie ale corpului tău și să îți ghideze obiectivele nutriționale.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Rata metabolică bazală (BMR) este numărul de calorii pe care corpul le arde în repaus pentru a menține funcțiile de bază precum respirația și circulația. BMR depinde de vârstă, gen, înălțime și greutate. Un BMR mai mare înseamnă că organismul arde natural mai multe calorii în repaus, de obicei din cauza masei musculare mai mari, a vârstei mai tinere sau a sexului masculin. Un BMR mai mic indică de obicei masă musculară mai redusă, vârstă mai înaintată sau sex feminin.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Cheltuiala totală de energie pe zi (TDEE) este totalul caloriilor arse zilnic, incluzând BMR plus caloriile din activitate fizică și mișcare zilnică. TDEE depinde de BMR și nivelul de activitate. Un TDEE mai mare înseamnă că arzi mai multe calorii în total, de obicei pentru că ești mai activ sau ai un BMR mai mare. Un TDEE mai mic sugerează mai puțină activitate zilnică sau un BMR mai mic.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Obiectiv zilnic',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Obiectivul zilnic este recomandarea ta de aport caloric zilnic bazată pe TDEE și obiectivul de greutate. Pentru pierdere în greutate, consumi mai puține calorii decât TDEE. Pentru menținere, egalezi TDEE. Pentru creștere, consumi mai multe calorii decât TDEE. Acest lucru te ajută să atingi schimbarea dorită a greutății într-un ritm sănătos.',
			'disclaimer.calorieExpenditure.title' => 'Estimare cheltuieli calorice',
			'disclaimer.calorieExpenditure.description' => 'Când datele din Health Connect nu sunt disponibile, estimăm caloriile arse astăzi folosind BMR și nivelul de activitate (TDEE), scalate pentru porțiunea zilei care a trecut.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Cum se calculează estimarea',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Calculăm TDEE-ul tău (pe baza profilului) și îl înmulțim cu fracțiunea zilei trecute (ore + minute) / 24 pentru a estima caloriile arse până acum.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Ghidare profesională',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Nu folosi această estimare pentru decizii medicale. Consultă întotdeauna un profesionist în sănătate sau un dietetician înregistrat pentru sfaturi personalizate privind gestionarea greutății.',
			'common.close' => 'Închide',
			'common.kContinue' => 'Continuă',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Îți place ${appLabel}?',
			'feedbackRating.yes' => 'Da, îmi place',
			'feedbackRating.no' => 'Nu chiar',
			'feedbackRating.rateStepHeading' => 'Evaluează în Play Store',
			'feedbackRating.emailStepHeading' => 'Trimite feedback prin email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'O evaluare rapidă ajută alții să găsească ${appLabel} și susține dezvoltarea. Ai putea lăsa una?',
			'feedbackRating.shareFeedbackViaEmail' => 'Feedback-ul tău modelează viitorul — citim fiecare mesaj. Vrei să ne împărtășești gândurile prin email?',
			'feedbackRating.rateCta' => 'Evaluează în Play Store',
			'feedbackRating.maybeLater' => 'Poate mai târziu',
			'feedbackRating.sendFeedback' => 'Trimite feedback',
			'feedbackRating.noThanks' => 'Nu, mulțumesc',
			'feedbackRating.aboutUsDescription' => 'Creat cu grijă de o echipă mică. Ne concentrăm pe confidențialitate, simplitate și pe a te ajuta să construiești obiceiuri alimentare mai bune.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Curios cine stă în spatele ${appLabel}? Vezi ',
			'feedbackRating.aboutUsLinkLabel' => 'Despre noi',
			'feedbackRating.thankYouMessage' => 'Mulțumim! Te vom întreba din nou altădată.',
			'health.syncFailed' => 'Sincronizarea cu Health Connect a eșuat',
			'health.mealSynced' => 'Masa sincronizată cu Health Connect',
			_ => null,
		};
	}
}
