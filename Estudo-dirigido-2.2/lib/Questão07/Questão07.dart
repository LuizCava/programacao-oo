abstract class Animal {
  String nome;

  Animal(this.nome);

  void emitirSom();
}

class cachorro extends Animal {

    cachorro(String nome) : super(nome);

    @override
    void emitirSom() {
      print('O cachorro $nome emite um latido: "Au Au!"');
    }
  }
  class gato extends Animal {

    gato(String nome) : super(nome);

    @override
    void emitirSom() {
      print('O gato $nome emite um miado: "Miau!"');
    }
  }
  class passaro extends Animal {

    passaro(String nome) : super(nome);

    @override
    void emitirSom() {
      print('O pássaro $nome emite um canto: "Piu Piu!"');
    }
  }
  class vaca extends Animal {

    vaca(String nome) : super(nome);

    @override
    void emitirSom() {
      print('A vaca $nome emite um mugido: "Muu!"');
    }
  }
void main() {
  cachorro rex = cachorro('Rex');
  gato mia = gato('Mia');
  passaro piu = passaro('Piu-Piu');
  vaca mimosa = vaca('Mimosa');


  mia.emitirSom();
  rex.emitirSom();
  piu.emitirSom();
  mimosa.emitirSom();
}
