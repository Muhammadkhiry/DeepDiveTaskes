abstract class Animal {
  String name;

  Animal({required this.name});

  String makeSound();

  String displayInfo() {
    return ("Animal: $name");
  }

  @override
  String toString() {
    return "${displayInfo()} ==>> Sound: ${makeSound()}";
  }
}
