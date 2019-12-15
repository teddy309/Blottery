import 'package:battery/Model/battery_recovery.dart';

final List<String> batteryColumns = [
  '배터리ID',
  '상태',
  '만료날짜',
  '배터리성능 (%)',
  '보조금 (만 원)',
];

final List<Battery> batteries = [
  Battery(batteryID: 14916, state: '대기', dueDate: '2020-02-19', performance: 23.76, grant: 1017),
  Battery(batteryID: 9072, state: '검사', dueDate: '2026-04-23', performance: 28, grant: 1200),
  Battery(batteryID: 24763, state: '검사', dueDate: '2024-03-28', performance: 64.08, grant: 1200),
  Battery(batteryID: 13565, state: '활용', dueDate: '2023-08-19', performance: 30, grant: 1200),
  Battery(batteryID: 9734, state: '생산', dueDate: '2025-05-30', performance: 30, grant: 1200),
  Battery(batteryID: 11641, state: '검사', dueDate: '2018-09-27', performance: 284.7, grant: 1200),
  Battery(batteryID: 12818, state: '활용', dueDate: '2025-03-30', performance: 60.9, grant: 1200),
  Battery(batteryID: 4353, state: '활용', dueDate: '2024-07-30', performance: 26.64, grant: 1200),
  Battery(batteryID: 8853, state: '생산', dueDate: '2022-04-30', performance: 64.08, grant: 1200),
  Battery(batteryID: 16972, state: '생산', dueDate: '2023-02-19', performance: 30, grant: 1200),
  Battery(batteryID: 24674, state: '대기', dueDate: '2023-08-21', performance: 18.8, grant: 1200),
  Battery(batteryID: 24865, state: '활용', dueDate: '2018-07-26', performance: 17.28, grant: 1200),
  Battery(batteryID: 17698, state: '활용', dueDate: '2021-08-18', performance: 60.9, grant: 1200),
  Battery(batteryID: 24715, state: '생산', dueDate: '2023-02-19', performance: 87.5, grant: 839),
  Battery(batteryID: 1345, state: '대기', dueDate: '2021-08-26', performance: 39.24, grant: 1091),
  Battery(batteryID: 18968, state: '생산', dueDate: '2019-06-24', performance: 16.4, grant: 1200),
  Battery(batteryID: 16057, state: '대기', dueDate: '2018-05-17', performance: 64.08, grant: 1200),
  Battery(batteryID: 8540, state: '대기', dueDate: '2025-01-20', performance: 18.8, grant: 1091),
  Battery(batteryID: 6382, state: '검사', dueDate: '2025-05-30', performance: 6.77, grant: 1091),
  Battery(batteryID: 11262, state: '검사', dueDate: '2022-06-25', performance: 6.77, grant: 706),
];
