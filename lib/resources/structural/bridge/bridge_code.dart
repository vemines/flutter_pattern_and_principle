const String bridgeCode = """abstract class Shape {
  void colored(ColoredShape coloredShape);
}

class Square extends Shape {
  Square(this.side);
  double side;

  @override
  void colored(ColoredShape coloredShape) {
    coloredShape.coloredSquare();
  }
}

abstract class ColoredShape {
  void coloredSquare();
}

class RedShape extends ColoredShape {
  @override
  void coloredSquare() {
    // implements Red Square
  }
}

class BlueShape extends ColoredShape {
  @override
  void coloredSquare() {
    // implements Blue Square
  }
}

void main(List<String> args) {
  Square square = Square(10);

  ColoredShape redShape = RedShape();
  var redSquare = square.colored(redShape);

  ColoredShape blueShape = BlueShape();
  var blueSquare = square.colored(blueShape);
}""";
