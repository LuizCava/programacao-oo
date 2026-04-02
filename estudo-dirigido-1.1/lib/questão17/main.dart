import 'semaforo.dart';

void main() {
  var s = Semaforo('verde', 5);
  for (int i = 0; i < 15; i++) {
    s.mostrarEstado();
    s.diminuirTempo();
  }
}
