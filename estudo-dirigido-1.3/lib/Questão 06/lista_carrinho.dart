import '../q05/item_carrinho.dart';

class ListaCarrinho {
  List<ItemCarrinho> itens = [];

  void inserir(ItemCarrinho item) {
    itens.add(item);
  }

  void remover(int i) {
    if (i >= 0 && i < itens.length) {
      itens.removeAt(i);
    } else {
      print("Indice invalido!");
    }
  }

  int tamanho() {
    return itens.length;
  }

  ItemCarrinho? get(int i) {
    if (i >= 0 && i < itens.length) {
      return itens[i];
    }
    print("Indice invalido!");
    return null;
  }

  void exibirLista() {
    for (var item in itens) {
      item.exibirItem();
    }
  }
}
