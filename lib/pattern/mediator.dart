import 'package:mediator_pattern/pattern/colleagues.dart';

abstract class Mediator {
  void send(String event, Colleague colleague);
}
