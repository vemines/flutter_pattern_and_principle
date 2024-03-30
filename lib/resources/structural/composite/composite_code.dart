const String compositeCode = """abstract class Shape {
  void draw();
}

class Square extends Shape {
  Square(this.side);
  double side;

  @override
  void draw() {
    // implement draw square
  }
}

class Rectangle extends Shape {
  Rectangle({required this.height, required this.width});
  double height;
  double width;

  @override
  void draw() {
    // implement draw rectangle
  }
}

class CompositeClass {
  List<Shape> shapes = <Shape>[];
  void addShape(Shape shape) {
    shapes.add(shape);
  }

  void excuteComposite() {
    for (var shape in shapes) {
      shape.draw();
    }
  }
}

void main(List<String> args) {
  Square square = Square(10);
  Rectangle rect = Rectangle(height: 10, width: 10);
  CompositeClass composite = CompositeClass()
    ..addShape(square)
    ..addShape(rect)
    ..addShape(square)
    ..excuteComposite();
}""";
