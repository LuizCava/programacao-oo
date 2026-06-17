import 'animal.dart';
import 'sonoro.dart';

class Vaca extends Animal implements Sonoro {

  Vaca(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome faz Muuu');
  }

  @override
  String toString() {
    return 'Vaca: $nome';
  }
}
