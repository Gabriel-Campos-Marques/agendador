import 'package:agendador/Screen/Favoritos/widget/cardsFavoritos.dart';
import 'package:agendador/model/empresa.dart';
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
            title: const Center(child: Text('Favoritos')),
          ),
          bottomNavigationBar: BottomNavigator(height: constrainst.maxHeight),
          body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: _appTheme.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: CardsFavoritos(
                    empresa: Empresa(
                        nome: 'Gabriel',
                        avaliacao: 'Gabriel',
                        telefone: '984291707',
                        descricao: 'Gabriel',
                        endereco: 'Rua Paschoal',
                        imagem: 'images/AtivaIdade.jpg'),
                    height: constrainst.maxHeight,
                    width: constrainst.maxWidth,
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

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * .1,
      decoration: BoxDecoration(
        color: _appTheme.tertiary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Icon(
              Icons.bookmark,
              color: Colors.black,
              size: 45,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 45,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image.asset(
                  'images/Captura de tela 2022-11-28 211520.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconStar extends StatelessWidget {
  const IconStar({super.key, required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: height * .03,
          color: _appTheme.star,
        ),
        Icon(
          Icons.star,
          size: height * .03,
          color: _appTheme.star,
        ),
        Icon(
          Icons.star,
          size: height * .03,
          color: _appTheme.star,
        ),
        Icon(
          Icons.star,
          size: height * .03,
          color: _appTheme.star,
        ),
        Icon(
          Icons.star,
          size: height * .03,
          color: _appTheme.star,
        ),
      ],
    );
  }
}
