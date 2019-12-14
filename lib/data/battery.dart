import 'package:battery/Model/battery.dart';

final List<String> batteryColumns = [
  '배터리ID',
  '만료날짜',
  '배터리성능',
];

final List<Battery> batteries = [
  Battery(batteryID: 5, dueDate: '2015-03-15', performance: 23.76),
  Battery(batteryID: 3512, dueDate: '2012-03-15', performance: 28),
  Battery(batteryID: 3000, dueDate: '2017-03-15', performance: 64.08),
  Battery(batteryID: 2642, dueDate: '2014-03-15', performance: 30),
  Battery(batteryID: 278, dueDate: '2013-03-15', performance: 30),
  Battery(batteryID: 14, dueDate: '2015-03-15', performance: 284.7),
  Battery(batteryID: 2058, dueDate: '2016-03-15', performance: 60.9),
  Battery(batteryID: 598, dueDate: '2016-03-15', performance: 26.64),
  Battery(batteryID: 3508, dueDate: '2015-03-15', performance: 64.08),
  Battery(batteryID: 27, dueDate: '2018-03-15', performance: 30),
  Battery(batteryID: 8905, dueDate: '2014-03-15', performance: 18.8),
  Battery(batteryID: 12506, dueDate: '2017-03-15', performance: 17.28),
  Battery(batteryID: 2590, dueDate: '2015-03-15', performance: 60.9),
  Battery(batteryID: 15028, dueDate: '2014-03-15', performance: 87.5),
  Battery(batteryID: 92, dueDate: '2013-03-15', performance: 39.24),
  Battery(batteryID: 205, dueDate: '2015-03-15', performance: 16.4),
  Battery(batteryID: 20027, dueDate: '2016-03-15', performance: 64.08),
  Battery(batteryID: 7901, dueDate: '2017-03-15', performance: 18.8),
  Battery(batteryID: 10826, dueDate: '2018-03-15', performance: 6.77),
];
