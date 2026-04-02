import 'contador.dart';

void main() {
  var c1 = Contador(5);
  print('Operacoes Contador 1:');
  c1.incrementar();
  c1.incrementar();
  c1.exibirValor();
  c1.decrementar();
  c1.exibirValor();

  var c2 = Contador(30);
  print('Operacoes Contador 2:');
  c2.decrementar();
  c2.decrementar();
  c2.exibirValor();
  c2.zerar();
  c2.exibirValor();
}