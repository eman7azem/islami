import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      colorScheme: const ColorScheme(
        primary: primaryColor,
        secondary: Colors.black,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        background: primaryColor,

        //a
        brightness: Brightness.light,

        error: Colors.red,
        onError: Colors.white,
        onBackground: darkPrimaryColor,
        surface: Colors.white,
        onSurface: Colors.black,
        //a
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: primaryColor,
          selectedItemColor: darkPrimaryColor,
          unselectedItemColor: primaryColor),
      iconTheme: IconThemeData(color: darkPrimaryColor, size: 33),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFF242424)),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF242424)),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF242424)),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          elevation: 0,
          color: Colors.transparent));
  static ThemeData darkTheme = ThemeData(
      colorScheme: const ColorScheme(
        primary: darkPrimaryColor,
        secondary: yellowColor,
        onPrimary: darkPrimaryColor,
        onSecondary: Colors.white,
        background: yellowColor,

        //
        brightness: Brightness.dark,
        error: Colors.red,
        onError: Colors.white,
        onBackground: yellowColor,
        surface: Colors.white,
        onSurface: Colors.white,
        //
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: darkPrimaryColor,
          selectedItemColor: yellowColor,
          unselectedItemColor: darkPrimaryColor),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          elevation: 0,
          color: Colors.transparent));
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color yellowColor = Color(0xFFFACC1D);
}
