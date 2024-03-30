const String mediatorCode = """abstract class MessageNotifier {
  String? message;
  MessageNotifier({this.message});
  void setMessage(String newMessage) => message = newMessage;
}

class Mediator {
  List<Receiver> receivers;
  Mediator(this.receivers);

  void updateMessage(String newMessage) {
    for (var receiver in receivers) {
      receiver.setMessage(newMessage);
    }
  }
}

class Receiver extends MessageNotifier {
  final String name;
  Receiver(this.name, {super.message});
}

void main(List<String> args) {
  Receiver vemines = Receiver("VeMines");
  Receiver anonymous = Receiver("Anonymous");
  Mediator mediator = Mediator([vemines, anonymous]);
  mediator.updateMessage("Hello world!"); // vemines.message = 'Hello world!'
}""";
