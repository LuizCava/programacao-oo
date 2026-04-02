import 'quadrado.dart';

void main() {
  var q1 = Quadrado(5, '*');
  var q2 = Quadrado(8, '#');
  var q3 = Quadrado(6, '@');
  var q4 = Quadrado(7, '+');

  q1.exibirDados(); q1.desenhar();
  q2.exibirDados(); q2.desenhar();
  q3.exibirDados(); q3.desenhar();
  q4.exibirDados(); q4.desenhar();

  q1.ehIgual(q2);
  q3.ehIgual(q4);
}
