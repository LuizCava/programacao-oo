class Usuario {
String _nome;
String _email;
String _apelido;
Usuario(this._nome, this._email, [String? apelido])
: _apelido = apelido ?? _nome;
void exibirPerfil() {
print('Nome: $_nome');
print('Email: $_email');
print('Apelido: $_apelido');
print('----------------------');
}
}