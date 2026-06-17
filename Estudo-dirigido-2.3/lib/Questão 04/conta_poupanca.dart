import 'conta_bancaria.dart';
import 'rentavel.dart';

class ContaPoupanca extends ContaBancaria implements Rentavel {
  ContaPoupanca(String titular, double saldo)
      : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.01;
  }

  @override
  String toString() {
    return 'Conta Poupança | Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}';
  }
}
