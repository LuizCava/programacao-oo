abstract class Veiculo {
  String marca;
  String modelo;
  int ano;

  Veiculo(this.marca, this.modelo, this.ano);

  @override
  String toString() {
    return 'Marca: $marca | Modelo: $modelo | Ano: $ano';
  }
}