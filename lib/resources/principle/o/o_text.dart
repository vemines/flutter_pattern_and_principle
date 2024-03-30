const List<String> definition = [
  "The Open/Closed Principle (OCP) states that software entities (classes, modules, functions) should be open for extension, but closed for modification.",
];

const Map<String, String> characteristics = {
  "Abstraction: ":
      "OCP emphasizes the use of abstraction to define core functionalities, allowing for extension without modifying the existing code.",
  "Inheritance: ":
      "Inheritance is a common way to extend functionality in object-oriented programming, creating subclasses that inherit from a base class but can add new behaviors.",
  "Interfaces: ":
      "Interfaces can also be used to define contracts for behavior, enabling new implementations without modifying existing classes that use the interface.",
};

const Map<String, String> useCases = {
  "Extending Existing Functionality: ":
      "The OCP allows adding new functionalities to a system without modifying existing code. This promotes maintainability and reduces the risk of introducing regressions.",
  "Adding New Algorithms: ":
      "New algorithms or implementations can be created without modifying the core logic that uses them, as long as they adhere to the existing interfaces or abstractions.",
  "Third-Party Integration: ":
      "OCP facilitates integrating with third-party libraries or frameworks by creating new implementations that fit the established interfaces.",
};

const Map<String, String> benefits = {
  "Maintainability: ":
      "OCP promotes maintainability by keeping the core logic closed for modification. New functionalities are added through extensions, reducing the risk of breaking existing code.",
  "Flexibility: ":
      "The system becomes more flexible by allowing new functionalities to be added without modifying existing classes. This makes it easier to adapt to changing requirements.",
  "Reusability: ":
      "Code adhering to OCP is often more reusable as the core functionalities remain untouched and new implementations can be created for specific needs.",
};

const Map<String, String> drawbacks = {
  "Increased Complexity: ":
      "Introducing abstract classes, interfaces, and inheritance hierarchies can add some complexity to the codebase compared to a simpler, non-extensible design.",
  "Over-Engineering: ":
      "Applying OCP too strictly might lead to overly complex designs for simple functionalities. It's essential to balance the benefits with the added complexity.",
};
