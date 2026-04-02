class Endereco {
  String rua, bairro, cidade, estado;
  int numero, cep;

  Endereco(this.rua, this.numero, this.bairro, this.cidade, this.estado, this.cep);

  String get cepFormatado {
    String c = cep.toString();
    return c.length == 8 ? '${c.substring(0, 5)}-${c.substring(5)}' : c;
  }

  void mostrarEndereco() {
    print('Endereco: $rua, $numero - $bairro');
    print('$cidade / $estado');
    print('CEP: $cepFormatado');
  }
}

class Pessoa {
  String nome, cpf;
  int idade;
  Endereco endereco;

  Pessoa(this.nome, this.idade, this.cpf, this.endereco);

  void mostrarPessoa() {
    print('Nome: $nome');
    print('Idade: $idade');
    print('CPF: $cpf');
    endereco.mostrarEndereco();
  }
}