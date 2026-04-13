class Carro {
String _modelo;
double _quilometragem;
Carro(this._modelo, this._quilometragem);
void exibirDados() {
print('Modelo: $_modelo');
print('Quilometragem: $_quilometragem km');
print('------------------------');
}
}
class Oficina {
void revisar(Carro carro) {
print('Realizando teste de rodagem...');
carro._quilometragem += 50;
}
}