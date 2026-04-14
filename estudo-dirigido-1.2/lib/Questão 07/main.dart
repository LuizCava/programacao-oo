import 'personagem.dart';

void main() {
  Personagem p1 = Personagem('Arthas', 100, 80);
  Personagem p2 = p1;

  print('Antes da alteracao:');
  p1.exibir();
  p2.exibir();

  p2.alterarVida(50);

  print('\nDepois da alteracao:');
  p1.exibir();
  p2.exibir();
}

// a) Por que ao alterar p2, p1 tambem mudou?
// Porque p1 e p2 apontam para o mesmo objeto na memoria.
// Quando fazemos p2 = p1, as duas variaveis ficam olhando para o mesmo lugar.

// b) Esse comportamento esta correto?
// Sim. Em Dart, objetos sao passados por referencia.
