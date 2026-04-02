class Aluno {
  String nome;
  double n1, n2;

  Aluno(this.nome, this.n1, this.n2);

  double get media => (n1 + n2) / 2;
  String get situacao => media >= 7 ? 'Aprovado' : 'Reprovado';

  void boletim() {
    print('Aluno: $nome');
    print('Media: $media');
    print('Situacao: $situacao');
    print('--------------------');
  }
}
