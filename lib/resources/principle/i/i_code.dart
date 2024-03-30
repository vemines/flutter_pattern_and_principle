const String iCodeWrong = """abstract class Animal {
  void eat();
  void sleep();
  void fly(); // Not all animals can fly
  void swim(); // Not all animals can swim
}

class Bird implements Animal {
  @override
  void eat() {
    print("Bird is eating");
  }

  @override
  void sleep() {
    print("Bird is sleeping");
  }

  @override
  void fly() {
    print("Bird is flying");
  }

  @override
  void swim() {
    throw UnsupportedError("Bird cannot swim"); // Unnecessary method for birds
  }
}

class Fish implements Animal {
  @override
  void eat() {
    print("Fish is eating");
  }

  @override
  void sleep() {
    print("Fish is sleeping");
  }

  @override
  void fly() {
    throw UnsupportedError("Fish cannot fly"); // Unnecessary method for fish
  }

  @override
  void swim() {
    print("Fish is swimming");
  }
}""";

const String iCodeRight = """abstract class Eater {
  void eat();
}

abstract class Sleeper {
  void sleep();
}

abstract class Flyer {
  void fly();
}

abstract class Swimmer {
  void swim();
}

class Bird implements Eater, Sleeper, Flyer {
  @override
  void eat() {
    //  implement eat
  }

  @override
  void fly() {
    //  implement fly
  }

  @override
  void sleep() {
    //  implement sleep
  }
}

class Fish implements Eater, Sleeper, Swimmer {
  @override
  void eat() {
    //  implement eat
  }

  @override
  void sleep() {
    //  implement sleep
  }

  @override
  void swim() {
    //  implement swim
  }
}""";
