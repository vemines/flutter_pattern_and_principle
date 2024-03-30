const List<String> definition = [
  "The Template Method pattern defines the skeleton of an algorithm in an operation, deferring some steps to subclasses. It allows subclasses to override specific steps without changing the overall structure of the algorithm."
];

const Map<String, String> characteristics = {
  "Template Method: ":
      "A method in the superclass (often abstract) that defines the overall structure of the algorithm with calls to abstract or concrete methods.",
  "Abstract Steps: ":
      "Methods (often declared abstract) within the template method that subclasses can override to customize specific parts of the algorithm.",
  "Concrete Steps: ":
      "Methods within the template method that provide default implementations for specific steps in the algorithm.",
};

const Map<String, String> useCases = {
  "Common Algorithm Structure: ":
      "Defining a common skeletal structure for an algorithm while allowing subclasses to specialize certain steps. This is useful for algorithms with variations but a core sequence of steps.",
  "Extensibility: ":
      "Subclasses can extend the functionality of the algorithm without modifying the core logic in the superclass.",
  "Reusability: ":
      "The template method itself can be reused in different contexts by creating subclasses with specific implementations for the abstract steps."
};

const Map<String, String> benefits = {
  "Code Reuse: ":
      "Promotes code reuse by separating the core algorithm structure from its variations in subclasses.",
  "Flexibility: ":
      "Enables subclasses to customize specific parts of the algorithm while adhering to the overall structure.",
  "Maintainability: ":
      "Keeps the core logic centralized in the superclass, improving maintainability and reducing the risk of introducing errors in subclasses."
};

const Map<String, String> drawbacks = {
  "Limited Flexibility: ":
      "The template method defines the overall structure, which might limit flexibility compared to a completely open design.",
  "Increased Complexity: ":
      "Introducing an abstract superclass and abstract methods can add some complexity compared to a simpler, direct implementation."
};
