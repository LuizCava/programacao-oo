import 'combatente.dart';

class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(
      String nome,
      int vida,
      int nivel,
      int forca,
      this.flechas)
      : super(nome, vida, nivel, forca);

  @override
  void atacar() {
    print('$nome disparou uma flecha.');
  }

  @override
  String toString() {
    return 'Arqueiro | Nome: $nome | Vida: $vida | Nível: $nivel | Força: $forca | Flechas: $flechas';
  }
}
