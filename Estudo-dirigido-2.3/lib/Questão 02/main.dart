import 'lista_generica.dart';
import 'exibivel.dart';
import 'produto_perecivel.dart';
import 'produto_eletronico.dart';

void main() {
  ListaGenerica<Exibivel> produtos = ListaGenerica<Exibivel>();

  Exibivel produto1 =
      ProdutoPerecivel('Leite', 6.50, '20/05/2026');

  Exibivel produto2 =
      ProdutoPerecivel('Iogurte', 4.80, '18/05/2026');

  Exibivel produto3 =
      ProdutoEletronico('Notebook', 3500.00, 24);

  Exibivel produto4 =
      ProdutoEletronico('Smartphone', 2200.00, 12);

  Exibivel produto5 =
      ProdutoPerecivel('Queijo', 28.90, '25/05/2026');

  produtos.adicionar(produto1);
  produtos.adicionar(produto2);
  produtos.adicionar(produto3);
  produtos.adicionar(produto4);
  produtos.adicionar(produto5);

  print('--- Lista de Produtos ---');
  produtos.imprimirItens();

  print('\n--- Exibindo Produtos ---');
  for (var produto in produtos.obterItens()) {
    produto.exibir();
  }
}