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
class TranslationsGu extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsGu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.gu,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <gu>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsGu _root = this; // ignore: unused_field

	@override 
	TranslationsGu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsGu(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'ગુજરાતી';
	@override String get flag => '🇮🇳';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$gu errors = _Translations$errors$gu._(_root);
	@override late final _Translations$onboarding$gu onboarding = _Translations$onboarding$gu._(_root);
	@override late final _Translations$tabs$gu tabs = _Translations$tabs$gu._(_root);
	@override late final _Translations$home$gu home = _Translations$home$gu._(_root);
	@override late final _Translations$history$gu history = _Translations$history$gu._(_root);
	@override late final _Translations$meal$gu meal = _Translations$meal$gu._(_root);
	@override late final _Translations$favorites$gu favorites = _Translations$favorites$gu._(_root);
	@override late final _Translations$profile$gu profile = _Translations$profile$gu._(_root);
	@override late final _Translations$healthScore$gu healthScore = _Translations$healthScore$gu._(_root);
	@override late final _Translations$editProfile$gu editProfile = _Translations$editProfile$gu._(_root);
	@override late final _Translations$settings$gu settings = _Translations$settings$gu._(_root);
	@override late final _Translations$reminders$gu reminders = _Translations$reminders$gu._(_root);
	@override late final _Translations$notifications$gu notifications = _Translations$notifications$gu._(_root);
	@override late final _Translations$login$gu login = _Translations$login$gu._(_root);
	@override late final _Translations$disclaimer$gu disclaimer = _Translations$disclaimer$gu._(_root);
	@override late final _Translations$localNutritionPhase4$gu localNutritionPhase4 = _Translations$localNutritionPhase4$gu._(_root);
	@override late final _Translations$watch$gu watch = _Translations$watch$gu._(_root);
	@override late final _Translations$common$gu common = _Translations$common$gu._(_root);
	@override late final _Translations$feedbackRating$gu feedbackRating = _Translations$feedbackRating$gu._(_root);
	@override late final _Translations$health$gu health = _Translations$health$gu._(_root);
}

// Path: errors
class _Translations$errors$gu extends Translations$errors$en {
	_Translations$errors$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'તમે ઘણી બધી વિનંતીઓ કરી છે. કૃપા કરીને ફરી પ્રયાસ કરતા પહેલા થોડી રાહ જુઓ.';
	@override String get networkError => 'નેટવર્ક ભૂલ. કૃપા કરીને તમારું ઇન્ટરનેટ કનેક્શન તપાસો.';
	@override String get unknownError => 'કંઈક ખોટું થયું. કૃપા કરીને પછીથી ફરી પ્રયાસ કરો.';
	@override String get loadingProfileData => 'પ્રોફાઇલ ડેટા લોડ કરવામાં ભૂલ';
	@override String get somethingWentWrong => 'કંઈક ખોટું થયું.';
	@override String get retry => 'ફરી પ્રયાસ કરો';
}

// Path: onboarding
class _Translations$onboarding$gu extends Translations$onboarding$en {
	_Translations$onboarding$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} માં આપનું સ્વાગત છે';
	@override String get subtitle => 'AI દ્વારા સંચાલિત તમારો વ્યક્તિગત પોષણ સાથી';
	@override String get getStarted => 'શરૂ કરો';
	@override late final _Translations$onboarding$features$gu features = _Translations$onboarding$features$gu._(_root);
	@override late final _Translations$onboarding$gender$gu gender = _Translations$onboarding$gender$gu._(_root);
	@override late final _Translations$onboarding$height$gu height = _Translations$onboarding$height$gu._(_root);
	@override late final _Translations$onboarding$weight$gu weight = _Translations$onboarding$weight$gu._(_root);
	@override late final _Translations$onboarding$age$gu age = _Translations$onboarding$age$gu._(_root);
	@override late final _Translations$onboarding$bmiScale$gu bmiScale = _Translations$onboarding$bmiScale$gu._(_root);
	@override late final _Translations$onboarding$weightGoal$gu weightGoal = _Translations$onboarding$weightGoal$gu._(_root);
	@override late final _Translations$onboarding$activityLevel$gu activityLevel = _Translations$onboarding$activityLevel$gu._(_root);
	@override late final _Translations$onboarding$healthConnect$gu healthConnect = _Translations$onboarding$healthConnect$gu._(_root);
	@override late final _Translations$onboarding$reinforcement$gu reinforcement = _Translations$onboarding$reinforcement$gu._(_root);
}

// Path: tabs
class _Translations$tabs$gu extends Translations$tabs$en {
	_Translations$tabs$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'ડેશબોર્ડ';
	@override String get history => 'ઇતિહાસ';
}

// Path: home
class _Translations$home$gu extends Translations$home$en {
	_Translations$home$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$gu aiSummary = _Translations$home$aiSummary$gu._(_root);
	@override late final _Translations$home$dailyGoal$gu dailyGoal = _Translations$home$dailyGoal$gu._(_root);
	@override late final _Translations$home$dailySummary$gu dailySummary = _Translations$home$dailySummary$gu._(_root);
	@override late final _Translations$home$intakeProgress$gu intakeProgress = _Translations$home$intakeProgress$gu._(_root);
	@override late final _Translations$home$intakeHistory$gu intakeHistory = _Translations$home$intakeHistory$gu._(_root);
	@override late final _Translations$home$mealLog$gu mealLog = _Translations$home$mealLog$gu._(_root);
	@override late final _Translations$home$mealDescription$gu mealDescription = _Translations$home$mealDescription$gu._(_root);
	@override late final _Translations$home$favoriteMeals$gu favoriteMeals = _Translations$home$favoriteMeals$gu._(_root);
	@override late final _Translations$home$mealSnap$gu mealSnap = _Translations$home$mealSnap$gu._(_root);
	@override late final _Translations$home$connectHealth$gu connectHealth = _Translations$home$connectHealth$gu._(_root);
}

// Path: history
class _Translations$history$gu extends Translations$history$en {
	_Translations$history$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'કોઈ ભોજન રેકોર્ડ થયું નથી';
	@override String get emptyMessage => 'અહીં લોગ કરવા માટે તમારા છેલ્લા ભોજનનો ફોટો લો.';
	@override String get today => 'આજે';
	@override String get yesterday => 'ગઈકાલે';
}

// Path: meal
class _Translations$meal$gu extends Translations$meal$en {
	_Translations$meal$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'અરે ના!';
	@override String get delete => 'કાઢી નાખો';
	@override String get editMeal => 'ભોજન સંપાદિત કરો';
	@override String get addMeal => 'ભોજન ઉમેરો';
	@override String get saveMeal => 'ભોજન સાચવો';
	@override String get save => 'સાચવો';
	@override String get mealName => 'ભોજનનું નામ';
	@override String get mealNameHint => 'દા.ત., ટોસ્ટ સાથે સ્ક્રેમ્બલ્ડ ઇંડા';
	@override String get nameRequired => 'સાચવતા પહેલા ભોજનનું નામ દાખલ કરો.';
	@override String get mealQuantity => 'ભોજનની માત્રા';
	@override String get mealQuantityHint => 'દા.ત., 1 વાટકી, 2 સ્લાઇસ';
	@override String get timeOfMeal => 'ભોજનનો સમય';
	@override String get timeOfMealHint => 'તમે ભોજન ક્યારે લીધું તે સમય પસંદ કરો';
	@override String get mealType => 'ભોજનનો પ્રકાર';
	@override late final _Translations$meal$nutrition$gu nutrition = _Translations$meal$nutrition$gu._(_root);
	@override late final _Translations$meal$deleteConfirmation$gu deleteConfirmation = _Translations$meal$deleteConfirmation$gu._(_root);
	@override String get addedToLog => 'ભોજન તમારા લોગમાં ઉમેરાયું!';
	@override String couldNotAdd({required Object error}) => 'ભોજન ઉમેરી શકાયું નથી: ${error}';
	@override String get savedSuccessfully => 'ભોજન સફળતાપૂર્વક ઉમેરાયું!';
	@override String get updatedSuccessfully => 'ભોજન સફળતાપૂર્વક અપડેટ થયું!';
	@override String errorSaving({required Object error}) => 'ભોજન સાચવવામાં ભૂલ: ${error}';
	@override String get removedFromFavorites => 'મનપસંદમાંથી દૂર કર્યું!';
	@override String get savedAsFavorite => 'ભોજન મનપસંદ તરીકે સાચવ્યું!';
	@override String get unfavorite => 'મનપસંદમાંથી દૂર કરો';
	@override String couldNotUpdateFavorite({required Object error}) => 'મનપસંદ અપડેટ કરી શકાયું નથી: ${error}';
	@override String get feedbackThanks => 'પ્રતિસાદ બદલ આભાર!';
	@override String get reanalysisUpdated => 'તમારા પ્રતિસાદના આધારે ભોજન વિશ્લેષણ અપડેટ થયું.';
	@override String failedToProcess({required Object error}) => 'પ્રક્રિયા કરવામાં નિષ્ફળ: ${error}';
	@override String failedToProcessImage({required Object error}) => 'છબી પર પ્રક્રિયા કરવામાં નિષ્ફળ: ${error}';
	@override String errorCompressingImage({required Object error}) => 'છબી સંકુચિત કરવામાં ભૂલ: ${error}';
	@override String get failedToSave => 'ડેટા સાચવવામાં નિષ્ફળ. કૃપા કરીને ફરી પ્રયાસ કરો.';
	@override String get skip => 'છોડો';
	@override late final _Translations$meal$questionFlow$gu questionFlow = _Translations$meal$questionFlow$gu._(_root);
	@override late final _Translations$meal$analysis$gu analysis = _Translations$meal$analysis$gu._(_root);
	@override late final _Translations$meal$localInference$gu localInference = _Translations$meal$localInference$gu._(_root);
	@override late final _Translations$meal$feedback$gu feedback = _Translations$meal$feedback$gu._(_root);
}

// Path: favorites
class _Translations$favorites$gu extends Translations$favorites$en {
	_Translations$favorites$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'મનપસંદ';
	@override String get empty => 'હજુ સુધી કોઈ મનપસંદ ભોજન નથી.';
	@override String get searchPlaceholder => 'મનપસંદ ભોજન શોધો';
	@override String get searchEmptyTitle => 'તમારી શોધ સાથે કોઈ મનપસંદ મેળ ખાતા નથી';
	@override String get searchEmptySubtitle => 'અલગ ભોજનનું નામ, જથ્થો અથવા ભોજનનો પ્રકાર અજમાવો.';
	@override String get sortLabel => 'મનપસંદને સૉર્ટ કરો';
	@override String get undo => 'પૂર્વવત્ કરો';
	@override String removed({required Object name}) => '${name} ને મનપસંદમાંથી દૂર કર્યું';
	@override late final _Translations$favorites$sortOptions$gu sortOptions = _Translations$favorites$sortOptions$gu._(_root);
}

// Path: profile
class _Translations$profile$gu extends Translations$profile$en {
	_Translations$profile$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રોફાઇલ';
	@override String get noProfileData => 'કોઈ પ્રોફાઇલ ડેટા મળ્યો નથી';
	@override String get yourProfile => 'તમારી પ્રોફાઇલ';
	@override String get viewAndManage => 'તમારી આરોગ્ય માહિતી જુઓ અને મેનેજ કરો';
	@override late final _Translations$profile$sections$gu sections = _Translations$profile$sections$gu._(_root);
	@override String get gender => 'લિંગ';
	@override String get height => 'ઊંચાઈ';
	@override String get weight => 'વજન';
	@override String get age => 'ઉંમર';
	@override String get weightGoal => 'વજનનું લક્ષ્ય';
	@override String get targetWeight => 'લક્ષ્ય વજન';
	@override String get activityLevel => 'પ્રવૃત્તિ સ્તર';
	@override String get healthMetrics => 'આરોગ્ય મેટ્રિક્સ';
	@override String get notSet => 'સેટ નથી';
	@override String get years => 'વર્ષ';
	@override String get updatedSuccessfully => 'પ્રોફાઇલ સફળતાપૂર્વક અપડેટ થઈ!';
	@override late final _Translations$profile$calculatedValues$gu calculatedValues = _Translations$profile$calculatedValues$gu._(_root);
}

// Path: healthScore
class _Translations$healthScore$gu extends Translations$healthScore$en {
	_Translations$healthScore$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'આરોગ્ય સ્કોર';
	@override String get whyThisScore => 'આ સ્કોર શા માટે?';
	@override String get note => 'આ સ્કોર ઓળખાયેલા ઘટકો અને પોષક ઘનતાના આધારે AI અંદાજ છે. આહાર સલાહ માટે હંમેશા કોઈ વ્યાવસાયિકની સલાહ લો.';
	@override String get unhealthy => 'બિનઆરોગ્યપ્રદ';
	@override String get healthy => 'આરોગ્યપ્રદ';
	@override String get neutral => 'તટસ્થ';
}

// Path: editProfile
class _Translations$editProfile$gu extends Translations$editProfile$en {
	_Translations$editProfile$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રોફાઇલ સંપાદિત કરો';
	@override late final _Translations$editProfile$sections$gu sections = _Translations$editProfile$sections$gu._(_root);
	@override String get gender => 'લિંગ';
	@override String get dateOfBirth => 'જન્મ તારીખ';
	@override String get height => 'ઊંચાઈ';
	@override String get weight => 'વજન';
	@override String get weightGoal => 'વજનનું લક્ષ્ય';
	@override String get activityLevel => 'પ્રવૃત્તિ સ્તર';
	@override String get metric => 'મેટ્રિક';
	@override String get imperial => 'ઇમ્પિરિયલ';
	@override String get unitCm => 'સેમી';
	@override String get unitFt => 'ફૂટ';
	@override String get unitKg => 'કિલો';
	@override String get unitLbs => 'પાઉન્ડ';
	@override String get metricCm => 'મેટ્રિક (સેમી)';
	@override String get imperialFtIn => 'ઈમ્પિરિયલ (ફૂટ/ઈંચ)';
	@override String get metricKg => 'મેટ્રિક (કિલો)';
	@override String get imperialLbs => 'ઈમ્પિરિયલ (lbs)';
	@override late final _Translations$editProfile$genders$gu genders = _Translations$editProfile$genders$gu._(_root);
	@override late final _Translations$editProfile$weightGoals$gu weightGoals = _Translations$editProfile$weightGoals$gu._(_root);
	@override late final _Translations$editProfile$activityLevels$gu activityLevels = _Translations$editProfile$activityLevels$gu._(_root);
}

// Path: settings
class _Translations$settings$gu extends Translations$settings$en {
	_Translations$settings$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'સેટિંગ્સ';
	@override late final _Translations$settings$sections$gu sections = _Translations$settings$sections$gu._(_root);
	@override late final _Translations$settings$editProfile$gu editProfile = _Translations$settings$editProfile$gu._(_root);
	@override late final _Translations$settings$language$gu language = _Translations$settings$language$gu._(_root);
	@override late final _Translations$settings$heightUnit$gu heightUnit = _Translations$settings$heightUnit$gu._(_root);
	@override late final _Translations$settings$weightUnit$gu weightUnit = _Translations$settings$weightUnit$gu._(_root);
	@override late final _Translations$settings$mealReminders$gu mealReminders = _Translations$settings$mealReminders$gu._(_root);
	@override late final _Translations$settings$localInference$gu localInference = _Translations$settings$localInference$gu._(_root);
	@override late final _Translations$settings$theme$gu theme = _Translations$settings$theme$gu._(_root);
	@override late final _Translations$settings$sendFeedback$gu sendFeedback = _Translations$settings$sendFeedback$gu._(_root);
	@override late final _Translations$settings$exportMealHistory$gu exportMealHistory = _Translations$settings$exportMealHistory$gu._(_root);
	@override late final _Translations$settings$clearAllData$gu clearAllData = _Translations$settings$clearAllData$gu._(_root);
	@override late final _Translations$settings$debugOptions$gu debugOptions = _Translations$settings$debugOptions$gu._(_root);
	@override String get developerModeEnabled => 'ડેવલપર મોડ સક્ષમ!';
	@override late final _Translations$settings$healthConnect$gu healthConnect = _Translations$settings$healthConnect$gu._(_root);
	@override late final _Translations$settings$about$gu about = _Translations$settings$about$gu._(_root);
	@override late final _Translations$settings$appInfo$gu appInfo = _Translations$settings$appInfo$gu._(_root);
}

// Path: reminders
class _Translations$reminders$gu extends Translations$reminders$en {
	_Translations$reminders$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'રીમાઇન્ડર્સ સાથે ટ્રેક પર રહો';
	@override String get description => 'તમારા ભોજનને લોગ કરવા અને તમારા પોષણ લક્ષ્યો સાથે સુસંગત રહેવા માટે સૌમ્ય રીમાઇન્ડર્સ મેળવો';
	@override String get notificationsEnabled => 'સૂચનાઓ સક્ષમ છે';
	@override String get notificationsDisabled => 'સૂચનાઓ અક્ષમ છે';
	@override String get enabledSubtitle => 'તમને ભોજન રીમાઇન્ડર્સ પ્રાપ્ત થશે';
	@override String get disabledSubtitle => 'ભોજન રીમાઇન્ડર્સ મેળવવા માટે સૂચનાઓ સક્ષમ કરો';
	@override String get mealReminders => 'ભોજન રીમાઇન્ડર્સ';
	@override String get breakfast => 'નાસ્તો';
	@override String get lunch => 'બપોરનું ભોજન';
	@override String get dinner => 'રાતનું ભોજન';
	@override String get snack => 'નાસ્તો';
	@override String get unknown => 'અજાણ્યું';
	@override String get change => 'બદલો';
	@override String get enableNotifications => 'સૂચનાઓ સક્ષમ કરો';
	@override String get skipForNow => 'હમણાં માટે છોડી દો';
	@override String get saveChanges => 'ફેરફારો સાચવો';
	@override String get enabledSuccessfully => 'સૂચનાઓ સફળતાપૂર્વક સક્ષમ થઈ!';
	@override String get permissionDenied => 'સૂચના પરવાનગી નકારી';
	@override String errorEnabling({required Object error}) => 'સૂચનાઓ સક્ષમ કરવામાં ભૂલ: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'સેટઅપ પૂર્ણ કરવામાં ભૂલ: ${error}';
}

// Path: notifications
class _Translations$notifications$gu extends Translations$notifications$en {
	_Translations$notifications$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$gu breakfast = _Translations$notifications$breakfast$gu._(_root);
	@override late final _Translations$notifications$lunch$gu lunch = _Translations$notifications$lunch$gu._(_root);
	@override late final _Translations$notifications$dinner$gu dinner = _Translations$notifications$dinner$gu._(_root);
	@override late final _Translations$notifications$snack$gu snack = _Translations$notifications$snack$gu._(_root);
	@override late final _Translations$notifications$test$gu test = _Translations$notifications$test$gu._(_root);
}

// Path: login
class _Translations$login$gu extends Translations$login$en {
	_Translations$login$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'લોગિન';
	@override String get signInWithGoogle => 'Google વડે સાઇન ઇન કરો';
	@override String get signInFailed => 'Google સાઇન-ઇન નિષ્ફળ ગયું અથવા રદ કરવામાં આવ્યું.';
}

// Path: disclaimer
class _Translations$disclaimer$gu extends Translations$disclaimer$en {
	_Translations$disclaimer$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'કૃપા કરીને નોંધ લો';
	@override late final _Translations$disclaimer$snap$gu snap = _Translations$disclaimer$snap$gu._(_root);
	@override late final _Translations$disclaimer$weightEstimate$gu weightEstimate = _Translations$disclaimer$weightEstimate$gu._(_root);
	@override late final _Translations$disclaimer$healthMetrics$gu healthMetrics = _Translations$disclaimer$healthMetrics$gu._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$gu calorieExpenditure = _Translations$disclaimer$calorieExpenditure$gu._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$gu extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get portionSmaller => 'નાનું';
	@override String get portionEstimated => 'અંદાજિત';
	@override String get portionLarger => 'મોટું';
	@override String portionQuestion({required Object ingredient}) => '${ingredient} માટે કયું પ્રમાણ સૌથી નજીક હતું?';
	@override String get mealTypeQuestion => 'આ કયું ભોજન હતું?';
	@override String get localNutritionTip => 'ચકાસેલી સ્થાનિક પોષણ માહિતી પરથી ગણતરી થઈ.';
	@override String get offlineNutritionTitle => 'પોષણ ડેટા ડાઉનલોડ કરો';
	@override String get offlineNutritionSubtitle => 'દરેક ઘટક આવરી લેવાયો હોય ત્યારે આ ડિવાઇસ પર ચકાસેલી USDA પંક્તિઓ અને નિર્ધારિત ગણતરી વાપરો.';
	@override String get offlineNutritionUnavailable => 'આ એપ રિલીઝ માટે સ્થાનિક પોષણ ડેટા ઉપલબ્ધ નથી.';
	@override String get offlineNutritionNotDownloaded => 'કોઈ ચકાસેલું પોષણ પૅક ડાઉનલોડ થયેલું નથી.';
	@override String get offlineNutritionInstalling => 'પોષણ ડેટા ડાઉનલોડ અને ચકાસાઈ રહ્યો છે…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'પૅક ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} કૅશ કરેલી USDA પંક્તિઓ · ${size}';
	@override String get offlineNutritionUpdate => 'અપડેટ માટે તપાસો';
	@override String get offlineNutritionClear => 'સ્થાનિક પોષણ ડેટા સાફ કરો';
	@override String get offlineNutritionClearTitle => 'સ્થાનિક પોષણ ડેટા સાફ કરવો?';
	@override String get offlineNutritionClearBody => 'આ ડાઉનલોડ કરેલું USDA પૅક અને લુકઅપ કૅશ દૂર કરે છે. નોંધાયેલા ભોજનમાં સાચવતી વખતે વપરાયેલ ચોક્કસ પોષણ સ્નૅપશૉટ જળવાઈ રહે છે.';
	@override String get offlineNutritionClearConfirm => 'ડેટા સાફ કરો';
	@override String offlineNutritionInstallFailed({required Object error}) => 'સ્થાનિક પોષણ ડેટા ડાઉનલોડ અને ચકાસી શકાયો નહીં: ${error}';
	@override String get offlineNutritionCleared => 'સ્થાનિક પોષણ ડેટા સાફ થયો';
}

