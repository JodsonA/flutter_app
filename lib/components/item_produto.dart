import 'package:projetoflutterfinal/models/produtos.dart';
import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  final Produto produto;

  const ItemProduto(this.produto);

  void _selectProduto() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectProduto,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
