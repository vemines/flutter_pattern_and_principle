const String oCodeRight = """abstract class Shape {
  double area();
}

class Square extends Shape {
  double side;
  Square(this.side);

  @override
  double area() {
    return side * side;
  }
}

// Circle extend Shape
class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

void main() {
  List<Shape> shapes = [Square(5), Circle(3)];

  for (var shape in shapes) {
    print(shape.area());
  }
}""";

const String oCodeWrong = """enum ShapeType { square, circle }

class Shape {
  double height; // side or diameter
  ShapeType type;
  Shape(this.type, this.height);

  double area() {
    if (type == ShapeType.square) {
      return height * height;
    } else if (type == ShapeType.circle) {
      return 3.14 * height * height / 4;
    } else {
      return 0;
    }
    // Violation: Adding a new shape would require modifying this method
  }
}""";
