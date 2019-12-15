import 'package:battery/Model/battery_manufacturer.dart';

final List<String> batteryColumns = [
  '배터리ID',
  '제조사',
  '배터리타입',
  '보조금 (만 원)',
];

final List<Battery> batteries = [
  Battery(batteryID: 14916, manufacturer: 'Renault', grant: 1017, batteryType: 'PHEV'),
  Battery(batteryID: 9072, manufacturer: 'Hyundai', grant: 1200, batteryType: 'HEV'),
  Battery(batteryID: 24763, manufacturer: 'Renault', grant: 450, batteryType: 'BEV'),
  Battery(batteryID: 13565, manufacturer: 'Renault', grant: 1017, batteryType: 'PHEV'),
  Battery(batteryID: 9734, manufacturer: 'BMW', grant: 1091, batteryType: 'BEV'),
  Battery(batteryID: 11641, manufacturer: 'Tesla', grant: 1200, batteryType: 'BEV'),
  Battery(batteryID: 12818, manufacturer: 'Hyundai', grant: 1127, batteryType: 'PHEV'),
  Battery(batteryID: 4353, manufacturer: 'Hyundai', grant: 1126, batteryType: 'PHEV'),
  Battery(batteryID: 8853, manufacturer: 'Tesla', grant: 1200, batteryType: 'BEV'),
  Battery(batteryID: 16972, manufacturer: 'Hyundai', grant: 1127, batteryType: 'PHEV'),
  Battery(batteryID: 24674, manufacturer: 'Hyundai', grant: 1200, batteryType: 'HEV'),
  Battery(batteryID: 24865, manufacturer: 'Tesla', grant: 1200, batteryType: 'BEV'),
  Battery(batteryID: 17698, manufacturer: 'Tesla', grant: 1200, batteryType: 'BEV'),
  Battery(batteryID: 24715, manufacturer: 'Renault', grant: 839, batteryType: 'PHEV'),
  Battery(batteryID: 1345, manufacturer: 'BMW', grant: 1091, batteryType: 'BEV'),
  Battery(batteryID: 18968, manufacturer: 'Tesla', grant: 1200, batteryType: 'BEV'),
  Battery(batteryID: 16057, manufacturer: 'Tesla', grant: 1200, batteryType: 'BEV'),
  Battery(batteryID: 8540, manufacturer: 'BMW', grant: 1091, batteryType: 'BEV'),
  Battery(batteryID: 6382, manufacturer: 'BMW', grant: 1091, batteryType: 'BEV'),
  Battery(batteryID: 11262, manufacturer: 'Kia', grant: 706, batteryType: 'BEV'),
];

