const List<String> definition = [
  "The Memento pattern allows capturing and storing the internal state of an object without revealing its implementation details. This stored state (memento) can be used to restore the object to its previous state later."
];

const Map<String, String> characteristics = {
  "Originator: ":
      "The object whose internal state is being captured and restored.",
  "Memento: ":
      "An object that stores the captured state of the Originator in a way that protects its internal representation.",
  "Caretaker: ":
      "An optional object responsible for managing the Memento objects (storing, retrieving). Not always necessary."
};

const Map<String, String> useCases = {
  "Undo/Redo Functionality: ":
      "Implementing undo/redo functionality by storing Memento objects representing past states of the Originator.",
  "Version Control: ":
      "Managing different versions of an object's state by storing Memento objects for each version.",
  "State Restoration: ":
      "Restoring an object to a previous state after an error or for other purposes, using the Memento object."
};

const Map<String, String> benefits = {
  "Encapsulation: ":
      "Protects the internal state of the Originator by providing a safe way to access and store its state through the Memento.",
  "Flexibility: ":
      "Enables storing and restoring different aspects of the Originator's state depending on the Memento implementation.",
  "Loose Coupling: ":
      "Decouples the code that needs to restore the state from the Originator itself."
};

const Map<String, String> drawbacks = {
  "Increased Memory Usage: ":
      "Storing Memento objects can increase memory usage, especially for complex object states.",
  "Complexity: ":
      "Introducing Memento and Caretaker objects might add some complexity to the design."
};
