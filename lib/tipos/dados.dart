import 'package:projetoflutterfinal/models/categoria.dart';
import 'package:projetoflutterfinal/models/produtos.dart';
import 'package:flutter/material.dart';

const CATEGORIA_DADOS = const [
  Categoria(
    id: '1',
    titulo: 'Perfumes',
    cor: Colors.grey,
  ),
  Categoria(
    id: '2',
    titulo: 'Sabonetes',
    cor: Colors.green,
  ),
  Categoria(
    id: '3',
    titulo: 'Hidratantes',
    cor: Colors.yellow,
  ),
  Categoria(
    id: '4',
    titulo: 'Cosmeticos',
    cor: Colors.red,
  ),
  
];
const PRODUTO_DADOS = const [
  Produto(
    id:'p1',
    titulo: 'Malbec',
    complexidade: Complexidade.Dificil,
    custo: Custo.Justo,
    categorias: ['c1'],
  ),
  Produto(
    id:'p2',
    titulo: 'Hid. Ameixa',
    complexidade: Complexidade.Dificil,
    custo: Custo.Justo,
    categorias: ['c4'],
  )


];