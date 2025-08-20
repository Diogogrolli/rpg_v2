class Personagem {
  String nome;
  int vida;
  int velocidade;
  int escudo;

  Personagem(this.nome, this.vida, this.velocidade, this.escudo);

  void defender(int dano) {
    var danoReal = dano - escudo;
    if (danoReal > 0) {
      vida -= danoReal;
    }
    if (vida < 0) {
      vida = 0;
    }
  }

  bool estaVivo() {
    return vida > 0;
  }

  void atacar(Personagem oponente, int dano) {
    print('Nome do atacante: $nome');
    print('Nome do defensor: ${oponente.nome}');
    oponente.defender(dano);
  }
  
}
