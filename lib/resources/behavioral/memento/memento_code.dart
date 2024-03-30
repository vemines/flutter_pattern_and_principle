const String mementoCode = """class Editor {
  String content = '';
  void type(String words) {
    content = words;
  }

  Memento save() {
    return Memento(content);
  }

  void restore(Memento memento) {
    content = memento.content;
  }
}

class Memento {
  final String content;
  Memento(this.content);
}

void main(List<String> args) {
  final editor = Editor();
  editor.type('Hello Vemines!');
  var memento = editor.save(); // save 'Hello Vemines!' to momento
  editor.type('Hello World!'); // editor.content = 'Hello World!'
  editor.restore(memento); // editor.content = 'Hello Vemines!'
}""";
