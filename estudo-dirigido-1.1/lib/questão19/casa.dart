class Comodo {
  String nome;
  double area;

  Comodo(this.nome, this.area);

  void mostrarDetalhes() {
    print('Comodo: $nome | Area: $area m2');
    print('---------------------------------');
  }
}

class Casa {
  String dono;
  List<Comodo> comodos;

  Casa(this.dono, this.comodos);

  double get areaTotal => comodos.fold(0, (soma, c) => soma + c.area);

  void mostrarInformacoes() {
    print('Responsavel: ${dono.toUpperCase()}');
    print('---------------------------------');
    for (var c in comodos) c.mostrarDetalhes();
    print('Area total: $areaTotal m2');
    print('---------------------------------');
  }
}