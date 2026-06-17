import 'smartphone.dart';
import 'notebook.dart';
import 'televisao.dart';

// Implementação simples de ListaGenerica aqui para evitar dependência externa
class ListaGenerica<T> {
    final List<T> _itens = [];

    void adicionar(T item) => _itens.add(item);

    List<T> obterItens() => List.unmodifiable(_itens);

    void imprimirItens() {
        for (var item in _itens) {
            print(item);
        }
    }
}

void main() {
  ListaGenerica<dynamic> dispositivos =
      ListaGenerica<dynamic>();

  dispositivos.adicionar(
      Smartphone('Samsung', 'Galaxy S24', 'Android'));

  dispositivos.adicionar(
      Smartphone('Apple', 'iPhone 15', 'iOS'));

  dispositivos.adicionar(
      Notebook('Dell', 'Inspiron', 16));

  dispositivos.adicionar(
      Notebook('Lenovo', 'ThinkPad', 32));

  dispositivos.adicionar(
      Televisao('LG', 'OLED55', 55));

  dispositivos.imprimirItens();

  print('\nLigando e desligando dispositivos');

  for (var dispositivo in dispositivos.obterItens()) {
    dispositivo.ligar();
    dispositivo.desligar();
  }
}