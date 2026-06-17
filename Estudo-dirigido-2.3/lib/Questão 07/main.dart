
import 'sonoro.dart';
import 'cachorro.dart';
import 'gato.dart';
import 'passaro.dart';
import 'vaca.dart';
import 'ovelha.dart';

class ListaGenerica<T> {
  final List<T> _itens = [];

  void adicionar(T item) => _itens.add(item);

  List<T> obterItens() => List.unmodifiable(_itens);

  void imprimirItens() {
    for (var item in _itens) {
      print(item.toString());
    }
  }
}

void main() {

  ListaGenerica<Sonoro> animais =
      ListaGenerica<Sonoro>();

  animais.adicionar(Cachorro('Rex'));
  animais.adicionar(Gato('Mimi'));
  animais.adicionar(Passaro('Piu'));
  animais.adicionar(Vaca('Mimosa'));
  animais.adicionar(Ovelha('Dolly'));

  animais.imprimirItens();

  print('\nSons dos animais');

  for (var animal in animais.obterItens()) {
    animal.emitirSom();
  }
}