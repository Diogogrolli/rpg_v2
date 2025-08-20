class Personagem {
  String nome;
  int vida;
  int velocidade;
  int escudo;

  Personagem(
    this.nome,
    this.vida,
    this.velocidade,
    this.escudo,
  );

  void defender(int dano) {
    var danoReal = dano - escudo;
    if (danoReal > 0 ) {
      vida -= danoReal;
    }


    
  }
}



