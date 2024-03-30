const String lCodeWrong = """class Vehicle {
  void startEngine() {
    print("Vehicle engine started");
  }
}

class Car extends Vehicle {
  @override
  void startEngine() {
    print("Car engine started");
  }

  void openDoors() {
    print("Car doors opened");
  }
}

void main() {
  Vehicle vehicle = Car(); // Car object to a Vehicle reference (subtype to supertype)

  vehicle.startEngine(); // Car engine started (unexpected behavior)
  vehicle.openDoors(); // Compile-time error: The method 'openDoors' isn't defined in 'Vehicle'
}""";

const String lCodeRight = """abstract class Vehicle {
  void startEngine(); // Abstract method defining the core functionality
}

class Car extends Vehicle {
  @override
  void startEngine() {
    print("Car engine started");
  }

  void openDoors() {
    print("Car doors opened");
  }
}

void main() {
  Vehicle vehicle =      Car(); // Car object to a Vehicle reference (subtype to supertype)
  vehicle.startEngine(); //Car engine started(consistent behavior)

  // Functionality specific to Car can only be used when the reference is of the actual Car type
  if (vehicle is Car) {
    vehicle.openDoors(); // Prints "Car doors opened" (safe usage)
  }
}""";
