import 'package:flutter/material.dart';

import 'package:newsletter_mobile_application/themes/colors.dart';

ThemeData lightAppTheme = ThemeData(
  useMaterial3: true,
  inputDecorationTheme: InputDecorationTheme(
    fillColor: lightBackgroundColor,
    filled: true,
    enabledBorder: InputBorder.none,
    prefixIconColor: lightLabelColor,
    labelStyle: TextStyle(
      fontSize: 15,
      fontFamily: "Poppins",
      color: lightFontColor,
      fontWeight: FontWeight.w500,
    ),
    hintStyle: TextStyle(
      fontSize: 15,
      fontFamily: "Poppins",
      color: lightFontColor,
      fontWeight: FontWeight.w500,
    ),
  ),
  colorScheme: ColorScheme.light(
    onSurface: lightFontColor,
    brightness: Brightness.light,
    primary: lightPrimaryColor,
    surface: lightBackgroundColor,
    onPrimaryContainer: lightFontColor,
    primaryContainer: lightDividerColor,
    secondaryContainer: lightLabelColor,
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: 24,
      fontFamily: "Poppins",
      color: lightFontColor,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontFamily: "Poppins",
      color: lightFontColor,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      fontSize: 15,
      fontFamily: "Poppins",
      color: lightFontColor,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontFamily: "Poppins",
      color: lightFontColor,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontSize: 15,
      fontFamily: "Poppins",
      color: lightFontColor,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontSize: 13,
      fontFamily: "Poppins",
      color: lightFontColor,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 13,
      fontFamily: "Poppins",
      color: lightLabelColor,
      fontWeight: FontWeight.w300,
    ),
  ),
);

ThemeData darkAppTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    foregroundColor: darkFontColor,
    backgroundColor: darkBackgroundColor,
    elevation: 0,
    iconTheme: IconThemeData(color: darkFontColor),
    titleTextStyle: TextStyle(
      fontFamily: "Poppins",
      fontSize: 20,
      color: darkFontColor,
      fontWeight: FontWeight.w600,
    ),
  ),
  colorScheme: const ColorScheme.dark(
    brightness: Brightness.dark,
    onSurface: darkFontColor,
    surface: darkBackgroundColor,
    primaryContainer: darkDividerColor,
    onPrimaryContainer: darkFontColor,
    secondaryContainer: darkLabelColor,
    primary: darkPrimaryColor,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: darkBackgroundColor,
    enabledBorder: InputBorder.none,
    prefixIconColor: darkLabelColor,
    labelStyle: TextStyle(
      fontSize: 15,
      fontFamily: "Poppins",
      color: darkFontColor,
      fontWeight: FontWeight.w500,
    ),
    hintStyle: TextStyle(
      fontSize: 15,
      fontFamily: "Poppins",
      color: darkFontColor,
      fontWeight: FontWeight.w500,
    ),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 24,
      fontFamily: "Poppins",
      color: darkFontColor,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontFamily: "Poppins",
      color: darkFontColor,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      fontSize: 15,
      fontFamily: "Poppins",
      color: darkFontColor,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      color: darkFontColor,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontSize: 15,
      fontFamily: "Poppins",
      color: darkFontColor,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontSize: 13,
      fontFamily: "Poppins",
      color: darkFontColor,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 13,
      fontFamily: "Poppins",
      color: darkLabelColor,
      fontWeight: FontWeight.w300,
    ),
  ),
);
