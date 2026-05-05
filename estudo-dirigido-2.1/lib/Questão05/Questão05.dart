class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void exibirDados() {
    print("Nome: $nome");
    print("Idade: $idade");
  }

}
class Aluno extends Pessoa {
  String matricula;
  String curso;

  Aluno(String nome, int idade, this.matricula, this.curso) : super(nome, idade);
  
  @override
  void exibirDados() {
    super.exibirDados();
    print("Matrícula: $matricula");
    print("Curso: $curso");
  }
}
void main() {
  Aluno aluno = Aluno("Luiz", 24, "2024296477", "Análise e Desenvolvimento de Sistemas");
  aluno.exibirDados();
} 