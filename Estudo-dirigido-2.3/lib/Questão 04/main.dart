import 'rentavel.dart';
import 'conta_poupanca.dart';
import 'conta_corrente.dart';
import 'conta_investimento.dart';
// Implementação simples de ListaGenerica incluída aqui para evitar erro de import
class ListaGenerica<T> {
  final List<T> _itens = [];

  void adicionar(T item) {
    _itens.add(item);
  }

  List<T> obterItens() => List<T>.from(_itens);

  void imprimirItens() {
    for (var item in _itens) {
      print(item);
    }
  }
}

void main() {
  ListaGenerica<Rentavel> contas = ListaGenerica<Rentavel>();

  Rentavel conta1 = ContaPoupanca('Ana', 1000.00);
  Rentavel conta2 = ContaCorrente('Bruno', 1500.00);
  Rentavel conta3 = ContaInvestimento('Carla', 5000.00);
  Rentavel conta4 = ContaPoupanca('Diego', 2500.00);
  Rentavel conta5 = ContaCorrente('Elisa', 800.00);

  contas.adicionar(conta1);
  contas.adicionar(conta2);
  contas.adicionar(conta3);
  contas.adicionar(conta4);
  contas.adicionar(conta5);

  print('--- Saldos antes do rendimento ---');
  contas.imprimirItens();

  for (var conta in contas.obterItens()) {
    conta.aplicarRendimento();
  }

  print('\n--- Saldos após o rendimento ---');
  contas.imprimirItens();
}
