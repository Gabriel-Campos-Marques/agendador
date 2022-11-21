import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';

final AppTheme _appTheme = AppTheme();

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          // appBar: AppBar(
          //   title: Text(
          //     'Cadastro',
          //     style: _appTheme.textoPadraoAppBar,
          //   ),
          // ),
          body: SingleChildScrollView(
            child: Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              color: _appTheme.primary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Text(
                        'Cadastro',
                        style: _appTheme.textoPadraoAppBar,
                      ),
                    ),
                  ),
                  Formulario(
                    heigth: constraints.maxHeight,
                    width: constraints.maxWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Cadastrar(
                      heigth: constraints.maxHeight,
                      width: constraints.maxWidth,
                    ),
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

class Formulario extends StatelessWidget {
  const Formulario({
    Key? key,
    required this.heigth,
    required this.width,
  }) : super(key: key);

  final double heigth;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextInput(
          label: 'Nome',
          heigth: heigth,
          width: width,
          keyBoardType: TextInputType.name,
        ),
        TextInput(
          label: 'Sobrenome',
          heigth: heigth,
          width: width,
          keyBoardType: TextInputType.name,
        ),
        TextInput(
          label: 'Email',
          heigth: heigth,
          width: width,
          keyBoardType: TextInputType.emailAddress,
        ),
        TextInput(
          label: 'Senha',
          heigth: heigth,
          width: width,
          keyBoardType: TextInputType.text,
        ),
        TextInput(
          label: 'Confirme sua senha',
          heigth: heigth,
          width: width,
          keyBoardType: TextInputType.text,
        ),
        TextInput(
          label: 'Celular',
          heigth: heigth,
          width: width,
          keyBoardType: TextInputType.multiline,
        ),
      ],
    );
  }
}

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.heigth,
    required this.width,
    required this.label,
    required this.keyBoardType,
  }) : super(key: key);

  final double heigth;
  final double width;
  final String label;
  final TextInputType keyBoardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: heigth * .09,
        width: width * .85,
        decoration: BoxDecoration(
          color: _appTheme.tertiary,
          borderRadius: BorderRadius.circular(45),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: TextFormField(
            keyboardType: keyBoardType,
            style: _appTheme.textoFormField,
            decoration: InputDecoration(
              label: Text(label),
              labelStyle: _appTheme.textoLabel,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

class Cadastrar extends StatelessWidget {
  const Cadastrar({
    Key? key,
    required this.heigth,
    required this.width,
  }) : super(key: key);

  final double heigth;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heigth * .1,
      width: width * .7,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(_appTheme.tertiary),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Cadastrar',
          style: _appTheme.textoBotoes,
        ),
      ),
    );
  }
}
