import 'package:flutter/material.dart';
import 'package:todo_pokedex/constants/constants.dart';
import 'package:todo_pokedex/constants/ui_helper.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.appTitleWidgetHeight,
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.defaultPadding(),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Constants.appBarTitle,
                style: Constants.appbarTextStyle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              Constants.appBarImage,
              width: UIHelper.appImageWidgetHeight,
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
