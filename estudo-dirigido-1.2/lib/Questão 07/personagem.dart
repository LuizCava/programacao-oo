class Personagem {
  String nome;
  int vida;
  int energia;

  Personagem(this.nome, this.vida, this.energia);

  void alterarVida(int novaVida) {
    vida = novaVida;
  }

  void exibir() {
    print("Nome: $nome | Vida: $vida | Energia: $energia");
  }
}
