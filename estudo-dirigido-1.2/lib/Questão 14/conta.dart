class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor > saldo) {
      print("Saldo insuficiente!");
      return;
    }
    saldo -= valor;
  }

  void exibir() {
    print("Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}");
    print("=======================================");
  }
}