// Path: watch
class _Translations$watch$gu extends Translations$watch$en {
	_Translations$watch$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$gu common = _Translations$watch$common$gu._(_root);
	@override late final _Translations$watch$nutrition$gu nutrition = _Translations$watch$nutrition$gu._(_root);
	@override late final _Translations$watch$sync$gu sync = _Translations$watch$sync$gu._(_root);
	@override late final _Translations$watch$home$gu home = _Translations$watch$home$gu._(_root);
	@override late final _Translations$watch$history$gu history = _Translations$watch$history$gu._(_root);
	@override late final _Translations$watch$favorites$gu favorites = _Translations$watch$favorites$gu._(_root);
	@override late final _Translations$watch$meal$gu meal = _Translations$watch$meal$gu._(_root);
	@override late final _Translations$watch$voice$gu voice = _Translations$watch$voice$gu._(_root);
	@override late final _Translations$watch$result$gu result = _Translations$watch$result$gu._(_root);
}

// Path: common
class _Translations$common$gu extends Translations$common$en {
	_Translations$common$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'બીટા';
	@override String get close => 'બંધ કરો';
	@override String get kContinue => 'ચાલુ રાખો';
}

// Path: feedbackRating
class _Translations$feedbackRating$gu extends Translations$feedbackRating$en {
	_Translations$feedbackRating$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} નો આનંદ માણી રહ્યા છો?';
	@override String get yes => 'હા, હું તેનો આનંદ માણી રહ્યો છું';
	@override String get no => 'ખરેખર નહીં';
	@override String get rateStepHeading => 'Play Store પર રેટ કરો';
	@override String get emailStepHeading => 'ઇમેઇલ દ્વારા પ્રતિસાદ મોકલો';
	@override String soloDevMessage({required Object appLabel}) => 'એક ઝડપી રેટિંગ અન્ય લોકોને ${appLabel} શોધવામાં મદદ કરે છે અને વિકાસ ચાલુ રાખે છે. શું તમે એક ક્ષણ માટે એક છોડશો?';
	@override String get shareFeedbackViaEmail => 'તમારો પ્રતિસાદ આગળ શું આવે છે તેને આકાર આપે છે — અમે દરેક સંદેશ વાંચીએ છીએ. શું તમે ઇમેઇલ દ્વારા તમારા વિચારો શેર કરવા માંગો છો?';
	@override String get rateCta => 'Play Store પર રેટ કરો';
	@override String get maybeLater => 'કદાચ પછી';
	@override String get sendFeedback => 'પ્રતિસાદ મોકલો';
	@override String get noThanks => 'ના આભાર';
	@override String get aboutUsDescription => 'એક નાની ટીમ દ્વારા કાળજીપૂર્વક બનાવવામાં આવ્યું છે. અમે ગોપનીયતા, સરળતા અને તમને વધુ સારી ખાવાની ટેવો બનાવવામાં મદદ કરવા પર ધ્યાન કેન્દ્રિત કરીએ છીએ.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel} પાછળ કોણ છે તે જાણવા ઉત્સુક છો? જુઓ ';
	@override String get aboutUsLinkLabel => 'અમારા વિશે';
	@override String get thankYouMessage => 'આભાર! અમે તમને બીજી વાર પૂછીશું.';
}

// Path: health
class _Translations$health$gu extends Translations$health$en {
	_Translations$health$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect સાથે સમન્વયિત કરી શકાયું નથી';
	@override String get mealSynced => 'ભોજન Health Connect સાથે સમન્વયિત થયું';
}

// Path: onboarding.features
class _Translations$onboarding$features$gu extends Translations$onboarding$features$en {
	_Translations$onboarding$features$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$gu foodRecognition = _Translations$onboarding$features$foodRecognition$gu._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$gu aiAnalysis = _Translations$onboarding$features$aiAnalysis$gu._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$gu healthIntegration = _Translations$onboarding$features$healthIntegration$gu._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$gu extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારું લિંગ શું છે?';
	@override String get description => 'લિંગ અમને તમારા બેઝલ મેટાબોલિક રેટ (BMR) ની સચોટ ગણતરી કરવામાં મદદ કરે છે.';
	@override String get next => 'આગળ';
}

// Path: onboarding.height
class _Translations$onboarding$height$gu extends Translations$onboarding$height$en {
	_Translations$onboarding$height$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારી ઊંચાઈ કેટલી છે?';
	@override String get description => 'તમારી ઊંચાઈ અમને તમારા BMI અને ઊર્જાની જરૂરિયાતોની સચોટ ગણતરી કરવામાં મદદ કરે છે.';
	@override String get metric => 'મેટ્રિક';
	@override String get imperial => 'ઇમ્પિરિયલ';
	@override String get next => 'આગળ';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$gu extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'તમારું વર્તમાન વજન કેટલું છે?';
	@override String get currentDescription => 'તમારા દૈનિક લક્ષ્યોને વ્યક્તિગત કરવા માટે તમારું વર્તમાન વજન આવશ્યક છે.';
	@override String get targetTitle => 'તમારું લક્ષ્ય વજન કેટલું છે?';
	@override String get targetDescription => 'લક્ષ્ય વજન સેટ કરવાથી અમને તમારી લાંબા ગાળાની યોજના નક્કી કરવામાં મદદ મળે છે.';
	@override String get metric => 'મેટ્રિક';
	@override String get imperial => 'ઇમ્પિરિયલ';
	@override String get next => 'આગળ';
}

// Path: onboarding.age
class _Translations$onboarding$age$gu extends Translations$onboarding$age$en {
	_Translations$onboarding$age$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારો જન્મદિવસ ક્યારે છે?';
	@override String get description => 'તમારી ઉંમર અમને તમારી કેલરીની જરૂરિયાતોની સચોટ ગણતરી કરવામાં મદદ કરે છે.';
	@override String get next => 'આગળ';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$gu extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ઓછું';
	@override String get healthy => 'સ્વસ્થ';
	@override String get overweight => 'વધુ';
	@override String get obese => 'સ્થૂળ';
	@override late final _Translations$onboarding$bmiScale$categories$gu categories = _Translations$onboarding$bmiScale$categories$gu._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$gu messages = _Translations$onboarding$bmiScale$messages$gu._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$gu extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારો ધ્યેય શું છે?';
	@override String get description => 'તમે શું પ્રાપ્ત કરવા માંગો છો તેનું શ્રેષ્ઠ વર્ણન કરતો ધ્યેય પસંદ કરો';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$gu extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમે કેટલા સક્રિય છો?';
	@override String get description => 'આ અમને તમારી દૈનિક કેલરીની જરૂરિયાતોની વધુ સચોટ ગણતરી કરવામાં મદદ કરે છે';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$gu extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ કનેક્ટ સાથે કનેક્ટ કરો';
	@override String get description => 'વધુ સારી આંતરદૃષ્ટિ અને સ્વચાલિત કેલરી ટ્રેકિંગ માટે તમારા સ્વાસ્થ્ય ડેટાને સિંક કરો';
	@override String get overviewDescription => 'દૈનિક લક્ષ્યમાં બર્ન થયેલી કેલરીનો ઉપયોગ કરો અને ઇચ્છો તો નોંધાયેલ ભોજન Health Connect સાથે શેર કરો.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$gu automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$gu._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$gu caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$gu._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$gu progressInsights = _Translations$onboarding$healthConnect$progressInsights$gu._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$gu shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$gu._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$gu seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$gu._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$gu userControl = _Translations$onboarding$healthConnect$userControl$gu._(_root);
	@override String get connected => 'હેલ્થ કનેક્ટ કનેક્ટેડ';
	@override String get notConnected => 'હેલ્થ કનેક્ટ કનેક્ટેડ નથી';
	@override String get setup => 'હેલ્થ કનેક્ટ સેટઅપ કરો';
	@override String get skipForNow => 'હમણાં માટે છોડો';
	@override String get statusConnected => 'હેલ્થ કનેક્ટ કનેક્ટેડ છે.';
	@override String get statusSuccess => 'હેલ્થ કનેક્ટ સફળતાપૂર્વક કનેક્ટ થઈ ગયું છે!';
	@override String get statusNotConnected => 'તમે ચાલુ કરવા માંગતા Health Connectનાં ફીચર પસંદ કરો.';
	@override String get statusPartial => 'Health Connect આંશિક રીતે જોડાયેલું છે. બંને ફીચર વાપરવા માટે બાકી પરવાનગી ચાલુ કરો.';
	@override String get statusProviderUpdateRequired => 'આગળ વધવા માટે Health Connect ઇન્સ્ટોલ અથવા અપડેટ કરો.';
	@override String get statusUnavailable => 'આ ઉપકરણ પર Health Connect સમર્થિત નથી.';
	@override String get installOrUpdate => 'ઇન્સ્ટોલ અથવા અપડેટ કરો';
	@override String get manageAccess => 'ઍક્સેસ મેનેજ કરો';
	@override String statusPermissionDenied({required Object appLabel}) => 'પરવાનગી નકારી. કૃપા કરીને ${appLabel} માટે તમારા ફોન સેટિંગ્સમાંથી હેલ્થ કનેક્ટ પરવાનગીઓ સક્ષમ કરો.';
	@override String statusError({required Object error}) => 'હેલ્થ કનેક્ટ સેટઅપ કરવામાં ભૂલ: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$gu extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$gu trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$gu._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$gu healthProfile = _Translations$onboarding$reinforcement$healthProfile$gu._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$gu goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$gu._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$gu extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારો AI સારાંશ';
	@override String get logMore => 'તમારી વ્યક્તિગત AI આંતરદૃષ્ટિ મેળવવા માટે આગામી થોડા દિવસોમાં વધુ ભોજન લોગ કરો.';
	@override String get loading => 'તમારો સારાંશ લોડ થઈ રહ્યો છે...';
	@override String mealCount({required Object count}) => '${count} ભોજન લોગ થયા';
	@override String macroBalanceScore({required Object score}) => 'સંતુલન સ્કોર ${score}';
	@override String get topFoods => 'ટોચના ખોરાક';
	@override String get trendUp => 'કેલરી વધી રહી છે';
	@override String get trendDown => 'કેલરી ઘટી રહી છે';
	@override String get trendSteady => 'કેલરી સ્થિર રહી છે';
	@override String generatedAt({required Object time}) => '${time} અપડેટ થયું';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$gu extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારો દૈનિક લક્ષ્ય સેટ કરો';
	@override String get titleSet => 'તમારો દૈનિક લક્ષ્ય';
	@override String get description => 'તમારી સુખાકારી યાત્રા શરૂ કરવા તૈયાર છો? તમારી પ્રગતિ શરૂ કરવા માટે નીચે તમારો દૈનિક કેલરી લક્ષ્ય સેટ કરો.';
	@override String get descriptionSet => 'તમારું હોકાયંત્ર સેટ છે! આ તમારો દૈનિક કેલરી લક્ષ્ય છે જે તમને માર્ગદર્શન આપશે.';
	@override String get yourGoal => 'તમારો લક્ષ્ય';
	@override String get goal => 'લક્ષ્ય';
	@override String get dailyCalories => 'દૈનિક કેલરી (kcal)';
	@override String get setGoal => 'લક્ષ્ય સેટ કરો';
	@override String get intake => 'સેવન';
	@override String get burned => 'બર્ન થયું';
	@override String get weightImpact => 'વજન પર અસર';
	@override String get estLoss => 'અંદાજિત ઘટાડો';
	@override String get estGain => 'અંદાજિત વધારો';
	@override String get kcal => 'કિલોકૅલરી';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$gu extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'દૈનિક સારાંશ';
	@override String get calories => 'કેલરી';
	@override String get carbs => 'કાર્બોહાઇડ્રેટ્સ';
	@override String get protein => 'પ્રોટીન';
	@override String get fat => 'ચરબી';
	@override String get fiber => 'ફાઇબર';
	@override String get grams => 'ગ્રામ';
	@override String get chartAccessibilityLabel => 'મેક્રો ચાર્ટ';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$gu extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'આજનું મેક્રો વિભાજન';
	@override String get target => 'લક્ષ્ય';
	@override String get current => 'વર્તમાન';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$gu extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => '7-દિવસનો મેક્રો ઇતિહાસ';
	@override String get trendTitle => 'આજનો ટ્રેન્ડ';
	@override String peakHour({required Object hour}) => 'પીક: ${hour}:00';
	@override String get noHistoryYet => 'હજુ કોઈ ઇતિહાસ નથી';
	@override String get startLogging => 'તમારા 7-દિવસના મેક્રો ટ્રેન્ડ અહીં જોવા માટે\nભોજન લોગ કરવાનું શરૂ કરો';
}

// Path: home.mealLog
class _Translations$home$mealLog$gu extends Translations$home$mealLog$en {
	_Translations$home$mealLog$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'લોગ થયેલા ભોજન';
	@override String get emptyMessage => 'અહીં લોગ કરવા માટે તમારા છેલ્લા ભોજનનો ફોટો લો.';
	@override String get noMealsToday => 'આજે કોઈ ભોજન રેકોર્ડ થયું નથી';
	@override String get seeAllMeals => 'બધા ભોજન જુઓ';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$gu extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI સાથે ઝડપી ઉમેરો';
	@override String get description => 'તમારા ભોજનનું વર્ણન કરો, અને AI ને વિગતો સંભાળવા દો.';
	@override String get hint => 'દા.ત. નાસ્તામાં મેં એક મોટી વાટકી ઓટમીલ, એક કાપેલું કેળું અને એક સ્કૂપ વ્હે પ્રોટીન લીધું હતું...';
	@override String get analyzeMeal => 'ભોજનનું વિશ્લેષણ કરો';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$gu extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'મનપસંદ ભોજન';
	@override String get description => 'તમારા મનપસંદ ભોજનમાંથી એક ઝડપથી ઉમેરો.';
	@override String get noFavorites => 'હજુ કોઈ મનપસંદ ભોજન નથી.';
	@override String get addFavoriteHint => 'ભોજનને મનપસંદ તરીકે ચિહ્નિત કરવા માટે તેના પરના સ્ટાર પર ક્લિક કરો.';
	@override String get seeAll => 'બધા જુઓ';
	@override String get add => 'ઉમેરો';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$gu extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારા ભોજનનો ફોટો લો અને ટ્રૅક કરો';
	@override String get description => 'AI વિશ્લેષણ માટે તમારા ખોરાકનો ફોટો લેવા માટે તમારા કેમેરાનો ઉપયોગ કરો.';
	@override String get openCamera => 'કેમેરા ખોલો';
	@override String get gallery => 'ગેલેરી';
	@override String get compressingPhoto => 'ફોટો ઑપ્ટિમાઇઝ કરી રહ્યું છે…';
	@override String get uploadingPhoto => 'ફોટો અપલોડ કરી રહ્યું છે…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$gu extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect સાથે સમન્વય કરો';
	@override String get description => 'તમારા પોષણ ડેટાને Health Connect સાથે સમન્વય કરો';
	@override String get install => 'ઇન્સ્ટોલ કરો';
	@override String get dataUseDescription => 'તમારા લક્ષ્યમાં બર્ન થયેલી કેલરીનો ઉપયોગ કરો અને નોંધાયેલ ભોજન શેર કરો';
	@override String get installOrUpdate => 'ઇન્સ્ટોલ અથવા અપડેટ કરો';
	@override String get connect => 'કનેક્ટ કરો';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$gu extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get calories => 'કેલરી';
	@override String get carbs => 'કાર્બોહાઇડ્રેટ્સ (g)';
	@override String get protein => 'પ્રોટીન (g)';
	@override String get fat => 'ચરબી (g)';
	@override String get fiber => 'ફાઇબર (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$gu extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભોજન કાઢી નાખો';
	@override String get message => 'શું તમે ખરેખર આ ભોજન એન્ટ્રી કાઢી નાખવા માંગો છો?';
	@override String get cancel => 'રદ કરો';
	@override String get delete => 'કાઢી નાખો';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$gu extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'પ્રશ્ન ${current} માંથી ${total}';
	@override String get noQuestionsAvailable => 'કોઈ પ્રશ્નો ઉપલબ્ધ નથી';
	@override String get next => 'આગળ';
	@override String get continueLabel => 'ચાલુ રાખો';
	@override String get countQuestion => 'જથ્થો પસંદ કરો';
	@override String get itemSizeQuestion => 'આઇટમનું કદ પસંદ કરો';
	@override String get portionSizeQuestion => 'ભાગનું કદ પસંદ કરો';
	@override String get option6plus => '6 કે તેથી વધુ';
	@override String get optionSmall => 'નાનું';
	@override String get optionRegular => 'સામાન્ય';
	@override String get optionLarge => 'મોટું';
	@override String get optionThin => 'પાતળું';
	@override String get optionThick => 'જાડું';
	@override String get optionMini => 'નાનું';
	@override String get optionStuffed => 'ભરેલું';
	@override String get optionHeavy => 'ભારે';
	@override String get optionSmaller => 'નાનું';
	@override String get optionTypical => 'સામાન્ય';
	@override String get optionLarger => 'મોટું';
}

// Path: meal.analysis
class _Translations$meal$analysis$gu extends Translations$meal$analysis$en {
	_Translations$meal$analysis$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારા ભોજનનું વિશ્લેષણ કરી રહ્યા છીએ';
	@override String get stepStarted => 'શરૂઆત કરી રહ્યા છીએ…';
	@override String get stepDecomposition => 'તમારા ભોજનને સમજી રહ્યા છીએ…';
	@override String get stepIngredients => 'ઘટકોને પોષણ ડેટા સાથે મેચ કરી રહ્યા છીએ…';
	@override String get stepUncertainty => 'વિશ્વાસ તપાસી રહ્યા છીએ…';
	@override String get stepMealTypeQuestion => 'લગભગ થઈ ગયું…';
	@override String get stepResult => 'તમારા પરિણામને અંતિમ સ્વરૂપ આપી રહ્યા છીએ…';
	@override String get stepError => 'કંઈક ખોટું થયું';
	@override String get noFoodTip => 'કોઈ ખોરાક મળ્યો નથી. બીજો ફોટો અથવા વર્ણન અજમાવો.';
	@override String get stepDefault => 'તમારા ભોજનનું વિશ્લેષણ કરી રહ્યા છીએ…';
	@override String get progressUnderstand => 'તમારા ભોજનને સમજવું';
	@override String get progressMatch => 'ઘટક પોષણ શોધી રહ્યા છીએ';
	@override String get progressCheck => 'ભાગો અને વિશ્વાસ તપાસી રહ્યા છીએ';
	@override String get progressMealType => 'ભોજનનો પ્રકાર પસંદ કરી રહ્યા છીએ';
	@override String get progressFinish => 'કેલરી અને મેક્રોની ગણતરી કરી રહ્યા છીએ';
	@override String get detectedIngredientHeading => 'અમે જે ઘટકો શોધી રહ્યા છીએ';
	@override String ingredientsOverflow({required Object count}) => 'વધુ ${count}';
	@override String ingredientsLine({required Object count}) => '${count} ઘટકો મળ્યા';
	@override String get ingredientsPending => 'ઘટકો સ્કેન કરી રહ્યા છીએ…';
	@override String mealPreviewDescription({required Object text}) => '“${text}”';
	@override String get offlineTip0 => 'ટીપ: સુસંગતતા સંપૂર્ણતા કરતાં વધુ સારી છે—નિયમિત લોગ મહત્વપૂર્ણ પેટર્ન દર્શાવે છે.';
	@override String get offlineTip1 => 'ટીપ: ફોટા માટે, કુદરતી પ્રકાશ અને ટોપ-ડાઉન દૃશ્ય ભાગની ચોકસાઈમાં મદદ કરે છે.';
	@override String get offlineTip2 => 'ટીપ: પીણાં, ચટણીઓ અને રસોઈ તેલનો ઉલ્લેખ કરો—તેઓ એવી કેલરી ઉમેરે છે જે લોકો ઘણીવાર ભૂલી જાય છે.';
	@override String get offlineTip3 => 'ટીપ: એક ઝડપી ભાગ નોંધ (1 વાટકી, મોટી કોફી) અંદાજોને વધુ તીવ્ર બનાવે છે.';
	@override String get offlineTip4 => 'ટીપ: ભોજન પછી લોગિંગ હજુ પણ આદત બનાવે છે; સંપૂર્ણતા વૈકલ્પિક છે.';
	@override String get offlineTip5 => 'ટીપ: જ્યારે કેલરીમાં ઘણો ફેરફાર થાય ત્યારે ખોરાક કેવી રીતે રાંધવામાં આવ્યો તે કહો (તળેલું વિરુદ્ધ શેકેલું).';
}

