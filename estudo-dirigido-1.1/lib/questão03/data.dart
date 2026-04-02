class Data {
  int dia, mes, ano;

  Data (this.dia, this.mes, this.ano) {
    if (dia < 1 || dia > 31) print('Dia invalido');
    if (mes < 1 || mes > 12) print('Mes invalido');
    if (ano < 1) print('Ano invalido');
  }

  void mostrarData() => print('$dia/$mes/$ano');
}
