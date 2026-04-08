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
  String resultado = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tela A")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(resultado, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Buscar cidade"),
              onPressed: () async {
                final cidade = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaB()),
                );
                setState(() {
                  resultado = "Cidade: $cidade";
                });
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
    return Scaffold(
      appBar: AppBar(title: const Text("Tela B")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Enviar: 'São Paulo'"),
              onPressed: () {
                Navigator.pop(context, "São Paulo");
              },
            ),
          ],
        ),
      ),
    );
  }
}
