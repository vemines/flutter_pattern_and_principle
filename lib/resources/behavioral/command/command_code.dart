const String commandCode = """abstract class Command {
  void execute(Editor drawer);
}

class DrawSquareCommand extends Command {
  Editor editor;
  DrawSquareCommand(this.editor);

  @override
  void execute(Editor drawer) {
    editor.drawSquare();
  }
}

class UndoCommand extends Command {
  Editor editor;
  UndoCommand(this.editor);

  @override
  void execute(Editor drawer) {
    editor.undo();
  }
}

class Editor {
  void drawSquare() {
    // implements draw square
  }
  void undo() {
    // implements undo
  }
}

void main(List<String> args) {
  Editor editor = Editor();
  DrawSquareCommand drawSquareCommand = DrawSquareCommand(editor);
  UndoCommand undoCommand = UndoCommand(editor);

  drawSquareCommand.execute(editor);
  undoCommand.execute(editor);
}""";
