// Цикли у Dart: for, for-in, while, do-while

void main() {
  // Класичний for зі лічильником
  print('for:');
  for (var i = 0; i < 5; i++) {
    print('  Індекс: $i');
  }

  // for-in перебирає елементи колекції
  print('for-in:');
  final names = ['John', 'Jane', 'Jim'];
  for (final name in names) {
    print('  Імʼя: $name');
  }

  // while виконує тіло, поки умова істинна (перевірка на початку)
  print('while:');
  var counter = 0;
  while (counter < 3) {
    print('  Лічильник: $counter');
    counter++;
  }

  // do-while виконує тіло хоча б раз, а умову перевіряє в кінці
  print('do-while:');
  var number = 3;
  do {
    print('  Число: $number');
    number--;
  } while (number > 0);
}
