import 'carteira.dart';

class Pessoa {
  String nome;
  Carteira carteira;

  Pessoa(this.nome, this.carteira);

  void exibir() {
    print('Pessoa: $nome');
    carteira.exibir();
  }
}
