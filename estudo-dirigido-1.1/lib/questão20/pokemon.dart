class Pokemon {
  int numero;
  String nome, tipo;
  int nivel, hp;

  Pokemon(this.numero, this.nome, this.tipo, this.nivel, this.hp);

  void exibirPokemon() {
    print('Numero: $numero');
    print('Nome: $nome');
    print('Tipo: $tipo');
    print('Nivel: $nivel');
    print('HP: $hp');
    print('-------------------------------------');
  }
}

class Treinador {
  String nome;
  List<Pokemon> pokemons;

  Treinador(this.nome, this.pokemons);

  int get poderTotal => pokemons.fold(0, (soma, p) => soma + p.nivel);

  void pokemonMaisForte() {
    var forte = pokemons.reduce((a, b) => a.nivel >= b.nivel ? a : b);
    print('Pokemon mais forte:');
    forte.exibirPokemon();
  }

  void exibirTime() {
    print('Treinador: $nome');
    print('=======================================');
    for (var p in pokemons) p.exibirPokemon();
    print('Poder Total: $poderTotal');
    print('=======================================');
  }
}