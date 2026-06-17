import 'personagem.dart';

abstract class Inimigo extends Personagem {
  int recompensa;

  Inimigo(
      String nome,
      int vida,
      int nivel,
      this.recompensa)
      : super(nome, vida, nivel);
}
