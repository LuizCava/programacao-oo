class Carteira {
  double saldo;

  Carteira(this.saldo);

  void adicionar(double valor) {
    saldo += valor;
  }

  void exibir() {
    print('Saldo: $saldo');
  }
}
