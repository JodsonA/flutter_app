import 'package:flutter/foundation.dart';

enum Complexidade {
  Simples,
  Medio,
  Dificil,
}

enum Custo {
  Barato,
  Justo,
  Caro,
}

class Produto {
  final String id;
  final List<String> categorias;
  final String titulo;
  final Complexidade complexidade;
  final Custo custo;

  const Produto ({
    @required this.id,
    @required this.categorias,
    @required this.titulo,
    @required this.complexidade,
    @required this.custo,
  });
}
