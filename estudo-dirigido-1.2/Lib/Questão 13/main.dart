import 'carteira.dart';

void main() {
  Pessoa? p1 = Pessoa('Matheus', Carteira(100));

  p1?.exibir();

  Pessoa? p2 = p1;

  if (p2 != null) {
    p2.carteira.saldo = 250;
  }

  p1?.exibir();

  p2 = null;
  
  p1?.exibir();

  p1 = null;
}