import 'dart:math';

class Triangulo {
  double a, b, c;
  String simbolo;

  Triangulo(this.a, this.b, this.c, this.simbolo);

  double get perimetro => a + b + c;
  double get area {
    double s = perimetro / 2;
    return sqrt(s * (s - a) * (s - b) * (s - c));
  }

  void desenharEsquerda() {
    for (int i = 1; i <= a; i++) print(simbolo * i);
    print('--------------------');
  }

  void desenharCentralizado() {
    int altura = a.toInt();
    for (int i = 1; i <= altura; i++) {
      print(' ' * (altura - i) + simbolo * (2 * i - 1));
    }
    print('--------------------');
  }

  void mostrarResumo() {
    print('Lados: $a, $b, $c');
    print('Perimetro: $perimetro');
    print('Area: $area');
    print('--------------------');
  }

  void alterarLados(double novoA, double novoB, double novoC) {
    a = novoA; b = novoB; c = novoC;
  }

  void alterarSimbolo(String novo) => simbolo = novo;
}