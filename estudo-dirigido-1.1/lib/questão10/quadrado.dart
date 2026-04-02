class Quadrado {
  double lado;
  String caractere;

  Quadrado(this.lado, this.caractere);

  double get area => lado * lado;
  double get perimetro => lado * 4;

  bool ehIgual(Quadrado outro) {
    bool igual = outro.lado == lado;
    print(igual ? 'Os quadrados sao iguais' : 'Os quadrados nao sao iguais');
    return igual;
  }

  void desenhar() {
    String linha = caractere * lado.toInt();
    for (int i = 0; i < lado; i++) print(linha);
    print('---------------------------------------------------');
  }

  void exibirDados() {
    print('Lado: $lado');
    print('Area: $area');
    print('Perimetro: $perimetro');
    print('---------------------------------------------------');
  }
}