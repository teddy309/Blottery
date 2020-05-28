import 'package:meta/meta.dart';

class Battery {
  final int batteryID;
  final String state;
  final String dueDate;
  final double performance;
  final double grant;

  const Battery({
    @required this.batteryID,
    @required this.state,
    @required this.dueDate,
    @required this.performance,
    @required this.grant,
  });
}

