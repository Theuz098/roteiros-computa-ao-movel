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
  String info = "Pontuação atual: 0";
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
              child: const Text("Escolher pontuação"),
              onPressed: () async {
                final pontos = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaB()),
                );
                if (pontos != null) {
                  setState(() {
                    info = "Pontuação recebida: $pontos";
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
    return Scaffold(
      appBar: AppBar(title: const Text("Tela B")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Enviar 50"),
              onPressed: () {
                Navigator.pop(context, 50);
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Enviar 100"),
              onPressed: () {
                Navigator.pop(context, 100);
              },
            ),
          ],
        ),
      ),
    );
  }
}
