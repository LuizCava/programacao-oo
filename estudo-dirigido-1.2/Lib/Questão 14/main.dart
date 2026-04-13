import 'conta.dart';

void main() {
var conta = Conta('Matheus', 1000);
var g1 = Gerente();
var g2 = Gerente();
print('Estado inicial');
conta.exibir();
g1.depositar(conta, 500);
print('Depois do deposito do gerente 1');
conta.exibir();
g2.sacar(conta, 200);
print('Depois do saque do gerente 2');
conta.exibir();
}