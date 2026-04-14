import 'retangulo.dart';

void main() {
  Retangulo r1 = Retangulo(5, 3);
  Retangulo r2 = Retangulo.unitario();
  Retangulo r3 = Retangulo.quadrado(4);

  r1.exibirDados();
  r2.exibirDados();
  r3.exibirDados();
}
