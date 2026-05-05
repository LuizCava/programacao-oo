class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$ $valor realizado. Saldo atual: R\$ $saldo');
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$ $valor realizado. Saldo atual: R\$ $saldo');
    } else {
      print('Saldo insuficiente para realizar o saque.');
    }
  }
}
void exibirSaldo(ContaBancaria conta) {
  print('Titular: ${conta.titular}');
  print('Saldo: R\$ ${conta.saldo}');
}
class ContaPoupanca extends ContaBancaria {
  double taxaRendimento;

  ContaPoupanca(String titular, double saldo, this.taxaRendimento) : super(titular, saldo);

  void aplicarRendimento() {
    saldo = saldo + (saldo * taxaRendimento);

    
  }
}
class ContaCorrente extends ContaBancaria {
  double taxaRendimento = 0.05;

  ContaCorrente(String titular, double saldo) : super(titular, saldo);

  void aplicarRendimento() {
    saldo = saldo + (saldo * taxaRendimento);
  }
}

void main() {
    ContaPoupanca cp = ContaPoupanca('Luiz', 100.0, 0.02);
    exibirSaldo(cp);
    cp.aplicarRendimento();
    print('Após aplicar rendimento na conta poupança:');
    exibirSaldo(cp);

    print ('');

    ContaCorrente cc = ContaCorrente('João', 5000.0);
    exibirSaldo(cc);
    cc.aplicarRendimento();
    print('Após aplicar rendimento na conta corrente:');
    exibirSaldo(cc);

   
}