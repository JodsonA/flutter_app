import 'package:flutter/material.dart';

class FormProduto extends StatefulWidget {
  final void Function(String, double) onSubmit;

  FormProduto(this.onSubmit);

  @override
  _FormProdutoState createState() => _FormProdutoState();
}

class _FormProdutoState extends State<FormProduto> {
  final tituloController = TextEditingController();
  final valorController = TextEditingController();

  _enviarFormulario() {
    final titulo = tituloController.text;
    final valor = double.tryParse(valorController.text) ?? 0.0;

    if (titulo.isEmpty || valor <= 0) {
      return;
    }

    widget.onSubmit(titulo, valor);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: tituloController,
              onSubmitted: (_) => _enviarFormulario,
              //onChanged: (newValue) => titulo = newValue,
              decoration: InputDecoration(
                labelText: 'Item de entrada',
              ),
            ),
            TextField(
              controller: valorController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => _enviarFormulario,
              //onChanged: (newValue) => valor = newValue,
              decoration: InputDecoration(
                labelText: 'Valor do item',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('Nova entrada'),
                  textColor: Colors.blue,
                  onPressed: _enviarFormulario,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
