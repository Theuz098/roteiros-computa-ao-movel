import 'package:flutter/material.dart';
import 'package:meu_app/services/sacola_service.dart';

class SacolaScreen extends StatefulWidget {
  const SacolaScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SacolaState();
}

class _SacolaState extends State<StatefulWidget> {
  final SacolaService sacolaPrefs = SacolaService();

  final List<String> catalogo = ["Item A", "Item B", "Item C"];
  List<String> sacola = [];

  @override
  void initState() {
    super.initState();
    _carregarSacola();
  }

  Future<void> _carregarSacola() async {
    final dados = await sacolaPrefs.carregar();
    setState(() {
      sacola = dados;
    });
  }

  Future<void> _adicionarItem(String item) async {
    setState(() {
      sacola.add(item);
    });
    await sacolaPrefs.salvar(sacola);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sacola de Compras")),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Itens Disponíveis",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: catalogo.map((item) {
              return ListTile(
                title: Text(item),
                trailing: ElevatedButton(
                  onPressed: () => _adicionarItem(item),
                  child: const Text("Adicionar"),
                ),
              );
            }).toList(),
          ),
          const Divider(height: 40, thickness: 2),
          const Text(
            "Itens na Sacola",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: sacola.isEmpty
                ? const Center(child: Text("Sacola vazia"))
                : ListView.builder(
                    itemCount: sacola.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.shopping_bag),
                        title: Text(sacola[index]),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
