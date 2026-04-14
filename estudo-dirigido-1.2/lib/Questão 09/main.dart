import 'carro.dart';
import 'oficina.dart';

void main() {
  Carro carro = Carro('Fusca', 12000);
  Oficina oficina = Oficina();

  print('Antes da revisao:');
  carro.exibir();

  oficina.revisar(carro);

  print('Depois da revisao:');
  carro.exibir();
}

// a) Por que a quilometragem mudou sem retornar novo objeto?
// Porque passamos a referencia do carro. O metodo revisar() altera o objeto original.

// b) O parametro do revisar() e o mesmo objeto do main?
// Sim, e o mesmo objeto. Nao e criada uma copia.
