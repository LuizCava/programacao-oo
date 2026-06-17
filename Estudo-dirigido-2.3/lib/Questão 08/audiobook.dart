import 'livro.dart';
import 'informativo.dart';

class Audiobook extends Livro implements Informativo {
  int duracaoMinutos;

  Audiobook(String titulo, String autor, this.duracaoMinutos)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print(this);
  }

  @override
  String toString() {
    return 'Audiobook | Título: $titulo | Autor: $autor | Duração: $duracaoMinutos minutos';
  }
}
