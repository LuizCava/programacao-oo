class Endereco {
String _rua;
int _numero;
String _cidade;

Endereco(this._rua, this._numero, this._cidade);
void exibir() {
print('Endereco: $_rua, $_numero - $_cidade');
}
}
class Cliente {
String _nome;
Endereco _endereco;
Cliente(this._nome, this._endereco);
Cliente.copia(Cliente outro)
: _nome = outro._nome,
_endereco = Endereco(
outro._endereco._rua,
outro._endereco._numero,
outro._endereco._cidade,
);
void exibir() {
print('Cliente: $_nome');
_endereco.exibir();
print('------------------------');
}
}