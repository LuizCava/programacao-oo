class Cliente {
  String nome;
  String email;
  double saldoCarteira;
  bool ativo;

  Cliente(this.nome, this.email, this.saldoCarteira, this.ativo);

  void ativar() {
    ativo = true;
  }

  void desativar() {
    ativo = false;
  }

  void adicionarSaldo(double valor) {
    saldoCarteira += valor;
  }

  void debitarSaldo(double valor) {
    if (valor > saldoCarteira) {
      print("Saldo insuficiente!");
      return;
    }
    saldoCarteira -= valor;
  }

  void exibirCliente() {
    print("Nome: $nome");
    print("Email: $email");
    print("Saldo: R\$ ${saldoCarteira.toStringAsFixed(2)}");
    print("Ativo: $ativo");
    print("=======================================");
  }
}
