const List<String> definition = [
  "The Observer pattern defines a one-to-many dependency between objects, where one object (subject) maintains a list of its dependents (observers), and automatically notifies them about any state changes."
];

const Map<String, String> characteristics = {
  "Subject: ":
      "The object that maintains the state and notifies observers about changes.",
  "Observer: ":
      "The interface or class defining the update behavior when the subject's state changes.",
  "Decoupling: ":
      "Decouples the subject from its observers, promoting loose coupling and easier maintenance."
};

const Map<String, String> useCases = {
  "Event Handling: ":
      "Effectively routing events (subject state changes) to appropriate handlers (observers) based on their interests.",
  "UI Updates: ":
      "Notifying UI components (observers) about changes in the underlying data (subject) to update the user interface dynamically.",
  "Data Synchronization: ":
      "Keeping multiple objects (observers) synchronized with a central source of data (subject) whenever it changes."
};

const Map<String, String> benefits = {
  "Loose Coupling: ":
      "Improves code maintainability and testability by separating the subject (data) from its observers (presentation or logic).",
  "Flexibility: ":
      "Observers can be added or removed dynamically without modifying the subject, allowing for flexible event handling.",
  "Reusability: ":
      "Subjects can be reused in different contexts to notify various observers about their state changes."
};

const Map<String, String> drawbacks = {
  "Increased Complexity: ":
      "Introducing subjects and observers can add complexity compared to a simpler direct notification approach.",
  "Tight Coupling Risk: ":
      "If observers rely heavily on the subject's specific implementation details, tight coupling might be introduced unintentionally."
};
