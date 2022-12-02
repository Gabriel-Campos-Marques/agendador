import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final AppTheme _appTheme = AppTheme();

class SelecionaUsuarioEmpresa extends StatelessWidget {
  const SelecionaUsuarioEmpresa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: _appTheme.primary,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cadastrar:',
                style: _appTheme.textoPadraoAppBar,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 150,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(20),
                              backgroundColor: MaterialStateProperty.all(
                                  _appTheme.tertiary)),
                          onPressed: () => context
                              .push('/login/cadastre-se/cadastroUsuario'),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Usuário',
                            style: _appTheme.textoSelecaoUsuarioEmpresa,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        height: 100,
                        width: 150,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(20),
                              backgroundColor: MaterialStateProperty.all(
                                  _appTheme.tertiary)),
                          onPressed: () => context
                              .push('/login/cadastre-se/cadastroEmpresa'),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Empresa',
                            style: _appTheme.textoSelecaoUsuarioEmpresa,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
