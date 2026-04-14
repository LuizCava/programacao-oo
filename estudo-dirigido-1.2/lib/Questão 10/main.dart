import 'caixa.dart';

void alterarValor(Caixa c) {
  c.setValor(99);
}

void trocarCaixa(Caixa c) {
  c = Caixa(999);
  c.exibir();
}

void main() {
  Caixa caixa = Caixa(10);

  print('Estado inicial:');
  caixa.exibir();

  alterarValor(caixa);
  print('Depois de alterarValor:');
  caixa.exibir();

  trocarCaixa(caixa);
  print('Depois de trocarCaixa:');
  caixa.exibir();
}

// a) Por que alterarValor() modifica o objeto original?
// Porque c recebe a referencia do mesmo objeto. Chamar setValor() muda o objeto original.

// b) Por que trocarCaixa() nao substituiu a caixa do main?
// Porque c = Caixa(999) so muda a variavel local c.
// A variavel caixa no main continua apontando para o objeto antigo.

// c) Qual a diferenca entre alterar um objeto e reatribuir uma variavel?
// Alterar via metodo afeta o objeto original (todas as referencias veeem a mudanca).
// Reatribuir (c = novo) so muda a variavel local, sem afetar outras referencias.
