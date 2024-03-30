const List<String> definition = [
  "The Mediator pattern defines an object that encapsulates how a set of objects interact. It promotes loose coupling by preventing objects from referring to each other explicitly, and it allows you to vary their interaction independently."
];

const Map<String, String> characteristics = {
  "Mediator Object: ":
      "Acts as an intermediary between objects, managing their communication and interactions.",
  "Loose Coupling: ":
      "Decouples objects from each other by centralizing communication through the Mediator.",
  "Centralized Control: ":
      "The Mediator has control over how objects interact and can enforce communication rules."
};

const Map<String, String> useCases = {
  "Complex Interactions: ":
      "Managing complex interactions between multiple objects, simplifying communication logic and reducing dependencies.",
  "Decoupled Design: ":
      "Promoting decoupled design where objects don't need to know about each other's implementation details.",
  "Centralized Event Handling: ":
      "Implementing centralized event handling where the Mediator receives and distributes events to relevant objects."
};

const Map<String, String> benefits = {
  "Reduced Complexity: ":
      "Simplifies communication logic by centralizing it within the Mediator, leading to cleaner and more maintainable code.",
  "Flexibility: ":
      "Enables changing how objects interact without modifying them directly, as interactions are controlled by the Mediator.",
  "Reusability: ":
      "The Mediator itself can be reused in different contexts where similar object interactions are needed."
};

const Map<String, String> drawbacks = {
  "Increased Complexity: ":
      "Introducing a Mediator object can add complexity to the design compared to direct communication between objects.",
  "Potential Performance Overhead: ":
      "The extra layer of indirection through the Mediator might introduce a slight performance overhead."
};
