import 'dispositivo.dart';
import 'ligavel.dart';

class Televisao extends Dispositivo implements Ligavel {
  int tamanhoPolegadas;

  Televisao(
      String marca,
      String modelo,
      this.tamanhoPolegadas)
      : super(marca, modelo);

  @override
  void ligar() {
    print('$marca $modelo ligada.');
  }

  @override
  void desligar() {
    print('$marca $modelo desligada.');
  }

  @override
  String toString() {
    return 'Televisão | Marca: $marca | Modelo: $modelo | Tamanho: $tamanhoPolegadas polegadas';
  }
}
