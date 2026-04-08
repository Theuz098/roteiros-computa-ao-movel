import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TelaA());
  }
}

class TelaA extends StatefulWidget {
  const TelaA({super.key});
  @override
  State<TelaA> createState() => _TelaAState();
}

class _TelaAState extends State<TelaA> {
  String info = "Produto atual: nenhum";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tela A")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(info, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Digitar produto"),
              onPressed: () async {
                final produto = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaB()),
                );
                if (produto != null) {
                  setState(() {
                    info = "Produto recebido: $produto";
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TelaB extends StatelessWidget {
  const TelaB({super.key});
  @override
  Widget build(BuildContext context) {
    String digitado = "";
    return Scaffold(
      appBar: AppBar(title: const Text("Tela B")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Digite o produto:"),
              onChanged: (valor) {
                digitado = valor;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Confirmar"),
              onPressed: () {
                Navigator.pop(context, digitado);
              },
            ),
          ],
        ),
      ),
    );
  }
}
