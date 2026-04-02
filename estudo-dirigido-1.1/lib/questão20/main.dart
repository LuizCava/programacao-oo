import 'pokemon.dart';

void main() {
  var treinador = Treinador('Ash', [
    Pokemon(25, 'Pikachu', 'Eletrico', 60, 120),
    Pokemon(39, 'Jigglypuff', 'Normal/Fada', 35, 150),
    Pokemon(94, 'Gengar', 'Fantasma/Veneno', 70, 140),
  ]);
  treinador.exibirTime();
  treinador.pokemonMaisForte();
}