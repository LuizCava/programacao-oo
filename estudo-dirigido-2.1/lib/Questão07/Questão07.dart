class animal {
  String nome;

  animal(this.nome);

  void emitirSom() {
    print("O $nome emite um som.");
  }
}
class cachorro extends animal {
  cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    print("O $nome au au.");
  }
}
class gato extends animal {
  gato(String nome) : super(nome);

  @override
  void emitirSom() {
    print("O $nome mia.");
  }
}
class passaro extends animal {
  passaro(String nome) : super(nome);

  @override
  void emitirSom() {
    print("O $nome canta.");
  }
}
void main() {
  cachorro cachorro1 = cachorro("Dog");
  gato gato1 = gato("Mia");
  passaro passaro1 = passaro("Piu");

  cachorro1.emitirSom();
  gato1.emitirSom();
  passaro1.emitirSom();
}
