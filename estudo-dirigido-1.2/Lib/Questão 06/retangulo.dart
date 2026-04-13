class Retangulo {
double _largura;
double _altura;
Retangulo(this._largura, this._altura);
Retangulo.vazio()
: _largura = 1,
_altura = 1;
Retangulo.quadrado(double lado)
: _largura = lado,
_altura = lado;
double calcularArea() => _largura * _altura;
double calcularPerimetro() => 2 * (_largura + _altura);
void exibirDados() {
print('Largura: $_largura');
print('Altura: $_altura');
print('Area: ${calcularArea()}');
print('Perimetro: ${calcularPerimetro()}');
print('---------------------------');
}
}