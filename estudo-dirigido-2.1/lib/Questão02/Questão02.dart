class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  void exibir() {
    print('Produto: $nome');
    print('Preco: R\$ $preco');
  }
}

class ProdutoPerecivel extends Produto {
  String dataValidade;

  ProdutoPerecivel(String nome, double preco, this.dataValidade)
      : super(nome, preco);

  @override
  void exibir() {
    super.exibir();
    print('Validade: $dataValidade');
  }
}

void main() {
  Produto p = Produto('Café', 30.5);
  p.exibir();

  print('');

  ProdutoPerecivel pp = ProdutoPerecivel('Leite', 6.0, '10/12/2026');
  pp.exibir();
}