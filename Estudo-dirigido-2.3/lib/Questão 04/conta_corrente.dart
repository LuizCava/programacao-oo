import 'conta_bancaria.dart';
import 'rentavel.dart';

class ContaCorrente extends ContaBancaria implements Rentavel {
  ContaCorrente(String titular, double saldo)
      : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.05;
  }

  @override
  String toString() {
    return 'Conta Corrente | Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}';
  }
}
