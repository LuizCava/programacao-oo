import 'carro.dart';

void main() {
var carro = Carro('Fusca', 1000);
var oficina = Oficina();
print('Antes da revisao');
carro.exibirDados();
oficina.revisar(carro);
print('Depois da revisao');
carro.exibirDados();
}