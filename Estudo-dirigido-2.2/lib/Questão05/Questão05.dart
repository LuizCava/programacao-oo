abstract class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void ExibirDados() {
  }
}

class Aluno extends Pessoa {
  String curso;
  String Matricula;

  Aluno(String nome, int idade, this.curso, this.Matricula) : super(nome, idade);

  @override
  void ExibirDados() {
    print('Aluno');
    print('Nome: $nome');
    print('Idade: $idade');
    print('Curso: $curso');
    print('Matrícula: $Matricula');
    print('');
  }
}

class Professor extends Pessoa {
  String disciplina;
  String salario;

  Professor(String nome, int idade, this.disciplina, this.salario) : super(nome, idade);

  @override
  void ExibirDados() {
    print('Professor');
    print('Nome: $nome');
    print('Idade: $idade');
    print('Disciplina: $disciplina');
    print('Salário: $salario');
    print('');

  }
}

void main() {
  Aluno aluno = Aluno('Luiz', 24, 'Engenharia', '123456789');
  aluno.ExibirDados();

  Professor professor = Professor('João', 60, 'Matemática', '5000');
  professor.ExibirDados();
}