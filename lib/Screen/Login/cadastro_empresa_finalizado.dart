import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';

final AppTheme _appTheme = AppTheme();

class CadastroConcluido extends StatelessWidget {
  const CadastroConcluido({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: _appTheme.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: const Concluido(),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: SizedBox(
                    height: constraints.maxHeight * .1,
                    width: constraints.maxWidth * .55,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(_appTheme.tertiary),
                        ),
                        onPressed: (() {}),
                        child: Text(
                          'Ir para o inicio',
                          style: _appTheme.textoBotoes,
                        )),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Concluido extends StatelessWidget {
  const Concluido({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          child: Icon(
            Icons.check_sharp,
            color: _appTheme.secondary,
            size: 150,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Text(
            'Reserva Realizada',
            style: _appTheme.textoPadraoAppBar,
          ),
        ),
      ],
    );
  }
}
