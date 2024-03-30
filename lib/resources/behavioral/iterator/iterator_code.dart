const String iteratorCode = """abstract class Alphabet {
  Iterator createIterator();
}

class IteratorAlphabet implements Alphabet {
  final List _chars = [];

  void addItem(String item) {
    _chars.add(item);
  }

  @override
  Iterator createIterator() {
    return Iterator(this);
  }

  int count() {
    return _chars.length;
  }

  dynamic getItem(int index) {
    return _chars[index];
  }
}

class Iterator {
  final IteratorAlphabet _alphabet;
  int _index = 0;

  Iterator(this._alphabet);

  bool hasNext() {
    return _index < _alphabet.count();
  }

  dynamic next() {
    return _alphabet.getItem(_index++);
  }
}

void main(List<String> args) {
  IteratorAlphabet alphabet = IteratorAlphabet();
  alphabet
    ..addItem("A")
    ..addItem("B")
    ..addItem("C");
  Iterator iterator = alphabet.createIterator();
  while (iterator.hasNext()) {
    iterator.next();
  }
}""";
