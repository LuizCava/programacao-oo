class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void mostrarDados() {
    print('Nome: $nome');
    print('Idade: $idade anos');
  }
}