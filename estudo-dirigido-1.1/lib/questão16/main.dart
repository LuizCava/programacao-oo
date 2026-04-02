import 'personagem.dart';

void main() {
  final p1 = Personagem('SubZero', 200, 65);
  final p2 = Personagem('Scorpion', 200, 70);

  while (p1.estaVivo && p2.estaVivo) {
    p1.realizarAtaque(p2);
    p2.exibirStatus();
    if (!p2.estaVivo) { print('${p1.nome} venceu!'); break; }

    p2.realizarAtaque(p1);
    p1.exibirStatus();
    if (!p1.estaVivo) { print('${p2.nome} venceu!'); break; }
  }
  print('Fim da batalha');
}