// Path: meal.localInference
class _Translations$meal$localInference$gu extends Translations$meal$localInference$en {
	_Translations$meal$localInference$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'શોધાયેલ ઘટકોની સમીક્ષા કરો';
	@override String get reviewSubtitle => 'આ તમારા ઉપકરણ પર સમજવામાં આવ્યું છે. પોષણની ગણતરી કરતા પહેલા નામ અથવા ભાગો સુધારો.';
	@override String get mealName => 'જમવાનું નામ';
	@override String get ingredient => 'ઘટક';
	@override String get grams => 'અંદાજિત ગ્રામ';
	@override String get removeIngredient => 'ઘટક દૂર કરો';
	@override String get continueLabel => 'આગળ વધો';
	@override String get invalidProposal => 'ઓછામાં ઓછો એક ઘટક ઉમેરો અને ગ્રામની સકારાત્મક રકમનો ઉપયોગ કરો.';
	@override String get localUnavailable => 'ઓન-ડિવાઇસ વિશ્લેષણ અત્યારે ઉપલબ્ધ નથી.';
}

// Path: meal.feedback
class _Translations$meal$feedback$gu extends Translations$meal$feedback$en {
	_Translations$meal$feedback$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'શું ખોટું લાગે છે?';
	@override String get subtitle => 'એક અથવા વધુ સમસ્યાઓ પસંદ કરીને વિશ્લેષણને સુધારવામાં અમારી સહાય કરો.';
	@override String get tellUsMore => 'વધુ કહો';
	@override String get describeIncorrect => 'શું ખોટું હતું તેનું વર્ણન કરો';
	@override String get submit => 'સબમિટ કરો';
	@override String get issueFoodIdentification => 'ખોરાકની ઓળખ';
	@override String get issuePortionSize => 'ભાગનું કદ';
	@override String get issueCalorieDistribution => 'કેલરી વિતરણ';
	@override String get issueMacrosWrong => 'મેક્રો ખોટા છે';
	@override String get issueMissingItems => 'ગુમ થયેલ વસ્તુઓ';
	@override String get issueExtraItems => 'વધારાની વસ્તુઓ';
	@override String get issueOther => 'અન્ય';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$gu extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get recent => 'તાજેતરના';
	@override String get calories => 'કેલરી';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$gu extends Translations$profile$sections$en {
	_Translations$profile$sections$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'પ્રોફાઇલ';
	@override String get basicInformation => 'મૂળભૂત માહિતી';
	@override String get goalsAndActivity => 'લક્ષ્યો અને પ્રવૃત્તિ';
	@override String get calculatedValues => 'ગણતરી કરેલ મૂલ્યો';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$gu extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'દૈનિક લક્ષ્ય';
	@override String get calPerDay => 'કેલરી/દિવસ';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$gu extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'વ્યક્તિગત માહિતી';
	@override String get physicalMeasurements => 'શારીરિક માપ';
	@override String get goalsAndActivity => 'લક્ષ્યો અને પ્રવૃત્તિ';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$gu extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get male => 'પુરુષ';
	@override String get female => 'સ્ત્રી';
	@override String get other => 'અન્ય';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$gu extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$gu loseWeight = _Translations$editProfile$weightGoals$loseWeight$gu._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$gu maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$gu._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$gu gainWeight = _Translations$editProfile$weightGoals$gainWeight$gu._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$gu extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$gu sedentary = _Translations$editProfile$activityLevels$sedentary$gu._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$gu lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$gu._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$gu moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$gu._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$gu veryActive = _Translations$editProfile$activityLevels$veryActive$gu._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$gu extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$gu._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$gu extends Translations$settings$sections$en {
	_Translations$settings$sections$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'પ્રોફાઇલ';
	@override String get localization => 'સ્થાનિકીકરણ';
	@override String get notifications => 'સૂચનાઓ';
	@override String get healthConnect => 'હેલ્થ કનેક્ટ';
	@override String get localInference => 'ઓન-ડિવાઇસ વિશ્લેષણ';
	@override String get supportAndLegal => 'સપોર્ટ અને કાનૂની';
	@override String get about => 'વિશે';
	@override String get dangerZone => 'ડેન્જર ઝોન';
	@override String get developer => 'ડેવલપર';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$gu extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રોફાઇલ સંપાદિત કરો';
	@override String get subtitle => 'તમારી વ્યક્તિગત માહિતી અપડેટ કરો';
}

// Path: settings.language
class _Translations$settings$language$gu extends Translations$settings$language$en {
	_Translations$settings$language$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભાષા';
	@override String get subtitle => 'તમારી પસંદગીની ભાષા પસંદ કરો';
	@override String get searchHint => 'ભાષાઓ શોધો...';
	@override String get noResults => 'કોઈ પરિણામ મળ્યું નથી';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$gu extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ઊંચાઈનો એકમ';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$gu extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વજનનો એકમ';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$gu extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભોજન રીમાઇન્ડર્સ';
	@override String get subtitle => 'સમયસર ચેતવણીઓ સાથે ટ્રેક પર રહો';
}

// Path: settings.localInference
class _Translations$settings$localInference$gu extends Translations$settings$localInference$en {
	_Translations$settings$localInference$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ઓન-ડિવાઇસ મીલ એનાલિસિસ';
	@override String get subtitle => 'પોષણની ગણતરી કરતા પહેલા Gemini Nano સાથે સમર્થિત ભોજનનું અર્થઘટન કરો';
	@override String get unavailable => 'આ ઉપકરણ પર ઉપલબ્ધ નથી';
	@override String get rolloutUnavailable => 'સમર્થિત હાર્ડવેર મળ્યું છે, પરંતુ આ સુવિધા આ એપ રિલીઝ માટે સક્ષમ નથી';
	@override String get modelSetup => 'આને સક્ષમ કરતા પહેલા Gemini Nano ડાઉનલોડ પૂર્ણ કરવું જરૂરી છે';
	@override String get useLocalTitle => 'ઓન-ડિવાઇસ વિશ્લેષણનો ઉપયોગ કરો';
	@override String get useLocalSubtitle => 'વૈકલ્પિક અને ડિફોલ્ટ રીતે બંધ. જટિલ ભોજન માટે પરિણામો ઓછા વિશ્વસનીય હોઈ શકે છે.';
	@override String get disclosureTitle => 'ઓન-ડિવાઇસ વિશ્લેષણને સક્ષમ કરતા પહેલા';
	@override String get disclosureBody => 'Gemini Nano સમર્થિત Android ઉપકરણો પર ઘટકોને ઓળખી શકે છે અને ભાગોનો અંદાજ લગાવી શકે છે. તમારી સમીક્ષા કરેલી ઘટક દરખાસ્ત USDA પોષણ ગ્રાઉન્ડિંગ અને ગણતરી માટે Calorify ને મોકલવામાં આવે છે.';
	@override String get disclosureLimit1 => 'જટિલ વાનગીઓ, છુપાયેલા ઘટકો અને ભાગના કદ ખોટી રીતે ઓળખાઈ શકે છે.';
	@override String get disclosureLimit2 => 'ડાઉનલોડ કરતી વખતે, વ્યસ્ત હોય ત્યારે, બેકગ્રાઉન્ડમાં અથવા ઉપકરણ દ્વારા મર્યાદિત હોય ત્યારે મોડેલ અનુપલબ્ધ હોઈ શકે છે.';
	@override String get disclosureLimit3 => 'જો સ્થાનિક અર્થઘટન પૂર્ણ ન થઈ શકે, તો આ બીટા આપમેળે તમારા મૂળ ભોજનના વર્ણનને ક્લાઉડ વિશ્લેષણ માટે Calorify ને મોકલે છે.';
	@override String get acknowledgement => 'હું સમજું છું કે મારે શોધાયેલા ઘટકો અને ભાગોની સમીક્ષા કરવી જોઈએ.';
	@override String get enable => 'સ્વીકારો અને સક્ષમ કરો';
	@override String get cancel => 'રદ કરો';
}

// Path: settings.theme
class _Translations$settings$theme$gu extends Translations$settings$theme$en {
	_Translations$settings$theme$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'થીમ';
	@override String get light => 'લાઇટ';
	@override String get dark => 'ડાર્ક';
	@override String get system => 'સિસ્ટમ';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$gu extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રતિસાદ મોકલો';
	@override String subtitle({required Object appLabel}) => '${appLabel} સુધારવામાં અમારી સહાય કરો';
	@override String emailSubject({required Object appLabel}) => '${appLabel} એપ્લિકેશન પ્રતિસાદ';
	@override String get emailBodyPrefix => 'કૃપા કરીને નીચે તમારો પ્રતિસાદ આપો:';
	@override String get appVersion => 'એપ્લિકેશન સંસ્કરણ';
	@override String get device => 'ઉપકરણ';
	@override String get osVersion => 'OS સંસ્કરણ';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$gu extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભોજન ઇતિહાસ નિકાસ કરો';
	@override String get subtitle => 'તમારા લોગ કરેલા ભોજનનો CSV શેર કરો';
	@override String get shareText => 'તમારો Calorify ભોજન ઇતિહાસ નિકાસ';
	@override String failed({required Object error}) => 'ભોજન ઇતિહાસ નિકાસ કરી શકાયો નથી: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$gu extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'બધો ડેટા સાફ કરો';
	@override String get subtitle => 'તમારી બધી માહિતી કાયમ માટે કાઢી નાખો';
	@override String get localOnlySubtitle => 'આ ઉપકરણમાં સંગ્રહિત Calorify ડેટા કાઢી નાખો';
	@override String get confirmationTitle => 'બધો ડેટા સાફ કરવો?';
	@override String get confirmationMessage => 'આ ક્રિયા પૂર્વવત્ કરી શકાતી નથી. તમારા બધા લોગ કરેલા ભોજન, મનપસંદ અને પ્રોફાઇલ સેટિંગ્સ કાયમ માટે કાઢી નાખવામાં આવશે.';
	@override String get localOnlyConfirmationMessage => 'આ ઉપકરણમાંથી નોંધાયેલ ભોજન, મનપસંદ વસ્તુઓ અને પ્રોફાઇલ સેટિંગ્સ કાયમ માટે કાઢી નાખવામાં આવશે. Health Connect સાથે અગાઉ શેર કરેલું ભોજન અને Health Connect ઍક્સેસ સેટિંગ્સ > Health Connectમાં અલગથી મેનેજ થાય છે.';
	@override String get cancel => 'રદ કરો';
	@override String get clearEverything => 'બધું સાફ કરો';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$gu extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ડીબગ વિકલ્પો';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$gu extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ કનેક્ટ';
	@override String get subtitle => 'પરવાનગીઓ જુઓ અને મેનેજ કરો';
	@override late final _Translations$settings$healthConnect$unavailable$gu unavailable = _Translations$settings$healthConnect$unavailable$gu._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$gu updateRequired = _Translations$settings$healthConnect$updateRequired$gu._(_root);
	@override late final _Translations$settings$healthConnect$permissions$gu permissions = _Translations$settings$healthConnect$permissions$gu._(_root);
	@override String get managePermissions => 'પરવાનગીઓ મેનેજ કરો';
	@override String get openSettings => 'હેલ્થ કનેક્ટ સેટિંગ્સ ખોલો';
	@override String get disconnect => 'Health Connectનું જોડાણ તોડો';
	@override String get disconnectConfirmationTitle => 'Health Connectનું જોડાણ તોડવું છે?';
	@override String get disconnectConfirmationMessage => 'Calorify હવે Health Connectને ઍક્સેસ કરી શકશે નહીં. ત્યાં અગાઉ લખાયેલો ડેટા કાઢી નાખવામાં આવશે નહીં.';
	@override String get disconnectConfirmationAction => 'જોડાણ તોડો';
	@override String get deleteSyncedMeals => 'Health Connectમાંથી Calorifyનું ભોજન કાઢી નાખો';
	@override String get deleteSyncedMealsConfirmationTitle => 'સિંક કરેલું ભોજન કાઢી નાખવું છે?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Calorifyના આ સંસ્કરણથી Health Connectમાં સિંક કરેલું ભોજન કાઢી નાખવું છે? તમારો સ્થાનિક ભોજન લોગ બદલાશે નહીં. Calorifyની જૂની એન્ટ્રીઓ Health Connectમાં ડેટા મેનેજ કરો વિકલ્પથી અલગથી કાઢવી પડી શકે છે.';
	@override String get deleteSyncedMealsConfirmationAction => 'સિંક કરેલું ભોજન કાઢી નાખો';
	@override String get deleteSyncedMealsSuccess => 'Health Connectમાંથી Calorifyનું ભોજન કાઢી નાખવામાં આવ્યું.';
	@override String get deleteSyncedMealsFailed => 'સિંક કરેલું ભોજન કાઢી શકાયું નહીં. ફરી પ્રયાસ કરો.';
	@override String get connectionPartial => 'Health Connectનાં કેટલાક ફીચર ચાલુ છે.';
	@override String get connectionComplete => 'Health Connectનાં બંને ફીચર ચાલુ છે.';
	@override String get actionFailed => 'Health Connect ખોલી શકાયું નહીં. ફરી પ્રયાસ કરો.';
	@override String get requestPermissions => 'પરવાનગીઓની વિનંતી કરો';
	@override String get permissionRequestCancelledOrFailed => 'પરવાનગી વિનંતી રદ કરવામાં આવી અથવા નિષ્ફળ ગઈ. કૃપા કરીને ફરી પ્રયાસ કરો અથવા હેલ્થ કનેક્ટ સેટિંગ્સમાં મેન્યુઅલી પરવાનગીઓ આપો.';
	@override String get permissionRequestFailed => 'પરવાનગીઓની વિનંતી કરવામાં અસમર્થ. કૃપા કરીને ફરી પ્રયાસ કરો અથવા હેલ્થ કનેક્ટ સેટિંગ્સમાં મેન્યુઅલી પરવાનગીઓ આપો.';
	@override String get requestingPermissions => 'વિનંતી કરી રહ્યું છે...';
}

// Path: settings.about
class _Translations$settings$about$gu extends Translations$settings$about$en {
	_Translations$settings$about$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વિશે';
	@override String get tagline => 'ઝડપી, મફત અને ગોપનીયતા-પ્રથમ કેલરી જાગૃતિ';
	@override late final _Translations$settings$about$ourStory$gu ourStory = _Translations$settings$about$ourStory$gu._(_root);
	@override late final _Translations$settings$about$privacy$gu privacy = _Translations$settings$about$privacy$gu._(_root);
	@override late final _Translations$settings$about$developer$gu developer = _Translations$settings$about$developer$gu._(_root);
	@override late final _Translations$settings$about$feedback$gu feedback = _Translations$settings$about$feedback$gu._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$gu extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify વર્ઝન ${version}';
	@override String build({required Object buildNumber}) => 'બિલ્ડ ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$gu extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'નાસ્તાનો સમય! 🍳';
	@override String get body => 'તમારો નાસ્તો લોગ કરવાનું ભૂલશો નહીં';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$gu extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'બપોરના ભોજનનો સમય! 🥗';
	@override String get body => 'તમારું બપોરનું ભોજન લોગ કરવાનો સમય';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$gu extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'રાત્રિભોજનનો સમય! 🍽️';
	@override String get body => 'તમારું રાત્રિભોજન લોગ કરવાનું ભૂલશો નહીં';
}

// Path: notifications.snack
class _Translations$notifications$snack$gu extends Translations$notifications$snack$en {
	_Translations$notifications$snack$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'નાસ્તાનો સમય! 🍎';
	@override String get body => 'સ્વસ્થ નાસ્તાનો સમય';
}

// Path: notifications.test
class _Translations$notifications$test$gu extends Translations$notifications$test$en {
	_Translations$notifications$test$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પરીક્ષણ સૂચના';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$gu extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} અંદાજિત પોષણ માહિતી પ્રદાન કરે છે. ચોકસાઈ તમારા ઇનપુટ અને ખોરાકની વિવિધતાઓ પર આધારિત છે. માર્ગદર્શિકા તરીકે ઉપયોગ કરો, ચોક્કસ સ્ત્રોત તરીકે નહીં. વ્યક્તિગત આહાર સલાહ માટે વ્યાવસાયિકની સલાહ લો.';
	@override late final _Translations$disclaimer$snap$portionSize$gu portionSize = _Translations$disclaimer$snap$portionSize$gu._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$gu preparationMethods = _Translations$disclaimer$snap$preparationMethods$gu._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$gu ingredients = _Translations$disclaimer$snap$ingredients$gu._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$gu databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$gu._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$gu extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વજનના અંદાજ વિશે';
	@override String get description => 'અંદાજિત વજનમાં ફેરફાર એ સરળ કેલરી-ઇન વિ. કેલરી-આઉટ મોડેલ પર આધારિત સૈદ્ધાંતિક અંદાજ છે. તે ફક્ત પ્રેરક માર્ગદર્શન માટે છે, તમારા વાસ્તવિક વજનની આગાહી તરીકે નહીં.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$gu calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$gu._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$gu biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$gu._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$gu waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$gu._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$gu professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$gu._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$gu extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get description => 'આ મેટ્રિક્સ તમને તમારા શરીરની ઊર્જાની જરૂરિયાતોને સમજવામાં અને તમારા પોષણ લક્ષ્યોને માર્ગદર્શન આપવામાં મદદ કરે છે.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$gu bmr = _Translations$disclaimer$healthMetrics$bmr$gu._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$gu tdee = _Translations$disclaimer$healthMetrics$tdee$gu._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$gu dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$gu._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$gu extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'કેલરી ખર્ચનો અંદાજ';
	@override String get description => 'જ્યારે Health Connect ડેટા અનુપલબ્ધ હોય, ત્યારે અમે તમારા બેઝલ મેટાબોલિક રેટ (BMR) અને પ્રવૃત્તિ સ્તર (TDEE) નો ઉપયોગ કરીને આજે બળી ગયેલી કેલરીનો અંદાજ લગાવીએ છીએ, જે દિવસના વીતી ગયેલા ભાગ માટે સ્કેલ કરવામાં આવે છે.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$gu howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$gu._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$gu professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$gu._(_root);
}

// Path: watch.common
class _Translations$watch$common$gu extends Translations$watch$common$en {
	_Translations$watch$common$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get back => 'પાછળ';
	@override String get cancel => 'રદ કરો';
	@override String get delete => 'કાઢી નાખો';
	@override String get retry => 'ફરી પ્રયાસ કરો';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$gu extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'પોષકતત્ત્વ';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} ગ્રામ';
	@override String get protein => 'પ્રોટીન';
	@override String get carbs => 'કાર્બોહાઇડ્રેટ';
	@override String get fat => 'ચરબી';
	@override String get fiber => 'ફાઇબર';
}

// Path: watch.sync
class _Translations$watch$sync$gu extends Translations$watch$sync$en {
	_Translations$watch$sync$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'ફોન સાથે સમન્વય કરો';
	@override String get syncing => 'સમન્વય થઈ રહ્યું છે…';
	@override String get synced => 'સમન્વય થયું';
	@override String get syncedJustNow => 'હમણાં જ સમન્વય થયું';
	@override String syncedMinutesAgo({required Object minutes}) => '${minutes} મિનિટ પહેલાં સમન્વય થયું';
	@override String get failed => 'સમન્વય નિષ્ફળ';
	@override String get phoneDisconnected => 'ફોન ડિસ્કનેક્ટ થયો';
	@override String get tapToSync => 'સમન્વય કરવા માટે ટેપ કરો';
	@override String get refreshFailed => 'તાજું કરી શકાયું નથી. તમારો ફોન તપાસો.';
	@override String get openPhone => 'તમારા ફોન પર Calorify ખોલો, પછી તાજું કરવા માટે ટેપ કરો.';
}

// Path: watch.home
class _Translations$watch$home$gu extends Translations$watch$home$en {
	_Translations$watch$home$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get today => 'આજે';
	@override String calorieSummary({required Object goal, required Object consumed, required Object status}) => '${goal} માંથી ${consumed} કેલરીનો વપરાશ થયો. ${status}.';
	@override String overGoal({required Object calories}) => 'લક્ષ્ય કરતાં ${calories} વધુ';
	@override String remaining({required Object calories}) => '${calories} બાકી';
	@override String left({required Object calories}) => '${calories} બાકી';
	@override String goal({required Object calories}) => '${calories} kcal લક્ષ્ય';
	@override String get logMeal => 'ભોજન લોગ કરો';
	@override String get todayMeals => 'આજના ભોજન';
	@override String todayMealsCount({required Object count}) => 'આજના ભોજન, ${count}';
	@override String viewMore({required Object count}) => '${count} વધુ જુઓ';
	@override String viewMoreSemantics({required Object count}) => '${count} વધુ ભોજન, બધા જોવા માટે ટેપ કરો';
	@override String get noMeals => 'કોઈ ભોજન લોગ થયેલ નથી';
	@override String get noMealsSemantics => 'આજે કોઈ ભોજન લોગ થયેલ નથી';
	@override String get tapLog => 'શરૂ કરવા માટે લોગ પર ટેપ કરો';
	@override String get removedFromQueue => 'ભોજન ઑફલાઇન કતારમાંથી દૂર કરવામાં આવ્યું.';
	@override String get removedOffline => 'ભોજન ઑફલાઇન દૂર કરવામાં આવ્યું. જ્યારે તમારો ફોન ફરીથી કનેક્ટ થશે ત્યારે તે સમન્વય થશે.';
	@override String get deleteFailed => 'ભોજન કાઢી શકાયું નથી';
}

// Path: watch.history
class _Translations$watch$history$gu extends Translations$watch$history$en {
	_Translations$watch$history$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'આજના ભોજન';
	@override String get refresh => 'ભોજન તાજા કરો';
	@override String get loadFailed => 'ભોજન લોડ કરી શકાયા નથી';
	@override String get syncFailed => 'સમન્વય કરી શકાયું નથી';
	@override String get emptyTitle => 'હજુ સુધી કોઈ ભોજન નથી';
	@override String get emptyMessage => 'અહીં જોવા માટે હોમમાંથી ભોજન લોગ કરો.';
}

// Path: watch.favorites
class _Translations$watch$favorites$gu extends Translations$watch$favorites$en {
	_Translations$watch$favorites$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'મનપસંદ';
	@override String get refresh => 'મનપસંદ તાજા કરો';
	@override String get loadFailed => 'મનપસંદ લોડ કરી શકાયા નથી';
	@override String get syncFailed => 'સમન્વય કરી શકાયું નથી';
	@override String get emptyTitle => 'હજુ સુધી કોઈ મનપસંદ નથી';
	@override String get emptyMessage => 'અહીં એક-ટેપ લોગિંગ માટે ફોન ઍપમાં ભોજનને સ્ટાર કરો.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} કેલરી. લોગ કરવા માટે ટેપ કરો.';
	@override String logged({required Object name}) => '${name} લોગ થયું!';
	@override String savedOffline({required Object name}) => '${name} ઑફલાઇન સાચવવામાં આવ્યું. જ્યારે તમારો ફોન ફરીથી કનેક્ટ થશે ત્યારે તે સમન્વય થશે.';
	@override String get saveFailed => 'ભોજન સાચવી શકાયું નથી. કૃપા કરીને ફરી પ્રયાસ કરો.';
	@override String get log => 'લોગ કરો';
}

// Path: watch.meal
class _Translations$watch$meal$gu extends Translations$watch$meal$en {
	_Translations$watch$meal$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} કેલરી, ${time} વાગ્યે લોગ થયું.';
	@override String get longPressDelete => 'કાઢી નાખવા માટે લાંબો સમય દબાવો.';
	@override String get deleteTitle => 'ભોજન કાઢી નાખવું છે?';
}

