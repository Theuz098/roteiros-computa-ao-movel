import 'package:flutter/material.dart';

class ExpandidoScreen extends StatelessWidget {
  const ExpandidoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expandido")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Voltar"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
