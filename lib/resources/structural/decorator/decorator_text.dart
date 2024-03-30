const List<String> definition = [
  "The Decorator pattern allows objects with incompatible interfaces to work together. It converts the interface of one object (the adaptee) into an interface that the client expects."
];

const Map<String, String> characteristics = {
  "Adaptee: ": "The existing object with the incompatible interface.",
  "Adapter: ":
      "The new class that adapts the adaptee's interface to a compatible one.",
  "Target Interface: ": "The interface that the client expects."
};

const Map<String, String> useCases = {
  "Integrating Legacy Code: ":
      "Adapting older code with incompatible interfaces to newer systems.",
  "Using Third-Party Libraries: ":
      "Using libraries with different interfaces than those required for your application.",
  "Creating Reusable Components: ":
      "Making components adaptable to different interfaces for increased reusability."
};

const Map<String, String> benefits = {
  "Compatibility: ":
      "Enables incompatible objects to collaborate, promoting code reuse and integration.",
  "Loose Coupling: ":
      "Decouples the client from the adaptee, making the code more adaptable to changes.",
  "Transparency: ":
      "Client code interacts with the adapter as if it were interacting with the target interface."
};

const Map<String, String> drawbacks = {
  "Increased Complexity: ":
      "Introduces additional classes and complexity to the design.",
  "Overhead: ": "The adapter layer can add some overhead to method calls."
};
