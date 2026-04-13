import 'produto.dart';

void main() {
var p1 = Produto('Notebook', 3000);
// cópia por referência
var p2 = p1;
// nova instância (cópia independente)
var p3 = Produto(p1.nome, p1.preco);
print('Estado inicial');
p1.exibir();
p2.exibir();
p3.exibir();
print('Alterando preço via p2');
p2.preco = 2500;
print('Após alteração');
p1.exibir(); // muda
p2.exibir(); // muda
p3.exibir(); // não muda
}