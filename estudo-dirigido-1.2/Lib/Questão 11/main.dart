import 'endereco.dart';

void main() {
var c1 = Cliente(
'Matheus',
Endereco('Rua A', 100, 'Curitiba'),
);
var c2 = Cliente.copia(c1);
print('Antes da alteracao');
c1.exibir();
c2.exibir();
c1._endereco._cidade = 'Araucaria';

print('Depois da alteracao');
c1.exibir();
c2.exibir();
}