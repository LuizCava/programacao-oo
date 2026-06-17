import 'pessoa.dart';
import 'apresentavel.dart';

class Professor extends Pessoa implements Apresentavel {
  String disciplina;
  double salario;

  Professor(
      String nome,
      int idade,
      this.disciplina,
      this.salario)
      : super(nome, idade);

  @override
  void exibirDados() {
    print(this);
  }

  @override
  String toString() {
    return 'Professor | Nome: $nome | Idade: $idade | Disciplina: $disciplina | Salário: R\$ ${salario.toStringAsFixed(2)}';
  }
}