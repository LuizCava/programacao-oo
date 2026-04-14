class Conta {
  String numero;
  String titular;
  double saldo;

  // Construtor conta normal (saldo começa em 0)
  Conta.bancaria(this.numero, this.titular) : saldo = 0;

  // Construtor conta vip (saldo inicial informado)
  Conta.vip(this.numero, this.titular, this.saldo);

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

  void exibirResumo() {
    print("Conta: $numero");
    print("Titular: $titular");
    print("Saldo: R\$ ${saldo.toStringAsFixed(2)}");
    print("=======================================");
  }
}
