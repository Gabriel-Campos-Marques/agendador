import 'package:agendador/Screen/empresa.dart';
import 'package:agendador/Screen/favoritos.dart';
import 'package:agendador/Screen/home_screen.dart';
import 'package:agendador/Screen/reserva_empresa_seleciona_dia.dart';
import 'package:agendador/Screen/reserva_empresa_seleciona_servico.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';

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
    GoRoute(
      path: '/favoritos/empresa/reserva_empresa_seleciona_servico',
      builder: (context, state) => SelecionaServico(),
    ),
    GoRoute(
        path: '/favoritos/empresa/reserva_empresa_seleciona_dia',
        builder: (context, state) => SelecionarDia()),
  ],
);
