import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final String nome;
  const ItemTile({super.key, required this.nome});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.devices),
      title: Text(nome),
      subtitle: const Text("Disponível em estoque."),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
