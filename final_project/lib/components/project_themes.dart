import 'package:final_project/components/project_colors.dart';
import 'package:flutter/material.dart';



class ProjectThemes {
  static ThemeData get lightTheme => ThemeData(
    primarySwatch: ProjectColors.primaryMeterialColor,
    fontFamily: 'Base',
    brightness: Brightness.light,
    textTheme: _textTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  static ThemeData get dartTheme => ThemeData(
    primarySwatch: ProjectColors.primaryMeterialColor,
    fontFamily: 'Base',
    brightness: Brightness.dark,
    textTheme: _textTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  static const TextTheme _textTheme = TextTheme(
    headline4: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: ProjectColors.primaryColor
    ),
    subtitle1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
        color: ProjectColors.primaryColor
    ),
    subtitle2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
        color: ProjectColors.primaryColor
    ),
    bodyText1: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w300,
        color: ProjectColors.primaryColor
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
        color: ProjectColors.primaryColor
    ),
    button: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
        color: ProjectColors.primaryColor
    ),
  );
}
