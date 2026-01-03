///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'English'
	String get language => 'English';

	/// en: '🇺🇸'
	String get flag => '🇺🇸';

	late final TranslationsOnboardingEn onboarding = TranslationsOnboardingEn._(_root);
}

// Path: onboarding
class TranslationsOnboardingEn {
	TranslationsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Welcome to Calorify'
	String get welcome => 'Welcome to Calorify';

	/// en: 'Your personal nutrition companion powered by AI'
	String get subtitle => 'Your personal nutrition companion powered by AI';

	/// en: 'Get Started'
	String get getStarted => 'Get Started';

	late final TranslationsOnboardingFeaturesEn features = TranslationsOnboardingFeaturesEn._(_root);
}

// Path: onboarding.features
class TranslationsOnboardingFeaturesEn {
	TranslationsOnboardingFeaturesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsOnboardingFeaturesFoodRecognitionEn foodRecognition = TranslationsOnboardingFeaturesFoodRecognitionEn._(_root);
	late final TranslationsOnboardingFeaturesAiAnalysisEn aiAnalysis = TranslationsOnboardingFeaturesAiAnalysisEn._(_root);
	late final TranslationsOnboardingFeaturesHealthIntegrationEn healthIntegration = TranslationsOnboardingFeaturesHealthIntegrationEn._(_root);
}

// Path: onboarding.features.foodRecognition
class TranslationsOnboardingFeaturesFoodRecognitionEn {
	TranslationsOnboardingFeaturesFoodRecognitionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Smart Food Recognition'
	String get title => 'Smart Food Recognition';

	/// en: 'Take a photo and let AI identify your meal'
	String get description => 'Take a photo and let AI identify your meal';
}

// Path: onboarding.features.aiAnalysis
class TranslationsOnboardingFeaturesAiAnalysisEn {
	TranslationsOnboardingFeaturesAiAnalysisEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'AI Analysis'
	String get title => 'AI Analysis';

	/// en: 'Get instant nutrition facts from your descriptions'
	String get description => 'Get instant nutrition facts from your descriptions';
}

// Path: onboarding.features.healthIntegration
class TranslationsOnboardingFeaturesHealthIntegrationEn {
	TranslationsOnboardingFeaturesHealthIntegrationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Health Integration'
	String get title => 'Health Integration';

	/// en: 'Connect with Health Connect for better insights'
	String get description => 'Connect with Health Connect for better insights';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'English',
			'flag' => '🇺🇸',
			'onboarding.welcome' => 'Welcome to Calorify',
			'onboarding.subtitle' => 'Your personal nutrition companion powered by AI',
			'onboarding.getStarted' => 'Get Started',
			'onboarding.features.foodRecognition.title' => 'Smart Food Recognition',
			'onboarding.features.foodRecognition.description' => 'Take a photo and let AI identify your meal',
			'onboarding.features.aiAnalysis.title' => 'AI Analysis',
			'onboarding.features.aiAnalysis.description' => 'Get instant nutrition facts from your descriptions',
			'onboarding.features.healthIntegration.title' => 'Health Integration',
			'onboarding.features.healthIntegration.description' => 'Connect with Health Connect for better insights',
			_ => null,
		};
	}
}
