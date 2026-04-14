import '../q01/cliente.dart';
import '../q05/item_carrinho.dart';
import '../q06/lista_carrinho.dart';

class Carrinho {
  Cliente cliente;
  ListaCarrinho itens;
  bool aberto;

  Carrinho(this.cliente, this.itens, this.aberto);

  void adicionarItem(ItemCarrinho item) {
    itens.inserir(item);
  }

  void removerItem(int i) {
    itens.remover(i);
  }

  double calcularTotal() {
    double total = 0;
    for (int i = 0; i < itens.tamanho(); i++) {
      ItemCarrinho? item = itens.get(i);
      if (item != null) {
        total += item.calcularSubtotal();
      }
    }
    return total;
  }

  void exibirCarrinho() {
    print("Cliente: ${cliente.nome}");
    print("Status: ${aberto ? 'Aberto' : 'Fechado'}");
    print("Itens:");
    itens.exibirLista();
    print("Total: R\$ ${calcularTotal().toStringAsFixed(2)}");
    print("=======================================");
  }
}
