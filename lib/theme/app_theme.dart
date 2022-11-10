import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  Color primary = const Color.fromARGB(255, 56, 56, 56);
  Color secondary = const Color.fromARGB(255, 255, 255, 255);
  Color textColor = const Color.fromARGB(255, 0, 0, 0);
  TextStyle textPadrao = GoogleFonts.roboto(
    fontSize: 35,
    fontWeight: FontWeight.w900,
  );

  ThemeData theme() {
    return ThemeData(
      primaryColor: primary,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: secondary),
      appBarTheme: AppBarTheme(
        titleSpacing: 50,
        elevation: 0,
        backgroundColor: primary,
        titleTextStyle: textPadrao,
      ),
      textTheme: GoogleFonts.robotoTextTheme(),
    );
  }
}
