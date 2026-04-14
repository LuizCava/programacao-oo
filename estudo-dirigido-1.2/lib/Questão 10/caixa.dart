class Caixa {
  int valor;

  Caixa(this.valor);

  void setValor(int novoValor) {
    valor = novoValor;
  }

  void exibir() {
    print("Valor: $valor");
    print("=======================================");
  }
}
