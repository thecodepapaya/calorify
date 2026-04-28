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
	@override String get rateLimitExceeded => 'Ai trimis prea multe cereri. Te rugăm să aștepți puțin înainte de a încerca din nou.';
	@override String get networkError => 'Eroare de rețea. Verifică conexiunea la internet.';
	@override String get unknownError => 'A apărut o problemă. Te rugăm să încerci mai târziu.';
	@override String get loadingProfileData => 'Eroare la încărcarea datelor de profil';
	@override String get somethingWentWrong => 'Ceva n-a mers bine.';
	@override String get retry => 'Reîncearcă';
}

// Path: onboarding
class _TranslationsOnboardingRo implements TranslationsOnboardingEn {
	_TranslationsOnboardingRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bun venit în ${appLabel}';
	@override String get subtitle => 'Partenerul tău personal de nutriție, alimentat de AI';
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
	@override String get dashboard => 'Tablou de bord';
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
	@override String get today => 'Astăzi';
	@override String get yesterday => 'Ieri';
}

// Path: meal
class _TranslationsMealRo implements TranslationsMealEn {
	_TranslationsMealRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Of, nu!';
	@override String get delete => 'Șterge';
	@override String get editMeal => 'Editează masa';
	@override String get addMeal => 'Adaugă masă';
	@override String get saveMeal => 'Salvează masa';
	@override String get save => 'Salvează';
	@override String get mealName => 'Numele mesei';
	@override String get mealNameHint => 'ex.: Ouă jumări cu pâine prăjită';
	@override String get mealQuantity => 'Cantitatea mesei';
	@override String get mealQuantityHint => 'ex.: 1 bol, 2 felii';
	@override String get timeOfMeal => 'Ora mesei';
	@override String get timeOfMealHint => 'Alege ora la care ai luat masa';
	@override String get mealType => 'Tipul mesei';
	@override late final _TranslationsMealNutritionRo nutrition = _TranslationsMealNutritionRo._(_root);
	@override late final _TranslationsMealDeleteConfirmationRo deleteConfirmation = _TranslationsMealDeleteConfirmationRo._(_root);
	@override String get addedToLog => 'Masa a fost adăugată în jurnalul tău!';
	@override String couldNotAdd({required Object error}) => 'Nu s-a putut adăuga masa: ${error}';
	@override String get savedSuccessfully => 'Masa a fost adăugată cu succes!';
	@override String get updatedSuccessfully => 'Masa a fost actualizată cu succes!';
	@override String errorSaving({required Object error}) => 'Eroare la salvarea mesei: ${error}';
	@override String get removedFromFavorites => 'Eliminat din favorite!';
	@override String get savedAsFavorite => 'Masa a fost salvată la favorite!';
	@override String get unfavorite => 'Elimină din favorite';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nu s-a putut actualiza favoritele: ${error}';
	@override String get feedbackThanks => 'Mulțumim pentru feedback!';
	@override String get reanalysisUpdated => 'Am actualizat analiza mesei pe baza feedbackului tău.';
	@override String failedToProcess({required Object error}) => 'Nu s-a putut procesa: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Nu s-a putut procesa imaginea: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Eroare la comprimarea imaginii: ${error}';
	@override String get failedToSave => 'Nu s-au putut salva datele. Te rugăm să încerci din nou.';
	@override String get skip => 'Sari peste';
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
	@override String get empty => 'Încă nu ai mese favorite.';
	@override String get searchPlaceholder => 'Caută mese favorite';
	@override String get searchEmptyTitle => 'Nicio favorită nu se potrivește căutării';
	@override String get searchEmptySubtitle => 'Încearcă un alt nume de masă, cantitate sau tip de masă.';
	@override String get sortLabel => 'Sortează favoritele';
	@override String get undo => 'Anulează';
	@override String removed({required Object name}) => '${name} a fost eliminat(ă) din favorite';
	@override late final _TranslationsFavoritesSortOptionsRo sortOptions = _TranslationsFavoritesSortOptionsRo._(_root);
}

// Path: profile
class _TranslationsProfileRo implements TranslationsProfileEn {
	_TranslationsProfileRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Nu au fost găsite date de profil';
	@override String get yourProfile => 'Profilul tău';
	@override String get viewAndManage => 'Vizualizează și gestionează informațiile tale de sănătate';
	@override late final _TranslationsProfileSectionsRo sections = _TranslationsProfileSectionsRo._(_root);
	@override String get gender => 'Gen';
	@override String get height => 'Înălțime';
	@override String get weight => 'Greutate';
	@override String get age => 'Vârstă';
	@override String get weightGoal => 'Obiectiv de greutate';
	@override String get targetWeight => 'Greutate țintă';
	@override String get activityLevel => 'Nivel de activitate';
	@override String get healthMetrics => 'Indicatori de sănătate';
	@override String get notSet => 'Nesetat';
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
	@override String get note => 'Acest scor este o estimare AI bazată pe ingredientele identificate și densitatea nutrițională. Cere întotdeauna sfatul unui profesionist pentru recomandări dietetice.';
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
	@override String get weightGoal => 'Obiectiv de greutate';
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
	@override String get developerModeEnabled => 'Modul pentru dezvoltatori activat!';
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
	@override String get description => 'Primește mementouri blânde pentru a-ți înregistra mesele și a rămâne consecvent(ă) cu obiectivele tale nutriționale';
	@override String get notificationsEnabled => 'Notificări activate';
	@override String get notificationsDisabled => 'Notificări dezactivate';
	@override String get enabledSubtitle => 'Vei primi mementouri pentru mese';
	@override String get disabledSubtitle => 'Activează notificările pentru a primi mementouri pentru mese';
	@override String get mealReminders => 'Mementouri pentru mese';
	@override String get breakfast => 'Mic dejun';
	@override String get lunch => 'Prânz';
	@override String get dinner => 'Cină';
	@override String get snack => 'Gustare';
	@override String get unknown => 'Necunoscut';
	@override String get change => 'Schimbă';
	@override String get enableNotifications => 'Activează notificările';
	@override String get skipForNow => 'Sari peste deocamdată';
	@override String get saveChanges => 'Salvează modificările';
	@override String get enabledSuccessfully => 'Notificările au fost activate cu succes!';
	@override String get permissionDenied => 'Permisiunea pentru notificări a fost refuzată';
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
	@override String get signInWithGoogle => 'Autentificare cu Google';
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
	@override String get no => 'Nu prea';
	@override String get rateStepHeading => 'Evaluează în Play Store';
	@override String get emailStepHeading => 'Trimite feedback pe email';
	@override String soloDevMessage({required Object appLabel}) => 'O evaluare rapidă îi ajută pe alții să descopere ${appLabel} și susține dezvoltarea. Ai vrea să lași una?';
	@override String get shareFeedbackViaEmail => 'Feedback-ul tău modelează ce urmează — citim fiecare mesaj. Vrei să ne trimiți gândurile tale prin email?';
	@override String get rateCta => 'Evaluează în Play Store';
	@override String get maybeLater => 'Poate mai târziu';
	@override String get sendFeedback => 'Trimite feedback';
	@override String get noThanks => 'Nu, mulțumesc';
	@override String get aboutUsDescription => 'Realizat cu grijă de o echipă mică. Ne concentrăm pe confidențialitate, simplitate și pe a te ajuta să-ți construiești obiceiuri alimentare mai bune.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Curios cine se află în spatele ${appLabel}? Vezi ';
	@override String get aboutUsLinkLabel => 'Despre noi';
	@override String get thankYouMessage => 'Mulțumim! Vom mai întreba altă dată.';
}

