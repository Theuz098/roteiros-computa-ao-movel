import 'package:flutter/material.dart';
import 'package:meu_app/screens/cadastro_screen.dart';
import 'package:meu_app/screens/sacola_screen.dart';
import '../services/preferencias_service.dart';

class PainelScreen extends StatefulWidget {
  const PainelScreen({super.key});

  @override
  State<PainelScreen> createState() => _PainelScreenState();
}

class _PainelScreenState extends State<PainelScreen> {
  final TextEditingController controlador = TextEditingController();
  final PreferenciasService prefs = PreferenciasService();
  double opacidade = 0;

  List<String> itens = [];
  List<String> secao = ["Selecione uma seção"];

  @override
  void initState() {
    super.initState();
    _carregarItens();
    if (itens.isEmpty) {
      opacidade = 1;
    } else {
      opacidade = 0;
    }
  }

  Future<void> _carregarItens() async {
    final salvos = await prefs.carregar();
    setState(() {
      itens = salvos;
      secao = salvos;
    });
  }

  Future<void> _adicionar() async {
    if (controlador.text.isEmpty) return;
    setState(() {
      itens.add(controlador.text);
      controlador.clear();
      opacidade = 0;
    });
    await prefs.salvar(itens);
  }

  Future<void> _remover(int index) async {
    setState(() {
      itens.removeAt(index);
      if (itens.isEmpty) {
        opacidade = 1;
      }
    });
    await prefs.salvar(itens);
  }

  Future<void> _limparTudo() async {
    setState(() {
      itens.clear();
      opacidade = 1;
    });
  }

  Future<void> _irParaSecao(String nome) async {
    setState(() {
      secao = [nome];
    });
    await prefs.salvar(secao);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Painel de Notas')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(secao.isNotEmpty ? secao.first : "Nenhuma seção"),
            AnimatedOpacity(
              opacity: opacidade,
              duration: const Duration(microseconds: 1),
              child: const Text("Lista Vazia"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: controlador,
              decoration: const InputDecoration(
                labelText: 'Nova nota',
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _adicionar,
                  child: const Text('Adicionar'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _limparTudo,
                  child: const Text('Limpar tudo'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SacolaScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                ElevatedButton(
                  onPressed: () => _irParaSecao("Seção A"),
                  child: const Text('Seção A'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _irParaSecao("Seção B"),
                  child: const Text('Seção B'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _irParaSecao("Seção C"),
                  child: const Text('Seção C'),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CadastroScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: itens.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(itens[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _remover(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
