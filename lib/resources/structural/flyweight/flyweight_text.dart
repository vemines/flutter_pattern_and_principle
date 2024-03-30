const List<String> definition = [
  "The Prototype pattern allows creating new objects by cloning existing ones. This is useful when object creation is expensive or complex, and you want to reuse existing instances to save resources and time."
];

const Map<String, String> characteristics = {
  "Object Cloning: ":
      "Objects are responsible for their own cloning, ensuring control over the cloning process.",
  "Reduced Creation Cost: ":
      "Avoids the overhead of creating new objects from scratch, especially for expensive or complex objects.",
  "Customization: ":
      "Cloned objects can be modified before use, allowing for customization based on specific needs."
};

const Map<String, String> useCases = {
  "Caching: ":
      "Prototypes can be used to cache expensive objects and create copies on demand.",
  "Complex Object Creation: ":
      "Suitable for creating complex objects with many dependencies, where cloning avoids unnecessary initialization overhead.",
  "State Management: ":
      "Prototypes can be used in state management patterns to create copies of state objects with modifications."
};

const Map<String, String> benefits = {
  "Performance Improvement: ":
      "Reduces the cost of object creation, especially for expensive or complex objects.",
  "Flexibility: ":
      "Allows for customizing cloned objects before use, catering to specific scenarios.",
  "Code Reusability: ":
      "Existing objects can be reused as prototypes, promoting code reusability."
};

const Map<String, String> drawbacks = {
  "Increased Complexity: ":
      "Introducing a cloning mechanism can add complexity compared to direct object creation.",
  "Shallow vs. Deep Cloning: ":
      "The type of cloning (shallow or deep) needs careful consideration to avoid unintended object sharing.",
  "Potential for Tight Coupling: ":
      "If client code relies heavily on specific prototype implementations, it can limit flexibility."
};
