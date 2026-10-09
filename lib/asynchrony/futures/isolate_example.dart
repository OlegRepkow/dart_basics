// Ізоляти (Isolate) - виконання важких обчислень без блокування програми
//
// Проблема: async/await НЕ створює нових потоків. Якщо виконати важке
// синхронне обчислення (наприклад, повільне число Фібоначчі), воно заблокує
// основний ізолят, і програма "зависне" до його завершення - таймер замовкне.
//
// Рішення: винести важке обчислення в окремий ізолят через Isolate.run.
// Ізолят працює у власному потоці з власною памʼяттю, тому основний потік
// лишається вільним і таймер продовжує цокати.

import 'dart:async';
import 'dart:isolate';

Future<void> main() async {
  // БЕЗ ізолята: обчислення блокує основний потік, таймер мовчить.
  await withoutIsolate();

  print('');

  // З ізолятом: обчислення у фоні, таймер продовжує цокати.
  await withIsolate();
}

// Важке обчислення прямо в основному потоці - потік блокується.
Future<void> withoutIsolate() async {
  final ticker = Timer.periodic(
    const Duration(milliseconds: 300),
    (timer) => print('без ізолята: цок ${timer.tick}'),
  );

  print('Рахуємо БЕЗ ізолята (основний потік блокується)...');
  final result = fibonacci(43);
  print('Результат fibonacci(43) = $result');

  ticker.cancel();
}

// Те саме обчислення в окремому ізоляті - потік лишається вільним.
Future<void> withIsolate() async {
  final ticker = Timer.periodic(
    const Duration(milliseconds: 300),
    (timer) => print('з ізолятом: цок ${timer.tick}'),
  );

  print('Рахуємо З ізолятом (основний потік вільний)...');
  final result = await Isolate.run(() => fibonacci(43));
  print('Результат fibonacci(43) = $result');

  ticker.cancel();
}

// Навмисно "важка" рекурсивна реалізація - вона довго рахується.
int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}
