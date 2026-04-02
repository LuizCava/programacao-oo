class Contador {
  int valor;

  Contador(this.valor);

  void incrementar() => valor++;

  void decrementar() {
    if (valor == 0) {
      print('O valor do contador ja e zero');
      return;
    }
    valor--;
  }

  void zerar() => valor = 0;

  void exibirValor() => print('O valor do contador e: $valor');
}