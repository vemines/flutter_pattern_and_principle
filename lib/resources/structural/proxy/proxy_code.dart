const String proxyCode = """class MyClass {
  void hideFunction() {}
}

abstract class MyClassInterface {
  void proxyFuntion();
}

class Proxy implements MyClassInterface {
  MyClass myClass;
  Proxy(this.myClass);

  @override
  void proxyFuntion() {
    myClass.hideFunction();
  }
}

void main(List<String> args) {
  MyClass subject = MyClass();
  Proxy proxy = Proxy(subject)..proxyFuntion();
}""";
