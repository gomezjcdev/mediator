import 'package:mediator_pattern/pattern/colleagues.dart';
import 'package:mediator_pattern/pattern/mediator.dart';

class LoginMediator implements Mediator {
  final List<Colleague> colleagues = [];

  void addColleague(Colleague colleague) {
    colleagues.add(colleague);
  }

  @override
  void send(String event, Colleague colleague) {
    for (var c in colleagues) {
      if (c != colleague) {
        c.receive(event);
      }
    }
  }
}
