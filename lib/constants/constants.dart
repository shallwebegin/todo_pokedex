import 'package:flutter/material.dart';

class Constants {
  Constants._();

  static const String appBarTitle = 'Pokedex';
  static const String appBarImage = 'assets/images/pokeball.png';

  static TextStyle get appbarTextStyle => const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48);

  static TextStyle get pokemonNameTextstyle => const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30);

  static TextStyle get typeChipTextstyle => const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);
}
