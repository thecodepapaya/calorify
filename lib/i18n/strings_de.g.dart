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
class TranslationsDe with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	@override 
	TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Deutsch';
	@override String get flag => '🇩🇪';
	@override late final _TranslationsOnboardingDe onboarding = _TranslationsOnboardingDe._(_root);
}

// Path: onboarding
class _TranslationsOnboardingDe implements TranslationsOnboardingEn {
	_TranslationsOnboardingDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Willkommen bei Calorify';
	@override String get subtitle => 'Ihr persönlicher Ernährungsbegleiter, betrieben von KI';
	@override String get getStarted => 'Loslegen';
	@override late final _TranslationsOnboardingFeaturesDe features = _TranslationsOnboardingFeaturesDe._(_root);
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesDe implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionDe foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionDe._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisDe aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisDe._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationDe healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationDe._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionDe implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intelligente Lebensmittelkennung';
	@override String get description => 'Machen Sie ein Foto und lassen Sie die KI Ihre Mahlzeit identifizieren';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisDe implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'KI-Analyse';
	@override String get description => 'Erhalten Sie sofortige Nährwertinformationen aus Ihren Beschreibungen';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationDe implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gesundheitsintegration';
	@override String get description => 'Verbinden Sie sich mit Health Connect für bessere Einblicke';
}

/// The flat map containing all translations for locale <de>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Deutsch',
			'flag' => '🇩🇪',
			'onboarding.welcome' => 'Willkommen bei Calorify',
			'onboarding.subtitle' => 'Ihr persönlicher Ernährungsbegleiter, betrieben von KI',
			'onboarding.getStarted' => 'Loslegen',
			'onboarding.features.foodRecognition.title' => 'Intelligente Lebensmittelkennung',
			'onboarding.features.foodRecognition.description' => 'Machen Sie ein Foto und lassen Sie die KI Ihre Mahlzeit identifizieren',
			'onboarding.features.aiAnalysis.title' => 'KI-Analyse',
			'onboarding.features.aiAnalysis.description' => 'Erhalten Sie sofortige Nährwertinformationen aus Ihren Beschreibungen',
			'onboarding.features.healthIntegration.title' => 'Gesundheitsintegration',
			'onboarding.features.healthIntegration.description' => 'Verbinden Sie sich mit Health Connect für bessere Einblicke',
			_ => null,
		};
	}
}
