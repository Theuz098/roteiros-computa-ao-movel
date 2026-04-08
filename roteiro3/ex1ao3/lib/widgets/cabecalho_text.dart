import 'package:flutter/material.dart';

class CabecalhoText extends StatelessWidget {
  final String texto;
  const CabecalhoText({super.key, required this.texto});
  @override
  Widget build(BuildContext context) {
    return Text(texto, style: const TextStyle(fontSize: 50));
  }
}
