import 'package:meta/meta.dart';

class Battery {
  final int batteryID;
  final String manufacturer;
  final double grant;
  final String batteryType;
  
  const Battery({
    @required this.batteryID,
    @required this.manufacturer,
    @required this.grant,
    @required this.batteryType,
  });
}
