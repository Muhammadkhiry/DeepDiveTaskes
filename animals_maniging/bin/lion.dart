import 'animal.dart';

class Lion extends Animal {

  Lion({required super.name});

  @override
  String makeSound() {
    return("Roarrr!");
  }

  
}


class Elephant extends Animal{
  Elephant({required super.name});

  @override
  String makeSound() {
    return("Pawoo!");
  }

}