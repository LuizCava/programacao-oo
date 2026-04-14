import '../q01/cliente.dart';
import '../q02/lista_cliente.dart';
import '../q03/produto.dart';
import '../q04/lista_produto.dart';
import '../q09/pedido.dart';

class Loja {
  String nome;
  ListaCliente clientes;
  ListaProduto produtos;
  List<Pedido> pedidos;

  Loja(this.nome, this.clientes, this.produtos) : pedidos = [];

  void cadastrarCliente(Cliente cliente) {
    clientes.inserir(cliente);
  }

  void cadastrarProduto(Produto produto) {
    produtos.inserir(produto);
  }

  void registrarPedido(Pedido pedido) {
    pedidos.add(pedido);
  }

  void exibirResumoLoja() {
    print("Loja: $nome");
    print("=======================================");
    print("Clientes cadastrados: ${clientes.tamanho()}");
    clientes.exibirLista();
    print("Produtos cadastrados: ${produtos.tamanho()}");
    produtos.exibirLista();
    print("Pedidos registrados: ${pedidos.length}");
    for (var pedido in pedidos) {
      pedido.exibirResumoPedido();
    }
  }
}
