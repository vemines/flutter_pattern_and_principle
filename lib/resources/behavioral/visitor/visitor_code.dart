const String visitorCode = """abstract class Shape {
  void accept(Visitor visitor);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);

  @override
  void accept(Visitor visitor) {
    visitor.visitCircle(this);
  }
}

class Square implements Shape {
  final double side;
  Square(this.side);

  @override
  void accept(Visitor visitor) {
    visitor.visitSquare(this);
  }
}

abstract class Visitor {
  void visitCircle(Circle circle);
  void visitSquare(Square square);
}

class AreaVisitor implements Visitor {
  @override
  void visitCircle(Circle circle) {
    final area = 3.14 * circle.radius * circle.radius;
    print('Circle area: \$area');
  }

  @override
  void visitSquare(Square square) {
    final area = square.side * square.side;
    print('Square area: \$area');
  }
}

void main(List<String> args) {
  final circle = Circle(5);
  final square = Square(4);
  final visitor = AreaVisitor();
  circle.accept(visitor);
  square.accept(visitor);
}""";
