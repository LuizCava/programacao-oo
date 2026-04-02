import 'musica.dart';

void main() {
  final faixas = [
    musica('Evidencias', 'Chitaozinho e Xororo', 290),
    musica('Nao Aprendi Dizer Adeus', 'Leandro e Leonardo', 200),
    musica('Dormi na Praca', 'Bruno e Marrone', 159),
  ];
  final album = Album('Especiais Brasileiros', faixas);
  album.imprimirResumo();
  album.iniciarReproducao();
}