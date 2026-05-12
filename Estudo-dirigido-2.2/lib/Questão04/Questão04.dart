abstract class Rentavel {
  void AplicarRendimento();
}

class ContaBancaria {
  double saldo;
  String titular;

  ContaBancaria(this.saldo, this.titular);

  void Depositar (double valor) {
    saldo = saldo + valor;
  }
  void Sacar (double valor) {
    saldo = saldo - valor;
  }
  void ExibirSaldo() {
    print('Saldo: $saldo');
    print('Titular: $titular');
    print('');

  }

}
class ContaPoupanca extends ContaBancaria implements Rentavel {
  double taxaRendimento = 0.01;

  ContaPoupanca(double saldo, String titular) : super(saldo, titular);

  @override
  void AplicarRendimento() {
  saldo = saldo + saldo * taxaRendimento;
  }
}
void main() {
  ContaPoupanca conta = ContaPoupanca(500.0, 'Luiz');
  conta.Depositar(500.0);
  conta.AplicarRendimento();
  conta.ExibirSaldo();

  ContaPoupanca contaCorrente = ContaPoupanca(200.0, 'Pedro');
  contaCorrente.Depositar(1000.0);
  contaCorrente.AplicarRendimento();
  contaCorrente.ExibirSaldo();
}