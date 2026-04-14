import 'carteira.dart';
import 'pessoa.dart';

void main() {
  Pessoa? p1 = Pessoa('Lucas', Carteira(100));
  Pessoa? p2 = p1;

  print('Estado inicial:');
  p1!.exibir();
  p2!.exibir();

  p2.carteira.adicionar(50);

  print('\nDepois de alterar a carteira por p2:');
  p1.exibir();
  p2.exibir();

  p1 = null;
  print('\nDepois de p1 = null:');
  print('p1: $p1');
  p2.exibir();

  p2 = null;
  print('\nDepois de p2 = null:');
  print('p2: $p2');
}

// a) Por que alterar via p2 apareceu em p1?
// Porque p1 e p2 apontam para o mesmo objeto Pessoa na memoria.

// b) p1 e p2 guardam o objeto ou uma referencia?
// Guardam uma referencia (ponteiro) para o objeto na heap.

// c) Onde ficam variaveis locais e objetos criados?
// Variaveis locais: na stack. Objetos criados com new/construtor: na heap.

// d) Quando o objeto fica elegivel para o garbage collector?
// Quando nenhuma variavel aponta mais para ele.
// Depois de p2 = null, nenhuma referencia sobrou, entao o objeto pode ser coletado.
