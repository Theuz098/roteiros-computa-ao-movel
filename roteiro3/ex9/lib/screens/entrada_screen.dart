import 'package:meu_app/screens/anotacoes_screen.dart';
import 'package:flutter/material.dart';

class EntradaScreen extends StatelessWidget {
  const EntradaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Entrada")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AnotacoesScreen()),
                );
              },
              child: const Text("Ver anotações"),
            ),
          ],
        ),
      ),
    );
  }
}
