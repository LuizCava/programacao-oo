import 'lista_generica.dart';
import 'personagem.dart';
import 'atacavel.dart';
import 'magico.dart';
import 'flamejante.dart';

import 'guerreiro.dart';
import 'arqueiro.dart';
import 'mago.dart';
import 'goblin.dart';
import 'dragao.dart';

void main() {

  ListaGenerica<Atacavel> atacantes =
      ListaGenerica<Atacavel>();

  ListaGenerica<Magico> magicos =
      ListaGenerica<Magico>();

  ListaGenerica<Flamejante> flamejantes =
      ListaGenerica<Flamejante>();

  ListaGenerica<Personagem> personagens =
      ListaGenerica<Personagem>();


  Guerreiro thoran =
      Guerreiro('Thoran', 120, 5, 20, 15);

  Arqueiro lia =
      Arqueiro('Lia', 80, 4, 15, 10);

  Mago merlin =
      Mago('Merlin', 70, 6, 10, 50);

  Goblin gob =
      Goblin('Gob', 40, 2, 100, 25);

  Dragao ignis =
      Dragao('Ignis', 200, 10, 1000, 35);


  atacantes.adicionar(thoran);
  atacantes.adicionar(lia);
  atacantes.adicionar(merlin);

  magicos.adicionar(merlin);

  flamejantes.adicionar(ignis);

  personagens.adicionar(thoran);
  personagens.adicionar(lia);
  personagens.adicionar(merlin);
  personagens.adicionar(gob);
  personagens.adicionar(ignis);


  print('--- Personagens ---');
  personagens.imprimirItens();

  print('\n--- Ataques ---');

  for (var personagem in atacantes.obterItens()) {
    personagem.atacar();
  }

  print('\n--- Magias ---');

  for (var personagem in magicos.obterItens()) {
    personagem.lancarMagia();
  }

  print('\n--- Fogo ---');

  for (var personagem in flamejantes.obterItens()) {
    personagem.soltarFogo();
  }

  print('\n--- Estado Final ---');

  personagens.imprimirItens();
}