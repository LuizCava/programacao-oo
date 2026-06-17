abstract class Personagem {
  String nome;
  int vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel);

  void receberDano(int dano) {
    vida -= dano;

    if (vida < 0) {
      vida = 0;
    }
  }

  bool estaVivo() {
    return vida > 0;
  }

  void exibirStatus() {
    print(this);
  }
}
