import 'package:agendador/Screen/Login/cadastro_empresa.dart';
import 'package:agendador/Screen/Login/cadastro_informacao_empresa.dart';
import 'package:agendador/Screen/Login/cadastro_usuario.dart';
import 'package:agendador/Screen/Login/seleciona_usuario_empresa.dart';
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
      builder: (context, state) => const SelecionaUsuarioEmpresa(),
    ),
    GoRoute(
      path: '/login/cadastre-se/cadastroUsuario',
      builder: (context, state) => const CadastroUsuario(),
    ),
    GoRoute(
      path: '/login/cadastre-se/cadastroEmpresa',
      builder: (context, state) => const CadastroEmpresa(),
    ),
    GoRoute(
      path: '/login/cadastre-se/cadastroEmpresa/servicosEmpresa',
      builder: (context, state) => CadastroServicoEmpresa(),
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
