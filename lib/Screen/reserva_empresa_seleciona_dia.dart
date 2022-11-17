import 'package:agendador/Components/calendar.dart';
import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SelecionarDia extends StatefulWidget {
  SelecionarDia({super.key});

  @override
  State<SelecionarDia> createState() => _SelecionarDiaState();
}

class _SelecionarDiaState extends State<SelecionarDia> {
  final AppTheme _appTheme = AppTheme();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Reservar'),
          ),
          body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: _appTheme.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 42.0, left: 16.0, right: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Calendar(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    height: constraints.maxHeight * .1,
                    width: constraints.maxWidth * .6,
                    child: ElevatedButton(
                      onPressed: () {},
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