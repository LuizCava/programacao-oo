class Aluno {
  String ra;
  String nome;
  double notaFinal;

  Aluno(this.ra, this.nome, this.notaFinal);

  bool aprovado() {
    return notaFinal >= 7.0;
  }

  void exibirBoletim() {
    print("RA: $ra");
    print("Nome: $nome");
    print("Nota Final: $notaFinal");
    print("Situacao: ${aprovado() ? 'Aprovado' : 'Reprovado'}");
    print("=======================================");
  }
}
