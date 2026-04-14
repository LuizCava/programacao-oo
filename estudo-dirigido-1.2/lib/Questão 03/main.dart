import 'aluno.dart';

void main() {
  Aluno aluno1 = Aluno("2024001", "Matheus", 8.5);
  Aluno aluno2 = Aluno("2024002", "Ana", 5.0);
  Aluno aluno3 = Aluno("2024003", "Lucas", 7.0);

  aluno1.exibirBoletim();
  aluno2.exibirBoletim();
  aluno3.exibirBoletim();
}
