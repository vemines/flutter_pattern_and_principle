const List<String> definition = [
  "The Liskov Substitution Principle (LSP) states that objects of a superclass should be replaceable with objects of its subtypes without altering any of the desirable properties of that program (e.g., correctness).",
];

const Map<String, String> characteristics = {
  "Subtype Contracts: ":
      "Subtypes (derived classes) should uphold the contracts (preconditions and postconditions) established by the superclass methods they override.",
  "Behavioral Subtyping: ":
      "The behavior of a subtype should be consistent with the behavior expected from its supertype when used in a program.",
};

const Map<String, String> useCases = {
  "Subclassing: ":
      "Ensuring that subclasses can be used interchangeably with their superclass types without causing issues.",
  "Framework Design: ":
      "Guaranteeing that components designed to work with a base class can work seamlessly with its subtypes as well.",
};

const Map<String, String> benefits = {
  "Reliability: ":
      "Promotes reliable and predictable behavior in object-oriented systems by ensuring subtypes adhere to the expectations set by the superclass.",
  "Reusability: ":
      "Code written to work with a superclass can potentially be reused with its subtypes as long as they adhere to LSP.",
  "Maintainability: ":
      "Makes code easier to maintain as changes to a superclass are less likely to break functionality in its subtypes that follow LSP.",
};

const Map<String, String> drawbacks = {
  "Potential Over-Engineering: ":
      "Strict adherence to LSP might lead to overly complex class hierarchies for simple functionalities.",
  "Subtlety of Violations: ":
      "LSP violations can sometimes be subtle and difficult to detect, especially in large codebases.",
};
