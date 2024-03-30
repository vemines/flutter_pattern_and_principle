const List<String> definition = [
  "The Proxy pattern introduces an intermediary object that controls access to the real object. It provides a layer of abstraction between the client code and the real object, allowing you to add additional functionality or control access."
];

const Map<String, String> characteristics = {
  "Intermediary: ":
      "Introduces a Proxy object that acts as an intermediary between the client and the real object.",
  "Controlled Access: ":
      "The Proxy can control access to the real object, potentially adding functionalities like security checks, caching, or lazy loading.",
  "Abstraction: ":
      "Provides a layer of abstraction, decoupling the client code from the specific implementation details of the real object.",
};

const Map<String, String> useCases = {
  "Access Control: ":
      "Restricting access to sensitive resources by implementing authorization checks in the Proxy.",
  "Lazy Loading: ":
      "Deferring the creation of the real object until it's actually needed, optimizing performance for infrequently used objects.",
  "Remote Objects: ":
      "Creating a local Proxy object for a remote object, simplifying interaction and handling communication details."
};

const Map<String, String> benefits = {
  "Flexibility: ":
      "Enables adding functionalities like caching, access control, or lazy loading without modifying the real object itself.",
  "Decoupling: ":
      "Decouples the client code from the real object's implementation, improving code maintainability and testability.",
  "Security: ":
      "Can be used to enforce access control and protect sensitive resources by managing access through the Proxy."
};

const Map<String, String> drawbacks = {
  "Increased Complexity: ":
      "Introduces an additional layer of abstraction (the Proxy object) which can add complexity to the design.",
  "Potential Performance Overhead: ":
      "The Proxy layer might introduce a slight overhead due to the additional method call before reaching the real object."
};
