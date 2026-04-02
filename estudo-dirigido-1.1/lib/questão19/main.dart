import 'casa.dart';

void main() {
  var casa = Casa('Luiz Cava', [
    Comodo('Cozinha', 15.5),
    Comodo('Quarto', 12.0),
    Comodo('Escritorio', 10.3),
  ]);
  casa.mostrarInformacoes();
}