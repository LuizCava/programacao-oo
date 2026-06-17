import 'combatente.dart';

class Guerreiro extends Combatente {
  int armadura;

  Guerreiro(
      String nome,
      int vida,
      int nivel,
      int forca,
      this.armadura)
      : super(nome, vida, nivel, forca);

  @override
  void atacar() {
    print('$nome atacou com espada.');
  }

  @override
  String toString() {
    return 'Guerreiro | Nome: $nome | Vida: $vida | Nível: $nivel | Força: $forca | Armadura: $armadura';
  }
}
