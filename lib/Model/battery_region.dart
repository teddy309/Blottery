import 'package:meta/meta.dart';

class Battery {
  final int batteryID;
  final String region;
  final String dueDate;
  final double performance;
  final double grant;

  const Battery({
    @required this.batteryID,
    @required this.region,
    @required this.dueDate,
    @required this.performance,
    @required this.grant,
  });
}

