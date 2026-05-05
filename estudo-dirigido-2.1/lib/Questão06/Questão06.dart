class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);

  void exibirResumo() {
    print('Evento: $evento');
    print('Valor: R\$ $valor');
  }

}
class IngressoViP extends Ingresso {
  double valorAdicional;

  IngressoViP(String evento, double valor, this.valorAdicional) : super(evento, valor);

  double valorFinal() {
    return valor + valorAdicional;
  }
}

void main() {
  IngressoViP ingressoVip = IngressoViP('Jogo de Futebol', 200.0, 50.0);
  ingressoVip.exibirResumo();
  print('Valor Final: R\$ ${ingressoVip.valorFinal()}');
}
