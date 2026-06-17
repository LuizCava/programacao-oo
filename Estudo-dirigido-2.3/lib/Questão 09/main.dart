import 'processavel.dart';
import 'pedido_delivery.dart';
import 'pedido_retirada.dart';
import 'pedido_express.dart';

// lista_generica.dart wasn't available; provide a small local implementation
// to avoid the missing URI error. This preserves the original imports
// for Processavel and the various Pedido classes.
class ListaGenerica<T> {
    final List<T> _itens = [];

    void adicionar(T item) => _itens.add(item);

    List<T> obterItens() => List<T>.from(_itens);

    void imprimirItens() {
        for (var i = 0; i < _itens.length; i++) {
            print('Item ${i + 1}: ${_itens[i]}');
        }
    }
}

void main() {
  ListaGenerica<Processavel> pedidos =
      ListaGenerica<Processavel>();

  pedidos.adicionar(
      PedidoDelivery(1001, 120, 'Rua A, 100', 15));

  pedidos.adicionar(
      PedidoRetirada(1002, 80, 'Ana'));

  pedidos.adicionar(
      PedidoExpress(1003, 200, 40));

  pedidos.adicionar(
      PedidoDelivery(1004, 150, 'Rua B, 250', 20));

  pedidos.adicionar(
      PedidoRetirada(1005, 60, 'Bruno'));

  pedidos.imprimirItens();

  print('\nPedidos');

  for (var pedido in pedidos.obterItens()) {
    pedido.exibirPedido();
    print(
        'Valor Final: R\$ ${pedido.valorFinal().toStringAsFixed(2)}');
  }
}