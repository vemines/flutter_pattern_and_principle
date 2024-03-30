const List<String> definition = [
  "The Abstract Factory Pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes. Concrete factory classes implement this interface, specializing in creating specific families of objects in a single step."
];

const Map<String, String> characteristics = {
  "Abstract Factory Interface: ":
      "Defines methods for creating different product types within the product family.",
  "Concrete Factory Classes: ":
      "Implement the abstract factory interface, specializing in creating specific families of concrete products.",
  "Client Code: ":
      "Uses the abstract factory interface to create objects without knowing their concrete classes."
};

const Map<String, String> useCases = {
  "Creating Families of Objects: ":
      "Used when creating families of related objects that need to be used together, ensuring consistency within the family.",
  "Platform-Specific UI Elements: ":
      "Can be used to create different UI elements based on the target platform (e.g., Material vs. Cupertino).",
  "Loose Coupling: ":
      "Promotes loose coupling between client code and concrete implementations by hiding the creation logic."
};

const Map<String, String> benefits = {
  "Flexibility: ":
      "Allows for introducing new product families and concrete products without modifying existing code.",
  "Decoupling: ":
      "Client code doesn't depend on concrete classes, enhancing loose coupling and facilitating testing.",
  "Code Organization: ":
      "Enforces a clear separation between product creation logic and product usage, improving code readability."
};

const Map<String, String> drawbacks = {
  "Increased Complexity: ":
      "Requires creating abstract factories and concrete factory classes, which can add complexity compared to simpler object creation approaches.",
  "Potential for Tight Coupling: ":
      "If the abstract factory becomes tightly coupled to specific concrete classes, it can limit flexibility for introducing new product families."
};
