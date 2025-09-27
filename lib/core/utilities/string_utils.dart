import 'package:characters/characters.dart';

extension StringX on String {
  String capitalizeFirstLetter() {
    if (isEmpty) return this;
    final graphemes = characters;
    final first = graphemes.first.toUpperCase();
    final rest = graphemes.skip(1).toString();
    return first + rest;
  }
}
