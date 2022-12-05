// ignore_for_file: file_names

import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../model/empresa.dart';
import '../favoritos.dart';

final AppTheme _appTheme = AppTheme();

class CardsFavoritos extends StatelessWidget {
  const CardsFavoritos(
      {super.key,
      required this.height,
      required this.width,
      required this.empresa});

  final Empresa empresa;

  final double height;
  final double width;

  final AlignmentDirectional _alignmentDirectional =
      AlignmentDirectional.bottomEnd;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('/favoritos/empresa');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 8.0,
          shadowColor: const Color.fromARGB(255, 144, 144, 144),
          borderRadius: BorderRadius.circular(15),
          color: _appTheme.primary,
          child: SizedBox(
            height: height * .27,
            width: width * .85,
            child: Stack(
              alignment: _alignmentDirectional,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    empresa.imagem!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Container(
                  height: height * .1,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: _appTheme.sombra,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              width: width * .5,
                              child: Text(
                                empresa.nome!,
                                style: _appTheme.textoPadrao,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          IconStar(height: height, width: width),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              empresa.telefone!,
                              style: _appTheme.textoPadrao,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              width: width * .5,
                              child: Text(
                                'Seg. - Sab. as 9:30 até 18h',
                                style: _appTheme.textoPadrao,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
