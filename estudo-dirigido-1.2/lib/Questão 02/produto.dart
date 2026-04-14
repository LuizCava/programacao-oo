class Produto {
  String nome;
  double preco;
  int estoque;

  Produto(this.nome, this.preco, this.estoque);

  void repor(int qtd) {
    estoque += qtd;
  }

  void vender(int qtd) {
    if (qtd > estoque) {
      print("Estoque insuficiente!");
      return;
    }
    estoque -= qtd;
  }

  void exibirFicha() {
    print("Produto: $nome");
    print("Preco: R\$ ${preco.toStringAsFixed(2)}");
    print("Estoque: $estoque unidades");
    print("=======================================");
  }
}
