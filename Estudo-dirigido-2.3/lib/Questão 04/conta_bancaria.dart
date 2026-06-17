class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  @override
  String toString() {
    return 'Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}';
  }
}
