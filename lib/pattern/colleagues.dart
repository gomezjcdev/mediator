import 'package:mediator_pattern/pattern/mediator.dart';

abstract class Colleague {
  final Mediator mediator;

  Colleague(this.mediator);
  void receive(String event);
}
