import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';

final AppTheme _appTheme = AppTheme();

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Cadastro',
            style: _appTheme.textoPadraoAppBar,
          ),
        ),
        body: Container(
          color: _appTheme.primary,
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: constraints.maxHeight * .1,
                    width: constraints.maxWidth * .7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: _appTheme.tertiary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        style: _appTheme.textoFormField,
                        showCursor: false,
                        decoration: InputDecoration(
                            label: Text('Nome', style: _appTheme.textoLabel),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
