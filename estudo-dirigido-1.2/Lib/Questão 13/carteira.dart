class Carteira {
  double saldo;

  Carteira(this.saldo);

  void exibir() {
    print('Saldo: R\$ $saldo');
  }
}

class Pessoa {
  String nome;
  Carteira carteira;

  Pessoa(this.nome, this.carteira);

  void exibir() {
    print('Pessoa: $nome');
    carteira.exibir();
    print('------------------------');
  }
}