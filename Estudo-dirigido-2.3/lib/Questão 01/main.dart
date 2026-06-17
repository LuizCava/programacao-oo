// import 'bonificavel.dart';
// import 'funcionario_comum.dart';
// import 'gerente.dart';
// import 'lista_generica.dart';

import 'bonificavel.dart';

void main() {

 ListaGenerica<Bonificavel> funcionarios = ListaGenerica<Bonificavel>();


 Bonificavel funcionario1 = FuncionarioComum('Ana', 2500.00);

 Bonificavel funcionario2 = FuncionarioComum('Bruno', 3200.00);
 Bonificavel funcionario3 = Gerente('Carla', 7000.00, 'Financeiro');
 Bonificavel funcionario4 = FuncionarioComum('Diego', 2800.00);
 Bonificavel funcionario5 = Gerente('Elisa', 8500.00, 'Tecnologia');

 funcionarios.adicionar(funcionario1);
 funcionarios.adicionar(funcionario2);
 funcionarios.adicionar(funcionario3);
 funcionarios.adicionar(funcionario4);
 funcionarios.adicionar(funcionario5);

 print(' - Impressão dos funcionários -');
 funcionarios.imprimirItens();

 print('\n - Bônus dos funcionários -');
 
 for (var funcionario in funcionarios.obterItens()) {

 print('Bônus: R\$ ${funcionario.calcularBonus().toStringAsFixed(2)}');

 }
}

// Implementações simples para FuncionarioComum e Gerente,
// caso não estejam definidas em outros arquivos do projeto.
class FuncionarioComum implements Bonificavel {
	final String nome;
	final double salario;

	FuncionarioComum(this.nome, this.salario);

	@override
	double calcularBonus() => salario * 0.10;

	@override
	String toString() => 'FuncionarioComum: $nome, Salário: R\$ ${salario.toStringAsFixed(2)}';
}

class Gerente implements Bonificavel {
	final String nome;
	final double salario;
	final String setor;

	Gerente(this.nome, this.salario, this.setor);

	@override
	double calcularBonus() => salario * 0.20;

	@override
	String toString() => 'Gerente: $nome, Setor: $setor, Salário: R\$ ${salario.toStringAsFixed(2)}';
}

// Implementação simples de ListaGenerica genérica
class ListaGenerica<T> {
	final List<T> _itens = [];

	void adicionar(T item) {
		_itens.add(item);
	}

	List<T> obterItens() {
		return List.unmodifiable(_itens);
	}

	void imprimirItens() {
		for (var item in _itens) {
			print(item.toString());
		}
	}
}