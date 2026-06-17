import 'pessoa.dart';
import 'apresentavel.dart';

class Aluno extends Pessoa implements Apresentavel {
  String matricula;
  String curso;

  Aluno(String nome, int idade, this.matricula, this.curso)
      : super(nome, idade);

  @override
  void exibirDados() {
    print(this);
  }

  @override
  String toString() {
    return 'Aluno | Nome: $nome | Idade: $idade | Matrícula: $matricula | Curso: $curso';
  }
}
