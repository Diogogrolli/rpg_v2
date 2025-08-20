import 'package:test/test.dart';
import 'package:rpg_v2/entidades/personagem.dart';

void main () {
  
group('Testes para a classe Personagem', (){

test('Deve criar um objeto de Personagem', (){
final personagem = Personagem(
  'Guerreiro',
  10,
  10,
  10,
);
expect(personagem, isA<Personagem>());

});

  test('Deve inicializar com os valores corretos', (){
    final personagem = Personagem('Diogo', 15, 13, 14);
    expect(personagem.nome, 'Diogo');
    expect(personagem.vida, 15);
     expect(personagem.escudo, 14);
    expect(personagem.velocidade, 13);
  });

  test('Deve reduzir a vida ao defender e receber dano', (){
      final personagem = Personagem('João', 10, 10, 10);
      expect(personagem.vida, 10);
      personagem.defender(5);
      expect(personagem.vida, 5);
  });

  test('Deve reduzir a vida corretamente ao receber dano maior que o escudo', (){ //DANO - ESCUDO
      final personagem = Personagem('Maria', 10, 10, 10);
      expect(personagem.vida, 10);
      personagem.defender(15);
      expect(personagem.vida, 5);
  });
});

}