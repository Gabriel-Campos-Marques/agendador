import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final AppTheme _appTheme = AppTheme();

class CadastroServicoEmpresa extends StatelessWidget {
  const CadastroServicoEmpresa({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              color: _appTheme.primary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Text(
                      'Informações da Empresa',
                      style: _appTheme.textoTitulos,
                    ),
                  ),
                  Informacoes(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                  ),
                  Avancar(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Informacoes extends StatelessWidget {
  const Informacoes({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InformacoesEmpresa(
          rota: '',
          text: 'Horário de Funcionamento',
          height: height,
          width: width,
        ),
        InformacoesEmpresa(
          rota: '',
          text: 'Servicos',
          height: height,
          width: width,
        ),
        InformacoesEmpresa(
          rota: '',
          text: 'Funcionarios',
          height: height,
          width: width,
        ),
        InformacoesEmpresa(
          rota: '',
          text: 'Redes Sociais',
          height: height,
          width: width,
        ),
      ],
    );
  }
}

class Avancar extends StatelessWidget {
  const Avancar({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        height: height * .1,
        width: width * .55,
        child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(_appTheme.tertiary),
            ),
            onPressed: (() {
              context.push(
                  '/login/cadastre-se/cadastroEmpresa/servicosEmpresa/cadastroEmpresaFinalizado');
            }),
            child: Text(
              'Avançar',
              style: _appTheme.textoBotoes,
            )),
      ),
    );
  }
}

class InformacoesEmpresa extends StatelessWidget {
  const InformacoesEmpresa({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    required this.rota,
  }) : super(key: key);

  final double height;
  final double width;
  final String text;
  final String rota;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(rota),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: height * .12,
          width: width * .8,
          decoration: BoxDecoration(
            color: _appTheme.tertiary,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  text,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    color: _appTheme.secondary,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
