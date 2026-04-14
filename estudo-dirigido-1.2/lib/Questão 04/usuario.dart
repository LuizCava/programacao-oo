class Usuario {
  String nome;
  String email;
  String apelido;

  // Construtor com apelido opcional
  Usuario(this.nome, this.email, [String? apelidoOpcional])
      : apelido = apelidoOpcional ?? nome;

  void exibirPerfil() {
    print("Nome: $nome");
    print("Email: $email");
    print("Apelido: $apelido");
    print("=======================================");
  }
}
