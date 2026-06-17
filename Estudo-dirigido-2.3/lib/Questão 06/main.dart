// Implement minimal local versions of the required classes to avoid missing file imports.

abstract class Calculavel {
    String titulo;
    double preco;
    double desconto;

    Calculavel(this.titulo, this.preco, this.desconto);

    double valorFinal();

    @override
    String toString() => '$titulo - R\$ ${preco.toStringAsFixed(2)} (desconto ${desconto.toStringAsFixed(2)})';
}

class IngressoVip extends Calculavel {
    IngressoVip(String titulo, double preco, double desconto) : super(titulo, preco, desconto);

    @override
    double valorFinal() => preco - desconto;
}

class IngressoPromocional extends Calculavel {
    IngressoPromocional(String titulo, double preco, double desconto) : super(titulo, preco, desconto);

    @override
    double valorFinal() => (preco - desconto) * 0.9; // aplica mais desconto promocional
}

class IngressoCamarote extends Calculavel {
    String setor;

    IngressoCamarote(String titulo, double preco, double desconto, this.setor) : super(titulo, preco, desconto);

    @override
    double valorFinal() => preco - desconto + 50; // taxa de camarote

    @override
    String toString() => '$titulo (Camarote $setor) - R\$ ${preco.toStringAsFixed(2)}';
}

class ListaGenerica<T> {
    final List<T> _itens = [];

    void adicionar(T item) => _itens.add(item);

    List<T> obterItens() => List.unmodifiable(_itens);

    void imprimirItens() {
        for (var item in _itens) {
            print(item.toString());
        }
    }
}

void main() {

  ListaGenerica<Calculavel> ingressos =
      ListaGenerica<Calculavel>();

  ingressos.adicionar(
      IngressoVip('Show Rock', 200, 80));

  ingressos.adicionar(
      IngressoPromocional('Teatro Infantil', 100, 20));

  ingressos.adicionar(
      IngressoCamarote('Festival Jazz', 300, 50, 'Setor A'));

  ingressos.adicionar(
      IngressoPromocional('Cinema Especial', 60, 15));

  ingressos.adicionar(
      IngressoVip('Show Pop', 180, 70));

  ingressos.imprimirItens();

  print('\nValores finais');

  for (var ingresso in ingressos.obterItens()) {
    print(
        'Valor Final: R\$ ${ingresso.valorFinal().toStringAsFixed(2)}');
  }
}