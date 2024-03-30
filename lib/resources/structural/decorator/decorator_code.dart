const String decoratorCode = """abstract class Shape {
  double calcSquare();
  void incLength(double x);
}

class Square extends Shape {
  Square(this.side);
  double side;

  @override
  double calcSquare() {
    return side * side;
  }

  @override
  void incLength(double x) {
    side += x;
  }
}

class DecoratorSquare1 implements Shape {
  Square square;
  DecoratorSquare1(this.square);

  @override
  void incLength(double x) {
    square.incLength(x);
  }

  @override
  double calcSquare() => square.calcSquare();
}

class DecoratorSquare2 implements Shape {
  Square square;
  DecoratorSquare2(this.square);

  @override
  void incLength(double x) {
    square.incLength(2 * x);
  }

  @override
  double calcSquare() => square.calcSquare();
}

void main(List<String> args) {
  Square square = Square(10);
  square = DecoratorSquare1(square)..incLength(5);
  square = DecoratorSquare2(square)..incLength(5);
}""";
