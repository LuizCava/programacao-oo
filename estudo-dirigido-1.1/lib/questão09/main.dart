import 'pessoa.dart';

void main() {
  Pessoa(
    'Luiz',
    23,
    '000.000.000-00',
    Endereco('Travessa da Paz', 10, 'Centro', 'Belo Horizonte', 'MG', 30000000),
  ).mostrarPessoa();
}