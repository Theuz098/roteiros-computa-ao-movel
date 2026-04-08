import 'package:flutter/material.dart';

class NotaTile extends StatelessWidget {
  final String nome;
  const NotaTile({super.key, required this.nome});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(nome),
    );
  }
}
