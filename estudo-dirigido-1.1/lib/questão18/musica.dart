class musica {
  String titulo, artista;
  int segundos;

  musica(this.titulo, this.artista, this.segundos);

  void detalhar() => print('* $titulo | $artista (${segundos}s)');
}

class Album {
  String nome;
  List<musica> faixas;

  Album(this.nome, this.faixas);

  int get duracaoTotal => faixas.fold(0, (soma, f) => soma + f.segundos);

  void imprimirResumo() {
    print('ALBUM: ${nome.toUpperCase()}');
    print('-' * 30);
    for (var f in faixas) f.detalhar();
    print('-' * 30);
    print('Tempo de reproducao: $duracaoTotal segundos');
  }

  void iniciarReproducao() {
    print('\n> Reproduzindo agora: $nome');
    for (var f in faixas) print('Ouvindo: ${f.titulo} de ${f.artista}...');
  }
}