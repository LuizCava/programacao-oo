class Televisao {
  int canal;
  int volume;

  Televisao(this.canal, this.volume);

  void aumentarVolume() {
    volume++;
  }

  void diminuirVolume() {
    if (volume > 0) {
      volume--;
    }
  }

  void proximoCanal() {
    canal++;
  }

  void canalAnterior() {
    if (canal > 1) {
      canal--;
    }
  }

  void exibir() {
    print("Canal: $canal | Volume: $volume");
    print("=======================================");
  }
}
