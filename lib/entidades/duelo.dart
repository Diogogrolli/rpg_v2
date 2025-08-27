import 'package:rpg_v2/entidades/dado.dart';
import 'package:rpg_v2/entidades/personagem.dart';

class Duelo {
  final Dado _dado;
  final Personagem _jogador1;
  final Personagem _jogador2;

  Duelo({required Dado dado, required Personagem jogador1, required Personagem jogador2,
  })  : _dado = dado,
        _jogador1 = jogador1,
        _jogador2 = jogador2;
}