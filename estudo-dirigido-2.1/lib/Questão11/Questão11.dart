class Personagem {
  String nome;
  double vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel) {
    if (nome.isEmpty) nome = 'Sem nome';
    if (vida < 0) vida = 0;
    if (nivel < 1) nivel = 1;
  }

  void receberDano(double dano) {
    vida = vida - dano;
    if (vida < 0) vida = 0;
  }

  bool estaVivo() {
    return vida > 0;
  }

  void exibirStatus() {
    print('--- $nome ---');
    print('Vida: $vida');
    print('Nivel: $nivel');
    print('Vivo: ${estaVivo()}');
  }
}

class Combatente extends Personagem {
  double forca;

  Combatente(String nome, double vida, int nivel, this.forca)
      : super(nome, vida, nivel);

  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome} causando $forca de dano!');
    alvo.receberDano(forca);
  }
}

class Guerreiro extends Combatente {
  double armadura;

  Guerreiro(String nome, double vida, int nivel, double forca, this.armadura)
      : super(nome, vida, nivel, forca);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Armadura: $armadura');
  }

  void ataquePesado(Personagem alvo) {
    double dano = forca * 2;
    print('$nome usa ataque pesado em ${alvo.nome} causando $dano de dano!');
    alvo.receberDano(dano);
  }
}

class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(String nome, double vida, int nivel, double forca, this.flechas)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (flechas > 0) {
      flechas = flechas - 1;
      print('$nome atira uma flecha em ${alvo.nome} causando $forca de dano!');
      alvo.receberDano(forca);
    } else {
      print('$nome nao tem flechas para atacar!');
    }
  }
}

class Mago extends Combatente {
  double mana;

  Mago(String nome, double vida, int nivel, double forca, this.mana)
      : super(nome, vida, nivel, forca);

  void lancarMagia(Personagem alvo) {
    if (mana >= 10) {
      double dano = forca + 15;
      mana = mana - 10;
      print('$nome lanca magia em ${alvo.nome} causando $dano de dano!');
      alvo.receberDano(dano);
    } else {
      print('$nome nao tem mana suficiente!');
    }
  }
}

class Inimigo extends Personagem {
  double recompensa;

  Inimigo(String nome, double vida, int nivel, this.recompensa)
      : super(nome, vida, nivel);

  void exibirRecompensa() {
    print('Recompensa de $nome: $recompensa moedas');
  }
}

class Goblin extends Inimigo {
  double velocidade;

  Goblin(String nome, double vida, int nivel, double recompensa,
      this.velocidade)
      : super(nome, vida, nivel, recompensa);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Velocidade: $velocidade');
  }
}

class Dragao extends Inimigo {
  double poderDeFogo;

  Dragao(String nome, double vida, int nivel, double recompensa,
      this.poderDeFogo)
      : super(nome, vida, nivel, recompensa);

  void soltarFogo(Personagem alvo) {
    print('$nome solta fogo em ${alvo.nome} causando $poderDeFogo de dano!');
    alvo.receberDano(poderDeFogo);
  }
}

void main() {
  Guerreiro thoran = Guerreiro('Thoran', 100, 5, 20, 15);
  Arqueiro lia = Arqueiro('Lia', 80, 4, 15, 10);
  Mago merlin = Mago('Merlin', 70, 6, 25, 50);
  Goblin gob = Goblin('Gob', 40, 2, 30, 8);
  Dragao ignis = Dragao('Ignis', 200, 10, 100, 35);

  print('--- Sequencia de acoes ---');
  thoran.atacar(gob);
  lia.atacar(gob);
  merlin.lancarMagia(ignis);
  ignis.soltarFogo(thoran);


  print('--- Status final ---');
  
  thoran.exibirStatus();
  lia.exibirStatus();
  merlin.exibirStatus();
  gob.exibirStatus();
  ignis.exibirStatus();
}