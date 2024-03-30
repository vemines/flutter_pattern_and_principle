const String factoryAbstractCode = """abstract class AbstractClass {}

class Class1 implements AbstractClass {}

class Class2 implements AbstractClass {}

abstract class AbstractClassFactory {
  Class1 produceClass1();
  Class2 produceClass2();
}

class ClassProduceFactory implements AbstractClassFactory {
  @override
  Class1 produceClass1() {
    return Class1();
  }

  @override
  Class2 produceClass2() {
    throw Class2();
  }
}
void main(List<String> args) {
  ClassProduceFactory classProduceFactory = ClassProduceFactory();
  Class1 class1 = classProduceFactory.produceClass1();
  Class2 class2 = classProduceFactory.produceClass2();
}""";
