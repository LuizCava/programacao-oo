class Caixa {
int _valor;
Caixa(this._valor);
void exibir() {
print('Valor: $_valor');
print('---------------------');
}
}
void alterarValor(Caixa c) {
c._valor = 200;
}
void trocarCaixa(Caixa c) {
c = Caixa(500);
}