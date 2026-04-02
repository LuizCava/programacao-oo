class Motor {
  int potencia;
  String tipo;

  Motor(this.potencia, this.tipo);

  void exibirMotor() {
    print('Potencia: $potencia');
    print('Tipo: $tipo');
  }
}

class Carro {
  String modelo;
  Motor motor;

  Carro(this.modelo, this.motor);

  void exibirCarro() {
    print('Modelo: $modelo');
    print('Dados do motor:');
    motor.exibirMotor();
    print('----------------------');
  }
}