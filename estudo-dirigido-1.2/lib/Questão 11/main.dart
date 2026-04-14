import 'endereco.dart';
import 'cliente.dart';

void main() {
  Cliente cliente1 = Cliente('Marina', Endereco('Rua A', 10, 'Curitiba'));
  Cliente cliente2 = Cliente.copia(cliente1);

  cliente2.endereco.alterarRua('Rua B');

  print('Cliente original:');
  cliente1.exibir();

  print('Cliente copiado:');
  cliente2.exibir();
}

// a) Por que alterar o endereco de um nao afetou o outro?
// Porque no construtor copia() foi criado um novo objeto Endereco.
// Cada cliente tem seu proprio Endereco.

// b) O que foi feito para evitar compartilhamento de referencia?
// Foi feita uma copia manual (deep copy) no construtor Cliente.copia().

// c) Qual a diferenca entre copiar referencia e criar nova instancia?
// Copiar referencia: duas variaveis apontam para o mesmo objeto (mudanca em um afeta o outro).
// Nova instancia: objetos independentes (mudanca em um nao afeta o outro).
