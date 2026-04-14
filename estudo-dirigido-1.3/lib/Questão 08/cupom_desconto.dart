class CupomDesconto {
  String codigo;
  double percentual;
  bool ativo;

  CupomDesconto(this.codigo, this.percentual, this.ativo);

  void ativar() {
    ativo = true;
  }

  void desativar() {
    ativo = false;
  }

  double calcularDesconto(double valor) {
    if (ativo) {
      return valor * (percentual / 100);
    }
    return 0;
  }

  void exibirCupom() {
    print("Codigo: $codigo");
    print("Percentual: ${percentual.toStringAsFixed(1)}%");
    print("Ativo: $ativo");
    print("=======================================");
  }
}
