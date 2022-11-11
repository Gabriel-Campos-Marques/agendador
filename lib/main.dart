import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'Screen/favoritos.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Agendador());
}

class Agendador extends StatelessWidget {
  Agendador({Key? key}) : super(key: key);

  final AppTheme _appTheme = AppTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _appTheme.theme(),
      home: const Favoritos(),
    );
  }
}
