import 'produto.dart';

void main() {
  var p1 = Produto(5, 'Notebook', 5000, 2);
  var p2 = Produto(6, 'Celular', 7500, 12);
  Pedido(1001, p1, 1).mostrarPedido();
  Pedido(1010, p2, 3).mostrarPedido();
}