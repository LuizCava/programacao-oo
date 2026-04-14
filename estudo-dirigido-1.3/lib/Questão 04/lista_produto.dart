import '../q03/produto.dart';

class ListaProduto {
  List<Produto> produtos = [];

  void inserir(Produto produto) {
    produtos.add(produto);
  }

  void remover(int i) {
    if (i >= 0 && i < produtos.length) {
      produtos.removeAt(i);
    } else {
      print("Indice invalido!");
    }
  }

  int tamanho() {
    return produtos.length;
  }

  Produto? get(int i) {
    if (i >= 0 && i < produtos.length) {
      return produtos[i];
    }
    print("Indice invalido!");
    return null;
  }

  void exibirLista() {
    for (var produto in produtos) {
      produto.exibirProduto();
    }
  }
}
