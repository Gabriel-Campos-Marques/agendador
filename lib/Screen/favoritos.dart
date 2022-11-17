import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                    'images/AtivaIdade.jpg',
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
                                'Academia AtivaIdade',
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
                              '(19) 3466-6069',
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
