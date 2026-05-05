class dispositivo {
  String marca;
  String modelo;

dispositivo(this.marca, this.modelo);

void ligar() {
  print('O dispositivo $marca $modelo está ligado.');
  }
}
class Smartphone extends dispositivo {
  String sistemaOperacional;
Smartphone(String marca, String modelo, this.sistemaOperacional) : super(marca, modelo);

@override
void ligar() {
  print('O smartphone está rodando o sistema operacional $sistemaOperacional.');
  }
}
void main() {
  Smartphone smartphone = Smartphone('Apple', 'iPhone 15 Pro', 'iOS');
  smartphone.ligar();
}