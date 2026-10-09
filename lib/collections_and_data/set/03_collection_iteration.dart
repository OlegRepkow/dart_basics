// Ітерація по множині (перебір елементів Set)

void main() {
  final fruits = {'яблуко', 'банан', 'апельсин'};

  // Цикл for-in - найпростіший спосіб перебрати елементи множини.
  print('for-in:');
  for (final fruit in fruits) {
    print('  $fruit');
  }

  // Через ітератор можна перебирати елементи вручну, крок за кроком.
  print('iterator:');
  final iterator = fruits.iterator;
  while (iterator.moveNext()) {
    print('  ${iterator.current}');
  }

  // Множину легко перетворити й опрацювати як послідовність.
  final lengths = fruits.map((fruit) => fruit.length).toList();
  print('Довжини слів: $lengths');
}
