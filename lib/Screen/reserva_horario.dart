import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final AppTheme _appTheme = AppTheme();

class ReservaHorario extends StatelessWidget {
  const ReservaHorario({super.key});

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
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Text(
                    'Selecionar horário',
                    style: _appTheme.textoPadraoAppBar,
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 75,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _appTheme.tertiary,
                          ),
                          child: Center(
                            child: Text(
                              '13:00',
                              style: _appTheme.textoBotoes,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 75,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: _appTheme.tertiary,
                            ),
                            child: Center(
                              child: Text(
                                '14:00',
                                style: _appTheme.textoBotoes,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 75,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _appTheme.tertiary,
                          ),
                          child: Center(
                            child: Text(
                              '15:00',
                              style: _appTheme.textoBotoes,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 75,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: _appTheme.tertiary,
                            ),
                            child: Center(
                              child: Text(
                                '16:00',
                                style: _appTheme.textoBotoes,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Container(
                    height: constraints.maxHeight * .1,
                    width: constraints.maxWidth * .6,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(15),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(_appTheme.tertiary),
                      ),
                      onPressed: () {
                        context.push(
                            '/favoritos/empresa/reserva_empresa_seleciona_horario');
                      },
                      child: Text(
                        'Avançar',
                        style: _appTheme.textoBotoes,
                      ),
                    ),
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
