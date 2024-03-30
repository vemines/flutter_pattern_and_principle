const List<String> definition = [
  "The Single Responsibility Principle (SRP) states that a class or module should have one, and only one, reason to change."
];

const Map<String, String> characteristics = {
  "Focused Classes: ":
      "Classes should be focused on a single responsibility or functionality.",
  "Loose Coupling: ":
      "Classes adhering to SRP promote loose coupling as they are less likely to depend on changes in unrelated functionalities.",
  "Increased Cohesion: ":
      "SRP encourages classes with high cohesion, meaning their methods and attributes work together towards a single purpose.",
};

const Map<String, String> benefits = {
  "Maintainability: ":
      "Classes with a single responsibility are easier to understand, maintain, and modify as changes are less likely to have unintended consequences.",
  "Reusability: ":
      "Focused classes can be more reusable in different contexts as they encapsulate a specific functionality well.",
  "Testability: ":
      "Smaller, focused classes are easier to test in isolation, improving test coverage and reliability.",
};

const Map<String, String> drawbacks = {
  "Potential Over-Engineering: ":
      "Applying SRP too strictly might lead to overly granular classes, increasing complexity for simpler functionalities.",
  "Subjectivity: ":
      "Determining a single responsibility can be subjective, requiring developer judgment and experience.",
};
