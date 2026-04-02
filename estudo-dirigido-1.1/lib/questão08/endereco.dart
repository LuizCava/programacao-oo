class Endereco {
  String rua, bairro, cidade, estado;
  int numero, cep;

  Endereco(this.rua, this.numero, this.bairro, this.cidade, this.estado, this.cep);

  String get cepFormatado {
    String c = cep.toString();
    return c.length == 8 ? '${c.substring(0, 5)}-${c.substring(5)}' : c;
  }

  void mostrarEndereco() {
    print('Rua: $rua');
    print('Numero: $numero');
    print('Bairro: $bairro');
    print('Cidade: $cidade');
    print('Estado: $estado');
    print('CEP: $cepFormatado');
    print('------------------------');
  }
}