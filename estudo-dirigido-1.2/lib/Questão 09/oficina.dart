import 'carro.dart';

class Oficina {
  void revisar(Carro carro) {
    print("Realizando revisao e teste de rodagem...");
    carro.adicionarQuilometragem(50);
  }
}
