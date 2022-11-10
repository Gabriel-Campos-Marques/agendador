import 'package:agendador/screen/login.dart';
import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Projeto());
}

// ignore: must_be_immutable
class Projeto extends StatelessWidget {
  Projeto({Key? key}) : super(key: key);

  final AppTheme _appTheme = AppTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _appTheme.theme(),
      home: const Login(),
    );
  }
}
