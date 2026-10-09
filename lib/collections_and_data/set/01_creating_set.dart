// Створення множини (різні способи створення множин)

import 'dart:math';

void main() {
  // Створення множини з явно вказаними елементами
  final set1 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  print(set1);

  // Створення множини з дублікатами (вони будуть автоматично видалені)
  // ignore: equal_elements_in_set
  final set2 = {1, 2, 2, 3, 3, 3, 4, 4, 4, 4};
  print(set2);

  final list = List.generate(20, (index) {
    return Random().nextInt(index + 1);
  });
  print(list);
  print('--------');

  final set3 = Set<int>.from(list); //or toSet
  print(set3);
}