// Path: watch.voice
class _Translations$watch$voice$gu extends Translations$watch$voice$en {
	_Translations$watch$voice$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વૉઇસ ભોજન લોગ';
	@override String get processing => 'તમારા ભોજનની તપાસ થઈ રહી છે…';
	@override String get processingDescription => 'ભાગો અને પોષણનો અંદાજ લગાવવો';
	@override String get listening => 'સાંભળી રહ્યું છે';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'રેકોર્ડિંગ બંધ કરો';
	@override String get start => 'રેકોર્ડિંગ શરૂ કરવા માટે ટેપ કરો';
	@override String get starting => 'માઇક્રોફોન શરૂ થઈ રહ્યું છે…';
	@override String get prompt => 'ટેપ કરો, પછી તમારા ભોજનનું વર્ણન કરો';
	@override String get tapToRetry => 'ફરી પ્રયાસ કરવા માટે ટેપ કરો';
	@override String get example => '“દાળ સાથે 2 રોટલી” અજમાવો';
	@override String get unavailable => 'વૉઇસ ઇનપુટ અનુપલબ્ધ છે. ઘડિયાળ સેટિંગ્સમાં માઇક્રોફોન પરવાનગી તપાસો.';
	@override String get didNotStart => 'માઇક્રોફોન શરૂ થયું નથી. ફરી પ્રયાસ કરવા માટે ટેપ કરો.';
	@override String get startFailed => 'રેકોર્ડિંગ શરૂ કરી શકાયું નથી. માઇક્રોફોન પરવાનગીઓ તપાસો.';
	@override String get allowMicrophone => 'વૉઇસ દ્વારા ભોજન લોગ કરવા માટે માઇક્રોફોન ઍક્સેસની મંજૂરી આપો.';
	@override String get needsConnection => 'વૉઇસ ઓળખ માટે કનેક્શનની જરૂર છે. ફરી પ્રયાસ કરવા માટે ટેપ કરો.';
	@override String get microphoneUnavailable => 'માઇક્રોફોન અનુપલબ્ધ છે. ફરી પ્રયાસ કરવા માટે ટેપ કરો.';
	@override String get microphoneBusy => 'માઇક્રોફોન વ્યસ્ત છે. થોડીવાર રાહ જુઓ અને ફરી પ્રયાસ કરો.';
	@override String get languageUnsupported => 'વૉઇસ ઇનપુટ ઘડિયાળની ભાષાને સપોર્ટ કરતું નથી.';
	@override String get temporarilyBusy => 'વૉઇસ ઇનપુટ અસ્થાયી રૂપે વ્યસ્ત છે. થોડીવાર રાહ જુઓ અને ફરી પ્રયાસ કરો.';
	@override String get notRecognized => 'હું તે સમજી શક્યો નથી. માઇક પર ટેપ કરો અને ફરી પ્રયાસ કરો.';
	@override String get noSpeech => 'કોઈ ભાષણ શોધી શકાયું નથી. ફરી પ્રયાસ કરવા માટે માઇક પર ટેપ કરો.';
	@override String get analysisFailed => 'વિશ્લેષણ નિષ્ફળ. કૃપા કરીને ફરી પ્રયાસ કરો.';
	@override String get mealNotIdentified => 'તે ભોજન ઓળખી શકાયું નથી. તેનું અલગ રીતે વર્ણન કરવાનો પ્રયાસ કરો.';
}

// Path: watch.result
class _Translations$watch$result$gu extends Translations$watch$result$en {
	_Translations$watch$result$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભોજનની વિગતો';
	@override String get savedOffline => 'ઑફલાઇન સાચવવામાં આવ્યું';
	@override String get logged => 'લોગ થયું!';
	@override String get mealFound => 'ભોજન મળ્યું';
	@override String get estimatedEnergy => 'અંદાજિત ઊર્જા';
	@override String get logMeal => 'ભોજન લોગ કરો';
	@override String get logging => 'લોગ થઈ રહ્યું છે…';
	@override String get logAnother => 'બીજું લોગ કરો';
	@override String get goingBack => 'પાછળ જઈ રહ્યું છે…';
	@override String get savedOfflineMessage => 'ભોજન ઑફલાઇન સાચવવામાં આવ્યું. જ્યારે તમારો ફોન ફરીથી કનેક્ટ થશે ત્યારે તે સમન્વય થશે.';
	@override String get saveFailed => 'ભોજન સાચવી શકાયું નથી. કૃપા કરીને ફરી પ્રયાસ કરો.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$gu extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'સ્માર્ટ ફૂડ રેકગ્નિશન';
	@override String get description => 'ફોટો લો અને AI ને તમારું ભોજન ઓળખવા દો';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$gu extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI વિશ્લેષણ';
	@override String get description => 'તમારા વર્ણનોમાંથી ત્વરિત પોષણ તથ્યો મેળવો';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$gu extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ ઇન્ટિગ્રેશન';
	@override String get description => 'વધુ સારી આંતરદૃષ્ટિ માટે હેલ્થ કનેક્ટ સાથે કનેક્ટ કરો';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$gu extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ઓછું વજન';
	@override String get healthyWeight => 'સ્વસ્થ વજન';
	@override String get overweight => 'વધુ વજન';
	@override String get obese => 'સ્થૂળતા';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$gu extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'અમે તમને પોષક તત્ત્વોથી ભરપૂર ભોજન સાથે સંતુલિત વજન સુધી પહોંચવા માટે સ્વસ્થ યોજના બનાવવામાં મદદ કરી શકીએ છીએ.';
	@override String get healthy => 'ખૂબ સરસ કામ! તમે સ્વસ્થ શ્રેણીમાં છો. અમે તમને તમારી જીવંતતા અને ઊર્જા સ્તર જાળવી રાખવામાં મદદ કરીશું.';
	@override String overweight({required Object appLabel}) => '${appLabel} તમારા લક્ષ્ય સુધી આરામથી પહોંચવામાં મદદ કરવા માટે AI-સંચાલિત ટ્રેકિંગ સાથે તમારી યાત્રાને સરળ બનાવશે.';
	@override String get obese => 'અમે તમારા સ્વાસ્થ્ય લક્ષ્યો માટે વ્યક્તિગત માર્ગદર્શન અને ટકાઉ વ્યૂહરચનાઓ સાથે તમને ટેકો આપવા માટે અહીં છીએ.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$gu extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'સ્વચાલિત કેલરી ટ્રેકિંગ';
	@override String get description => 'તમારી ફિટનેસ એપ્લિકેશન્સમાંથી બર્ન થયેલી કેલરી ટ્રૅક કરો';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$gu extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'બર્ન થયેલી કેલરી';
	@override String get description => 'Health Connectમાંથી આજની કુલ બર્ન થયેલી કેલરી વાંચો';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$gu extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પ્રગતિ આંતરદૃષ્ટિ';
	@override String get description => 'તમારા સ્વાસ્થ્યના વલણો વિશે વિગતવાર આંતરદૃષ્ટિ મેળવો';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$gu extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'નોંધાયેલ ભોજન શેર કરો';
	@override String get description => 'Calorifyમાં નોંધેલું ભોજન Health Connectમાં લખો';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$gu extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'સીમલેસ ઇન્ટિગ્રેશન';
	@override String get description => 'તમારી મનપસંદ સ્વાસ્થ્ય એપ્લિકેશન્સમાંથી ડેટા સિંક કરો';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$gu extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'નિયંત્રણ તમારા હાથમાં છે';
	@override String get description => 'બેમાંથી કોઈપણ પરવાનગી પસંદ કરો અને ગમે ત્યારે ઍક્સેસ બદલો';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$gu extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમે એકલા નથી';
	@override String get genericMessage => 'સંશોધન દર્શાવે છે કે સુસંગત ટ્રેકિંગ લાંબા ગાળાની સફળતાનું #1 અનુમાનક છે.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age} વર્ષના ${gender} માટે જે ${goal} કરવા માંગે છે, સુસંગત ટ્રેકિંગ સફળતાનું #1 અનુમાનક છે.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} તેને મેન્યુઅલી કરવા કરતાં 10 ગણું સરળ બનાવે છે.';
	@override String get getStartedTitle => 'શરૂ કરવા તૈયાર છો?';
	@override String get tipPhoto => 'ત્વરિત વિશ્લેષણ માટે તમારા ભોજનનો ફોટો લો';
	@override String get tipConsistency => 'સાર્થક પ્રગતિ જોવા માટે સુસંગત રીતે લોગ કરો';
	@override String get tipProgress => 'પ્રેરિત રહેવા માટે તમારી પ્રગતિ દૈનિક ટ્રૅક કરો';
	@override String get button => 'ચાલો જઈએ';
	@override String get defaultGender => 'વ્યક્તિ';
	@override String get defaultGoal => 'સ્વસ્થ તમે';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$gu extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારી સ્વાસ્થ્ય પ્રોફાઇલ';
	@override String bmiDescription({required Object bmi}) => 'તમારા મેટ્રિક્સના આધારે, તમારો BMI ${bmi} છે.';
	@override String get finalizeDescription => 'તમારા અનુભવને કસ્ટમાઇઝ કરવા માટે ચાલો તમારી પ્રોફાઇલને અંતિમ સ્વરૂપ આપીએ.';
	@override String get goalGain => 'મેળવો';
	@override String get goalLose => 'ઘટાડો';
	@override String goalReach({required Object diff, required Object unit, required Object direction}) => 'તમારા લક્ષ્ય સુધી પહોંચવા માટે, તમે ${diff} ${unit} ${direction} કરશો.';
	@override String get goalReached => 'તમે તમારા લક્ષ્ય વજન પર છો! અમે તમને તેને જાળવી રાખવામાં મદદ કરીશું.';
	@override String get button => 'ચાલો જઈએ';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$gu extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ઉત્તમ શરૂઆત!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'તમે ${goalText} તરફ પ્રથમ પગલું ભર્યું છે. કારણ કે તમે ${activityText} છો, ${appLabel} તમારી જીવનશૈલી સાથે મેળ ખાતા તમારા લક્ષ્યોને સમાયોજિત કરશે.';
	@override String get personalizedTargets => 'વ્યક્તિગત કેલરી લક્ષ્યો';
	@override String get aiMealDetection => 'AI-સંચાલિત ભોજન શોધ';
	@override String get macroBreakdowns => 'વિગતવાર મેક્રો-પોષક વિભાજન';
	@override String get button => 'ચાલો જઈએ';
	@override String get defaultGoal => 'તમારા લક્ષ્યો';
	@override String get defaultActivity => 'સક્રિય';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$gu extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'વજન ઘટાડવું';
	@override String get description => 'વજન ઘટાડવા માટે કેલરીની ઉણપ બનાવો';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$gu extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'વજન જાળવી રાખવું';
	@override String get description => 'તમારું વર્તમાન વજન જાળવી રાખો';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$gu extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'વજન વધારવું';
	@override String get description => 'વજન વધારવા માટે કેલરીનો વધારો બનાવો';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$gu extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'નિષ્ક્રિય';
	@override String get description => 'ઓછી અથવા કોઈ કસરત નહીં';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$gu extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'હળવી સક્રિય';
	@override String get description => 'અઠવાડિયામાં 1-3 દિવસ હળવી કસરત';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$gu extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'મધ્યમ સક્રિય';
	@override String get description => 'અઠવાડિયામાં 3-5 દિવસ મધ્યમ કસરત';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$gu extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'ખૂબ સક્રિય';
	@override String get description => 'અઠવાડિયામાં 6-7 દિવસ સખત કસરત';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$gu extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get name => 'અત્યંત સક્રિય';
	@override String get description => 'ખૂબ સખત કસરત, શારીરિક નોકરી';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$gu extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'હેલ્થ કનેક્ટ અનુપલબ્ધ';
	@override String get description => 'આ ઉપકરણ પર હેલ્થ કનેક્ટ ઉપલબ્ધ નથી. કૃપા કરીને Play Store (Android 9+) પરથી હેલ્થ કનેક્ટ ઇન્સ્ટોલ કરો અથવા Android 14+ પર અપડેટ કરો.';
	@override String get unsupportedDescription => 'આ ઉપકરણ પર Health Connect સમર્થિત નથી.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$gu extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect પર ધ્યાન આપવું જરૂરી છે';
	@override String get description => 'ઍક્સેસ મેનેજ કરતાં પહેલાં Health Connect ઇન્સ્ટોલ અથવા અપડેટ કરો.';
	@override String get action => 'ઇન્સ્ટોલ અથવા અપડેટ કરો';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$gu extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પરવાનગીઓ';
	@override String get description => 'હેલ્થ કનેક્ટ એકીકરણ પ્રદાન કરવા માટે નીચેની પરવાનગીઓની વિનંતી કરવામાં આવે છે:';
	@override String get granted => 'મંજૂર';
	@override String get notGranted => 'મંજૂર નથી';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$gu caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$gu._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$gu nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$gu._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$gu nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$gu._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$gu extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'અમારી વાર્તા';
	@override String content({required Object appLabel}) => '${appLabel} એક સરળ હતાશામાંથી જન્મ્યું હતું: મોટાભાગની કેલરી ટ્રેકિંગ એપ્લિકેશનો કાં તો વધુ પડતી જટિલ હોય છે, સતત મેન્યુઅલ ઇનપુટની માંગ કરે છે, ઊંચી સબ્સ્ક્રિપ્શન ફી લે છે અથવા ગોપનીયતા સાથે સમાધાન કરે છે.\n\nએક સોલો ડેવલપર તરીકે, હું કંઈક સરળ અને વધુ ન્યાયી બનાવવા માંગતો હતો — એક એવી એપ્લિકેશન જે પ્રયત્નો ઘટાડવા માટે AI નો ઉપયોગ કરે, ઝડપી અને મફત રહે, અને તમારા સ્વાસ્થ્ય ડેટાને આદર સાથે વર્તે.\n\n${appLabel} એ એવી એપ્લિકેશન છે જે હું ઈચ્છતો હતો કે અસ્તિત્વમાં હોય: કોઈ એકાઉન્ટ્સ નહીં, કોઈ ટ્રેકિંગ નહીં, કોઈ જાહેરાતો નહીં — ફક્ત સ્પષ્ટ, વ્યવહારુ આંતરદૃષ્ટિ અને તમારા સ્વાસ્થ્ય લક્ષ્યો.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$gu extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારી ગોપનીયતા મહત્વપૂર્ણ છે';
	@override String get description => 'ગોપનીયતા એ પછીનો વિચાર નથી — તે એક ડિઝાઇન સિદ્ધાંત છે. વ્યવહારમાં તેનો અર્થ અહીં છે:';
	@override String get noAccounts => 'કોઈ એકાઉન્ટ્સની જરૂર નથી\nએપ્લિકેશનનો તરત જ ઉપયોગ કરો. કોઈ સાઇન-અપ નહીં, કોઈ ઓળખ નહીં.';
	@override String noTracking({required Object appLabel}) => 'કોઈ વર્તણૂકીય ટ્રેકિંગ નહીં\n${appLabel} તમારી પ્રવૃત્તિનું નિરીક્ષણ કરતું નથી, ઉપયોગ પ્રોફાઇલ્સ બનાવતું નથી અથવા તમને એપ્લિકેશન્સ અથવા વેબસાઇટ્સ પર ટ્રૅક કરતું નથી.';
	@override String analyticsDisclosure({required Object appLabel}) => 'મર્યાદિત વિશ્લેષણ અને નિદાન\nવિશ્વસનીયતા સુધારવા માટે ${appLabel} એપ્લિકેશનની મૂળભૂત ઘટનાઓ અને ક્રેશ નિદાનનો ઉપયોગ કરે છે. આરોગ્ય રેકોર્ડનાં મૂલ્યોનો જાહેરાત માટે ઉપયોગ થતો નથી કે તે વેચાતા નથી.';
	@override String noAds({required Object appLabel}) => 'ડિઝાઇન દ્વારા જાહેરાત-મુક્ત\n${appLabel} જાહેરાતો અથવા ડેટા-આધારિત મુદ્રીકરણ વિના કાર્ય કરવા માટે બનાવવામાં આવ્યું છે.';
	@override String get noDataSelling => 'કોઈ ડેટા વેચાણ નહીં\nતમારો સ્વાસ્થ્ય ડેટા ક્યારેય વેચવામાં આવતો નથી અથવા તૃતીય પક્ષો સાથે શેર કરવામાં આવતો નથી.';
	@override String get localStorage => 'સ્થાનિક-પ્રથમ સ્ટોરેજ\nતમારો ડેટા તમારા ઉપકરણ પર રહે છે.';
	@override String get privacyPolicy => 'ગોપનીયતા નીતિ';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$gu extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'એકલા ડેવલપર દ્વારા નિર્મિત';
	@override String description({required Object appLabel}) => '${appLabel} એક જ સોલો ડેવલપર દ્વારા બનાવવામાં અને જાળવવામાં આવે છે જે શાંત, ગોપનીયતા-સન્માનિત આરોગ્ય સોફ્ટવેર બનાવવા પર ધ્યાન કેન્દ્રિત કરે છે.\n\nપ્રતિસાદ વ્યક્તિગત રીતે વાંચવામાં આવે છે અને એપ્લિકેશનની દિશાને આકાર આપવામાં મદદ કરે છે.';
	@override String get website => 'વેબસાઇટ';
	@override String get email => 'ઇમેઇલ';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$gu extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} નો આનંદ માણી રહ્યા છો?';
	@override String description({required Object appLabel}) => 'તમારો પ્રતિસાદ ${appLabel} ને દરેક માટે વધુ સારું બનાવવામાં મદદ કરે છે.';
	@override String get rateApp => 'Play Store પર રેટ કરો';
	@override String get sendFeedback => 'પ્રતિસાદ મોકલો';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$gu extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ભાગનું કદ';
	@override String get description => 'અંદાજોની ચોકસાઈ તમારા ભાગના કદના સાચા મૂલ્યાંકન પર ખૂબ આધાર રાખે છે.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$gu extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તૈયારી પદ્ધતિઓ';
	@override String description({required Object appLabel}) => 'રસોઈ પદ્ધતિઓ ખોરાકની પોષક સામગ્રીને નોંધપાત્ર રીતે બદલી શકે છે. ${appLabel} ના અંદાજો હંમેશા આ ભિન્નતાઓને ધ્યાનમાં લઈ શકતા નથી.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$gu extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ઘટકો';
	@override String get description => 'ઘણા છુપાયેલા ઘટકોવાળી જટિલ વાનગીઓ ઓછા સચોટ અંદાજો તરફ દોરી શકે છે.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$gu extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ડેટાબેઝ મર્યાદાઓ';
	@override String description({required Object appLabel}) => '${appLabel} નો ફૂડ ડેટાબેઝ વ્યાપક છે પરંતુ તેમાં દરેક એક ખાદ્ય વસ્તુ અથવા ભિન્નતા શામેલ ન હોઈ શકે.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$gu extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'કેલરીની ચોકસાઈ';
	@override String get description => 'આ અંદાજ ફક્ત તમારી ટ્રેક કરેલી કેલરીનું સેવન અને ખર્ચ જેટલો જ સચોટ છે. ખોટું લોગિંગ અચોક્કસ અંદાજમાં પરિણમશે.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$gu extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'જૈવિક પરિબળો';
	@override String description({required Object appLabel}) => 'વાસ્તવિક વજન ઘટાડવું/વધવું ચયાપચય, હોર્મોન્સ, ઊંઘ, તણાવ, હાઇડ્રેશન અને અન્ય વ્યક્તિગત પરિબળોથી પ્રભાવિત થાય છે જે ${appLabel} માપી શકતું નથી.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$gu extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પાણીનું વજન અને વધઘટ';
	@override String get description => 'પાણી જાળવી રાખવા, પાચન અને સમયને કારણે સામાન્ય દૈનિક વજનમાં નોંધપાત્ર વધઘટ થઈ શકે છે. અંદાજ આ દૈનિક ફેરફારોને ધ્યાનમાં લેતો નથી.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$gu extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વ્યાવસાયિક માર્ગદર્શન';
	@override String get description => 'તબીબી નિર્ણયો લેવા માટે આ અંદાજનો ઉપયોગ કરશો નહીં. વ્યક્તિગત વજન વ્યવસ્થાપન સલાહ માટે હંમેશા આરોગ્યસંભાળ વ્યાવસાયિક અથવા નોંધાયેલ આહાર નિષ્ણાતની સલાહ લો.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$gu extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'બેઝલ મેટાબોલિક રેટ (BMR) એ કેલરીની સંખ્યા છે જે તમારું શરીર આરામ કરતી વખતે શ્વાસ લેવા અને રક્ત પરિભ્રમણ જેવા મૂળભૂત કાર્યો જાળવવા માટે બાળે છે. BMR તમારી ઉંમર, લિંગ, ઊંચાઈ અને વજન પર આધાર રાખે છે. ઉચ્ચ BMR નો અર્થ છે કે તમારું શરીર કુદરતી રીતે આરામ કરતી વખતે વધુ કેલરી બાળે છે, જે ઘણીવાર વધુ સ્નાયુ સમૂહ, નાની ઉંમર અથવા પુરુષ હોવાને કારણે થાય છે. નીચું BMR સામાન્ય રીતે ઓછા સ્નાયુ સમૂહ, મોટી ઉંમર અથવા સ્ત્રી હોવાનો સંકેત આપે છે.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$gu extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'કુલ દૈનિક ઊર્જા ખર્ચ (TDEE) એ દરરોજ તમે બાળો છો તે કુલ કેલરી છે, જેમાં તમારું BMR વત્તા શારીરિક પ્રવૃત્તિ અને દૈનિક હલનચલનમાંથી કેલરીનો સમાવેશ થાય છે. TDEE તમારા BMR અને પ્રવૃત્તિ સ્તર પર આધાર રાખે છે. ઉચ્ચ TDEE નો અર્થ છે કે તમે એકંદરે વધુ કેલરી બાળો છો, સામાન્ય રીતે વધુ સક્રિય હોવાને કારણે અથવા ઉચ્ચ BMR હોવાને કારણે. નીચું TDEE ઓછી દૈનિક પ્રવૃત્તિ અથવા નીચા BMR સૂચવે છે.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$gu extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'દૈનિક લક્ષ્ય';
	@override String get description => 'દૈનિક લક્ષ્ય એ તમારા TDEE અને વજનના લક્ષ્યના આધારે તમારી ભલામણ કરેલ દૈનિક કેલરીનું સેવન છે. વજન ઘટાડવા માટે, તમે તમારા TDEE કરતાં ઓછી કેલરીનો વપરાશ કરો છો. વજન જાળવવા માટે, તમે તમારા TDEE સાથે મેળ ખાઓ છો. વજન વધારવા માટે, તમે તમારા TDEE કરતાં વધુ કેલરીનો વપરાશ કરો છો. આ તમને સ્વસ્થ ગતિએ તમારા ઇચ્છિત વજનમાં ફેરફાર પ્રાપ્ત કરવામાં મદદ કરે છે.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$gu extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'અંદાજ કેવી રીતે ગણવામાં આવે છે';
	@override String get description => 'અમે તમારા TDEE (તમારી પ્રોફાઇલના આધારે) ની ગણતરી કરીએ છીએ અને અત્યાર સુધી બળી ગયેલી કેલરીનો અંદાજ કાઢવા માટે તેને દિવસના વીતી ગયેલા અપૂર્ણાંક (કલાકો + મિનિટ) / 24 વડે ગુણાકાર કરીએ છીએ.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$gu extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'વ્યાવસાયિક માર્ગદર્શન';
	@override String get description => 'તબીબી નિર્ણયો લેવા માટે આ અંદાજનો ઉપયોગ કરશો નહીં. વ્યક્તિગત વજન વ્યવસ્થાપન સલાહ માટે હંમેશા આરોગ્યસંભાળ વ્યાવસાયિક અથવા નોંધાયેલ આહાર નિષ્ણાતની સલાહ લો.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$gu extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'કુલ બળી ગયેલી કેલરી વાંચો';
	@override String get description => 'એપ્લિકેશનને હેલ્થ કનેક્ટમાંથી તમારી કુલ બળી ગયેલી કેલરી વાંચવાની મંજૂરી આપે છે.';
	@override String get usage => 'આ પરવાનગીનો ઉપયોગ એપ્લિકેશનમાં તમારી દૈનિક કેલરી બર્ન દર્શાવવા માટે થાય છે, જે તમને દિવસભર તમારા કુલ ઊર્જા ખર્ચને સમજવામાં મદદ કરે છે.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$gu extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પોષણ ડેટા વાંચો';
	@override String get description => 'એપ્લિકેશનને હેલ્થ કનેક્ટમાંથી પોષણ ડેટા વાંચવાની મંજૂરી આપે છે.';
	@override String get usage => 'આ પરવાનગી એપ્લિકેશનને પોષણ માહિતી વાંચવાની મંજૂરી આપે છે જે હેલ્થ કનેક્ટ સાથે જોડાયેલ અન્ય એપ્લિકેશનો દ્વારા લોગ કરવામાં આવી હોય, જે તમારા પોષણનો વ્યાપક દૃશ્ય પ્રદાન કરે છે.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$gu extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$gu._(TranslationsGu root) : this._root = root, super.internal(root);

	final TranslationsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'પોષણ ડેટા લખો';
	@override String get description => 'એપ્લિકેશનને હેલ્થ કનેક્ટમાં પોષણ ડેટા લખવાની મંજૂરી આપે છે.';
	@override String get usage => 'આ પરવાનગી એપ્લિકેશનને તમારા લોગ કરેલા ભોજનને હેલ્થ કનેક્ટમાં સિંક કરવાની મંજૂરી આપે છે, જે તમારા પોષણ ડેટાને તમે ઉપયોગ કરો છો તે અન્ય આરોગ્ય અને ફિટનેસ એપ્લિકેશનો માટે ઉપલબ્ધ બનાવે છે.';
}

