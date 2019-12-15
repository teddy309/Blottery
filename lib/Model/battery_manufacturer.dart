import 'package:meta/meta.dart';

class Battery {
  final int batteryID;
  final double grant;
  final String manufacturer;

  const Battery({
    @required this.batteryID,
    @required this.grant,
    @required this.manufacturer,
  });
}
