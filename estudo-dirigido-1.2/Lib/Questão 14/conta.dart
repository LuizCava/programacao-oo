class Conta {
String _titular;
double _saldo;
Conta(this._titular, this._saldo);
void exibir() {
print('Titular: $_titular');
print('Saldo: $_saldo');
print('------------------------');
}
}
class Gerente {
void depositar(Conta conta, double valor) {

conta._saldo += valor;
}
void sacar(Conta conta, double valor) {
if (valor <= conta._saldo) {
conta._saldo -= valor;
} else {
print('Saldo insuficiente');
}
}
}