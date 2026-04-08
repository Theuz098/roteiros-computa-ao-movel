import 'package:meu_app/screens/menu_screen.dart';
import 'package:meu_app/widgets/botao_custom.dart';
import 'package:flutter/material.dart';

class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Catálogo")),
      body: Center(
        child: BotaoCustom(
          texto: "Ir para Menu",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MenuScreen()),
            );
          },
        ),
      ),
    );
  }
}
