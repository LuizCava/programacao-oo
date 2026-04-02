class Circulo {
  double raio;
  String cor;
  final double pi = 3.14;

  Circulo(this.raio, this.cor) {
    if (raio <= 0) {
      throw ArgumentError('O raio deve ser maior que zero');
    }
    if (cor.trim().isEmpty) {
      throw ArgumentError('A cor não pode ser vazia');
    }
  }

  double get area => pi * raio * raio;
  double get perimetro => 2 * pi * raio;

  void mostrarDados() {
    print('Raio: $raio');
    print('Cor: $cor');
    print('Área: $area');
    print('Perímetro: $perimetro');
    print('-------------------------');
  }
}