import 'televisao.dart';
import 'controle_remoto.dart';

void main() {
  Televisao tv = Televisao(5, 20);
  ControleRemoto controle = ControleRemoto(tv);

  print('Estado inicial:');
  tv.exibir();

  controle.aumentarVolume();
  controle.proximoCanal();

  print('Depois de usar o controle:');
  tv.exibir();
}

// a) Por que o controle consegue alterar a TV?
// Porque o controle recebe uma referencia para o mesmo objeto Televisao.

// b) O controle tem uma copia ou uma referencia?
// Uma referencia. Ambos apontam para o mesmo objeto.
