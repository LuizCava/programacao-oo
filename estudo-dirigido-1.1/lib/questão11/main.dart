import 'triangulo.dart';

void main() {
  var t1 = Triangulo(9, 9, 9, '@');
  var t2 = Triangulo(7, 8, 9, '%');

  print('Triangulo 1:');
  t1.mostrarResumo(); t1.desenharEsquerda(); t1.desenharCentralizado();

  print('Triangulo 2:');
  t2.mostrarResumo(); t2.desenharEsquerda(); t2.desenharCentralizado();
}