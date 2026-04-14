class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  Retangulo.unitario() : largura = 1, altura = 1;

  Retangulo.quadrado(double lado) : largura = lado, altura = lado;

  double calcularArea() {
    return largura * altura;
  }

  double calcularPerimetro() {
    return 2 * (largura + altura);
  }

  void exibirDados() {
    print("Largura: $largura");
    print("Altura: $altura");
    print("Area: ${calcularArea()}");
    print("Perimetro: ${calcularPerimetro()}");
    print("=======================================");
  }
}
