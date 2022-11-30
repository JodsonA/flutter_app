
import 'package:flutter/material.dart';
import 'package:projetoflutterfinal/components/form_produtos.dart';
//import 'package:projetoflutterfinal/models/produtos.dart';
 _addEntrada(String titulo, double valor) {
  
   
  }

  _abrirModalForm(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return FormProduto(_addEntrada);
        });
  }

class FormButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add, color: Colors.white,),
      onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>FormProduto(_abrirModalForm(context) ))
        );
      },
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
