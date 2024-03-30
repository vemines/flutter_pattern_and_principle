const List<String> definition = [
  "The Strategy pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from the clients that use it."
];

const Map<String, String> characteristics = {
  "Strategy Interface: ":
      "Defines a common interface for all concrete algorithms, specifying the operation to be performed.",
  "Concrete Strategy Classes: ":
      "Implement the Strategy interface, encapsulating the specific implementation of each algorithm.",
  "Context Object: ":
      "The object that uses a Strategy object and delegates the work to it. It can hold a reference to a specific Strategy object."
};

const Map<String, String> useCases = {
  "Algorithm Selection: ":
      "Choosing an algorithm at runtime based on configuration, user input, or other factors.",
  "Extensible Behavior: ":
      "Adding new algorithms without modifying the Context object or existing client code.",
  "Testability: ":
      "Easier to test different algorithms in isolation by mocking or injecting specific Strategy objects."
};

const Map<String, String> benefits = {
  "Decoupling: ":
      "Decouples the Context object from the specific algorithms it uses, promoting loose coupling and flexibility.",
  "Flexibility: ":
      "Enables switching algorithms dynamically based on needs without modifying the Context object's core logic.",
  "Reusability: ":
      "Strategy objects can be reused in different contexts where the same algorithm is needed."
};

const Map<String, String> drawbacks = {
  "Increased Number of Classes: ":
      "Introducing Strategy objects can increase the number of classes in your codebase.",
  "Potential Performance Overhead: ":
      "Dynamically switching algorithms might introduce some overhead compared to a direct implementation."
};
