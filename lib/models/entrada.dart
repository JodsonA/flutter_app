import 'package:flutter/foundation.dart';

class Entrada {
  final String id;
  final String titulo;
  final double valor;
  final DateTime data;

  Entrada({
    @required this.id,
    @required this.titulo,
    @required this.valor,
    @required this.data,
  });
}
