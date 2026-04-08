import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasService {
  static const String _chave = 'notas';

  Future<void> salvar(List<String> itens) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_chave, itens);
  }

  Future<List<String>> carregar() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_chave) ?? [];
  }

  Future<void> salvarPorChave(String chave, List<String> itens) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(chave, itens);
  }

  Future<List<String>> carregarPorChave(String chave) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(chave) ?? [];
  }
}
