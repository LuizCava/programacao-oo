import '../q01/cliente.dart';

class ListaCliente {
  List<Cliente> clientes = [];

  void inserir(Cliente cliente) {
    clientes.add(cliente);
  }

  void remover(int i) {
    if (i >= 0 && i < clientes.length) {
      clientes.removeAt(i);
    } else {
      print("Indice invalido!");
    }
  }

  int tamanho() {
    return clientes.length;
  }

  Cliente? get(int i) {
    if (i >= 0 && i < clientes.length) {
      return clientes[i];
    }
    print("Indice invalido!");
    return null;
  }

  void exibirLista() {
    for (var cliente in clientes) {
      cliente.exibirCliente();
    }
  }
}
