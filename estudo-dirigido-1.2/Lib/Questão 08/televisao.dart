class Televisao {
int _canal;
int _volume;
Televisao(this._canal, this._volume);
void exibirEstado() {
print('Canal: $_canal');
print('Volume: $_volume');
print('------------------------');
}
}
class ControleRemoto {
Televisao _tv;
ControleRemoto(this._tv);
void aumentarVolume() => _tv._volume++;
void diminuirVolume() {
if (_tv._volume > 0) _tv._volume--;
}
void proximoCanal() => _tv._canal++;
void canalAnterior() {
if (_tv._canal > 1) _tv._canal--;
}
}