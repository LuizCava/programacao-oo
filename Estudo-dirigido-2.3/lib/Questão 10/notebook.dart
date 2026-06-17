import 'dispositivo.dart';
import 'ligavel.dart';

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(
      String marca,
      String modelo,
      this.memoriaRam)
      : super(marca, modelo);

  @override
  void ligar() {
    print('$marca $modelo ligado.');
  }

  @override
  void desligar() {
    print('$marca $modelo desligado.');
  }

  @override
  String toString() {
    return 'Notebook | Marca: $marca | Modelo: $modelo | RAM: $memoriaRam GB';
  }
}
