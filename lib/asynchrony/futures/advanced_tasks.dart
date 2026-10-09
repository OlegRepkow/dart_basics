// Порядок виконання асинхронних завдань у Dart
//
// Dart виконує код у такому порядку:
//   1) спочатку весь синхронний код;
//   2) потім черга мікрозавдань (microtask) - наприклад, Future.microtask
//      та обробники .then у вже завершених Future;
//   3) потім черга подій (event queue) - Future(), Future.delayed тощо.
//
// Future.sync виконує тіло одразу (синхронно), а його .then потрапляє
// у чергу мікрозавдань.

void main() async {
  await example1();
  print('\n--- наступний приклад ---\n');
  await example2();
}

// Приклад 1: синхронний код проти звичайних Future та then.
Future<void> example1() async {
  print('1: початок example1');

  Future<void>(() => print('4: майбутня подія (event queue)'))
      .then((_) => print('5: then майбутньої події'));

  Future<void>.sync(() => print('2: синхронна подія (виконується одразу)'))
      .then((_) => print('3: then синхронної події (microtask)'));

  print('(кінець синхронної частини example1)');
}

// Приклад 2: порівнюємо microtask, event queue та delayed.
Future<void> example2() async {
  print('1: початок example2');

  Future<void>.delayed(Duration.zero, () => print('5: Future.delayed'));

  Future<void>(() => print('4: звичайний Future (event queue)'));

  Future<void>.microtask(() => print('3: мікрозавдання (microtask)'));

  Future<void>.sync(() => print('2: синхронний Future'));

  print('(кінець синхронної частини example2)');
}
