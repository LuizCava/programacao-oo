import 'pedido.dart';
import 'processavel.dart';

class PedidoRetirada extends Pedido implements Processavel {
  String nomeCliente;

  PedidoRetirada(
      int codigo,
      double valorTotal,
      this.nomeCliente)
      : super(codigo, valorTotal);

  @override
  double valorFinal() {
    return valorTotal;
  }

  @override
  void exibirPedido() {
    print(this);
  }

  @override
  String toString() {
    return 'Pedido Retirada | Código: $codigo | Cliente: $nomeCliente | Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
