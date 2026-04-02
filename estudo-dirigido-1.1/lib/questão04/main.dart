import 'lampada.dart';

void main() {
  var l = Lampada();
  for (int i = 0; i < 6; i++) {
    l.ligar();
    l.desligar();
  }
  l.status();
}
