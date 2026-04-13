import 'personagem.dart';

void main() {
var p1 = Personagem('Guerreiro', 100, 50);
print('Estado inicial (p1)');
p1.exibirStatus();
var p2 = p1;
print('Alterando vida usando p2...');
p2.alterarVida(40);
print('Estado apos alteracao (p1)');
p1.exibirStatus();
print('Estado apos alteracao (p2)');
p2.exibirStatus();
}