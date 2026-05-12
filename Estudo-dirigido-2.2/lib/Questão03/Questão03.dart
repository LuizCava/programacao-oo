abstract class Veiculo {
  String marca;
  String modelo;
  int ano;

  Veiculo(this.marca, this.modelo, this.ano);

  void exibirFicha();
}
	
class Carro extends Veiculo {
  int quantidadePortas;

  Carro(String marca, String modelo, int ano, this.quantidadePortas)
      : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print('Carro');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
    print('Portas: $quantidadePortas');
    print('');
  }
}

class Moto extends Veiculo {
  int cilindradas;

  Moto(String marca, String modelo, int ano, this.cilindradas)
      : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print('Moto');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
    print('Cilindradas: $cilindradas');
    print('');
  }
}

void main() {
  Veiculo carro = Carro('Toyota', 'Corolla', 2026, 4);
  Veiculo moto = Moto('Honda', 'CB 600f', 2013, 600);

  carro.exibirFicha();
  moto.exibirFicha();
}