// Path: health
class _TranslationsHealthRo implements TranslationsHealthEn {
	_TranslationsHealthRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Nu s-a putut sincroniza cu Health Connect';
	@override String get mealSynced => 'Masa a fost sincronizată cu Health Connect';
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
	@override String get next => 'Înainte';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightRo implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cât de înalt(ă) ești?';
	@override String get description => 'Înălțimea ne ajută să calculăm corect IMC-ul și necesarul energetic.';
	@override String get metric => 'Metric';
	@override String get imperial => 'Imperial';
	@override String get next => 'Înainte';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightRo implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Care este greutatea ta actuală?';
	@override String get currentDescription => 'Greutatea actuală este esențială pentru personalizarea obiectivelor zilnice.';
	@override String get targetTitle => 'Care este greutatea ta țintă?';
	@override String get targetDescription => 'Stabilirea unei greutăți țintă ne ajută să definim planul pe termen lung.';
	@override String get metric => 'Metric';
	@override String get imperial => 'Imperial';
	@override String get next => 'Înainte';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeRo implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Când este ziua ta de naștere?';
	@override String get description => 'Vârsta ne ajută să calculăm corect necesarul tău caloric.';
	@override String get next => 'Înainte';
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
	@override String get title => 'Cât de activ(ă) ești?';
	@override String get description => 'Acest lucru ne ajută să îți calculăm mai precis necesarul caloric zilnic';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectRo implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conectează-te la Health Connect';
	@override String get description => 'Sincronizează-ți datele de sănătate pentru perspective mai bune și urmărire automată a caloriilor';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingRo automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingRo._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsRo progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsRo._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationRo seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationRo._(_root);
	@override String get connected => 'Health Connect este conectat';
	@override String get notConnected => 'Health Connect nu este conectat';
	@override String get setup => 'Configurează Health Connect';
	@override String get skipForNow => 'Sari peste deocamdată';
	@override String get statusConnected => 'Health Connect este conectat.';
	@override String get statusSuccess => 'Health Connect a fost conectat cu succes!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permisiune refuzată. Te rugăm să activezi permisiunile Health Connect din setările telefonului pentru ${appLabel}.';
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
	@override String get title => 'Rezumatul tău cu AI';
	@override String get logMore => 'Înregistrează mai multe mese în următoarele zile pentru a primi perspective AI personalizate.';
	@override String get loading => 'Se încarcă rezumatul tău...';
	@override String mealCount({required Object count}) => '${count} mese înregistrate';
	@override String macroBalanceScore({required Object score}) => 'Scor de echilibru ${score}';
	@override String get topFoods => 'Alimente de top';
	@override String get trendUp => 'Caloriile sunt în creștere';
	@override String get trendDown => 'Caloriile sunt în scădere';
	@override String get trendSteady => 'Caloriile rămân stabile';
	@override String generatedAt({required Object time}) => 'Actualizat ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalRo implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stabilește-ți obiectivul zilnic';
	@override String get titleSet => 'Obiectivul tău zilnic';
	@override String get description => 'Gata de drum? Stabilește mai jos ținta ta zilnică de calorii pentru a-ți porni progresul.';
	@override String get descriptionSet => 'Busola e setată! Aceasta este ținta ta zilnică de calorii care te ghidează.';
	@override String get yourGoal => 'Obiectivul tău';
	@override String get goal => 'Obiectiv';
	@override String get dailyCalories => 'Calorii zilnice (kcal)';
	@override String get setGoal => 'Stabilește obiectivul';
	@override String get intake => 'Aport';
	@override String get burned => 'Arse';
	@override String get weightImpact => 'Impact asupra greutății';
	@override String get estLoss => 'Pierdere estimată';
	@override String get estGain => 'Creștere estimată';
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
	@override String get fiber => 'Fibre';
	@override String get grams => 'grame';
	@override String get chartAccessibilityLabel => 'Diagrama macronutrienților';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressRo implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Repartizarea macronutrienților de azi';
	@override String get target => 'Țintă';
	@override String get current => 'Actual';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryRo implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Istoric macro pe 7 zile';
	@override String get trendTitle => 'Tendința de azi';
	@override String peakHour({required Object hour}) => 'Vârf: ${hour}:00';
	@override String get noHistoryYet => 'Încă nu există istoric';
	@override String get startLogging => 'Începe să înregistrezi mese ca să vezi aici\ntendințele macro pe 7 zile';
}

// Path: home.mealLog
class _TranslationsHomeMealLogRo implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mese înregistrate';
	@override String get emptyMessage => 'Fă o poză ultimei tale mese pentru a o înregistra aici.';
	@override String get noMealsToday => 'Nicio masă înregistrată astăzi';
	@override String get seeAllMeals => 'Vezi toate mesele';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionRo implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adăugare rapidă cu AI';
	@override String get description => 'Descrie-ți masa, iar AI se ocupă de detalii.';
	@override String get hint => 'ex.: La micul dejun am avut un bol mare de ovăz cu o banană feliată și o cupă de zer ...';
	@override String get analyzeMeal => 'Analizează masa';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsRo implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mese favorite';
	@override String get description => 'Adaugă rapid una dintre mesele tale preferate.';
	@override String get noFavorites => 'Încă nu ai mese favorite.';
	@override String get addFavoriteHint => 'Apasă steaua la o masă pentru a o marca drept favorită.';
	@override String get seeAll => 'Vezi tot';
	@override String get add => 'Adaugă';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapRo implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fotografiază și urmărește-ți masa';
	@override String get description => 'Folosește camera pentru a fotografia mâncarea, pentru analiză AI.';
	@override String get openCamera => 'Deschide camera';
	@override String get gallery => 'Galerie';
	@override String get compressingPhoto => 'Optimizăm fotografia…';
	@override String get uploadingPhoto => 'Se încarcă fotografia…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthRo implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizează cu Health Connect';
	@override String get description => 'Sincronizează-ți datele de nutriție cu Health Connect';
	@override String get install => 'Instalează';
	@override String get connect => 'Conectează';
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
	@override String get fiber => 'Fibre (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationRo implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ștergi masa';
	@override String get message => 'Ești sigur(ă) că vrei să ștergi această înregistrare a mesei?';
	@override String get cancel => 'Anulează';
	@override String get delete => 'Șterge';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowRo implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Întrebarea ${current} din ${total}';
	@override String get noQuestionsAvailable => 'Nu există întrebări disponibile';
	@override String get next => 'Următor';
	@override String get continueLabel => 'Continuă';
}

// Path: meal.analysis
class _TranslationsMealAnalysisRo implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analiza mesei cu AI';
	@override String get stepStarted => 'Pornim…';
	@override String get stepDecomposition => 'Înțelegem masa…';
	@override String get stepIngredients => 'Potrivim ingredientele cu baza de date nutrițională…';
	@override String get stepUncertainty => 'Verificăm încrederea…';
	@override String get stepMealTypeQuestion => 'Aproape am terminat…';
	@override String get stepResult => 'Finalizăm rezultatul…';
	@override String get stepError => 'Ceva n-a mers bine';
	@override String get stepDefault => 'Analizăm masa…';
	@override String get progressUnderstand => 'Înțelegere';
	@override String get progressMatch => 'Potrivire';
	@override String get progressCheck => 'Verificare';
	@override String get progressMealType => 'Alegerea tipului de masă';
	@override String get progressFinish => 'Finalizare';
	@override String get detectedIngredientHeading => 'Ingrediente detectate';
	@override String ingredientsOverflow({required Object count}) => '${count} în plus';
	@override String ingredientsLine({required Object count}) => '${count} ingrediente detectate';
	@override String get ingredientsPending => 'Scanăm ingredientele…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackRo implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ce pare greșit?';
	@override String get subtitle => 'Ajută-ne să îmbunătățim analiza selectând una sau mai multe probleme.';
	@override String get tellUsMore => 'Spune-ne mai multe';
	@override String get describeIncorrect => 'Descrie ce a fost incorect';
	@override String get submit => 'Trimite';
	@override String get issueFoodIdentification => 'Identificarea alimentului';
	@override String get issuePortionSize => 'Mărimea porției';
	@override String get issueCalorieDistribution => 'Distribuția caloriilor';
	@override String get issueMacrosWrong => 'Macronutrienții sunt greșiți';
	@override String get issueMissingItems => 'Elemente lipsă';
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
	@override String get male => 'Masculin';
	@override String get female => 'Feminin';
	@override String get other => 'Alt';
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
	@override String get dangerZone => 'ZONA DE RISC';
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
	@override String get title => 'Unitate pentru înălțime';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitRo implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unitate pentru greutate';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersRo implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mementouri pentru mese';
	@override String get subtitle => 'Rămâi pe drumul cel bun cu alerte la timp';
}

