const String flyweightCode = """class Color {
  final int red;
  final int green;
  final int blue;

  const Color(this.red, this.green, this.blue);
}

abstract class Shape {}

class Square extends Shape {
  Color color;
  Square(this.color);

  void draw() {
    // draw square
  }
}

class SquareFlyweight {
  Map<String, Color> _colorCache = {};

  Square getSquare(int red, int green, int blue) {
    String colorKey = '\$red-\$green-\$blue';

    if (_colorCache.containsKey(colorKey)) {
      return Square(_colorCache[colorKey]!);
    } else {
      Color newColor = Color(red, green, blue);
      _colorCache[colorKey] = newColor;
      return Square(newColor);
    }
  }
}

void main(List<String> args) {
  SquareFlyweight squareFlyweight = SquareFlyweight();

  Square redSquare = squareFlyweight.getSquare(255, 0, 0)..draw();
  Square greenSquare = squareFlyweight.getSquare(0, 255, 0)..draw();
  Square blueSquare = squareFlyweight.getSquare(0, 0, 255)..draw();
}""";
