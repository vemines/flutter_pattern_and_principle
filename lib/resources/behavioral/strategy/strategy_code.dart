const String strategyCode = """abstract class Strategy {
  int execute(int num1, int num2);
}

class Add implements Strategy {
  @override
  int execute(int num1, int num2) {
    return num1 + num2;
  }
}

class Subtract implements Strategy {
  @override
  int execute(int num1, int num2) {
    return num1 - num2;
  }
}

class Context {
  Strategy strategy;
  Context(this.strategy);

  int executeStrategy(int num1, int num2) {
    return strategy.execute(num1, num2);
  }
}

void main(List<String> args) {
  var context = Context(Add());
  context.executeStrategy(10, 5); // 15
  context = Context(Subtract());
  context.executeStrategy(10, 5); // 5
}""";
