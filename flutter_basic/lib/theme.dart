import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._(); // Private constructor. so this class canot instansiate

  static const _primaryColorLight = Colors.lightBlueAccent; //5B0888
  static const _primaryColorDark = Color.fromRGBO(190, 173, 250, 1);
  

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColorLight, brightness: Brightness.light),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true, 
    colorScheme: ColorScheme.fromSeed(seedColor: _primaryColorDark, brightness: Brightness.dark)
  );
}
