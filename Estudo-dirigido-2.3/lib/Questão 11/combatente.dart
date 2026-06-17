import 'personagem.dart';
import 'atacavel.dart';

abstract class Combatente extends Personagem implements Atacavel {
  int forca;

  Combatente(
      String nome,
      int vida,
      int nivel,
      this.forca)
      : super(nome, vida, nivel);
}
