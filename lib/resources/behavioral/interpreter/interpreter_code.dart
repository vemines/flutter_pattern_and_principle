const String interpreterCode = """abstract class Expression {
  int interpret();
}

class Plus extends Expression {
  Expression left;
  Expression right;
  Plus(this.left, this.right);

  @override
  int interpret() {
    return left.interpret() + right.interpret();
  }
}

class Number extends Expression {
  int number;
  Number(this.number);
  @override
  int interpret() {
    return number;
  }
}

class Subtract extends Expression {
  Expression left;
  Expression right;
  Subtract(this.left, this.right);

  @override
  int interpret() {
    return left.interpret() - right.interpret();
  }
}

void main(List<String> args) {
  Expression expression = Plus(Subtract(Number(5), Number(10)), Number(20)); // 15
}""";
