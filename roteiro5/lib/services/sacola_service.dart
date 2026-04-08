import 'package:shared_preferences/shared_preferences.dart';

class SacolaService {
  static const String _chave = "itens_sacola";

  Future<void> salvar(List<String> itens) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_chave, itens);
  }

  Future<List<String>> carregar() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_chave) ?? [];
  }
}
