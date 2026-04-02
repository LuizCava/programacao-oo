class Lampada {
  bool ligada = false;
  int vezesLigada = 0;
  bool queimou = false;

  void ligar() {
    if (queimou || ligada) return;
    vezesLigada++;
    if (vezesLigada > 5) {
      queimou = true;
      print('A lampada queimou!');
      return;
    }
    ligada = true;
  }

  void desligar() {
    if (!ligada || queimou) return;
    ligada = false;
  }

  void status() {
    print('--- STATUS ---');
    print(ligada ? 'Ligada' : 'Desligada');
    print(queimou ? 'Queimada' : 'Funcionando');
  }
}