const List<String> definition = [
  "The Chain of Responsibility pattern allows passing a request along a chain of objects until one of them handles it. Each object in the chain can decide whether to process the request or pass it on to the next handler."
];

const Map<String, String> characteristics = {
  "Chain of Handlers: ":
      "Objects are linked together in a chain, forming a sequence of potential handlers for a request.",
  "Decoupled Handlers: ":
      "Handlers are decoupled from the sender and other handlers in the chain, promoting loose coupling.",
  "Successive Handling: ":
      "A request is passed along the chain until one handler decides to handle it or the end of the chain is reached."
};

const Map<String, String> useCases = {
  "Event Handling: ":
      "Effectively handling different types of events by assigning responsibility to specific handlers in the chain.",
  "Authorization: ":
      "Implementing authorization checks by passing requests through a chain of handlers that perform authorization logic.",
  "Validation: ":
      "Performing request validation by having handlers in the chain validate different aspects of the request."
};

const Map<String, String> benefits = {
  "Flexible Handling: ":
      "Enables handling different request types dynamically based on the chain configuration.",
  "Loose Coupling: ":
      "Decouples the sender from the specific handlers, promoting code maintainability and reusability.",
  "Extensibility: ":
      "New handlers can be added to the chain easily to handle new types of requests."
};

const Map<String, String> drawbacks = {
  "Increased Complexity: ":
      "Can add complexity to the design compared to simpler approaches, especially with long chains.",
  "Potential Performance Overhead: ":
      "Traversing the chain for each request can introduce some overhead, though optimizations are possible."
};
