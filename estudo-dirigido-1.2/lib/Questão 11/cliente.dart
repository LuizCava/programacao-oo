import 'endereco.dart';

class Cliente {
  String nome;
  Endereco endereco;

  Cliente(this.nome, this.endereco);

  // Construtor de copia: cria um cliente novo com endereco independente
  Cliente.copia(Cliente outro)
      : nome = outro.nome,
        endereco = Endereco(outro.endereco.rua, outro.endereco.numero, outro.endereco.cidade);

  void exibir() {
    print("Nome: $nome");
    endereco.exibir();
    print("=======================================");
  }
}
