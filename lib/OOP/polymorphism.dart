void main() {
  Animal mydog = Dog();
  Animal mycat = Cat();

  List<Animal> mylist = [Dog(), Cat()];

  mydog.sound();
  mycat.sound();
}

class Animal {
  void sound() {
    print('Animals makes sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog barks');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('cat meows');
  }
}
