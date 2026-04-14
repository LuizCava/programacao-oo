class Lampada {
  bool ligada;
  int intensidade;

  Lampada() : ligada = false, intensidade = 50;

  void ligar() {
    ligada = true;
  }

  void desligar() {
    ligada = false;
  }

  void aumentar() {
    if (intensidade < 100) {
      intensidade += 10;
    } else {
      print("A intensidade ja esta no maximo");
    }
  }

  void diminuir() {
    if (intensidade > 0) {
      intensidade -= 10;
    } else {
      print("A intensidade ja esta no minimo");
    }
  }

  void exibirEstado() {
    print("Ligada: $ligada");
    print("Intensidade: $intensidade");
    print("=======================================");
  }
}
