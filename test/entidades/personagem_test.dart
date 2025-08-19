import 'package:test/test.dart';
import 'package:rpg_v2/entidades/personagem.dart';

void main () {
  
group('Testes para a classe Personagem', (){

test('Deve criar um objeto de Personagem', (){

final personagem = Personagem();
expect(personagem, isA<Personagem>());

});
});

}