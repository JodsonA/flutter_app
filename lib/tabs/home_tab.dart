import 'package:flutter/material.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//import 'package:transparent_image/transparent_image.dart';

 class HomeTab extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      Widget _buildBodyBack() => Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255,238,130,238),
            Color.fromARGB(255,186,85,211)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
    );

    return Stack(
      children: <Widget>[
        _buildBodyBack(),
         CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 5.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Bem vindo"),
                centerTitle: true,
              ),
            ),  
          ],
        ),
      ],
    );
  }
}
