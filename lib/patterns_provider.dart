import 'dart:collection';

import 'package:flutter/material.dart';

class RoutesProvider with ChangeNotifier {
  Map<String, Map<String, String>> _patternsAndPrinciplal = _routes;

  Map<String, Map<String, String>> get routes {
    return Map.from(_patternsAndPrinciplal);
  }

  void reset() {
    _patternsAndPrinciplal = _routes;
    notifyListeners();
  }

  /// Sorts the design patterns alphabetically based on their category names (outer map keys).
  void sortAToZ() {
    var sortedKeys = _routes.keys.toList()..sort((a, b) => a.compareTo(b));
    var sortedDesignPatterns = LinkedHashMap.fromIterable(sortedKeys,
        value: (key) => _patternsAndPrinciplal[key]);
    _patternsAndPrinciplal =
        sortedDesignPatterns.cast<String, Map<String, String>>();
    notifyListeners();
  }

  /// Filters the design patterns based on a search string applied to both category names and pattern names, ignoring case sensitivity.
  void filter(String? search) {
    if (search != null) {
      search = search.toLowerCase(); // Ensure search string is lowercase
      final filteredPatterns = _routes.entries
          .where((entry) => entry.key.toLowerCase().contains(search!))
          .map((entry) => entry.key);
      _patternsAndPrinciplal = Map.fromEntries(
          filteredPatterns.map((key) => MapEntry(key, _routes[key]!)));
      notifyListeners();
    }
  }
}

const Map<String, Map<String, String>> _routes = {
  // Creational Patterns
  'Builder': {
    "tooltip":
        "Separates the construction of a complex object from its representation, allowing the same construction process to create various representations.",
    "route": '/builder',
    "type": "Creational",
  },
  'Factory Abstract ': {
    "tooltip":
        "Provides an interface for creating families of related or dependent objects without specifying their concrete classes.",
    "route": '/factory-abstract',
    "type": "Creational",
  },
  'Factory Method': {
    "tooltip":
        "Defines an interface for creating an object, but lets subclasses decide which class to instantiate.",
    "route": '/factory-method',
    "type": "Creational",
  },
  'Prototype': {
    "tooltip":
        "Creates new objects by copying an existing object, known as the prototype.",
    "route": '/prototype',
    "type": "Creational",
  },
  'Singleton': {
    "tooltip":
        'Ensures a class has only one instance and provides a global point of access to it.',
    "route": '/singleton',
    "type": "Creational",
  },
  // Structural Patterns
  'Adapter': {
    "tooltip":
        "Allows the interface of an existing class to be used as another interface.",
    "route": '/adapter',
    "type": "Structural",
  },
  'Bridge': {
    "tooltip":
        "Decouples an abstraction from its implementation so that the two can vary independently.",
    "route": '/bridge',
    "type": "Structural",
  },
  'Composite': {
    "tooltip":
        "Composes objects into tree structures to represent part-whole hierarchies.",
    "route": '/composite',
    "type": "Structural",
  },
  'Decorator': {
    "tooltip": "Attaches additional responsibilities to an object dynamically.",
    "route": '/decorator',
    "type": "Structural",
  },
  'Facade': {
    "tooltip":
        "Provides a unified interface to a set of interfaces in a subsystem.",
    "route": '/facade',
    "type": "Structural",
  },
  'Flyweight': {
    "tooltip":
        "Reduces the cost of creating and manipulating a large number of similar objects.",
    "route": '/flyweight',
    "type": "Structural",
  },
  'Proxy': {
    "tooltip":
        "Provides a placeholder for another object to control access to it.",
    "route": '/proxy',
    "type": "Structural",
  },
  // Behavioral Patterns
  'Chain of Responsibility': {
    "tooltip": "Passes a request along a chain of handlers.",
    "route": '/chain-of-responsibility',
    "type": "Behavioral",
  },
  'Command': {
    "tooltip":
        "Encapsulates a request as an object, thereby allowing for parameterization of clients with queues, requests, and operations.",
    "route": '/command',
    "type": "Behavioral",
  },
  'Interpreter': {
    "tooltip": "Provides a way to evaluate language grammar or expressions.",
    "route": '/interpreter',
    "type": "Behavioral",
  },
  'Iterator': {
    "tooltip":
        "Provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation.",
    "route": '/iterator',
    "type": "Behavioral",
  },
  'Mediator': {
    "tooltip":
        "Defines an object that encapsulates how a set of objects interact.",
    "route": '/mediator',
    "type": "Behavioral",
  },
  'Memento': {
    "tooltip":
        "Captures and externalizes an object's internal state so that the object can be restored to this state later.",
    "route": '/memento',
    "type": "Behavioral",
  },
  'Observer': {
    "tooltip":
        "Defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.",
    "route": '/observer',
    "type": "Behavioral",
  },
  'State': {
    "tooltip":
        "Allows an object to alter its behavior when its internal state changes.",
    "route": '/state',
    "type": "Behavioral",
  },
  'Strategy': {
    "tooltip":
        "Defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it.",
    "route": '/strategy',
    "type": "Behavioral",
  },
  'Template Method': {
    "tooltip":
        "Defines the program skeleton of an algorithm in an operation, deferring some steps to subclasses.",
    "route": '/template-method',
    "type": "Behavioral",
  },
  'Visitor': {
    "tooltip":
        "Represents an operation to be performed on the elements of an object structure.",
    "route": '/visitor',
    "type": "Behavioral",
  },
  'S': {
    "tooltip":
        "A class should have one and only one reason to change, meaning that a class should have only one job.",
    "route": '/s',
    "type": "Principal",
  },
  'O': {
    "tooltip":
        "Objects or entities should be open for extension but closed for modification.",
    "route": '/o',
    "type": "Principal",
  },
  'L': {
    "tooltip":
        "States that subclasses should be substitutable for their base classes.",
    "route": '/l',
    "type": "Principal",
  },
  'I': {
    "tooltip":
        "Splitting larger interfaces into smaller ones enables implementing classes to focus only on the methods relevant to them, promoting cleaner and more manageable code.",
    "route": '/i',
    "type": "Principal",
  },
  'D': {
    "tooltip":
        "Classes should depend upon interfaces or abstract classes instead of concrete classes and functions.",
    "route": '/d',
    "type": "Principal",
  },
};
