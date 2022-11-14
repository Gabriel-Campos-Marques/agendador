import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';

final AppTheme _appTheme = AppTheme();

class Empresa extends StatelessWidget {
  const Empresa({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            color: _appTheme.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Corpo(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    height: constraints.maxHeight * .1,
                    width: constraints.maxWidth * .6,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Reservar',
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

class Corpo extends StatelessWidget {
  const Corpo({super.key, required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImagemEmpresa(height: height, width: width),
        TituloEmpresa(appTheme: _appTheme),
        AvaliacaoEmpresa(appTheme: _appTheme, height: height),
        DescricaoEmpresa(appTheme: _appTheme, height: height, width: width),
        IconsSocialNetwork(height: height, width: width),
      ],
    );
  }
}

class DescricaoEmpresa extends StatelessWidget {
  const DescricaoEmpresa({
    Key? key,
    required AppTheme appTheme,
    required this.height,
    required this.width,
  })  : _appTheme = appTheme,
        super(key: key);

  final AppTheme _appTheme;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: height * .2,
        child: SingleChildScrollView(
          child: Text(
            'Quem Somos?'
            'vida ativo é muito benéfico para a saúde, autoestima, '
            'bem estar, equilíbrio emocional e principalmente para retardar'
            'vida ativo é muito benéfico para a saúde, autoestima, '
            'bem estar, equilíbrio emocional e principalmente para retardar'
            'vida ativo é muito benéfico para a saúde, autoestima, '
            'bem estar, equilíbrio emocional e principalmente para retardar'
            'É cientificamente comprovado que ter um estilo de '
            'vida ativo é muito benéfico para a saúde, autoestima, '
            'bem estar, equilíbrio emocional e principalmente para retardar'
            ' o envelhecimento. É por esse e tantos outros fatores que as atividades'
            ' físicas são tão recomendadas por médicos independente da idade da pessoa. '
            'No grupo de atividades ATIVAIDADE,',
            style: _appTheme.textoPadrao,
          ),
        ),
      ),
    );
  }
}

class AvaliacaoEmpresa extends StatelessWidget {
  const AvaliacaoEmpresa({
    Key? key,
    required AppTheme appTheme,
    required this.height,
  })  : _appTheme = appTheme,
        super(key: key);

  final AppTheme _appTheme;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: IconsStar(appTheme: _appTheme, height: height),
    );
  }
}

class TituloEmpresa extends StatelessWidget {
  const TituloEmpresa({
    Key? key,
    required AppTheme appTheme,
  })  : _appTheme = appTheme,
        super(key: key);

  final AppTheme _appTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
        child: Text(
          'Academia AtivaIdade',
          style: _appTheme.textoNomeEmpresa,
        ),
      ),
    );
  }
}

class IconsStar extends StatelessWidget {
  const IconsStar({
    Key? key,
    required AppTheme appTheme,
    required this.height,
  })  : _appTheme = appTheme,
        super(key: key);

  final AppTheme _appTheme;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: height * .04,
          color: _appTheme.star,
        ),
        Icon(
          Icons.star,
          size: height * .04,
          color: _appTheme.star,
        ),
        Icon(
          Icons.star,
          size: height * .04,
          color: _appTheme.star,
        ),
        Icon(
          Icons.star,
          size: height * .04,
          color: _appTheme.star,
        ),
        Icon(
          Icons.star,
          size: height * .04,
          color: _appTheme.star,
        ),
      ],
    );
  }
}

class IconsSocialNetwork extends StatelessWidget {
  const IconsSocialNetwork(
      {Key? key, required this.height, required this.width})
      : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 4.0),
          child: Row(
            children: [
              SizedBox(
                height: height * .07,
                width: width * .07,
                child: Image.asset('images/whatsapp.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  '(19) 99153 - 7169',
                  style: _appTheme.textoPadrao,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 4.0),
          child: Row(
            children: [
              SizedBox(
                height: height * .07,
                width: width * .07,
                child: Image.asset('images/instagram.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  '@AtivaIdade',
                  style: _appTheme.textoPadrao,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 4.0),
          child: Row(
            children: [
              SizedBox(
                height: height * .07,
                width: width * .07,
                child: Image.asset('images/google-maps.png'),
              ),
              SizedBox(
                width: width * .9,
                child: Text(
                  'Rua Paschoal Travaglia 226 - Americana - SP',
                  overflow: TextOverflow.ellipsis,
                  style: _appTheme.textoPadrao,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ImagemEmpresa extends StatelessWidget {
  const ImagemEmpresa({Key? key, required this.height, required this.width})
      : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 32,
      shadowColor: Colors.black,
      child: SizedBox(
        height: height * .35,
        width: double.maxFinite,
        child: Image.asset(
          'images/AtivaIdade.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}