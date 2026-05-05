class pedido {
  int codigo;
  double ValorTotal;

pedido(this.codigo, this.ValorTotal);

void exibirPedido() {
  print('Código do pedido: $codigo');
  print('Valor total: R\$ $ValorTotal');
  }
}
class PedidoDelivery extends pedido {
  String enderecoEntrega;
  double taxaEntrega;

PedidoDelivery(int codigo, double ValorTotal, this.enderecoEntrega, this.taxaEntrega) : super(codigo, ValorTotal);
double calcularValorFinal() {
  return ValorTotal + taxaEntrega;
  }
}
void main() {
  PedidoDelivery pedidoDelivery = PedidoDelivery(123, 50.0, 'Rua 1, 123', 5.0);
  pedidoDelivery.exibirPedido();
  print('Endereço de entrega: ${pedidoDelivery.enderecoEntrega}');
  print('Taxa de entrega: R\$ ${pedidoDelivery.taxaEntrega}');
  print('Valor final do pedido: R\$ ${pedidoDelivery.calcularValorFinal()}');
} 