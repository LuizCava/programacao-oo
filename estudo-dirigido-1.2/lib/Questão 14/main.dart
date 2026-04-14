import 'conta.dart';
import 'gerente.dart';

void main() {
  Conta conta = Conta('Fernanda', 1000);
  Gerente g1 = Gerente('Marcos');
  Gerente g2 = Gerente('Patricia');

  print('Estado inicial:');
  conta.exibir();

  g1.depositar(conta, 200);
  conta.exibir();

  g2.sacar(conta, 150);
  conta.exibir();
}

// a) Por que dois gerentes conseguem alterar o mesmo saldo?
// Porque ambos recebem a referencia do mesmo objeto Conta.

// b) Cada gerente tem sua propria conta ou operam na mesma?
// Operam na mesma instancia de Conta.

// c) O que isso mostra sobre compartilhamento de referencia?
// Quando passamos um objeto para diferentes lugares, todos compartilham a mesma referencia.
// Mudancas feitas por um afetam todos os outros.
