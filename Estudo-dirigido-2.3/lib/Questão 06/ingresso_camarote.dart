import 'ingresso.dart';
import 'calculavel.dart';

class IngressoCamarote extends Ingresso implements Calculavel {
  double taxaServico;
  String localizacao;

  IngressoCamarote(
      String evento,
      double valor,
      this.taxaServico,
      this.localizacao)
      : super(evento, valor);

  @override
  double valorFinal() {
    return valor + taxaServico;
  }

  @override
  String toString() {
    return 'Ingresso Camarote | Evento: $evento | Localização: $localizacao | Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