/// The flat map containing all translations for locale <gu>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsGu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'ગુજરાતી',
			'flag' => '🇮🇳',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'તમે ઘણી બધી વિનંતીઓ કરી છે. કૃપા કરીને ફરી પ્રયાસ કરતા પહેલા થોડી રાહ જુઓ.',
			'errors.networkError' => 'નેટવર્ક ભૂલ. કૃપા કરીને તમારું ઇન્ટરનેટ કનેક્શન તપાસો.',
			'errors.unknownError' => 'કંઈક ખોટું થયું. કૃપા કરીને પછીથી ફરી પ્રયાસ કરો.',
			'errors.loadingProfileData' => 'પ્રોફાઇલ ડેટા લોડ કરવામાં ભૂલ',
			'errors.somethingWentWrong' => 'કંઈક ખોટું થયું.',
			'errors.retry' => 'ફરી પ્રયાસ કરો',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} માં આપનું સ્વાગત છે',
			'onboarding.subtitle' => 'AI દ્વારા સંચાલિત તમારો વ્યક્તિગત પોષણ સાથી',
			'onboarding.getStarted' => 'શરૂ કરો',
			'onboarding.features.foodRecognition.title' => 'સ્માર્ટ ફૂડ રેકગ્નિશન',
			'onboarding.features.foodRecognition.description' => 'ફોટો લો અને AI ને તમારું ભોજન ઓળખવા દો',
			'onboarding.features.aiAnalysis.title' => 'AI વિશ્લેષણ',
			'onboarding.features.aiAnalysis.description' => 'તમારા વર્ણનોમાંથી ત્વરિત પોષણ તથ્યો મેળવો',
			'onboarding.features.healthIntegration.title' => 'હેલ્થ ઇન્ટિગ્રેશન',
			'onboarding.features.healthIntegration.description' => 'વધુ સારી આંતરદૃષ્ટિ માટે હેલ્થ કનેક્ટ સાથે કનેક્ટ કરો',
			'onboarding.gender.title' => 'તમારું લિંગ શું છે?',
			'onboarding.gender.description' => 'લિંગ અમને તમારા બેઝલ મેટાબોલિક રેટ (BMR) ની સચોટ ગણતરી કરવામાં મદદ કરે છે.',
			'onboarding.gender.next' => 'આગળ',
			'onboarding.height.title' => 'તમારી ઊંચાઈ કેટલી છે?',
			'onboarding.height.description' => 'તમારી ઊંચાઈ અમને તમારા BMI અને ઊર્જાની જરૂરિયાતોની સચોટ ગણતરી કરવામાં મદદ કરે છે.',
			'onboarding.height.metric' => 'મેટ્રિક',
			'onboarding.height.imperial' => 'ઇમ્પિરિયલ',
			'onboarding.height.next' => 'આગળ',
			'onboarding.weight.currentTitle' => 'તમારું વર્તમાન વજન કેટલું છે?',
			'onboarding.weight.currentDescription' => 'તમારા દૈનિક લક્ષ્યોને વ્યક્તિગત કરવા માટે તમારું વર્તમાન વજન આવશ્યક છે.',
			'onboarding.weight.targetTitle' => 'તમારું લક્ષ્ય વજન કેટલું છે?',
			'onboarding.weight.targetDescription' => 'લક્ષ્ય વજન સેટ કરવાથી અમને તમારી લાંબા ગાળાની યોજના નક્કી કરવામાં મદદ મળે છે.',
			'onboarding.weight.metric' => 'મેટ્રિક',
			'onboarding.weight.imperial' => 'ઇમ્પિરિયલ',
			'onboarding.weight.next' => 'આગળ',
			'onboarding.age.title' => 'તમારો જન્મદિવસ ક્યારે છે?',
			'onboarding.age.description' => 'તમારી ઉંમર અમને તમારી કેલરીની જરૂરિયાતોની સચોટ ગણતરી કરવામાં મદદ કરે છે.',
			'onboarding.age.next' => 'આગળ',
			'onboarding.bmiScale.underweight' => 'ઓછું',
			'onboarding.bmiScale.healthy' => 'સ્વસ્થ',
			'onboarding.bmiScale.overweight' => 'વધુ',
			'onboarding.bmiScale.obese' => 'સ્થૂળ',
			'onboarding.bmiScale.categories.underweight' => 'ઓછું વજન',
			'onboarding.bmiScale.categories.healthyWeight' => 'સ્વસ્થ વજન',
			'onboarding.bmiScale.categories.overweight' => 'વધુ વજન',
			'onboarding.bmiScale.categories.obese' => 'સ્થૂળતા',
			'onboarding.bmiScale.messages.underweight' => 'અમે તમને પોષક તત્ત્વોથી ભરપૂર ભોજન સાથે સંતુલિત વજન સુધી પહોંચવા માટે સ્વસ્થ યોજના બનાવવામાં મદદ કરી શકીએ છીએ.',
			'onboarding.bmiScale.messages.healthy' => 'ખૂબ સરસ કામ! તમે સ્વસ્થ શ્રેણીમાં છો. અમે તમને તમારી જીવંતતા અને ઊર્જા સ્તર જાળવી રાખવામાં મદદ કરીશું.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} તમારા લક્ષ્ય સુધી આરામથી પહોંચવામાં મદદ કરવા માટે AI-સંચાલિત ટ્રેકિંગ સાથે તમારી યાત્રાને સરળ બનાવશે.',
			'onboarding.bmiScale.messages.obese' => 'અમે તમારા સ્વાસ્થ્ય લક્ષ્યો માટે વ્યક્તિગત માર્ગદર્શન અને ટકાઉ વ્યૂહરચનાઓ સાથે તમને ટેકો આપવા માટે અહીં છીએ.',
			'onboarding.weightGoal.title' => 'તમારો ધ્યેય શું છે?',
			'onboarding.weightGoal.description' => 'તમે શું પ્રાપ્ત કરવા માંગો છો તેનું શ્રેષ્ઠ વર્ણન કરતો ધ્યેય પસંદ કરો',
			'onboarding.activityLevel.title' => 'તમે કેટલા સક્રિય છો?',
			'onboarding.activityLevel.description' => 'આ અમને તમારી દૈનિક કેલરીની જરૂરિયાતોની વધુ સચોટ ગણતરી કરવામાં મદદ કરે છે',
			'onboarding.healthConnect.title' => 'હેલ્થ કનેક્ટ સાથે કનેક્ટ કરો',
			'onboarding.healthConnect.description' => 'વધુ સારી આંતરદૃષ્ટિ અને સ્વચાલિત કેલરી ટ્રેકિંગ માટે તમારા સ્વાસ્થ્ય ડેટાને સિંક કરો',
			'onboarding.healthConnect.overviewDescription' => 'દૈનિક લક્ષ્યમાં બર્ન થયેલી કેલરીનો ઉપયોગ કરો અને ઇચ્છો તો નોંધાયેલ ભોજન Health Connect સાથે શેર કરો.',
			'onboarding.healthConnect.automaticTracking.title' => 'સ્વચાલિત કેલરી ટ્રેકિંગ',
			'onboarding.healthConnect.automaticTracking.description' => 'તમારી ફિટનેસ એપ્લિકેશન્સમાંથી બર્ન થયેલી કેલરી ટ્રૅક કરો',
			'onboarding.healthConnect.caloriesBurned.title' => 'બર્ન થયેલી કેલરી',
			'onboarding.healthConnect.caloriesBurned.description' => 'Health Connectમાંથી આજની કુલ બર્ન થયેલી કેલરી વાંચો',
			'onboarding.healthConnect.progressInsights.title' => 'પ્રગતિ આંતરદૃષ્ટિ',
			'onboarding.healthConnect.progressInsights.description' => 'તમારા સ્વાસ્થ્યના વલણો વિશે વિગતવાર આંતરદૃષ્ટિ મેળવો',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'નોંધાયેલ ભોજન શેર કરો',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Calorifyમાં નોંધેલું ભોજન Health Connectમાં લખો',
			'onboarding.healthConnect.seamlessIntegration.title' => 'સીમલેસ ઇન્ટિગ્રેશન',
			'onboarding.healthConnect.seamlessIntegration.description' => 'તમારી મનપસંદ સ્વાસ્થ્ય એપ્લિકેશન્સમાંથી ડેટા સિંક કરો',
			'onboarding.healthConnect.userControl.title' => 'નિયંત્રણ તમારા હાથમાં છે',
			'onboarding.healthConnect.userControl.description' => 'બેમાંથી કોઈપણ પરવાનગી પસંદ કરો અને ગમે ત્યારે ઍક્સેસ બદલો',
			'onboarding.healthConnect.connected' => 'હેલ્થ કનેક્ટ કનેક્ટેડ',
			'onboarding.healthConnect.notConnected' => 'હેલ્થ કનેક્ટ કનેક્ટેડ નથી',
			'onboarding.healthConnect.setup' => 'હેલ્થ કનેક્ટ સેટઅપ કરો',
			'onboarding.healthConnect.skipForNow' => 'હમણાં માટે છોડો',
			'onboarding.healthConnect.statusConnected' => 'હેલ્થ કનેક્ટ કનેક્ટેડ છે.',
			'onboarding.healthConnect.statusSuccess' => 'હેલ્થ કનેક્ટ સફળતાપૂર્વક કનેક્ટ થઈ ગયું છે!',
			'onboarding.healthConnect.statusNotConnected' => 'તમે ચાલુ કરવા માંગતા Health Connectનાં ફીચર પસંદ કરો.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect આંશિક રીતે જોડાયેલું છે. બંને ફીચર વાપરવા માટે બાકી પરવાનગી ચાલુ કરો.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'આગળ વધવા માટે Health Connect ઇન્સ્ટોલ અથવા અપડેટ કરો.',
			'onboarding.healthConnect.statusUnavailable' => 'આ ઉપકરણ પર Health Connect સમર્થિત નથી.',
			'onboarding.healthConnect.installOrUpdate' => 'ઇન્સ્ટોલ અથવા અપડેટ કરો',
			'onboarding.healthConnect.manageAccess' => 'ઍક્સેસ મેનેજ કરો',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'પરવાનગી નકારી. કૃપા કરીને ${appLabel} માટે તમારા ફોન સેટિંગ્સમાંથી હેલ્થ કનેક્ટ પરવાનગીઓ સક્ષમ કરો.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'હેલ્થ કનેક્ટ સેટઅપ કરવામાં ભૂલ: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'તમે એકલા નથી',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'સંશોધન દર્શાવે છે કે સુસંગત ટ્રેકિંગ લાંબા ગાળાની સફળતાનું #1 અનુમાનક છે.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age} વર્ષના ${gender} માટે જે ${goal} કરવા માંગે છે, સુસંગત ટ્રેકિંગ સફળતાનું #1 અનુમાનક છે.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} તેને મેન્યુઅલી કરવા કરતાં 10 ગણું સરળ બનાવે છે.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'શરૂ કરવા તૈયાર છો?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'ત્વરિત વિશ્લેષણ માટે તમારા ભોજનનો ફોટો લો',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'સાર્થક પ્રગતિ જોવા માટે સુસંગત રીતે લોગ કરો',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'પ્રેરિત રહેવા માટે તમારી પ્રગતિ દૈનિક ટ્રૅક કરો',
			'onboarding.reinforcement.trackingSuccess.button' => 'ચાલો જઈએ',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'વ્યક્તિ',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'સ્વસ્થ તમે',
			'onboarding.reinforcement.healthProfile.title' => 'તમારી સ્વાસ્થ્ય પ્રોફાઇલ',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'તમારા મેટ્રિક્સના આધારે, તમારો BMI ${bmi} છે.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'તમારા અનુભવને કસ્ટમાઇઝ કરવા માટે ચાલો તમારી પ્રોફાઇલને અંતિમ સ્વરૂપ આપીએ.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'મેળવો',
			'onboarding.reinforcement.healthProfile.goalLose' => 'ઘટાડો',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object diff, required Object unit, required Object direction}) => 'તમારા લક્ષ્ય સુધી પહોંચવા માટે, તમે ${diff} ${unit} ${direction} કરશો.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'તમે તમારા લક્ષ્ય વજન પર છો! અમે તમને તેને જાળવી રાખવામાં મદદ કરીશું.',
			'onboarding.reinforcement.healthProfile.button' => 'ચાલો જઈએ',
			'onboarding.reinforcement.goalLifestyle.title' => 'ઉત્તમ શરૂઆત!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'તમે ${goalText} તરફ પ્રથમ પગલું ભર્યું છે. કારણ કે તમે ${activityText} છો, ${appLabel} તમારી જીવનશૈલી સાથે મેળ ખાતા તમારા લક્ષ્યોને સમાયોજિત કરશે.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'વ્યક્તિગત કેલરી લક્ષ્યો',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-સંચાલિત ભોજન શોધ',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'વિગતવાર મેક્રો-પોષક વિભાજન',
			'onboarding.reinforcement.goalLifestyle.button' => 'ચાલો જઈએ',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'તમારા લક્ષ્યો',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'સક્રિય',
			'tabs.dashboard' => 'ડેશબોર્ડ',
			'tabs.history' => 'ઇતિહાસ',
			'home.aiSummary.title' => 'તમારો AI સારાંશ',
			'home.aiSummary.logMore' => 'તમારી વ્યક્તિગત AI આંતરદૃષ્ટિ મેળવવા માટે આગામી થોડા દિવસોમાં વધુ ભોજન લોગ કરો.',
			'home.aiSummary.loading' => 'તમારો સારાંશ લોડ થઈ રહ્યો છે...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} ભોજન લોગ થયા',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'સંતુલન સ્કોર ${score}',
			'home.aiSummary.topFoods' => 'ટોચના ખોરાક',
			'home.aiSummary.trendUp' => 'કેલરી વધી રહી છે',
			'home.aiSummary.trendDown' => 'કેલરી ઘટી રહી છે',
			'home.aiSummary.trendSteady' => 'કેલરી સ્થિર રહી છે',
			'home.aiSummary.generatedAt' => ({required Object time}) => '${time} અપડેટ થયું',
			'home.dailyGoal.title' => 'તમારો દૈનિક લક્ષ્ય સેટ કરો',
			'home.dailyGoal.titleSet' => 'તમારો દૈનિક લક્ષ્ય',
			'home.dailyGoal.description' => 'તમારી સુખાકારી યાત્રા શરૂ કરવા તૈયાર છો? તમારી પ્રગતિ શરૂ કરવા માટે નીચે તમારો દૈનિક કેલરી લક્ષ્ય સેટ કરો.',
			'home.dailyGoal.descriptionSet' => 'તમારું હોકાયંત્ર સેટ છે! આ તમારો દૈનિક કેલરી લક્ષ્ય છે જે તમને માર્ગદર્શન આપશે.',
			'home.dailyGoal.yourGoal' => 'તમારો લક્ષ્ય',
			'home.dailyGoal.goal' => 'લક્ષ્ય',
			'home.dailyGoal.dailyCalories' => 'દૈનિક કેલરી (kcal)',
			'home.dailyGoal.setGoal' => 'લક્ષ્ય સેટ કરો',
			'home.dailyGoal.intake' => 'સેવન',
			'home.dailyGoal.burned' => 'બર્ન થયું',
			'home.dailyGoal.weightImpact' => 'વજન પર અસર',
			'home.dailyGoal.estLoss' => 'અંદાજિત ઘટાડો',
			'home.dailyGoal.estGain' => 'અંદાજિત વધારો',
			'home.dailyGoal.kcal' => 'કિલોકૅલરી',
			'home.dailySummary.title' => 'દૈનિક સારાંશ',
			'home.dailySummary.calories' => 'કેલરી',
			'home.dailySummary.carbs' => 'કાર્બોહાઇડ્રેટ્સ',
			'home.dailySummary.protein' => 'પ્રોટીન',
			'home.dailySummary.fat' => 'ચરબી',
			'home.dailySummary.fiber' => 'ફાઇબર',
			'home.dailySummary.grams' => 'ગ્રામ',
			'home.dailySummary.chartAccessibilityLabel' => 'મેક્રો ચાર્ટ',
			'home.intakeProgress.title' => 'આજનું મેક્રો વિભાજન',
			'home.intakeProgress.target' => 'લક્ષ્ય',
			'home.intakeProgress.current' => 'વર્તમાન',
			'home.intakeHistory.title' => '7-દિવસનો મેક્રો ઇતિહાસ',
			'home.intakeHistory.trendTitle' => 'આજનો ટ્રેન્ડ',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'પીક: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'હજુ કોઈ ઇતિહાસ નથી',
			'home.intakeHistory.startLogging' => 'તમારા 7-દિવસના મેક્રો ટ્રેન્ડ અહીં જોવા માટે\nભોજન લોગ કરવાનું શરૂ કરો',
			'home.mealLog.title' => 'લોગ થયેલા ભોજન',
			'home.mealLog.emptyMessage' => 'અહીં લોગ કરવા માટે તમારા છેલ્લા ભોજનનો ફોટો લો.',
			'home.mealLog.noMealsToday' => 'આજે કોઈ ભોજન રેકોર્ડ થયું નથી',
			'home.mealLog.seeAllMeals' => 'બધા ભોજન જુઓ',
			'home.mealDescription.title' => 'AI સાથે ઝડપી ઉમેરો',
			'home.mealDescription.description' => 'તમારા ભોજનનું વર્ણન કરો, અને AI ને વિગતો સંભાળવા દો.',
			'home.mealDescription.hint' => 'દા.ત. નાસ્તામાં મેં એક મોટી વાટકી ઓટમીલ, એક કાપેલું કેળું અને એક સ્કૂપ વ્હે પ્રોટીન લીધું હતું...',
			'home.mealDescription.analyzeMeal' => 'ભોજનનું વિશ્લેષણ કરો',
			'home.favoriteMeals.title' => 'મનપસંદ ભોજન',
			'home.favoriteMeals.description' => 'તમારા મનપસંદ ભોજનમાંથી એક ઝડપથી ઉમેરો.',
			'home.favoriteMeals.noFavorites' => 'હજુ કોઈ મનપસંદ ભોજન નથી.',
			'home.favoriteMeals.addFavoriteHint' => 'ભોજનને મનપસંદ તરીકે ચિહ્નિત કરવા માટે તેના પરના સ્ટાર પર ક્લિક કરો.',
			'home.favoriteMeals.seeAll' => 'બધા જુઓ',
			'home.favoriteMeals.add' => 'ઉમેરો',
			'home.mealSnap.title' => 'તમારા ભોજનનો ફોટો લો અને ટ્રૅક કરો',
			'home.mealSnap.description' => 'AI વિશ્લેષણ માટે તમારા ખોરાકનો ફોટો લેવા માટે તમારા કેમેરાનો ઉપયોગ કરો.',
			'home.mealSnap.openCamera' => 'કેમેરા ખોલો',
			'home.mealSnap.gallery' => 'ગેલેરી',
			'home.mealSnap.compressingPhoto' => 'ફોટો ઑપ્ટિમાઇઝ કરી રહ્યું છે…',
			'home.mealSnap.uploadingPhoto' => 'ફોટો અપલોડ કરી રહ્યું છે…',
			'home.connectHealth.title' => 'Health Connect સાથે સમન્વય કરો',
			'home.connectHealth.description' => 'તમારા પોષણ ડેટાને Health Connect સાથે સમન્વય કરો',
			'home.connectHealth.install' => 'ઇન્સ્ટોલ કરો',
			'home.connectHealth.dataUseDescription' => 'તમારા લક્ષ્યમાં બર્ન થયેલી કેલરીનો ઉપયોગ કરો અને નોંધાયેલ ભોજન શેર કરો',
			'home.connectHealth.installOrUpdate' => 'ઇન્સ્ટોલ અથવા અપડેટ કરો',
			'home.connectHealth.connect' => 'કનેક્ટ કરો',
			'history.noMeals' => 'કોઈ ભોજન રેકોર્ડ થયું નથી',
			'history.emptyMessage' => 'અહીં લોગ કરવા માટે તમારા છેલ્લા ભોજનનો ફોટો લો.',
			'history.today' => 'આજે',
			'history.yesterday' => 'ગઈકાલે',
			'meal.ohNo' => 'અરે ના!',
			'meal.delete' => 'કાઢી નાખો',
			'meal.editMeal' => 'ભોજન સંપાદિત કરો',
			'meal.addMeal' => 'ભોજન ઉમેરો',
			'meal.saveMeal' => 'ભોજન સાચવો',
			'meal.save' => 'સાચવો',
			'meal.mealName' => 'ભોજનનું નામ',
			'meal.mealNameHint' => 'દા.ત., ટોસ્ટ સાથે સ્ક્રેમ્બલ્ડ ઇંડા',
			'meal.nameRequired' => 'સાચવતા પહેલા ભોજનનું નામ દાખલ કરો.',
			'meal.mealQuantity' => 'ભોજનની માત્રા',
			'meal.mealQuantityHint' => 'દા.ત., 1 વાટકી, 2 સ્લાઇસ',
			'meal.timeOfMeal' => 'ભોજનનો સમય',
			'meal.timeOfMealHint' => 'તમે ભોજન ક્યારે લીધું તે સમય પસંદ કરો',
			'meal.mealType' => 'ભોજનનો પ્રકાર',
			'meal.nutrition.calories' => 'કેલરી',
			'meal.nutrition.carbs' => 'કાર્બોહાઇડ્રેટ્સ (g)',
			'meal.nutrition.protein' => 'પ્રોટીન (g)',
			'meal.nutrition.fat' => 'ચરબી (g)',
			'meal.nutrition.fiber' => 'ફાઇબર (g)',
			'meal.deleteConfirmation.title' => 'ભોજન કાઢી નાખો',
			'meal.deleteConfirmation.message' => 'શું તમે ખરેખર આ ભોજન એન્ટ્રી કાઢી નાખવા માંગો છો?',
			'meal.deleteConfirmation.cancel' => 'રદ કરો',
			'meal.deleteConfirmation.delete' => 'કાઢી નાખો',
			'meal.addedToLog' => 'ભોજન તમારા લોગમાં ઉમેરાયું!',
			'meal.couldNotAdd' => ({required Object error}) => 'ભોજન ઉમેરી શકાયું નથી: ${error}',
			'meal.savedSuccessfully' => 'ભોજન સફળતાપૂર્વક ઉમેરાયું!',
			'meal.updatedSuccessfully' => 'ભોજન સફળતાપૂર્વક અપડેટ થયું!',
			'meal.errorSaving' => ({required Object error}) => 'ભોજન સાચવવામાં ભૂલ: ${error}',
			'meal.removedFromFavorites' => 'મનપસંદમાંથી દૂર કર્યું!',
			'meal.savedAsFavorite' => 'ભોજન મનપસંદ તરીકે સાચવ્યું!',
			'meal.unfavorite' => 'મનપસંદમાંથી દૂર કરો',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'મનપસંદ અપડેટ કરી શકાયું નથી: ${error}',
			'meal.feedbackThanks' => 'પ્રતિસાદ બદલ આભાર!',
			'meal.reanalysisUpdated' => 'તમારા પ્રતિસાદના આધારે ભોજન વિશ્લેષણ અપડેટ થયું.',
			'meal.failedToProcess' => ({required Object error}) => 'પ્રક્રિયા કરવામાં નિષ્ફળ: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'છબી પર પ્રક્રિયા કરવામાં નિષ્ફળ: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'છબી સંકુચિત કરવામાં ભૂલ: ${error}',
			'meal.failedToSave' => 'ડેટા સાચવવામાં નિષ્ફળ. કૃપા કરીને ફરી પ્રયાસ કરો.',
			'meal.skip' => 'છોડો',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'પ્રશ્ન ${current} માંથી ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'કોઈ પ્રશ્નો ઉપલબ્ધ નથી',
			'meal.questionFlow.next' => 'આગળ',
			'meal.questionFlow.continueLabel' => 'ચાલુ રાખો',
			'meal.questionFlow.countQuestion' => 'જથ્થો પસંદ કરો',
			'meal.questionFlow.itemSizeQuestion' => 'આઇટમનું કદ પસંદ કરો',
			'meal.questionFlow.portionSizeQuestion' => 'ભાગનું કદ પસંદ કરો',
			'meal.questionFlow.option6plus' => '6 કે તેથી વધુ',
			'meal.questionFlow.optionSmall' => 'નાનું',
			'meal.questionFlow.optionRegular' => 'સામાન્ય',
			'meal.questionFlow.optionLarge' => 'મોટું',
			'meal.questionFlow.optionThin' => 'પાતળું',
			'meal.questionFlow.optionThick' => 'જાડું',
			'meal.questionFlow.optionMini' => 'નાનું',
			'meal.questionFlow.optionStuffed' => 'ભરેલું',
			'meal.questionFlow.optionHeavy' => 'ભારે',
			'meal.questionFlow.optionSmaller' => 'નાનું',
			'meal.questionFlow.optionTypical' => 'સામાન્ય',
			'meal.questionFlow.optionLarger' => 'મોટું',
			'meal.analysis.title' => 'તમારા ભોજનનું વિશ્લેષણ કરી રહ્યા છીએ',
			'meal.analysis.stepStarted' => 'શરૂઆત કરી રહ્યા છીએ…',
			'meal.analysis.stepDecomposition' => 'તમારા ભોજનને સમજી રહ્યા છીએ…',
			'meal.analysis.stepIngredients' => 'ઘટકોને પોષણ ડેટા સાથે મેચ કરી રહ્યા છીએ…',
			'meal.analysis.stepUncertainty' => 'વિશ્વાસ તપાસી રહ્યા છીએ…',
			'meal.analysis.stepMealTypeQuestion' => 'લગભગ થઈ ગયું…',
			'meal.analysis.stepResult' => 'તમારા પરિણામને અંતિમ સ્વરૂપ આપી રહ્યા છીએ…',
			'meal.analysis.stepError' => 'કંઈક ખોટું થયું',
			'meal.analysis.noFoodTip' => 'કોઈ ખોરાક મળ્યો નથી. બીજો ફોટો અથવા વર્ણન અજમાવો.',
			'meal.analysis.stepDefault' => 'તમારા ભોજનનું વિશ્લેષણ કરી રહ્યા છીએ…',
			'meal.analysis.progressUnderstand' => 'તમારા ભોજનને સમજવું',
			'meal.analysis.progressMatch' => 'ઘટક પોષણ શોધી રહ્યા છીએ',
			'meal.analysis.progressCheck' => 'ભાગો અને વિશ્વાસ તપાસી રહ્યા છીએ',
			'meal.analysis.progressMealType' => 'ભોજનનો પ્રકાર પસંદ કરી રહ્યા છીએ',
			'meal.analysis.progressFinish' => 'કેલરી અને મેક્રોની ગણતરી કરી રહ્યા છીએ',
			'meal.analysis.detectedIngredientHeading' => 'અમે જે ઘટકો શોધી રહ્યા છીએ',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => 'વધુ ${count}',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ઘટકો મળ્યા',
			'meal.analysis.ingredientsPending' => 'ઘટકો સ્કેન કરી રહ્યા છીએ…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '“${text}”',
			'meal.analysis.offlineTip0' => 'ટીપ: સુસંગતતા સંપૂર્ણતા કરતાં વધુ સારી છે—નિયમિત લોગ મહત્વપૂર્ણ પેટર્ન દર્શાવે છે.',
			'meal.analysis.offlineTip1' => 'ટીપ: ફોટા માટે, કુદરતી પ્રકાશ અને ટોપ-ડાઉન દૃશ્ય ભાગની ચોકસાઈમાં મદદ કરે છે.',
			'meal.analysis.offlineTip2' => 'ટીપ: પીણાં, ચટણીઓ અને રસોઈ તેલનો ઉલ્લેખ કરો—તેઓ એવી કેલરી ઉમેરે છે જે લોકો ઘણીવાર ભૂલી જાય છે.',
			'meal.analysis.offlineTip3' => 'ટીપ: એક ઝડપી ભાગ નોંધ (1 વાટકી, મોટી કોફી) અંદાજોને વધુ તીવ્ર બનાવે છે.',
			'meal.analysis.offlineTip4' => 'ટીપ: ભોજન પછી લોગિંગ હજુ પણ આદત બનાવે છે; સંપૂર્ણતા વૈકલ્પિક છે.',
			'meal.analysis.offlineTip5' => 'ટીપ: જ્યારે કેલરીમાં ઘણો ફેરફાર થાય ત્યારે ખોરાક કેવી રીતે રાંધવામાં આવ્યો તે કહો (તળેલું વિરુદ્ધ શેકેલું).',
			'meal.localInference.reviewTitle' => 'શોધાયેલ ઘટકોની સમીક્ષા કરો',
			'meal.localInference.reviewSubtitle' => 'આ તમારા ઉપકરણ પર સમજવામાં આવ્યું છે. પોષણની ગણતરી કરતા પહેલા નામ અથવા ભાગો સુધારો.',
			'meal.localInference.mealName' => 'જમવાનું નામ',
			'meal.localInference.ingredient' => 'ઘટક',
			'meal.localInference.grams' => 'અંદાજિત ગ્રામ',
			'meal.localInference.removeIngredient' => 'ઘટક દૂર કરો',
			'meal.localInference.continueLabel' => 'આગળ વધો',
			'meal.localInference.invalidProposal' => 'ઓછામાં ઓછો એક ઘટક ઉમેરો અને ગ્રામની સકારાત્મક રકમનો ઉપયોગ કરો.',
			'meal.localInference.localUnavailable' => 'ઓન-ડિવાઇસ વિશ્લેષણ અત્યારે ઉપલબ્ધ નથી.',
			'meal.feedback.title' => 'શું ખોટું લાગે છે?',
			'meal.feedback.subtitle' => 'એક અથવા વધુ સમસ્યાઓ પસંદ કરીને વિશ્લેષણને સુધારવામાં અમારી સહાય કરો.',
			'meal.feedback.tellUsMore' => 'વધુ કહો',
			'meal.feedback.describeIncorrect' => 'શું ખોટું હતું તેનું વર્ણન કરો',
			'meal.feedback.submit' => 'સબમિટ કરો',
			'meal.feedback.issueFoodIdentification' => 'ખોરાકની ઓળખ',
			'meal.feedback.issuePortionSize' => 'ભાગનું કદ',
			'meal.feedback.issueCalorieDistribution' => 'કેલરી વિતરણ',
			'meal.feedback.issueMacrosWrong' => 'મેક્રો ખોટા છે',
			'meal.feedback.issueMissingItems' => 'ગુમ થયેલ વસ્તુઓ',
			'meal.feedback.issueExtraItems' => 'વધારાની વસ્તુઓ',
			'meal.feedback.issueOther' => 'અન્ય',
			'favorites.title' => 'મનપસંદ',
			'favorites.empty' => 'હજુ સુધી કોઈ મનપસંદ ભોજન નથી.',
			'favorites.searchPlaceholder' => 'મનપસંદ ભોજન શોધો',
			'favorites.searchEmptyTitle' => 'તમારી શોધ સાથે કોઈ મનપસંદ મેળ ખાતા નથી',
			'favorites.searchEmptySubtitle' => 'અલગ ભોજનનું નામ, જથ્થો અથવા ભોજનનો પ્રકાર અજમાવો.',
			'favorites.sortLabel' => 'મનપસંદને સૉર્ટ કરો',
			'favorites.undo' => 'પૂર્વવત્ કરો',
			'favorites.removed' => ({required Object name}) => '${name} ને મનપસંદમાંથી દૂર કર્યું',
			'favorites.sortOptions.recent' => 'તાજેતરના',
			'favorites.sortOptions.calories' => 'કેલરી',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'પ્રોફાઇલ',
			'profile.noProfileData' => 'કોઈ પ્રોફાઇલ ડેટા મળ્યો નથી',
			'profile.yourProfile' => 'તમારી પ્રોફાઇલ',
			'profile.viewAndManage' => 'તમારી આરોગ્ય માહિતી જુઓ અને મેનેજ કરો',
			'profile.sections.profile' => 'પ્રોફાઇલ',
			'profile.sections.basicInformation' => 'મૂળભૂત માહિતી',
			'profile.sections.goalsAndActivity' => 'લક્ષ્યો અને પ્રવૃત્તિ',
			'profile.sections.calculatedValues' => 'ગણતરી કરેલ મૂલ્યો',
			'profile.gender' => 'લિંગ',
			'profile.height' => 'ઊંચાઈ',
			'profile.weight' => 'વજન',
			'profile.age' => 'ઉંમર',
			'profile.weightGoal' => 'વજનનું લક્ષ્ય',
			'profile.targetWeight' => 'લક્ષ્ય વજન',
			'profile.activityLevel' => 'પ્રવૃત્તિ સ્તર',
			'profile.healthMetrics' => 'આરોગ્ય મેટ્રિક્સ',
			'profile.notSet' => 'સેટ નથી',
			'profile.years' => 'વર્ષ',
			'profile.updatedSuccessfully' => 'પ્રોફાઇલ સફળતાપૂર્વક અપડેટ થઈ!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'દૈનિક લક્ષ્ય',
			'profile.calculatedValues.calPerDay' => 'કેલરી/દિવસ',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'આરોગ્ય સ્કોર',
			'healthScore.whyThisScore' => 'આ સ્કોર શા માટે?',
			'healthScore.note' => 'આ સ્કોર ઓળખાયેલા ઘટકો અને પોષક ઘનતાના આધારે AI અંદાજ છે. આહાર સલાહ માટે હંમેશા કોઈ વ્યાવસાયિકની સલાહ લો.',
			'healthScore.unhealthy' => 'બિનઆરોગ્યપ્રદ',
			'healthScore.healthy' => 'આરોગ્યપ્રદ',
			'healthScore.neutral' => 'તટસ્થ',
			'editProfile.title' => 'પ્રોફાઇલ સંપાદિત કરો',
			'editProfile.sections.personalInformation' => 'વ્યક્તિગત માહિતી',
			'editProfile.sections.physicalMeasurements' => 'શારીરિક માપ',
			'editProfile.sections.goalsAndActivity' => 'લક્ષ્યો અને પ્રવૃત્તિ',
			'editProfile.gender' => 'લિંગ',
			'editProfile.dateOfBirth' => 'જન્મ તારીખ',
			'editProfile.height' => 'ઊંચાઈ',
			'editProfile.weight' => 'વજન',
			'editProfile.weightGoal' => 'વજનનું લક્ષ્ય',
			'editProfile.activityLevel' => 'પ્રવૃત્તિ સ્તર',
			'editProfile.metric' => 'મેટ્રિક',
			'editProfile.imperial' => 'ઇમ્પિરિયલ',
			'editProfile.unitCm' => 'સેમી',
			'editProfile.unitFt' => 'ફૂટ',
			'editProfile.unitKg' => 'કિલો',
			'editProfile.unitLbs' => 'પાઉન્ડ',
			'editProfile.metricCm' => 'મેટ્રિક (સેમી)',
			'editProfile.imperialFtIn' => 'ઈમ્પિરિયલ (ફૂટ/ઈંચ)',
			'editProfile.metricKg' => 'મેટ્રિક (કિલો)',
			'editProfile.imperialLbs' => 'ઈમ્પિરિયલ (lbs)',
			'editProfile.genders.male' => 'પુરુષ',
			'editProfile.genders.female' => 'સ્ત્રી',
			'editProfile.genders.other' => 'અન્ય',
			'editProfile.weightGoals.loseWeight.name' => 'વજન ઘટાડવું',
			'editProfile.weightGoals.loseWeight.description' => 'વજન ઘટાડવા માટે કેલરીની ઉણપ બનાવો',
			'editProfile.weightGoals.maintainWeight.name' => 'વજન જાળવી રાખવું',
			'editProfile.weightGoals.maintainWeight.description' => 'તમારું વર્તમાન વજન જાળવી રાખો',
			'editProfile.weightGoals.gainWeight.name' => 'વજન વધારવું',
			'editProfile.weightGoals.gainWeight.description' => 'વજન વધારવા માટે કેલરીનો વધારો બનાવો',
			'editProfile.activityLevels.sedentary.name' => 'નિષ્ક્રિય',
			'editProfile.activityLevels.sedentary.description' => 'ઓછી અથવા કોઈ કસરત નહીં',
			'editProfile.activityLevels.lightlyActive.name' => 'હળવી સક્રિય',
			'editProfile.activityLevels.lightlyActive.description' => 'અઠવાડિયામાં 1-3 દિવસ હળવી કસરત',
			'editProfile.activityLevels.moderatelyActive.name' => 'મધ્યમ સક્રિય',
			'editProfile.activityLevels.moderatelyActive.description' => 'અઠવાડિયામાં 3-5 દિવસ મધ્યમ કસરત',
			'editProfile.activityLevels.veryActive.name' => 'ખૂબ સક્રિય',
			'editProfile.activityLevels.veryActive.description' => 'અઠવાડિયામાં 6-7 દિવસ સખત કસરત',
			'editProfile.activityLevels.extremelyActive.name' => 'અત્યંત સક્રિય',
			'editProfile.activityLevels.extremelyActive.description' => 'ખૂબ સખત કસરત, શારીરિક નોકરી',
			'settings.title' => 'સેટિંગ્સ',
			'settings.sections.profile' => 'પ્રોફાઇલ',
			'settings.sections.localization' => 'સ્થાનિકીકરણ',
			'settings.sections.notifications' => 'સૂચનાઓ',
			'settings.sections.healthConnect' => 'હેલ્થ કનેક્ટ',
			'settings.sections.localInference' => 'ઓન-ડિવાઇસ વિશ્લેષણ',
			'settings.sections.supportAndLegal' => 'સપોર્ટ અને કાનૂની',
			'settings.sections.about' => 'વિશે',
			'settings.sections.dangerZone' => 'ડેન્જર ઝોન',
			'settings.sections.developer' => 'ડેવલપર',
			'settings.editProfile.title' => 'પ્રોફાઇલ સંપાદિત કરો',
			'settings.editProfile.subtitle' => 'તમારી વ્યક્તિગત માહિતી અપડેટ કરો',
			'settings.language.title' => 'ભાષા',
			'settings.language.subtitle' => 'તમારી પસંદગીની ભાષા પસંદ કરો',
			'settings.language.searchHint' => 'ભાષાઓ શોધો...',
			'settings.language.noResults' => 'કોઈ પરિણામ મળ્યું નથી',
			'settings.heightUnit.title' => 'ઊંચાઈનો એકમ',
			'settings.weightUnit.title' => 'વજનનો એકમ',
			'settings.mealReminders.title' => 'ભોજન રીમાઇન્ડર્સ',
			'settings.mealReminders.subtitle' => 'સમયસર ચેતવણીઓ સાથે ટ્રેક પર રહો',
			'settings.localInference.title' => 'ઓન-ડિવાઇસ મીલ એનાલિસિસ',
			'settings.localInference.subtitle' => 'પોષણની ગણતરી કરતા પહેલા Gemini Nano સાથે સમર્થિત ભોજનનું અર્થઘટન કરો',
			'settings.localInference.unavailable' => 'આ ઉપકરણ પર ઉપલબ્ધ નથી',
			'settings.localInference.rolloutUnavailable' => 'સમર્થિત હાર્ડવેર મળ્યું છે, પરંતુ આ સુવિધા આ એપ રિલીઝ માટે સક્ષમ નથી',
			'settings.localInference.modelSetup' => 'આને સક્ષમ કરતા પહેલા Gemini Nano ડાઉનલોડ પૂર્ણ કરવું જરૂરી છે',
			'settings.localInference.useLocalTitle' => 'ઓન-ડિવાઇસ વિશ્લેષણનો ઉપયોગ કરો',
			'settings.localInference.useLocalSubtitle' => 'વૈકલ્પિક અને ડિફોલ્ટ રીતે બંધ. જટિલ ભોજન માટે પરિણામો ઓછા વિશ્વસનીય હોઈ શકે છે.',
			'settings.localInference.disclosureTitle' => 'ઓન-ડિવાઇસ વિશ્લેષણને સક્ષમ કરતા પહેલા',
			'settings.localInference.disclosureBody' => 'Gemini Nano સમર્થિત Android ઉપકરણો પર ઘટકોને ઓળખી શકે છે અને ભાગોનો અંદાજ લગાવી શકે છે. તમારી સમીક્ષા કરેલી ઘટક દરખાસ્ત USDA પોષણ ગ્રાઉન્ડિંગ અને ગણતરી માટે Calorify ને મોકલવામાં આવે છે.',
			'settings.localInference.disclosureLimit1' => 'જટિલ વાનગીઓ, છુપાયેલા ઘટકો અને ભાગના કદ ખોટી રીતે ઓળખાઈ શકે છે.',
			'settings.localInference.disclosureLimit2' => 'ડાઉનલોડ કરતી વખતે, વ્યસ્ત હોય ત્યારે, બેકગ્રાઉન્ડમાં અથવા ઉપકરણ દ્વારા મર્યાદિત હોય ત્યારે મોડેલ અનુપલબ્ધ હોઈ શકે છે.',
			'settings.localInference.disclosureLimit3' => 'જો સ્થાનિક અર્થઘટન પૂર્ણ ન થઈ શકે, તો આ બીટા આપમેળે તમારા મૂળ ભોજનના વર્ણનને ક્લાઉડ વિશ્લેષણ માટે Calorify ને મોકલે છે.',
			'settings.localInference.acknowledgement' => 'હું સમજું છું કે મારે શોધાયેલા ઘટકો અને ભાગોની સમીક્ષા કરવી જોઈએ.',
			'settings.localInference.enable' => 'સ્વીકારો અને સક્ષમ કરો',
			'settings.localInference.cancel' => 'રદ કરો',
			'settings.theme.title' => 'થીમ',
			'settings.theme.light' => 'લાઇટ',
			'settings.theme.dark' => 'ડાર્ક',
			'settings.theme.system' => 'સિસ્ટમ',
			'settings.sendFeedback.title' => 'પ્રતિસાદ મોકલો',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} સુધારવામાં અમારી સહાય કરો',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} એપ્લિકેશન પ્રતિસાદ',
			'settings.sendFeedback.emailBodyPrefix' => 'કૃપા કરીને નીચે તમારો પ્રતિસાદ આપો:',
			'settings.sendFeedback.appVersion' => 'એપ્લિકેશન સંસ્કરણ',
			'settings.sendFeedback.device' => 'ઉપકરણ',
			'settings.sendFeedback.osVersion' => 'OS સંસ્કરણ',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'ભોજન ઇતિહાસ નિકાસ કરો',
			'settings.exportMealHistory.subtitle' => 'તમારા લોગ કરેલા ભોજનનો CSV શેર કરો',
			'settings.exportMealHistory.shareText' => 'તમારો Calorify ભોજન ઇતિહાસ નિકાસ',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'ભોજન ઇતિહાસ નિકાસ કરી શકાયો નથી: ${error}',
			'settings.clearAllData.title' => 'બધો ડેટા સાફ કરો',
			'settings.clearAllData.subtitle' => 'તમારી બધી માહિતી કાયમ માટે કાઢી નાખો',
			'settings.clearAllData.localOnlySubtitle' => 'આ ઉપકરણમાં સંગ્રહિત Calorify ડેટા કાઢી નાખો',
			'settings.clearAllData.confirmationTitle' => 'બધો ડેટા સાફ કરવો?',
			'settings.clearAllData.confirmationMessage' => 'આ ક્રિયા પૂર્વવત્ કરી શકાતી નથી. તમારા બધા લોગ કરેલા ભોજન, મનપસંદ અને પ્રોફાઇલ સેટિંગ્સ કાયમ માટે કાઢી નાખવામાં આવશે.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'આ ઉપકરણમાંથી નોંધાયેલ ભોજન, મનપસંદ વસ્તુઓ અને પ્રોફાઇલ સેટિંગ્સ કાયમ માટે કાઢી નાખવામાં આવશે. Health Connect સાથે અગાઉ શેર કરેલું ભોજન અને Health Connect ઍક્સેસ સેટિંગ્સ > Health Connectમાં અલગથી મેનેજ થાય છે.',
			'settings.clearAllData.cancel' => 'રદ કરો',
			'settings.clearAllData.clearEverything' => 'બધું સાફ કરો',
			'settings.debugOptions.title' => 'ડીબગ વિકલ્પો',
			'settings.developerModeEnabled' => 'ડેવલપર મોડ સક્ષમ!',
			'settings.healthConnect.title' => 'હેલ્થ કનેક્ટ',
			'settings.healthConnect.subtitle' => 'પરવાનગીઓ જુઓ અને મેનેજ કરો',
			'settings.healthConnect.unavailable.title' => 'હેલ્થ કનેક્ટ અનુપલબ્ધ',
			'settings.healthConnect.unavailable.description' => 'આ ઉપકરણ પર હેલ્થ કનેક્ટ ઉપલબ્ધ નથી. કૃપા કરીને Play Store (Android 9+) પરથી હેલ્થ કનેક્ટ ઇન્સ્ટોલ કરો અથવા Android 14+ પર અપડેટ કરો.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'આ ઉપકરણ પર Health Connect સમર્થિત નથી.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect પર ધ્યાન આપવું જરૂરી છે',
			'settings.healthConnect.updateRequired.description' => 'ઍક્સેસ મેનેજ કરતાં પહેલાં Health Connect ઇન્સ્ટોલ અથવા અપડેટ કરો.',
			'settings.healthConnect.updateRequired.action' => 'ઇન્સ્ટોલ અથવા અપડેટ કરો',
			'settings.healthConnect.permissions.title' => 'પરવાનગીઓ',
			'settings.healthConnect.permissions.description' => 'હેલ્થ કનેક્ટ એકીકરણ પ્રદાન કરવા માટે નીચેની પરવાનગીઓની વિનંતી કરવામાં આવે છે:',
			'settings.healthConnect.permissions.granted' => 'મંજૂર',
			'settings.healthConnect.permissions.notGranted' => 'મંજૂર નથી',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'કુલ બળી ગયેલી કેલરી વાંચો',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'એપ્લિકેશનને હેલ્થ કનેક્ટમાંથી તમારી કુલ બળી ગયેલી કેલરી વાંચવાની મંજૂરી આપે છે.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'આ પરવાનગીનો ઉપયોગ એપ્લિકેશનમાં તમારી દૈનિક કેલરી બર્ન દર્શાવવા માટે થાય છે, જે તમને દિવસભર તમારા કુલ ઊર્જા ખર્ચને સમજવામાં મદદ કરે છે.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'પોષણ ડેટા વાંચો',
			'settings.healthConnect.permissions.nutritionRead.description' => 'એપ્લિકેશનને હેલ્થ કનેક્ટમાંથી પોષણ ડેટા વાંચવાની મંજૂરી આપે છે.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'આ પરવાનગી એપ્લિકેશનને પોષણ માહિતી વાંચવાની મંજૂરી આપે છે જે હેલ્થ કનેક્ટ સાથે જોડાયેલ અન્ય એપ્લિકેશનો દ્વારા લોગ કરવામાં આવી હોય, જે તમારા પોષણનો વ્યાપક દૃશ્ય પ્રદાન કરે છે.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'પોષણ ડેટા લખો',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'એપ્લિકેશનને હેલ્થ કનેક્ટમાં પોષણ ડેટા લખવાની મંજૂરી આપે છે.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'આ પરવાનગી એપ્લિકેશનને તમારા લોગ કરેલા ભોજનને હેલ્થ કનેક્ટમાં સિંક કરવાની મંજૂરી આપે છે, જે તમારા પોષણ ડેટાને તમે ઉપયોગ કરો છો તે અન્ય આરોગ્ય અને ફિટનેસ એપ્લિકેશનો માટે ઉપલબ્ધ બનાવે છે.',
			'settings.healthConnect.managePermissions' => 'પરવાનગીઓ મેનેજ કરો',
			'settings.healthConnect.openSettings' => 'હેલ્થ કનેક્ટ સેટિંગ્સ ખોલો',
			'settings.healthConnect.disconnect' => 'Health Connectનું જોડાણ તોડો',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Health Connectનું જોડાણ તોડવું છે?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify હવે Health Connectને ઍક્સેસ કરી શકશે નહીં. ત્યાં અગાઉ લખાયેલો ડેટા કાઢી નાખવામાં આવશે નહીં.',
			'settings.healthConnect.disconnectConfirmationAction' => 'જોડાણ તોડો',
			'settings.healthConnect.deleteSyncedMeals' => 'Health Connectમાંથી Calorifyનું ભોજન કાઢી નાખો',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'સિંક કરેલું ભોજન કાઢી નાખવું છે?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Calorifyના આ સંસ્કરણથી Health Connectમાં સિંક કરેલું ભોજન કાઢી નાખવું છે? તમારો સ્થાનિક ભોજન લોગ બદલાશે નહીં. Calorifyની જૂની એન્ટ્રીઓ Health Connectમાં ડેટા મેનેજ કરો વિકલ્પથી અલગથી કાઢવી પડી શકે છે.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'સિંક કરેલું ભોજન કાઢી નાખો',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Health Connectમાંથી Calorifyનું ભોજન કાઢી નાખવામાં આવ્યું.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'સિંક કરેલું ભોજન કાઢી શકાયું નહીં. ફરી પ્રયાસ કરો.',
			'settings.healthConnect.connectionPartial' => 'Health Connectનાં કેટલાક ફીચર ચાલુ છે.',
			'settings.healthConnect.connectionComplete' => 'Health Connectનાં બંને ફીચર ચાલુ છે.',
			'settings.healthConnect.actionFailed' => 'Health Connect ખોલી શકાયું નહીં. ફરી પ્રયાસ કરો.',
			'settings.healthConnect.requestPermissions' => 'પરવાનગીઓની વિનંતી કરો',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'પરવાનગી વિનંતી રદ કરવામાં આવી અથવા નિષ્ફળ ગઈ. કૃપા કરીને ફરી પ્રયાસ કરો અથવા હેલ્થ કનેક્ટ સેટિંગ્સમાં મેન્યુઅલી પરવાનગીઓ આપો.',
			'settings.healthConnect.permissionRequestFailed' => 'પરવાનગીઓની વિનંતી કરવામાં અસમર્થ. કૃપા કરીને ફરી પ્રયાસ કરો અથવા હેલ્થ કનેક્ટ સેટિંગ્સમાં મેન્યુઅલી પરવાનગીઓ આપો.',
			'settings.healthConnect.requestingPermissions' => 'વિનંતી કરી રહ્યું છે...',
			'settings.about.title' => 'વિશે',
			'settings.about.tagline' => 'ઝડપી, મફત અને ગોપનીયતા-પ્રથમ કેલરી જાગૃતિ',
			'settings.about.ourStory.title' => 'અમારી વાર્તા',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} એક સરળ હતાશામાંથી જન્મ્યું હતું: મોટાભાગની કેલરી ટ્રેકિંગ એપ્લિકેશનો કાં તો વધુ પડતી જટિલ હોય છે, સતત મેન્યુઅલ ઇનપુટની માંગ કરે છે, ઊંચી સબ્સ્ક્રિપ્શન ફી લે છે અથવા ગોપનીયતા સાથે સમાધાન કરે છે.\n\nએક સોલો ડેવલપર તરીકે, હું કંઈક સરળ અને વધુ ન્યાયી બનાવવા માંગતો હતો — એક એવી એપ્લિકેશન જે પ્રયત્નો ઘટાડવા માટે AI નો ઉપયોગ કરે, ઝડપી અને મફત રહે, અને તમારા સ્વાસ્થ્ય ડેટાને આદર સાથે વર્તે.\n\n${appLabel} એ એવી એપ્લિકેશન છે જે હું ઈચ્છતો હતો કે અસ્તિત્વમાં હોય: કોઈ એકાઉન્ટ્સ નહીં, કોઈ ટ્રેકિંગ નહીં, કોઈ જાહેરાતો નહીં — ફક્ત સ્પષ્ટ, વ્યવહારુ આંતરદૃષ્ટિ અને તમારા સ્વાસ્થ્ય લક્ષ્યો.',
			'settings.about.privacy.title' => 'તમારી ગોપનીયતા મહત્વપૂર્ણ છે',
			'settings.about.privacy.description' => 'ગોપનીયતા એ પછીનો વિચાર નથી — તે એક ડિઝાઇન સિદ્ધાંત છે. વ્યવહારમાં તેનો અર્થ અહીં છે:',
			'settings.about.privacy.noAccounts' => 'કોઈ એકાઉન્ટ્સની જરૂર નથી\nએપ્લિકેશનનો તરત જ ઉપયોગ કરો. કોઈ સાઇન-અપ નહીં, કોઈ ઓળખ નહીં.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'કોઈ વર્તણૂકીય ટ્રેકિંગ નહીં\n${appLabel} તમારી પ્રવૃત્તિનું નિરીક્ષણ કરતું નથી, ઉપયોગ પ્રોફાઇલ્સ બનાવતું નથી અથવા તમને એપ્લિકેશન્સ અથવા વેબસાઇટ્સ પર ટ્રૅક કરતું નથી.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'મર્યાદિત વિશ્લેષણ અને નિદાન\nવિશ્વસનીયતા સુધારવા માટે ${appLabel} એપ્લિકેશનની મૂળભૂત ઘટનાઓ અને ક્રેશ નિદાનનો ઉપયોગ કરે છે. આરોગ્ય રેકોર્ડનાં મૂલ્યોનો જાહેરાત માટે ઉપયોગ થતો નથી કે તે વેચાતા નથી.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'ડિઝાઇન દ્વારા જાહેરાત-મુક્ત\n${appLabel} જાહેરાતો અથવા ડેટા-આધારિત મુદ્રીકરણ વિના કાર્ય કરવા માટે બનાવવામાં આવ્યું છે.',
			'settings.about.privacy.noDataSelling' => 'કોઈ ડેટા વેચાણ નહીં\nતમારો સ્વાસ્થ્ય ડેટા ક્યારેય વેચવામાં આવતો નથી અથવા તૃતીય પક્ષો સાથે શેર કરવામાં આવતો નથી.',
			'settings.about.privacy.localStorage' => 'સ્થાનિક-પ્રથમ સ્ટોરેજ\nતમારો ડેટા તમારા ઉપકરણ પર રહે છે.',
			'settings.about.privacy.privacyPolicy' => 'ગોપનીયતા નીતિ',
			'settings.about.developer.title' => 'એકલા ડેવલપર દ્વારા નિર્મિત',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} એક જ સોલો ડેવલપર દ્વારા બનાવવામાં અને જાળવવામાં આવે છે જે શાંત, ગોપનીયતા-સન્માનિત આરોગ્ય સોફ્ટવેર બનાવવા પર ધ્યાન કેન્દ્રિત કરે છે.\n\nપ્રતિસાદ વ્યક્તિગત રીતે વાંચવામાં આવે છે અને એપ્લિકેશનની દિશાને આકાર આપવામાં મદદ કરે છે.',
			'settings.about.developer.website' => 'વેબસાઇટ',
			'settings.about.developer.email' => 'ઇમેઇલ',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} નો આનંદ માણી રહ્યા છો?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'તમારો પ્રતિસાદ ${appLabel} ને દરેક માટે વધુ સારું બનાવવામાં મદદ કરે છે.',
			'settings.about.feedback.rateApp' => 'Play Store પર રેટ કરો',
			'settings.about.feedback.sendFeedback' => 'પ્રતિસાદ મોકલો',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify વર્ઝન ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'બિલ્ડ ${buildNumber}',
			'reminders.title' => 'રીમાઇન્ડર્સ સાથે ટ્રેક પર રહો',
			'reminders.description' => 'તમારા ભોજનને લોગ કરવા અને તમારા પોષણ લક્ષ્યો સાથે સુસંગત રહેવા માટે સૌમ્ય રીમાઇન્ડર્સ મેળવો',
			'reminders.notificationsEnabled' => 'સૂચનાઓ સક્ષમ છે',
			'reminders.notificationsDisabled' => 'સૂચનાઓ અક્ષમ છે',
			'reminders.enabledSubtitle' => 'તમને ભોજન રીમાઇન્ડર્સ પ્રાપ્ત થશે',
			'reminders.disabledSubtitle' => 'ભોજન રીમાઇન્ડર્સ મેળવવા માટે સૂચનાઓ સક્ષમ કરો',
			'reminders.mealReminders' => 'ભોજન રીમાઇન્ડર્સ',
			'reminders.breakfast' => 'નાસ્તો',
			'reminders.lunch' => 'બપોરનું ભોજન',
			'reminders.dinner' => 'રાતનું ભોજન',
			'reminders.snack' => 'નાસ્તો',
			'reminders.unknown' => 'અજાણ્યું',
			'reminders.change' => 'બદલો',
			'reminders.enableNotifications' => 'સૂચનાઓ સક્ષમ કરો',
			'reminders.skipForNow' => 'હમણાં માટે છોડી દો',
			'reminders.saveChanges' => 'ફેરફારો સાચવો',
			'reminders.enabledSuccessfully' => 'સૂચનાઓ સફળતાપૂર્વક સક્ષમ થઈ!',
			'reminders.permissionDenied' => 'સૂચના પરવાનગી નકારી',
			'reminders.errorEnabling' => ({required Object error}) => 'સૂચનાઓ સક્ષમ કરવામાં ભૂલ: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'સેટઅપ પૂર્ણ કરવામાં ભૂલ: ${error}',
			'notifications.breakfast.title' => 'નાસ્તાનો સમય! 🍳',
			'notifications.breakfast.body' => 'તમારો નાસ્તો લોગ કરવાનું ભૂલશો નહીં',
			'notifications.lunch.title' => 'બપોરના ભોજનનો સમય! 🥗',
			_ => null,
		} ?? switch (path) {
			'notifications.lunch.body' => 'તમારું બપોરનું ભોજન લોગ કરવાનો સમય',
			'notifications.dinner.title' => 'રાત્રિભોજનનો સમય! 🍽️',
			'notifications.dinner.body' => 'તમારું રાત્રિભોજન લોગ કરવાનું ભૂલશો નહીં',
			'notifications.snack.title' => 'નાસ્તાનો સમય! 🍎',
			'notifications.snack.body' => 'સ્વસ્થ નાસ્તાનો સમય',
			'notifications.test.title' => 'પરીક્ષણ સૂચના',
			'login.title' => 'લોગિન',
			'login.signInWithGoogle' => 'Google વડે સાઇન ઇન કરો',
			'login.signInFailed' => 'Google સાઇન-ઇન નિષ્ફળ ગયું અથવા રદ કરવામાં આવ્યું.',
			'disclaimer.pleaseNote' => 'કૃપા કરીને નોંધ લો',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} અંદાજિત પોષણ માહિતી પ્રદાન કરે છે. ચોકસાઈ તમારા ઇનપુટ અને ખોરાકની વિવિધતાઓ પર આધારિત છે. માર્ગદર્શિકા તરીકે ઉપયોગ કરો, ચોક્કસ સ્ત્રોત તરીકે નહીં. વ્યક્તિગત આહાર સલાહ માટે વ્યાવસાયિકની સલાહ લો.',
			'disclaimer.snap.portionSize.title' => 'ભાગનું કદ',
			'disclaimer.snap.portionSize.description' => 'અંદાજોની ચોકસાઈ તમારા ભાગના કદના સાચા મૂલ્યાંકન પર ખૂબ આધાર રાખે છે.',
			'disclaimer.snap.preparationMethods.title' => 'તૈયારી પદ્ધતિઓ',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'રસોઈ પદ્ધતિઓ ખોરાકની પોષક સામગ્રીને નોંધપાત્ર રીતે બદલી શકે છે. ${appLabel} ના અંદાજો હંમેશા આ ભિન્નતાઓને ધ્યાનમાં લઈ શકતા નથી.',
			'disclaimer.snap.ingredients.title' => 'ઘટકો',
			'disclaimer.snap.ingredients.description' => 'ઘણા છુપાયેલા ઘટકોવાળી જટિલ વાનગીઓ ઓછા સચોટ અંદાજો તરફ દોરી શકે છે.',
			'disclaimer.snap.databaseLimitations.title' => 'ડેટાબેઝ મર્યાદાઓ',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} નો ફૂડ ડેટાબેઝ વ્યાપક છે પરંતુ તેમાં દરેક એક ખાદ્ય વસ્તુ અથવા ભિન્નતા શામેલ ન હોઈ શકે.',
			'disclaimer.weightEstimate.title' => 'વજનના અંદાજ વિશે',
			'disclaimer.weightEstimate.description' => 'અંદાજિત વજનમાં ફેરફાર એ સરળ કેલરી-ઇન વિ. કેલરી-આઉટ મોડેલ પર આધારિત સૈદ્ધાંતિક અંદાજ છે. તે ફક્ત પ્રેરક માર્ગદર્શન માટે છે, તમારા વાસ્તવિક વજનની આગાહી તરીકે નહીં.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'કેલરીની ચોકસાઈ',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'આ અંદાજ ફક્ત તમારી ટ્રેક કરેલી કેલરીનું સેવન અને ખર્ચ જેટલો જ સચોટ છે. ખોટું લોગિંગ અચોક્કસ અંદાજમાં પરિણમશે.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'જૈવિક પરિબળો',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'વાસ્તવિક વજન ઘટાડવું/વધવું ચયાપચય, હોર્મોન્સ, ઊંઘ, તણાવ, હાઇડ્રેશન અને અન્ય વ્યક્તિગત પરિબળોથી પ્રભાવિત થાય છે જે ${appLabel} માપી શકતું નથી.',
			'disclaimer.weightEstimate.waterWeight.title' => 'પાણીનું વજન અને વધઘટ',
			'disclaimer.weightEstimate.waterWeight.description' => 'પાણી જાળવી રાખવા, પાચન અને સમયને કારણે સામાન્ય દૈનિક વજનમાં નોંધપાત્ર વધઘટ થઈ શકે છે. અંદાજ આ દૈનિક ફેરફારોને ધ્યાનમાં લેતો નથી.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'વ્યાવસાયિક માર્ગદર્શન',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'તબીબી નિર્ણયો લેવા માટે આ અંદાજનો ઉપયોગ કરશો નહીં. વ્યક્તિગત વજન વ્યવસ્થાપન સલાહ માટે હંમેશા આરોગ્યસંભાળ વ્યાવસાયિક અથવા નોંધાયેલ આહાર નિષ્ણાતની સલાહ લો.',
			'disclaimer.healthMetrics.description' => 'આ મેટ્રિક્સ તમને તમારા શરીરની ઊર્જાની જરૂરિયાતોને સમજવામાં અને તમારા પોષણ લક્ષ્યોને માર્ગદર્શન આપવામાં મદદ કરે છે.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'બેઝલ મેટાબોલિક રેટ (BMR) એ કેલરીની સંખ્યા છે જે તમારું શરીર આરામ કરતી વખતે શ્વાસ લેવા અને રક્ત પરિભ્રમણ જેવા મૂળભૂત કાર્યો જાળવવા માટે બાળે છે. BMR તમારી ઉંમર, લિંગ, ઊંચાઈ અને વજન પર આધાર રાખે છે. ઉચ્ચ BMR નો અર્થ છે કે તમારું શરીર કુદરતી રીતે આરામ કરતી વખતે વધુ કેલરી બાળે છે, જે ઘણીવાર વધુ સ્નાયુ સમૂહ, નાની ઉંમર અથવા પુરુષ હોવાને કારણે થાય છે. નીચું BMR સામાન્ય રીતે ઓછા સ્નાયુ સમૂહ, મોટી ઉંમર અથવા સ્ત્રી હોવાનો સંકેત આપે છે.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'કુલ દૈનિક ઊર્જા ખર્ચ (TDEE) એ દરરોજ તમે બાળો છો તે કુલ કેલરી છે, જેમાં તમારું BMR વત્તા શારીરિક પ્રવૃત્તિ અને દૈનિક હલનચલનમાંથી કેલરીનો સમાવેશ થાય છે. TDEE તમારા BMR અને પ્રવૃત્તિ સ્તર પર આધાર રાખે છે. ઉચ્ચ TDEE નો અર્થ છે કે તમે એકંદરે વધુ કેલરી બાળો છો, સામાન્ય રીતે વધુ સક્રિય હોવાને કારણે અથવા ઉચ્ચ BMR હોવાને કારણે. નીચું TDEE ઓછી દૈનિક પ્રવૃત્તિ અથવા નીચા BMR સૂચવે છે.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'દૈનિક લક્ષ્ય',
			'disclaimer.healthMetrics.dailyGoal.description' => 'દૈનિક લક્ષ્ય એ તમારા TDEE અને વજનના લક્ષ્યના આધારે તમારી ભલામણ કરેલ દૈનિક કેલરીનું સેવન છે. વજન ઘટાડવા માટે, તમે તમારા TDEE કરતાં ઓછી કેલરીનો વપરાશ કરો છો. વજન જાળવવા માટે, તમે તમારા TDEE સાથે મેળ ખાઓ છો. વજન વધારવા માટે, તમે તમારા TDEE કરતાં વધુ કેલરીનો વપરાશ કરો છો. આ તમને સ્વસ્થ ગતિએ તમારા ઇચ્છિત વજનમાં ફેરફાર પ્રાપ્ત કરવામાં મદદ કરે છે.',
			'disclaimer.calorieExpenditure.title' => 'કેલરી ખર્ચનો અંદાજ',
			'disclaimer.calorieExpenditure.description' => 'જ્યારે Health Connect ડેટા અનુપલબ્ધ હોય, ત્યારે અમે તમારા બેઝલ મેટાબોલિક રેટ (BMR) અને પ્રવૃત્તિ સ્તર (TDEE) નો ઉપયોગ કરીને આજે બળી ગયેલી કેલરીનો અંદાજ લગાવીએ છીએ, જે દિવસના વીતી ગયેલા ભાગ માટે સ્કેલ કરવામાં આવે છે.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'અંદાજ કેવી રીતે ગણવામાં આવે છે',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'અમે તમારા TDEE (તમારી પ્રોફાઇલના આધારે) ની ગણતરી કરીએ છીએ અને અત્યાર સુધી બળી ગયેલી કેલરીનો અંદાજ કાઢવા માટે તેને દિવસના વીતી ગયેલા અપૂર્ણાંક (કલાકો + મિનિટ) / 24 વડે ગુણાકાર કરીએ છીએ.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'વ્યાવસાયિક માર્ગદર્શન',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'તબીબી નિર્ણયો લેવા માટે આ અંદાજનો ઉપયોગ કરશો નહીં. વ્યક્તિગત વજન વ્યવસ્થાપન સલાહ માટે હંમેશા આરોગ્યસંભાળ વ્યાવસાયિક અથવા નોંધાયેલ આહાર નિષ્ણાતની સલાહ લો.',
			'localNutritionPhase4.portionSmaller' => 'નાનું',
			'localNutritionPhase4.portionEstimated' => 'અંદાજિત',
			'localNutritionPhase4.portionLarger' => 'મોટું',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => '${ingredient} માટે કયું પ્રમાણ સૌથી નજીક હતું?',
			'localNutritionPhase4.mealTypeQuestion' => 'આ કયું ભોજન હતું?',
			'localNutritionPhase4.localNutritionTip' => 'ચકાસેલી સ્થાનિક પોષણ માહિતી પરથી ગણતરી થઈ.',
			'localNutritionPhase4.offlineNutritionTitle' => 'પોષણ ડેટા ડાઉનલોડ કરો',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'દરેક ઘટક આવરી લેવાયો હોય ત્યારે આ ડિવાઇસ પર ચકાસેલી USDA પંક્તિઓ અને નિર્ધારિત ગણતરી વાપરો.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'આ એપ રિલીઝ માટે સ્થાનિક પોષણ ડેટા ઉપલબ્ધ નથી.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'કોઈ ચકાસેલું પોષણ પૅક ડાઉનલોડ થયેલું નથી.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'પોષણ ડેટા ડાઉનલોડ અને ચકાસાઈ રહ્યો છે…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'પૅક ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} કૅશ કરેલી USDA પંક્તિઓ · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'અપડેટ માટે તપાસો',
			'localNutritionPhase4.offlineNutritionClear' => 'સ્થાનિક પોષણ ડેટા સાફ કરો',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'સ્થાનિક પોષણ ડેટા સાફ કરવો?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'આ ડાઉનલોડ કરેલું USDA પૅક અને લુકઅપ કૅશ દૂર કરે છે. નોંધાયેલા ભોજનમાં સાચવતી વખતે વપરાયેલ ચોક્કસ પોષણ સ્નૅપશૉટ જળવાઈ રહે છે.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'ડેટા સાફ કરો',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'સ્થાનિક પોષણ ડેટા ડાઉનલોડ અને ચકાસી શકાયો નહીં: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'સ્થાનિક પોષણ ડેટા સાફ થયો',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'પાછળ',
			'watch.common.cancel' => 'રદ કરો',
			'watch.common.delete' => 'કાઢી નાખો',
			'watch.common.retry' => 'ફરી પ્રયાસ કરો',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'પોષકતત્ત્વ',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} ગ્રામ',
			'watch.nutrition.protein' => 'પ્રોટીન',
			'watch.nutrition.carbs' => 'કાર્બોહાઇડ્રેટ',
			'watch.nutrition.fat' => 'ચરબી',
			'watch.nutrition.fiber' => 'ફાઇબર',
			'watch.sync.syncWithPhone' => 'ફોન સાથે સમન્વય કરો',
			'watch.sync.syncing' => 'સમન્વય થઈ રહ્યું છે…',
			'watch.sync.synced' => 'સમન્વય થયું',
			'watch.sync.syncedJustNow' => 'હમણાં જ સમન્વય થયું',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => '${minutes} મિનિટ પહેલાં સમન્વય થયું',
			'watch.sync.failed' => 'સમન્વય નિષ્ફળ',
			'watch.sync.phoneDisconnected' => 'ફોન ડિસ્કનેક્ટ થયો',
			'watch.sync.tapToSync' => 'સમન્વય કરવા માટે ટેપ કરો',
			'watch.sync.refreshFailed' => 'તાજું કરી શકાયું નથી. તમારો ફોન તપાસો.',
			'watch.sync.openPhone' => 'તમારા ફોન પર Calorify ખોલો, પછી તાજું કરવા માટે ટેપ કરો.',
			'watch.home.today' => 'આજે',
			'watch.home.calorieSummary' => ({required Object goal, required Object consumed, required Object status}) => '${goal} માંથી ${consumed} કેલરીનો વપરાશ થયો. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => 'લક્ષ્ય કરતાં ${calories} વધુ',
			'watch.home.remaining' => ({required Object calories}) => '${calories} બાકી',
			'watch.home.left' => ({required Object calories}) => '${calories} બાકી',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal લક્ષ્ય',
			'watch.home.logMeal' => 'ભોજન લોગ કરો',
			'watch.home.todayMeals' => 'આજના ભોજન',
			'watch.home.todayMealsCount' => ({required Object count}) => 'આજના ભોજન, ${count}',
			'watch.home.viewMore' => ({required Object count}) => '${count} વધુ જુઓ',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} વધુ ભોજન, બધા જોવા માટે ટેપ કરો',
			'watch.home.noMeals' => 'કોઈ ભોજન લોગ થયેલ નથી',
			'watch.home.noMealsSemantics' => 'આજે કોઈ ભોજન લોગ થયેલ નથી',
			'watch.home.tapLog' => 'શરૂ કરવા માટે લોગ પર ટેપ કરો',
			'watch.home.removedFromQueue' => 'ભોજન ઑફલાઇન કતારમાંથી દૂર કરવામાં આવ્યું.',
			'watch.home.removedOffline' => 'ભોજન ઑફલાઇન દૂર કરવામાં આવ્યું. જ્યારે તમારો ફોન ફરીથી કનેક્ટ થશે ત્યારે તે સમન્વય થશે.',
			'watch.home.deleteFailed' => 'ભોજન કાઢી શકાયું નથી',
			'watch.history.title' => 'આજના ભોજન',
			'watch.history.refresh' => 'ભોજન તાજા કરો',
			'watch.history.loadFailed' => 'ભોજન લોડ કરી શકાયા નથી',
			'watch.history.syncFailed' => 'સમન્વય કરી શકાયું નથી',
			'watch.history.emptyTitle' => 'હજુ સુધી કોઈ ભોજન નથી',
			'watch.history.emptyMessage' => 'અહીં જોવા માટે હોમમાંથી ભોજન લોગ કરો.',
			'watch.favorites.title' => 'મનપસંદ',
			'watch.favorites.refresh' => 'મનપસંદ તાજા કરો',
			'watch.favorites.loadFailed' => 'મનપસંદ લોડ કરી શકાયા નથી',
			'watch.favorites.syncFailed' => 'સમન્વય કરી શકાયું નથી',
			'watch.favorites.emptyTitle' => 'હજુ સુધી કોઈ મનપસંદ નથી',
			'watch.favorites.emptyMessage' => 'અહીં એક-ટેપ લોગિંગ માટે ફોન ઍપમાં ભોજનને સ્ટાર કરો.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} કેલરી. લોગ કરવા માટે ટેપ કરો.',
			'watch.favorites.logged' => ({required Object name}) => '${name} લોગ થયું!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} ઑફલાઇન સાચવવામાં આવ્યું. જ્યારે તમારો ફોન ફરીથી કનેક્ટ થશે ત્યારે તે સમન્વય થશે.',
			'watch.favorites.saveFailed' => 'ભોજન સાચવી શકાયું નથી. કૃપા કરીને ફરી પ્રયાસ કરો.',
			'watch.favorites.log' => 'લોગ કરો',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} કેલરી, ${time} વાગ્યે લોગ થયું.',
			'watch.meal.longPressDelete' => 'કાઢી નાખવા માટે લાંબો સમય દબાવો.',
			'watch.meal.deleteTitle' => 'ભોજન કાઢી નાખવું છે?',
			'watch.voice.title' => 'વૉઇસ ભોજન લોગ',
			'watch.voice.processing' => 'તમારા ભોજનની તપાસ થઈ રહી છે…',
			'watch.voice.processingDescription' => 'ભાગો અને પોષણનો અંદાજ લગાવવો',
			'watch.voice.listening' => 'સાંભળી રહ્યું છે',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'રેકોર્ડિંગ બંધ કરો',
			'watch.voice.start' => 'રેકોર્ડિંગ શરૂ કરવા માટે ટેપ કરો',
			'watch.voice.starting' => 'માઇક્રોફોન શરૂ થઈ રહ્યું છે…',
			'watch.voice.prompt' => 'ટેપ કરો, પછી તમારા ભોજનનું વર્ણન કરો',
			'watch.voice.tapToRetry' => 'ફરી પ્રયાસ કરવા માટે ટેપ કરો',
			'watch.voice.example' => '“દાળ સાથે 2 રોટલી” અજમાવો',
			'watch.voice.unavailable' => 'વૉઇસ ઇનપુટ અનુપલબ્ધ છે. ઘડિયાળ સેટિંગ્સમાં માઇક્રોફોન પરવાનગી તપાસો.',
			'watch.voice.didNotStart' => 'માઇક્રોફોન શરૂ થયું નથી. ફરી પ્રયાસ કરવા માટે ટેપ કરો.',
			'watch.voice.startFailed' => 'રેકોર્ડિંગ શરૂ કરી શકાયું નથી. માઇક્રોફોન પરવાનગીઓ તપાસો.',
			'watch.voice.allowMicrophone' => 'વૉઇસ દ્વારા ભોજન લોગ કરવા માટે માઇક્રોફોન ઍક્સેસની મંજૂરી આપો.',
			'watch.voice.needsConnection' => 'વૉઇસ ઓળખ માટે કનેક્શનની જરૂર છે. ફરી પ્રયાસ કરવા માટે ટેપ કરો.',
			'watch.voice.microphoneUnavailable' => 'માઇક્રોફોન અનુપલબ્ધ છે. ફરી પ્રયાસ કરવા માટે ટેપ કરો.',
			'watch.voice.microphoneBusy' => 'માઇક્રોફોન વ્યસ્ત છે. થોડીવાર રાહ જુઓ અને ફરી પ્રયાસ કરો.',
			'watch.voice.languageUnsupported' => 'વૉઇસ ઇનપુટ ઘડિયાળની ભાષાને સપોર્ટ કરતું નથી.',
			'watch.voice.temporarilyBusy' => 'વૉઇસ ઇનપુટ અસ્થાયી રૂપે વ્યસ્ત છે. થોડીવાર રાહ જુઓ અને ફરી પ્રયાસ કરો.',
			'watch.voice.notRecognized' => 'હું તે સમજી શક્યો નથી. માઇક પર ટેપ કરો અને ફરી પ્રયાસ કરો.',
			'watch.voice.noSpeech' => 'કોઈ ભાષણ શોધી શકાયું નથી. ફરી પ્રયાસ કરવા માટે માઇક પર ટેપ કરો.',
			'watch.voice.analysisFailed' => 'વિશ્લેષણ નિષ્ફળ. કૃપા કરીને ફરી પ્રયાસ કરો.',
			'watch.voice.mealNotIdentified' => 'તે ભોજન ઓળખી શકાયું નથી. તેનું અલગ રીતે વર્ણન કરવાનો પ્રયાસ કરો.',
			'watch.result.title' => 'ભોજનની વિગતો',
			'watch.result.savedOffline' => 'ઑફલાઇન સાચવવામાં આવ્યું',
			'watch.result.logged' => 'લોગ થયું!',
			'watch.result.mealFound' => 'ભોજન મળ્યું',
			'watch.result.estimatedEnergy' => 'અંદાજિત ઊર્જા',
			'watch.result.logMeal' => 'ભોજન લોગ કરો',
			'watch.result.logging' => 'લોગ થઈ રહ્યું છે…',
			'watch.result.logAnother' => 'બીજું લોગ કરો',
			'watch.result.goingBack' => 'પાછળ જઈ રહ્યું છે…',
			'watch.result.savedOfflineMessage' => 'ભોજન ઑફલાઇન સાચવવામાં આવ્યું. જ્યારે તમારો ફોન ફરીથી કનેક્ટ થશે ત્યારે તે સમન્વય થશે.',
			'watch.result.saveFailed' => 'ભોજન સાચવી શકાયું નથી. કૃપા કરીને ફરી પ્રયાસ કરો.',
			'common.betaTag' => 'બીટા',
			'common.close' => 'બંધ કરો',
			'common.kContinue' => 'ચાલુ રાખો',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} નો આનંદ માણી રહ્યા છો?',
			'feedbackRating.yes' => 'હા, હું તેનો આનંદ માણી રહ્યો છું',
			'feedbackRating.no' => 'ખરેખર નહીં',
			'feedbackRating.rateStepHeading' => 'Play Store પર રેટ કરો',
			'feedbackRating.emailStepHeading' => 'ઇમેઇલ દ્વારા પ્રતિસાદ મોકલો',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'એક ઝડપી રેટિંગ અન્ય લોકોને ${appLabel} શોધવામાં મદદ કરે છે અને વિકાસ ચાલુ રાખે છે. શું તમે એક ક્ષણ માટે એક છોડશો?',
			'feedbackRating.shareFeedbackViaEmail' => 'તમારો પ્રતિસાદ આગળ શું આવે છે તેને આકાર આપે છે — અમે દરેક સંદેશ વાંચીએ છીએ. શું તમે ઇમેઇલ દ્વારા તમારા વિચારો શેર કરવા માંગો છો?',
			'feedbackRating.rateCta' => 'Play Store પર રેટ કરો',
			'feedbackRating.maybeLater' => 'કદાચ પછી',
			'feedbackRating.sendFeedback' => 'પ્રતિસાદ મોકલો',
			'feedbackRating.noThanks' => 'ના આભાર',
			'feedbackRating.aboutUsDescription' => 'એક નાની ટીમ દ્વારા કાળજીપૂર્વક બનાવવામાં આવ્યું છે. અમે ગોપનીયતા, સરળતા અને તમને વધુ સારી ખાવાની ટેવો બનાવવામાં મદદ કરવા પર ધ્યાન કેન્દ્રિત કરીએ છીએ.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel} પાછળ કોણ છે તે જાણવા ઉત્સુક છો? જુઓ ',
			'feedbackRating.aboutUsLinkLabel' => 'અમારા વિશે',
			'feedbackRating.thankYouMessage' => 'આભાર! અમે તમને બીજી વાર પૂછીશું.',
			'health.syncFailed' => 'Health Connect સાથે સમન્વયિત કરી શકાયું નથી',
			'health.mealSynced' => 'ભોજન Health Connect સાથે સમન્વયિત થયું',
			_ => null,
		};
	}
}
