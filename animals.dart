import 'dart:developer';

abstract class Animal {
  void move();
  void makeSound();
}

abstract class Fish extends Animal {
  @override
  void move() {
    print("swims with its flipper or/and tail");
  }
}

abstract class Reptile extends Animal {}

class Alligator extends Reptile implements canWalk, canSwim {
  @override
  void move() {
    print("Moves through water and land");
  }

  @override
  void makeSound() {
    print("ommits a scary and deep roar");
  }

  @override
  void swimType() {
    print("swimming: medium speed, medium agility");
  }

  @override
  void walkType() {
    print("walking: medium speed, good agility");
  }
}

class Goldfish extends Fish implements canSwim, canFly {
  @override
  makeSound() {
    print("blub");
  }

  @override
  swimType() {
    print("swimmming: slow speed, high agility");
  }

  fly() {
    print("wow that goldfish is flying!!!!!!!!!!!");
  }
}

abstract class canFly {
  void fly(){
    print("this animal can fly");
  }
}

abstract class canSwim {
  void swimType();
}

abstract class canWalk {
  void walkType();
}

globalFly(Object? animal) {
  if (animal is canFly) {
    animal.fly();
  } else {
    print("this animal can not fly");
  }
}
