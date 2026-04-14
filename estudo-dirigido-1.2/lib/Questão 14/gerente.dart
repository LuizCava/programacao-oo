import 'conta.dart';

class Gerente {
  String nome;

  Gerente(this.nome);

  void depositar(Conta conta, double valor) {
    print("Gerente $nome depositando R\$ ${valor.toStringAsFixed(2)}");
    conta.depositar(valor);
  }

  void sacar(Conta conta, double valor) {
    print("Gerente $nome sacando R\$ ${valor.toStringAsFixed(2)}");
    conta.sacar(valor);
  }
}
