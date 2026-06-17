import 'inimigo.dart';

class Goblin extends Inimigo {
  int velocidade;

  Goblin(
      String nome,
      int vida,
      int nivel,
      int recompensa,
      this.velocidade)
      : super(nome, vida, nivel, recompensa);

  @override
  String toString() {
    return 'Goblin | Nome: $nome | Vida: $vida | Nível: $nivel | Recompensa: $recompensa | Velocidade: $velocidade';
  }
}
