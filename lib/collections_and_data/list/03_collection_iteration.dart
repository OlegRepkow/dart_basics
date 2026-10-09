// Ітерація по спискам
// Що таке tear-off?
// Коли використовувати for-in, а коли forEach?
// Чим відрізняється метод map від forEach?

void main() {
  final list = List.generate(20, (index) => index);

  // Цикл for з індексом
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  // Цикл for-in для ітерації по елементам
  for (final element in list) {
    print(element);
  }

  // Метод forEach для ітерації по елементам
  list.forEach(print);

  // Метод map для створення нового списку
  final doubledList = list.map((element) => element * 2);
  print(doubledList);

  // Метод where для фільтрації списку
  final filteredList = list.where((element) => element % 3 == 0);
  print(filteredList);

  // Метод any для перевірки чи є хоча б один елемент, що відповідає умові
  final any = list.any((element) => element % 2 == 0);
  print(any);

  // Метод every для перевірки чи всі елементи відповідають умові
  final every = list.every((element) => element % 2 == 0);
  print(every);
}
