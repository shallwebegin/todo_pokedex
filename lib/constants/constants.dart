import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static const String appBarTitle = 'Pokedex';
  static const String appBarImage = 'assets/images/pokeball.png';

  static TextStyle get appbarTextStyle => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(48));

  static TextStyle get pokemonNameTextstyle => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(22));

  static TextStyle get typeChipTextstyle =>
      TextStyle(color: Colors.white, fontSize: _calculateFontSize(20));

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.5).sp;
    }
  }

  static getPokeInfoLabelTextStyle() {
    return TextStyle(
        fontSize: _calculateFontSize(20),
        color: Colors.black,
        fontWeight: FontWeight.bold);
  }

  static getPokeInfoTextStyle() {
    return TextStyle(fontSize: _calculateFontSize(16), color: Colors.black);
  }
}
