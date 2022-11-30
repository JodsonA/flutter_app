import 'package:projetoflutterfinal/components/item_categoria.dart';
import 'package:projetoflutterfinal/tipos/dados.dart';
import 'package:flutter/material.dart';

class ScreenCategoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: CATEGORIA_DADOS.map((categoria) {
          return ItemCategoria(categoria);
        }).toList(),
      ),
    );
  }
}
