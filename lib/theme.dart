import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF33658A);
const Color secondaryColor = Color(0xFF57A0D3);
const Color surfaceColor = Color(0xFFF1F6F9);
const Color darkSurfaceColor = Color(0xFF0B1E2F);

ThemeData lightAppTheme = ThemeData(
  fontFamily: 'Cairo',
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.light,
    secondary: secondaryColor,
    surface: surfaceColor,
  ),
  scaffoldBackgroundColor: surfaceColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
  ),
  cardTheme: CardThemeData(
    color: Colors.white,
    elevation: 6,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    margin: EdgeInsets.zero,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      textStyle: const TextStyle(
        fontFamily: 'Cairo',
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: Colors.black87,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 19,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 18,
      color: Colors.black87,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
  ),
);

ThemeData darkAppTheme = ThemeData(
  fontFamily: 'Cairo',
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.dark,
    secondary: secondaryColor,
    surface: darkSurfaceColor,
  ),
  scaffoldBackgroundColor: darkSurfaceColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF102A43),
    foregroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
  ),
  cardTheme: CardThemeData(
    color: const Color(0xFF112B3C),
    elevation: 6,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    margin: EdgeInsets.zero,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: secondaryColor,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      textStyle: const TextStyle(
        fontFamily: 'Cairo',
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 19,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 18,
      color: Colors.white70,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
);
