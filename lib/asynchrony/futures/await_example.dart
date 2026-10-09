// Як await впливає на порядок виконання
//
// Головна ідея: await призупиняє ЛИШЕ поточну async-функцію, а не всю програму.
// Поки одна операція "чекає", інший код може виконуватися.

Future<void> main() async {
  print('Синхронний код 1');

  // Без await: ця затримка запускається у фоні, програма не чекає на неї тут.
  Future<void>.delayed(
    const Duration(seconds: 2),
    () => print('Фонова затримка (2с) завершилась'),
  );

  // Виклик іншої async-функції без await - вона теж піде у фоні.
  additionalMethod();

  print('Синхронний код 2');

  // З await: програма чекає завершення цієї затримки, перш ніж іти далі.
  await Future<void>.delayed(
    const Duration(seconds: 4),
    () => print('Очікувана затримка (4с) завершилась'),
  );

  print('Синхронний код 3 (після await)');
}

// Додаткова асинхронна операція з кількома кроками.
Future<void> additionalMethod() async {
  print('[additionalMethod]: старт');
  await Future<void>.delayed(const Duration(seconds: 1));
  print('[additionalMethod]: після першої затримки');
  await Future<void>.delayed(const Duration(seconds: 1));
  print('[additionalMethod]: кінець');
}
