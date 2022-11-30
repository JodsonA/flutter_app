import 'package:projetoflutterfinal/models/categoria.dart';
import 'package:projetoflutterfinal/utils/rotas_app.dart';
import 'package:flutter/material.dart';

class ItemCategoria extends StatelessWidget {
  final Categoria categoria;

  const ItemCategoria(this.categoria);

  void _selectCategoria(BuildContext context) {
    //Navigator.of(context).push(
    //  MaterialPageRoute(
    //    builder: (_) {
    //      return ScreenRefeicaoCategorias(categoria);
    //    },
    //  ),
    //);
    Navigator.of(context).pushNamed(
      RotasApp.PRODUTOS,
      arguments: categoria,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategoria(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          categoria.titulo,
          // ignore: deprecated_member_use
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                categoria.cor.withOpacity(0.5),
                categoria.cor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            )),
      ),
    );
  }
}
