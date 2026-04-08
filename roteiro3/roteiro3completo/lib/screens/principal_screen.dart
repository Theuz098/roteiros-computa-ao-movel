import 'package:flutter/material.dart';
import 'package:meu_app/screens/vitrine_screen.dart';
import 'expandido_screen.dart';
import 'package:meu_app/widgets/acao_button.dart';

class PrincipalScreen extends StatelessWidget {
  const PrincipalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Principal")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AcaoButton(
              texto: "Ver Expandido",
              cor: Colors.orange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExpandidoScreen()),
                );
              },
            ),
            const SizedBox(height: 20),
            AcaoButton(
              texto: "Ver Vitrine",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VitrineScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
