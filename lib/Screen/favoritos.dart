import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';

final AppTheme _appTheme = AppTheme();

class Favoritos extends StatelessWidget {
  const Favoritos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrainst) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Favoritos'),
          ),
          body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            color: _appTheme.primary,
            child: Column(
              children: [
                Cards(
                  height: constrainst.maxHeight,
                  width: constrainst.maxWidth,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({super.key, required this.height, required this.width});

  final double height;
  final double width;

  final AlignmentDirectional _alignmentDirectional =
      AlignmentDirectional.bottomEnd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 8.0,
        shadowColor: const Color.fromARGB(255, 144, 144, 144),
        borderRadius: BorderRadius.circular(15),
        color: _appTheme.primary,
        child: Container(
          height: height * .27,
          width: width * .85,
          child: Stack(
            alignment: _alignmentDirectional,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'images/aula_violao_persona_centro_ensino1.jpg',
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
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'Aula de Violão Com Marcos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
