import 'Produto.dart';

void main() {
var p = Produto('Teclado', 150.0, 10);
p.exibirFicha();
p.vender(3);
p.exibirFicha();
}