import 'produto.dart';
import 'exibivel.dart';

class ProdutoPerecivel extends Produto implements Exibivel {
  String dataValidade;

  ProdutoPerecivel(String nome, double preco, this.dataValidade)
      : super(nome, preco);

  @override
  void exibir() {
    print(this);
  }

  @override
  String toString() {
    return 'Produto Perecível | Nome: $nome | Preço: R\$ ${preco.toStringAsFixed(2)} | Validade: $dataValidade';
  }
}
