import '../q07/carrinho.dart';
import '../q08/cupom_desconto.dart';

class Pedido {
  String numero;
  Carrinho carrinho;
  CupomDesconto? cupom;
  double totalBruto;
  double totalFinal;
  String status;

  Pedido(this.numero, this.carrinho, this.cupom)
      : totalBruto = 0,
        totalFinal = 0,
        status = "aberto";

  void fecharPedido() {
    totalBruto = carrinho.calcularTotal();
    if (cupom != null && cupom!.ativo) {
      double desconto = cupom!.calcularDesconto(totalBruto);
      totalFinal = totalBruto - desconto;
    } else {
      totalFinal = totalBruto;
    }
    status = "fechado";
  }

  void cancelarPedido() {
    status = "cancelado";
  }

  void exibirResumoPedido() {
    print("Pedido: $numero");
    print("Status: $status");
    print("Cliente: ${carrinho.cliente.nome}");
    print("Total Bruto: R\$ ${totalBruto.toStringAsFixed(2)}");
    if (cupom != null) {
      print("Cupom: ${cupom!.codigo} (${cupom!.percentual}%)");
    }
    print("Total Final: R\$ ${totalFinal.toStringAsFixed(2)}");
    print("=======================================");
  }
}
