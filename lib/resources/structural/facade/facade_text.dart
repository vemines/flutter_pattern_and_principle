const List<String> definition = [
  "The Facade pattern provides a simplified interface to a library, framework, or any other complex set of classes. It hides the complexities of the underlying system and presents a more user-friendly interface for the client code."
];

const Map<String, String> characteristics = {
  "Simplified Interface: ":
      "Provides a high-level interface that hides the complexities of the underlying system.",
  "Improved Usablity: ":
      "Makes the system easier to use and understand for client code.",
  "Loose Coupling: ":
      "Decouples the client code from the specific implementation details of the underlying system."
};

const Map<String, String> useCases = {
  "Complex APIs: ":
      "Simplifying complex APIs with numerous classes and methods into a more manageable interface.",
  "Legacy Codebase: ":
      "Creating a facade for a legacy codebase to improve its usability and maintainability.",
  "Subsystems: ":
      "Providing a unified interface to interact with multiple subsystems within a larger application."
};

const Map<String, String> benefits = {
  "Improved Readability: ":
      "Client code interacts with the facade, making the overall codebase easier to read and understand.",
  "Reduced Complexity: ":
      "Hides the complexities of the underlying system, promoting cleaner and more concise client code.",
  "Maintainability: ":
      "Changes to the underlying system can be isolated within the facade, minimizing the impact on client code."
};

const Map<String, String> drawbacks = {
  "Loss of Control: ":
      "Client code may lose some control over the underlying system compared to directly interacting with individual classes.",
  "Potential Performance Overhead: ":
      "The facade layer might introduce a slight overhead due to the additional layer of abstraction."
};
