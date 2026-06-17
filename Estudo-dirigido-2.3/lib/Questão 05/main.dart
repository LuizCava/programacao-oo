import 'apresentavel.dart';

class Professor implements Apresentavel {
  final String nome;
  final int idade;
  final String disciplina;
  final double salario;

  Professor(this.nome, this.idade, this.disciplina, this.salario);

  @override
  String toString() => '$nome ($idade anos) - Professor de $disciplina';

  @override
  void exibirDados() {
    print('Professor: $nome, Idade: $idade, Disciplina: $disciplina, Salário: R\$ $salario');
  }
}

class Aluno implements Apresentavel {
  final String nome;
  final int idade;
  final String matricula;
  final String curso;

  Aluno(this.nome, this.idade, this.matricula, this.curso);

  @override
  String toString() => '$nome ($idade anos) - Aluno de $curso';

  @override
  void exibirDados() {
    print('Aluno: $nome, Idade: $idade, Matrícula: $matricula, Curso: $curso');
  }
}

class Coordenador implements Apresentavel {
  final String nome;
  final int idade;
  final String departamento;
  final int anosExperiencia;

  Coordenador(this.nome, this.idade, this.departamento, this.anosExperiencia);

  @override
  String toString() => '$nome ($idade anos) - Coordenador de $departamento';

  @override
  void exibirDados() {
    print('Coordenador: $nome, Idade: $idade, Departamento: $departamento, Anos de Experiência: $anosExperiencia');
  }
}

class ListaGenerica<T> {
  final List<T> _itens = [];

  void adicionar(T item) {
    _itens.add(item);
  }

  List<T> obterItens() {
    return List<T>.from(_itens);
  }

  void imprimirItens() {
    for (var i = 0; i < _itens.length; i++) {
      print('${i + 1}: ${_itens[i]}');
    }
  }
}


void main() {
  ListaGenerica<Apresentavel> pessoas = ListaGenerica<Apresentavel>();

  pessoas.adicionar(Aluno('Ana', 19, 'A001', 'ADS'));
  pessoas.adicionar(
      Aluno('Bruno', 22, 'A002', 'Engenharia de Software'));

  pessoas.adicionar(
      Professor('Carla', 38, 'POO', 2000));

  pessoas.adicionar(
      Professor('Diego', 41, 'Banco de Dados', 1900));

  pessoas.adicionar(
      Coordenador('Elisa', 45, 'Tecnologia', 15));

  pessoas.imprimirItens();

  print('\n--- Dados ---');

  for (var pessoa in pessoas.obterItens()) {
    pessoa.exibirDados();
  }
}