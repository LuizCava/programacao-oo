import 'pessoa.dart';
import 'apresentavel.dart';

class Coordenador extends Pessoa implements Apresentavel {
  String area;
  int tempoExperiencia;

  Coordenador(
      String nome,
      int idade,
      this.area,
      this.tempoExperiencia)
      : super(nome, idade);

  @override
  void exibirDados() {
    print(this);
  }

  @override
  String toString() {
    return 'Coordenador | Nome: $nome | Idade: $idade | Área: $area | Experiência: $tempoExperiencia anos';
  }
}