import 'contato.dart';

class Agenda {
  List<Contato> contatos;

  Agenda.vazia() : contatos = [];

  Agenda.comContatos(this.contatos);

  void adicionarContato(Contato contato) {
    contatos.add(contato);
  }

  void removerContatoPorNome(String nome) {
    contatos.removeWhere((c) => c.nome == nome);
  }

  void listarContatos() {
    for (var contato in contatos) {
      contato.exibir();
    }
    print("=======================================");
  }
}
