const List<String> definition = [
  "The Bridge pattern separates the abstraction (what) from the implementation (how) of an object. This allows for independent changes to both parts without affecting the other. It promotes loose coupling and improves code maintainability."
];

const Map<String, String> characteristics = {
  "Abstraction and Implementation: ":
      "Separates the what (abstraction) from the how (implementation) of an object.",
  "Independent Changes: ":
      "Allows for modifying the abstraction or implementation independently without affecting the other.",
  "Loose Coupling: ":
      "Decouples the client code from concrete implementations, promoting flexibility."
};

const Map<String, String> useCases = {
  "Large Class Hierarchies: ":
      "Helps manage complexity in situations with extensive class hierarchies, promoting maintainability.",
  "Extending Functionality: ":
      "Enables adding new implementations without modifying existing abstractions or client code.",
  "Algorithmic Variations: ":
      "Useful when an object can have different variations of an algorithm, allowing for choosing the appropriate implementation at runtime."
};

const Map<String, String> benefits = {
  "Flexibility: ":
      "Facilitates adding new implementations and extending functionality without code changes in the client or abstraction.",
  "Loose Coupling: ":
      "Improves code maintainability by decoupling client code from concrete implementations.",
  "Improved Maintainability: ":
      "Separation of concerns promotes code readability and reduces the impact of changes in one part on the other."
};

const Map<String, String> drawbacks = {
  "Increased Complexity: ":
      "Introduces additional abstraction and implementation classes, potentially increasing initial design complexity.",
  "Potential Performance Overhead: ":
      "In some cases, the bridge pattern can introduce a slight overhead due to the additional layer of abstraction."
};
