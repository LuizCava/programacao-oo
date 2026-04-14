class Produto {
  String nome;
  double preco;
  int estoque;
  bool ativo;

  Produto(this.nome, this.preco, this.estoque, this.ativo);

  void ativar() {
    ativo = true;
  }

  void desativar() {
    ativo = false;
  }

  void reporEstoque(int quantidade) {
    estoque += quantidade;
  }

  void retirarEstoque(int quantidade) {
    if (quantidade > estoque) {
      print("Estoque insuficiente!");
      return;
    }
    estoque -= quantidade;
  }

  void exibirProduto() {
    print("Produto: $nome");
    print("Preco: R\$ ${preco.toStringAsFixed(2)}");
    print("Estoque: $estoque unidades");
    print("Ativo: $ativo");
    print("=======================================");
  }
}
