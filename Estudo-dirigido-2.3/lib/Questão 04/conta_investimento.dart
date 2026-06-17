import 'conta_bancaria.dart';
import 'rentavel.dart';

class ContaInvestimento extends ContaBancaria implements Rentavel {
  ContaInvestimento(String titular, double saldo)
      : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.08;
  }

  @override
  String toString() {
    return 'Conta Investimento | Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}';
  }
}
