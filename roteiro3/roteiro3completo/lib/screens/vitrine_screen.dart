import 'package:flutter/material.dart';
import 'package:meu_app/widgets/artigo_tile.dart';

class VitrineScreen extends StatelessWidget {
  const VitrineScreen({super.key});
  final List<String> artigos = const [
    "Camiseta",
    "Calça",
    "Tênis",
    "Boné",
    "Mochila",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Vitrine")),
      body: ListView.builder(
        itemCount: artigos.length,
        itemBuilder: (context, index) {
          return ArtigoTile(nome: artigos[index]);
        },
      ),
    );
  }
}
