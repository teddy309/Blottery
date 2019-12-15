import 'package:meta/meta.dart';

class Battery {
  final int batteryID;
  final String state;
  final String dueDate;

  const Battery({
    @required this.batteryID,
    @required this.state,
    @required this.dueDate,
  });
}

