import 'pedido.dart';
import 'processavel.dart';

class PedidoDelivery extends Pedido implements Processavel {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(
      int codigo,
      double valorTotal,
      this.enderecoEntrega,
      this.taxaEntrega)
      : super(codigo, valorTotal);

  @override
  double valorFinal() {
    return valorTotal + taxaEntrega;
  }

  @override
  void exibirPedido() {
    print(this);
  }

  @override
  String toString() {
    return 'Pedido Delivery | Código: $codigo | Endereço: $enderecoEntrega | Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}