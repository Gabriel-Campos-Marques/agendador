import 'package:agendador/router/app_router.dart';
import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Agendador());
}

class Agendador extends StatelessWidget {
  Agendador({Key? key}) : super(key: key);

  final AppTheme _appTheme = AppTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: _appTheme.theme(),
      routeInformationParser: routes.routeInformationParser,
      routeInformationProvider: routes.routeInformationProvider,
      routerDelegate: routes.routerDelegate,
    );
  }
}
