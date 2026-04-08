import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TelaInicio(),
    );
  }
}

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});
  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  String aviso = "Nenhum dado recebido";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tela Início")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              aviso,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Ir para Tela Dados"),
              onPressed: () async {
                final retorno = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaDados(),
                  ),
                );
                if (retorno != null) {
                  setState(() {
                    aviso = "Dado recebido: $retorno";
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

class TelaDados extends StatelessWidget {
  const TelaDados({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tela Dados")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Enviar 99"),
          onPressed: () {
            Navigator.pop(context, 99);
          },
        ),
      ),
    );
  }
}
