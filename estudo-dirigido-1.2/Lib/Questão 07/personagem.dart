class Personagem {
String _nome;
int _vida;
int _energia;
Personagem(this._nome, this._vida, this._energia);
void exibirStatus() {
print('Nome: $_nome');
print('Vida: $_vida');
print('Energia: $_energia');
print('------------------------');
}
void alterarVida(int novaVida) {
_vida = novaVida;
}
}