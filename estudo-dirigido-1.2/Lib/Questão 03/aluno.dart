class Aluno {
String _ra;
String _nome;
double _notaFinal;
Aluno (
  {
required String ra,
required String nome,
required double notaFinal,

}
) : _ra = ra,
_nome = nome,
_notaFinal = notaFinal;
bool aprovado() => _notaFinal >= 7;
void exibirBoletim() {
print('RA: $_ra');
print('Nome: $_nome');
print('Nota Final: $_notaFinal');
print(aprovado() ? 'Aprovado' : 'Reprovado');
print('----------------------');
}
}