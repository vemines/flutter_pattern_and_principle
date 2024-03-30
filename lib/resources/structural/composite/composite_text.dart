const List<String> definition = [
  "The Composite pattern treats a group of objects as a single object. This allows for composing parts (leaf objects) into a tree structure (composite objects) and treating them uniformly. It promotes hierarchical object structures and simplifies working with complex object hierarchies."
];

const Map<String, String> characteristics = {
  "Tree Structure: ":
      "Objects can be composed into a tree-like structure, with composite objects containing both leaf and other composite objects.",
  "Uniform Treatment: ":
      "Client code can treat both individual objects (leaves) and composite objects uniformly, simplifying interaction with the hierarchy.",
  "Recursive Operations: ":
      "Operations can be applied recursively to the entire structure, traversing the tree to perform actions on all objects."
};

const Map<String, String> useCases = {
  "Hierarchical Data: ":
      "Effectively representing and manipulating hierarchical data structures like file systems, menus, or organizational charts.",
  "Undo/Redo Functionality: ":
      "Implementing undo/redo operations by treating the entire hierarchy as a single unit.",
  "Scalable Operations: ":
      "Performing operations on the entire structure or specific parts by traversing the composite hierarchy."
};

const Map<String, String> benefits = {
  "Flexible Hierarchies: ":
      "Enables creating complex object structures and treating them uniformly.",
  "Simplified Operations: ":
      "Provides a consistent way to interact with both individual and composite objects.",
  "Code Reusability: ":
      "Operations can be written to work on the entire hierarchy, promoting code reuse."
};

const Map<String, String> drawbacks = {
  "Increased Complexity: ":
      "Introducing composite objects and the tree structure can add complexity to the design compared to simpler object collections.",
  "Potential Performance Overhead: ":
      "Recursive operations may introduce some overhead when traversing large hierarchies."
};
