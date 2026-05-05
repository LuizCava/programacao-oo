class Veiculo {
  String marca;
  String modelo;
  int ano;

  Veiculo(this.marca, this.modelo, this.ano);

  void exibir() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
  }
}


class Carro extends Veiculo {
  int numeroPortas;

  Carro(String marca, String modelo, int ano, this.numeroPortas)
      : super(marca, modelo, ano);

  @override
  void exibir() {
    super.exibir();
    print('Número de Portas: $numeroPortas');
  }
}
void main() {
  Veiculo v = Veiculo('Honda', 'Civic', 1999);
  v.exibir();

  print('');

  Carro c = Carro('Toyota', 'Corolla', 2018, 4);
  c.exibir();
}