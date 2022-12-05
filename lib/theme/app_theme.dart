import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Colors
  Color primary = const Color.fromARGB(255, 56, 56, 56);
  Color secondary = const Color.fromARGB(255, 255, 255, 255);
  Color tertiary = const Color.fromARGB(255, 102, 102, 102);
  Color star = const Color.fromARGB(255, 255, 192, 0);
  Color sombra = const Color.fromARGB(125, 0, 0, 0);

  //Text
  TextStyle textoPadraoAppBar = GoogleFonts.roboto(
      fontSize: 32, fontWeight: FontWeight.w900, color: Colors.white);

  TextStyle textoTitulos = GoogleFonts.roboto(
      fontSize: 32, fontWeight: FontWeight.w900, color: Colors.white);

  TextStyle textoSelecaoUsuarioEmpresa = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: const Color.fromARGB(255, 255, 255, 255),
  );

  TextStyle textoServicos = GoogleFonts.roboto(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: const Color.fromARGB(174, 0, 0, 0),
  );

  TextStyle textoLabel = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: const Color.fromARGB(150, 255, 255, 255),
  );

  TextStyle textoHint = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  TextStyle textoFormField = GoogleFonts.roboto(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  TextStyle textoTituloCalendario = GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: const Color.fromARGB(255, 255, 255, 255));

  TextStyle textoCalendario = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  TextStyle diaSelecionado = GoogleFonts.roboto(
    color: const Color.fromARGB(255, 0, 26, 64),
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  TextStyle textoCalendarioFimDeSemana = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  TextStyle textoPadrao = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  TextStyle textoNomeEmpresa = GoogleFonts.roboto(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  TextStyle textoBotoes = GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: const Color.fromARGB(255, 255, 255, 255));

  TextTheme textTheme = GoogleFonts.robotoTextTheme();

  ThemeData theme() {
    return ThemeData(
      primaryColor: primary,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: secondary),
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: primary,
        elevation: 0,
        titleTextStyle: textoPadraoAppBar,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          // backgroundColor: MaterialStateProperty.all(secondary),
        ),
      ),
    );
  }
}
