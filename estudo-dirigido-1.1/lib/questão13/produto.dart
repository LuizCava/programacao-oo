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
    return 0;
  }

  double get total => preco * quantidade * (1 - desconto);

  void mostrarProduto() {
    print('Codigo: $codigo');
    print('Produto: $nome');
    print('Preco: $preco');
    print('Quantidade: $quantidade');
    print('Desconto: ${desconto * 100}%');
    print('Total: $total');
  }
}

class Pedido {
  int numero;
  Produto produto;
  int quantidade;

  Pedido(this.numero, this.produto, this.quantidade);

  double get total => produto.preco * quantidade;

  void mostrarPedido() {
    print('Pedido No: $numero');
    print('Dados do produto:');
    produto.mostrarProduto();
    print('Quantidade no pedido: $quantidade');
    print('Total do pedido: $total');
    print('---------------------------------');
  }
}