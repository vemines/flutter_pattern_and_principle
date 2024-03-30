const List<String> definition = [
  "The Interface Segregation Principle (ISP) states that clients shouldn't be forced to depend on methods they don't use. Large interfaces should be broken down into smaller, specific interfaces.",
];

const Map<String, String> characteristics = {
  "Smaller Interfaces: ":
      "ISP promotes creating smaller, more focused interfaces that group related functionalities together.",
  "Client Dependency: ":
      "Clients only dep]end on the interfaces they need, reducing coupling and improving code maintainability.",
  "Multiple Implementations: ":
      "Classes can implement multiple smaller interfaces depending on the functionalities they provide.",
};

const Map<String, String> useCases = {
  "Large Class Hierarchies: ":
      "Breaking down large interfaces in complex class hierarchies simplifies client dependencies and promotes better organization.",
  "Extensibility: ":
      "New functionalities can be added by creating new, smaller interfaces without modifying existing client code.",
  "Loose Coupling: ":
      "Clients depend on specific functionalities through smaller interfaces, reducing coupling and improving testability.",
};

const Map<String, String> benefits = {
  "Flexibility: ":
      "Clients can choose the specific functionalities they need through smaller interfaces.",
  "Maintainability: ":
      "Smaller, focused interfaces are easier to understand, maintain, and evolve without affecting unrelated functionalities.",
  "Reusability: ":
      "Classes can be reused in different contexts by implementing the specific interfaces required.",
};

const Map<String, String> drawbacks = {
  "Increased Number of Interfaces: ":
      "Applying ISP strictly might lead to a larger number of smaller interfaces, potentially increasing code complexity.",
  "Overhead of Multiple Implementations: ":
      "Classes might need to implement multiple smaller interfaces, adding some overhead compared to a single large interface.",
};
