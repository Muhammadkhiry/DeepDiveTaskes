import 'animal.dart';

class ZooKeeper {
  String keeperName;
  List<Animal> _animals = [];

  ZooKeeper({required this.keeperName});

  void addAnimal(Animal animal) {
    _animals.add(animal);
  }

  void showAnimals() {
    print("Zoo keeper name is: $keeperName\nKept animals are:");
    for (var animal in _animals) {
      print(animal);
    }
  }
}
