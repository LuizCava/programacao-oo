class Relogio {
  int horas, minutos, segundos;

  Relogio(this.horas, this.minutos, this.segundos) {
    if (horas < 0 || horas > 23) print('Hora invalida');
    if (minutos < 0 || minutos > 59) print('Minuto invalido');
    if (segundos < 0 || segundos > 59) print('Segundo invalido');
  }

  void mostrarHorario() => print('$horas:$minutos:$segundos');
}