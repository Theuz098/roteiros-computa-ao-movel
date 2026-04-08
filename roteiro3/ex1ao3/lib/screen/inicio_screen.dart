import 'package:meu_app/screen/sobre_screen.dart';
import 'package:meu_app/screen/contato_screen.dart';
import 'package:meu_app/widgets/cabecalho_text.dart';
import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Início")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CabecalhoText(texto: "Onde você quer ir?"),
            ElevatedButton(
              child: const Text("Sobre"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SobreScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Contato"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContatoScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
