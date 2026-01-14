import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:characters/characters.dart';

extension StringX on String {
  String get capitalized {
    if (isEmpty) return this;
    final graphemes = characters;
    final first = graphemes.first.toUpperCase();
    final rest = graphemes.skip(1).toString();
    return first + rest;
  }
}

extension TranslationsX on Translations {
  String get appLabelValue =>
      appLabel(env: EnvConfig.instance.isProd ? '' : ' staging');
}
