import 'pedido.dart';
import 'processavel.dart';

class PedidoExpress extends Pedido implements Processavel {
  double taxaUrgencia;

  PedidoExpress(
      int codigo,
      double valorTotal,
      this.taxaUrgencia)
      : super(codigo, valorTotal);

  @override
  double valorFinal() {
    return valorTotal + taxaUrgencia;
  }

  @override
  void exibirPedido() {
    print(this);
  }

  @override
  String toString() {
    return 'Pedido Express | Código: $codigo | Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
