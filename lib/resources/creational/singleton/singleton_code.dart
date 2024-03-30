const String singletonCode1 = """class MyClass1 {
  MyClass1._();
  static MyClass1 instance = MyClass1._();
}

void main(List<String> args) {
  MyClass1 myClass1 = MyClass1.instance;
}""";

const String singletonCode2 = """class MyClass2 {
  MyClass2._();
  static MyClass2 _instance = MyClass2._();
  factory MyClass2() =>  _instance;
}

void main(List<String> args) {
  MyClass2 myClass2 = MyClass2();
}""";
