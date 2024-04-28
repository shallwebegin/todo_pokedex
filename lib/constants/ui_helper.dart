import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  UIHelper._();

  static double get appTitleWidgetHeight =>
      ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw;

  static double get appImageWidgetHeight =>
      ScreenUtil().orientation == Orientation.portrait ? 0.2.sh : 0.2.sw;

  static EdgeInsets defaultPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(12.h);
    } else {
      return EdgeInsets.all(8.w);
    }
  }

  static BorderRadius pokelistItemBorderRadius = BorderRadius.circular(15.w);
}
