abstract class Pedido {
  int codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  void exibirPedido();
}

class PedidoDelivery extends Pedido {
  String enderecoEntrega;
  double taxaEntrega;

 PedidoDelivery(int codigo, double valorTotal, this.enderecoEntrega, this.taxaEntrega): super(codigo, valorTotal);

  @override
  void exibirPedido() {
    print('Pedido Delivery');
    print('Código: $codigo');
    print('Valor total: R\$ $valorTotal');
    print('Endereço: $enderecoEntrega');
    print('Taxa de entrega: R\$ $taxaEntrega');
    print('Valor final: R\$ ${valorTotal + taxaEntrega}');
    print('');
  }
}

class PedidoRetirada extends Pedido {
  String nomeCliente;

  PedidoRetirada(int codigo, double valorTotal, this.nomeCliente) : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    print('Pedido Retirada');
    print('Código: $codigo');
    print('Valor total: R\$ $valorTotal');
    print('Cliente: $nomeCliente');
    print('');
  }
}

void main() {
  Pedido delivery = PedidoDelivery(101, 45.00, 'Rua das Flores, 10', 8.00);
  Pedido retirada = PedidoRetirada(102, 30.00, 'João');

  delivery.exibirPedido();
  retirada.exibirPedido();
}