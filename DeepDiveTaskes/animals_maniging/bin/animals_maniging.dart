import 'zoo_keeper.dart';
import 'lion.dart';

void main(List<String> arguments) {
  ZooKeeper keeper = ZooKeeper(keeperName: "Muhammad");
  Lion lion = Lion(name: "Skar");
  Elephant elephant = Elephant(name: "Buddy");

  keeper.addAnimal(lion);
  keeper.addAnimal(elephant);
  keeper.showAnimals();
  
}
