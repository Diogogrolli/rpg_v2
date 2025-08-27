class Personagem {
  String _nome;
  int _vida;
  int _velocidade;
  int _escudo;

  Personagem(this._nome, this._vida, this._velocidade, this._escudo);


int get vida => _vida;
String get nome => _nome;
int get escudo => _escudo;
int get velocidade => _velocidade;

  void defender(int dano) {
    var danoReal = dano - _escudo;
    if (danoReal > 0) {
      _vida -= danoReal;
    }
    if (_vida < 0) {
      _vida = 0;
    }
  }

  bool estaVivo() {
    return _vida > 0;
  }

  void atacar(Personagem oponente, int dano) {
    print('Nome do atacante: $_nome');
    print('Nome do defensor: ${oponente._nome}');
    oponente.defender(dano);
  }
  
}
