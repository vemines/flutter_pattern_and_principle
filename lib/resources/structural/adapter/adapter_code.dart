const String adapterCode = """class Square {
  Square(this.side);
  double side;
}

class Rectangle{
  Rectangle({required this.height, required this.width});
  double height;
  double width;
}

class RectangleAdapter {
  RectangleAdapter(this.rectangle);
  Rectangle rectangle;

  Square toSquareByWidth() {
    return Square(rectangle.width);
  }

  Square toSquareByHeight() {
    return Square(rectangle.height);
  }
}

void main(List<String> args) {
  Rectangle rectangle = Rectangle(height: 10, width: 20);
  RectangleAdapter rectangleAdapter = RectangleAdapter(rectangle);
  Square square = rectangleAdapter.toSquareByWidth();
  Square square2 = rectangleAdapter.toSquareByHeight();
}""";
