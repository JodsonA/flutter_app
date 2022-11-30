//import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:projetoflutterfinal/components/form_produtos.dart';
//import 'package:projetoflutterfinal/models/produtos.dart';
import 'package:projetoflutterfinal/tabs/home_tab.dart';
import 'package:projetoflutterfinal/widget/custom_drawer.dart';
import 'package:projetoflutterfinal/widget/form_button.dart';
class HomeScreen extends StatelessWidget {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
     
      
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
          ),
        Scaffold(
          appBar: AppBar(
            title: Text("Cadastro"),
            centerTitle: true,
          ),
          floatingActionButton: FormButton(),
          drawer: CustomDrawer(_pageController),           
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produtos"),
            centerTitle: true,
          ),
           drawer: CustomDrawer(_pageController),

        ),
      ],
    );
  }
}
