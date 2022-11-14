import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final AppTheme _appTheme = AppTheme();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'Home Screen',
        style: _appTheme.textoPadrao,
      ),
    );
  }
}
