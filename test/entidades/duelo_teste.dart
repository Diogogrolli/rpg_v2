import 'package:test/test.dart';
import 'package:rpg_v2/entidades/duelo.dart';
import 'package:rpg_v2/entidades/dado.dart';
import 'package:rpg_v2/entidades/personagem.dart';

void main() {

  group('Testes para a entidade Duelo', (){

    test('Deve criar uma instância de Duelo', (){
      final maria = Personagem('Maria', 50, 30, 10);
      final joao = Personagem('João', 45, 40, 7);
      final dado = Dado(20);
      final duelo = Duelo(
        dado: dado,
         jogador1: maria,
          jogador2: joao
      );
    });
  });
  }