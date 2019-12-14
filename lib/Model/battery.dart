import 'package:meta/meta.dart';

class Battery {
  final int batteryID;
  final String dueDate;
  final double performance;

  const Battery({
    @required this.batteryID,
    @required this.dueDate,
    @required this.performance,
  });
}
