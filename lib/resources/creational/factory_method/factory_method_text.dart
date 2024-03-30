const List<String> definition = [
  "The Factory pattern provides an interface for creating objects but allows subclasses to decide which class to instantiate. In other words, subclasses define the type of objects to create."
];

const Map<String, String> characteristics = {
  "Centralized Creation: ":
      "Object creation logic is centralized in a factory class, promoting code reusability and maintainability.",
  "Subclasses Define Implementation: ":
      "Subclasses decide which concrete class to instantiate based on runtime conditions.",
  "Flexibility: ":
      "Allows for introducing new object types without modifying the factory class itself."
};

const Map<String, String> useCases = {
  "Hiding Concrete Implementations: ":
      "The factory class can hide the implementation details of concrete classes from client code.",
  "Conditional Object Creation: ":
      "The factory can create different objects based on input parameters or configuration settings."
};

const Map<String, String> benefits = {
  "Loose Coupling: ":
      "Client code doesn't depend on concrete classes, promoting loose coupling and easier testing.",
  "Open/Closed Principle: ":
      "New object types can be introduced without modifying existing code, adhering to the Open/Closed Principle."
};

const Map<String, String> drawbacks = {
  "Increased Complexity: ":
      "Introducing a factory class can add complexity to simple object creation scenarios.",
  "Potential for Tight Coupling: ":
      "If the factory class becomes tightly coupled to specific concrete classes, it can limit flexibility."
};
