import 'conta.dart';

void main() {
var c1 = Conta.bancaria('001', 'Matheus');
var c2 = Conta.vip('002', 'Carlos', 1000);

c1.depositar(500);
c1.exibirResumo();
c2.sacar(200);
c2.exibirResumo();
}