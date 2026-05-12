abstract class Ligavel {
  void ligar();
  void desligar();
}

class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);
}

class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(String marca, String modelo, this.sistemaOperacional) : super(marca, modelo);

  @override
  void ligar() {
    print('Smartphone $marca $modelo ligando com $sistemaOperacional...');
  }

  @override
  void desligar() {
    print('Smartphone $marca $modelo desligando...');
  }
}

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(String marca, String modelo, this.memoriaRam) : super(marca, modelo);

  @override
  void ligar() {
    print('Notebook $marca $modelo ligando com ${memoriaRam}GB de RAM...');
  }

  @override
  void desligar() {
    print('Notebook $marca $modelo desligando...');
  }
}

void main() {
  Smartphone smartphone = Smartphone('Apple', 'IPhone 15 Pro', 'iOS');
  Notebook notebook = Notebook('Lenovo', 'LOQ', 16);

  smartphone.ligar();
  smartphone.desligar();
  print('');

  notebook.ligar();
  notebook.desligar();
  print('');
}