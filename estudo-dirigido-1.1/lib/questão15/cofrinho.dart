class Cofrinho {
  double saldo = 0;
  int totalDepositos = 0;

  void adicionarValor(double valor) {
    if (valor <= 0) {
      print('Valor invalido para deposito');
      return;
    }
    saldo += valor;
    totalDepositos++;
  }

  void quebrarCofrinho() {
    print('Valor acumulado: $saldo');
    saldo = 0;
    print('Cofrinho foi quebrado!');
    print('----------------------');
  }

  void mostrarSaldo() {
    print('Saldo atual: $saldo');
    print('Quantidade de depositos: $totalDepositos');
    print('----------------------');
  }
}
