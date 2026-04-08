import 'package:meu_app/screens/catalogo_screen.dart';
import 'package:meu_app/screens/usuario_screen.dart';
import 'package:meu_app/widgets/botao_custom.dart';
import 'package:meu_app/widgets/lista_screen.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu Principal")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BotaoCustom(
              texto: "Ver Usuário",
              cor: Colors.teal,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UsuarioScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            BotaoCustom(
              texto: "Ver Catálogo",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CatalogoScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            BotaoCustom(
              texto: "Ver Lista",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListaScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
