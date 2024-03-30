// ignore_for_file: unnecessary_new

const String observerCode = """class Observer {
  List<Receiver> observers;

  Observer([this.observers = const []]);

  void registerObserver(Receiver observer) {
    observers.add(observer);
  }

  void sendMessage(String message) {
    for (var observer in observers) {
      observer.ping(message);
    }
  }
}

class Receiver {
  String name;
  Receiver(this.name);

  void ping(String message) {
    // handle receive message
    // print("\$name received: \$message");
  }
}

void main(List<String> args) {
  final Receiver vemines = Receiver("VeMines");
  final Observer observer = Observer([vemines]);
  final Receiver myFriend = Receiver("My Friend");
  observer.registerObserver(myFriend);
  observer.sendMessage("Hello World!");
}""";
