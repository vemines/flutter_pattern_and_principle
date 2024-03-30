const List<String> definition = [
  "The Command pattern encapsulates a request as an object, allowing for parameterization of clients with different requests, queuing or logging of requests, and undo/redo functionality."
];

const Map<String, String> characteristics = {
  "Command Object: ": "Represents an encapsulated request that can be invoked.",
  "Decoupling: ":
      "Decouples the sender of a request from the receiver, promoting loose coupling.",
  "Parameterization: ":
      "Allows specifying parameters for the request within the Command object itself."
};

const Map<String, String> useCases = {
  "Macro Commands: ":
      "Grouping multiple commands into a single command for executing a complex sequence of actions.",
  "Undo/Redo: ":
      "Implementing undo/redo functionality by storing and replaying Command objects.",
  "Asynchronous Operations: ":
      "Queuing commands for asynchronous execution, allowing decoupling of command execution from the main program flow."
};

const Map<String, String> benefits = {
  "Loose Coupling: ":
      "Improves code maintainability and testability by separating concerns between the sender and receiver of the request.",
  "Extensibility: ":
      "New commands can be easily added without modifying existing code that invokes them.",
  "Reusability: ":
      "Commands can be reused in different contexts by different senders."
};

const Map<String, String> drawbacks = {
  "Increased Complexity: ":
      "Introducing Command objects can add complexity compared to a simpler direct invocation approach.",
  "Overhead: ":
      "Creating and managing Command objects might introduce some overhead, especially for simple operations."
};
