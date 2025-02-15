class CharacterType {
  String type='Mage', 
  build='Full Build', 
  emblem='Flameshot', name='';
  int gold=0;
  
  display() {
    print('''
    Build: $build
    Emblem: $emblem''');
  }
  chargold(){
    return gold;
  }
}

class NewCharacter1 extends CharacterType {
  String name = 'Kagura', status='Ready';
  int gold = 12000;

  display(){
    print('''
    Build: $build
    Emblem: $emblem
    Ultimate Status: $status''');
  }
  chargold(){
    return gold;
  }
}

class NewCharacter2 extends CharacterType {
  String name = 'Lunox', status='Not Ready';
  int gold = 13000;

  display(){
    print('''
    Build: $build
    Emblem: $emblem
    Ultimate Status: $status''');
  }
  chargold(){
    return gold;
  }
}
main(){
  print('===============================');
  print('>>>Welcome to Mobile Legends<<<');
  print('===============================');
  CharacterType type = new CharacterType();
  print('Character Type: ${type.type}');
  type.display();
  print('===============================');
  
  
  CharacterType char1 = new NewCharacter1();
  print('''
  ${char1.name} ${char1.type}''');
  char1.display();
  print('\t\t\t\tCurrent Gold: ${char1.chargold()}');
  print('===============================');
  
  CharacterType char2 = new NewCharacter2();
  print('''
  ${char2.name} ${char2.type}''');
  char2.display();
  print('\t\t\t\tCurrent Gold: ${char2.chargold()}');
}
