import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final AppTheme _appTheme = AppTheme();

class SelecionaServico extends StatelessWidget {
  const SelecionaServico({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Selecionar Serviço'),
          ),
          body: Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            color: _appTheme.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Servicos(
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Servicos extends StatelessWidget {
  const Servicos({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      onTap: (() {
        return context.push('/favoritos/empresa/reserva_empresa_seleciona_dia');
      }),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: height * .25,
            width: width * .42,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                      offset: Offset(1, 1),
                      spreadRadius: 2,
                      blurRadius: 10)
                ]),
          ),
          Container(
            height: height * .232,
            width: width * .39,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: _appTheme.primary,
            ),
          ),
          Container(
            height: height * .22,
            width: width * .37,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: _appTheme.secondary,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.search,
                  size: 36,
                ),
                Center(
                  child: Text(
                    'Academia',
                    style: _appTheme.textoBotoes,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
