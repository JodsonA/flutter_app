
import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
import 'package:projetoflutterfinal/components/item_produto.dart';
import 'package:projetoflutterfinal/models/categoria.dart';
import 'package:projetoflutterfinal/tipos/dados.dart';

class ProdutoCategoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final categoria = ModalRoute.of(context).settings.arguments as Categoria;
     

     final categoriaProduto = PRODUTO_DADOS.where( (variedades) {
      return   variedades.categorias.contains(categoria.id);
      }
     );
      return Scaffold(
        appBar: AppBar(
        title: Text('Produtos'),
      ),
        body: ListView.builder(
        itemCount: categoriaProduto.length,
        itemBuilder: (ctx, index) {
          return ItemProduto(categoriaProduto[index]);
        }
      ),
      );   
  }
}