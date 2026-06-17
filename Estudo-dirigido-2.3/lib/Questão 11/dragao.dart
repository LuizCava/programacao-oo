import 'inimigo.dart';
import 'flamejante.dart';

class Dragao extends Inimigo implements Flamejante {
  int poderFogo;

  Dragao(
      String nome,
      int vida,
      int nivel,
      int recompensa,
      this.poderFogo)
      : super(nome, vida, nivel, recompensa);

  @override
  void soltarFogo() {
    print('$nome soltou fogo.');
  }

  @override
  String toString() {
    return 'Dragão | Nome: $nome | Vida: $vida | Nível: $nivel | Recompensa: $recompensa | Poder de fogo: $poderFogo';
  }
}
