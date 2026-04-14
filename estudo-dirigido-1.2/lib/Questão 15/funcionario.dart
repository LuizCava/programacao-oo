class Funcionario {
  String nome;
  String cargo;
  double salario;

  // Construtor para estagiario (cargo e salario fixos)
  Funcionario.estagiario(this.nome)
      : cargo = 'Estagiario',
        salario = 1000;

  // Construtor para funcionario pleno (salario informado)
  Funcionario.pleno(this.nome, this.salario)
      : cargo = 'Pleno';

  // Construtor para gerente com bonus opcional
  Funcionario.gerente(this.nome, {double bonus = 1000})
      : cargo = 'Gerente',
        salario = 5000 + bonus;

  void exibirDados() {
    print("Nome: $nome");
    print("Cargo: $cargo");
    print("Salario: R\$ ${salario.toStringAsFixed(2)}");
    print("=======================================");
  }
}
