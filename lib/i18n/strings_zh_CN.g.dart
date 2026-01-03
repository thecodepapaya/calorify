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
class TranslationsZhCn with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhCn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsZhCn _root = this; // ignore: unused_field

	@override 
	TranslationsZhCn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZhCn(meta: meta ?? this.$meta);

	// Translations
	@override String get language => '简体中文';
	@override String get flag => '🇨🇳';
	@override late final _TranslationsOnboardingZhCn onboarding = _TranslationsOnboardingZhCn._(_root);
}

// Path: onboarding
class _TranslationsOnboardingZhCn implements TranslationsOnboardingEn {
	_TranslationsOnboardingZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get welcome => '欢迎使用 Calorify';
	@override String get subtitle => '您个性化的营养伴侣，基于 AI 技术';
	@override String get getStarted => '开始使用';
	@override late final _TranslationsOnboardingFeaturesZhCn features = _TranslationsOnboardingFeaturesZhCn._(_root);
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesZhCn implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionZhCn foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionZhCn._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisZhCn aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisZhCn._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationZhCn healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationZhCn._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionZhCn implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '智能食物识别';
	@override String get description => '拍摄照片，让 AI 识别您的餐点';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisZhCn implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 分析';
	@override String get description => '根据您的描述获取即时营养信息';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationZhCn implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '健康整合';
	@override String get description => '连接 Health Connect 以获得更好的洞察';
}

/// The flat map containing all translations for locale <zh-CN>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZhCn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => '简体中文',
			'flag' => '🇨🇳',
			'onboarding.welcome' => '欢迎使用 Calorify',
			'onboarding.subtitle' => '您个性化的营养伴侣，基于 AI 技术',
			'onboarding.getStarted' => '开始使用',
			'onboarding.features.foodRecognition.title' => '智能食物识别',
			'onboarding.features.foodRecognition.description' => '拍摄照片，让 AI 识别您的餐点',
			'onboarding.features.aiAnalysis.title' => 'AI 分析',
			'onboarding.features.aiAnalysis.description' => '根据您的描述获取即时营养信息',
			'onboarding.features.healthIntegration.title' => '健康整合',
			'onboarding.features.healthIntegration.description' => '连接 Health Connect 以获得更好的洞察',
			_ => null,
		};
	}
}
