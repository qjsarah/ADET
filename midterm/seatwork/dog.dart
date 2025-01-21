import 'dart:io';
class dog {
  String breed = "", size = "", age = "", color = "";
  dog.large(String breed, String size, String age, String color){
    this.breed=breed;
    this.size=size;
    this.age=age;
    this.color=color;
  }
  dog.small(String breed, String size, String age, String color){
    this.breed=breed;
    this.size=size;
    this.age=age;
    this.color=color;
  }
  dog.medium(String breed, String size, String age, String color){
    this.breed=breed;
    this.size=size;
    this.age=age;
    this.color=color;
  }
}

main () {
     dog dog1 = new dog.large("Neapolitan Mastiff", "Large", "5", "Black");
     dog dog2 = new dog.small("Maltese", "Small", "2", "White");
     dog dog3 = new dog.medium("Chow Chow", "Medium", "3", "Brown");
    print("""Dog Sizes
    [A] Large
    [B] Small
    [C] Medium""");
    stdout.write('Enter Dog Size: \t');
    String choice = stdin.readLineSync()!.toUpperCase();
    print("");

    if (choice == 'A') print ("""Large Dogs Available
    Breed: ${dog1.breed}
    Size: ${dog1.size}
    Age: ${dog1.age}
    Color: ${dog1.color}""");
    else if (choice == 'B') print ("""Small Dogs Available
    Breed: ${dog2.breed}
    Size: ${dog2.size}
    Age: ${dog2.age}
    Color: ${dog2.color}""");
    else if (choice == 'C') print ("""Medium Dogs Available
    Breed: ${dog3.breed}
    Size: ${dog3.size}
    Age: ${dog3.age}
    Color: ${dog3.color}""");
    else print ("""Choice not found, showing you SMALL DOGS available instead.
    Breed: ${dog2.breed}
    Size: ${dog2.size}
    Age: ${dog2.age}
    Color: ${dog2.color}""");
  }