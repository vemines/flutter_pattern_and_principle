const List<String> definition = [
  "The Iterator pattern provides a way to access the elements of an object sequentially without exposing its underlying structure. It allows iterating over elements one at a time."
];

const Map<String, String> characteristics = {
  "Iterator Interface: ":
      "Defines a protocol for accessing elements sequentially (moveNext, current).",
  "Iterable Object: ":
      "Provides an iterator method that returns an Iterator object for traversing its elements.",
  "Sequential Access: ":
      "Allows iterating over elements in a specific order, one at a time."
};

const Map<String, String> useCases = {
  "For-in Loops: ":
      "Enables using for-in loops to iterate over elements of collections like lists or sets in a concise way.",
  "Custom Iterators: ":
      "Creating custom iterators for complex data structures or filtering elements based on specific criteria.",
  "Lazy Loading: ":
      "Implementing lazy loading of elements where the iterator retrieves elements only when requested, improving efficiency for large collections."
};

const Map<String, String> benefits = {
  "Abstraction: ":
      "Hides the underlying data structure of the collection, promoting loose coupling between iterating code and the collection itself.",
  "Encapsulation: ":
      "Encapsulates the iteration logic within the Iterator object, improving code organization and maintainability.",
  "Reusability: ":
      "Iterators can be reused to iterate over different collections that implement the Iterable interface."
};

const Map<String, String> drawbacks = {
  "Potential Performance Overhead: ":
      "Creating and using iterators might introduce some overhead compared to direct indexing, especially for simple collections.",
  "Limited Functionality: ":
      "The basic Iterator interface only provides methods for moving to the next element and accessing the current one. Additional functionality might require extending the interface."
};
