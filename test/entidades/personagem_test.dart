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
  
  test ('Não deve reduzir a vida ao receber dano menor ou igual ao escudo', (){ //DANO - ESCUDO
      final personagem = Personagem('Ana', 10, 10, 10);
      expect(personagem.vida, 10);
      personagem.defender(9);
      expect(personagem.vida, 10);
  });

  test('A vida não pode ser menor que zero', (){
      final personagem = Personagem('Carlos', 10, 5, 10);
      expect(personagem.vida, 10);
      personagem.defender(20);
     expect(personagem.vida, 0); 
  });
  test('Deve verificar corretamente se está vivo', (){
      final personagem = Personagem('Carlos', 10, 5, 10);
      expect(personagem.vida, 10);
      personagem.defender(20);
      expect(personagem.estaVivo(), false);
  });

  test('Deve aplicar ataque corretamente ao oponente',(){
    final atacante = Personagem('Guerreiro', 10, 10, 10);
    final defensor = Personagem('Mago', 10, 10, 10);
    
    atacante.atacar(defensor, 15);

    expect(defensor.vida, 5);
  });

});

}