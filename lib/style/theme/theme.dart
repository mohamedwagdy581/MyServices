import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeStyles {
  static ThemeData themeData(bool isDark, BuildContext context) {
    return isDark
        ? ThemeData(
            primarySwatch: Colors.grey,
            primaryColor: Colors.black,
            brightness: Brightness.dark,
            dividerColor: Colors.black12,
            appBarTheme: const AppBarTheme(
              titleSpacing: 20.0,
              backgroundColor: Color(0xff896277),
              elevation: 0.0,
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            textTheme: TextTheme(
              headline1: GoogleFonts.roboto(
                fontSize: 42,
                fontWeight: FontWeight.w600,
              ),
              headline2: GoogleFonts.roboto(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
              bodyText1: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              caption: GoogleFonts.roboto(
                fontSize: 14,
              ),
            ),
          )
        : ThemeData(
            primarySwatch: Colors.orange,
            primaryColor: Colors.white,
            brightness: Brightness.light,
            dividerColor: Colors.white60,
            appBarTheme: const AppBarTheme(
              titleSpacing: 20.0,
              backgroundColor: Colors.white,
              elevation: 0.0,
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            textTheme: TextTheme(
              headline1: GoogleFonts.roboto(
                fontSize: 42,
                fontWeight: FontWeight.w600,
              ),
              headline2: GoogleFonts.roboto(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
              bodyText1: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              caption: GoogleFonts.roboto(
                fontSize: 14,
              ),
            ),
          );
  }
}
