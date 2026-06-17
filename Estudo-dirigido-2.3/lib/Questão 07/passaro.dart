import 'animal.dart';
import 'sonoro.dart';

class Passaro extends Animal implements Sonoro {

  Passaro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome faz Piu Piu');
  }

  @override
  String toString() {
    return 'Pássaro: $nome';
  }
}
