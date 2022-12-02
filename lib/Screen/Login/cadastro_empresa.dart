import 'package:agendador/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

final AppTheme _appTheme = AppTheme();

class CadastroEmpresa extends StatelessWidget {
  const CadastroEmpresa({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              color: _appTheme.primary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Text(
                            'Cadastrar Empresa',
                            style: _appTheme.textoPadraoAppBar,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 32.0),
                          child: Formulario(
                            heigth: constraints.maxHeight,
                            width: constraints.maxWidth,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Cadastrar(
                    heigth: constraints.maxHeight,
                    width: constraints.maxWidth,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Formulario extends StatefulWidget {
  Formulario({
    Key? key,
    required this.heigth,
    required this.width,
  }) : super(key: key);

  final double heigth;
  final double width;

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  List<String> items = ['Salão de beleza', 'Farmacia', 'Musica'];

  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.heigth * .7,
      width: widget.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextInput(
              hint: '00.000.000/0000-00',
              mask: '##.###.###/####-##',
              label: 'CNPJ',
              heigth: widget.heigth,
              width: widget.width,
              keyboardType: TextInputType.number,
            ),
            TextInput(
                hint: 'Nome da Empresa',
                label: 'Razão Social',
                heigth: widget.heigth,
                width: widget.width,
                keyboardType: TextInputType.name),
            TextInput(
                hint: '(00) 0 0000-0000',
                mask: '(##) # ####-####',
                label: 'Telefone',
                heigth: widget.heigth,
                width: widget.width,
                keyboardType: TextInputType.number),
            TextInput(
                hint: 'Rua Paschoal de Cristo - nº31, Sumaré - São Paulo',
                label: 'Endereço',
                heigth: widget.heigth,
                width: widget.width,
                keyboardType: TextInputType.number),
            TextInput(
                hint: '01/01/2001',
                mask: '##/##/####',
                label: 'Data de fundação',
                heigth: widget.heigth,
                width: widget.width,
                keyboardType: TextInputType.number),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: _appTheme.tertiary,
                    borderRadius: BorderRadius.circular(5)),
                width: widget.width * .85,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: DropdownButtonFormField<String>(
                    dropdownColor: _appTheme.primary,
                    style: _appTheme.textoFormField,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: _appTheme.secondary,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      label: Text(
                        'Área de Atuação',
                        style: _appTheme.textoLabel,
                      ),
                    ),
                    items: items
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ),
                        )
                        .toList(),
                    onChanged: (item) => setState(() => selectedItem = item),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.heigth,
    required this.width,
    required this.label,
    required this.keyboardType,
    required this.hint,
    this.mask,
  }) : super(key: key);

  final double heigth;
  final double width;
  final String label;
  final String hint;
  final TextInputType keyboardType;
  final String? mask;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: heigth * .09,
        width: width * .85,
        decoration: BoxDecoration(
          color: _appTheme.tertiary,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: TextFormField(
            inputFormatters: [
              MaskTextInputFormatter(
                mask: mask,
              )
            ],
            keyboardType: keyboardType,
            style: _appTheme.textoFormField,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: _appTheme.textoHint,
              label: Text(label),
              labelStyle: _appTheme.textoLabel,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

class Cadastrar extends StatelessWidget {
  const Cadastrar({
    Key? key,
    required this.heigth,
    required this.width,
  }) : super(key: key);

  final double heigth;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heigth * .1,
      width: width * .55,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(_appTheme.tertiary),
            elevation: MaterialStateProperty.all(15),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          onPressed: () {
            context.push('/login/cadastre-se/cadastroEmpresa/servicosEmpresa');
          },
          child: Text(
            'Avançar',
            style: _appTheme.textoBotoes,
          ),
        ),
      ),
    );
  }
}
