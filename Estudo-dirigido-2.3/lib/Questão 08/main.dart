// Implementações mínimas locais para evitar dependências em arquivos externos
// e corrigir erro de URI inexistente.

class ListaGenerica<T> {
    final List<T> _itens = [];

    void adicionar(T item) => _itens.add(item);

    List<T> obterItens() => List.unmodifiable(_itens);

    void imprimirItens() {
        for (var i = 0; i < _itens.length; i++) {
            print('Item ${i + 1}: ${_itens[i]}');
        }
    }
}

abstract class Informativo {
    final String titulo;
    final String autor;

    Informativo(this.titulo, this.autor);

    void exibirInformacoes();

    @override
    String toString() => '$titulo por $autor';
}

class LivroFisico extends Informativo {
    final int paginas;

    LivroFisico(String titulo, String autor, this.paginas) : super(titulo, autor);

    @override
    void exibirInformacoes() {
        print('Livro Físico: $titulo - $autor, $paginas páginas');
    }
}

class LivroDigital extends Informativo {
    final int tamanhoMB;

    LivroDigital(String titulo, String autor, this.tamanhoMB) : super(titulo, autor);

    @override
    void exibirInformacoes() {
        print('Livro Digital: $titulo - $autor, $tamanhoMB MB');
    }
}

class Audiobook extends Informativo {
    final int duracaoMin;

    Audiobook(String titulo, String autor, this.duracaoMin) : super(titulo, autor);

    @override
    void exibirInformacoes() {
        print('Audiobook: $titulo - $autor, $duracaoMin minutos');
    }
}

void main() {
  ListaGenerica<Informativo> livros = ListaGenerica<Informativo>();

  livros.adicionar(
      LivroFisico('Clean Code', 'Robert Martin', 425));

  livros.adicionar(
      LivroDigital('Dart Básico', 'Mariana Souza', 12));

  livros.adicionar(
      Audiobook('POO na Prática', 'Carlos Lima', 180));

  livros.adicionar(
      LivroFisico('Algoritmos Modernos', 'Ana Torres', 350));

  livros.adicionar(
      LivroDigital('Flutter Essencial', 'Pedro Alves', 25));

  livros.imprimirItens();

  print('\nInformações dos livros');

  for (var livro in livros.obterItens()) {
    livro.exibirInformacoes();
  }
}