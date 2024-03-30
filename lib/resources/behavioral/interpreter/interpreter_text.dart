const List<String> definition = [
  "The Interpreter pattern defines an intermediate representation for a language with rules to interpret the representation. It allows creating new grammars or languages without modifying the core interpreter."
];

const Map<String, String> characteristics = {
  "Intermediate Representation: ":
      "Represents the expression or program in a format suitable for interpretation.",
  "Interpreter: ":
      "The object responsible for interpreting the intermediate representation and performing the associated actions.",
  "Extensibility: ":
      "Allows adding new expressions or languages by defining new interpretation rules."
};

const Map<String, String> useCases = {
  "Mini-Languages: ":
      "Implementing small, domain-specific languages within an application, interpreted by a dedicated interpreter.",
  "Expression Evaluation: ":
      "Evaluating mathematical or logical expressions by defining interpretation rules for each operator or symbol.",
  "Configuration Files: ":
      "Interpreting configuration files in a specific format, allowing flexibility in configuration syntax."
};

const Map<String, String> benefits = {
  "Decoupling: ":
      "Separates the grammar or language definition from its interpretation, promoting loose coupling.",
  "Extensibility: ":
      "Enables adding new expressions or languages without modifying the core interpreter.",
  "Maintainability: ":
      "Changes to interpretation logic are isolated within the interpreter, improving maintainability."
};

const Map<String, String> drawbacks = {
  "Increased Complexity: ":
      "Introducing an interpreter and intermediate representation can add complexity compared to direct evaluation.",
  "Performance Overhead: ":
      "Interpretation might introduce some overhead compared to directly compiled code."
};
