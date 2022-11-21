import 'package:agendador/Screen/Login/cadastro_usuario.dart';
import 'package:agendador/Screen/empresa.dart';
import 'package:agendador/Screen/favoritos.dart';
import 'package:agendador/Screen/home_screen.dart';
import 'package:agendador/Screen/Login/login.dart';
import 'package:agendador/Screen/reserva_empresa_seleciona_dia.dart';
import 'package:agendador/Screen/reserva_empresa_seleciona_servico.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const Login(),
    ),
    GoRoute(
      path: '/login/cadastre-se',
      builder: (context, state) => const Cadastro(),
    ),
    GoRoute(
      path: '/favoritos',
      builder: (context, state) => const Favoritos(),
    ),
    GoRoute(
      path: '/favoritos/empresa',
      builder: (context, state) => const Empresa(),
    ),
    GoRoute(
      path: '/favoritos/empresa/reserva_empresa_seleciona_servico',
      builder: (context, state) => const SelecionaServico(),
    ),
    GoRoute(
        path: '/favoritos/empresa/reserva_empresa_seleciona_dia',
        builder: (context, state) => SelecionarDia()),
  ],
);
