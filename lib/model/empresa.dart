import 'package:uuid/uuid.dart';

var uuid = Uuid();

class Empresa {
  final String? id;
  final String? nome;
  final String? avaliacao;
  final String? telefone;
  final String? descricao;
  final String? endereco;
  final String? imagem;
  final String? redesocial;

  Empresa({
    this.id,
    this.nome,
    this.avaliacao,
    this.telefone,
    this.descricao,
    this.endereco,
    this.imagem,
    this.redesocial,
  });

  Empresa.empty()
      : id = uuid.v1(),
        nome = 'Gabriel',
        avaliacao = '',
        descricao = 'Descrição',
        endereco = 'Brasil',
        imagem = 'images/AtivaIdade.jpg',
        redesocial = '@Gabriel',
        telefone = '1999999-9999';

  Empresa.fromMap(Map<String, dynamic> map)
      : id = map['eid'],
        nome = map['enome'],
        avaliacao = map['eavaliacao'],
        descricao = map['edescrição'],
        endereco = map['eendereco'],
        imagem = map['eimagem'],
        redesocial = map['eredesocial'],
        telefone = map['etelefone'];

  Map<String, dynamic> toJson() => {
        'eid': id,
        'enome': nome,
        'eavalicao': avaliacao,
        'etelefone': telefone,
        'edescricao': descricao,
        'eendereco': endereco,
        'eimagem': imagem,
        'eredesocial': redesocial,
      };
}
