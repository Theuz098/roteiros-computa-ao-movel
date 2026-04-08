import 'package:meu_app/widgets/item_tile.dart';
import 'package:flutter/material.dart';

class ListaScreen extends StatelessWidget {
  const ListaScreen({super.key});
  final List<String> itens = const [
    "Notebook",
    "Teclado",
    "Mouse",
    "Monitor",
    "Headset",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Itens")),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          return ItemTile(nome: itens[index]);
        },
      ),
    );
  }
}
