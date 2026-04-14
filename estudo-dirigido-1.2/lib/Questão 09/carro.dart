class Carro {
  String modelo;
  int quilometragem;

  Carro(this.modelo, this.quilometragem);

  void adicionarQuilometragem(int km) {
    quilometragem += km;
  }

  void exibir() {
    print("Modelo: $modelo | Km: $quilometragem");
    print("=======================================");
  }
}
