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
class TranslationsFr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Français';
	@override String get flag => '🇫🇷';
	@override late final _TranslationsOnboardingFr onboarding = _TranslationsOnboardingFr._(_root);
}

// Path: onboarding
class _TranslationsOnboardingFr implements TranslationsOnboardingEn {
	_TranslationsOnboardingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Bienvenue sur Calorify';
	@override String get subtitle => 'Votre compagnon personnel en nutrition propulsé par l\'IA';
	@override String get getStarted => 'Commencer';
	@override late final _TranslationsOnboardingFeaturesFr features = _TranslationsOnboardingFeaturesFr._(_root);
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesFr implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionFr foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionFr._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisFr aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisFr._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationFr healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationFr._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionFr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconnaissance Alimentaire Intelligente';
	@override String get description => 'Prenez une photo et laissez l\'IA identifier votre repas';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisFr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyse par IA';
	@override String get description => 'Obtenez des informations nutritionnelles instantanées à partir de vos descriptions';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationFr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intégration Santé';
	@override String get description => 'Connectez-vous à Health Connect pour de meilleurs aperçus';
}

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Français',
			'flag' => '🇫🇷',
			'onboarding.welcome' => 'Bienvenue sur Calorify',
			'onboarding.subtitle' => 'Votre compagnon personnel en nutrition propulsé par l\'IA',
			'onboarding.getStarted' => 'Commencer',
			'onboarding.features.foodRecognition.title' => 'Reconnaissance Alimentaire Intelligente',
			'onboarding.features.foodRecognition.description' => 'Prenez une photo et laissez l\'IA identifier votre repas',
			'onboarding.features.aiAnalysis.title' => 'Analyse par IA',
			'onboarding.features.aiAnalysis.description' => 'Obtenez des informations nutritionnelles instantanées à partir de vos descriptions',
			'onboarding.features.healthIntegration.title' => 'Intégration Santé',
			'onboarding.features.healthIntegration.description' => 'Connectez-vous à Health Connect pour de meilleurs aperçus',
			_ => null,
		};
	}
}
