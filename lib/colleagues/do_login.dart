import 'package:mediator_pattern/pattern/colleagues.dart';

class DoLogin extends Colleague {
  final String name;
  final Function(String) onMessageReceived;

  DoLogin(super.mediator, this.name, this.onMessageReceived);

  void sendMessage(String message) {
    mediator.send("$name: $message", this);
  }

  @override
  void receive(String event) {
    onMessageReceived(event);
  }
}
