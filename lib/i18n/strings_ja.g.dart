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
class TranslationsJa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override String get language => '日本語';
	@override String get flag => '🇯🇵';
	@override late final _TranslationsOnboardingJa onboarding = _TranslationsOnboardingJa._(_root);
}

// Path: onboarding
class _TranslationsOnboardingJa implements TranslationsOnboardingEn {
	_TranslationsOnboardingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Calorifyへようこそ';
	@override String get subtitle => 'AIによるあなたの個人的な栄養コンパニオン';
	@override String get getStarted => '始める';
	@override late final _TranslationsOnboardingFeaturesJa features = _TranslationsOnboardingFeaturesJa._(_root);
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesJa implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionJa foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionJa._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisJa aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisJa._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationJa healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationJa._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionJa implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'スマートフード認識';
	@override String get description => '写真を撮ってAIに食事を特定させましょう';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisJa implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI分析';
	@override String get description => 'あなたの説明から即座に栄養情報を取得';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationJa implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '健康統合';
	@override String get description => 'より良い洞察のためにHealth Connectと接続する';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => '日本語',
			'flag' => '🇯🇵',
			'onboarding.welcome' => 'Calorifyへようこそ',
			'onboarding.subtitle' => 'AIによるあなたの個人的な栄養コンパニオン',
			'onboarding.getStarted' => '始める',
			'onboarding.features.foodRecognition.title' => 'スマートフード認識',
			'onboarding.features.foodRecognition.description' => '写真を撮ってAIに食事を特定させましょう',
			'onboarding.features.aiAnalysis.title' => 'AI分析',
			'onboarding.features.aiAnalysis.description' => 'あなたの説明から即座に栄養情報を取得',
			'onboarding.features.healthIntegration.title' => '健康統合',
			'onboarding.features.healthIntegration.description' => 'より良い洞察のためにHealth Connectと接続する',
			_ => null,
		};
	}
}
