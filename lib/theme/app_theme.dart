import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  Color primary = const Color.fromARGB(255, 56, 56, 56);
  Color sombra = const Color.fromARGB(125, 0, 0, 0);
  Color secondary = const Color.fromARGB(255, 255, 24, 24);
  TextStyle textoPadraoAppBar = GoogleFonts.roboto(
    fontSize: 36,
    fontWeight: FontWeight.w900,
  );
  TextStyle textoPadrao = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  TextTheme textTheme = GoogleFonts.robotoTextTheme();

  ThemeData theme() {
    return ThemeData(
      primaryColor: primary,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: secondary),
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: primary,
        elevation: 0,
        titleSpacing: 30,
        titleTextStyle: textoPadraoAppBar,
      ),
    );
  }
}
