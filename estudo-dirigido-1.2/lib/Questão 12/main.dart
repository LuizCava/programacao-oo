import 'contato.dart';
import 'agenda.dart';

void main() {
  Agenda agenda1 = Agenda.vazia();
  agenda1.adicionarContato(Contato('Ana', '1111-1111'));

  Agenda agenda2 = Agenda.comContatos([
    Contato('Bruno', '2222-2222'),
    Contato('Clara', '3333-3333'),
  ]);

  print('Agenda 1:');
  agenda1.listarContatos();

  print('Agenda 2:');
  agenda2.listarContatos();
}

// a) Diferenca entre agenda vazia e com contatos?
// Vazia: lista interna comeca sem nenhum contato.
// Com contatos: ja comeca populada com a lista passada.

// b) Os contatos sao recriados ou a agenda usa as referencias recebidas?
// A agenda usa as mesmas referencias. Se alguem mudar um Contato fora,
// a mudanca aparece dentro da agenda tambem.
