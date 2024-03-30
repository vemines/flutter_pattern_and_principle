const List<String> definition = [
  "The Dependency Inversion Principle (DIP) st{}ates that high-level modules should not depend on low-level modules. Both should depend on abstractions. Abstractions should not depend on details. Details should depend on abstractions.",
];

const Map<String, String> characteristics = {
  "Abstractions: ":
      "Focus on defining interfaces or abstract classes that specify the functionalities needed, without implementation details.",
  "Concrete Implementations: ":
      "Low-level modules provide concrete implementations of the functionalities defined in the abstractions.",
  "Dependency Inversion: ":
      "The dependency is reversed from high-level modules depending on specific low-level implementations to both depending on a common abstraction.",
};

const Map<String, String> useCases = {
  "Loose Coupling: ":
      "DIP promotes loose coupling between modules by depending on abstractions, making the system more flexible and easier to maintain.",
  "Testability: ":
      "High-level modules can be easily tested in isolation by mocking or injecting concrete implementations through the abstractions.",
  "Open/Closed Principle (OCP): ":
      "DIP aligns well with OCP as new concrete implementations can be added without modifying existing high-level modules that depend on the abstraction.",
};

const Map<String, String> benefits = {
  "Flexibility: ":
      "Changes in low-level implementations can be made without affecting high-level modules as long as they adhere to the abstraction.",
  "Maintainability: ":
      "Easier to maintain and modify the system as dependencies are on abstractions, not specific implementations.",
  "Reusability: ":
      "High-level modules can be reused in different contexts by depending on the same abstraction that can have different concrete implementations.",
};

const Map<String, String> drawbacks = {
  "Increased Abstraction: ":
      "Introducing abstractions might add some complexity to the codebase compared to a simpler, direct approach.",
  "Learning Curve: ":
      "Understanding and effectively using abstractions can have a learning curve, especially for beginners.",
};