// Path: settings.theme
class _TranslationsSettingsThemeRo implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Temă';
	@override String get light => 'Luminos';
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
	@override String emailSubject({required Object appLabel}) => 'Feedback pentru aplicația ${appLabel}';
	@override String get emailBodyPrefix => 'Te rugăm să ne oferi feedback mai jos:';
	@override String get appVersion => 'Versiunea aplicației';
	@override String get device => 'Dispozitiv';
	@override String get osVersion => 'Versiunea OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryRo implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exportă istoricul meselor';
	@override String get subtitle => 'Distribuie un CSV cu mesele tale înregistrate';
	@override String get shareText => 'Exportul istoricului tău de mese din Calorify';
	@override String failed({required Object error}) => 'Nu s-a putut exporta istoricul meselor: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataRo implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Șterge toate datele';
	@override String get subtitle => 'Șterge ireversibil toate informațiile tale';
	@override String get confirmationTitle => 'Ștergi toate datele?';
	@override String get confirmationMessage => 'Această acțiune nu poate fi anulată. Toate mesele înregistrate, favoritele și setările de profil vor fi șterse definitiv.';
	@override String get cancel => 'Anulează';
	@override String get clearEverything => 'Șterge tot';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsRo implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opțiuni de depanare';
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
	@override String get managePermissions => 'Gestionează permisiunile';
	@override String get openSettings => 'Deschide setările Health Connect';
	@override String get requestPermissions => 'Solicită permisiuni';
	@override String get permissionRequestCancelledOrFailed => 'Cererea de permisiuni a fost anulată sau a eșuat. Te rugăm să încerci din nou sau să acorzi permisiunile manual în setările Health Connect.';
	@override String get permissionRequestFailed => 'Nu s-au putut solicita permisiunile. Te rugăm să încerci din nou sau să acorzi permisiunile manual în setările Health Connect.';
	@override String get requestingPermissions => 'Se solicită...';
}

