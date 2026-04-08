import 'package:flutter/material.dart';

class ListaSimplesScreen extends StatelessWidget {
  const ListaSimplesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista Simples")),
      body: ListView(
        children: const [
          ListTile(title: Text("Caneta")),
          ListTile(title: Text("Caderno")),
          ListTile(title: Text("Régua")),
          ListTile(title: Text("Borracha")),
        ],
      ),
    );
  }
}
