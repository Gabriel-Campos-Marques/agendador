import 'package:agendador/Screen/empresa.dart';
import 'package:agendador/Screen/favoritos.dart';
import 'package:agendador/Screen/home_screen.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/favoritos',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/favoritos',
      builder: (context, state) => const Favoritos(),
    ),
    GoRoute(
      path: '/favoritos/empresa',
      builder: (context, state) => const Empresa(),
    ),
  ],
);
