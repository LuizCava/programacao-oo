import 'livro.dart';
import 'informativo.dart';

class LivroDigital extends Livro implements Informativo {
  double tamanhoArquivo;

  LivroDigital(String titulo, String autor, this.tamanhoArquivo)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print(this);
  }

  @override
  String toString() {
    return 'Livro Digital | Título: $titulo | Autor: $autor | Tamanho: ${tamanhoArquivo} MB';
  }
}
