const String facadeCode = """class Light {
  void turnOn() {}
  void turnOff() {}
}

class SecureCamera {
  void turnOn() {}
  void idle() {}
}

class Door {
  void open() {}
  void close() {}
}

class HouseFacade {
  Light light;
  Door door;
  SecureCamera camera;
  HouseFacade(this.light, this.door, this.camera);

  void goHome() {
    light.turnOn();
    door.open();
    camera.idle();
  }

  void leaveHome() {
    light.turnOff();
    door.close();
    camera.turnOn();
  }
}

void main(List<String> args) {
  Light light = Light();
  Door door = Door();
  SecureCamera camera = SecureCamera();

  HouseFacade houseFacade = HouseFacade(light, door, camera);
  houseFacade.goHome();
  houseFacade.leaveHome();
}""";
