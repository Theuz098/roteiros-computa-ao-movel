import 'package:flutter/material.dart';

class ArtigoTile extends StatelessWidget {
  final String nome;
  const ArtigoTile({super.key, required this.nome});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.inventory_2),
      title: Text(nome),
      subtitle: const Text("Em estoque"),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
