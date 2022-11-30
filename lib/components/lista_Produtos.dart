
import 'package:flutter/material.dart';

import 'package:projetoflutterfinal/components/item_produto.dart';

class ListaEntrada extends StatelessWidget {
  final List<ItemProduto> itens;

  ListaEntrada(this.itens);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: itens.isEmpty
            ? Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Nenhum item na lista',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            : ListView.builder(
                itemCount: itens.length,
                itemBuilder: (ctx, index) {
                  final tr = itens[index];
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                          ),
                          padding: EdgeInsets.all(10)
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ));
  }
}
