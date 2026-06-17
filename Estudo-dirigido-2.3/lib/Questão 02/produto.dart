class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  @override
  String toString() {
    return 'Nome: $nome | Preço: R\$ ${preco.toStringAsFixed(2)}';
  }
}
