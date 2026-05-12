abstract class Calculavel {
  double valorFinal();
}

class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);
}

class IngressoVip extends Ingresso implements Calculavel {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional)
      : super(evento, valor);

  @override
  double valorFinal() {
    return valor + valorAdicional;
  }
}

class IngressoPromocional extends Ingresso implements Calculavel {
  double desconto;

  IngressoPromocional(String evento, double valor, this.desconto)
      : super(evento, valor);

  @override
  double valorFinal() {
    return valor - desconto;
  }
}

void main() {
  IngressoVip vip = IngressoVip('Show de Rock', 100.00, 50.00);
  print('Ingresso VIP');
  print('Evento: ${vip.evento}');
  print('Valor final: R\$ ${vip.valorFinal()}');
  print('');

  IngressoPromocional promocional = IngressoPromocional('Festival', 80.00, 20.00);
  print('Ingresso Promocional');
  print('Evento: ${promocional.evento}');
  print('Valor final: R\$ ${promocional.valorFinal()}');
  print('');
}