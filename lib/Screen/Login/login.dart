import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

final AppTheme _appTheme = AppTheme();

class Login extends StatelessWidget {
  const Login({super.key});

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
                    padding: const EdgeInsets.only(top: 64.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _appTheme.secondary,
                        image: const DecorationImage(
                          image: AssetImage('images/logo.jpg'),
                        ),
                      ),
                    ),
                  ),
                  LoginPassword(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                  ),
                  Botoes(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Botoes extends StatelessWidget {
  const Botoes({
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
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: SizedBox(
            height: height * .1,
            width: width * .45,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  _appTheme.tertiary,
                ),
              ),
              onPressed: () {},
              child: Text(
                'Acessar',
                style: _appTheme.textoBotoes,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            return context.push('/login/cadastre-se');
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Cadastre-se',
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                fontSize: 16,
                fontStyle: GoogleFonts.roboto().fontStyle,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class LoginPassword extends StatelessWidget {
  const LoginPassword({
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
        Container(
          height: height * .1,
          width: width * .8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: _appTheme.tertiary),
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: TextFormField(
              showCursor: false,
              style: _appTheme.textoFormField,
              decoration: InputDecoration(
                label: const Text('Login'),
                labelStyle: _appTheme.textoLabel,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Container(
            height: height * .1,
            width: width * .8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _appTheme.tertiary),
            child: Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: TextFormField(
                obscureText: true,
                showCursor: false,
                style: _appTheme.textoFormField,
                decoration: InputDecoration(
                  labelStyle: _appTheme.textoLabel,
                  label: const Text('Senha'),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
