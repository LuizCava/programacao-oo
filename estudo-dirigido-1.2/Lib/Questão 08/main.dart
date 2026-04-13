import 'televisao.dart';

void main() {
  var tv = Televisao(5, 10);
  var controle = ControleRemoto(tv);
print('Estado inicial');
tv.exibirEstado();

controle.aumentarVolume();
controle.proximoCanal();
print('Estado apos usar controle');
tv.exibirEstado();
}