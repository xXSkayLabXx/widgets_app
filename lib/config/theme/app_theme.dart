import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.black,
  Colors.cyan,
  Colors.blueGrey,
  Colors.red,
  Colors.greenAccent,
  Colors.pinkAccent,
  Colors.purple,
  Colors.orangeAccent
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;

  AppTheme({this.isDarkmode = false, this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be grater the 0'),
        assert(selectedColor < colorList.length,
            'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkmode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
