import 'funcionario.dart';

void main() {
  Funcionario f1 = Funcionario.estagiario('Joao');
  Funcionario f2 = Funcionario.pleno('Larissa', 3500);
  Funcionario f3 = Funcionario.gerente('Carlos', bonus: 1500);

  f1.exibirDados();
  f2.exibirDados();
  f3.exibirDados();
}

// a) Vantagem de construtores nomeados?
// Deixam o codigo mais claro. Cada construtor representa um tipo especifico de funcionario.

// b) O que muda no estado inicial com cada construtor?
// Cada construtor define cargo e salario diferentes.
// Estagiario: cargo fixo e salario baixo.
// Pleno: cargo fixo e salario informado.
// Gerente: cargo fixo e salario com bonus.

// c) Por que definir cargo no construtor e melhor que em metodo separado?
// O construtor garante que o objeto nasce em estado valido.
// Com metodo separado, o objeto existiria por um momento sem cargo definido.
