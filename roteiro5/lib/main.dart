import 'package:flutter/material.dart';
import 'package:meu_app/screens/painel_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PainelScreen());
  }
}
