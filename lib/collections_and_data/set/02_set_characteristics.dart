// Характеристики множини (немає доступу за індексом, перевірка наявності)

void main() {
  final numbers = {1, 2, 3, 4, 5};

  // У множини немає доступу за індексом, тому numbers[0] не спрацює.
  // Щоб дістати елемент за позицією, використовуємо elementAt.
  print('Елемент за позицією 2: ${numbers.elementAt(2)}');

  print('First element: ${numbers.elementAt(0)}');

  // Замість цього можна використовувати first, last або ітерацію
  print('First element: ${numbers.firstOrNull}');
  print('Last element: ${numbers.lastOrNull}');

  // Перевірка чи містить множина елемент
  print('Contains 3: ${numbers.contains(3)}');
  print('Contains 10: ${numbers.contains(10)}');
}
