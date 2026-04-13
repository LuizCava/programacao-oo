class Contato {
String _nome;
String _telefone;
Contato(this._nome, this._telefone);
void exibir() {
print('Nome: $_nome | Telefone: $_telefone');
}
}
class Agenda {
List<Contato> _contatos;
Agenda.vazia() : _contatos = [];
Agenda.comContatos(List<Contato> contatos) : _contatos = contatos;
void adicionarContato(Contato contato) {
_contatos.add(contato);
}
void removerContatoPorNome(String nome) {
_contatos.removeWhere((c) => c._nome == nome);
}
void listarContatos() {
print('--- Contatos ---');
for (var c in _contatos) {
c.exibir();
}
print('----------------');
}
}