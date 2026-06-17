import 'fichavel.dart';
import 'carro.dart';
import 'moto.dart';
import 'caminhao.dart';
// Implementação local de ListaGenerica para evitar import faltante
class ListaGenerica<T> {
  final List<T> _itens = <T>[];

  void adicionar(T item) => _itens.add(item);

  List<T> obterItens() => List<T>.from(_itens);

  void imprimirItens() {
    for (var i = 0; i < _itens.length; i++) {
      print('${i + 1}: ${_itens[i]}');
    }
  }
}
 
void main() {
  ListaGenerica<Fichavel> veiculos = ListaGenerica<Fichavel>();
 
  Fichavel veiculo1 = Carro('Toyota', 'Corolla', 2022, 4);
  Fichavel veiculo2 = Carro('Honda', 'Civic', 2021, 4);
  Fichavel veiculo3 = Moto('Yamaha', 'Fazer', 2023, 250);
  Fichavel veiculo4 = Moto('Honda', 'Biz', 2020, 125);
  Fichavel veiculo5 = Caminhao('Volvo', 'VM', 2019, 12);
 
  veiculos.adicionar(veiculo1);
  veiculos.adicionar(veiculo2);
  veiculos.adicionar(veiculo3);
  veiculos.adicionar(veiculo4);
  veiculos.adicionar(veiculo5);
 
  print('--- Impressão dos veículos ---');
  veiculos.imprimirItens();
 
  print('\n--- Fichas dos veículos ---');
  for (var veiculo in veiculos.obterItens()) {
    veiculo.exibirFicha();
  }
}
 