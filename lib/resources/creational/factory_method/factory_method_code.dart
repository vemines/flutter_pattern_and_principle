const String factoryMethodCode1 = """enum FactoryType { class1, class2 }

abstract class AbstractClass1 {}

class Class1 implements AbstractClass1 {}

class Class2 implements AbstractClass1 {}

class AbstractClass1Factory {
  static produce(FactoryType type) {
    switch (type) {
      case FactoryType.class1:
        return Class1();
      case FactoryType.class2:
        return Class2();
      default:
        throw Exception("Invalid FactoryType");
    }
  }
}

void main(List<String> args) {
  Class1 class1 = AbstractClass1Factory.produce(FactoryType.class1);
  Class1 class2 = AbstractClass1Factory.produce(FactoryType.class2);
}""";

const String factoryMethodCode2 = """abstract class AbstractClass2 {}

class Class1 implements AbstractClass2 {}

class Class2 implements AbstractClass2 {}

abstract class AbstractClass2Factory {
  dynamic produce();
}

class Class1Factory implements AbstractClass2Factory {
  @override
  Class1 produce() {
    return Class1();
  }
}

class Class2Factory implements AbstractClass2Factory {
  @override
  Class2 produce() {
    return Class2();
  }
}

void main(List<String> args) {
  Class1Factory class1Factory = Class1Factory();
  Class2Factory class2Factory = Class2Factory();
  Class1 class1 = class1Factory.produce();
  Class2 class2 = class2Factory.produce();
}""";
