class Semaforo {
  String cor;
  int tempo;

  Semaforo(this.cor, this.tempo);

  void mudarCor() {
    if (cor == 'vermelho') { cor = 'verde'; tempo = 4; }
    else if (cor == 'verde') { cor = 'amarelo'; tempo = 2; }
    else { cor = 'vermelho'; tempo = 5; }
  }

  void diminuirTempo() {
    tempo--;
    if (tempo <= 0) mudarCor();
  }

  void mostrarEstado() {
    print('Cor atual: $cor');
    print('Tempo restante: $tempo');
    print('-------------------------');
  }
}