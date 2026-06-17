import 'animal.dart';
import 'sonoro.dart';

class Ovelha extends Animal implements Sonoro {

  Ovelha(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome faz Béé');
  }

  @override
  String toString() {
    return 'Ovelha: $nome';
  }
}
