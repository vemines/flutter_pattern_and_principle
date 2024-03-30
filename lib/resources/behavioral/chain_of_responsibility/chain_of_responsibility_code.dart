const String chainOfResponsibilityCode = """enum ShapeType {
  square,
  rect,
}

abstract class Shape {
  Shape? _nextShape;
  void setChain(Shape nextShape) {
    _nextShape = nextShape;
  }

  Shape? draw(ShapeType type);
}

class Square extends Shape {
  @override
  Shape? draw(ShapeType type) {
    if (type == ShapeType.square) {
      return Square();
    } else if (_nextShape != null) {
      return _nextShape!.draw(type);
    } else {
      return null;
    }
  }
}

class Rectangle extends Shape {
  @override
  Shape? draw(ShapeType type) {
    if (type == ShapeType.rect) {
      return Rectangle();
    } else if (_nextShape != null) {
      return _nextShape!.draw(type);
    } else {
      return null;
    }
  }
}

void main(List<String> args) {
  Square square = Square();
  Rectangle rectangle = Rectangle();
  square.setChain(rectangle);

  square.draw(ShapeType.square);
  square.draw(ShapeType.rect); // Rectangle()
  rectangle.draw(ShapeType.square); // null}
}""";
