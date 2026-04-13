import 'contato.dart';

void main() {
var agenda1 = Agenda.vazia();
agenda1.adicionarContato(Contato('Matheus', '99999-9999'));
agenda1.adicionarContato(Contato('Carlos', '88888-8888'));
agenda1.listarContatos();
var lista = [
Contato('Ana', '77777-7777'),
Contato('Pedro', '66666-6666'),
];
var agenda2 = Agenda.comContatos(lista);
agenda2.listarContatos();
}