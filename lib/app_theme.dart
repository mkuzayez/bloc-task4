import 'package:flutter/material.dart';

enum AppTheme {
  lightBlue("Light Blue"),
  darkBlue("Dark Blue"),
  darkRed("Dark Red");

  const AppTheme(this.name);
  final String name;
}

final themesList = {
  AppTheme.lightBlue: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  AppTheme.darkBlue: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.indigo),
    brightness: Brightness.dark,
    primaryColor: Colors.indigo,
  ),
  AppTheme.darkRed: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.redAccent),
    brightness: Brightness.dark,
    primaryColor: Colors.redAccent,
  ),
};


