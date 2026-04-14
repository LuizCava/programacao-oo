import '../q03/produto.dart';

class ItemCarrinho {
  Produto produto;
  int quantidade;

  ItemCarrinho(this.produto, this.quantidade);

  double calcularSubtotal() {
    return produto.preco * quantidade;
  }

  void exibirItem() {
    print("Produto: ${produto.nome}");
    print("Preco unitario: R\$ ${produto.preco.toStringAsFixed(2)}");
    print("Quantidade: $quantidade");
    print("Subtotal: R\$ ${calcularSubtotal().toStringAsFixed(2)}");
    print("=======================================");
  }
}
