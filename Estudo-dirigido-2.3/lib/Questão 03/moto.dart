import 'veiculo.dart';
import 'fichavel.dart';

class Moto extends Veiculo implements Fichavel {
  int cilindradas;

  Moto(String marca, String modelo, int ano, this.cilindradas)
      : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print(this);
  }

  @override
  String toString() {
    return 'Moto | Marca: $marca | Modelo: $modelo | Ano: $ano | Cilindradas: $cilindradas';
  }
}
