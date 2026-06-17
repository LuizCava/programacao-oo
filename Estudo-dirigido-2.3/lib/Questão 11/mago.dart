import 'combatente.dart';
import 'magico.dart';

class Mago extends Combatente implements Magico {
  int mana;

  Mago(
      String nome,
      int vida,
      int nivel,
      int forca,
      this.mana)
      : super(nome, vida, nivel, forca);

  @override
  void atacar() {
    print('$nome atacou com cajado.');
  }

  @override
  void lancarMagia() {
    print('$nome lançou uma magia.');
  }

  @override
  String toString() {
    return 'Mago | Nome: $nome | Vida: $vida | Nível: $nivel | Força: $forca | Mana: $mana';
  }
}
