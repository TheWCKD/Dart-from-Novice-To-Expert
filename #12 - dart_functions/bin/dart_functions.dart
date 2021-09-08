void main(List<String> arguments) {}

class Animal {}

mixin Swimmer {
  final double depth = 3.0;
  void swim() => print('I can SWIM!');
}
mixin Walker {
  final double speed = 1.4;
  void walk() => print('I can WALK!');
}
mixin Flyer {
  final double speed = 10;
  final double altitude = 3.0;
  void fly() => print('I can FLY!');
}

class Mammal extends Animal {}

class Bird extends Animal {}

class Fish extends Animal {}

class Duck extends Bird with Walker, Swimmer, Flyer {}
