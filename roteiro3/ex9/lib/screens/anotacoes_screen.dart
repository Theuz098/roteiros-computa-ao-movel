import 'package:meu_app/widgets/nota_tile.dart';
import 'package:flutter/material.dart';

class AnotacoesScreen extends StatefulWidget {
  const AnotacoesScreen({super.key});
  @override
  State<AnotacoesScreen> createState() => _AnotacoesScreenState();
}

class _AnotacoesScreenState extends State<AnotacoesScreen> {
  final List<String> notas = [];
  final TextEditingController _campo = TextEditingController();

  void _adicionar() {
    if (_campo.text.isNotEmpty) {
      setState(() {
        notas.add(_campo.text);
      });
      _campo.clear();
    }
  }

  void _remover(String nota) {
    if (nota.isNotEmpty) {
      setState(() {
        notas.remove(nota);
      });
      _campo.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anotações")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _campo,
                    decoration: const InputDecoration(labelText: "Nova anotação"),
                  ),
                ),
                ElevatedButton(
                  onPressed: _adicionar,
                  child: const Text("Adicionar"),
                ),
                ElevatedButton(
                  onPressed: () {
                    _remover(_campo.text);
                  },
                  child: const Text("Remover"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notas.length,
              itemBuilder: (context, index) {
                return NotaTile(nome: notas[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