// Path: settings.about
class _TranslationsSettingsAboutRo implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Despre';
	@override String get tagline => 'Conștientizare a caloriilor: rapidă, gratuită și orientată spre confidențialitate';
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
	@override String get title => 'E timpul pentru micul dejun! 🍳';
	@override String get body => 'Nu uita să îți înregistrezi micul dejun';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchRo implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'E timpul pentru prânz! 🥗';
	@override String get body => 'E momentul să îți înregistrezi prânzul';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerRo implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'E timpul pentru cină! 🍽️';
	@override String get body => 'Nu uita să îți înregistrezi cina';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackRo implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'E timpul pentru o gustare! 🍎';
	@override String get body => 'E momentul pentru o gustare sănătoasă';
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
	@override String description({required Object appLabel}) => '${appLabel} oferă informații nutriționale estimate. Acuratețea depinde de datele introduse de tine și de variațiile alimentelor. Folosește ca ghid, nu ca sursă definitivă. Consultă un profesionist pentru sfaturi dietetice personalizate.';
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
	@override String get description => 'Proiecția schimbării în greutate este o estimare teoretică bazată pe modelul simplu calorii-in versus calorii-out. Este destinată doar motivației, nu ca predicție a greutății tale reale.';
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
	@override String get description => 'Acești indicatori te ajută să înțelegi nevoile energetice ale corpului tău și să-ți ghidezi obiectivele nutriționale.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrRo bmr = _TranslationsDisclaimerHealthMetricsBmrRo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeRo tdee = _TranslationsDisclaimerHealthMetricsTdeeRo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalRo dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalRo._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureRo implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimarea caloriilor arse';
	@override String get description => 'Când datele Health Connect nu sunt disponibile, estimăm caloriile arse azi folosind Rata Metabolică Bazală (BMR) și nivelul de activitate (TDEE), scalate pentru porțiunea din zi care a trecut.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedRo howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedRo._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRo professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRo._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionRo implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recunoaștere inteligentă a mâncării';
	@override String get description => 'Fă o poză și lasă AI-ul să-ți identifice masa';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisRo implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analiză cu AI';
	@override String get description => 'Obține instant informații nutriționale din descrierile tale';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationRo implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrare Health Connect';
	@override String get description => 'Conectează-te la Health Connect pentru perspective mai bune';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesRo implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Subponderal';
	@override String get healthyWeight => 'Greutate sănătoasă';
	@override String get overweight => 'Supraponderal';
	@override String get obese => 'Obez';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesRo implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Te putem ajuta să creezi un plan sănătos pentru a ajunge la o greutate echilibrată, cu mese bogate în nutrienți.';
	@override String get healthy => 'Bravo! Ești într-un interval sănătos. Te vom ajuta să-ți menții vitalitatea și nivelul de energie.';
	@override String overweight({required Object appLabel}) => '${appLabel} îți simplifică parcursul cu monitorizare bazată pe AI, ca să ajungi confortabil la ținta ta.';
	@override String get obese => 'Suntem aici să te susținem cu îndrumări personalizate și strategii sustenabile pentru obiectivele tale de sănătate.';
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
	@override String get title => 'Perspective asupra progresului';
	@override String get description => 'Obține analize detaliate ale tendințelor de sănătate';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationRo implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrare fără întreruperi';
	@override String get description => 'Sincronizează date din aplicațiile tale preferate de sănătate';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessRo implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nu ești singur(ă)';
	@override String get genericMessage => 'Studiile arată că monitorizarea consecventă este factorul nr. 1 pentru succesul pe termen lung.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Pentru o persoană de ${age} ani, de gen ${gender}, care își propune să ${goal}, monitorizarea consecventă este predictorul nr. 1 al succesului.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} face totul de 10 ori mai ușor decât manual.';
	@override String get getStartedTitle => 'Gata să începem?';
	@override String get tipPhoto => 'Fotografiază-ți mesele pentru analiză instant';
	@override String get tipConsistency => 'Înregistrează consecvent pentru a vedea progres real';
	@override String get tipProgress => 'Urmărește-ți progresul zilnic ca să rămâi motivat(ă)';
	@override String get button => 'Hai să începem';
	@override String get defaultGender => 'persoană';
	@override String get defaultGoal => 'o versiune mai sănătoasă a ta';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileRo implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profilul tău de sănătate';
	@override String bmiDescription({required Object bmi}) => 'Pe baza măsurătorilor tale, IMC-ul tău este ${bmi}.';
	@override String get finalizeDescription => 'Hai să finalizăm profilul, ca să-ți personalizăm experiența.';
	@override String get goalGain => 'câștiga';
	@override String get goalLose => 'pierde';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Pentru a-ți atinge obiectivul, vei ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Ești la greutatea țintă! Te vom ajuta să o menții.';
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
	@override String get aiMealDetection => 'Detecție a meselor bazată pe AI';
	@override String get macroBreakdowns => 'Defalcări detaliate ale macronutrienților';
	@override String get button => 'Hai să începem';
	@override String get defaultGoal => 'obiectivele tale';
	@override String get defaultActivity => 'activ(ă)';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightRo implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Pierdere în greutate';
	@override String get description => 'Creează un deficit caloric pentru a slăbi';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightRo implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Menținere greutate';
	@override String get description => 'Menține-ți greutatea actuală';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightRo implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Creștere în greutate';
	@override String get description => 'Creează un surplus caloric pentru a te îngrășa';
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
	@override String get description => 'Exerciții ușoare 1-3 zile/săptămână';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveRo implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderat activ';
	@override String get description => 'Exerciții moderate 3-5 zile/săptămână';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveRo implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Foarte activ';
	@override String get description => 'Exerciții intense 6-7 zile/săptămână';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveRo implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrem de activ';
	@override String get description => 'Exerciții foarte intense, muncă fizică';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableRo implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect indisponibil';
	@override String get description => 'Health Connect nu este disponibil pe acest dispozitiv. Te rugăm să instalezi Health Connect din Play Store (Android 9+) sau să actualizezi la Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsRo implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permisiuni';
	@override String get description => 'Următoarele permisiuni sunt necesare pentru a oferi integrarea cu Health Connect:';
	@override String get granted => 'Acordată';
	@override String get notGranted => 'Neacordată';
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
	@override String content({required Object appLabel}) => '${appLabel} s-a născut dintr-o frustrare simplă: majoritatea aplicațiilor de urmărire a caloriilor sunt fie prea complicate, cer introducere manuală constantă, au abonamente scumpe sau fac compromisuri privind confidențialitatea.\n\nCa dezvoltator independent, am vrut să creez ceva mai simplu și mai corect — o aplicație care folosește AI pentru a reduce efortul, rămâne rapidă și gratuită și îți tratează datele de sănătate cu respect.\n\n${appLabel} este aplicația pe care mi-aș fi dorit să existe: fără conturi, fără urmărire, fără reclame — doar perspective clare, practice și obiectivele tale de sănătate.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyRo implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confidențialitatea ta contează';
	@override String get description => 'Confidențialitatea nu este un gând de după — este un principiu de proiectare. Iată ce înseamnă în practică:';
	@override String get noAccounts => 'Fără conturi necesare\nFolosește aplicația imediat. Fără înregistrări, fără identități.';
	@override String noTracking({required Object appLabel}) => 'Fără urmărire comportamentală\n${appLabel} nu îți monitorizează activitatea, nu creează profile de utilizare și nu te urmărește între aplicații sau site-uri.';
	@override String noAds({required Object appLabel}) => 'Fără reclame, prin design\n${appLabel} este construită să funcționeze fără reclame sau monetizare bazată pe date.';
	@override String get noDataSelling => 'Fără vânzare de date\nDatele tale de sănătate nu sunt vândute sau partajate cu terți.';
	@override String get localStorage => 'Stocare locală în primul rând\nDatele tale rămân pe dispozitiv.';
	@override String get privacyPolicy => 'Politica de confidențialitate';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperRo implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dezvoltată de un singur dezvoltator';
	@override String description({required Object appLabel}) => '${appLabel} este creată și întreținută de un singur dezvoltator, concentrat pe software de sănătate liniștit și care respectă confidențialitatea.\n\nFeedback-ul este citit personal și ajută la direcția aplicației.';
	@override String get website => 'Website';
	@override String get email => 'Email';
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
	@override String description({required Object appLabel}) => 'Metodele de gătire pot modifica semnificativ conținutul nutrițional. Estimările ${appLabel} s-ar putea să nu surprindă mereu aceste variații.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsRo implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingrediente';
	@override String get description => 'Preparațiile complexe, cu multe ingrediente ascunse, pot duce la estimări mai puțin precise.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsRo implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitări ale bazei de date';
	@override String description({required Object appLabel}) => 'Baza de date alimentară a ${appLabel} este extinsă, dar s-ar putea să nu includă fiecare aliment sau variație.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyRo implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Acuratețea caloriilor';
	@override String get description => 'Această estimare este la fel de precisă ca înregistrarea aportului și a consumului tău caloric. Înregistrările inexacte vor duce la o proiecție inexactă.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsRo implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Factori biologici';
	@override String description({required Object appLabel}) => 'Scăderea/creșterea reală în greutate este influențată de metabolism, hormoni, somn, stres, hidratare și alți factori individuali pe care ${appLabel} nu îi poate măsura.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightRo implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Greutate de apă și fluctuații';
	@override String get description => 'Greutatea zilnică normală poate fluctua semnificativ din cauza retenției de apă, digestiei și momentului zilei. Estimarea nu ia în considerare aceste variații zilnice.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRo implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Îndrumare profesională';
	@override String get description => 'Nu folosi această estimare pentru decizii medicale. Consultă întotdeauna un specialist sau un dietetician autorizat pentru sfaturi personalizate privind greutatea.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrRo implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Rata Metabolică Bazală (BMR) este numărul de calorii pe care corpul tău le arde în repaus pentru a menține funcții de bază precum respirația și circulația. BMR depinde de vârstă, gen, înălțime și greutate. Un BMR mai mare înseamnă că arzi mai multe calorii în repaus, adesea datorită unei mase musculare mai mari, vârstei mai tinere sau genului masculin. Un BMR mai mic indică de obicei mai puțină masă musculară, vârsta mai înaintată sau genul feminin.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeRo implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Cheltuiala Energetică Zilnică Totală (TDEE) reprezintă totalul caloriilor arse pe zi, incluzând BMR plus caloriile din activitatea fizică și mișcarea zilnică. TDEE depinde de BMR și nivelul de activitate. Un TDEE mai mare înseamnă că arzi mai multe calorii per total, de obicei datorită unui nivel mai mare de activitate sau unui BMR mai ridicat. Un TDEE mai mic sugerează o activitate zilnică mai scăzută sau un BMR mai mic.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalRo implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Obiectiv zilnic';
	@override String get description => 'Obiectivul zilnic este aportul recomandat de calorii pe baza TDEE-ului și a obiectivului tău de greutate. Pentru slăbire, consumi mai puține calorii decât TDEE-ul. Pentru menținere, îl egalezi. Pentru creștere în greutate, consumi mai multe calorii decât TDEE-ul. Acest lucru te ajută să atingi schimbarea dorită în greutate într-un ritm sănătos.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedRo implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cum este calculată estimarea';
	@override String get description => 'Calculăm TDEE-ul (pe baza profilului tău) și îl înmulțim cu fracția din zi scursă (ore + minute) / 24 pentru a estima caloriile arse până acum.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRo implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Îndrumare profesională';
	@override String get description => 'Nu folosi această estimare pentru decizii medicale. Consultă întotdeauna un specialist sau un dietetician autorizat pentru recomandări personalizate.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRo implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Citire a caloriilor totale arse';
	@override String get description => 'Permite aplicației să citească din Health Connect caloriile tale totale arse.';
	@override String get usage => 'Această permisiune este folosită pentru a afișa în aplicație caloriile arse zilnic, ajutându-te să înțelegi cheltuiala energetică totală pe parcursul zilei.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadRo implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Citire a datelor de nutriție';
	@override String get description => 'Permite aplicației să citească date de nutriție din Health Connect.';
	@override String get usage => 'Această permisiune permite aplicației să citească informații nutriționale înregistrate de alte aplicații conectate la Health Connect, oferind o vedere de ansamblu a nutriției tale.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteRo implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scriere a datelor de nutriție';
	@override String get description => 'Permite aplicației să scrie date de nutriție în Health Connect.';
	@override String get usage => 'Această permisiune permite aplicației să sincronizeze mesele înregistrate în Health Connect, astfel încât datele tale nutriționale să fie disponibile și în alte aplicații de sănătate și fitness pe care le folosești.';
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
			'errors.rateLimitExceeded' => 'Ai trimis prea multe cereri. Te rugăm să aștepți puțin înainte de a încerca din nou.',
			'errors.networkError' => 'Eroare de rețea. Verifică conexiunea la internet.',
			'errors.unknownError' => 'A apărut o problemă. Te rugăm să încerci mai târziu.',
			'errors.loadingProfileData' => 'Eroare la încărcarea datelor de profil',
			'errors.somethingWentWrong' => 'Ceva n-a mers bine.',
			'errors.retry' => 'Reîncearcă',
			'onboarding.welcome' => ({required Object appLabel}) => 'Bun venit în ${appLabel}',
			'onboarding.subtitle' => 'Partenerul tău personal de nutriție, alimentat de AI',
			'onboarding.getStarted' => 'Începe',
			'onboarding.features.foodRecognition.title' => 'Recunoaștere inteligentă a mâncării',
			'onboarding.features.foodRecognition.description' => 'Fă o poză și lasă AI-ul să-ți identifice masa',
			'onboarding.features.aiAnalysis.title' => 'Analiză cu AI',
			'onboarding.features.aiAnalysis.description' => 'Obține instant informații nutriționale din descrierile tale',
			'onboarding.features.healthIntegration.title' => 'Integrare Health Connect',
			'onboarding.features.healthIntegration.description' => 'Conectează-te la Health Connect pentru perspective mai bune',
			'onboarding.gender.title' => 'Care este genul tău?',
			'onboarding.gender.description' => 'Genul ne ajută să calculăm corect rata metabolică bazală (BMR).',
			'onboarding.gender.next' => 'Înainte',
			'onboarding.height.title' => 'Cât de înalt(ă) ești?',
			'onboarding.height.description' => 'Înălțimea ne ajută să calculăm corect IMC-ul și necesarul energetic.',
			'onboarding.height.metric' => 'Metric',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Înainte',
			'onboarding.weight.currentTitle' => 'Care este greutatea ta actuală?',
			'onboarding.weight.currentDescription' => 'Greutatea actuală este esențială pentru personalizarea obiectivelor zilnice.',
			'onboarding.weight.targetTitle' => 'Care este greutatea ta țintă?',
			'onboarding.weight.targetDescription' => 'Stabilirea unei greutăți țintă ne ajută să definim planul pe termen lung.',
			'onboarding.weight.metric' => 'Metric',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Înainte',
			'onboarding.age.title' => 'Când este ziua ta de naștere?',
			'onboarding.age.description' => 'Vârsta ne ajută să calculăm corect necesarul tău caloric.',
			'onboarding.age.next' => 'Înainte',
			'onboarding.bmiScale.underweight' => 'Sub',
			'onboarding.bmiScale.healthy' => 'Sănătos',
			'onboarding.bmiScale.overweight' => 'Peste',
			'onboarding.bmiScale.obese' => 'Obez',
			'onboarding.bmiScale.categories.underweight' => 'Subponderal',
			'onboarding.bmiScale.categories.healthyWeight' => 'Greutate sănătoasă',
			'onboarding.bmiScale.categories.overweight' => 'Supraponderal',
			'onboarding.bmiScale.categories.obese' => 'Obez',
			'onboarding.bmiScale.messages.underweight' => 'Te putem ajuta să creezi un plan sănătos pentru a ajunge la o greutate echilibrată, cu mese bogate în nutrienți.',
			'onboarding.bmiScale.messages.healthy' => 'Bravo! Ești într-un interval sănătos. Te vom ajuta să-ți menții vitalitatea și nivelul de energie.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} îți simplifică parcursul cu monitorizare bazată pe AI, ca să ajungi confortabil la ținta ta.',
			'onboarding.bmiScale.messages.obese' => 'Suntem aici să te susținem cu îndrumări personalizate și strategii sustenabile pentru obiectivele tale de sănătate.',
			'onboarding.weightGoal.title' => 'Care este obiectivul tău?',
			'onboarding.weightGoal.description' => 'Alege obiectivul care descrie cel mai bine ce vrei să obții',
			'onboarding.activityLevel.title' => 'Cât de activ(ă) ești?',
			'onboarding.activityLevel.description' => 'Acest lucru ne ajută să îți calculăm mai precis necesarul caloric zilnic',
			'onboarding.healthConnect.title' => 'Conectează-te la Health Connect',
			'onboarding.healthConnect.description' => 'Sincronizează-ți datele de sănătate pentru perspective mai bune și urmărire automată a caloriilor',
			'onboarding.healthConnect.automaticTracking.title' => 'Urmărire automată a caloriilor',
			'onboarding.healthConnect.automaticTracking.description' => 'Urmărește caloriile arse din aplicațiile tale de fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Perspective asupra progresului',
			'onboarding.healthConnect.progressInsights.description' => 'Obține analize detaliate ale tendințelor de sănătate',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integrare fără întreruperi',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sincronizează date din aplicațiile tale preferate de sănătate',
			'onboarding.healthConnect.connected' => 'Health Connect este conectat',
			'onboarding.healthConnect.notConnected' => 'Health Connect nu este conectat',
			'onboarding.healthConnect.setup' => 'Configurează Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Sari peste deocamdată',
			'onboarding.healthConnect.statusConnected' => 'Health Connect este conectat.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect a fost conectat cu succes!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permisiune refuzată. Te rugăm să activezi permisiunile Health Connect din setările telefonului pentru ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Eroare la configurarea Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nu ești singur(ă)',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Studiile arată că monitorizarea consecventă este factorul nr. 1 pentru succesul pe termen lung.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Pentru o persoană de ${age} ani, de gen ${gender}, care își propune să ${goal}, monitorizarea consecventă este predictorul nr. 1 al succesului.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} face totul de 10 ori mai ușor decât manual.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Gata să începem?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Fotografiază-ți mesele pentru analiză instant',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Înregistrează consecvent pentru a vedea progres real',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Urmărește-ți progresul zilnic ca să rămâi motivat(ă)',
			'onboarding.reinforcement.trackingSuccess.button' => 'Hai să începem',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'persoană',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'o versiune mai sănătoasă a ta',
			'onboarding.reinforcement.healthProfile.title' => 'Profilul tău de sănătate',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Pe baza măsurătorilor tale, IMC-ul tău este ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Hai să finalizăm profilul, ca să-ți personalizăm experiența.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'câștiga',
			'onboarding.reinforcement.healthProfile.goalLose' => 'pierde',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Pentru a-ți atinge obiectivul, vei ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Ești la greutatea țintă! Te vom ajuta să o menții.',
			'onboarding.reinforcement.healthProfile.button' => 'Hai să începem',
			'onboarding.reinforcement.goalLifestyle.title' => 'Un început excelent!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Ai făcut primul pas către ${goalText}. Deoarece ești ${activityText}, ${appLabel} îți va ajusta țintele pentru a se potrivi stilului tău de viață.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Ținte calorice personalizate',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Detecție a meselor bazată pe AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Defalcări detaliate ale macronutrienților',
			'onboarding.reinforcement.goalLifestyle.button' => 'Hai să începem',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'obiectivele tale',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'activ(ă)',
			'tabs.dashboard' => 'Tablou de bord',
			'tabs.history' => 'Istoric',
			'home.aiSummary.title' => 'Rezumatul tău cu AI',
			'home.aiSummary.logMore' => 'Înregistrează mai multe mese în următoarele zile pentru a primi perspective AI personalizate.',
			'home.aiSummary.loading' => 'Se încarcă rezumatul tău...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} mese înregistrate',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Scor de echilibru ${score}',
			'home.aiSummary.topFoods' => 'Alimente de top',
			'home.aiSummary.trendUp' => 'Caloriile sunt în creștere',
			'home.aiSummary.trendDown' => 'Caloriile sunt în scădere',
			'home.aiSummary.trendSteady' => 'Caloriile rămân stabile',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Actualizat ${time}',
			'home.dailyGoal.title' => 'Stabilește-ți obiectivul zilnic',
			'home.dailyGoal.titleSet' => 'Obiectivul tău zilnic',
			'home.dailyGoal.description' => 'Gata de drum? Stabilește mai jos ținta ta zilnică de calorii pentru a-ți porni progresul.',
			'home.dailyGoal.descriptionSet' => 'Busola e setată! Aceasta este ținta ta zilnică de calorii care te ghidează.',
			'home.dailyGoal.yourGoal' => 'Obiectivul tău',
			'home.dailyGoal.goal' => 'Obiectiv',
			'home.dailyGoal.dailyCalories' => 'Calorii zilnice (kcal)',
			'home.dailyGoal.setGoal' => 'Stabilește obiectivul',
			'home.dailyGoal.intake' => 'Aport',
			'home.dailyGoal.burned' => 'Arse',
			'home.dailyGoal.weightImpact' => 'Impact asupra greutății',
			'home.dailyGoal.estLoss' => 'Pierdere estimată',
			'home.dailyGoal.estGain' => 'Creștere estimată',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Rezumat zilnic',
			'home.dailySummary.calories' => 'Calorii',
			'home.dailySummary.carbs' => 'Carbohidrați',
			'home.dailySummary.protein' => 'Proteine',
			'home.dailySummary.fat' => 'Grăsimi',
			'home.dailySummary.fiber' => 'Fibre',
			'home.dailySummary.grams' => 'grame',
			'home.dailySummary.chartAccessibilityLabel' => 'Diagrama macronutrienților',
			'home.intakeProgress.title' => 'Repartizarea macronutrienților de azi',
			'home.intakeProgress.target' => 'Țintă',
			'home.intakeProgress.current' => 'Actual',
			'home.intakeHistory.title' => 'Istoric macro pe 7 zile',
			'home.intakeHistory.trendTitle' => 'Tendința de azi',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Vârf: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Încă nu există istoric',
			'home.intakeHistory.startLogging' => 'Începe să înregistrezi mese ca să vezi aici\ntendințele macro pe 7 zile',
			'home.mealLog.title' => 'Mese înregistrate',
			'home.mealLog.emptyMessage' => 'Fă o poză ultimei tale mese pentru a o înregistra aici.',
			'home.mealLog.noMealsToday' => 'Nicio masă înregistrată astăzi',
			'home.mealLog.seeAllMeals' => 'Vezi toate mesele',
			'home.mealDescription.title' => 'Adăugare rapidă cu AI',
			'home.mealDescription.description' => 'Descrie-ți masa, iar AI se ocupă de detalii.',
			'home.mealDescription.hint' => 'ex.: La micul dejun am avut un bol mare de ovăz cu o banană feliată și o cupă de zer ...',
			'home.mealDescription.analyzeMeal' => 'Analizează masa',
			'home.favoriteMeals.title' => 'Mese favorite',
			'home.favoriteMeals.description' => 'Adaugă rapid una dintre mesele tale preferate.',
			'home.favoriteMeals.noFavorites' => 'Încă nu ai mese favorite.',
			'home.favoriteMeals.addFavoriteHint' => 'Apasă steaua la o masă pentru a o marca drept favorită.',
			'home.favoriteMeals.seeAll' => 'Vezi tot',
			'home.favoriteMeals.add' => 'Adaugă',
			'home.mealSnap.title' => 'Fotografiază și urmărește-ți masa',
			'home.mealSnap.description' => 'Folosește camera pentru a fotografia mâncarea, pentru analiză AI.',
			'home.mealSnap.openCamera' => 'Deschide camera',
			'home.mealSnap.gallery' => 'Galerie',
			'home.mealSnap.compressingPhoto' => 'Optimizăm fotografia…',
			'home.mealSnap.uploadingPhoto' => 'Se încarcă fotografia…',
			'home.connectHealth.title' => 'Sincronizează cu Health Connect',
			'home.connectHealth.description' => 'Sincronizează-ți datele de nutriție cu Health Connect',
			'home.connectHealth.install' => 'Instalează',
			'home.connectHealth.connect' => 'Conectează',
			'history.noMeals' => 'Nicio masă înregistrată',
			'history.emptyMessage' => 'Fă o poză ultimei tale mese pentru a o înregistra aici.',
			'history.today' => 'Astăzi',
			'history.yesterday' => 'Ieri',
			'meal.ohNo' => 'Of, nu!',
			'meal.delete' => 'Șterge',
			'meal.editMeal' => 'Editează masa',
			'meal.addMeal' => 'Adaugă masă',
			'meal.saveMeal' => 'Salvează masa',
			'meal.save' => 'Salvează',
			'meal.mealName' => 'Numele mesei',
			'meal.mealNameHint' => 'ex.: Ouă jumări cu pâine prăjită',
			'meal.mealQuantity' => 'Cantitatea mesei',
			'meal.mealQuantityHint' => 'ex.: 1 bol, 2 felii',
			'meal.timeOfMeal' => 'Ora mesei',
			'meal.timeOfMealHint' => 'Alege ora la care ai luat masa',
			'meal.mealType' => 'Tipul mesei',
			'meal.nutrition.calories' => 'Calorii',
			'meal.nutrition.carbs' => 'Carbohidrați (g)',
			'meal.nutrition.protein' => 'Proteine (g)',
			'meal.nutrition.fat' => 'Grăsimi (g)',
			'meal.nutrition.fiber' => 'Fibre (g)',
			'meal.deleteConfirmation.title' => 'Ștergi masa',
			'meal.deleteConfirmation.message' => 'Ești sigur(ă) că vrei să ștergi această înregistrare a mesei?',
			'meal.deleteConfirmation.cancel' => 'Anulează',
			'meal.deleteConfirmation.delete' => 'Șterge',
			'meal.addedToLog' => 'Masa a fost adăugată în jurnalul tău!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nu s-a putut adăuga masa: ${error}',
			'meal.savedSuccessfully' => 'Masa a fost adăugată cu succes!',
			'meal.updatedSuccessfully' => 'Masa a fost actualizată cu succes!',
			'meal.errorSaving' => ({required Object error}) => 'Eroare la salvarea mesei: ${error}',
			'meal.removedFromFavorites' => 'Eliminat din favorite!',
			'meal.savedAsFavorite' => 'Masa a fost salvată la favorite!',
			'meal.unfavorite' => 'Elimină din favorite',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nu s-a putut actualiza favoritele: ${error}',
			'meal.feedbackThanks' => 'Mulțumim pentru feedback!',
			'meal.reanalysisUpdated' => 'Am actualizat analiza mesei pe baza feedbackului tău.',
			'meal.failedToProcess' => ({required Object error}) => 'Nu s-a putut procesa: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Nu s-a putut procesa imaginea: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Eroare la comprimarea imaginii: ${error}',
			'meal.failedToSave' => 'Nu s-au putut salva datele. Te rugăm să încerci din nou.',
			'meal.skip' => 'Sari peste',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Întrebarea ${current} din ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Nu există întrebări disponibile',
			'meal.questionFlow.next' => 'Următor',
			'meal.questionFlow.continueLabel' => 'Continuă',
			'meal.analysis.title' => 'Analiza mesei cu AI',
			'meal.analysis.stepStarted' => 'Pornim…',
			'meal.analysis.stepDecomposition' => 'Înțelegem masa…',
			'meal.analysis.stepIngredients' => 'Potrivim ingredientele cu baza de date nutrițională…',
			'meal.analysis.stepUncertainty' => 'Verificăm încrederea…',
			'meal.analysis.stepMealTypeQuestion' => 'Aproape am terminat…',
			'meal.analysis.stepResult' => 'Finalizăm rezultatul…',
			'meal.analysis.stepError' => 'Ceva n-a mers bine',
			'meal.analysis.stepDefault' => 'Analizăm masa…',
			'meal.analysis.progressUnderstand' => 'Înțelegere',
			'meal.analysis.progressMatch' => 'Potrivire',
			'meal.analysis.progressCheck' => 'Verificare',
			'meal.analysis.progressMealType' => 'Alegerea tipului de masă',
			'meal.analysis.progressFinish' => 'Finalizare',
			'meal.analysis.detectedIngredientHeading' => 'Ingrediente detectate',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} în plus',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingrediente detectate',
			'meal.analysis.ingredientsPending' => 'Scanăm ingredientele…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'Ce pare greșit?',
			'meal.feedback.subtitle' => 'Ajută-ne să îmbunătățim analiza selectând una sau mai multe probleme.',
			'meal.feedback.tellUsMore' => 'Spune-ne mai multe',
			'meal.feedback.describeIncorrect' => 'Descrie ce a fost incorect',
			'meal.feedback.submit' => 'Trimite',
			'meal.feedback.issueFoodIdentification' => 'Identificarea alimentului',
			'meal.feedback.issuePortionSize' => 'Mărimea porției',
			'meal.feedback.issueCalorieDistribution' => 'Distribuția caloriilor',
			'meal.feedback.issueMacrosWrong' => 'Macronutrienții sunt greșiți',
			'meal.feedback.issueMissingItems' => 'Elemente lipsă',
			'meal.feedback.issueExtraItems' => 'Elemente în plus',
			'meal.feedback.issueOther' => 'Altceva',
			'favorites.title' => 'Favorite',
			'favorites.empty' => 'Încă nu ai mese favorite.',
			'favorites.searchPlaceholder' => 'Caută mese favorite',
			'favorites.searchEmptyTitle' => 'Nicio favorită nu se potrivește căutării',
			'favorites.searchEmptySubtitle' => 'Încearcă un alt nume de masă, cantitate sau tip de masă.',
			'favorites.sortLabel' => 'Sortează favoritele',
			'favorites.undo' => 'Anulează',
			'favorites.removed' => ({required Object name}) => '${name} a fost eliminat(ă) din favorite',
			'favorites.sortOptions.recent' => 'Recente',
			'favorites.sortOptions.calories' => 'Calorii',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Nu au fost găsite date de profil',
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
			'profile.weightGoal' => 'Obiectiv de greutate',
			'profile.targetWeight' => 'Greutate țintă',
			'profile.activityLevel' => 'Nivel de activitate',
			'profile.healthMetrics' => 'Indicatori de sănătate',
			'profile.notSet' => 'Nesetat',
			'profile.years' => 'ani',
			'profile.updatedSuccessfully' => 'Profil actualizat cu succes!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Obiectiv zilnic',
			'profile.calculatedValues.calPerDay' => 'cal/zi',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Scor de sănătate',
			'healthScore.whyThisScore' => 'De ce acest scor?',
			'healthScore.note' => 'Acest scor este o estimare AI bazată pe ingredientele identificate și densitatea nutrițională. Cere întotdeauna sfatul unui profesionist pentru recomandări dietetice.',
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
			'editProfile.weightGoal' => 'Obiectiv de greutate',
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
			'editProfile.genders.male' => 'Masculin',
			'editProfile.genders.female' => 'Feminin',
			'editProfile.genders.other' => 'Alt',
			'editProfile.weightGoals.loseWeight.name' => 'Pierdere în greutate',
			'editProfile.weightGoals.loseWeight.description' => 'Creează un deficit caloric pentru a slăbi',
			'editProfile.weightGoals.maintainWeight.name' => 'Menținere greutate',
			'editProfile.weightGoals.maintainWeight.description' => 'Menține-ți greutatea actuală',
			'editProfile.weightGoals.gainWeight.name' => 'Creștere în greutate',
			'editProfile.weightGoals.gainWeight.description' => 'Creează un surplus caloric pentru a te îngrășa',
			'editProfile.activityLevels.sedentary.name' => 'Sedentar',
			'editProfile.activityLevels.sedentary.description' => 'Puțin sau deloc exercițiu',
			'editProfile.activityLevels.lightlyActive.name' => 'Ușor activ',
			'editProfile.activityLevels.lightlyActive.description' => 'Exerciții ușoare 1-3 zile/săptămână',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderat activ',
			'editProfile.activityLevels.moderatelyActive.description' => 'Exerciții moderate 3-5 zile/săptămână',
			'editProfile.activityLevels.veryActive.name' => 'Foarte activ',
			'editProfile.activityLevels.veryActive.description' => 'Exerciții intense 6-7 zile/săptămână',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrem de activ',
			'editProfile.activityLevels.extremelyActive.description' => 'Exerciții foarte intense, muncă fizică',
			'settings.title' => 'Setări',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOCALIZARE',
			'settings.sections.notifications' => 'NOTIFICĂRI',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SUPORT & LEGAL',
			'settings.sections.about' => 'DESPRE',
			'settings.sections.dangerZone' => 'ZONA DE RISC',
			'settings.sections.developer' => 'DEZVOLTATOR',
			'settings.editProfile.title' => 'Editează profilul',
			'settings.editProfile.subtitle' => 'Actualizează informațiile tale personale',
			'settings.language.title' => 'Limbă',
			'settings.language.subtitle' => 'Alege limba preferată',
			'settings.language.searchHint' => 'Caută limbi...',
			'settings.language.noResults' => 'Nu s-au găsit rezultate',
			'settings.heightUnit.title' => 'Unitate pentru înălțime',
			'settings.weightUnit.title' => 'Unitate pentru greutate',
			'settings.mealReminders.title' => 'Mementouri pentru mese',
			'settings.mealReminders.subtitle' => 'Rămâi pe drumul cel bun cu alerte la timp',
			'settings.theme.title' => 'Temă',
			'settings.theme.light' => 'Luminos',
			'settings.theme.dark' => 'Întunecat',
			'settings.theme.system' => 'Sistem',
			'settings.sendFeedback.title' => 'Trimite feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Ajută-ne să îmbunătățim ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback pentru aplicația ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Te rugăm să ne oferi feedback mai jos:',
			'settings.sendFeedback.appVersion' => 'Versiunea aplicației',
			'settings.sendFeedback.device' => 'Dispozitiv',
			'settings.sendFeedback.osVersion' => 'Versiunea OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Exportă istoricul meselor',
			'settings.exportMealHistory.subtitle' => 'Distribuie un CSV cu mesele tale înregistrate',
			'settings.exportMealHistory.shareText' => 'Exportul istoricului tău de mese din Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Nu s-a putut exporta istoricul meselor: ${error}',
			'settings.clearAllData.title' => 'Șterge toate datele',
			'settings.clearAllData.subtitle' => 'Șterge ireversibil toate informațiile tale',
			'settings.clearAllData.confirmationTitle' => 'Ștergi toate datele?',
			'settings.clearAllData.confirmationMessage' => 'Această acțiune nu poate fi anulată. Toate mesele înregistrate, favoritele și setările de profil vor fi șterse definitiv.',
			'settings.clearAllData.cancel' => 'Anulează',
			'settings.clearAllData.clearEverything' => 'Șterge tot',
			'settings.debugOptions.title' => 'Opțiuni de depanare',
			'settings.developerModeEnabled' => 'Modul pentru dezvoltatori activat!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Vizualizează și gestionează permisiunile',
			'settings.healthConnect.unavailable.title' => 'Health Connect indisponibil',
			'settings.healthConnect.unavailable.description' => 'Health Connect nu este disponibil pe acest dispozitiv. Te rugăm să instalezi Health Connect din Play Store (Android 9+) sau să actualizezi la Android 14+.',
			'settings.healthConnect.permissions.title' => 'Permisiuni',
			'settings.healthConnect.permissions.description' => 'Următoarele permisiuni sunt necesare pentru a oferi integrarea cu Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Acordată',
			'settings.healthConnect.permissions.notGranted' => 'Neacordată',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Citire a caloriilor totale arse',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Permite aplicației să citească din Health Connect caloriile tale totale arse.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Această permisiune este folosită pentru a afișa în aplicație caloriile arse zilnic, ajutându-te să înțelegi cheltuiala energetică totală pe parcursul zilei.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Citire a datelor de nutriție',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Permite aplicației să citească date de nutriție din Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Această permisiune permite aplicației să citească informații nutriționale înregistrate de alte aplicații conectate la Health Connect, oferind o vedere de ansamblu a nutriției tale.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Scriere a datelor de nutriție',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Permite aplicației să scrie date de nutriție în Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Această permisiune permite aplicației să sincronizeze mesele înregistrate în Health Connect, astfel încât datele tale nutriționale să fie disponibile și în alte aplicații de sănătate și fitness pe care le folosești.',
			'settings.healthConnect.managePermissions' => 'Gestionează permisiunile',
			'settings.healthConnect.openSettings' => 'Deschide setările Health Connect',
			'settings.healthConnect.requestPermissions' => 'Solicită permisiuni',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Cererea de permisiuni a fost anulată sau a eșuat. Te rugăm să încerci din nou sau să acorzi permisiunile manual în setările Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Nu s-au putut solicita permisiunile. Te rugăm să încerci din nou sau să acorzi permisiunile manual în setările Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Se solicită...',
			'settings.about.title' => 'Despre',
			'settings.about.tagline' => 'Conștientizare a caloriilor: rapidă, gratuită și orientată spre confidențialitate',
			'settings.about.ourStory.title' => 'Povestea noastră',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} s-a născut dintr-o frustrare simplă: majoritatea aplicațiilor de urmărire a caloriilor sunt fie prea complicate, cer introducere manuală constantă, au abonamente scumpe sau fac compromisuri privind confidențialitatea.\n\nCa dezvoltator independent, am vrut să creez ceva mai simplu și mai corect — o aplicație care folosește AI pentru a reduce efortul, rămâne rapidă și gratuită și îți tratează datele de sănătate cu respect.\n\n${appLabel} este aplicația pe care mi-aș fi dorit să existe: fără conturi, fără urmărire, fără reclame — doar perspective clare, practice și obiectivele tale de sănătate.',
			'settings.about.privacy.title' => 'Confidențialitatea ta contează',
			'settings.about.privacy.description' => 'Confidențialitatea nu este un gând de după — este un principiu de proiectare. Iată ce înseamnă în practică:',
			'settings.about.privacy.noAccounts' => 'Fără conturi necesare\nFolosește aplicația imediat. Fără înregistrări, fără identități.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Fără urmărire comportamentală\n${appLabel} nu îți monitorizează activitatea, nu creează profile de utilizare și nu te urmărește între aplicații sau site-uri.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Fără reclame, prin design\n${appLabel} este construită să funcționeze fără reclame sau monetizare bazată pe date.',
			'settings.about.privacy.noDataSelling' => 'Fără vânzare de date\nDatele tale de sănătate nu sunt vândute sau partajate cu terți.',
			'settings.about.privacy.localStorage' => 'Stocare locală în primul rând\nDatele tale rămân pe dispozitiv.',
			'settings.about.privacy.privacyPolicy' => 'Politica de confidențialitate',
			'settings.about.developer.title' => 'Dezvoltată de un singur dezvoltator',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} este creată și întreținută de un singur dezvoltator, concentrat pe software de sănătate liniștit și care respectă confidențialitatea.\n\nFeedback-ul este citit personal și ajută la direcția aplicației.',
			'settings.about.developer.website' => 'Website',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Îți place ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Feedback-ul tău ajută la îmbunătățirea ${appLabel} pentru toată lumea.',
			'settings.about.feedback.rateApp' => 'Evaluează în Play Store',
			'settings.about.feedback.sendFeedback' => 'Trimite feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Rămâi pe drumul cel bun cu mementouri',
			'reminders.description' => 'Primește mementouri blânde pentru a-ți înregistra mesele și a rămâne consecvent(ă) cu obiectivele tale nutriționale',
			'reminders.notificationsEnabled' => 'Notificări activate',
			'reminders.notificationsDisabled' => 'Notificări dezactivate',
			'reminders.enabledSubtitle' => 'Vei primi mementouri pentru mese',
			'reminders.disabledSubtitle' => 'Activează notificările pentru a primi mementouri pentru mese',
			'reminders.mealReminders' => 'Mementouri pentru mese',
			'reminders.breakfast' => 'Mic dejun',
			'reminders.lunch' => 'Prânz',
			'reminders.dinner' => 'Cină',
			'reminders.snack' => 'Gustare',
			'reminders.unknown' => 'Necunoscut',
			'reminders.change' => 'Schimbă',
			'reminders.enableNotifications' => 'Activează notificările',
			'reminders.skipForNow' => 'Sari peste deocamdată',
			'reminders.saveChanges' => 'Salvează modificările',
			'reminders.enabledSuccessfully' => 'Notificările au fost activate cu succes!',
			'reminders.permissionDenied' => 'Permisiunea pentru notificări a fost refuzată',
			'reminders.errorEnabling' => ({required Object error}) => 'Eroare la activarea notificărilor: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Eroare la finalizarea configurării: ${error}',
			'notifications.breakfast.title' => 'E timpul pentru micul dejun! 🍳',
			'notifications.breakfast.body' => 'Nu uita să îți înregistrezi micul dejun',
			'notifications.lunch.title' => 'E timpul pentru prânz! 🥗',
			'notifications.lunch.body' => 'E momentul să îți înregistrezi prânzul',
			'notifications.dinner.title' => 'E timpul pentru cină! 🍽️',
			'notifications.dinner.body' => 'Nu uita să îți înregistrezi cina',
			'notifications.snack.title' => 'E timpul pentru o gustare! 🍎',
			'notifications.snack.body' => 'E momentul pentru o gustare sănătoasă',
			'notifications.test.title' => 'Notificare de test',
			'login.title' => 'Autentificare',
			'login.signInWithGoogle' => 'Autentificare cu Google',
			'login.signInFailed' => 'Autentificarea cu Google a eșuat sau a fost anulată.',
			'disclaimer.pleaseNote' => 'Te rugăm să reții',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} oferă informații nutriționale estimate. Acuratețea depinde de datele introduse de tine și de variațiile alimentelor. Folosește ca ghid, nu ca sursă definitivă. Consultă un profesionist pentru sfaturi dietetice personalizate.',
			'disclaimer.snap.portionSize.title' => 'Mărimea porției',
			'disclaimer.snap.portionSize.description' => 'Acuratețea estimărilor depinde în mare măsură de evaluarea corectă a mărimii porției.',
			'disclaimer.snap.preparationMethods.title' => 'Metode de preparare',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Metodele de gătire pot modifica semnificativ conținutul nutrițional. Estimările ${appLabel} s-ar putea să nu surprindă mereu aceste variații.',
			'disclaimer.snap.ingredients.title' => 'Ingrediente',
			'disclaimer.snap.ingredients.description' => 'Preparațiile complexe, cu multe ingrediente ascunse, pot duce la estimări mai puțin precise.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitări ale bazei de date',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Baza de date alimentară a ${appLabel} este extinsă, dar s-ar putea să nu includă fiecare aliment sau variație.',
			'disclaimer.weightEstimate.title' => 'Despre estimarea greutății',
			'disclaimer.weightEstimate.description' => 'Proiecția schimbării în greutate este o estimare teoretică bazată pe modelul simplu calorii-in versus calorii-out. Este destinată doar motivației, nu ca predicție a greutății tale reale.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Acuratețea caloriilor',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Această estimare este la fel de precisă ca înregistrarea aportului și a consumului tău caloric. Înregistrările inexacte vor duce la o proiecție inexactă.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Factori biologici',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Scăderea/creșterea reală în greutate este influențată de metabolism, hormoni, somn, stres, hidratare și alți factori individuali pe care ${appLabel} nu îi poate măsura.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Greutate de apă și fluctuații',
			'disclaimer.weightEstimate.waterWeight.description' => 'Greutatea zilnică normală poate fluctua semnificativ din cauza retenției de apă, digestiei și momentului zilei. Estimarea nu ia în considerare aceste variații zilnice.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Îndrumare profesională',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Nu folosi această estimare pentru decizii medicale. Consultă întotdeauna un specialist sau un dietetician autorizat pentru sfaturi personalizate privind greutatea.',
			'disclaimer.healthMetrics.description' => 'Acești indicatori te ajută să înțelegi nevoile energetice ale corpului tău și să-ți ghidezi obiectivele nutriționale.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Rata Metabolică Bazală (BMR) este numărul de calorii pe care corpul tău le arde în repaus pentru a menține funcții de bază precum respirația și circulația. BMR depinde de vârstă, gen, înălțime și greutate. Un BMR mai mare înseamnă că arzi mai multe calorii în repaus, adesea datorită unei mase musculare mai mari, vârstei mai tinere sau genului masculin. Un BMR mai mic indică de obicei mai puțină masă musculară, vârsta mai înaintată sau genul feminin.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Cheltuiala Energetică Zilnică Totală (TDEE) reprezintă totalul caloriilor arse pe zi, incluzând BMR plus caloriile din activitatea fizică și mișcarea zilnică. TDEE depinde de BMR și nivelul de activitate. Un TDEE mai mare înseamnă că arzi mai multe calorii per total, de obicei datorită unui nivel mai mare de activitate sau unui BMR mai ridicat. Un TDEE mai mic sugerează o activitate zilnică mai scăzută sau un BMR mai mic.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Obiectiv zilnic',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Obiectivul zilnic este aportul recomandat de calorii pe baza TDEE-ului și a obiectivului tău de greutate. Pentru slăbire, consumi mai puține calorii decât TDEE-ul. Pentru menținere, îl egalezi. Pentru creștere în greutate, consumi mai multe calorii decât TDEE-ul. Acest lucru te ajută să atingi schimbarea dorită în greutate într-un ritm sănătos.',
			'disclaimer.calorieExpenditure.title' => 'Estimarea caloriilor arse',
			'disclaimer.calorieExpenditure.description' => 'Când datele Health Connect nu sunt disponibile, estimăm caloriile arse azi folosind Rata Metabolică Bazală (BMR) și nivelul de activitate (TDEE), scalate pentru porțiunea din zi care a trecut.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Cum este calculată estimarea',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Calculăm TDEE-ul (pe baza profilului tău) și îl înmulțim cu fracția din zi scursă (ore + minute) / 24 pentru a estima caloriile arse până acum.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Îndrumare profesională',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Nu folosi această estimare pentru decizii medicale. Consultă întotdeauna un specialist sau un dietetician autorizat pentru recomandări personalizate.',
			'common.close' => 'Închide',
			'common.kContinue' => 'Continuă',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Îți place ${appLabel}?',
			'feedbackRating.yes' => 'Da, îmi place',
			'feedbackRating.no' => 'Nu prea',
			'feedbackRating.rateStepHeading' => 'Evaluează în Play Store',
			'feedbackRating.emailStepHeading' => 'Trimite feedback pe email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'O evaluare rapidă îi ajută pe alții să descopere ${appLabel} și susține dezvoltarea. Ai vrea să lași una?',
			'feedbackRating.shareFeedbackViaEmail' => 'Feedback-ul tău modelează ce urmează — citim fiecare mesaj. Vrei să ne trimiți gândurile tale prin email?',
			'feedbackRating.rateCta' => 'Evaluează în Play Store',
			'feedbackRating.maybeLater' => 'Poate mai târziu',
			'feedbackRating.sendFeedback' => 'Trimite feedback',
			'feedbackRating.noThanks' => 'Nu, mulțumesc',
			'feedbackRating.aboutUsDescription' => 'Realizat cu grijă de o echipă mică. Ne concentrăm pe confidențialitate, simplitate și pe a te ajuta să-ți construiești obiceiuri alimentare mai bune.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Curios cine se află în spatele ${appLabel}? Vezi ',
			'feedbackRating.aboutUsLinkLabel' => 'Despre noi',
			'feedbackRating.thankYouMessage' => 'Mulțumim! Vom mai întreba altă dată.',
			'health.syncFailed' => 'Nu s-a putut sincroniza cu Health Connect',
			'health.mealSynced' => 'Masa a fost sincronizată cu Health Connect',
			_ => null,
		};
	}
}
