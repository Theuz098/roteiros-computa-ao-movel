import 'package:flutter/material.dart';
import 'package:meu_app/services/preferencias_service.dart';

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({super.key});

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final TextEditingController nomeCtrl = TextEditingController();
  final TextEditingController telefoneCtrl = TextEditingController();
  final PreferenciasService prefs = PreferenciasService();

  List<String> nome = [];
  List<String> telefone = [];

  @override
  void initState() {
    super.initState();
    _carregarDados();
  }

  Future<void> _carregarDados() async {
    final nomes = await prefs.carregarPorChave("chave_nome");
    final telefones = await prefs.carregarPorChave("chave_telefone");

    setState(() {
      if (nomes.isNotEmpty) nomeCtrl.text = nomes.first;
      if (telefones.isNotEmpty) telefoneCtrl.text = telefones.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nomeCtrl,
              decoration: const InputDecoration(
                labelText: "Nome",
                border: UnderlineInputBorder(),
              ),
              onChanged: (valor) async {
                await prefs.salvarPorChave("chave_nome", [valor]);
              },
            ),
            const SizedBox(height: 10),
            TextField(
              controller: telefoneCtrl,
              decoration: const InputDecoration(
                labelText: "Telefone",
                border: UnderlineInputBorder(),
              ),
              onChanged: (valor) async {
                await prefs.salvarPorChave("chave_telefone", [valor]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
