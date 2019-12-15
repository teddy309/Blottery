import 'package:battery/Model/battery_region.dart';

final List<String> batteryColumns = [
  '배터리ID',
  '지역',
  '만료날짜',
  '배터리성능 (%)',
  '보조금 (만 원)',
];

final List<Battery> batteries = [
  Battery(batteryID: 14916, region: '제주', dueDate: '2020-02-19', performance: 63.76, grant: 1017),
  Battery(batteryID: 9072, region: '경남', dueDate: '2026-04-23', performance: 78, grant: 1200),
  Battery(batteryID: 24763, region: '광주', dueDate: '2024-03-28', performance: 64.08, grant: 1200),
  Battery(batteryID: 13565, region: '부산', dueDate: '2023-08-19', performance: 73.76, grant: 1200),
  Battery(batteryID: 9734, region: '제주', dueDate: '2025-05-30', performance: 30, grant: 1200),
  Battery(batteryID: 11641, region: '경남', dueDate: '2018-09-27', performance: 84.7, grant: 1200),
  Battery(batteryID: 12818, region: '서울', dueDate: '2025-03-30', performance: 78, grant: 1200),
  Battery(batteryID: 4353, region: '서울', dueDate: '2024-07-30', performance: 74.08, grant: 1200),
  Battery(batteryID: 8853, region: '제주', dueDate: '2022-04-30', performance: 64.08, grant: 1200),
  Battery(batteryID: 16972, region: '충남', dueDate: '2023-02-19', performance: 10.9, grant: 1200),
  Battery(batteryID: 24674, region: '서울', dueDate: '2023-08-21', performance: 68.8, grant: 1200),
  Battery(batteryID: 24865, region: '제주', dueDate: '2018-07-26', performance: 70, grant: 1200),
  Battery(batteryID: 17698, region: '경기', dueDate: '2021-08-18', performance: 60, grant: 1200),
  Battery(batteryID: 24715, region: '경기', dueDate: '2023-02-19', performance: 87.5, grant: 839),
  Battery(batteryID: 1345, region: '제주', dueDate: '2021-08-26', performance: 89.24, grant: 1091),
  Battery(batteryID: 18968, region: '제주', dueDate: '2019-06-24', performance: 76.4, grant: 1200),
  Battery(batteryID: 16057, region: '대구', dueDate: '2018-05-17', performance: 64.08, grant: 1200),
  Battery(batteryID: 8540, region: '전남', dueDate: '2025-01-20', performance: 58.8, grant: 1091),
  Battery(batteryID: 6382, region: '제주', dueDate: '2025-05-30', performance: 64.77, grant: 1091),
  Battery(batteryID: 11262, region: '제주', dueDate: '2022-06-25', performance: 69.47, grant: 706),
];
