class Produto {
  int codigo;
  String nome;
  double preco;
  int quantidade;

  Produto(this.codigo, this.nome, this.preco, this.quantidade);

  double get desconto {
    if (quantidade >= 15) return 0.15;
    if (quantidade >= 10) return 0.10;
    if (quantidade >= 3) return 0.05;
    return 0.0;
  }

  double get total => preco * quantidade * (1 - desconto);

  void exibirResumo() {
    print('Codigo: $codigo');
    print('Produto: ${nome.toUpperCase()}');
    print('Preco unitario: R\$ $preco');
    print('Quantidade: $quantidade');
    print('Desconto aplicado: ${desconto * 100}%');
    print('Valor final: R\$ $total');
    print('--------------------------------');
  }
}