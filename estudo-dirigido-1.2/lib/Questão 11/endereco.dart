class Endereco {
  String rua;
  int numero;
  String cidade;

  Endereco(this.rua, this.numero, this.cidade);

  void alterarRua(String novaRua) {
    rua = novaRua;
  }

  void exibir() {
    print("Rua: $rua, $numero - $cidade");
  }
}
