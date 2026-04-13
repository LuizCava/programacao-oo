import 'caixa.dart';

void main() {
var caixa = Caixa(100);
print('Valor inicial');
caixa.exibir();
alterarValor(caixa);
print('Depois de alterarValor()');
caixa.exibir();
trocarCaixa(caixa);
print('Depois de trocarCaixa()');
caixa.exibir();
}