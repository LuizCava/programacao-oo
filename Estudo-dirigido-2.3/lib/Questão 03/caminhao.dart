import 'veiculo.dart';
import 'fichavel.dart';

class Caminhao extends Veiculo implements Fichavel {
  double capacidadeCarga;

  Caminhao(String marca, String modelo, int ano, this.capacidadeCarga)
      : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print(this);
  }

  @override
  String toString() {
    return 'Caminhão | Marca: $marca | Modelo: $modelo | Ano: $ano | Capacidade: $capacidadeCarga toneladas';
  }
}
