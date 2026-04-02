class Personagem {
  String nome;
  int vida;
  int dano;

  Personagem(this.nome, this.vida, this.dano);

  bool get estaVivo => vida > 0;

  void realizarAtaque(Personagem oponente) {
    if (!estaVivo) return;
    oponente.vida -= dano;
    if (oponente.vida < 0) oponente.vida = 0;
    print('$nome atacou ${oponente.nome}!');
  }

  void exibirStatus() {
    print('---------------------');
    print('Personagem: $nome');
    print('Vida: $vida');
    print('Dano: $dano');
    print('---------------------');
  }
}